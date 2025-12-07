unint64_t sub_1D76E4B98(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = sub_1D7703370();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38[3] = type metadata accessor for AdSegmentUpdater();
  v38[4] = &off_1F52573A8;
  v38[0] = a1;
  v9 = MEMORY[0x1E69E7CC0];
  *(a3 + 56) = sub_1D76ADD58(MEMORY[0x1E69E7CC0]);
  sub_1D7703360();
  sub_1D7703390();
  swift_allocObject();
  *(a3 + 64) = sub_1D7703380();
  *(a3 + 72) = sub_1D76ADEA4(v9);
  *(a3 + 80) = 0;
  sub_1D7667C54(v38, a3 + 16);
  *(a3 + 88) = a4;
  *(a3 + 96) = a2;
  v10 = a2;
  v11 = sub_1D76ADEA4(v9);
  sub_1D76E4FE0(0, &qword_1EE0B0870, &qword_1EE0AED80, MEMORY[0x1E69E6158], MEMORY[0x1E69D6AA8]);
  v13 = v12;
  v14 = byte_1F524ECC8;
  swift_allocObject();
  v15 = sub_1D77035C0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v11;
  result = sub_1D76B88A4(v14);
  v19 = v11[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    goto LABEL_18;
  }

  LOBYTE(v23) = v18;
  if (v11[3] >= v22)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = result;
      sub_1D76E4410();
      result = v25;
      v11 = v37;
      if (v23)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_1D76E35E8(v22, isUniquelyReferenced_nonNull_native);
    result = sub_1D76B88A4(v14);
    if ((v23 & 1) != (v24 & 1))
    {
      goto LABEL_14;
    }
  }

  if (v23)
  {
LABEL_7:
    *(v11[7] + 8 * result) = v15;

    goto LABEL_11;
  }

LABEL_9:
  v11[(result >> 6) + 8] |= 1 << result;
  *(v11[6] + result) = v14;
  *(v11[7] + 8 * result) = v15;
  v26 = v11[2];
  v21 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v21)
  {
    goto LABEL_23;
  }

  v11[2] = v27;
LABEL_11:
  v14 = byte_1F524ECC9;
  swift_allocObject();
  v13 = sub_1D77035C0();
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v37 = v11;
  result = sub_1D76B88A4(v14);
  v29 = v11[2];
  v30 = (v28 & 1) == 0;
  v21 = __OFADD__(v29, v30);
  v31 = v29 + v30;
  if (v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  LOBYTE(v15) = v28;
  if (v11[3] >= v31)
  {
    goto LABEL_15;
  }

  sub_1D76E35E8(v31, v23);
  result = sub_1D76B88A4(v14);
  if ((v15 & 1) == (v32 & 1))
  {
    goto LABEL_16;
  }

LABEL_14:
  result = sub_1D7704A70();
  __break(1u);
LABEL_15:
  if (v23)
  {
LABEL_16:
    v33 = v37;
    if (v15)
    {
LABEL_17:
      *(v33[7] + 8 * result) = v13;

LABEL_22:

      __swift_destroy_boxed_opaque_existential_1(v38);
      swift_beginAccess();
      *(a3 + 72) = v33;

      return a3;
    }

    goto LABEL_20;
  }

LABEL_19:
  v34 = result;
  sub_1D76E4410();
  result = v34;
  v33 = v37;
  if (v15)
  {
    goto LABEL_17;
  }

LABEL_20:
  v33[(result >> 6) + 8] |= 1 << result;
  *(v33[6] + result) = v14;
  *(v33[7] + 8 * result) = v13;
  v35 = v33[2];
  v21 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (!v21)
  {
    v33[2] = v36;
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_1D76E4F58()
{
  result = qword_1EE0AED58;
  if (!qword_1EE0AED58)
  {
    sub_1D7667BCC(255, &qword_1EE0AED60, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AED58);
  }

  return result;
}

void sub_1D76E4FE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_1D76784F8(255, a3, a4);
    v9 = a5(a1, MEMORY[0x1E69E6158], v8, MEMORY[0x1E69E6168]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id DebugJournalSummaryView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *DebugJournalSummaryView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_placementIdentifierLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v11 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_placementIdentifier;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v12 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_contentIdentifierLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v13 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_contentIdentifier;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v14 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_statusLabel;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v15 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_status;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v16 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_statusIndicator;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v17 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_moreDetailsButton;
  v18 = objc_opt_self();
  *&v4[v17] = [v18 buttonWithType_];
  v19 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_onTapMoreDetails;
  sub_1D76E54C4();
  v21 = v20;
  *&v4[v19] = [objc_allocWithZone(v20) init];
  v22 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_buttonSeparator;
  *&v4[v22] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v23 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_reportIssueButton;
  *&v4[v23] = [v18 buttonWithType_];
  v24 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_onTapReportIssue;
  *&v4[v24] = [objc_allocWithZone(v21) init];
  v25 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_topSeparator;
  *&v4[v25] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v26 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_bottomSeparator;
  *&v4[v26] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  v28 = *&v27[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_placementIdentifierLabel];
  v29 = v27;
  [v29 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  v30 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_moreDetailsButton;
  [v29 addSubview_];
  [v29 addSubview_];
  v31 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_reportIssueButton;
  [v29 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  v32 = *&v29[v30];
  v33 = *&v29[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_onTapMoreDetails];
  v34 = v32;
  sub_1D7704020();

  v35 = *&v29[v31];
  v36 = *&v29[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_onTapReportIssue];
  v37 = v35;
  sub_1D7704020();

  return v29;
}

void sub_1D76E54C4()
{
  if (!qword_1EE0B0810)
  {
    v0 = sub_1D7704030();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0810);
    }
  }
}

id DebugJournalSummaryView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DebugJournalSummaryView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s7NewsAds23DebugJournalSummaryViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_placementIdentifierLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_placementIdentifier;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_contentIdentifierLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_contentIdentifier;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_statusLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v6 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_status;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v7 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_statusIndicator;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v8 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_moreDetailsButton;
  v9 = objc_opt_self();
  *(v0 + v8) = [v9 buttonWithType_];
  v10 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_onTapMoreDetails;
  sub_1D76E54C4();
  v12 = v11;
  *(v0 + v10) = [objc_allocWithZone(v11) init];
  v13 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_buttonSeparator;
  *(v0 + v13) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v14 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_reportIssueButton;
  *(v0 + v14) = [v9 buttonWithType_];
  v15 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_onTapReportIssue;
  *(v0 + v15) = [objc_allocWithZone(v12) init];
  v16 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_topSeparator;
  *(v0 + v16) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v17 = OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_bottomSeparator;
  *(v0 + v17) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  sub_1D7704860();
  __break(1u);
}

uint64_t ANFComponentAdData.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v23[4] = *MEMORY[0x1E69E9840];
  sub_1D76E61B8(0, &qword_1EC9BDDF8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76E5C2C();
  sub_1D7704B00();
  if (!v2)
  {
    sub_1D76E5C80();
    sub_1D7704970();
    v21 = a2;
    v11 = v23[0];
    v10 = v23[1];
    v12 = objc_opt_self();
    v13 = sub_1D7702EF0();
    v23[0] = 0;
    v14 = [v12 JSONObjectWithData:v13 options:0 error:v23];

    if (v14)
    {
      v15 = v23[0];
      sub_1D77046C0();
      swift_unknownObjectRelease();
      sub_1D76E6154();
      if (swift_dynamicCast())
      {
        v16 = v22;
      }

      else
      {
        v16 = sub_1D7668218(MEMORY[0x1E69E7CC0]);
      }

      sub_1D769930C(v11, v10);
      v18 = v21;
      (*(v7 + 8))(v9, v6);
      *v18 = v16;
    }

    else
    {
      v17 = v23[0];
      sub_1D7702E70();

      swift_willThrow();
      sub_1D769930C(v11, v10);
      (*(v7 + 8))(v9, v6);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D76E5C2C()
{
  result = qword_1EC9BDE00;
  if (!qword_1EC9BDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE00);
  }

  return result;
}

unint64_t sub_1D76E5C80()
{
  result = qword_1EC9BDE08;
  if (!qword_1EC9BDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE08);
  }

  return result;
}

uint64_t ANFComponentAdData.encode(to:)(void *a1)
{
  v17[2] = *MEMORY[0x1E69E9840];
  sub_1D76E61B8(0, &qword_1EC9BDE18, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17[-1] - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76E5C2C();
  sub_1D7704B10();
  v7 = objc_opt_self();
  v8 = sub_1D7704190();
  v17[0] = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_1D7702F00();
    v13 = v12;

    v17[0] = v11;
    v17[1] = v13;
    sub_1D76E621C();
    sub_1D7704A00();
    (*(v4 + 8))(v6, v3);
    return sub_1D769930C(v11, v13);
  }

  else
  {
    v15 = v10;
    sub_1D7702E70();

    swift_willThrow();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1D76E5F40()
{
  sub_1D7704AD0();
  sub_1D77042D0();
  return sub_1D7704AF0();
}

uint64_t sub_1D76E5FAC(uint64_t a1)
{
  sub_1D7704AD0();
  sub_1D77042D0();
  return sub_1D7704AF0();
}

void sub_1D76E5FFC(BOOL *a2@<X8>)
{
  v3 = sub_1D77048E0();

  *a2 = v3 != 0;
}

void sub_1D76E6084(BOOL *a3@<X8>)
{
  v4 = sub_1D77048E0();

  *a3 = v4 != 0;
}

uint64_t sub_1D76E60DC(uint64_t a1)
{
  v2 = sub_1D76E5C2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76E6118(uint64_t a1)
{
  v2 = sub_1D76E5C2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D76E6154()
{
  if (!qword_1EC9BDE10)
  {
    v0 = sub_1D77041B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9BDE10);
    }
  }
}

void sub_1D76E61B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76E5C2C();
    v7 = a3(a1, &type metadata for ANFComponentAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76E621C()
{
  result = qword_1EC9BDE20;
  if (!qword_1EC9BDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE20);
  }

  return result;
}

unint64_t sub_1D76E6270(uint64_t a1)
{
  *(a1 + 8) = sub_1D76C99CC();
  result = sub_1D76C8B20();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D76E62C4()
{
  result = qword_1EC9BDE28;
  if (!qword_1EC9BDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE28);
  }

  return result;
}

unint64_t sub_1D76E631C()
{
  result = qword_1EC9BDE30;
  if (!qword_1EC9BDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE30);
  }

  return result;
}

unint64_t sub_1D76E6374()
{
  result = qword_1EC9BDE38;
  if (!qword_1EC9BDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE38);
  }

  return result;
}

void *InterstitialAdViewManager.__allocating_init(adManager:adRequestStore:journal:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[9] = sub_1D7704170();
  sub_1D767FBE4(a1, (v6 + 2));
  v6[7] = a2;
  v6[8] = a3;
  return v6;
}

void *InterstitialAdViewManager.init(adManager:adRequestStore:journal:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3[9] = sub_1D7704170();
  sub_1D767FBE4(a1, (v3 + 2));
  v3[7] = a2;
  v3[8] = a3;
  return v3;
}

uint64_t InterstitialAdViewManager.generateInsertion(for:placementIdentifier:size:contentFetched:)(uint64_t a1, uint64_t a2, char *a3, void (*a4)(uint64_t *), uint64_t a5, double a6, double a7)
{
  v58 = a4;
  v59 = a5;
  v57 = a2;
  v51 = a1;
  v11 = *v7;
  v12 = *(*v7 + 80);
  v13 = v11[12];
  v14 = v11[13];
  v15 = v11[15];
  v61 = v12;
  v62 = v13;
  v63 = v14;
  v64 = v15;
  type metadata accessor for InterstitialViewInsertion(255, &v61);
  v16 = sub_1D7703680();
  v54 = *(v16 - 8);
  v55 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v61 = v12;
  v62 = v13;
  v63 = v14;
  v64 = v15;
  v19 = type metadata accessor for AdRequest(255, &v61);
  v56 = sub_1D77046B0();
  v53 = *(v56 - 8);
  v20 = MEMORY[0x1EEE9AC00](v56);
  v52 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v49 - v23;
  v60 = v19;
  v25 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v27 = (&v49 - v26);
  v28 = sub_1D7704140();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7669BD8();
  *v31 = sub_1D77045F0();
  (*(v29 + 104))(v31, *MEMORY[0x1E69E8020], v28);
  LOBYTE(v19) = sub_1D7704160();
  (*(v29 + 8))(v31, v28);
  if (v19)
  {
    v50 = v18;
    v18 = a3;
    if (qword_1EE0AF008 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v32 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v33 = swift_allocObject();
  v49 = xmmword_1D7708FE0;
  *(v33 + 16) = xmmword_1D7708FE0;
  *(v33 + 56) = MEMORY[0x1E69E6158];
  v34 = sub_1D7668854();
  *(v33 + 64) = v34;
  v35 = v57;
  *(v33 + 32) = v57;
  *(v33 + 40) = v18;

  v36 = sub_1D77045A0();
  sub_1D7703ED0("Attempting to fetch cached interstitial ad request. placement=%{public}@", 72, 2, &dword_1D7662000, v32, v36, v33);

  LOBYTE(v61) = 0;
  AdRequestStore.request(for:behavior:)(v35, v18, &v61, v24);
  v37 = v60;
  if ((*(v25 + 48))(v24, 1, v60) == 1)
  {
    v53 = *(v53 + 8);
    (v53)(v24, v56);
    v38 = sub_1D7704590();
    v39 = swift_allocObject();
    *(v39 + 16) = v49;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = v34;
    *(v39 + 32) = v35;
    *(v39 + 40) = v18;

    sub_1D7703ED0("No request cached for ad. placement=%{public}@", 46, 2, &dword_1D7662000, v32, v38, v39);

    sub_1D76E6AF8();
    v40 = swift_allocError();
    *v41 = 1;
    v42 = v52;
    (*(v25 + 56))(v52, 1, 1, v60);
    Journal.addFailedEntry(error:request:placementIdentifier:contentIdentifier:)(v40, v42, v35, v18, 0, 0);
    (v53)(v42, v56);

    v43 = swift_allocError();
    *v44 = 1;
    v45 = v50;
    *v50 = v43;
    v46 = v55;
    swift_storeEnumTagMultiPayload();
    v58(v45);
    (*(v54 + 8))(v45, v46);
    return 0;
  }

  else
  {
    (*(v25 + 32))(v27, v24, v37);
    v48 = InterstitialAdViewManager.generateInsertion(for:request:size:contentFetched:)(v51, v27, v58, v59, a6, a7);
    (*(v25 + 8))(v27, v37);
    return v48;
  }
}

unint64_t sub_1D76E6AF8()
{
  result = qword_1EC9BDE40;
  if (!qword_1EC9BDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE40);
  }

  return result;
}

uint64_t InterstitialAdViewManager.generateInsertion(for:request:size:contentFetched:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v94 = a3;
  v95 = a4;
  v91 = a1;
  v11 = *v6;
  v12 = *v6;
  v104 = *(*v6 + 120);
  v13 = v104;
  v14 = *(v11 + 80);
  v89 = v12;
  v99 = *(v12 + 96);
  v102 = v14;
  v103 = v99;
  type metadata accessor for InterstitialViewInsertion(255, &v102);
  v85 = sub_1D7703680();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v73 - v15;
  v90 = v14;
  v102 = v14;
  v103 = v99;
  v104 = v13;
  v16 = type metadata accessor for AdRequest(255, &v102);
  v82 = sub_1D77046B0();
  v81 = *(v82 - 8);
  v17 = MEMORY[0x1EEE9AC00](v82);
  v80 = &v73 - v18;
  v92 = *(v16 - 8);
  v75 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v73 - v19;
  v20 = *(v11 + 88);
  v21 = sub_1D77046B0();
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v74 = &v73 - v23;
  v96 = v20;
  v87 = *(v20 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v86 = &v73 - v27;
  v93 = v16;
  v28 = *(v13 + 8);
  v88 = v99;
  v97 = v28();
  v98 = v29;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v30 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v78 = v31;
  v32 = swift_allocObject();
  v77 = xmmword_1D7708FD0;
  *(v32 + 16) = xmmword_1D7708FD0;
  v33 = a2;
  v35 = *a2;
  v34 = a2[1];
  v36 = MEMORY[0x1E69E6158];
  *(v32 + 56) = MEMORY[0x1E69E6158];
  v37 = sub_1D7668854();
  *(v32 + 32) = v35;
  *(v32 + 40) = v34;
  *(v32 + 96) = v36;
  *(v32 + 104) = v37;
  v38 = v97;
  v39 = v98;
  *(v32 + 64) = v37;
  *(v32 + 72) = v38;
  *(v32 + 80) = v39;

  v40 = sub_1D77045A0();
  v79 = v30;
  sub_1D7703ED0("Attempting to load interstitial ad. requestIdentifier=%{public}@, placement=%{public}@", 86, 2, &dword_1D7662000, v30, v40, v32);

  v41 = v7[5];
  v42 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v41);
  v43 = *(v42 + 24);
  v89 = *(v89 + 112);
  v44 = v90;
  v43(v91, v33, v90, v96, v88, *(&v99 + 1), *(v89 + 8), v13, v41, v42);
  v45 = v13;
  v46 = v44;
  v47 = v87;
  v48 = v86;
  v49 = v96;
  (*(v87 + 32))(v86, v26, v96);
  v50 = v74;
  (*(v47 + 16))(v74, v48, v49);
  (*(v47 + 56))(v50, 0, 1, v49);
  v100 = v97;
  v101 = v98;
  swift_beginAccess();
  sub_1D77041B0();

  sub_1D77041D0();
  swift_endAccess();
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = v92;
  v53 = *(v92 + 16);
  v54 = v76;
  v55 = v33;
  v91 = v45;
  v56 = v93;
  v53(v76, v55, v93);
  v57 = (*(v52 + 80) + 104) & ~*(v52 + 80);
  v58 = (v75 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *&v60 = v46;
  *(&v60 + 1) = v49;
  v61 = v99;
  *(v59 + 16) = v60;
  *(v59 + 32) = v61;
  v62 = v89;
  v63 = v91;
  *(v59 + 48) = v89;
  *(v59 + 56) = v63;
  v64 = v94;
  v65 = v95;
  *(v59 + 64) = v51;
  *(v59 + 72) = v64;
  v67 = v97;
  v66 = v98;
  *(v59 + 80) = v65;
  *(v59 + 88) = v67;
  *(v59 + 96) = v66;
  (*(v52 + 32))(v59 + v57, v54, v56);
  v68 = (v59 + v58);
  *v68 = a5;
  v68[1] = a6;
  v69 = *(v62 + 16);

  v70 = v86;
  v71 = v69(sub_1D76E78E4, v59, v49, v62, a5, a6);

  (*(v87 + 8))(v70, v49);

  return v71;
}

uint64_t sub_1D76E748C(void *a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(uint64_t *, __n128), uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v55 = a2;
  v56 = a8;
  v54 = a7;
  LODWORD(v57) = a3;
  v58 = a1;
  *&v59 = a12;
  *(&v59 + 1) = a14;
  *&v60 = a15;
  *(&v60 + 1) = a17;
  v21 = type metadata accessor for AdRequest(0, &v59);
  v52 = *(v21 - 8);
  v53 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v48 - v22;
  v24 = sub_1D77046B0();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v48 - v25;
  *&v59 = a12;
  *(&v59 + 1) = a14;
  *&v60 = a15;
  *(&v60 + 1) = a17;
  type metadata accessor for InterstitialViewInsertion(255, &v59);
  v27 = sub_1D7703680();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (v48 - v29);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v51 = a6;
    v50 = a5;
    if (v57)
    {
      v33 = v58;
      *v30 = v58;
      swift_storeEnumTagMultiPayload();
      v34 = v33;
    }

    else
    {
      v57 = v23;
      (*(*(a13 - 8) + 56))(v26, 1, 1, a13);
      v37 = v54;
      v38 = v56;
      v62 = v54;
      v63 = v56;
      swift_beginAccess();
      sub_1D77041B0();
      v49 = v27;
      v39 = v38;

      sub_1D77041D0();
      swift_endAccess();
      v48[1] = *(v32 + 64);
      v40 = v58;
      ObjectType = swift_getObjectType();
      v62 = v40;
      v42 = v55;
      v43 = (*(v55 + 8))(ObjectType, v55);
      v59 = 0u;
      v60 = 0u;
      v61 = 1;
      Journal.addFulfilledEntry(request:placementIdentifier:contentIdentifier:layout:)(a11, v37, v39, v43, v44, &v59);

      v45 = v57;
      (*(v52 + 16))(v57, a11, v53);
      v46 = v39;
      v27 = v49;
      sub_1D76A579C(v37, v46, v40, v42, v45, *(v32 + 64), v30, a9, a10);
      swift_storeEnumTagMultiPayload();

      sub_1D76E7CD4(v40);
    }

    (v50)(v30);
  }

  else
  {
    sub_1D76E6AF8();
    v35 = swift_allocError();
    *v36 = 0;
    *v30 = v35;
    swift_storeEnumTagMultiPayload();
    (a5)(v30);
  }

  return (*(v28 + 8))(v30, v27);
}

uint64_t sub_1D76E78E4(void *a1, uint64_t a2, char a3)
{
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(v3 + 48);
  v12 = *(v3 + 56);
  v17[0] = *(v3 + 16);
  v7 = v17[0];
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v12;
  v13 = *(type metadata accessor for AdRequest(0, v17) - 8);
  v14 = (*(v13 + 80) + 104) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D76E748C(a1, a2, a3 & 1, *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + v15), *(v3 + v15 + 8), v3 + v14, v7, v8, v9, v10, v11, v12);
}

id InterstitialAdViewManager.view(for:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = sub_1D7704140();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7669BD8();
  *v7 = sub_1D77045F0();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = sub_1D7704160();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_1EE0AF008 != -1)
  {
LABEL_5:
    swift_once();
  }

  v9 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7708FD0;
  v11 = *(v3 + 120);
  v21 = *(v3 + 80);
  v22 = *(v3 + 96);
  v23 = v11;
  v12 = (a1 + *(type metadata accessor for InterstitialViewInsertion(0, &v21) + 60));
  v14 = *v12;
  v13 = v12[1];
  v15 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1D7668854();
  *(v10 + 32) = v14;
  *(v10 + 40) = v13;
  v17 = *a1;
  v18 = a1[1];
  *(v10 + 96) = v15;
  *(v10 + 104) = v16;
  *(v10 + 64) = v16;
  *(v10 + 72) = v17;
  *(v10 + 80) = v18;

  v19 = sub_1D77045A0();
  sub_1D7703ED0("Fulfilling interstitial ad. requestIdentifier=%{public}@, placement=%{public}@", 78, 2, &dword_1D7662000, v9, v19, v10);

  return a1[2];
}

void *InterstitialAdViewManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t InterstitialAdViewManager.__deallocating_deinit()
{
  InterstitialAdViewManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D76E7CE8(uint64_t a1)
{
  v2 = sub_1D76E7EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76E7D24(uint64_t a1)
{
  v2 = sub_1D76E7EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CampaignAdData.encode(to:)(void *a1)
{
  sub_1D76E8084(0, &qword_1EC9BDE48, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76E7EAC();
  sub_1D7704B10();
  sub_1D77049C0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D76E7EAC()
{
  result = qword_1EC9BDE50;
  if (!qword_1EC9BDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE50);
  }

  return result;
}

uint64_t CampaignAdData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D76E8084(0, &qword_1EC9BDE58, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76E7EAC();
  sub_1D7704B00();
  if (!v2)
  {
    v10 = sub_1D7704930();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76E8084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76E7EAC();
    v7 = a3(a1, &type metadata for CampaignAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76E80E8(uint64_t a1)
{
  *(a1 + 8) = sub_1D76C9A20();
  result = sub_1D76C8B74();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D76E8130(void *a1)
{
  sub_1D76E8084(0, &qword_1EC9BDE48, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76E7EAC();
  sub_1D7704B10();
  sub_1D77049C0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D76E82A0()
{
  result = qword_1EC9BDE60;
  if (!qword_1EC9BDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE60);
  }

  return result;
}

unint64_t sub_1D76E82F8()
{
  result = qword_1EC9BDE68;
  if (!qword_1EC9BDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE68);
  }

  return result;
}

unint64_t sub_1D76E8350()
{
  result = qword_1EC9BDE70;
  if (!qword_1EC9BDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDE70);
  }

  return result;
}

char *ContentBannerAdProvider.adView(for:placementIdentifier:padding:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v17 = sub_1D7702FA0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v36[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v8[7] + 16) == 1)
  {
    sub_1D7702F90();
    v21 = sub_1D7702F70();
    v23 = v22;
    (*(v18 + 8))(v20, v17);

    sub_1D7703140();

    v24 = *v36;

    sub_1D7703140();

    v25 = *v36;

    sub_1D7703140();

    HIBYTE(v35) = v36[0];
    v26 = objc_allocWithZone(type metadata accessor for DebugBannerAdView());
    return sub_1D7687E1C(v21, v23, &v35 + 7, v24, v25, a6, a7);
  }

  else
  {
    v28 = v8[5];
    v29 = v8[6];
    __swift_project_boxed_opaque_existential_1(v8 + 2, v28);
    v30 = *(v29 + 8);

    v31 = v30(v28, v29);
    v32 = [v31 promotedContentViewOfType:0 size:1 startsCollapsed:{a6, a7}];

    sub_1D7667C54(a3, v36);
    v33 = objc_allocWithZone(type metadata accessor for BannerAdMetricsView());
    v34 = sub_1D76C0778(a1, a2, v32, v36, a4, a5, a6, a7, a8);

    return v34;
  }
}

uint64_t ContentBannerAdProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t ContentBannerAdProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D76E86D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D7702E10();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D7702E50();
  swift_allocObject();
  sub_1D7702E40();
  sub_1D7702E00();
  sub_1D7702E20();
  v3 = sub_1D7702E30();

  return v3;
}

uint64_t InterstitialAdMetricsView.contentIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_contentIdentifier);

  return v1;
}

id InterstitialAdMetricsView.onCollapse.getter()
{
  v1 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onCollapse;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void InterstitialAdMetricsView.onCollapse.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onCollapse;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id InterstitialAdMetricsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InterstitialAdMetricsView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onLongPress;
  sub_1D76E9468(0, &qword_1EE0B0810, MEMORY[0x1E69D8770]);
  v3 = v2;
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onCollapse;
  *(v0 + v4) = [objc_allocWithZone(v3) init];
  sub_1D7704860();
  __break(1u);
}

Swift::Void __swiftcall InterstitialAdMetricsView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_metricsView];
  [v0 bounds];
  [v1 setFrame_];
}

Swift::Void __swiftcall InterstitialAdMetricsView.missedOpportunity()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_metricsView) promotedContentInfo];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D77037D0();

    [v3 missedOpportunity];

    swift_unknownObjectRelease();
  }
}

id InterstitialAdMetricsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InterstitialAdMetricsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D76E8DE0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_contentIdentifier);

  return v1;
}

id sub_1D76E8E34()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onCollapse;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

id sub_1D76E8E8C()
{
  result = [*(*v0 + OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_metricsView) promotedContentInfo];
  if (result)
  {
    v2 = result;
    v3 = sub_1D77037D0();

    [v3 missedOpportunity];

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_1D76E8F7C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D76E9468(0, &qword_1EE0B0818, MEMORY[0x1E69D8768]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - v8;
  v10 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onLongPress;
  sub_1D76E9468(0, &qword_1EE0B0810, MEMORY[0x1E69D8770]);
  v12 = v11;
  *&v2[v10] = [objc_allocWithZone(v11) init];
  v13 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onCollapse;
  *&v2[v13] = [objc_allocWithZone(v12) init];
  v14 = [a1 promotedContentInfo];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D77037A0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = &v2[OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_contentIdentifier];
  *v19 = v16;
  v19[1] = v18;
  *&v2[OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_metricsView] = a1;
  v20 = a1;
  [v20 frame];
  v39.receiver = v2;
  v39.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v39, sel_initWithFrame_);
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor_];

  v25 = v20;
  v26 = [v22 clearColor];
  [v25 setBackgroundColor_];

  sub_1D7703DC0();
  [v23 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [v25 setFrame_];
  [v23 addSubview_];
  v35 = *&v23[OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onLongPress];
  (*(v7 + 104))(v9, *MEMORY[0x1E69D8760], v6);
  v36 = v35;
  v37 = sub_1D7704010();

  (*(v7 + 8))(v9, v6);
  return v23;
}

void _s7NewsAds25InterstitialAdMetricsViewC07metricsF9Collapsedyy17PromotedContentUI0eF0CF_0()
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7708FE0;
  v4 = *(v0 + OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_contentIdentifier);
  v3 = *(v0 + OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_contentIdentifier + 8);
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D7668854();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  v5 = sub_1D77045A0();
  sub_1D7703ED0("Did received request to collapse. contentIdentifier=%{public}@", 62, 2, &dword_1D7662000, v1, v5, v2);

  v6 = OBJC_IVAR____TtC7NewsAds25InterstitialAdMetricsView_onCollapse;
  swift_beginAccess();
  v7 = *(v0 + v6);
  MEMORY[0x1DA6FEDD0]();
}

void sub_1D76E9468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t InterstitialAdPlacement.desiredPlacement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D77038B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InterstitialAdPlacement.placementIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for InterstitialAdPlacement(0) + 20));

  return v1;
}

uint64_t InterstitialAdPlacement.insertionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InterstitialAdPlacement(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t InterstitialAdPlacement.init(placementIdentifier:boundingSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for InterstitialAdPlacement(0);
  *(a3 + v10[6]) = 0;
  *a3 = 1;
  v11 = *MEMORY[0x1E69C6010];
  v12 = sub_1D77038B0();
  result = (*(*(v12 - 8) + 104))(a3, v11, v12);
  v14 = (a3 + v10[5]);
  *v14 = a1;
  v14[1] = a2;
  v15 = (a3 + v10[7]);
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t sub_1D76E9688(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t sub_1D76E96C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D77038B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *sub_1D76E9760()
{
  v1 = sub_1D7703F10();
  v2 = MEMORY[0x1EEE9AC00](v1);
  v54 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x1EEE9AC00](v2);
  v60 = (&v51 - v5);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v51 - v7);
  v9 = v0[14];
  v10 = v0[17];
  v53 = v0[16];
  v11 = *(v10 + 16);
  v56 = v1;
  v61 = v6;
  v52 = v9;
  if (v11)
  {
    v12 = v10 + 32;
    v59 = *MEMORY[0x1E69D7950];
    v57 = (v6 + 104);
    v58 = v6 + 32;
    v55 = 0x80000001D7719680;

    v13 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D76EA92C(v12, v67);
      sub_1D76EA92C(v67, v65);
      if (v66)
      {
        v14 = *&v65[0];
        v15 = swift_allocObject();
        v62[0] = v14;
        v16 = sub_1D76A6440();

        sub_1D76734D4(0, &qword_1EC9BE1F0, &type metadata for AdContextBuilderSnapshot.SerializedSnapshotEntry, MEMORY[0x1E69E62F8]);
        v15[5] = v17;
        v18 = sub_1D76EAAC4(&qword_1EC9BDEC8, &qword_1EC9BE1F0, &type metadata for AdContextBuilderSnapshot.SerializedSnapshotEntry, sub_1D76EA964);
        v15[2] = v16;
        v15[6] = v18;
        v15[7] = 0xD00000000000001BLL;
        v15[8] = v55;
        *v60 = v15;
        (*v57)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1D768CAEC(0, v13[2] + 1, 1, v13);
        }

        v20 = v13[2];
        v19 = v13[3];
        if (v20 >= v19 >> 1)
        {
          v13 = sub_1D768CAEC((v19 > 1), v20 + 1, 1, v13);
        }

        sub_1D76EA9B8(v67);
        v13[2] = v20 + 1;
        (*(v61 + 32))(v13 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v20, v60, v1);
      }

      else
      {
        sub_1D7667CB8(v65, v62);
        v21 = swift_allocObject();
        v22 = v63;
        v23 = v64;
        v24 = __swift_project_boxed_opaque_existential_1(v62, v63);
        v21[5] = v22;
        v25 = *(v23 + 32);
        v1 = v56;
        v21[6] = v25;
        boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v21 + 2);
        (*(*(v22 - 8) + 16))(boxed_opaque_existential_2, v24, v22);
        v21[7] = 0x65746E6F632D6461;
        v21[8] = 0xEA00000000007478;
        *v8 = v21;
        (*v57)(v8, v59, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1D768CAEC(0, v13[2] + 1, 1, v13);
        }

        v28 = v13[2];
        v27 = v13[3];
        if (v28 >= v27 >> 1)
        {
          v13 = sub_1D768CAEC((v27 > 1), v28 + 1, 1, v13);
        }

        sub_1D76EA9B8(v67);
        v13[2] = v28 + 1;
        (*(v61 + 32))(v13 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v28, v8, v1);
        __swift_destroy_boxed_opaque_existential_1(v62);
      }

      v12 += 48;
      --v11;
    }

    while (v11);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7672D94(0, &qword_1EC9BD198, &qword_1EC9BD1A0, MEMORY[0x1E69E62F8], MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D7708FE0;
  v30 = v53;
  *(v29 + 32) = v52;
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = (v30 + 32);
    do
    {
      v67[0] = *v32;
      v33 = v32[1];
      v34 = v32[2];
      v35 = v32[4];
      v67[3] = v32[3];
      v67[4] = v35;
      v67[1] = v33;
      v67[2] = v34;
      v36 = v32[5];
      v37 = v32[6];
      v38 = v32[8];
      v68 = v32[7];
      v69 = v38;
      v67[5] = v36;
      v67[6] = v37;
      v39 = v68;
      sub_1D766D644(v67, v65);
      v40 = *(v29 + 16);
      v41 = *(v29 + 24);

      if (v40 >= v41 >> 1)
      {
        v29 = sub_1D768CD14((v41 > 1), v40 + 1, 1, v29);
      }

      *(v29 + 16) = v40 + 1;
      *(v29 + 8 * v40 + 32) = v39;
      sub_1D76950E4(v67);
      v32 += 9;
      --v31;
    }

    while (v31);
  }

  v42 = swift_allocObject();
  sub_1D7672D94(0, &qword_1EC9BDED0, &qword_1EC9BD1A0, MEMORY[0x1E69E62F8], MEMORY[0x1E69E62F8]);
  v42[5] = v43;
  v44 = sub_1D76EA9E8();
  v42[2] = v29;
  v42[6] = v44;
  v42[7] = 0x6E72756F6A2D6461;
  v42[8] = 0xEA00000000006C61;
  v45 = v54;
  *v54 = v42;
  v46 = v61;
  v47 = v56;
  (*(v61 + 104))(v45, *MEMORY[0x1E69D7950], v56);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1D768CAEC(0, v13[2] + 1, 1, v13);
  }

  v49 = v13[2];
  v48 = v13[3];
  if (v49 >= v48 >> 1)
  {
    v13 = sub_1D768CAEC((v48 > 1), v49 + 1, 1, v13);
  }

  v13[2] = v49 + 1;
  (*(v46 + 32))(v13 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v49, v45, v47);

  return v13;
}

uint64_t DebugJournal.Summary.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DebugJournal.Summary.contentIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t DebugJournal.Summary.status.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1D7672A08(v2, v3, v4, v5);
}

uint64_t DebugJournal.Detail.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DebugJournal.Detail.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D76E9F1C()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

void sub_1D76E9F48(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1D7704A30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D7704A30();

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

uint64_t sub_1D76EA01C(uint64_t a1)
{
  v2 = sub_1D76EA214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76EA058(uint64_t a1)
{
  v2 = sub_1D76EA214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DebugJournal.Detail.encode(to:)(void *a1)
{
  sub_1D76EA478(0, &qword_1EC9BDE98, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76EA214();
  sub_1D7704B10();
  v13 = 0;
  v9 = v11[3];
  sub_1D77049C0();
  if (!v9)
  {
    v12 = 1;
    sub_1D77049C0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D76EA214()
{
  result = qword_1EC9BDEA0;
  if (!qword_1EC9BDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDEA0);
  }

  return result;
}

void DebugJournal.Detail.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D76EA478(0, &qword_1EC9BDEA8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76EA214();
  sub_1D7704B00();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v19 = 0;
    v10 = sub_1D7704930();
    v12 = v11;
    v17 = v10;
    v18 = 1;
    v13 = sub_1D7704930();
    v15 = v14;
    (*(v7 + 8))(v9, v6);
    *a2 = v17;
    a2[1] = v12;
    a2[2] = v13;
    a2[3] = v15;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1D76EA478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76EA214();
    v7 = a3(a1, &type metadata for DebugJournal.Detail.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t DebugJournal.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DebugJournal.summary.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v4 = v1[4];
  v8 = v1[3];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D76EA57C(v7, &v6);
}

uint64_t DebugJournal.title.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t DebugJournal.subtitle.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1D76EA658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1D76EA6A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D76EA754(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D76EA790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D76EA7DC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1D76EA828()
{
  result = qword_1EC9BDEB0;
  if (!qword_1EC9BDEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDEB0);
  }

  return result;
}

unint64_t sub_1D76EA880()
{
  result = qword_1EC9BDEB8;
  if (!qword_1EC9BDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDEB8);
  }

  return result;
}

unint64_t sub_1D76EA8D8()
{
  result = qword_1EC9BDEC0;
  if (!qword_1EC9BDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDEC0);
  }

  return result;
}

unint64_t sub_1D76EA964()
{
  result = qword_1EC9BE210;
  if (!qword_1EC9BE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE210);
  }

  return result;
}

unint64_t sub_1D76EA9E8()
{
  result = qword_1EC9BDED8;
  if (!qword_1EC9BDED8)
  {
    sub_1D7672D94(255, &qword_1EC9BDED0, &qword_1EC9BD1A0, MEMORY[0x1E69E62F8], MEMORY[0x1E69E62F8]);
    sub_1D76EAAC4(&qword_1EC9BDEE0, &qword_1EC9BD1A0, &type metadata for DebugJournal.Detail, sub_1D76EAB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDED8);
  }

  return result;
}

uint64_t sub_1D76EAAC4(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D76734D4(255, a2, a3, MEMORY[0x1E69E62F8]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D76EAB50()
{
  result = qword_1EC9BDEE8;
  if (!qword_1EC9BDEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDEE8);
  }

  return result;
}

double sub_1D76EABA4(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t BannerAdViewManager.__allocating_init(adManager:requestStore:layoutStore:journal:tracker:host:)(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  v12 = swift_allocObject();
  BannerAdViewManager.init(adManager:requestStore:layoutStore:journal:tracker:host:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t BannerAdViewManager.init(adManager:requestStore:layoutStore:journal:tracker:host:)(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  v20 = *a6;
  v12 = *(a6 + 2);
  v13 = *(a6 + 3);
  v14 = *(*v6 + 80);
  v15 = *(*v6 + 96);
  v16 = *(*v6 + 136);
  v17 = *(*v6 + 112);
  v18 = *(*v6 + 128);
  v21[0] = *(*v6 + 104);
  v21[1] = v14;
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v21[5] = v18;
  type metadata accessor for DisposableObserver(0, v21);
  *(v6 + 184) = sub_1D7704440();
  *(v6 + 192) = sub_1D766E844(MEMORY[0x1E69E7CC0]);
  sub_1D7667CB8(a1, v6 + 16);
  *(v6 + 56) = a2;
  sub_1D7667CB8(a3, v6 + 64);
  *(v6 + 104) = a4;
  sub_1D7667CB8(a5, v6 + 112);
  *(v6 + 152) = v20;
  *(v6 + 168) = v12;
  *(v6 + 176) = v13;
  return v6;
}

char *BannerAdViewManager.view(for:model:size:position:padding:)(void *a1, unint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v204 = a1;
  v15 = *v7;
  v16 = *(*v7 + 13);
  v192 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v181 = &v167 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v179 = &v167 - v20;
  v22 = *(v21 + 88);
  v174 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v19);
  ObjectType = &v167 - v23;
  v25 = v24[10];
  v26 = v24[12];
  v27 = *(v24 + 14);
  v28 = *(v24 + 16);
  v193 = v25;
  v194 = v26;
  v208 = v25;
  v209 = v26;
  v195 = v28;
  v196 = v27;
  v210 = v27;
  v211 = v28;
  v29 = type metadata accessor for AdRequest(255, &v208);
  v30 = sub_1D77046B0();
  v198 = *(v30 - 8);
  v199 = v30;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v177 = &v167 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  *&v200 = &v167 - v34;
  v202 = v29;
  v203 = *(v29 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v180 = &v167 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v178 = &v167 - v38;
  v175 = v39;
  MEMORY[0x1EEE9AC00](v37);
  v201 = (&v167 - v40);
  v41 = sub_1D7704140();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = (&v167 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7669BD8();
  *v44 = sub_1D77045F0();
  (*(v42 + 104))(v44, *MEMORY[0x1E69E8020], v41);
  LOBYTE(v29) = sub_1D7704160();
  (*(v42 + 8))(v44, v41);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v183 = v15;
  v45 = v15[17];
  (*(v45 + 8))(&v208, v16, v45);
  v46 = v208;
  v41 = *&v209;

  sub_1D766E6D8(&v208);
  swift_beginAccess();
  v47 = v8[24];
  if (!v47[2] || (v48 = sub_1D76689AC(*&v46, v41), (v49 & 1) == 0))
  {
    v170 = v45;
    v171 = a2;
    v182 = v22;
    v172 = v16;
    v205 = v46;
    swift_endAccess();
    if (qword_1EE0AF008 == -1)
    {
LABEL_9:
      v64 = qword_1EE0AF010;
      sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v188 = v65;
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1D7709050;
      v67 = MEMORY[0x1E69E6158];
      *(v66 + 56) = MEMORY[0x1E69E6158];
      v68 = sub_1D7668854();
      v69 = v204;
      *(v66 + 32) = v205;
      *(v66 + 40) = v41;
      v70 = v69[2];
      v71 = v69[3];
      *(v66 + 96) = v67;
      *(v66 + 104) = v68;
      v72 = v68;
      *(v66 + 64) = v68;
      *(v66 + 72) = v70;
      v189 = v70;
      v190 = v71;
      *(v66 + 80) = v71;
      v73 = *(v8 + 19);
      v74 = *(v8 + 20);
      v75 = v41;
      v77 = v8[21];
      v76 = v8[22];
      v185 = v73;
      v186 = v74;
      v173 = v77;
      v191 = v76;
      if (v76)
      {
        v208 = v73;
        v209 = v74;

        MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
        MEMORY[0x1DA6FF0D0](v77, v76);
        MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
        v78 = v208;
        v74 = v209;
      }

      else
      {
        v79 = v73;

        v78 = v79;
      }

      v80 = v75;
      v81 = MEMORY[0x1E69E6158];
      *(v66 + 136) = MEMORY[0x1E69E6158];
      *(v66 + 144) = v72;
      *(v66 + 112) = v78;
      *(v66 + 120) = v74;
      v82 = sub_1D77045A0();
      v187 = v64;
      sub_1D7703ED0("Attempting to retrieve ad request for placement=%{public}@, ad=%{public}@, host=%{public}@", 90, 2, &dword_1D7662000, v64, v82, v66);

      LOBYTE(v208) = 0;
      v83 = *&v200;
      v84 = v205;
      AdRequestStore.request(for:behavior:)(*&v205, v80, &v208, *&v200);
      v86 = v202;
      v85 = v203;
      if ((*(v203 + 48))(v83, 1, v202) == 1)
      {

        (*(v198 + 1))(v83, v199);
        *&v162 = 0.0;
      }

      else
      {
        v168 = *(v85 + 32);
        v169 = v85 + 32;
        v168(v201, v83, v86);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_1D7709060;
        *(v87 + 56) = v81;
        *(v87 + 64) = v72;
        *(v87 + 32) = v84;
        *(v87 + 40) = v80;
        *(v87 + 96) = v81;
        *(v87 + 104) = v72;
        v88 = v190;
        *(v87 + 72) = v189;
        *(v87 + 80) = v88;
        v208 = a3;
        v209 = a4;
        type metadata accessor for CGSize(0);
        v197 = v80;

        v89 = sub_1D77042B0();
        *(v87 + 136) = v81;
        *(v87 + 144) = v72;
        *(v87 + 112) = v89;
        *(v87 + 120) = v90;
        v208 = a5;
        v209 = a6;
        type metadata accessor for CGPoint(0);
        v91 = sub_1D77042B0();
        *(v87 + 176) = v81;
        *(v87 + 184) = v72;
        *(v87 + 152) = v91;
        *(v87 + 160) = v92;
        v93 = v191;
        if (v191)
        {
          v208 = v185;
          v209 = v186;

          MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
          MEMORY[0x1DA6FF0D0](v173, v93);
          MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
          v94 = v208;
          v95 = v209;
        }

        else
        {
          *&v96 = COERCE_DOUBLE();
          v94 = v185;
          v95 = *&v96;
        }

        v97 = v187;
        v98 = v183;
        *(v87 + 216) = v81;
        *(v87 + 224) = v72;
        *(v87 + 192) = v94;
        *(v87 + 200) = v95;
        v99 = sub_1D77045A0();
        sub_1D7703ED0("Attempting to create banner ad view for placement=%{public}@, ad=%{public}@, size=%{public}@, position=%{public}@ host=%{public}@", 129, 2, &dword_1D7662000, v97, v99, v87);

        v100 = v8[5];
        v101 = v8[6];
        __swift_project_boxed_opaque_existential_1(v8 + 2, v100);
        v102 = *(v98 + 120);
        v103 = ObjectType;
        v104 = v201;
        (*(v101 + 3))(v204, v201, COERCE_DOUBLE(*&v193), v182, COERCE_DOUBLE(*&v194), v196, *(v102 + 8), v195, v100, v101);
        v183 = v72;
        v167 = v102;
        v105 = *(v102 + 16);
        v106 = v205;
        v107 = v197;
        v108 = v182;
        *&v109 = COERCE_DOUBLE(v105(*&v205, v197, v8 + 14, a5, a6, a3, a4, a7));
        v111 = v110;
        (*(v174 + 8))(v103, v108);
        v112 = CACurrentMediaTime();
        v200 = *&v109;
        ObjectType = swift_getObjectType();
        v208 = *&v109;
        v113 = *(v111 + 8);
        v199 = v111;
        v114 = v113(ObjectType, v111);
        v115 = v104;
        Journal.addRequestedEntry(request:placementIdentifier:contentIdentifier:)(v104, *&v106, v107, v114, v116);

        v177 = swift_allocObject();
        swift_weakInit();
        v174 = swift_allocObject();
        *(v174 + 24) = v111;
        swift_unknownObjectWeakInit();
        v117 = *(v192 + 16);
        v118 = v179;
        v117(v179, v171, v172);
        v119 = v202;
        v120 = v115;
        v121 = v203;
        v122 = *(v203 + 16);
        v123 = v178;
        v122(v178, v120, v202);
        v124 = v118;
        v125 = v172;
        v117(v181, v124, v172);
        v122(v180, v123, v119);
        v126 = v192;
        v127 = (*(v192 + 80) + 96) & ~*(v192 + 80);
        v128 = (v176 + *(v121 + 80) + v127) & ~*(v121 + 80);
        v175 = (v175 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
        v198 = ((v175 + 23) & 0xFFFFFFFFFFFFFFF8);
        v176 = (v198 + 15) & 0xFFFFFFFFFFFFFFF8;
        v171 = (v176 + 15) & 0xFFFFFFFFFFFFFFF8;
        v129 = swift_allocObject();
        *&v130 = v193;
        *&v131 = v194;
        *(&v130 + 1) = v182;
        *(&v131 + 1) = v125;
        *(v129 + 16) = v130;
        *(v129 + 32) = v131;
        v132 = v167;
        *(v129 + 48) = v196;
        *(v129 + 56) = v132;
        v133 = v199;
        v134 = v170;
        *(v129 + 64) = v195;
        *(v129 + 72) = v134;
        v135 = v177;
        v136 = v174;
        *(v129 + 80) = v177;
        *(v129 + 88) = v136;
        (*(v126 + 32))(v129 + v127, v179, v125);
        v168((v129 + v128), v178, v202);
        v137 = (v129 + v175);
        v138 = v204;
        v139 = v197;
        *v137 = v205;
        *(v137 + 1) = v139;
        *&v198[v129] = v138;
        *(v129 + v176) = v112;
        v140 = (v129 + v171);
        *v140 = a5;
        v140[1] = a6;
        v141 = *&v200;
        v208 = v200;
        v196 = *(v133 + 24);
        v142 = v196;

        v198 = v141;

        v142(ObjectType, v133);
        sub_1D7703480();

        v206 = v207[0];
        v143 = v172;
        v144 = v135;
        v145 = v180;
        v146 = v181;
        sub_1D76EC150(&v206, v144, v136, v181, v180, *&v205, v197, v204, v112, a5, a6);

        sub_1D7689A20(v206);
        v147 = *(v203 + 8);
        v203 += 8;
        v204 = v147;
        (v147)(v145, v202);
        (*(v192 + 8))(v146, v143);
        v207[0] = v198;
        v196(ObjectType, v133);
        v148 = swift_allocObject();
        *(v148 + 16) = sub_1D76EDD80;
        *(v148 + 24) = v129;
        v196 = v129;

        sub_1D7703490();

        __swift_project_boxed_opaque_existential_1(&v208, v211);
        sub_1D7703330();
        __swift_destroy_boxed_opaque_existential_1(&v208);
        v149 = swift_allocObject();
        *(v149 + 16) = xmmword_1D7709070;
        v150 = MEMORY[0x1E69E6158];
        v151 = v183;
        *(v149 + 56) = MEMORY[0x1E69E6158];
        *(v149 + 64) = v151;
        v152 = v197;
        *(v149 + 32) = v205;
        *(v149 + 40) = v152;
        *(v149 + 96) = v150;
        *(v149 + 104) = v151;
        v153 = v190;
        *(v149 + 72) = v189;
        *(v149 + 80) = v153;
        v154 = *v201;
        v155 = v201[1];
        *(v149 + 136) = v150;
        *(v149 + 144) = v151;
        *(v149 + 112) = v154;
        *(v149 + 120) = v155;
        v156 = v191;
        if (v191)
        {
          v208 = v185;
          v209 = v186;

          MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
          MEMORY[0x1DA6FF0D0](v173, v156);
          MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
          v157 = v208;
          v158 = v209;
          v159 = v187;
        }

        else
        {

          v158 = v186;

          v159 = v187;
          v157 = v185;
        }

        *(v149 + 176) = v150;
        *(v149 + 184) = v151;
        *(v149 + 152) = v157;
        *(v149 + 160) = v158;
        v164 = sub_1D77045A0();
        sub_1D7703ED0("Returning banner ad view for placement=%{public}@, ad=%{public}@, request=%{public}@, host=%{public}@", 101, 2, &dword_1D7662000, v159, v164, v149);

        swift_beginAccess();
        v165 = v198;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v207[0] = v8[24];
        v8[24] = 0x8000000000000000;
        sub_1D76CC354(v165, v133, *&v205, v197, isUniquelyReferenced_nonNull_native);

        v8[24] = v207[0];
        swift_endAccess();

        (v204)(v201, v202);
        *&v162 = v200;
      }

      return v162;
    }

LABEL_25:
    swift_once();
    goto LABEL_9;
  }

  v50 = v204;
  v51 = v47[7] + 16 * v48;
  v52 = *v51;
  v199 = *(v51 + 8);
  swift_endAccess();
  v53 = qword_1EE0AF008;
  v200 = COERCE_DOUBLE(v52);
  if (v53 != -1)
  {
    swift_once();
  }

  v54 = qword_1EE0AF010;
  sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1D7709050;
  v56 = MEMORY[0x1E69E6158];
  *(v55 + 56) = MEMORY[0x1E69E6158];
  v57 = sub_1D7668854();
  *(v55 + 32) = v46;
  *(v55 + 40) = v41;
  v59 = v50[2];
  v58 = v50[3];
  *(v55 + 96) = v56;
  *(v55 + 104) = v57;
  *(v55 + 64) = v57;
  *(v55 + 72) = v59;
  *(v55 + 80) = v58;
  v61 = *(v8 + 19);
  v60 = *(v8 + 20);
  v62 = v8[22];
  if (v62)
  {
    v63 = v8[21];
    v208 = v61;
    v209 = v60;

    MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
    MEMORY[0x1DA6FF0D0](v63, v62);
    MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
    v61 = v208;
    v60 = v209;
  }

  else
  {
  }

  *&v162 = v200;
  *(v55 + 136) = v56;
  *(v55 + 144) = v57;
  *(v55 + 112) = v61;
  *(v55 + 120) = v60;
  v160 = sub_1D77045A0();
  sub_1D7703ED0("Returning cached view for placement=%{public}@, ad=%{public}@, host=%{public}@", 78, 2, &dword_1D7662000, v54, v160, v55);

  v161 = swift_getObjectType();
  v208 = *&v162;
  (*(v199 + 48))(v161, v199, a5, a6, a3, a4);
  return v162;
}

void sub_1D76EC150(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void, void, __n128), uint64_t a7, void *a8, double a9, double a10, double a11)
{
  v156 = a7;
  v157 = a6;
  v155 = a4;
  v18 = *a8;
  v19 = *(*a8 + 128);
  *&v160[0] = *(*a8 + 88);
  *(v160 + 8) = *(v18 + 104);
  *(&v160[1] + 1) = v19;
  v20 = type metadata accessor for AdRequest(255, v160);
  v21 = sub_1D77046B0();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v140 - v23;
  v25 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v154 = a5;
    v153 = v20;
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      if (v25)
      {
        v30 = *(a3 + 24);
        v152 = v22;
        v151 = v24;
        if (v25 == 1)
        {
          v148 = v30;
          if (qword_1EE0AF008 != -1)
          {
            swift_once();
          }

          v149 = qword_1EE0AF010;
          sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v146 = v43;
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_1D77091E0;
          v45 = MEMORY[0x1E69E6158];
          *(v44 + 56) = MEMORY[0x1E69E6158];
          v46 = sub_1D7668854();
          v47 = v156;
          *(v44 + 32) = v157;
          *(v44 + 40) = v47;
          v48 = a8[2];
          v49 = a8[3];
          *(v44 + 96) = v45;
          *(v44 + 104) = v46;
          *(v44 + 64) = v46;
          *(v44 + 72) = v48;
          v144 = v48;
          *(v44 + 80) = v49;
          v50 = *v154;
          v51 = v154[1];
          *(v44 + 136) = v45;
          *(v44 + 144) = v46;
          *(v44 + 112) = v50;
          *(v44 + 120) = v51;
          *&v160[0] = 0;
          *(&v160[0] + 1) = 0xE000000000000000;
          ObjectType = swift_getObjectType();

          v145 = v49;

          [v29 frame];
          v159[0] = v52;
          v159[1] = v53;
          type metadata accessor for CGSize(0);
          sub_1D7704850();
          v54 = v160[0];
          *(v44 + 176) = v45;
          *(v44 + 184) = v46;
          *(v44 + 152) = v54;
          v55 = CACurrentMediaTime();
          v56 = MEMORY[0x1E69E6438];
          *(v44 + 216) = MEMORY[0x1E69E63B0];
          *(v44 + 224) = v56;
          *(v44 + 192) = (v55 - a9) * 1000.0;
          v58 = v27[19];
          v57 = v27[20];
          v59 = v27[22];
          if (v59)
          {
            v60 = v29;
            v61 = v27[21];
            *&v160[0] = v27[19];
            *(&v160[0] + 1) = v57;

            MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
            v62 = v61;
            v29 = v60;
            MEMORY[0x1DA6FF0D0](v62, v59);
            MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
            v63 = *(&v160[0] + 1);
            v58 = *&v160[0];
          }

          else
          {
          }

          v141 = v46;
          *(v44 + 256) = v45;
          *(v44 + 264) = v46;
          *(v44 + 232) = v58;
          *(v44 + 240) = v63;
          v78 = sub_1D77045A0();
          sub_1D7703ED0("Banner ad ready for display, placement=%{public}@, ad=%{public}@, request=%{public}@, size=%{public}@, duration=%fm, host=%{public}@", 132, 2, &dword_1D7662000, v149, v78, v44);

          [v29 frame];
          v80 = v79;
          v82 = v81;
          *&v160[0] = v29;
          v83 = v148;
          v84 = *(v148 + 40);
          v85 = ObjectType;
          v86 = v84(ObjectType, v148);
          v159[0] = v29;
          v84(v85, v83);
          v88 = v87;
          v89 = v27[11];
          v90 = v27[12];
          __swift_project_boxed_opaque_existential_1(v27 + 8, v89);
          *&v160[0] = v80;
          *(&v160[0] + 1) = v82;
          *&v160[1] = v86;
          *(&v160[1] + 1) = v88;
          v91 = v157;
          v92 = v156;
          (*(v90 + 16))(v160, v157, v156, v89, v90);
          [v29 frame];
          v94 = v93;
          v96 = v95;
          v159[0] = v29;
          v97 = *(v83 + 8);
          v143 = v83 + 8;
          v142 = v97;
          v98 = v97(v85, v83);
          *v160 = a10;
          *(v160 + 1) = a11;
          *&v160[1] = v94;
          *(&v160[1] + 1) = v96;
          LOBYTE(v160[2]) = 0;
          Journal.addFulfilledEntry(request:placementIdentifier:contentIdentifier:layout:)(v154, v91, v92, v98, v99, v160);

          v158 = v29;
          (*(v83 + 16))(v160, v85, v83);
          if (*(&v160[1] + 1))
          {
            sub_1D7667CB8(v160, v159);
            v100 = v153;
            v101 = *(v153 - 8);
            v102 = v151;
            (*(v101 + 16))(v151, v154, v153);
            (*(v101 + 56))(v102, 0, 1, v100);
            sub_1D7667C54(v159, v160);
            v161 = 0;
            sub_1D76ED3A8(v155, v102, v160);

            sub_1D766E72C(v160);
            (*(v152 + 8))(v102, v21);
            __swift_destroy_boxed_opaque_existential_1(v159);
          }

          else
          {
            sub_1D7689730(v160);
            v103 = sub_1D7704590();
            v104 = swift_allocObject();
            *(v104 + 16) = xmmword_1D7708FD0;
            v105 = MEMORY[0x1E69E6158];
            v106 = v141;
            *(v104 + 56) = MEMORY[0x1E69E6158];
            *(v104 + 64) = v106;
            *(v104 + 32) = v91;
            *(v104 + 40) = v156;
            *(v104 + 96) = v105;
            *(v104 + 104) = v106;
            v107 = v145;
            *(v104 + 72) = v144;
            *(v104 + 80) = v107;

            sub_1D7703ED0("Banner ad marked filled without valid PromotedContentInfo placement=%{public}@, ad=%{public}@", 93, 2, &dword_1D7662000, v149, v103, v104);

            v146 = v27[13];
            sub_1D769D8F0();
            v141 = swift_allocError();
            *v108 = 0;
            *(v108 + 8) = 1;
            v109 = v153;
            v110 = *(v153 - 8);
            v111 = v29;
            v150 = v29;
            v149 = v21;
            v145 = *(v110 + 16);
            v112 = v91;
            v113 = v151;
            v114 = v154;
            v145(v151, v154, v153);
            v144 = *(v110 + 56);
            v144(v113, 0, 1, v109);
            *&v160[0] = v111;
            v115 = v142(ObjectType, v83);
            v116 = v141;
            Journal.addFailedEntry(error:request:placementIdentifier:contentIdentifier:)(v141, v113, v112, v156, v115, v117);

            v157 = *(v152 + 8);
            v118 = v149;
            v157(v113, v149);

            v145(v113, v114, v109);
            v144(v113, 0, 1, v109);
            memset(v160, 0, sizeof(v160));
            v161 = 1;
            sub_1D76ED3A8(v155, v113, v160);

            sub_1D766E72C(v160);
            v157(v113, v118);
          }
        }

        else
        {
          v150 = v28;
          if (v25 == 2)
          {
            if (qword_1EE0AF008 != -1)
            {
              swift_once();
            }

            v148 = qword_1EE0AF010;
            LODWORD(ObjectType) = sub_1D7704590();
            sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_1D7709050;
            v32 = MEMORY[0x1E69E6158];
            *(v31 + 56) = MEMORY[0x1E69E6158];
            v33 = sub_1D7668854();
            v34 = v156;
            *(v31 + 32) = v157;
            *(v31 + 40) = v34;
            v35 = a8[2];
            v36 = a8[3];
            *(v31 + 96) = v32;
            *(v31 + 104) = v33;
            *(v31 + 64) = v33;
            *(v31 + 72) = v35;
            *(v31 + 80) = v36;
            v38 = v27[19];
            v37 = v27[20];
            v39 = v27[22];
            if (v39)
            {
              v149 = v21;
              v40 = v27[21];
              *&v160[0] = v38;
              *(&v160[0] + 1) = v37;
              v41 = v34;

              MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
              v42 = v40;
              v21 = v149;
              MEMORY[0x1DA6FF0D0](v42, v39);
              MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
              v37 = *(&v160[0] + 1);
              v38 = *&v160[0];
            }

            else
            {
              v41 = v34;
            }

            *(v31 + 136) = MEMORY[0x1E69E6158];
            *(v31 + 144) = v33;
            *(v31 + 112) = v38;
            *(v31 + 120) = v37;
            sub_1D7703ED0("Banner ad was collapsed by Ad Platforms for placement=%{public}@, ad=%{public}@, host=%{public}@", 96, 2, &dword_1D7662000, v148, ObjectType, v31);

            v119 = v150;
            v120 = swift_getObjectType();
            [v119 frame];
            v122 = v121;
            v124 = v123;
            v159[0] = v119;
            v125 = (*(v30 + 8))(v120, v30);
            *v160 = a10;
            *(v160 + 1) = a11;
            *&v160[1] = v122;
            *(&v160[1] + 1) = v124;
            LOBYTE(v160[2]) = 0;
            v126 = v154;
            Journal.addCollapsedEntry(request:placementIdentifier:contentIdentifier:layout:)(v154, v157, v41, v125, v127, v160);

            v128 = v153;
            v129 = *(v153 - 8);
            v130 = v151;
            (*(v129 + 16))(v151, v126, v153);
            (*(v129 + 56))(v130, 0, 1, v128);
            memset(v160, 0, sizeof(v160));
            v161 = 1;
            sub_1D76ED3A8(v155, v130, v160);

            sub_1D766E72C(v160);
            (*(v152 + 8))(v130, v21);
          }

          else
          {
            v148 = v30;
            if (qword_1EE0AF008 != -1)
            {
              swift_once();
            }

            v149 = v21;
            ObjectType = qword_1EE0AF010;
            LODWORD(v146) = sub_1D7704590();
            sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v66 = swift_allocObject();
            *(v66 + 16) = xmmword_1D7709070;
            v67 = MEMORY[0x1E69E6158];
            *(v66 + 56) = MEMORY[0x1E69E6158];
            v68 = sub_1D7668854();
            v69 = v156;
            *(v66 + 32) = v157;
            *(v66 + 40) = v69;
            v70 = a8[2];
            v71 = a8[3];
            *(v66 + 96) = v67;
            *(v66 + 104) = v68;
            *(v66 + 64) = v68;
            *(v66 + 72) = v70;
            *(v66 + 80) = v71;
            *&v160[0] = 0;
            *(&v160[0] + 1) = 0xE000000000000000;
            v159[0] = v25;
            sub_1D7665328(0, &qword_1EE0AEBD0, MEMORY[0x1E69E7280]);

            sub_1D7704850();
            v72 = v160[0];
            *(v66 + 136) = v67;
            *(v66 + 144) = v68;
            *(v66 + 112) = v72;
            v74 = v27[19];
            v73 = v27[20];
            v75 = v27[22];
            if (v75)
            {
              v76 = v27[21];
              *&v160[0] = v27[19];
              *(&v160[0] + 1) = v73;

              MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
              MEMORY[0x1DA6FF0D0](v76, v75);
              MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
              v77 = *(&v160[0] + 1);
              v74 = *&v160[0];
            }

            else
            {
            }

            *(v66 + 176) = v67;
            *(v66 + 184) = v68;
            *(v66 + 152) = v74;
            *(v66 + 160) = v77;
            sub_1D7703ED0("Banner ad not filled by Ad Platforms for placement=%{public}@, ad=%{public}@, error=%{public}@, host=%{public}@", 111, 2, &dword_1D7662000, ObjectType, v146, v66);

            v131 = v153;
            v132 = *(v153 - 8);
            ObjectType = *(v132 + 16);
            v133 = v151;
            ObjectType(v151, v154, v153);
            v146 = *(v132 + 56);
            v146(v133, 0, 1, v131);
            v134 = v150;
            v135 = swift_getObjectType();
            *&v160[0] = v134;
            v136 = (*(v148 + 8))(v135);
            Journal.addFailedEntry(error:request:placementIdentifier:contentIdentifier:)(v25, v133, v157, v156, v136, v137);

            v138 = *(v152 + 8);
            v139 = v149;
            v138(v133, v149);
            ObjectType(v133, v154, v131);
            v146(v133, 0, 1, v131);
            memset(v160, 0, sizeof(v160));
            v161 = 1;
            sub_1D76ED3A8(v155, v133, v160);

            sub_1D766E72C(v160);
            v138(v133, v139);
          }
        }
      }

      else
      {
        v64 = v153;
        v65 = *(v153 - 8);
        (*(v65 + 16))(v24, v154, v153);
        (*(v65 + 56))(v24, 0, 1, v64);
        *&v160[0] = 1;
        memset(v160 + 8, 0, 72);
        v161 = 2;
        sub_1D76ED3A8(v155, v24, v160);

        sub_1D766E72C(v160);
        (*(v22 + 8))(v24, v21);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1D76ED3A8(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v74 = a1;
  v67 = *v3;
  v68 = a2;
  v7 = v67[12];
  v8 = v67[14];
  v9 = v67[16];
  v88 = v67[10];
  v6 = v88;
  v89 = v7;
  v90 = v8;
  v91 = v9;
  type metadata accessor for AdRequest(255, &v88);
  v10 = sub_1D77046B0();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v59 - v11;
  v13 = v67[17];
  v88 = v67[13];
  v12 = v88;
  v77 = v6;
  v89 = v6;
  v72 = v8;
  v73 = v7;
  v90 = v7;
  v91 = v13;
  v92 = v8;
  v71 = v9;
  v93 = v9;
  v14 = type metadata accessor for BannerAdUpdate(0, &v88);
  v69 = *(v14 - 8);
  v70 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v76 = &v59 - v16;
  v75 = *(v12 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v61 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v59 - v19;
  v21 = *(v13 + 8);
  v21(&v82, v12, v13);
  v22 = v83;
  v60 = v82;

  sub_1D766E6D8(&v82);
  v66 = a3;
  sub_1D766CEFC(a3, &v90);
  v23 = v3[13];
  v65 = v21;
  v21(&v80, v12, v13);
  v24 = v80;
  v25 = v81;

  sub_1D766E6D8(&v80);
  Journal.createDebugJournal(for:)(v24, v25, v103);

  v99 = v103[5];
  v100 = v103[6];
  v101 = v103[7];
  v102 = v103[8];
  v95 = v103[1];
  v96 = v103[2];
  v97 = v103[3];
  v98 = v103[4];
  v88 = v60;
  v89 = v22;
  v94 = v103[0];
  (*(v13 + 16))(&v88, v12, v13);
  v26 = v61;
  (*(v75 + 16))(v61, v20, v12);
  v27 = v62;
  (*(v63 + 16))(v62, v68, v64);

  BannerAdUpdate.init(model:request:journal:)(v26, v27, v23, v12, v13, v76);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v28 = qword_1EE0AF010;
  sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D7709050;
  v68 = v20;
  v78 = v12;
  v74 = v13;
  (v65)(&v82, v12, v13);
  v31 = v82;
  v30 = v83;

  sub_1D766E6D8(&v82);
  v32 = MEMORY[0x1E69E6158];
  *(v29 + 56) = MEMORY[0x1E69E6158];
  v33 = sub_1D7668854();
  *(v29 + 64) = v33;
  *(v29 + 32) = v31;
  *(v29 + 40) = v30;
  v34 = BannerAdState.description.getter();
  *(v29 + 96) = v32;
  *(v29 + 104) = v33;
  *(v29 + 72) = v34;
  *(v29 + 80) = v35;
  v37 = v4[19];
  v36 = v4[20];
  v38 = v4[22];
  if (v38)
  {
    v39 = v4[21];
    v80 = v4[19];
    v81 = v36;

    MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
    MEMORY[0x1DA6FF0D0](v39, v38);
    MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
    v37 = v80;
    v40 = v81;
  }

  else
  {
  }

  *(v29 + 136) = v32;
  *(v29 + 144) = v33;
  *(v29 + 112) = v37;
  *(v29 + 120) = v40;
  v41 = sub_1D77045A0();
  sub_1D7703ED0("Notifying observers of state change, placement=%{public}@, state=%{public}@, host=%{public}@", 92, 2, &dword_1D7662000, v28, v41, v29);

  swift_beginAccess();
  v79 = v4[23];
  MEMORY[0x1EEE9AC00](v79);
  v42 = v67;
  v66 = v67[11];
  v43 = v66;
  v44 = v77;
  *(&v59 - 8) = v77;
  *(&v59 - 7) = v43;
  v45 = v44;
  v47 = v72;
  v46 = v73;
  v48 = v78;
  *(&v59 - 6) = v73;
  *(&v59 - 5) = v48;
  v49 = v48;
  v50 = v42[15];
  v67 = v50;
  *(&v59 - 4) = v47;
  *(&v59 - 3) = v50;
  v51 = v71;
  v52 = v74;
  *(&v59 - 2) = v71;
  *(&v59 - 1) = v52;

  v82 = v49;
  v83 = v45;
  v84 = v46;
  v85 = v52;
  v86 = v47;
  v87 = v51;
  type metadata accessor for DisposableObserver(255, &v82);
  sub_1D77044B0();
  swift_getWitnessTable();
  v4[23] = sub_1D77047B0();

  v65 = &v59;
  v82 = v4[23];
  MEMORY[0x1EEE9AC00](v53);
  v55 = v66;
  v54 = v67;
  *(&v59 - 10) = v77;
  *(&v59 - 9) = v55;
  *(&v59 - 8) = v46;
  v56 = v78;
  *(&v59 - 7) = v78;
  *(&v59 - 6) = v47;
  *(&v59 - 5) = v54;
  *(&v59 - 4) = v51;
  v57 = v76;
  *(&v59 - 3) = v52;
  *(&v59 - 2) = v57;

  swift_getWitnessTable();
  sub_1D7704340();

  (*(v75 + 8))(v68, v56);
  sub_1D766E6D8(&v88);
  return (*(v69 + 8))(v57, v70);
}

void BannerAdViewManager.deinit()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[24];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(v2 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    v13._countAndFlagsBits = v11;
    v13._object = v12;
    Journal.removeEntries(for:)(v13);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      __swift_destroy_boxed_opaque_existential_1(v1 + 2);

      __swift_destroy_boxed_opaque_existential_1(v1 + 8);

      __swift_destroy_boxed_opaque_existential_1(v1 + 14);

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t BannerAdViewManager.__deallocating_deinit()
{
  BannerAdViewManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D76EDD1C()
{

  sub_1D76EDF58(v0 + 32);

  return swift_deallocClassInstance();
}

void sub_1D76EDD80(uint64_t *a1)
{
  v3 = v1[4];
  v4 = v1[6];
  v5 = v1[8];
  v6 = (*(*(v1[5] - 8) + 80) + 96) & ~*(*(v1[5] - 8) + 80);
  v7 = *(*(v1[5] - 8) + 64);
  v12[0] = v1[2];
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v8 = *(type metadata accessor for AdRequest(0, v12) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1D76EC150(a1, v1[10], v1[11], v1 + v6, (v1 + v9), *(v1 + v10), *(v1 + v10 + 8), *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D76EDED8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

BOOL sub_1D76EDF80(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

void sub_1D76EDFC8(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = *(*a1 + 16);

  v3(v2);
}

uint64_t sub_1D76EE01C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D76EE064(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

NewsAds::AdStatusCondition __swiftcall AdStatusCondition.withState(_:)(NewsAds::AdStatusCondition::State a1)
{
  v3 = *a1;
  v4 = v2[1];
  *v1 = *v2;
  *(v1 + 8) = v4;
  *(v1 + 16) = v3;

  result.identifier._object = v6;
  result.identifier._countAndFlagsBits = v5;
  result.state = v7;
  return result;
}

uint64_t AdStatusCondition.State.hashValue.getter()
{
  v1 = *v0;
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](v1);
  return sub_1D7704AF0();
}

uint64_t AdStatusCondition.identifier.getter()
{
  v1 = *v0;

  return v1;
}

NewsAds::AdStatusCondition __swiftcall AdStatusCondition.init(identifier:state:)(NewsAds::AdStatusCondition identifier, NewsAds::AdStatusCondition::State state)
{
  v3 = *state;
  *v2 = identifier.identifier;
  *(v2 + 16) = v3;
  identifier.state = state;
  return identifier;
}

uint64_t static AdStatusCondition.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1D7704A30();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

unint64_t sub_1D76EE204()
{
  result = qword_1EC9BDEF0;
  if (!qword_1EC9BDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDEF0);
  }

  return result;
}

uint64_t sub_1D76EE258(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1D7704A30();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1D76EE2B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1D76EE300(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void DebugJournalSummaryViewLayoutOptions.init(boundingSize:screenScale:layoutMargins:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = a8;
}

uint64_t DebugJournalSummaryViewLayoutOptions.Embedded.init(layoutOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D77032B0();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1D76EE42C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D76EE44C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

uint64_t type metadata accessor for DebugJournalSummaryViewLayoutOptions.Embedded(uint64_t a1)
{
  result = qword_1EC9BDEF8;
  if (!qword_1EC9BDEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D76EE508(uint64_t a1)
{
  result = sub_1D77032B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id AdSponsorshipView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AdSponsorshipView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for AdSponsorshipView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id AdSponsorshipView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AdSponsorshipView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AdSponsorshipView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AdSponsorshipView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdSponsorshipView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PrerollAdPlacement.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PrerollAdPlacement.desiredPlacement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrerollAdPlacement(0) + 20);
  v4 = sub_1D77038B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrerollAdPlacement.insertionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PrerollAdPlacement(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t PrerollAdPlacement.init(placementIdentifier:boundingSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for PrerollAdPlacement(0);
  v11 = v10[5];
  *&a3[v11] = 1;
  v12 = *MEMORY[0x1E69C6020];
  v13 = sub_1D77038B0();
  result = (*(*(v13 - 8) + 104))(&a3[v11], v12, v13);
  a3[v10[7]] = 0;
  *a3 = a1;
  *(a3 + 1) = a2;
  v15 = &a3[v10[6]];
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t PrerollAd.contentIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PrerollAd.placement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PrerollAd(0) + 24);

  return sub_1D76BF34C(v3, a1);
}

uint64_t type metadata accessor for PrerollAd(uint64_t a1)
{
  result = qword_1EC9BDF10;
  if (!qword_1EC9BDF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D76EEAC0(uint64_t a1)
{
  result = sub_1D7703EA0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PrerollAdPlacement(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D76EEB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 48);
    v10[2] = *(a1 + 32);
    v10[3] = v6;
    v11 = *(a1 + 64);
    v7 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1D76CC068(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1D76939B0(a1, qword_1EE0AE8E8, &type metadata for AdSegmentManager.ProviderContainer);
    sub_1D76EF478(a2, a3, v10);

    sub_1D76939B0(v10, qword_1EE0AE8E8, &type metadata for AdSegmentManager.ProviderContainer);
  }
}

uint64_t AdManager.__allocating_init(previewQueue:)(void *a1)
{
  v2 = swift_allocObject();
  AdManager.init(previewQueue:)(a1);
  return v2;
}

uint64_t AdRequest.identifier.getter()
{
  v0 = sub_1D76EFAFC();

  return v0;
}

uint64_t sub_1D76EECA4()
{
  v0 = sub_1D76EFAFC();

  return v0;
}

uint64_t AdManager.enabled.getter()
{

  sub_1D7703140();

  return v1;
}

uint64_t AdManager.adProvider<A, B, C>(for:context:placement:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *a1;

  sub_1D7703140();

  if (LOBYTE(v62[0]) != 1)
  {
    v14 = 2;
LABEL_17:
    sub_1D76EFB04();
    swift_allocError();
    *v49 = v14;
    return swift_willThrow();
  }

  v66 = a2;
  v10 = a1[2];
  v9 = a1[3];
  swift_beginAccess();
  v11 = v3[13];
  if (*(v11 + 16) && (v12 = sub_1D76689AC(v10, v9), (v13 & 1) != 0))
  {
    sub_1D767F844(*(v11 + 56) + 32 * v12, &v59);
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  swift_endAccess();
  if (!*(&v60 + 1))
  {
    sub_1D76939B0(&v59, &unk_1EE0AEBB0, MEMORY[0x1E69E7CA0] + 8);
LABEL_14:
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v41 = qword_1EE0AF010;
    v42 = sub_1D7704590();
    sub_1D76694D8(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1D7708FD0;
    v44 = (*(v8[16] + 8))(v8[13]);
    v46 = v45;
    v47 = MEMORY[0x1E69E6158];
    *(v43 + 56) = MEMORY[0x1E69E6158];
    v48 = sub_1D7668854();
    *(v43 + 32) = v44;
    *(v43 + 40) = v46;
    *(v43 + 96) = v47;
    *(v43 + 104) = v48;
    *(v43 + 64) = v48;
    *(v43 + 72) = v10;
    *(v43 + 80) = v9;

    sub_1D7703ED0("Attempted to fetch an ad provider without first registering a factory, placement=%{public}@, ad=%{public}@", 106, 2, &dword_1D7662000, v41, v42, v43);

    v14 = 0;
    goto LABEL_17;
  }

  v54 = a3;
  v55 = v10;
  v56 = v9;
  v15 = v8[12];
  v16 = v8[13];
  v17 = v8[14];
  v18 = v8[15];
  v19 = v8[16];
  v20 = v8[11];
  v62[0] = v20;
  v62[1] = v15;
  v62[2] = v16;
  v63 = v17;
  v53 = v18;
  v64 = v18;
  v65 = v19;
  v21 = type metadata accessor for Ad(255, v62);
  type metadata accessor for AnyFactory(0, v21, v15, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = v55;
    v9 = v56;
    goto LABEL_14;
  }

  v52 = v58;
  v51 = v20;
  __swift_project_boxed_opaque_existential_1(v4 + 8, v4[11]);
  v24 = type metadata accessor for AdContext(0, v20, v17, v23);
  v63 = v24;
  v64 = &protocol witness table for AdContext<A>;
  v65 = &protocol witness table for AdContext<A>;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v62);
  v50 = v17;
  v26 = v66;
  (*(*(v24 - 8) + 16))(boxed_opaque_existential_2, v66, v24);
  v27 = v4[6];
  v28 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v27);
  (*(v28 + 16))(&v58, a1, v26, v51, v15, v16, v50, v53, v19, v27, v28);
  v57 = v58;
  sub_1D767D438(v62, v54, &v57, v16, v19, &v59);

  __swift_destroy_boxed_opaque_existential_1(v62);
  v29 = *(&v60 + 1);
  v30 = v61;
  __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
  (*(v30 + 16))(v54, v16, v19, v29, v30);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v31 = qword_1EE0AF010;
  sub_1D76694D8(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D7708FD0;
  v33 = (*(v19 + 8))(v16, v19);
  v35 = v34;
  v36 = MEMORY[0x1E69E6158];
  *(v32 + 56) = MEMORY[0x1E69E6158];
  v37 = sub_1D7668854();
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  *(v32 + 96) = v36;
  *(v32 + 104) = v37;
  *(v32 + 64) = v37;
  *(v32 + 72) = v55;
  *(v32 + 80) = v56;

  v38 = sub_1D77045A0();
  sub_1D7703ED0("Creating ad provider from context, placement=%{public}@, ad=%{public}@", 70, 2, &dword_1D7662000, v31, v38, v32);

  v39 = *(v52 + 16);
  v62[0] = a1;

  v39(v62, &v59);

  return __swift_destroy_boxed_opaque_existential_1(&v59);
}

void *AdManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return v0;
}

uint64_t AdManager.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1D76EF360()
{

  sub_1D7703140();

  return v1;
}

double sub_1D76EF3CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D76689AC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D767EF14();
      v10 = v12;
    }

    sub_1D7667CB8((*(v10 + 56) + 40 * v8), a3);
    sub_1D76EF5DC(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1D76EF478@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D76689AC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D76E4560();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 72 * v8;
    v12 = *(v11 + 48);
    *(a3 + 32) = *(v11 + 32);
    *(a3 + 48) = v12;
    *(a3 + 64) = *(v11 + 64);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    sub_1D76EF798(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 64) = 0;
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1D76EF538@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D76689AC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D76E4878();
      v10 = v12;
    }

    sub_1D766B74C((*(v10 + 56) + 32 * v8), a3);
    sub_1D76EF94C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_1D76EF5DC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D7704700() + 1) & ~v5;
    do
    {
      sub_1D7704AD0();

      sub_1D77042D0();
      v11 = sub_1D7704AF0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

void sub_1D76EF798(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D7704700() + 1) & ~v5;
    do
    {
      sub_1D7704AD0();

      sub_1D77042D0();
      v9 = sub_1D7704AF0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 72 * v3);
        v16 = (v14 + 72 * v6);
        if (v3 != v6 || v15 >= v16 + 72)
        {
          memmove(v15, v16, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_1D76EF94C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D7704700() + 1) & ~v5;
    do
    {
      sub_1D7704AD0();

      sub_1D77042D0();
      v10 = sub_1D7704AF0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

unint64_t sub_1D76EFB04()
{
  result = qword_1EC9BDF20;
  if (!qword_1EC9BDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF20);
  }

  return result;
}

uint64_t sub_1D76EFB58(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D76694D8(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

_OWORD *sub_1D76EFCC0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t VideoAdPlaybackState.LoadState.hashValue.getter()
{
  v1 = *v0;
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](v1);
  return sub_1D7704AF0();
}

uint64_t VideoAdPlaybackState.placementIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t VideoAdPlaybackState.contentIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t VideoAdPlaybackState.videoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdPlaybackState(0) + 32);

  return sub_1D76EFE8C(v3, a1);
}

uint64_t type metadata accessor for VideoAdPlaybackState(uint64_t a1)
{
  result = qword_1EC9BDF30;
  if (!qword_1EC9BDF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D76EFE8C(uint64_t a1, uint64_t a2)
{
  sub_1D76B6C94(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t VideoAdPlaybackState.loadState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdPlaybackState(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

unint64_t sub_1D76EFF54()
{
  result = qword_1EC9BDF28;
  if (!qword_1EC9BDF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF28);
  }

  return result;
}

void sub_1D76EFFD0(uint64_t a1)
{
  sub_1D76F007C();
  if (v1 <= 0x3F)
  {
    sub_1D76B6C94(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D76F007C()
{
  if (!qword_1EC9BDF40)
  {
    v0 = sub_1D77046B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9BDF40);
    }
  }
}

Swift::Void __swiftcall MetricsView.checkVisibility(scrollView:)(UIScrollView *scrollView)
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE0AF010;
  v3 = sub_1D77045A0();
  sub_1D7703ED0("Ad Sponsorship metrics view will check visibility", 49, 2, &dword_1D7662000, v2, v3, MEMORY[0x1E69E7CC0]);

  MEMORY[0x1EEE2FDC0](scrollView);
}

uint64_t (*sub_1D76F018C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1D7703DA0();
  return sub_1D76F01FC;
}

uint64_t (*sub_1D76F0208(uint64_t *a1))()
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
  *(v2 + 32) = sub_1D7703E00();
  return sub_1D76F0404;
}

void sub_1D76F0278(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1D76F02C0(uint64_t a1)
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE0AF010;
  v3 = sub_1D77045A0();
  sub_1D7703ED0("Ad Sponsorship metrics view will check visibility", 49, 2, &dword_1D7662000, v2, v3, MEMORY[0x1E69E7CC0]);

  return MEMORY[0x1EEE2FDC0](a1);
}

uint64_t sub_1D76F0408()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

double AdPolicyEnvironments.layout.getter@<D0>(void *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

__n128 AdPolicyEnvironments.viewport.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 56);
  v3 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v3;
  *(a1 + 96) = *(v1 + 104);
  v4 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = result;
  return result;
}

void __swiftcall AdPolicyEnvironments.init(layout:viewport:)(NewsAds::AdPolicyEnvironments *__return_ptr retstr, NewsAds::AdPolicyLayoutEnvironment layout, NewsAds::AdPolicyViewportEnvironment *viewport)
{
  origin = viewport->bounds.origin;
  retstr->viewport.bounds.size = viewport->bounds.size;
  v4 = *&viewport->adjustedContentInset.top;
  retstr->viewport.contentSize = viewport->contentSize;
  *&retstr->viewport.adjustedContentInset.top = v4;
  *&retstr->viewport.adjustedContentInset.bottom = *&viewport->adjustedContentInset.bottom;
  contentOffset = viewport->contentOffset;
  retstr->viewport.viewportSize = viewport->viewportSize;
  retstr->viewport.contentOffset = contentOffset;
  retstr->layout.content._rawValue = *layout.content._rawValue;
  retstr->viewport.bounds.origin = origin;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D76F050C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1D76F0554(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D76F05C0()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    sub_1D7667C54(v0 + 16, v3);
    type metadata accessor for DebugNativeAdProvider();
    v1 = swift_allocObject();
    if (qword_1EE0B0BE0 != -1)
    {
      swift_once();
    }

    sub_1D76F1548(0, &qword_1EE0B0910, MEMORY[0x1E69E6448], MEMORY[0x1E69D6F10]);
    swift_allocObject();

    *(v1 + 16) = sub_1D7703160();
    sub_1D76F1548(0, &qword_1EC9BDF48, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
    swift_allocObject();

    *(v1 + 24) = sub_1D7703160();
    sub_1D767FBE4(v3, v1 + 32);
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t NativeAdProvider.fetchNativeAdInfo(request:journal:)(uint64_t a1, uint64_t a2)
{
  sub_1D7696460(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(MEMORY[0x1EEE9AC00](v4 - 8) + 64));
  v9 = *v8;
  v10 = v8[1];
  if (qword_1EE0B0BE0 != -1)
  {
    swift_once();
  }

  if (sub_1D77030B0())
  {
    v11 = sub_1D76F05C0();
    sub_1D7669BD8();
    v12 = sub_1D77045F0();
    sub_1D76F0DA0(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = swift_allocObject();
    sub_1D76F0E04(v7, v15 + v13);
    *(v15 + v14) = v11;
    *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
    type metadata accessor for NativeAdInfo(0);

    sub_1D7703710();

    v16 = sub_1D7703620();
    type metadata accessor for DebugNativeAdProvider();
    v17 = sub_1D77036B0();
  }

  else
  {
    v18 = swift_allocObject();
    v19 = swift_weakInit();
    MEMORY[0x1EEE9AC00](v19);
    *(&v21 - 6) = v18;
    *(&v21 - 5) = v9;
    *(&v21 - 4) = v10;
    *(&v21 - 3) = a2;
    *(&v21 - 2) = a1;
    sub_1D76F1670(0, &qword_1EE0B0858, type metadata accessor for NativeAdInfo, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v17 = sub_1D77036F0();
  }

  return v17;
}

void sub_1D76F0A38(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = a1;
  sub_1D7696460(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v43 = a3;
    v44 = a8;
    v41 = a6;
    v42 = a2;
    v20 = a4;
    v21 = Strong[5];
    v22 = Strong[6];
    __swift_project_boxed_opaque_existential_1(Strong + 2, v21);
    v23 = (*(v22 + 8))(v21, v22);
    v24 = [objc_opt_self() mainScreen];
    [v24 bounds];
    v26 = v25;
    v28 = v27;

    v29 = swift_allocObject();
    swift_weakInit();
    sub_1D76F0DA0(a9, &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = (*(v16 + 80) + 80) & ~*(v16 + 80);
    v31 = swift_allocObject();
    v33 = v42;
    v32 = v43;
    v31[2] = v29;
    v31[3] = v32;
    v34 = v41;
    v31[4] = v20;
    v31[5] = v34;
    v36 = v44;
    v35 = v45;
    v31[6] = a7;
    v31[7] = v35;
    v31[8] = v33;
    v31[9] = v36;
    sub_1D76F0E04(v18, v31 + v30);
    aBlock[4] = sub_1D76F15F0;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D769D7C4;
    aBlock[3] = &block_descriptor_8;
    v37 = _Block_copy(aBlock);

    [v23 nativePromotedContentWithSize:v37 contentFetched:{v26, v28}];
    _Block_release(v37);
  }

  else
  {
    v38 = sub_1D77033D0();
    sub_1D76F1598();
    v39 = swift_allocError();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69D64A0], v38);
    a3(v39);
  }
}

uint64_t sub_1D76F0DA0(uint64_t a1, uint64_t a2)
{
  sub_1D7696460(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D76F0E04(uint64_t a1, uint64_t a2)
{
  sub_1D7696460(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D76F0E68(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v95 = a5;
  v15 = type metadata accessor for NativeAdInfo(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v90 = a9;
    v20 = sub_1D7703790();
    v93 = a8;
    v94 = a7;
    v91 = v15;
    v92 = v19;
    if (v20)
    {
      v21 = v20;
      v89 = a10;
      if (qword_1EE0AF008 != -1)
      {
        swift_once();
      }

      v22 = qword_1EE0AF010;
      sub_1D76F1670(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D7708FD0;
      v24 = sub_1D77037A0();
      v26 = v25;
      v27 = MEMORY[0x1E69E6158];
      *(v23 + 56) = MEMORY[0x1E69E6158];
      v28 = sub_1D7668854();
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      *(v23 + 96) = v27;
      *(v23 + 104) = v28;
      v29 = v95;
      *(v23 + 64) = v28;
      *(v23 + 72) = v29;
      *(v23 + 80) = a6;

      v30 = sub_1D77045A0();
      sub_1D7703ED0("Fetching native ad info succeeded, contentID=%{public}@, placementID=%{public}@", 79, 2, &dword_1D7662000, v22, v30, v23);

      v31 = sub_1D77038F0();
      v87 = v32;
      v88 = v31;
      v33 = sub_1D77038E0();
      v84 = v34;
      v85 = v33;
      v83 = sub_1D77038C0();
      v82 = v35;
      v81 = sub_1D77038D0();
      v80 = v36;
      v37 = v21;
      v86 = v37;
      v79 = sub_1D7703760();
      v78 = v38;

      v39 = type metadata accessor for NativeAdInfo.Fulfilled(0);
      v40 = (v17 + v39[12]);
      v40[3] = &type metadata for NativeAdContentInfo;
      v40[4] = &protocol witness table for NativeAdContentInfo;
      v41 = a6;
      v42 = swift_allocObject();
      *v40 = v42;
      v42[2] = sub_1D77037A0();
      v42[3] = v43;
      v42[4] = sub_1D77037D0();
      v42[5] = a1;
      v45 = v92[5];
      v44 = v92[6];
      __swift_project_boxed_opaque_existential_1(v92 + 2, v45);
      v46 = *(v44 + 8);
      v47 = a1;
      v48 = v46(v45, v44);
      sub_1D76F0DA0(v89, v17 + v39[11]);
      *v17 = v95;
      v17[1] = v41;
      v49 = v84;
      v17[2] = v85;
      v17[3] = v49;
      v50 = v87;
      v17[4] = v88;
      v17[5] = v50;
      v51 = v82;
      v17[6] = v83;
      v17[7] = v51;
      v52 = v80;
      v17[8] = v81;
      v17[9] = v52;
      v53 = v78;
      v17[10] = v79;
      v17[11] = v53;
      *(v17 + v39[13]) = v48;
      v17[12] = v90;
      swift_storeEnumTagMultiPayload();

      v94(v17);
    }

    else
    {
      if (qword_1EE0AF008 != -1)
      {
        swift_once();
      }

      v57 = qword_1EE0AF010;
      sub_1D76F1670(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1D7709050;
      v59 = sub_1D77037A0();
      v61 = v60;
      v62 = MEMORY[0x1E69E6158];
      *(v58 + 56) = MEMORY[0x1E69E6158];
      v63 = sub_1D7668854();
      *(v58 + 64) = v63;
      *(v58 + 32) = v59;
      *(v58 + 40) = v61;
      [a1 unfilledReason];
      v64 = sub_1D7703860();
      *(v58 + 96) = v62;
      *(v58 + 104) = v63;
      *(v58 + 72) = v64;
      *(v58 + 80) = v65;
      *(v58 + 136) = v62;
      *(v58 + 144) = v63;
      *(v58 + 112) = v95;
      *(v58 + 120) = a6;

      v66 = sub_1D77045A0();
      sub_1D7703ED0("Fetching native ad info unfilled, contentID=%{public}@, unfilledReason=%{public}@, placementID=%{public}@", 105, 2, &dword_1D7662000, v57, v66, v58);

      v96[3] = &type metadata for NativeAdContentInfo;
      v96[4] = &protocol witness table for NativeAdContentInfo;
      v67 = swift_allocObject();
      v96[0] = v67;
      v68 = sub_1D77037A0();
      v70 = v69;
      v67[2] = v68;
      v67[3] = v69;

      v67[4] = sub_1D77037D0();
      v67[5] = a1;
      v71 = v19[5];
      v72 = v19[6];
      __swift_project_boxed_opaque_existential_1(v19 + 2, v71);
      v73 = a6;
      v74 = *(v72 + 8);
      v75 = a1;
      v76 = v74(v71, v72);
      *v17 = v95;
      v17[1] = v73;
      v17[2] = v68;
      v17[3] = v70;
      sub_1D7667C54(v96, (v17 + 5));
      v17[10] = v76;
      v17[4] = v90;

      __swift_destroy_boxed_opaque_existential_1(v96);
      swift_storeEnumTagMultiPayload();
      v94(v17);
    }

    sub_1D7696720(v17);
  }

  else
  {
    v54 = sub_1D77033D0();
    sub_1D76F1598();
    v55 = swift_allocError();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69D64A0], v54);
    a3(v55);
  }
}

uint64_t NativeAdProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NativeAdProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1D76F1548(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1D7703150();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D76F1598()
{
  result = qword_1EE0B0890;
  if (!qword_1EE0B0890)
  {
    sub_1D77033D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0890);
  }

  return result;
}

void sub_1D76F1670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t PreviewInterstitialAdContext.init(provider:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  AdContextDataProviding.data<A>(for:)(&type metadata for AppAdData, v5, &type metadata for AppAdData, v6);
  if (!v2)
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    AdContextDataProviding.data<A>(for:)(&type metadata for UserAdData, v7, &type metadata for UserAdData, v8);
    *a2 = v11;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D76F17AC()
{
  if (*v0)
  {
    return 0x6174614472657375;
  }

  else
  {
    return 0x61746144707061;
  }
}

void sub_1D76F17E8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D7704A30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D7704A30();

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

uint64_t sub_1D76F18C4(uint64_t a1)
{
  v2 = sub_1D76F1AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F1900(uint64_t a1)
{
  v2 = sub_1D76F1AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviewInterstitialAdContext.encode(to:)(void *a1)
{
  sub_1D76F1D34(0, &qword_1EC9BDF50, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F1AF8();
  sub_1D7704B10();
  v15 = v8;
  v14 = 0;
  sub_1D7669D40();
  v10 = v12[0];
  sub_1D7704A00();
  if (!v10)
  {
    v12[1] = v9;
    v13 = 1;
    sub_1D7669394();

    sub_1D7704A00();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D76F1AF8()
{
  result = qword_1EC9BDF58;
  if (!qword_1EC9BDF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF58);
  }

  return result;
}

uint64_t PreviewInterstitialAdContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D76F1D34(0, &qword_1EC9BDF60, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F1AF8();
  sub_1D7704B00();
  if (!v2)
  {
    v15 = 0;
    sub_1D7669CEC();
    sub_1D7704970();
    v10 = v16;
    v14 = 1;
    sub_1D76684E8();
    sub_1D7704970();
    (*(v7 + 8))(v9, v6);
    v12 = v13[1];
    *a2 = v10;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76F1D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76F1AF8();
    v7 = a3(a1, &type metadata for PreviewInterstitialAdContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id PreviewInterstitialAdContext.newsSupplementalContext.getter()
{
  v0 = objc_allocWithZone(sub_1D7703D00());

  v1 = [v0 init];
  sub_1D7703CF0();
  sub_1D7703AE0();
  sub_1D7703B50();

  sub_1D7703C00();

  return v1;
}

uint64_t sub_1D76F1EAC(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_1D7703780();
  v5 = v3;

  return sub_1D76B8138(a1, &v5, 103);
}

uint64_t sub_1D76F1F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  sub_1D7703780();
  v7 = v5;

  return sub_1D76B8138(a3, &v7, 103);
}

unint64_t sub_1D76F1F90()
{
  result = qword_1EC9BDF68;
  if (!qword_1EC9BDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF68);
  }

  return result;
}

unint64_t sub_1D76F1FE8()
{
  result = qword_1EC9BDF70;
  if (!qword_1EC9BDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF70);
  }

  return result;
}

unint64_t sub_1D76F2040()
{
  result = qword_1EC9BDF78;
  if (!qword_1EC9BDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF78);
  }

  return result;
}

uint64_t sub_1D76F20D8(uint64_t a1)
{
  v2 = sub_1D76F27F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F2114(uint64_t a1)
{
  v2 = sub_1D76F27F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D76F2150()
{
  v1 = 0x70756F7267;
  if (*v0 != 1)
  {
    v1 = 0x646165687473616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656E6E6162;
  }
}

uint64_t sub_1D76F21A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D76F4070(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D76F21CC(uint64_t a1)
{
  v2 = sub_1D76F284C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F2208(uint64_t a1)
{
  v2 = sub_1D76F284C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D76F2244(uint64_t a1)
{
  v2 = sub_1D76F27A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F2280(uint64_t a1)
{
  v2 = sub_1D76F27A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D76F22BC(uint64_t a1)
{
  v2 = sub_1D76F2750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F22F8(uint64_t a1)
{
  v2 = sub_1D76F2750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SponsorshipAdDataPlacement.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D76F3824(0, &qword_1EC9BDF80, sub_1D76F2750, &type metadata for SponsorshipAdDataPlacement.MastheadCodingKeys, MEMORY[0x1E69E6F58]);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v23 - v5;
  sub_1D76F3824(0, &qword_1EC9BDF90, sub_1D76F27A4, &type metadata for SponsorshipAdDataPlacement.GroupCodingKeys, v3);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v23 - v7;
  sub_1D76F3824(0, &qword_1EC9BDFA0, sub_1D76F27F8, &type metadata for SponsorshipAdDataPlacement.BannerCodingKeys, v3);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  sub_1D76F3824(0, &qword_1EC9BDFB0, sub_1D76F284C, &type metadata for SponsorshipAdDataPlacement.CodingKeys, v3);
  v31 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F284C();
  sub_1D7704B10();
  v16 = (v12 + 8);
  if (v15)
  {
    if (v15 == 1)
    {
      v33 = 1;
      sub_1D76F27A4();
      v17 = v25;
      v18 = v31;
      sub_1D7704990();
      (*(v26 + 8))(v17, v27);
      return (*v16)(v14, v18);
    }

    v34 = 2;
    sub_1D76F2750();
    v10 = v28;
    v20 = v31;
    sub_1D7704990();
    v22 = v29;
    v21 = v30;
  }

  else
  {
    v32 = 0;
    sub_1D76F27F8();
    v20 = v31;
    sub_1D7704990();
    v22 = v23;
    v21 = v24;
  }

  (*(v22 + 8))(v10, v21);
  return (*v16)(v14, v20);
}

unint64_t sub_1D76F2750()
{
  result = qword_1EC9BDF88;
  if (!qword_1EC9BDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF88);
  }

  return result;
}

unint64_t sub_1D76F27A4()
{
  result = qword_1EC9BDF98;
  if (!qword_1EC9BDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDF98);
  }

  return result;
}

unint64_t sub_1D76F27F8()
{
  result = qword_1EC9BDFA8;
  if (!qword_1EC9BDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDFA8);
  }

  return result;
}

unint64_t sub_1D76F284C()
{
  result = qword_1EC9BDFB8;
  if (!qword_1EC9BDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDFB8);
  }

  return result;
}

uint64_t SponsorshipAdDataPlacement.hashValue.getter()
{
  v1 = *v0;
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](v1);
  return sub_1D7704AF0();
}

uint64_t SponsorshipAdDataPlacement.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v40 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D76F3824(0, &qword_1EC9BDFC0, sub_1D76F2750, &type metadata for SponsorshipAdDataPlacement.MastheadCodingKeys, MEMORY[0x1E69E6F48]);
  v39 = v4;
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v33 - v5;
  sub_1D76F3824(0, &qword_1EC9BDFC8, sub_1D76F27A4, &type metadata for SponsorshipAdDataPlacement.GroupCodingKeys, v3);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v33 - v7;
  sub_1D76F3824(0, &qword_1EC9BDFD0, sub_1D76F27F8, &type metadata for SponsorshipAdDataPlacement.BannerCodingKeys, v3);
  v9 = v8;
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  sub_1D76F3824(0, &qword_1EC9BDFD8, sub_1D76F284C, &type metadata for SponsorshipAdDataPlacement.CodingKeys, v3);
  v13 = v12;
  v43 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F284C();
  v16 = v44;
  sub_1D7704B00();
  if (v16)
  {
    goto LABEL_2;
  }

  v34 = v9;
  v18 = v41;
  v19 = v42;
  v44 = a1;
  v20 = sub_1D7704980();
  v21 = *(v20 + 16);
  if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = sub_1D77047A0();
    swift_allocError();
    v26 = v25;
    sub_1D76F2F38(0);
    *v26 = &type metadata for SponsorshipAdDataPlacement;
    sub_1D7704900();
    sub_1D7704780();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v43 + 8))(v15, v13);
    swift_unknownObjectRelease();
LABEL_10:
    v17 = v44;
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  if (!*(v20 + 32))
  {
    v45 = 0;
    sub_1D76F27F8();
    sub_1D77048F0();
    v31 = v43;
    (*(v35 + 8))(v11, v34);
    (*(v31 + 8))(v15, v13);
    swift_unknownObjectRelease();
    v30 = v40;
LABEL_22:
    *v30 = v22;
    goto LABEL_10;
  }

  v35 = 0;
  v28 = v43;
  if (v22 == 1)
  {
    v46 = 1;
    sub_1D76F27A4();
    v29 = v35;
    sub_1D77048F0();
    v30 = v40;
    if (v29)
    {
      goto LABEL_18;
    }

    (*(v37 + 8))(v18, v38);
    (*(v28 + 8))(v15, v13);
    goto LABEL_21;
  }

  v47 = 2;
  sub_1D76F2750();
  v32 = v35;
  sub_1D77048F0();
  v30 = v40;
  if (!v32)
  {
    (*(v36 + 8))(v19, v39);
    (*(v28 + 8))(v15, v13);
LABEL_21:
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

LABEL_18:
  (*(v28 + 8))(v15, v13);
  swift_unknownObjectRelease();
  a1 = v44;
LABEL_2:
  v17 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

void sub_1D76F2F38(uint64_t a1)
{
  if (!qword_1EC9BDFE0)
  {
    sub_1D76F2FA8();
    sub_1D7704790();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9BDFE0);
    }
  }
}

unint64_t sub_1D76F2FA8()
{
  result = qword_1EC9BDFE8;
  if (!qword_1EC9BDFE8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC9BDFE8);
  }

  return result;
}

uint64_t sub_1D76F3024()
{
  v1 = *v0;
  v2 = 0x6E65644964656566;
  v3 = 0x726F7779654B6461;
  v4 = 0x6C65746968577369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E656D6563616C70;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D76F30E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D76F4180(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D76F310C(uint64_t a1)
{
  v2 = sub_1D76F341C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F3148(uint64_t a1)
{
  v2 = sub_1D76F341C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SponsorshipAdData.encode(to:)(void *a1)
{
  sub_1D76F3824(0, &qword_1EC9BDFF0, sub_1D76F341C, &type metadata for SponsorshipAdData.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v14 = *(v1 + 16);
  v13 = *(v1 + 24);
  v12 = *(v1 + 32);
  v11 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F341C();
  sub_1D7704B10();
  v22 = 0;
  v8 = v15;
  sub_1D77049C0();
  if (!v8)
  {
    v9 = v13;
    v21 = v14;
    v20 = 1;
    sub_1D76F3470();
    sub_1D7704A00();
    v16 = v9;
    v19 = 2;
    sub_1D76697B0();
    sub_1D768DEEC(&qword_1EC9BE010, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D7704A00();
    v18 = 3;
    sub_1D77049D0();
    v17 = 4;
    sub_1D77049F0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D76F341C()
{
  result = qword_1EC9BDFF8;
  if (!qword_1EC9BDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDFF8);
  }

  return result;
}

unint64_t sub_1D76F3470()
{
  result = qword_1EC9BE000;
  if (!qword_1EC9BE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE000);
  }

  return result;
}

void SponsorshipAdData.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_1D76F3824(0, &qword_1EC9BE018, sub_1D76F341C, &type metadata for SponsorshipAdData.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F341C();
  sub_1D7704B00();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v6;
    v10 = v20;
    v28 = 0;
    v11 = v5;
    v12 = sub_1D7704930();
    v14 = v13;
    v19 = v12;
    v26 = 1;
    sub_1D76F388C();
    sub_1D7704970();
    HIDWORD(v18) = v27;
    sub_1D76697B0();
    v25 = 2;
    sub_1D768DEEC(&qword_1EC9BD1D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D7704970();
    v15 = v21;
    v24 = 3;
    v22 = sub_1D7704940() & 1;
    v23 = 4;
    v16 = sub_1D7704960();
    (*(v9 + 8))(v8, v11);
    v17 = v22;
    *v10 = v19;
    *(v10 + 8) = v14;
    *(v10 + 16) = BYTE4(v18);
    *(v10 + 24) = v15;
    *(v10 + 32) = v17;
    *(v10 + 40) = v16;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1D76F3824(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D76F388C()
{
  result = qword_1EC9BE020;
  if (!qword_1EC9BE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE020);
  }

  return result;
}

uint64_t SponsorshipAdData.init(feed:placement:adKeywords:)@<X0>(void **a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if (*a1)
  {
    v8 = [swift_unknownObjectRetain() asChannel];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 identifier];
      v11 = sub_1D7704260();
      v13 = v12;

      v14 = [v9 isWhitelisted];
      v15 = [v9 contentProvider];
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease_n();
    }

    else
    {
      v18 = [v6 identifier];
      v11 = sub_1D7704260();
      v13 = v19;

      result = swift_unknownObjectRelease_n();
      v15 = 1;
      v14 = 1;
    }
  }

  else
  {
    result = sub_1D7704260();
    v11 = result;
    v13 = v17;
    v14 = 1;
    v15 = 1;
  }

  *a4 = v11;
  *(a4 + 8) = v13;
  *(a4 + 16) = v7;
  *(a4 + 24) = a3;
  *(a4 + 32) = v14;
  *(a4 + 40) = v15;
  return result;
}

uint64_t SponsorshipAdData.init(channel:placement:adKeywords:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = [a1 identifier];
  v9 = sub_1D7704260();
  v11 = v10;

  LOBYTE(v8) = [a1 isWhitelisted];
  v12 = [a1 contentProvider];
  result = swift_unknownObjectRelease();
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v7;
  *(a4 + 24) = a3;
  *(a4 + 32) = v8;
  *(a4 + 40) = v12;
  return result;
}

void SponsorshipAdData.init(tag:placement:adKeywords:)(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = [a1 identifier];
  v8 = sub_1D7704260();
  v10 = v9;
  swift_unknownObjectRelease();

  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v6;
  *(a4 + 24) = a3;
  *(a4 + 32) = 1;
  *(a4 + 40) = 1;
}

unint64_t sub_1D76F3B9C()
{
  result = qword_1EC9BE030;
  if (!qword_1EC9BE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE030);
  }

  return result;
}

unint64_t sub_1D76F3C54()
{
  result = qword_1EC9BE038;
  if (!qword_1EC9BE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE038);
  }

  return result;
}

unint64_t sub_1D76F3CAC()
{
  result = qword_1EC9BE040;
  if (!qword_1EC9BE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE040);
  }

  return result;
}

unint64_t sub_1D76F3D04()
{
  result = qword_1EC9BE048;
  if (!qword_1EC9BE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE048);
  }

  return result;
}

unint64_t sub_1D76F3D5C()
{
  result = qword_1EC9BE050;
  if (!qword_1EC9BE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE050);
  }

  return result;
}

unint64_t sub_1D76F3DB4()
{
  result = qword_1EC9BE058;
  if (!qword_1EC9BE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE058);
  }

  return result;
}

unint64_t sub_1D76F3E0C()
{
  result = qword_1EC9BE060;
  if (!qword_1EC9BE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE060);
  }

  return result;
}

unint64_t sub_1D76F3E64()
{
  result = qword_1EC9BE068;
  if (!qword_1EC9BE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE068);
  }

  return result;
}

unint64_t sub_1D76F3EBC()
{
  result = qword_1EC9BE070;
  if (!qword_1EC9BE070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE070);
  }

  return result;
}

unint64_t sub_1D76F3F14()
{
  result = qword_1EC9BE078;
  if (!qword_1EC9BE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE078);
  }

  return result;
}

unint64_t sub_1D76F3F6C()
{
  result = qword_1EC9BE080;
  if (!qword_1EC9BE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE080);
  }

  return result;
}

unint64_t sub_1D76F3FC4()
{
  result = qword_1EC9BE088;
  if (!qword_1EC9BE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE088);
  }

  return result;
}

unint64_t sub_1D76F401C()
{
  result = qword_1EC9BE090;
  if (!qword_1EC9BE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE090);
  }

  return result;
}

uint64_t sub_1D76F4070(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656E6E6162 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646165687473616DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D7704A30();

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

uint64_t sub_1D76F4180(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644964656566 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7779654B6461 && a2 == 0xEA00000000007364 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C65746968577369 && a2 == 0xED00006465747369 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D7715480 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

__n128 sub_1D76F4374@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for DebugLifecycleMetricsHelper();
  v8 = swift_allocObject();
  v9 = type metadata accessor for DebugAdsMetricsView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC7NewsAds19DebugAdsMetricsView_privacyMarkerView] = 0;
  *&v10[OBJC_IVAR____TtC7NewsAds19DebugAdsMetricsView_interactionPresentationDelegate] = 0;
  *&v10[OBJC_IVAR____TtC7NewsAds19DebugAdsMetricsView_readyDelegate] = 0;
  if (a3)
  {
    v11 = 53.0;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = sub_1D76984B4(a3);
  v23.receiver = v10;
  v23.super_class = v9;
  v13 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 120.0, v11);
  [v13 setBackgroundColor_];

  [v13 frame];
  v42 = 0;
  *&v24 = a1;
  *(&v24 + 1) = a2;
  *&v25 = v8;
  WORD4(v25) = 0;
  BYTE10(v25) = 0;
  v26 = xmmword_1D770A6A0;
  v27.n128_u64[0] = v13;
  v27.n128_u64[1] = &off_1F52505F8;
  *&v28 = v14;
  *(&v28 + 1) = v15;
  *&v29 = v16;
  *(&v29 + 1) = v17;
  v30 = 0;
  v31[0] = a1;
  v31[1] = a2;
  v31[2] = v8;
  v32 = 0;
  v33 = 0;
  v34 = xmmword_1D770A6A0;
  v35 = v13;
  v36 = &off_1F52505F8;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  v41 = 0;
  sub_1D76F4544(&v24, &v22);
  sub_1D76F457C(v31);
  result = v27;
  v19 = v29;
  *(a4 + 64) = v28;
  *(a4 + 80) = v19;
  *(a4 + 96) = v30;
  v20 = v25;
  v21 = v26;
  *a4 = v24;
  *(a4 + 16) = v20;
  *(a4 + 32) = v21;
  *(a4 + 48) = result;
  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D76F45D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1D76F4620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void __swiftcall AdPolicyFailure.init(placement:failureType:recoverable:description:additionalInfo:)(NewsAds::AdPolicyFailure *__return_ptr retstr, NewsAds::AdPolicyPlacement placement, NewsAds::AdPolicyFailureType failureType, Swift::Bool recoverable, Swift::String description, Swift::OpaquePointer additionalInfo)
{
  v6 = *(placement.placementIdentifier._countAndFlagsBits + 8);
  v7 = *placement.placementIdentifier._object;
  retstr->placement.placementIdentifier._countAndFlagsBits = *placement.placementIdentifier._countAndFlagsBits;
  retstr->placement.placementIdentifier._object = v6;
  retstr->placement.position = *(placement.placementIdentifier._countAndFlagsBits + 16);
  retstr->recoverable = failureType;
  retstr->failureType = v7;
  retstr->description._countAndFlagsBits = recoverable;
  *&retstr->description._object = description;
}

double AdPolicyFailure.placement.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);

  return result;
}

uint64_t AdPolicyFailure.description.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t NativeAdProviderFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1D76F482C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for NativeAdProvider();
  sub_1D7667C54(a1, v5);
  v3 = swift_allocObject();
  sub_1D767FBE4(v5, v3 + 16);
  v4 = sub_1D77033F0();

  if (!v4)
  {
    __break(1u);
  }
}

uint64_t sub_1D76F491C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v24 = a4;
  v25 = a9;
  v26 = a1;
  v27 = a3;
  *&v28 = a6;
  *(&v28 + 1) = a7;
  *&v29 = a8;
  *(&v29 + 1) = a10;
  v15 = type metadata accessor for AdRequest(255, &v28);
  v16 = sub_1D77046B0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v24 - v17;
  v32 = 0x8000000000000018;
  v33 = 0;
  v34 = 0;
  v19 = a5 + *(v15 + 52);
  v31 = *(v19 + *(type metadata accessor for AdContext(0, a6, a8, v20) + 36));
  v28 = 0u;
  v29 = 0u;
  v30 = 1;
  v21 = *(v15 - 8);
  (*(v21 + 16))(v18, a5, v15);
  (*(v21 + 56))(v18, 0, 1, v15);
  v22 = v24;

  return sub_1D766FA5C(v26, a2, &v32, v27, v22, &v31, &v28, v18, v25, a6, a7, a8, a10);
}

double sub_1D76F4B0C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 a10)
{
  v51 = a4;
  v52 = a5;
  v47 = a2;
  v48 = a3;
  v46 = a9;
  v42 = type metadata accessor for AdContext(0, a7, a10, a4);
  v14 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v40 - v15;
  v49 = a8;
  v50 = a7;
  *&v55 = a7;
  *(&v55 + 1) = a8;
  v45 = a10;
  v56 = a10;
  v16 = type metadata accessor for AdRequest(255, &v55);
  v17 = sub_1D77046B0();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v43 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - v21;
  v23 = a1;
  sub_1D76A737C(a1, &v55);
  v53 = v55;
  v54 = v56;
  *&v59[0] = v55 | 0x4000000000000000;
  *(&v59[0] + 1) = *(&v55 + 1);
  v59[1] = v56;
  v24 = *(v18 + 16);
  v44 = a6;
  v24(v22, a6, v17);
  v25 = *(v16 - 8);
  if ((*(v25 + 48))(v22, 1, v16) == 1)
  {
    v26 = v53;
    v27 = *(v18 + 8);

    v27(v22, v17);
    v28 = 0;
  }

  else
  {
    v29 = *(v14 + 16);
    v30 = &v22[*(v16 + 52)];
    v40 = v24;
    v31 = v41;
    v32 = v42;
    v29(v41, v30, v42);
    v33 = v53;
    v34 = *(v25 + 8);

    v34(v22, v16);
    v28 = *&v31[*(v32 + 36)];
    v35 = *(v14 + 8);

    v24 = v40;
    v35(v31, v32);
  }

  v58 = v28;
  v55 = 0u;
  v56 = 0u;
  v57 = 1;
  v36 = v43;
  v24(v43, v44, v17);
  v37 = v52;

  v38 = v48;

  sub_1D766FA5C(v47, v38, v59, v51, v37, &v58, &v55, v36, v46, v50, v49, v45, *(&v45 + 1));

  return result;
}

uint64_t sub_1D76F4F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 a10, unint64_t a11)
{
  v27 = a4;
  v28 = a8;
  v30 = a1;
  v31 = a3;
  v29 = a9;
  *&v32 = a7;
  *(&v32 + 1) = a8;
  v33 = a10;
  v15 = type metadata accessor for AdRequest(255, &v32);
  v16 = sub_1D77046B0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v26 - v17;
  v19 = *(a6 + 32);
  v36 = a11;
  v37 = 0;
  v38 = 0;
  v20 = a5 + *(v15 + 52);
  v35 = *(v20 + *(type metadata accessor for AdContext(0, a7, a10, v21) + 36));
  v22 = *(a6 + 16);
  v32 = *a6;
  v33 = v22;
  v34 = v19;
  v23 = *(v15 - 8);
  (*(v23 + 16))(v18, a5, v15);
  (*(v23 + 56))(v18, 0, 1, v15);

  v24 = v27;

  return sub_1D766FA5C(v30, a2, &v36, v31, v24, &v35, &v32, v18, v29, a7, v28, a10, *(&a10 + 1));
}

uint64_t JournalEntry.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JournalEntry.createdDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1D7702F50();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t JournalEntry.placementIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t JournalEntry.contentIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

double JournalEntry.contextBuilderSnapshot.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 68));

  return result;
}

__n128 JournalEntry.layout.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 72);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

double ArticlePrerollAdContext.userData.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

uint64_t ArticlePrerollAdContext.articleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10 = v2;
  v11 = v1[5];
  v3 = v11;
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1D768DF4C(v8, &v7);
}

uint64_t ArticlePrerollAdContext.channelData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v7[0] = v1[6];
  v7[1] = v2;
  v4 = v1[9];
  v8 = v1[8];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D7690E7C(v7, &v6);
}

double ArticlePrerollAdContext.videoData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 160);
  *a1 = result;
  return result;
}

double ArticlePrerollAdContext.issueData.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 192);
  *a1 = *(v1 + 176);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

double ArticlePrerollAdContext.sectionData.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 208);
  *a1 = *(v1 + 200);
  a1[1] = v2;

  return result;
}

uint64_t ArticlePrerollAdContext.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 248);
  v12 = *(v1 + 296);
  v4 = *(v1 + 232);
  v9[0] = *(v1 + 216);
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v2;
  v6 = *(v1 + 280);
  v10 = *(v1 + 264);
  v5 = v10;
  v11 = v6;
  *(a1 + 80) = v12;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  return sub_1D76C73A0(v9, v8, &qword_1EE0B0468, &type metadata for FeedAdData);
}

uint64_t ArticlePrerollAdContext.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 352);
  v9 = *(v1 + 336);
  v10 = v2;
  v11 = *(v1 + 368);
  v3 = v11;
  v4 = *(v1 + 320);
  v8[0] = *(v1 + 304);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D76C73A0(v8, v7, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
}

double ArticlePrerollAdContext.anfDocumentData.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 384);

  return result;
}

double ArticlePrerollAdContext.anfComponentData.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 392);

  return result;
}

void ArticlePrerollAdContext.init(provider:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  AdContextDataProviding.data<A>(for:)(&type metadata for AppAdData, v5, &type metadata for AppAdData, v6);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v7 = v42;
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    AdContextDataProviding.data<A>(for:)(&type metadata for UserAdData, v8, &type metadata for UserAdData, v9);
    v10 = v42;
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    AdContextDataProviding.data<A>(for:)(&type metadata for ArticleAdData, v11, &type metadata for ArticleAdData, v12);
    v109 = v89;
    v110 = v90;
    v111 = v91;
    v107 = v87;
    v108 = v88;
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    AdContextDataProviding.data<A>(for:)(&type metadata for ChannelAdData, v13, &type metadata for ChannelAdData, v14);
    v103 = v83;
    v104 = v84;
    v105 = v85;
    v106 = v86;
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    AdContextDataProviding.data<A>(for:)(&type metadata for VideoAdData, v15, &type metadata for VideoAdData, v16);
    v17 = v42;
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    AdContextDataProviding.data<A>(for:)(&type metadata for PlacementAdData, v18, &type metadata for PlacementAdData, v19);
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for IssueAdData, v20, &type metadata for IssueAdData, v21);
    v40 = v42;
    v22 = v42;
    v23 = a1[3];
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v23);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for SectionAdData, v23, &type metadata for SectionAdData, v24);
    v34 = v43;
    v25 = v42;
    v26 = a1[3];
    v35 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for FeedAdData, v26, &type metadata for FeedAdData, v35);
    v99 = v79;
    v100 = v80;
    v101 = v81;
    v102 = v82;
    v97 = v77;
    v98 = v78;
    v27 = a1[3];
    v36 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v27);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for FeedGroupAdData, v27, &type metadata for FeedGroupAdData, v36);
    v94 = v74;
    v95 = v75;
    v96 = v76;
    v93 = v73;
    v92 = v72;
    v28 = a1[3];
    v37 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ReferralAdData, v28, &type metadata for ReferralAdData, v37);
    v33 = v42;
    v29 = a1[3];
    v38 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v29);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ANFDocumentAdData, v29, &type metadata for ANFDocumentAdData, v38);
    v39 = v42;
    v30 = a1[3];
    v31 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v30);
    AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ANFComponentAdData, v30, &type metadata for ANFComponentAdData, v31);
    v32 = v71;
    LOBYTE(__src[0]) = v42;
    *(&__src[0] + 1) = v42;
    __src[3] = v89;
    __src[4] = v90;
    __src[1] = v87;
    __src[2] = v88;
    __src[5] = v91;
    __src[6] = v83;
    __src[7] = v84;
    __src[8] = v85;
    __src[9] = v86;
    *&__src[10] = v42;
    BYTE8(__src[10]) = v42;
    __src[11] = v42;
    LOWORD(__src[12]) = v43;
    *(&__src[12] + 8) = v42;
    *(&__src[16] + 8) = v80;
    *(&__src[17] + 8) = v81;
    *(&__src[15] + 8) = v79;
    *(&__src[18] + 1) = v82;
    *(&__src[13] + 8) = v77;
    *(&__src[14] + 8) = v78;
    *&__src[23] = v76;
    __src[21] = v74;
    __src[22] = v75;
    __src[19] = v72;
    __src[20] = v73;
    BYTE8(__src[23]) = v42;
    *&__src[24] = v42;
    *(&__src[24] + 1) = v71;
    memcpy(a2, __src, 0x190uLL);
    sub_1D76F5CEC(__src, &v42);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v42) = v7;
    *(&v42 + 1) = v10;
    v45 = v109;
    v46 = v110;
    v43 = v107;
    v44 = v108;
    v47 = v111;
    v48 = v103;
    v49 = v104;
    v50 = v105;
    v51 = v106;
    v52 = v17;
    v53 = v40;
    v54 = v22;
    v55 = v34;
    v56 = v25;
    v60 = v100;
    v61 = v101;
    v59 = v99;
    v62 = v102;
    v57 = v97;
    v58 = v98;
    v67 = v96;
    v65 = v94;
    v66 = v95;
    v63 = v92;
    v64 = v93;
    v68 = v33;
    v69 = v39;
    v70 = v32;
    sub_1D76F5D24(&v42);
  }
}

uint64_t sub_1D76F5D54(char a1)
{
  result = 0x61746144707061;
  switch(a1)
  {
    case 1:
      v3 = 1919251317;
      return v3 | 0x6174614400000000;
    case 2:
      return 0x44656C6369747261;
    case 3:
      return 0x446C656E6E616863;
    case 4:
      v4 = 0x446F65646976;
      goto LABEL_13;
    case 5:
      return 0x6E656D6563616C70;
    case 6:
      v4 = 0x446575737369;
      goto LABEL_13;
    case 7:
      return 0x446E6F6974636573;
    case 8:
      v3 = 1684366694;
      return v3 | 0x6174614400000000;
    case 9:
      v4 = 0x4470756F7267;
LABEL_13:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 10:
      result = 0x6C61727265666572;
      break;
    case 11:
      result = 0x6D75636F44666E61;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D76F5EC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D76F7CA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D76F5EF0(uint64_t a1)
{
  v2 = sub_1D76F6720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F5F2C(uint64_t a1)
{
  v2 = sub_1D76F6720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArticlePrerollAdContext.encode(to:)(void *a1)
{
  sub_1D76F727C(0, &qword_1EC9BE0A0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - v6;
  v36 = *v1;
  v35 = *(v1 + 1);
  v8 = *(v1 + 4);
  v72 = *(v1 + 3);
  v73 = v8;
  v9 = *(v1 + 6);
  v74 = *(v1 + 5);
  v75 = v9;
  v10 = *(v1 + 2);
  v70 = *(v1 + 1);
  v71 = v10;
  v11 = *(v1 + 9);
  v12 = *(v1 + 7);
  v77 = *(v1 + 8);
  v78 = v11;
  v76 = v12;
  v13 = *(v1 + 20);
  v34 = v1[168];
  v14 = *(v1 + 22);
  v33 = *(v1 + 23);
  v32 = *(v1 + 96);
  v15 = *(v1 + 26);
  *&v30 = *(v1 + 25);
  *(&v30 + 1) = v15;
  v31 = v14;
  v16 = *(v1 + 264);
  v17 = *(v1 + 280);
  v81 = *(v1 + 248);
  v82 = v16;
  v83 = v17;
  v84 = *(v1 + 37);
  v18 = *(v1 + 232);
  v79 = *(v1 + 216);
  v80 = v18;
  v89 = *(v1 + 46);
  v19 = *(v1 + 22);
  v87 = *(v1 + 21);
  v88 = v19;
  v20 = *(v1 + 20);
  v85 = *(v1 + 19);
  v86 = v20;
  HIDWORD(v29) = v1[376];
  v22 = *(v1 + 48);
  v21 = *(v1 + 49);
  v23 = a1[3];
  v24 = a1;
  v25 = v7;
  __swift_project_boxed_opaque_existential_1(v24, v23);
  sub_1D76F6720();
  sub_1D7704B10();
  LOBYTE(v51) = v36;
  LOBYTE(v48[0]) = 0;
  sub_1D7669D40();
  v26 = v37;
  sub_1D7704A00();
  if (!v26)
  {
    v27 = v34;
    v37 = v22;
    *&v51 = v35;
    LOBYTE(v48[0]) = 1;
    sub_1D7669394();

    sub_1D7704A00();

    v67 = v72;
    v68 = v73;
    v69 = v74;
    v65 = v70;
    v66 = v71;
    v64 = 2;
    sub_1D768DF4C(&v70, &v51);
    sub_1D768E278();
    sub_1D7704A00();
    v63[2] = v67;
    v63[3] = v68;
    v63[4] = v69;
    v63[0] = v65;
    v63[1] = v66;
    sub_1D768DF84(v63);
    v59 = v75;
    v60 = v76;
    v61 = v77;
    v62 = v78;
    v58 = 3;
    sub_1D7690E7C(&v75, &v51);
    sub_1D769220C();
    sub_1D7704A00();
    v57[0] = v59;
    v57[1] = v60;
    v57[2] = v61;
    v57[3] = v62;
    sub_1D76917F0(v57);
    *&v51 = v13;
    LOBYTE(v48[0]) = 4;
    sub_1D7685DF0();
    sub_1D7704A00();
    LOBYTE(v51) = v27;
    LOBYTE(v48[0]) = 5;
    sub_1D76794CC();
    sub_1D7704A00();
    *&v51 = v31;
    *(&v51 + 1) = v33;
    LOWORD(v52) = v32;
    LOBYTE(v48[0]) = 6;
    sub_1D76922B4();

    sub_1D77049B0();

    v51 = v30;
    LOBYTE(v48[0]) = 7;
    sub_1D7692308();

    sub_1D77049B0();

    v53 = v81;
    v54 = v82;
    v55 = v83;
    v56 = v84;
    v51 = v79;
    v52 = v80;
    v50 = 8;
    sub_1D76C73A0(&v79, v48, &qword_1EE0B0468, &type metadata for FeedAdData);
    sub_1D766CFCC();
    sub_1D77049B0();
    v48[2] = v53;
    v48[3] = v54;
    v48[4] = v55;
    v49 = v56;
    v48[0] = v51;
    v48[1] = v52;
    sub_1D76939B0(v48, &qword_1EE0B0468, &type metadata for FeedAdData);
    v45 = v87;
    v46 = v88;
    v47 = v89;
    v43 = v85;
    v44 = v86;
    v42 = 9;
    sub_1D76C73A0(&v85, v40, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
    sub_1D7692260();
    sub_1D77049B0();
    v40[2] = v45;
    v40[3] = v46;
    v41 = v47;
    v40[0] = v43;
    v40[1] = v44;
    sub_1D76939B0(v40, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
    LOBYTE(v38) = BYTE4(v29);
    v39 = 10;
    sub_1D768A434();
    sub_1D77049B0();
    v38 = v37;
    v39 = 11;
    sub_1D76A0B24();

    sub_1D77049B0();

    v38 = v21;
    v39 = 12;
    sub_1D76C8B20();

    sub_1D77049B0();
  }

  return (*(v5 + 8))(v25, v4);
}

unint64_t sub_1D76F6720()
{
  result = qword_1EC9BE0A8;
  if (!qword_1EC9BE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0A8);
  }

  return result;
}

void ArticlePrerollAdContext.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D76F727C(0, &qword_1EC9BE0B0, MEMORY[0x1E69E6F48]);
  v27 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F6720();
  sub_1D7704B00();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v28[0]) = 0;
    sub_1D7669CEC();
    sub_1D7704970();
    v9 = v29;
    LOBYTE(v28[0]) = 1;
    sub_1D76684E8();
    sub_1D7704970();
    v25 = v9;
    v26 = v29;
    v85 = 2;
    sub_1D768E224();
    sub_1D7704970();
    v112 = v88;
    v113 = v89;
    v114 = v90;
    v110 = v86;
    v111 = v87;
    v80 = 3;
    sub_1D7692D44();
    sub_1D7704970();
    v106 = v81;
    v107 = v82;
    v108 = v83;
    v109 = v84;
    LOBYTE(v28[0]) = 4;
    sub_1D7685D9C();
    sub_1D7704970();
    v10 = v29;
    LOBYTE(v28[0]) = 5;
    sub_1D7679440();
    sub_1D7704970();
    v22 = v29;
    LOBYTE(v28[0]) = 6;
    sub_1D7692DEC();
    sub_1D7704920();
    v21 = v29;
    v24 = v30;
    v20 = v31;
    LOBYTE(v28[0]) = 7;
    sub_1D7692E40();
    sub_1D7704920();
    v18 = a2;
    v19 = v29;
    v23 = v30;
    v73 = 8;
    sub_1D766CDD0();
    sub_1D7704920();
    v99 = v76;
    v100 = v77;
    v101 = v78;
    v102 = v79;
    v97 = v74;
    v98 = v75;
    v67 = 9;
    sub_1D7692D98();
    sub_1D7704920();
    v94 = v70;
    v95 = v71;
    v96 = v72;
    v93 = v69;
    v92 = v68;
    LOBYTE(v28[0]) = 10;
    sub_1D768AAE4();
    sub_1D7704920();
    v11 = v29;
    LOBYTE(v28[0]) = 11;
    sub_1D76A0AD0();
    sub_1D7704920();
    v17 = v29;
    v65 = 12;
    sub_1D76C99CC();
    sub_1D7704920();
    (*(v6 + 8))(v8, v27);
    v27 = v66;
    v12 = v25;
    LOBYTE(v28[0]) = v25;
    *(v28 + 1) = v115[0];
    DWORD1(v28[0]) = *(v115 + 3);
    v13 = v26;
    *(&v28[0] + 1) = v26;
    v28[3] = v112;
    v28[4] = v113;
    v28[1] = v110;
    v28[2] = v111;
    v28[8] = v108;
    v28[9] = v109;
    v28[6] = v106;
    v28[7] = v107;
    v28[5] = v114;
    *&v28[10] = v10;
    BYTE8(v28[10]) = v22;
    *(&v28[10] + 9) = *v105;
    HIDWORD(v28[10]) = *&v105[3];
    v14 = v23;
    *&v28[11] = v21;
    *(&v28[11] + 1) = v24;
    LOWORD(v28[12]) = v20;
    WORD3(v28[12]) = v104;
    *(&v28[12] + 2) = v103;
    *(&v28[12] + 1) = v19;
    *&v28[13] = v23;
    *(&v28[16] + 8) = v100;
    *(&v28[17] + 8) = v101;
    *(&v28[18] + 1) = v102;
    *(&v28[15] + 8) = v99;
    *(&v28[14] + 8) = v98;
    *(&v28[13] + 8) = v97;
    v28[21] = v94;
    v28[22] = v95;
    *&v28[23] = v96;
    v28[19] = v92;
    v28[20] = v93;
    BYTE8(v28[23]) = v11;
    *(&v28[23] + 9) = *v91;
    HIDWORD(v28[23]) = *&v91[3];
    v15 = v17;
    *&v28[24] = v17;
    *(&v28[24] + 1) = v66;
    memcpy(v18, v28, 0x190uLL);
    sub_1D76F5CEC(v28, &v29);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v29) = v12;
    *(&v29 + 1) = v115[0];
    HIDWORD(v29) = *(v115 + 3);
    v30 = v13;
    v33 = v112;
    v34 = v113;
    v31 = v110;
    v32 = v111;
    v38 = v108;
    v39 = v109;
    v36 = v106;
    v37 = v107;
    v35 = v114;
    v40 = v10;
    v41 = v22;
    *v42 = *v105;
    *&v42[3] = *&v105[3];
    v43 = v21;
    v44 = v24;
    v45 = v20;
    v47 = v104;
    v46 = v103;
    v48 = v19;
    v49 = v14;
    v53 = v100;
    v54 = v101;
    v55 = v102;
    v52 = v99;
    v51 = v98;
    v50 = v97;
    v58 = v94;
    v59 = v95;
    v60 = v96;
    v56 = v92;
    v57 = v93;
    v61 = v11;
    *v62 = *v91;
    *&v62[3] = *&v91[3];
    v63 = v15;
    v64 = v27;
    sub_1D76F5D24(&v29);
  }
}

void sub_1D76F727C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76F6720();
    v7 = a3(a1, &type metadata for ArticlePrerollAdContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id ArticlePrerollAdContext.newsSupplementalContext.getter()
{
  v36 = sub_1D77038A0();
  v1 = *(v36 - 8);
  v2 = MEMORY[0x1EEE9AC00](v36);
  v37 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v35 - v4;
  v6 = *(v0 + 64);
  v58 = *(v0 + 48);
  v59 = v6;
  v7 = *(v0 + 96);
  v60 = *(v0 + 80);
  v61 = v7;
  v8 = *(v0 + 32);
  v56 = *(v0 + 16);
  v57 = v8;
  v9 = *(v0 + 144);
  v10 = *(v0 + 112);
  v63 = *(v0 + 128);
  v64 = v9;
  v62 = v10;
  v11 = *(v0 + 160);
  v12 = *(v0 + 176);
  v13 = *(v0 + 184);
  v14 = *(v0 + 192);
  v15 = *(v0 + 208);
  v35[0] = *(v0 + 200);
  v35[1] = v12;
  v38 = v15;
  v70 = *(v0 + 296);
  v16 = *(v0 + 280);
  v68 = *(v0 + 264);
  v69 = v16;
  v17 = *(v0 + 248);
  v18 = *(v0 + 216);
  v66 = *(v0 + 232);
  v67 = v17;
  v65 = v18;
  v19 = *(v0 + 304);
  v20 = *(v0 + 320);
  v21 = *(v0 + 336);
  v22 = *(v0 + 352);
  v74 = *(v0 + 368);
  v72 = v21;
  v73 = v22;
  v71[0] = v19;
  v71[1] = v20;
  v39 = *(v0 + 376);
  v23 = *(v0 + 392);
  v40 = *(v0 + 384);
  v41 = v23;
  v24 = objc_allocWithZone(sub_1D7703D00());

  sub_1D768DF4C(&v56, &v48);
  sub_1D7690E7C(&v61, &v48);

  sub_1D76C73A0(v71, &v48, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
  v25 = [v24 init];
  sub_1D7703CF0();
  sub_1D7703AE0();
  sub_1D7703B50();

  sub_1D7703C00();

  v50 = v58;
  v51 = v59;
  v52 = v60;
  v48 = v56;
  v49 = v57;
  v42 = v61;
  v43 = v62;
  v44 = v63;
  v45 = v64;
  sub_1D76B9740(&v48, &v42, v63);
  v54[0] = v42;
  v54[1] = v43;
  v54[2] = v44;
  v54[3] = v45;
  sub_1D76939B0(v54, &qword_1EE0B02E8, &type metadata for ChannelAdData);
  v55[2] = v50;
  v55[3] = v51;
  v55[4] = v52;
  v55[0] = v48;
  v55[1] = v49;
  sub_1D76939B0(v55, &qword_1EE0B0300, &type metadata for ArticleAdData);
  if (v13)
  {

    sub_1D7703AD0();
    v26 = *(v1 + 104);
    v27 = *MEMORY[0x1E69C5F50];
    v28 = *MEMORY[0x1E69C5F58];
    v29 = v14;
    if (v14)
    {
      v30 = v27;
    }

    else
    {
      v30 = v28;
    }

    v31 = v36;
    v26(v5, v30, v36);
    sub_1D7703B80();
    if ((v29 & 0x100) != 0)
    {
      v32 = v27;
    }

    else
    {
      v32 = v28;
    }

    v26(v37, v32, v31);
    sub_1D7703BE0();
  }

  if (v38 && *(&v65 + 1))
  {
    if ((BYTE8(v66) & 1) != 0 || v66 >= 1)
    {
    }

    sub_1D7703C10();
  }

  v44 = v67;
  v45 = v68;
  v46 = v69;
  v47 = v70;
  v42 = v65;
  v43 = v66;
  sub_1D76C73A0(&v65, &v48, &qword_1EE0B0468, &type metadata for FeedAdData);
  sub_1D768078C(&v42);
  v50 = v44;
  v51 = v45;
  v52 = v46;
  v53 = v47;
  v48 = v42;
  v49 = v43;
  sub_1D76939B0(&v48, &qword_1EE0B0468, &type metadata for FeedAdData);
  if (*(&v71[0] + 1))
  {
    v33 = *(&v72 + 1);

    sub_1D7703A50();

    sub_1D7703A80();

    sub_1D7703A90();

    sub_1D77039C0();
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1D7703AC0();
    sub_1D76939B0(v71, &qword_1EE0B0088, &type metadata for FeedGroupAdData);
  }

  if (v39 < 4)
  {
    sub_1D7703AF0();
    sub_1D768ABAC();
    sub_1D7704680();
    sub_1D7703C70();
  }

  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_1D7703B10();
  if (v40)
  {

    sub_1D7703CB0();
  }

  if (v41)
  {

    sub_1D7703B90();
  }

  return v25;
}

uint64_t ArticlePrerollAdContext.currentPromotableContentDepiction.getter()
{
  v1 = sub_1D7702FD0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[1] = v0[2];
  if (!v0[11] && *(v0[1] + 16))
  {
  }

  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v2 + 8))(v4, v1);
  sub_1D7703780();

  return sub_1D7703770();
}

uint64_t sub_1D76F7AA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
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

uint64_t sub_1D76F7AE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D76F7BA4()
{
  result = qword_1EC9BE0B8;
  if (!qword_1EC9BE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0B8);
  }

  return result;
}

unint64_t sub_1D76F7BFC()
{
  result = qword_1EC9BE0C0;
  if (!qword_1EC9BE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0C0);
  }

  return result;
}

unint64_t sub_1D76F7C54()
{
  result = qword_1EC9BE0C8;
  if (!qword_1EC9BE0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0C8);
  }

  return result;
}

uint64_t sub_1D76F7CA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461446F65646976 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144 || (sub_1D7704A30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6D75636F44666E61 && a2 == 0xEF61746144746E65 || (sub_1D7704A30() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7717B90 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

double sub_1D76F80E4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D7703110();
  sub_1D7703100();
  if (qword_1EE0AEB40 != -1)
  {
    swift_once();
  }

  sub_1D77030F0();

  v25 = a2;
  v24 = v3;
  if (LOBYTE(v26[0]))
  {
    if (LOBYTE(v26[0]) == 1)
    {
      v7 = 0;
    }

    else
    {
      *&v26[0] = 0;
      MEMORY[0x1DA7000A0](v26, 8);
      v7 = (*&v26[0] & 0x20000) == 0;
    }
  }

  else
  {
    v7 = 1;
  }

  sub_1D767FE78(0);
  v9 = (a1 + *(v8 + 56));
  v10 = *v9;
  v11 = v9[1];
  v12 = a1[6];
  v23 = a1[5];
  v14 = *a1;
  v13 = a1[1];

  sub_1D76F4374(v14, v13, v7, v26);
  v15 = swift_allocObject();
  v16 = v26[5];
  *(v15 + 80) = v26[4];
  *(v15 + 96) = v16;
  *(v15 + 112) = v27;
  v17 = v26[1];
  *(v15 + 16) = v26[0];
  *(v15 + 32) = v17;
  v18 = v26[3];
  *(v15 + 48) = v26[2];
  *(v15 + 64) = v18;
  v19 = v24[5];
  v20 = v24[6];
  __swift_project_boxed_opaque_existential_1(v24 + 2, v19);
  v21 = (*(v20 + 8))(v19, v20);
  v28 = v7 ^ 1;
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = v23;
  *(a3 + 40) = v12;
  *(a3 + 48) = v25;
  *(a3 + 56) = v15;
  *(a3 + 80) = &type metadata for DebugSponsorshipAdContentInfo;
  *(a3 + 88) = &off_1F52567E8;
  *(a3 + 96) = v21;
  *(a3 + 104) = v7 ^ 1;

  return result;
}

uint64_t DebugAdContentInfo.identifier.getter()
{
  v1 = *v0;

  return v1;
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

uint64_t sub_1D76F8478(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D76F84C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D76F8524(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D76F8664(uint64_t a1, unsigned __int8 a2)
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

NewsAds::CreativeType_optional __swiftcall CreativeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D77048E0();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CreativeType.rawValue.getter()
{
  v1 = *v0;
  v2 = 7958113;
  v3 = 0x65766974616ELL;
  if (v1 != 6)
  {
    v3 = 0x65726F736E6F7073;
  }

  v4 = 0x656772616CLL;
  if (v1 != 4)
  {
    v4 = 0x65526D756964656DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x647261646E617473;
  if (v1 != 2)
  {
    v5 = 0x656C62756F64;
  }

  if (*v0)
  {
    v2 = 0x656E6E6142796E61;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D76F8934@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7958113;
  v5 = 0xE600000000000000;
  v6 = 0x65766974616ELL;
  if (v2 != 6)
  {
    v6 = 0x65726F736E6F7073;
    v5 = 0xE900000000000064;
  }

  v7 = 0xE500000000000000;
  v8 = 0x656772616CLL;
  if (v2 != 4)
  {
    v8 = 0x65526D756964656DLL;
    v7 = 0xEF656C676E617463;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x647261646E617473;
  result = 0x656C62756F64;
  if (v2 != 2)
  {
    v10 = 0x656C62756F64;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x656E6E6142796E61;
    v3 = 0xE900000000000072;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

void sub_1D76F8B0C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6576697461657263 && a2 == 0xEC00000065707954)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D7704A30();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D76F8B98(uint64_t a1)
{
  v2 = sub_1D76F8D6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76F8BD4(uint64_t a1)
{
  v2 = sub_1D76F8D6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreativeAdData.encode(to:)(void *a1)
{
  sub_1D76F8FAC(0, &qword_1EC9BE0D0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F8D6C();
  sub_1D7704B10();
  v11 = v8;
  sub_1D76F8DC0();
  sub_1D7704A00();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D76F8D6C()
{
  result = qword_1EC9BE0D8;
  if (!qword_1EC9BE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0D8);
  }

  return result;
}

unint64_t sub_1D76F8DC0()
{
  result = qword_1EC9BE0E0;
  if (!qword_1EC9BE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0E0);
  }

  return result;
}

uint64_t CreativeAdData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D76F8FAC(0, &qword_1EC9BE0E8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76F8D6C();
  sub_1D7704B00();
  if (!v2)
  {
    sub_1D76F9010();
    sub_1D7704970();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76F8FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76F8D6C();
    v7 = a3(a1, &type metadata for CreativeAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76F9010()
{
  result = qword_1EC9BE0F0;
  if (!qword_1EC9BE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0F0);
  }

  return result;
}

unint64_t sub_1D76F9068()
{
  result = qword_1EC9BE0F8;
  if (!qword_1EC9BE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE0F8);
  }

  return result;
}

unint64_t sub_1D76F90BC(uint64_t a1)
{
  *(a1 + 8) = sub_1D76AA9D0();
  result = sub_1D76AA188();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D76F9150()
{
  result = qword_1EC9BE100;
  if (!qword_1EC9BE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE100);
  }

  return result;
}

unint64_t sub_1D76F91A8()
{
  result = qword_1EC9BE108;
  if (!qword_1EC9BE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE108);
  }

  return result;
}

unint64_t sub_1D76F9200()
{
  result = qword_1EC9BE110;
  if (!qword_1EC9BE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE110);
  }

  return result;
}

unint64_t sub_1D76F9254()
{
  result = qword_1EC9BE118;
  if (!qword_1EC9BE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE118);
  }

  return result;
}

uint64_t sub_1D76F92B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  if (a1 <= 3u)
  {
    v10 = 0xE700000000000000;
    v11 = 0x676E6967617473;
    if (a1 != 2)
    {
      v11 = 24945;
      v10 = 0xE200000000000000;
    }

    v12 = 0x69746375646F7270;
    if (a1)
    {
      v3 = 0xEA00000000006E6FLL;
    }

    else
    {
      v12 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v8 = v12;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 1)
    {
      v9 = v3;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0x786F62646E6173;
    v5 = 0x316F6D6564;
    if (a1 != 7)
    {
      v5 = 0x326F6D6564;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = 0xE500000000000000;
    }

    v6 = 0xE400000000000000;
    v7 = 1953719668;
    if (a1 != 4)
    {
      v7 = 0x6C65766564;
      v6 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    if (v2 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xE700000000000000;
        if (v8 != 0x676E6967617473)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v13 = 0xE200000000000000;
        if (v8 != 24945)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v13 = 0xEA00000000006E6FLL;
      if (v8 != 0x69746375646F7270)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v8 != 0x6E776F6E6B6E75)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0xE400000000000000;
      if (v8 != 1953719668)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v8 != 0x6C65766564)
      {
LABEL_52:
        v14 = sub_1D7704A30();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v13 = 0xE700000000000000;
    if (v8 != 0x786F62646E6173)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (a2 == 7)
    {
      if (v8 != 0x316F6D6564)
      {
        goto LABEL_52;
      }
    }

    else if (v8 != 0x326F6D6564)
    {
      goto LABEL_52;
    }
  }

  if (v9 != v13)
  {
    goto LABEL_52;
  }

  v14 = 1;
LABEL_53:

  return v14 & 1;
}

uint64_t sub_1D76F952C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00656C63697472;
  v3 = 0x416E656577746562;
  v4 = a1;
  v5 = 0x416E496F65646976;
  if (a1 == 5)
  {
    v6 = 0xEE00656C63697472;
  }

  else
  {
    v5 = 0x466E496F65646976;
    v6 = 0xEB00000000646565;
  }

  v7 = 0xEF656C6369747241;
  if (a1 != 3)
  {
    v7 = 0xEC00000064656546;
  }

  if (a1 <= 4u)
  {
    v5 = 0x6E4965766974616ELL;
    v6 = v7;
  }

  v8 = 0x6C63697472416E69;
  v9 = 0xE900000000000065;
  if (a1 != 1)
  {
    v8 = 0x646565466E69;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v8 = 0x416E656577746562;
    v9 = 0xEE00656C63697472;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE900000000000065;
        if (v10 != 0x6C63697472416E69)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x646565466E69)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        if (v10 != 0x416E496F65646976)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEB00000000646565;
        if (v10 != 0x466E496F65646976)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    v3 = 0x6E4965766974616ELL;
    if (a2 == 3)
    {
      v2 = 0xEF656C6369747241;
      if (v10 != 0x6E4965766974616ELL)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0xEC00000064656546;
  }

  if (v10 != v3)
  {
LABEL_37:
    v12 = sub_1D7704A30();
    goto LABEL_38;
  }

LABEL_34:
  if (v11 != v2)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1D76F9774(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1952867692;
    }

    else
    {
      v4 = 0x7468676972;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D6F74746F62;
    }

    else
    {
      v4 = 7368564;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1952867692;
  if (a2 != 2)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6D6F74746F62;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7704A30();
  }

  return v11 & 1;
}

uint64_t sub_1D76F9890(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7107189;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x746567646977;
    }

    else
    {
      v4 = 0x6163696669746F6ELL;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7474656C7377656ELL;
    }

    else
    {
      v4 = 7107189;
    }

    if (v3)
    {
      v5 = 0xEA00000000007265;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x746567646977;
  if (a2 != 2)
  {
    v8 = 0x6163696669746F6ELL;
    v7 = 0xEC0000006E6F6974;
  }

  if (a2)
  {
    v2 = 0x7474656C7377656ELL;
    v6 = 0xEA00000000007265;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7704A30();
  }

  return v11 & 1;
}

uint64_t sub_1D76F99DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x65766974616ELL;
  if (a1 != 6)
  {
    v5 = 0x65726F736E6F7073;
    v4 = 0xE900000000000064;
  }

  v6 = 0xE500000000000000;
  v7 = 0x656772616CLL;
  if (a1 != 4)
  {
    v7 = 0x65526D756964656DLL;
    v6 = 0xEF656C676E617463;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x647261646E617473;
  if (a1 != 2)
  {
    v9 = 0x656C62756F64;
    v8 = 0xE600000000000000;
  }

  v10 = 0x656E6E6142796E61;
  if (a1)
  {
    v3 = 0xE900000000000072;
  }

  else
  {
    v10 = 7958113;
  }

  if (a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  if (a1 <= 3u)
  {
    v12 = v11;
  }

  else
  {
    v12 = v5;
  }

  if (v2 <= 3)
  {
    v13 = v3;
  }

  else
  {
    v13 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v14 = 0xE600000000000000;
        if (v12 != 0x65766974616ELL)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v14 = 0xE900000000000064;
        if (v12 != 0x65726F736E6F7073)
        {
LABEL_47:
          v15 = sub_1D7704A30();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v14 = 0xE500000000000000;
      if (v12 != 0x656772616CLL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v14 = 0xEF656C676E617463;
      if (v12 != 0x65526D756964656DLL)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v14 = 0xE800000000000000;
      if (v12 != 0x647261646E617473)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v14 = 0xE600000000000000;
      if (v12 != 0x656C62756F64)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v14 = 0xE900000000000072;
    if (v12 != 0x656E6E6142796E61)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v14 = 0xE300000000000000;
    if (v12 != 7958113)
    {
      goto LABEL_47;
    }
  }

  if (v13 != v14)
  {
    goto LABEL_47;
  }

  v15 = 1;
LABEL_48:

  return v15 & 1;
}

uint64_t sub_1D76F9C5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7958113;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xED00007468676965;
    v4 = 0xE500000000000000;
    if (a1 == 2)
    {
      v6 = 0x685F656C62756F64;
    }

    else
    {
      v6 = 0x656772616CLL;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0xE800000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x647261646E617473;
    }

    else
    {
      v6 = 7958113;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE300000000000000;
  v9 = 0x685F656C62756F64;
  v10 = 0xED00007468676965;
  if (a2 != 2)
  {
    v9 = 0x656772616CLL;
    v10 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x647261646E617473;
    v8 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D7704A30();
  }

  return v13 & 1;
}

double sub_1D76F9DA4(uint64_t a1, unsigned __int8 a2)
{
  sub_1D77042D0();

  return result;
}

double sub_1D76F9ED0(uint64_t a1, unsigned __int8 a2)
{
  sub_1D77042D0();

  return result;
}

uint64_t AppAdData.ContentEnvironment.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x676E6967617473;
    if (v1 != 2)
    {
      v7 = 24945;
    }

    if (*v0)
    {
      v6 = 0x69746375646F7270;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x786F62646E6173;
    v3 = 0x316F6D6564;
    if (v1 != 7)
    {
      v3 = 0x326F6D6564;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 1953719668;
    if (v1 != 4)
    {
      v4 = 0x6C65766564;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

NewsAds::AppAdData::ContentEnvironment_optional __swiftcall AppAdData.ContentEnvironment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D77048E0();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D76FA15C()
{
  v1 = *v0;
  sub_1D7704AD0();
  sub_1D76F9DA4(v3, v1);
  return sub_1D7704AF0();
}

uint64_t sub_1D76FA1AC(uint64_t a1)
{
  v2 = *v1;
  sub_1D7704AD0();
  sub_1D76F9DA4(v4, v2);
  return sub_1D7704AF0();
}

uint64_t sub_1D76FA1FC@<X0>(uint64_t *a1@<X8>)
{
  result = AppAdData.ContentEnvironment.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1D76FA308(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001D771A230 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1D7704A30();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1D76FA39C(uint64_t a1)
{
  v2 = sub_1D76FA570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76FA3D8(uint64_t a1)
{
  v2 = sub_1D76FA570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppAdData.encode(to:)(void *a1)
{
  sub_1D76FA7B0(0, &qword_1EC9BE120, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76FA570();
  sub_1D7704B10();
  v11 = v8;
  sub_1D76FA5C4();
  sub_1D7704A00();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D76FA570()
{
  result = qword_1EC9BE128;
  if (!qword_1EC9BE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE128);
  }

  return result;
}

unint64_t sub_1D76FA5C4()
{
  result = qword_1EC9BE130;
  if (!qword_1EC9BE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE130);
  }

  return result;
}

uint64_t AppAdData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D76FA7B0(0, &qword_1EC9BE138, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76FA570();
  sub_1D7704B00();
  if (!v2)
  {
    sub_1D76FA814();
    sub_1D7704970();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76FA7B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76FA570();
    v7 = a3(a1, &type metadata for AppAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76FA814()
{
  result = qword_1EC9BE140;
  if (!qword_1EC9BE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE140);
  }

  return result;
}

unint64_t sub_1D76FA86C()
{
  result = qword_1EC9BE148;
  if (!qword_1EC9BE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE148);
  }

  return result;
}

unint64_t sub_1D76FA914()
{
  result = qword_1EC9BE150;
  if (!qword_1EC9BE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE150);
  }

  return result;
}

unint64_t sub_1D76FA96C()
{
  result = qword_1EC9BE158;
  if (!qword_1EC9BE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE158);
  }

  return result;
}

unint64_t sub_1D76FA9C4()
{
  result = qword_1EC9BE160;
  if (!qword_1EC9BE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE160);
  }

  return result;
}

unint64_t sub_1D76FAA18()
{
  result = qword_1EC9BE168;
  if (!qword_1EC9BE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE168);
  }

  return result;
}

uint64_t sub_1D76FAA6C()
{
  v1 = v0;
  *(v0 + 16) = 1;
  if (qword_1EE0B0BF8 != -1)
  {
    swift_once();
  }

  sub_1D76C60CC();
  swift_allocObject();

  *(v0 + 24) = sub_1D7703160();
  swift_allocObject();

  *(v0 + 32) = sub_1D7703160();
  sub_1D76C6124(0);
  swift_allocObject();

  *(v0 + 40) = sub_1D7703160();
  swift_allocObject();
  swift_weakInit();

  v2 = sub_1D77030C0();

  *(v1 + 16) = v2 & 1;
  return v1;
}

double sub_1D76FABF8(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 16) = a1 & 1;
  }

  return result;
}

void *MastheadSponsorship.adKeywords.getter()
{
  if (!*v0)
  {
    return &unk_1F524E970;
  }

  v1 = [*v0 adTargetingKeywords];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_1D7704400();

  return v3;
}

uint64_t MastheadSponsorship.description.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v14 = 677863764;
    v2 = [v1 identifier];
    v3 = sub_1D7704260();
    v5 = v4;

    MEMORY[0x1DA6FF0D0](v3, v5);

    MEMORY[0x1DA6FF0D0](8236, 0xE200000000000000);
    v6 = [v1 adTargetingKeywords];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D7704400();
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v10 = MEMORY[0x1DA6FF1E0](v8, MEMORY[0x1E69E6158]);
    v12 = v11;

    MEMORY[0x1DA6FF0D0](v10, v12);
  }

  else
  {
    v14 = 0x287961646F54;
    v9 = MEMORY[0x1DA6FF1E0](&unk_1F524E910, MEMORY[0x1E69E6158]);
    MEMORY[0x1DA6FF0D0](v9);

    MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
  }

  return v14;
}

uint64_t MastheadSponsorship.tagId.getter()
{
  if (!*v0)
  {
    return 0;
  }

  v1 = [*v0 identifier];
  v2 = sub_1D7704260();

  return v2;
}

uint64_t MastheadSponsorship.isSponsorshipEligible(for:)(void *a1)
{
  v3 = *v1;
  sub_1D7703110();
  sub_1D7703100();
  if (qword_1EE0B0A10 != -1)
  {
    swift_once();
  }

  sub_1D77030F0();

  if (v5)
  {
    return 1;
  }

  if (v3)
  {
    return [v3 sponsoredFeedEligible];
  }

  if ([a1 respondsToSelector_])
  {
    return [a1 isTodaySponsorshipEligible];
  }

  return 0;
}

void sub_1D76FB00C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

double sub_1D76FB0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v20[1] = a2;
  v21 = a3;
  v6 = sub_1D77040D0();
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D7704110();
  v9 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7702FA0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v22 = *(v4 + 16);
  (*(v13 + 16))(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = swift_allocObject();
  (*(v13 + 32))(v16 + v15, v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = v21;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7672F74;
  aBlock[3] = v23;
  v17 = _Block_copy(aBlock);
  sub_1D77040F0();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1D7670768(&qword_1EE0AEDA8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v18 = MEMORY[0x1E69E7F60];
  sub_1D76FBBFC(0, &qword_1EE0AED90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D76FBB4C(&qword_1EE0AED88, &qword_1EE0AED90, v18);
  sub_1D77046E0();
  MEMORY[0x1DA6FF3D0](0, v11, v8, v17);
  _Block_release(v17);
  (*(v25 + 8))(v8, v6);
  (*(v9 + 8))(v11, v24);

  return result;
}

void sub_1D76FB430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v17 = a5;
  v8 = sub_1D7702FA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = objc_opt_self();
  v12 = sub_1D7702F80();
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D76FB00C;
  aBlock[3] = a4;
  v15 = _Block_copy(aBlock);

  [v11 *v17];
  _Block_release(v15);
}

double sub_1D76FB5F0(void *a1, uint64_t a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6)
{
  if (a1)
  {
    v9 = a1;
    if (qword_1EE0AE8B8 != -1)
    {
      swift_once();
    }

    v10 = qword_1EE0AE8C0;
    v11 = sub_1D7704590();
    sub_1D76FBBFC(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7708FD0;
    v13 = sub_1D7702F70();
    v15 = v14;
    v16 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v17 = sub_1D7668854();
    *(v12 + 64) = v17;
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    swift_getErrorValue();
    v18 = sub_1D7704A80();
    *(v12 + 96) = v16;
    *(v12 + 104) = v17;
    *(v12 + 72) = v18;
    *(v12 + 80) = v19;
    sub_1D7703ED0(a3, a4, 2, &dword_1D7662000, v10, v11, v12);
  }

  else
  {
    if (qword_1EE0AE8B8 != -1)
    {
      swift_once();
    }

    v23 = qword_1EE0AE8C0;
    sub_1D76FBBFC(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7708FE0;
    v25 = sub_1D7702F70();
    v27 = v26;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1D7668854();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    v28 = sub_1D77045A0();
    sub_1D7703ED0(a5, a6, 2, &dword_1D7662000, v23, v28, v24);
  }

  return result;
}

uint64_t sub_1D76FB874()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D76FB8D0()
{
  v10 = sub_1D77045E0();
  v0 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D77045C0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D7704110();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = sub_1D7669BD8();
  sub_1D77040E0();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D7670768(&qword_1EE0AED38, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1D76FBBFC(0, &qword_1EE0AED60, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D76FBB4C(&qword_1EE0AED58, &qword_1EE0AED60, v5);
  sub_1D77046E0();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v10);
  v6 = sub_1D7704610();
  v7 = v11;
  *(v11 + 16) = v6;
  return v7;
}

uint64_t sub_1D76FBB4C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D76FBBFC(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D76FBBFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroyTm()
{
  v1 = sub_1D7702FA0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

Swift::Void __swiftcall VideoAdProviderMetricsHelper.playbackReadyToStart()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v1)
  {
    [*(v0 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper) mediaLoaded];
    v2 = *(v0 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata);
    [v2 naturalSize];
    v4 = v3;
    [v2 naturalSize];
    *&v5 = v5;
    *&v6 = v4;

    [v1 videoChosenWithVideoWidth:v6 videoHeight:v5];
  }
}

Swift::Void __swiftcall VideoAdProviderMetricsHelper.playbackStarted()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v1)
  {
    [v1 mediaStarted];
  }
}

Swift::Void __swiftcall VideoAdProviderMetricsHelper.playbackFinished()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v1)
  {
    [v1 mediaFinished];
  }
}

void VideoAdProviderMetricsHelper.playbackFailedWithError(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_diagnosticMetricsHelper);
  if (a1)
  {
    swift_getErrorValue();
    sub_1D7704A80();
  }

  v3 = sub_1D7704230();

  [v2 mediaPlaybackFailedWithReason_];
}

const char **sub_1D76FC034(const char **result, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v3)
  {
    v5 = result;
    [*(v2 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata) time];
    v6 = *v5;

    return [v3 v6];
  }

  return result;
}

Swift::Void __swiftcall VideoAdProviderMetricsHelper.muteStateChanged(_:)(Swift::Bool a1)
{
  if (!a1)
  {
    [*(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata) volume];
  }

  v2 = *(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v2)
  {
    [*(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata) time];

    [v2 mediaVolumeChangedAtPosition_volume_];
  }
}

id VideoAdProviderMetricsHelper.playbackPassed(quartile:)(id result)
{
  if (result == 3)
  {
    result = *(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
    if (!result)
    {
      return result;
    }

    v2 = 75;
    return [result mediaProgress_];
  }

  if (result == 2)
  {
    result = *(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
    if (!result)
    {
      return result;
    }

    v2 = 50;
    return [result mediaProgress_];
  }

  if (result == 1)
  {
    result = *(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
    if (result)
    {
      v2 = 25;
      return [result mediaProgress_];
    }
  }

  return result;
}

Swift::Void __swiftcall VideoAdProviderMetricsHelper.tapped(toToggleControlVisibility:)(Swift::Bool toToggleControlVisibility)
{
  if (!toToggleControlVisibility)
  {
    v2 = *(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
    if (v2)
    {
      [*(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata) time];

      [v2 mediaShowControlsAtPosition_];
    }
  }
}

const char **sub_1D76FC244(const char **result)
{
  v2 = *(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v2)
  {
    v3 = result;
    [*(v1 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata) time];
    v4 = *v3;

    return [v2 v4];
  }

  return result;
}

Swift::Void __swiftcall VideoAdProviderMetricsHelper.willUnload()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v1)
  {
    [v1 mediaUserExitedArticle];
  }
}

id VideoAdProviderMetricsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoAdProviderMetricsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D76FC5D4(char *a1, uint64_t a2, SEL *a3, char a4)
{
  v4 = *&a1[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper];
  if (v4)
  {
    v7 = *&a1[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata];
    v8 = a1;
    [v7 time];
    [v4 *a3];
  }
}

void sub_1D76FC7B8(char *a1, uint64_t a2, SEL *a3)
{
  v3 = *&a1[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper];
  if (v3)
  {
    v5 = *&a1[OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata];
    v6 = a1;
    [v5 time];
    [v3 *a3];
  }
}

void *VideoAdProviderFactory.__allocating_init(adManager:adRequestStore:journal:appConfigurationManager:prerollAdRequester:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = sub_1D766EAEC(a1, a2, a3, a4, a5);
  (*(*(*(v6 + 11) - 8) + 8))(a5);
  return v13;
}

id sub_1D76FC980(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v98 = a4;
  v94 = a3;
  v103 = a1;
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for PrerollAdPlacement(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v97 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v83 - v12;
  v92 = type metadata accessor for PrerollAd(0);
  v13 = MEMORY[0x1EEE9AC00](v92);
  v95 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v100 = &v83 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v83 - v17;
  v18 = *((v8 & v7) + 0x60);
  v105 = *((v8 & v7) + 0x50);
  v106[0] = v105;
  v102 = v9;
  v106[1] = v9;
  v104 = v18;
  v106[2] = v18;
  v106[3] = &protocol witness table for PrerollAdPlacement;
  v19 = type metadata accessor for AdRequest(255, v106);
  v20 = sub_1D77046B0();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v99 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v83 - v25;
  v27 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v29 = (&v83 - v28);
  v30 = *a2;
  v31 = a2[1];
  v101 = a2;
  v32 = v30;
  LOBYTE(v106[0]) = 0;
  AdRequestStore.request(for:behavior:)(v30, v31, v106, v26);
  if ((*(v27 + 48))(v26, 1, v19) == 1)
  {
    (*(v21 + 8))(v26, v20);
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v33 = qword_1EE0AF010;
    v34 = sub_1D7704590();
    sub_1D766DF6C(0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1D7708FE0;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 64) = sub_1D7668854();
    *(v35 + 32) = v32;
    *(v35 + 40) = v31;

    sub_1D7703ED0("Failed to retrieve preroll request. placement=%{public}@", 56, 2, &dword_1D7662000, v33, v34, v35);

    return 0;
  }

  else
  {
    v91 = v31;
    v86 = v21;
    v84 = v20;
    v89 = v27;
    v36 = *(v27 + 32);
    v90 = v19;
    v36(v29, v26, v19);
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v37 = qword_1EE0AF010;
    v38 = sub_1D7704580();
    sub_1D766DF6C(0);
    v85 = v39;
    v40 = swift_allocObject();
    v83 = xmmword_1D7708FD0;
    *(v40 + 16) = xmmword_1D7708FD0;
    v41 = MEMORY[0x1E69E6158];
    *(v40 + 56) = MEMORY[0x1E69E6158];
    v42 = sub_1D7668854();
    v43 = v91;
    *(v40 + 32) = v32;
    *(v40 + 40) = v43;
    v44 = *v29;
    v45 = v29[1];
    *(v40 + 96) = v41;
    *(v40 + 104) = v42;
    *(v40 + 64) = v42;
    *(v40 + 72) = v44;
    *(v40 + 80) = v45;

    v87 = v37;
    sub_1D7703ED0("Retrieved request from store. placement=%{public}@, requestid=%{public}@", 72, 2, &dword_1D7662000, v37, v38, v40);

    v46 = (v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x70));
    v88 = v32;
    v47 = v46[3];
    v48 = v46[4];
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v49 = *(v48 + 24);
    v50 = type metadata accessor for PrerollAdProvider();
    v49(v106, v103, v29, v105, v50, v102, v104, &protocol witness table for PrerollAdProvider, &protocol witness table for PrerollAdPlacement, v47, v48);
    v103 = v42;
    v52 = v29;
    v53 = MEMORY[0x1E69E7D40];
    v54 = v106[0];
    v55 = v93;
    sub_1D76FD734(v101, v93, type metadata accessor for PrerollAdPlacement);
    v56 = v54[5];
    v57 = v54[6];
    v102 = v54;
    __swift_project_boxed_opaque_existential_1(v54 + 2, v56);
    v58 = (*(v57 + 8))(v56, v57);
    v59 = [v58 promotedContentVideo];

    v60 = v100;
    sub_1D76FD734(v55, &v100[*(v92 + 24)], type metadata accessor for PrerollAdPlacement);
    *v60 = v59;
    v61 = [v59 promotedContentInfo];
    if (v61)
    {
      v62 = v61;
      v63 = sub_1D77037A0();
      v65 = v64;
    }

    else
    {
      v63 = 0;
      v65 = 0xE000000000000000;
    }

    v66 = v53;
    v67 = v52;
    v68 = v91;
    sub_1D76FD79C(v55, type metadata accessor for PrerollAdPlacement);
    v69 = v100;
    *(v100 + 1) = v63;
    *(v69 + 16) = v65;
    v70 = v96;
    sub_1D76FD6D0(v69, v96);
    type metadata accessor for VideoAdInteractionPresentationHandler();
    v71 = swift_allocObject();
    swift_unknownObjectUnownedInit();

    sub_1D7703E20();
    v72 = *(v5 + *((*v66 & *v5) + 0x80));
    v73 = v88;
    Journal.addRequestedEntry(request:placementIdentifier:contentIdentifier:)(v52, v88, v68, 0, 0);
    v74 = sub_1D7704580();
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1D7708FE0;
    v76 = v103;
    *(v75 + 56) = MEMORY[0x1E69E6158];
    *(v75 + 64) = v76;
    *(v75 + 32) = v73;
    *(v75 + 40) = v68;

    sub_1D7703ED0("Creating video ad provider. placement=%{public}@", 48, 2, &dword_1D7662000, v87, v74, v75);

    type metadata accessor for VideoAdProvider(0, v105, v104, v77);
    v78 = v95;
    sub_1D76FD734(v70, v95, type metadata accessor for PrerollAd);
    v79 = v97;
    sub_1D76FD734(v101, v97, type metadata accessor for PrerollAdPlacement);
    v80 = *(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x88));

    v81 = [v80 possiblyUnfetchedAppConfiguration];
    sub_1D7667C54(v98, v106);
    v82 = sub_1D76B6BE4(v78, v79, v72, v67, v81, v71, v106);

    (*(v89 + 8))(v67, v90);
    sub_1D76FD79C(v70, type metadata accessor for PrerollAd);
    return v82;
  }
}

id VideoAdProviderFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoAdProviderFactory.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4[1] = v1;
  v2 = type metadata accessor for VideoAdProviderFactory(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1D76FD5A8(uint64_t *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  __swift_destroy_boxed_opaque_existential_1((a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x70)));

  swift_unknownObjectRelease();
  v5 = *(*(*((v4 & v2) + 0x58) - 8) + 8);
  v6 = a1 + *((*v3 & *a1) + 0x90);

  return v5(v6);
}

uint64_t sub_1D76FD6D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrerollAd(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D76FD734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D76FD79C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D76FD8B8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000021 && 0x80000001D771A670 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1D7704A30();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1D76FD94C(uint64_t a1)
{
  v2 = sub_1D76FDB0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76FD988(uint64_t a1)
{
  v2 = sub_1D76FDB0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InterstitialAdData.encode(to:)(void *a1)
{
  sub_1D76FDCE0(0, &qword_1EC9BE188, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76FDB0C();
  sub_1D7704B10();
  sub_1D77049F0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D76FDB0C()
{
  result = qword_1EC9BE190;
  if (!qword_1EC9BE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE190);
  }

  return result;
}

uint64_t InterstitialAdData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D76FDCE0(0, &qword_1EC9BE198, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76FDB0C();
  sub_1D7704B00();
  if (!v2)
  {
    v10 = sub_1D7704960();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76FDCE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76FDB0C();
    v7 = a3(a1, &type metadata for InterstitialAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76FDD44(uint64_t a1)
{
  *(a1 + 8) = sub_1D76DE4FC();
  result = sub_1D76DDA74();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D76FDD8C(void *a1)
{
  sub_1D76FDCE0(0, &qword_1EC9BE188, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76FDB0C();
  sub_1D7704B10();
  sub_1D77049F0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D76FDEF8()
{
  result = qword_1EC9BE1A0;
  if (!qword_1EC9BE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE1A0);
  }

  return result;
}

unint64_t sub_1D76FDF50()
{
  result = qword_1EC9BE1A8;
  if (!qword_1EC9BE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE1A8);
  }

  return result;
}

unint64_t sub_1D76FDFA8()
{
  result = qword_1EC9BE1B0;
  if (!qword_1EC9BE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE1B0);
  }

  return result;
}

double sub_1D76FE020(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = objc_opt_self();
  v5 = MEMORY[0x1E69E6158];
  v6 = sub_1D77043F0();
  [v4 addClientToSegments:v6 replaceExisting:1 privateSegment:v3 ^ 1u];

  if (qword_1EE0AE9A0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE0AE9A8;
  sub_1D766DF6C(0);
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = xmmword_1D7708FD0;
  v10 = v3 == 0;
  if (v3)
  {
    v11 = 0x63696C627570;
  }

  else
  {
    v11 = 0x65746176697270;
  }

  if (v10)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  *(v8 + 56) = v5;
  *(v8 + 64) = sub_1D7668854();
  v9[4] = v11;
  v9[5] = v12;
  sub_1D76697B0();
  v9[12] = v13;
  v9[13] = sub_1D769710C();
  v9[9] = a1;

  v14 = sub_1D77045A0();
  sub_1D7703ED0("Updating segment for scope=%{public}@, segments=%@", 50, 2, &dword_1D7662000, v7, v14, v9);

  return result;
}

void *sub_1D76FE198(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D767FC48();
  result = sub_1D7703410();
  if (v4)
  {
    type metadata accessor for PrerollAdProvider();
    v2 = swift_allocObject();
    sub_1D7667CB8(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D76FE254(void *a1, uint64_t (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D767FC48();
  result = sub_1D7703410();
  if (v6)
  {
    a2(0);
    v4 = swift_allocObject();
    type metadata accessor for DebugBannerAdProvider();
    swift_allocObject();
    *(v4 + 56) = sub_1D76FAA6C();
    sub_1D7667CB8(&v5, v4 + 16);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D76FE338(void *a1, uint64_t (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D767FC48();
  result = sub_1D7703410();
  if (v6)
  {
    a2(0);
    v4 = swift_allocObject();
    *(v4 + 56) = 0;
    sub_1D7667CB8(&v5, v4 + 16);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AdPlacementPolicyValidator.__allocating_init(layoutEnvironmentProvider:viewportEnvironmentProvider:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  AdPlacementPolicyValidator.init(layoutEnvironmentProvider:viewportEnvironmentProvider:)(a1, a2);
  return v4;
}

uint64_t AdPlacementPolicyValidator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t AdPlacementPolicyValidator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t AdPlacementPolicyValidator.validatePlacement(_:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE0AF010;
  sub_1D766FC6C(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7708FD0;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1D7668854();
  *(v6 + 64) = v8;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  type metadata accessor for CGPoint(0);

  sub_1D7704850();
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0xE000000000000000;
  v9 = sub_1D77045A0();
  sub_1D7703ED0("Validating placement=%{public}@, position=%{public}@", 52, 2, &dword_1D7662000, v5, v9, v6, v3, v4);

  if (qword_1EE0B0A78 != -1)
  {
    swift_once();
  }

  sub_1D76707B0(qword_1EE0AF420, v10, type metadata accessor for AdPlacementPolicyValidator, &protocol conformance descriptor for AdPlacementPolicyValidator);
  sub_1D7703070();
  sub_1D76FF780(0, &qword_1EE0B0848, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D77036E0();
}

void sub_1D76FE848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  *(v21 + 32) = a7;
  *(v21 + 40) = a9;
  *(v21 + 48) = a10;
  *(v21 + 56) = a3;
  *(v21 + 64) = a4;
  *(v21 + 72) = sub_1D76FF634;
  *(v21 + 80) = v20;

  v22 = sub_1D7703640();
  v24 = v23;
  v25 = *v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_1D768CF54(0, v25[2] + 1, 1, v25);
    *v24 = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_1D768CF54((v27 > 1), v28 + 1, 1, v25);
    *v24 = v25;
  }

  v25[2] = v28 + 1;
  v29 = &v25[2 * v28];
  v29[4] = sub_1D76FF65C;
  v29[5] = v21;
  v22(v32, 0);

  if (a8)
  {

    sub_1D7703650();

    if (*(v32[0] + 16))
    {
      v30 = *(v32[0] + 32);

      v30(v31);
    }

    else
    {
    }
  }
}

double sub_1D76FEA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  sub_1D76FF690();
  sub_1D7703720();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a8;
  *(v17 + 40) = a9;
  *(v17 + 48) = a4;
  *(v17 + 56) = a5;

  v18 = sub_1D7703620();
  sub_1D77036C0();

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a8;
  *(v19 + 48) = a9;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1D76FF700;
  *(v20 + 24) = v19;
  sub_1D76FF780(0, &qword_1EE0AED98, &type metadata for AdPolicyFailure, MEMORY[0x1E69E62F8]);

  sub_1D77036A0();

  sub_1D7669BD8();
  v21 = sub_1D77045F0();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = a8;
  *(v22 + 40) = a9;
  *(v22 + 48) = a4;
  *(v22 + 56) = a5;
  *(v22 + 64) = a6;
  *(v22 + 72) = a7;
  *(v22 + 80) = a1;

  sub_1D77036A0();

  return result;
}

uint64_t sub_1D76FECFC(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v2);
  (*(v3 + 8))(v2, v3);
  v4 = a1[10];
  v5 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v4);
  (*(v5 + 8))(v4, v5);
  v6 = sub_1D7703620();
  v7 = sub_1D7703610();

  return v7;
}

void sub_1D76FEDCC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE0AF010;
  sub_1D766FC6C(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7708FD0;
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D7668854();
  *(v8 + 64) = v10;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  swift_getErrorValue();

  v11 = sub_1D7704A80();
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = v11;
  *(v8 + 80) = v12;
  v13 = sub_1D77045A0();
  sub_1D7703ED0("Validation failed for placement=%{public}@, error=%{public}@", 60, 2, &dword_1D7662000, v7, v13, v8);

  sub_1D76FF7D0();
  v14 = swift_allocError();
  *v15 = a1;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  v16 = a1;
  a4(v14);
}

char *sub_1D76FEF80(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v11 = a2[2];
  *&v44[56] = a2[3];
  v12 = a2[5];
  *&v44[72] = a2[4];
  *&v44[88] = v12;
  *&v44[104] = a2[6];
  v13 = a2[1];
  *&v44[8] = *a2;
  *&v44[24] = v13;
  v14 = *a1;
  *&v44[40] = v11;
  *v44 = v14;
  swift_beginAccess();
  v15 = *(a3 + 96);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + 32;

    v18 = v16 - 1;
    v19 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D7667C54(v17, v41);
      v20 = v42;
      v21 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      v33[0] = a4;
      v33[1] = a5;
      *&v33[2] = a6;
      *&v33[3] = a7;
      v31[4] = *&v44[64];
      v31[5] = *&v44[80];
      v31[6] = *&v44[96];
      v32 = *&v44[112];
      v31[0] = *v44;
      v31[1] = *&v44[16];
      v31[2] = *&v44[32];
      v31[3] = *&v44[48];
      (*(v21 + 8))(v34, v33, v31, v20, v21);
      v22 = v34[0];
      v23 = v34[1];
      v38 = v35;
      v39 = v36;
      v40 = v37;
      __swift_destroy_boxed_opaque_existential_1(v41);
      if (v23)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1D768C5D8(0, *(v19 + 2) + 1, 1, v19);
        }

        v25 = *(v19 + 2);
        v24 = *(v19 + 3);
        if (v25 >= v24 >> 1)
        {
          v19 = sub_1D768C5D8((v24 > 1), v25 + 1, 1, v19);
        }

        *(v19 + 2) = v25 + 1;
        v26 = &v19[64 * v25];
        *(v26 + 4) = v22;
        *(v26 + 5) = v23;
        v27 = v38;
        v28 = v40;
        *(v26 + 4) = v39;
        *(v26 + 5) = v28;
        *(v26 + 3) = v27;
      }

      if (!v18)
      {
        break;
      }

      --v18;
      v17 += 40;
    }

    sub_1D76FF9A8(v44);
  }

  else
  {

    sub_1D76FF9A8(v44);
    return MEMORY[0x1E69E7CC0];
  }

  return v19;
}

void sub_1D76FF1B4(uint64_t *a1, unint64_t a2, void *a3, void (*a4)(void *), uint64_t a5, void (*a6)(__n128), uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v10 = a2;
  v11 = *a1;
  v12 = *(*a1 + 16);
  if (!v12)
  {
    v16 = a6;
    if (qword_1EE0AF008 != -1)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v39[5] = v8;
  v39[0] = MEMORY[0x1E69E7CC0];
  sub_1D76970EC(0, v12, 0);
  v13 = v39[0];
  v14 = (v11 + 80);
  do
  {
    v15 = *(v14 - 1);
    v16 = *v14;
    v39[0] = v13;
    v10 = *(v13 + 16);
    v17 = *(v13 + 24);

    if (v10 >= v17 >> 1)
    {
      sub_1D76970EC((v17 > 1), v10 + 1, 1);
      v13 = v39[0];
    }

    *(v13 + 16) = v10 + 1;
    v18 = v13 + 16 * v10;
    *(v18 + 32) = v15;
    *(v18 + 40) = v16;
    v14 += 8;
    --v12;
  }

  while (v12);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v19 = qword_1EE0AF010;
  sub_1D766FC6C(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7708FD0;
  v21 = MEMORY[0x1E69E6158];
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1D7668854();
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  sub_1D76FF780(0, &qword_1EE0AED80, v21, MEMORY[0x1E69E62F8]);
  *(v20 + 96) = v22;
  *(v20 + 104) = sub_1D769710C();
  *(v20 + 72) = v13;

  v23 = sub_1D77045A0();
  sub_1D7703ED0("Validation failed for placement=%{public}@, policies=%{public}@", 63, 2, &dword_1D7662000, v19, v23, v20);

  sub_1D76FF7D0();
  v24 = swift_allocError();
  *v25 = v11;
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;

  a4(v24);

  while (1)
  {

    sub_1D7703650();

    v30 = *(v39[0] + 16);

    if (!v30)
    {
      break;
    }

    v9 = v39;
    v31 = sub_1D7703640();
    if (*(*v32 + 16))
    {
      v33 = v31;
      sub_1D76FF8E8(0, 1);
      v33(v39, 0);

      sub_1D7703650();

      if (*(v39[0] + 16))
      {
        v34 = *(v39[0] + 32);

        v34(v35);
      }

      else
      {
      }

      return;
    }

    __break(1u);
LABEL_18:
    swift_once();
LABEL_10:
    v26 = qword_1EE0AF010;
    sub_1D766FC6C(0, &qword_1EE0AEBF0, sub_1D76864C0, MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1D7708FE0;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1D7668854();
    *(v27 + 32) = v10;
    *(v27 + 40) = v9;

    v28 = sub_1D77045A0();
    sub_1D7703ED0("Validation passed for placement=%{public}@", 42, 2, &dword_1D7662000, v26, v28, v27);

    (v16)(v29);
  }
}

void sub_1D76FF690()
{
  if (!qword_1EE0AF548)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0AF548);
    }
  }
}

uint64_t sub_1D76FF710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(a1, a1 + 8);
  *a2 = result;
  return result;
}

void sub_1D76FF780(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D76FF7D0()
{
  result = qword_1EE0B02E0;
  if (!qword_1EE0B02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B02E0);
  }

  return result;
}

unint64_t sub_1D76FF824(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_1D767050C();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D76FF8E8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D768CF54(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1D76FF824(v6, a2, 0);
  *v2 = v4;
  return result;
}

id DebugJournalViewController.__allocating_init(commandCenter:journal:presentationOptions:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v11 = *a3;
  v10 = a3[1];
  v12 = OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView;
  *&v9[v12] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v13 = &v9[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_identifier];
  *v13 = v11;
  *(v13 + 1) = v10;
  v14 = &v9[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_commandCenter];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v9[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal];
  *v15 = v11;
  *(v15 + 1) = v10;
  v16 = *(a3 + 4);
  *(v15 + 3) = *(a3 + 3);
  *(v15 + 4) = v16;
  v17 = *(a3 + 2);
  *(v15 + 1) = *(a3 + 1);
  *(v15 + 2) = v17;
  v18 = *(a3 + 8);
  *(v15 + 7) = *(a3 + 7);
  *(v15 + 8) = v18;
  v19 = *(a3 + 6);
  *(v15 + 5) = *(a3 + 5);
  *(v15 + 6) = v19;
  *&v9[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_presentationOptions] = a4;
  v21.receiver = v9;
  v21.super_class = v4;

  return objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t DebugJournalViewController.PresentationOptions.hashValue.getter()
{
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](0);
  return sub_1D7704AF0();
}

unint64_t sub_1D76FFB90@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D770292C(*a1);
  *a2 = result;
  return result;
}

uint64_t DebugJournalViewController.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_identifier);

  return v1;
}

id DebugJournalViewController.init(commandCenter:journal:presentationOptions:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v11 = *a3;
  v10 = a3[1];
  v12 = OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v13 = &v4[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_identifier];
  *v13 = v11;
  *(v13 + 1) = v10;
  v14 = &v4[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_commandCenter];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v4[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal];
  *v15 = v11;
  *(v15 + 1) = v10;
  v16 = *(a3 + 4);
  *(v15 + 3) = *(a3 + 3);
  *(v15 + 4) = v16;
  v17 = *(a3 + 2);
  *(v15 + 1) = *(a3 + 1);
  *(v15 + 2) = v17;
  v18 = *(a3 + 8);
  *(v15 + 7) = *(a3 + 7);
  *(v15 + 8) = v18;
  v19 = *(a3 + 6);
  *(v15 + 5) = *(a3 + 5);
  *(v15 + 6) = v19;
  *&v4[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_presentationOptions] = a4;
  v21.receiver = v4;
  v21.super_class = ObjectType;

  return objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
}

Swift::Void __swiftcall DebugJournalViewController.viewDidLoad()()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_1D766844C(0, &qword_1EC9BE1E8, 0x1E69DD028);
  sub_1D7704560();
  type metadata accessor for DebugJournalValueTableViewCell();
  sub_1D7704560();
  type metadata accessor for DebugJournalSubtitleTableViewCell();
  sub_1D7704560();
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 addSubview_];

    [v2 reloadData];
    v5 = [v1 navigationItem];
    v6 = sub_1D7704230();
    [v5 setTitle_];

    v7 = [v1 navigationItem];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v1 action:sel_handleDone];
    [v7 setRightBarButtonItem_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DebugJournalViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1D7703020();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_viewDidAppear_, a1);
  v12 = *&v2[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView];
  v13 = [v12 indexPathForSelectedRow];
  if (v13)
  {
    v14 = v13;
    sub_1D7702FF0();

    (*(v6 + 32))(v11, v9, v5);
    v15 = sub_1D7702FE0();
    [v12 deselectRowAtIndexPath:v15 animated:1];

    (*(v6 + 8))(v11, v5);
  }
}

Swift::Void __swiftcall DebugJournalViewController.viewDidLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id DebugJournalViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D7704230();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_1D770054C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_identifier);

  return v1;
}

void DebugJournalViewController.tableView(_:didSelectRowAt:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = sub_1D7703010();
  v6 = sub_1D7701B84();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v5 >= *(v6 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = *(v6 + v5 + 32);

  if (v7 > 2)
  {
    if (v7 != 3)
    {
      v20 = *&v3[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128];
      v21 = sub_1D7703000();
      if ((v21 & 0x8000000000000000) == 0)
      {
        if (v21 < *(v20 + 16))
        {
          v22 = (v20 + 144 * v21);
          v56 = v22[2];
          v23 = v22[3];
          v24 = v22[4];
          v25 = v22[6];
          v59 = v22[5];
          v60 = v25;
          v57 = v23;
          v58 = v24;
          v26 = v22[7];
          v27 = v22[8];
          v28 = v22[10];
          v63 = v22[9];
          v64 = v28;
          v61 = v26;
          v62 = v27;
          v29 = v56;
          v51 = *&v3[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_commandCenter];
          v30 = objc_allocWithZone(ObjectType);
          v31 = OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView;
          v32 = objc_allocWithZone(MEMORY[0x1E69DD020]);
          sub_1D766D644(&v56, v54);
          sub_1D766D644(&v56, v54);
          *&v30[v31] = [v32 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
          *&v30[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_identifier] = v29;
          *&v30[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_commandCenter] = v51;
          v33 = &v30[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal];
          v35 = v61;
          v34 = v62;
          v36 = v64;
          *(v33 + 7) = v63;
          *(v33 + 8) = v36;
          *(v33 + 5) = v35;
          *(v33 + 6) = v34;
          v38 = v57;
          v37 = v58;
          v39 = v60;
          *(v33 + 3) = v59;
          *(v33 + 4) = v39;
          *(v33 + 1) = v38;
          *(v33 + 2) = v37;
          *v33 = v56;
          *&v30[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_presentationOptions] = MEMORY[0x1E69E7CC0];
          v53.receiver = v30;
          v53.super_class = ObjectType;

          swift_unknownObjectRetain();
          v40 = objc_msgSendSuper2(&v53, sel_initWithNibName_bundle_, 0, 0);
          [v3 showViewController:v40 sender:0];

          sub_1D76950E4(&v56);
          return;
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v9 = *&v3[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 136];
    v10 = sub_1D7703000();
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 < *(v9 + 16))
      {
        sub_1D76EA92C(v9 + 48 * v10 + 32, v54);
        if (v55)
        {
          *&v56 = *&v54[0];
          v11 = sub_1D76A6440();

          sub_1D7673524(0, &qword_1EC9BE1F0, &type metadata for AdContextBuilderSnapshot.SerializedSnapshotEntry, MEMORY[0x1E69E62F8]);
          *(&v57 + 1) = v12;
          *&v58 = sub_1D7701D34(&qword_1EC9BE1F8, sub_1D7701CE0, MEMORY[0x1E69E6330]);
          *(&v58 + 1) = sub_1D7701D34(&qword_1EC9BDEC8, sub_1D76EA964, MEMORY[0x1E69E6300]);
          *&v56 = v11;
          v13 = type metadata accessor for DebugJournalCodableViewController();
          v14 = objc_allocWithZone(v13);
          v15 = OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_textView;
          v16 = objc_allocWithZone(MEMORY[0x1E69DD168]);

          *&v14[v15] = [v16 init];
          sub_1D767D4C4(&v56, &v14[OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_codable]);
          v52.receiver = v14;
          v52.super_class = v13;
          v17 = objc_msgSendSuper2(&v52, sel_initWithNibName_bundle_, 0, 0);

          __swift_destroy_boxed_opaque_existential_1(&v56);
          v18 = [v17 navigationItem];
          v19 = sub_1D7704230();
          [v18 setTitle_];

          [v3 showViewController:v17 sender:0];
        }

        else
        {
          sub_1D7667CB8(v54, &v56);
          v41 = type metadata accessor for DebugJournalCodableViewController();
          v42 = *(&v57 + 1);
          v43 = v58;
          v44 = __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
          MEMORY[0x1EEE9AC00](v44);
          v46 = &v51 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v47 + 16))(v46);
          v48 = sub_1D7699500(v46, v41, v42, *(v43 + 24), *(v43 + 32));
          v49 = [v48 navigationItem];
          v50 = sub_1D7704230();
          [v49 setTitle_];

          [v3 showViewController:v48 sender:0];
          __swift_destroy_boxed_opaque_existential_1(&v56);
        }

        goto LABEL_18;
      }

      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  if ((v7 - 1) < 2)
  {
    return;
  }

  v8 = sub_1D7703000();
  if (v8 == 1)
  {
    sub_1D7701130();
  }

  else if (!v8)
  {
    sub_1D7700B68();
  }

LABEL_18:
  sub_1D7704540();
}

double sub_1D7700B68()
{
  v1 = v0;
  v34 = sub_1D7703F90();
  v2 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1D7703F20();
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1D7702C40(0, &qword_1EC9BDAF8, MEMORY[0x1E69D77E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = MEMORY[0x1E69D8750];
  sub_1D7702C40(0, &unk_1EC9BE2F0, MEMORY[0x1E69D8750], v7);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_commandCenter + 8);
  v32 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_commandCenter);
  v33 = v15;
  ObjectType = swift_getObjectType();
  sub_1D7702C40(0, &qword_1EC9BDB00, v11, MEMORY[0x1E69D8790]);
  v29 = sub_1D7704050();
  if (qword_1EC9BCAA8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D7703EF0();
  v17 = __swift_project_value_buffer(v16, qword_1EC9BD428);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v10, v17, v16);
  (*(v18 + 56))(v10, 0, 1, v16);
  v19 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 80);
  v20 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112);
  v53 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 96);
  v54 = v20;
  v21 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112);
  v55 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128);
  v22 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 16);
  v23 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 48);
  v49 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 32);
  v50 = v23;
  v24 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 48);
  v25 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 80);
  v51 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 64);
  v52 = v25;
  v26 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 16);
  v48[0] = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal);
  v48[1] = v26;
  v42 = v53;
  v43 = v21;
  v44 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128);
  v38 = v49;
  v39 = v24;
  v40 = v51;
  v41 = v19;
  v36 = v48[0];
  v37 = v22;
  sub_1D766D644(v48, v56);
  sub_1D76E9760();
  v56[6] = v42;
  v56[7] = v43;
  v56[8] = v44;
  v56[2] = v38;
  v56[3] = v39;
  v56[4] = v40;
  v56[5] = v41;
  v56[0] = v36;
  v56[1] = v37;
  sub_1D76950E4(v56);
  (*(v4 + 104))(v6, *MEMORY[0x1E69D79D0], v30);
  sub_1D7703FC0();
  v27 = sub_1D7703FD0();
  (*(*(v27 - 8) + 56))(v14, 0, 1, v27);
  (*(v2 + 104))(v35, *MEMORY[0x1E69D7FB8], v34);
  *(&v37 + 1) = &_s7NewsAds7TrackerVN_0;
  *&v38 = sub_1D7702BEC();
  v45 = 0u;
  v46 = 0u;
  v47 = 1;
  sub_1D7703F80();
  swift_allocObject();
  sub_1D7703F70();
  sub_1D7703F30();
  sub_1D7702CA4(v14, &unk_1EC9BE2F0, MEMORY[0x1E69D8750], MEMORY[0x1E69E6720], sub_1D7702C40);

  return result;
}

void sub_1D7701130()
{
  v75 = sub_1D7702EE0();
  v1 = *(v75 - 8);
  v2 = MEMORY[0x1EEE9AC00](v75);
  v65 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v57 - v4;
  sub_1D7702C40(0, &qword_1EC9BD650, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v57 - v7;
  v9 = sub_1D7703F10();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v57 - v14;
  v58 = v0;
  v15 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 80];
  v16 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112];
  v104 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 96];
  v105 = v16;
  v17 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112];
  v106 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128];
  v18 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 16];
  v19 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 48];
  v100 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 32];
  v101 = v19;
  v20 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 48];
  v21 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 80];
  v102 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 64];
  v103 = v21;
  v22 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 16];
  v99[0] = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal];
  v99[1] = v22;
  v95 = v15;
  v96 = v104;
  v23 = *&v0[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128];
  v97 = v17;
  v98 = v23;
  v92 = v100;
  v93 = v20;
  v94 = v102;
  v90 = v99[0];
  v91 = v18;
  sub_1D766D644(v99, v107);
  v24 = sub_1D76E9760();
  v107[6] = v96;
  v107[7] = v97;
  v107[8] = v98;
  v107[2] = v92;
  v107[3] = v93;
  v107[4] = v94;
  v107[5] = v95;
  v107[0] = v90;
  v107[1] = v91;
  sub_1D76950E4(v107);
  v84 = v24[2];
  if (!v84)
  {
LABEL_37:

    v53 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
    v54 = sub_1D77043F0();

    sub_1D766844C(0, &qword_1EC9BE308, 0x1E69CD9E8);
    v55 = sub_1D77043F0();
    v56 = [v53 initWithActivityItems:v54 applicationActivities:v55];

    [v58 presentViewController:v56 animated:1 completion:0];
    return;
  }

  v64 = v5;
  v25 = 0;
  v71 = 0;
  v80 = v10 + 88;
  v81 = v10 + 16;
  v79 = *MEMORY[0x1E69D7968];
  v74 = *MEMORY[0x1E69D7950];
  v70 = *MEMORY[0x1E69D7958];
  v69 = *MEMORY[0x1E69D7940];
  v68 = *MEMORY[0x1E69D7938];
  v67 = *MEMORY[0x1E69D7960];
  v85 = (v10 + 8);
  v76 = (v10 + 96);
  v61 = (v1 + 56);
  v62 = (v1 + 8);
  v59 = (v1 + 32);
  v60 = (v1 + 48);
  v26 = MEMORY[0x1E69E7CC0];
  v27 = v10;
  v78 = v10;
  v82 = v24;
  v83 = v13;
  v28 = v77;
  v63 = v8;
  while (v25 < v24[2])
  {
    v29 = v24 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25;
    v30 = *(v27 + 16);
    v30(v28, v29, v9);
    v30(v13, v28, v9);
    v31 = (*(v27 + 88))(v13, v9);
    if (v31 != v79)
    {
      if (v31 != v74)
      {
        if (v31 == v70 || v31 == v69 || v31 == v68 || v31 == v67)
        {
          (*v85)(v13, v9);
          v88 = 0u;
          v89 = 0u;
        }

        else
        {
          v88 = 0u;
          v89 = 0u;
          (*v85)(v13, v9);
        }

        goto LABEL_31;
      }

      (*v76)(v13, v9);
      v32 = *(*v13 + 56);
      v33 = *(*v13 + 64);
      v73 = *v13;
      sub_1D7667C54(v73 + 16, &v90);
      v34 = *(&v91 + 1);
      v35 = v92;
      __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));

      v72 = sub_1D76E86D4(v34, v35);
      if (v36 >> 60 == 15)
      {

        v27 = v78;
        goto LABEL_28;
      }

      v40 = v36;
      v86 = v32;
      v87 = v33;
      MEMORY[0x1DA6FF0D0](0x6E6F736A2ELL, 0xE500000000000000);
      v66 = v86;
      v41 = NSTemporaryDirectory();
      sub_1D7704260();

      v42 = v65;
      sub_1D7702EA0();

      v43 = v64;
      sub_1D7702EC0();

      v44 = v75;
      v66 = *v62;
      v66(v42, v75);
      v45 = v71;
      v46 = v72;
      sub_1D7702F10();
      if (v45)
      {
        sub_1D76992F8(v46, v40);
        v66(v43, v44);

        v71 = 0;
        v47 = 1;
        v48 = v63;
      }

      else
      {
        v71 = 0;
        sub_1D76992F8(v46, v40);
        v48 = v63;
        (*v59)(v63, v43, v44);
        v47 = 0;
      }

      v27 = v78;
      (*v61)(v48, v47, 1, v44);
      if ((*v60)(v48, 1, v44) == 1)
      {
        sub_1D7702CA4(v48, &qword_1EC9BD650, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7702C40);
LABEL_28:
        v88 = 0u;
        v89 = 0u;
      }

      else
      {
        *(&v89 + 1) = v44;
        boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v88);
        (*v59)(boxed_opaque_existential_2, v48, v44);
      }

      v28 = v77;
      __swift_destroy_boxed_opaque_existential_1(&v90);

      goto LABEL_31;
    }

    (*v76)(v13, v9);
    *(&v89 + 1) = v75;
    __swift_allocate_boxed_opaque_existential_2(&v88);

    v28 = v77;
    sub_1D7702EA0();

LABEL_31:
    (*v85)(v28, v9);
    if (*(&v89 + 1))
    {
      sub_1D766B74C(&v88, &v90);
      sub_1D766B74C(&v90, &v88);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = v83;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_1D768D0A0(0, *(v26 + 2) + 1, 1, v26);
      }

      v52 = *(v26 + 2);
      v51 = *(v26 + 3);
      if (v52 >= v51 >> 1)
      {
        v26 = sub_1D768D0A0((v51 > 1), v52 + 1, 1, v26);
      }

      *(v26 + 2) = v52 + 1;
      sub_1D766B74C(&v88, &v26[32 * v52 + 32]);
      v27 = v78;
    }

    else
    {
      sub_1D7702CA4(&v88, &unk_1EE0AEBB0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D7673524);
      v13 = v83;
    }

    ++v25;
    v24 = v82;
    if (v84 == v25)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
}

Swift::Int __swiftcall DebugJournalViewController.numberOfSections(in:)(UITableView *in)
{
  v1 = *(sub_1D7701B84() + 16);

  return v1;
}

uint64_t sub_1D7701B84()
{
  v1 = v0;
  v2 = 0;
  v12 = v0 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128;
  v13 = OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_presentationOptions;
  v3 = v0 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 136;
  v4 = v0 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 120;
  v5 = v0 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = byte_1F524EF40[v2 + 32];
    if (v9 <= 1)
    {
      v10 = v5;
      if (!byte_1F524EF40[v2 + 32])
      {
        if (!*(*(v1 + v13) + 16))
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v10 = v4;
      if (v9 != 2)
      {
        v10 = v3;
        if (v9 != 3)
        {
          v10 = v12;
        }
      }
    }

    if (!*(*v10 + 16))
    {
      goto LABEL_5;
    }

LABEL_14:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D76972A0(0, *(v6 + 16) + 1, 1);
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_1D76972A0((v7 > 1), v8 + 1, 1);
    }

    *(v6 + 16) = v8 + 1;
    *(v6 + v8 + 32) = v9;
LABEL_5:
    ++v2;
  }

  while (v2 != 5);
  return v6;
}

unint64_t sub_1D7701CE0()
{
  result = qword_1EC9BE200;
  if (!qword_1EC9BE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE200);
  }

  return result;
}

uint64_t sub_1D7701D34(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D7673524(255, &qword_1EC9BE1F0, &type metadata for AdContextBuilderSnapshot.SerializedSnapshotEntry, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::String_optional __swiftcall DebugJournalViewController.tableView(_:titleForHeaderInSection:)(UITableView *_, Swift::Int titleForHeaderInSection)
{
  v2 = sub_1D7702A08(titleForHeaderInSection);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

unint64_t DebugJournalViewController.tableView(_:cellForRowAt:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D77040C0();
  v46 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v45 - v11;
  v13 = sub_1D7703010();
  result = sub_1D7701B84();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v13 >= *(result + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = *(result + v13 + 32);

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      if (v15 == 3)
      {
        sub_1D766844C(0, &qword_1EC9BE1E8, 0x1E69DD028);
        v16 = sub_1D7704550();
        v17 = *(v3 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 136);
        result = sub_1D7703000();
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *(v17 + 16))
          {
            sub_1D76EA92C(v17 + 48 * result + 32, &v50);
            sub_1D77040A0();
            sub_1D76EA92C(&v50, v47);
            sub_1D76EA9B8(v47);
            sub_1D77040B0();
            v48 = v4;
            v49 = MEMORY[0x1E69DC110];
            boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v47);
            v19 = v46;
            (*(v46 + 16))(boxed_opaque_existential_2, v7, v4);
            MEMORY[0x1DA6FF380](v47);
            [v16 setAccessoryType_];
            (*(v19 + 8))(v7, v4);
            sub_1D76EA9B8(&v50);
            return v16;
          }

          goto LABEL_34;
        }

        goto LABEL_30;
      }

      type metadata accessor for DebugJournalSubtitleTableViewCell();
      v31 = sub_1D7704550();
      v32 = *(v3 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128);
      result = sub_1D7703000();
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (result >= *(v32 + 16))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v33 = (v32 + 144 * result);
      v50 = v33[2];
      v34 = v33[3];
      v35 = v33[4];
      v36 = v33[6];
      v53 = v33[5];
      v54 = v36;
      v51 = v34;
      v52 = v35;
      v37 = v33[7];
      v38 = v33[8];
      v39 = v33[10];
      v57 = v33[9];
      v58 = v39;
      v55 = v37;
      v56 = v38;
      sub_1D766D644(&v50, v47);
      sub_1D7704060();

      sub_1D77040B0();

      sub_1D7704070();
      v48 = v4;
      v49 = MEMORY[0x1E69DC110];
      v40 = __swift_allocate_boxed_opaque_existential_2(v47);
      v41 = v46;
      (*(v46 + 16))(v40, v10, v4);
      v16 = v31;
      MEMORY[0x1DA6FF380](v47);
      [v16 setAccessoryType_];

      sub_1D76950E4(&v50);
LABEL_24:
      (*(v41 + 8))(v10, v4);
      return v16;
    }

    v24 = *(v3 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 120);
    result = sub_1D7703000();
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v24 + 16))
      {
        type metadata accessor for DebugJournalSubtitleTableViewCell();

        v16 = sub_1D7704550();
        [v16 setSelectionStyle_];
        v25 = [v16 textLabel];
        if (v25)
        {
          v26 = v25;
          v27 = sub_1D7704230();
          [v26 setText_];
        }

        v28 = [v16 detailTextLabel];
        if (v28)
        {
          v29 = v28;
          v30 = sub_1D7704230();

          [v29 setText_];
        }

        else
        {
        }

        return v16;
      }

      goto LABEL_33;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v15)
  {
    sub_1D766844C(0, &qword_1EC9BE1E8, 0x1E69DD028);
    v16 = sub_1D7704550();
    sub_1D77040A0();
    sub_1D7703000();
    sub_1D77040B0();
    v20 = [objc_opt_self() systemBlueColor];
    v21 = sub_1D7704090();
    sub_1D7704080();
    v21(&v50, 0);
    *(&v51 + 1) = v4;
    *&v52 = MEMORY[0x1E69DC110];
    v22 = __swift_allocate_boxed_opaque_existential_2(&v50);
    v23 = v46;
    (*(v46 + 16))(v22, v12, v4);
    MEMORY[0x1DA6FF380](&v50);
    (*(v23 + 8))(v12, v4);
    return v16;
  }

  type metadata accessor for DebugJournalSubtitleTableViewCell();
  v42 = sub_1D7704550();
  v43 = *(v3 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112);
  result = sub_1D7703000();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  if (result < *(v43 + 16))
  {

    sub_1D7704060();

    sub_1D77040B0();

    sub_1D7704070();

    *(&v51 + 1) = v4;
    *&v52 = MEMORY[0x1E69DC110];
    v44 = __swift_allocate_boxed_opaque_existential_2(&v50);
    v41 = v46;
    (*(v46 + 16))(v44, v10, v4);
    v16 = v42;
    MEMORY[0x1DA6FF380](&v50);
    [v16 setAccessoryType_];
    [v16 setSelectionStyle_];

    goto LABEL_24;
  }

LABEL_36:
  __break(1u);
  return result;
}

id sub_1D7702840(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_1D7704260();
    a4 = sub_1D7704230();
  }

  v11.receiver = a1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, a5, a4);

  return v9;
}

unint64_t sub_1D770292C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1D770293C(unint64_t a1)
{
  result = sub_1D7701B84();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(result + 16) <= a1)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = *(result + a1 + 32);

  if (v4 <= 1)
  {
    if (!v4)
    {
      return 2 * (*(*(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_presentationOptions) + 16) != 0);
    }

    v5 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112);
  }

  else if (v4 == 2)
  {
    v5 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 120);
  }

  else if (v4 == 3)
  {
    v5 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 136);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128);
  }

  return *(v5 + 16);
}

uint64_t sub_1D7702A08(unint64_t a1)
{
  result = sub_1D7701B84();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v4 = *(result + a1 + 32);

    if (v4 <= 1)
    {
      if (!v4)
      {
        return v4;
      }

      v5 = *(*(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 112) + 16) == 0;
      v6 = 0x736C6961746544;
    }

    else
    {
      if (v4 == 2)
      {
        if (*(*(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 120) + 16))
        {
          return 0xD000000000000012;
        }

        else
        {
          return 0;
        }
      }

      if (v4 == 3)
      {
        v5 = *(*(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 136) + 16) == 0;
        v6 = 0x736E6F69746341;
      }

      else
      {
        v5 = *(*(v1 + OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal + 128) + 16) == 0;
        v6 = 0x79726F74736948;
      }
    }

    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D7702B38()
{
  result = qword_1EC9BE218;
  if (!qword_1EC9BE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE218);
  }

  return result;
}

unint64_t sub_1D7702BEC()
{
  result = qword_1EC9BE300;
  if (!qword_1EC9BE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE300);
  }

  return result;
}

void sub_1D7702C40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7702CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D7702D28()
{
  result = qword_1EC9BE310;
  if (!qword_1EC9BE310)
  {
    sub_1D7673524(255, &qword_1EC9BE318, &type metadata for DebugJournalViewController.Section, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE310);
  }

  return result;
}

unint64_t sub_1D7702DA8()
{
  result = qword_1EC9BE320;
  if (!qword_1EC9BE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BE320);
  }

  return result;
}