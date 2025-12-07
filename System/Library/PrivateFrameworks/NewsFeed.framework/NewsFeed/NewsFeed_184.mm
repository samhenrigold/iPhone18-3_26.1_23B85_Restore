id sub_1D6C101F0(void *a1, uint64_t a2, __n128 a3)
{
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC9BAD28;
  v6 = sub_1D7262EBC();
  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7270C10;
  v9 = *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 24);
  v8 = *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem), v9);
  v10 = (*(*(v8 + 8) + 8))(v9);
  v12 = v11;
  v13 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1D5B7E2C0();
  *(v7 + 64) = v14;
  *(v7 + 32) = v10;
  *(v7 + 40) = v12;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  *(v7 + 96) = v13;
  *(v7 + 104) = v14;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0xE000000000000000;
  sub_1D725C30C("Failed to load inspections for feedItem %@, error=%@", 52, 2, &dword_1D5B42000, v5, v6, v7);

  sub_1D5B5D358(0, &qword_1EC88EF80, &type metadata for DebugInspectionDataSection);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7273AE0;
  sub_1D5B5D358(0, &qword_1EC893920, &type metadata for DebugInspectionDataItem);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7273AE0;
  *(v16 + 32) = a1;
  *(v16 + 88) = 1;
  *(v15 + 32) = 0x726F727245;
  *(v15 + 40) = 0xE500000000000000;
  *(v15 + 48) = v16;
  *(a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections) = v15;
  v17 = a1;

  return [*(a2 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_tableView) reloadData];
}

uint64_t sub_1D6C10468()
{
  v0 = sub_1D725FB0C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725FB1C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v10, *MEMORY[0x1E69D8828], v5, v8);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D8848], v0);
  sub_1D725D77C();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v10, v5);
}

void sub_1D6C108C8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [v0 navigationItem];
  sub_1D5B5D358(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D72816C0;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) init];
  [v4 sizeToFit];
  [v4 startAnimating];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

  *(v3 + 32) = v5;
  sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
  v6 = sub_1D726265C();

  [v2 setLeftBarButtonItems_];

  sub_1D725BDCC();
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  v7 = sub_1D726308C();
  *(swift_allocObject() + 16) = v1;
  v8 = v1;
  sub_1D725BAAC();

  v9 = sub_1D726308C();
  sub_1D725BADC();
}

void sub_1D6C10B20(__int128 *a1, char *a2, uint64_t a3, __n128 a4)
{
  v84 = a3;
  v81 = sub_1D725D52C();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v6);
  v75 = (v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_1D725D7FC();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v8);
  v77 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1D6C12108(0, &unk_1EDF3B6E0, MEMORY[0x1E69D77E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v83 = v74 - v13;
  sub_1D6C12108(0, &unk_1EC88DF00, MEMORY[0x1E69D8750], v10);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v79 = v74 - v16;
  sub_1D6C12108(0, &qword_1EC893918, type metadata accessor for DebugInspectionItem, v10);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v74 - v19;
  v89 = type metadata accessor for DebugInspectionItem(0);
  v21 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v22);
  v82 = v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[2];
  v25 = a1[4];
  v99 = a1[3];
  v100 = v25;
  v26 = *a1;
  v97 = a1[1];
  v98 = v24;
  v96 = v26;
  v27 = a2;
  v28 = [a2 navigationItem];
  sub_1D5B5D358(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D72816C0;
  v30 = sub_1D726203C();
  v31 = [objc_opt_self() systemImageNamed_];

  if (!v31)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v32 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v31 style:0 target:v27 action:sel_doTapToRadar];

  *(v29 + 32) = v32;
  sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
  v33 = sub_1D726265C();

  [v28 setLeftBarButtonItems_];

  v34 = *&v27[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 24];
  v35 = *&v27[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem + 32];
  __swift_project_boxed_opaque_existential_1(&v27[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem], v34);
  v36 = (*(*(v35 + 8) + 8))(v34);
  v93 = v98;
  v94 = v99;
  v95 = v100;
  v91 = v96;
  v92 = v97;
  sub_1D6B64124(v36, v37, v20);

  v38 = v89;
  if ((*(v21 + 48))(v20, 1, v89) == 1)
  {
    sub_1D6C1228C(v20, &qword_1EC893918, type metadata accessor for DebugInspectionItem);
    return;
  }

  v40 = v20;
  v41 = v82;
  sub_1D6C1216C(v40, v82, v39);
  v42 = *&v27[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_commandCenter + 8];
  v74[3] = *&v27[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_commandCenter];
  sub_1D725F82C();
  v43 = sub_1D725F7DC();
  v44 = sub_1D725D19C();
  (*(*(v44 - 8) + 56))(v83, 1, 1, v44);
  sub_1D6C12108(0, &unk_1EDF19AF0, MEMORY[0x1E69D7970], MEMORY[0x1E69E6F90]);
  v45 = v80;
  v46 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v101 = *(v80 + 72);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1D7273AE0;
  v48 = swift_allocObject();
  v48[5] = v38;
  v48[6] = sub_1D6C121D0(v49);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48 + 2);
  sub_1D6C12228(v41, boxed_opaque_existential_1, v51);
  v48[7] = 0xD000000000000014;
  v48[8] = 0x80000001D73ED630;
  *(v47 + v46) = v48;
  v52 = *MEMORY[0x1E69D7950];
  v53 = *(v45 + 104);
  v89 = v46;
  v54 = v81;
  v88 = v45 + 104;
  v87 = v53;
  v53((v47 + v46), v52, v81);
  v55 = [*(v84 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_cloudContext) filePathsForDebugAttachments];
  if (!v55)
  {
    goto LABEL_16;
  }

  v56 = v55;
  v74[2] = v42;
  v57 = sub_1D726267C();

  v58 = *(v57 + 16);
  v59 = v75;
  if (v58)
  {
    v74[0] = v47;
    v74[1] = v43;
    *&v91 = MEMORY[0x1E69E7CC0];
    sub_1D6999E2C(0, v58, 0);
    v60 = v91;
    v86 = *MEMORY[0x1E69D7968];
    v80 = v57;
    v61 = (v57 + 40);
    do
    {
      v63 = *(v61 - 1);
      v62 = *v61;
      v64 = swift_allocObject();
      *(v64 + 16) = v63;
      *(v64 + 24) = v62;
      *v59 = v64;
      v87(v59, v86, v54);
      *&v91 = v60;
      v66 = *(v60 + 16);
      v65 = *(v60 + 24);

      if (v66 >= v65 >> 1)
      {
        sub_1D6999E2C((v65 > 1), v66 + 1, 1);
        v60 = v91;
      }

      *(v60 + 16) = v66 + 1;
      (*(v45 + 32))(v60 + v89 + v66 * v101, v59, v54);
      v61 += 2;
      --v58;
    }

    while (v58);

    v67 = v85;
    v47 = v74[0];
  }

  else
  {

    v60 = MEMORY[0x1E69E7CC0];
    v67 = v85;
  }

  swift_getObjectType();
  v90 = v47;
  sub_1D6988494(v60);
  v68 = *(v84 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_radarAttachmentProvider + 24);
  v69 = *(v84 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_radarAttachmentProvider + 32);
  __swift_project_boxed_opaque_existential_1((v84 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_radarAttachmentProvider), v68);
  v70 = (*(v69 + 8))(v68, v69);
  sub_1D6988494(v70);
  (*(v76 + 104))(v77, *MEMORY[0x1E69D79C8], v78);
  v71 = v79;
  sub_1D725F61C();
  v72 = sub_1D725F62C();
  (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
  sub_1D725D9CC();
  if (v67)
  {
  }

  sub_1D6C1228C(v71, &unk_1EC88DF00, MEMORY[0x1E69D8750]);
  sub_1D6C122FC(v82, v73);
}

void sub_1D6C1156C(uint64_t a1, void *a2, __n128 a3)
{
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC9BAD28;
  v4 = sub_1D7262EBC();
  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D5B7E2C0();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_1D725C30C("Inspector tap to radar failed to generate inspections, error=%@", 63, 2, &dword_1D5B42000, v3, v4, v5);

  sub_1D7263F9C();
  v6 = sub_1D726203C();
  v7 = sub_1D726203C();

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = sub_1D726203C();
  v10 = [objc_opt_self() actionWithTitle:v9 style:0 handler:0];

  [v8 addAction_];
  [a2 presentViewController:v8 animated:1 completion:0];
  v11 = [a2 navigationItem];
  sub_1D5B5D358(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D72816C0;
  v13 = sub_1D726203C();
  v14 = [objc_opt_self() systemImageNamed_];

  if (v14)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v14 style:0 target:a2 action:sel_doTapToRadar];

    *(v12 + 32) = v15;
    sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
    v16 = sub_1D726265C();

    [v11 setLeftBarButtonItems_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D6C119BC(__n128 a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v5 = *(v3 + OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections);
  if (result >= *(v5 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v6 = *(v5 + 24 * result + 48);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (result < *(v6 + 16))
  {
    sub_1D6C12004(v6 + (result << 6) + 32, v43);

    sub_1D6C12004(v43, &v38);
    if (v42)
    {
      v7 = v38;
      sub_1D5B5A498(0, &qword_1EC88DCB0, 0x1E69DD028);
      v8 = sub_1D7262D8C();
      v9 = [v8 textLabel];
      if (v9)
      {
        v10 = v9;
        sub_1D5EE763C(v7);
        v11 = sub_1D726203C();

        [v10 setText_];
      }

      v12 = [v8 textLabel];
      if (v12)
      {
        v13 = v12;
        v14 = [objc_opt_self() systemFontOfSize_];
        [v13 setFont_];
      }

      v15 = [v8 textLabel];
      if (!v15)
      {
        sub_1D6C12060(v43);

        return v8;
      }

      v16 = v15;
      [v15 setNumberOfLines_];
    }

    else
    {
      v36[0] = v39;
      v36[1] = v40;
      v37 = v41;
      type metadata accessor for SubtitleTableViewCell();
      v8 = sub_1D7262D8C();
      v17 = [v8 textLabel];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1D726203C();

        [v18 setText_];
      }

      else
      {
      }

      v20 = [v8 textLabel];
      if (v20)
      {
        v21 = v20;
        v22 = [objc_opt_self() systemFontOfSize_];
        [v21 setFont_];
      }

      v23 = [v8 detailTextLabel];
      if (v23)
      {
        v24 = v23;
        sub_1D5F17E90(v36, v34);
        if (v35)
        {
          __swift_project_boxed_opaque_existential_1(v34, v35);
          sub_1D72644BC();
          __swift_destroy_boxed_opaque_existential_1(v34);
        }

        else
        {
          sub_1D5F17DCC(v34);
        }

        v25 = sub_1D726203C();

        [v24 setText_];
      }

      v26 = [v8 detailTextLabel];
      if (v26)
      {
        v27 = v26;
        v28 = [objc_opt_self() secondaryLabelColor];
        [v27 setTextColor_];
      }

      v29 = [v8 detailTextLabel];
      if (v29)
      {
        v30 = v29;
        [v29 setNumberOfLines_];
      }

      v31 = [v8 detailTextLabel];
      if (v31)
      {
        v32 = v31;
        v33 = [objc_opt_self() systemFontOfSize_];
        [v32 setFont_];
      }

      sub_1D5F17DCC(v36);
    }

    sub_1D6C12060(v43);
    return v8;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1D6C12108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6C1216C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for DebugInspectionItem(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D6C121D0(__n128 a1)
{
  result = qword_1EC892968;
  if (!qword_1EC892968)
  {
    type metadata accessor for DebugInspectionItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892968);
  }

  return result;
}

uint64_t sub_1D6C12228(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for DebugInspectionItem(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C1228C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6C12108(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6C122FC(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for DebugInspectionItem(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6C12358()
{
  result = qword_1EC893928;
  if (!qword_1EC893928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893928);
  }

  return result;
}

uint64_t FeedCursorGroup.identifier.getter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1D725AA4C();
}

uint64_t sub_1D6C12480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1D6D92DCC(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = *(a2 - 8);
  (*(v11 + 16))(a3, v3, a2);
  v9 = *(v11 + 56);

  return v9(a3, 0, 1, a2);
}

uint64_t FeedCursorGroup.init(createdDate:group:configIdentifier:serviceConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = sub_1D725891C();
  (*(*(v15 - 8) + 32))(a8, a1, v15);
  v17 = type metadata accessor for FeedCursorGroup(0, a6, a7, v16);
  v18 = v17[9];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a8 + v18, a2, AssociatedTypeWitness);
  v20 = (a8 + v17[10]);
  *v20 = a3;
  v20[1] = a4;
  v21 = *(*(a6 - 8) + 32);
  v22 = a8 + v17[11];

  return v21(v22, a5, a6);
}

uint64_t static FeedCursorGroup.tags(from:excluding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeedCursorGroup(255, a3, a4, a4);
  sub_1D72627FC();
  sub_1D5B65AF4();
  swift_getWitnessTable();
  return sub_1D726242C();
}

uint64_t FeedCursorGroup.createdDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725891C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FeedCursorGroup.group.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t FeedCursorGroup.configIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t static FeedCursorGroup.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for FeedCursorGroup(0, a3, a4, v6);
  swift_getAssociatedConformanceWitness();
  return sub_1D7261FBC() & 1;
}

uint64_t sub_1D6C12B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v20 = a5;
  v19[1] = a2;
  v21 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = v19 - v11;
  v14 = *(type metadata accessor for FeedCursorGroup(0, a3, a4, v13) + 36);
  v15 = *(AssociatedConformanceWitness + 64);
  v16 = swift_checkMetadataState();
  v19[0] = v14;
  v15(v16, AssociatedConformanceWitness);
  swift_getAssociatedConformanceWitness();
  v17 = sub_1D7262B9C();
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  result = 0;
  if ((v17 & 1) == 0)
  {
    result = (*(AssociatedConformanceWitness + 104))(v16, AssociatedConformanceWitness);
  }

  *v20 = result;
  return result;
}

uint64_t sub_1D6C12DCC(uint64_t a1)
{
  result = sub_1D725891C();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D6C12EE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v9 - 8);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  v17 = *(v14 + 80);
  if (v13 <= *(v14 + 84))
  {
    v18 = *(v14 + 84);
  }

  else
  {
    v18 = v13;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v7 + 64) + v15;
  v21 = v16 + 7;
  v22 = v17 + 16;
  if (a2 <= v19)
  {
    goto LABEL_34;
  }

  v23 = ((v22 + ((v21 + (v20 & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + *(*(v9 - 8) + 64);
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_13;
  }

  v27 = ((a2 - v19 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v27))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v27 <= 0xFF)
    {
      if (v27 < 2)
      {
        goto LABEL_34;
      }

LABEL_13:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_34;
      }

LABEL_21:
      v28 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v28 = 0;
      }

      if (v23)
      {
        if (v23 <= 3)
        {
          v29 = ((v22 + ((v21 + (v20 & ~v15)) & 0xFFFFFFF8)) & ~v17) + *(*(v9 - 8) + 64);
        }

        else
        {
          v29 = 4;
        }

        if (v29 > 2)
        {
          if (v29 == 3)
          {
            v30 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v30 = *a1;
          }
        }

        else if (v29 == 1)
        {
          v30 = *a1;
        }

        else
        {
          v30 = *a1;
        }
      }

      else
      {
        v30 = 0;
      }

      return v19 + (v30 | v28) + 1;
    }

    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  if (v8 == v19)
  {
    v31 = *(v7 + 48);
    v32 = a1;
    v33 = v8;
    v34 = v6;
LABEL_36:

    return v31(v32, v33, v34);
  }

  v35 = (a1 + v20) & ~v15;
  if (v12 == v19)
  {
    v36 = *(v11 + 48);

    return v36(v35);
  }

  else
  {
    v37 = (v21 + v35) & 0xFFFFFFFFFFFFFFF8;
    if ((v18 & 0x80000000) != 0)
    {
      v31 = *(v14 + 48);
      v32 = ((v22 + v37) & ~v17);
      v33 = *(v14 + 84);
      v34 = v9;
      goto LABEL_36;
    }

    v38 = *(v37 + 8);
    if (v38 >= 0xFFFFFFFF)
    {
      LODWORD(v38) = -1;
    }

    return (v38 + 1);
  }
}

void sub_1D6C13290(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1D725891C();
  v9 = *(v8 - 8);
  v40 = v9;
  v41 = v8;
  v10 = *(v9 + 84);
  v11 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  v20 = *(v16 + 80);
  if (v15 <= v17)
  {
    v21 = *(v16 + 84);
  }

  else
  {
    v21 = v15;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v9 + 64) + v18;
  v24 = ((v20 + 16 + ((v19 + 7 + (v23 & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + *(*(v11 - 8) + 64);
  if (a3 <= v22)
  {
    v26 = 0;
    v25 = a1;
  }

  else
  {
    v25 = a1;
    if (v24 <= 3)
    {
      v29 = ((a3 - v22 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  if (v22 < a2)
  {
    v27 = ~v22 + a2;
    if (v24 < 4)
    {
      v28 = (v27 >> (8 * v24)) + 1;
      if (v24)
      {
        v31 = v27 & ~(-1 << (8 * v24));
        bzero(v25, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *v25 = v31;
            if (v26 > 1)
            {
LABEL_57:
              if (v26 == 2)
              {
                *&v25[v24] = v28;
              }

              else
              {
                *&v25[v24] = v28;
              }

              return;
            }
          }

          else
          {
            *v25 = v27;
            if (v26 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v25 = v31;
        v25[2] = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(v25, v24);
      *v25 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v26)
    {
      v25[v24] = v28;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&v25[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v25[v24] = 0;
  }

  else if (v26)
  {
    v25[v24] = 0;
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
  if (v10 == v22)
  {
    v32 = v41;
    v33 = *(v40 + 56);
    v34 = v25;
    v35 = a2;
    v36 = v10;
LABEL_39:

    v33(v34, v35, v36, v32);
    return;
  }

  v37 = &v25[v23] & ~v18;
  if (v14 != v22)
  {
    v39 = ((v19 + 7 + v37) & 0xFFFFFFFFFFFFFFF8);
    if ((v21 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *v39 = a2 & 0x7FFFFFFF;
        v39[1] = 0;
      }

      else
      {
        v39[1] = (a2 - 1);
      }

      return;
    }

    v33 = *(v16 + 56);
    v34 = (v39 + v20 + 16) & ~v20;
    v35 = a2;
    v36 = v17;
    v32 = v11;
    goto LABEL_39;
  }

  v38 = *(v13 + 56);

  v38(v37, a2);
}

BOOL sub_1D6C136C4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(v3 + 24);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  FeedKind.init(rawValue:)(v8);
  v9 = FeedKind.rawValue.getter();
  v11 = v10;
  if (v9 == FeedKind.rawValue.getter() && v11 == v12)
  {
  }

  else
  {
    v13 = sub_1D72646CC();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  result = (v7 | a3) == 0;
  if (v7)
  {
    if (a3)
    {

      v15 = sub_1D663D3A4(v7, a3);

      return v15;
    }
  }

  return result;
}

void sub_1D6C137E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  FCFeedDescriptor.feedKind.getter(v22);
  v21 = v22[0];
  v4 = [FCFeedDescriptor.feedTag.getter() identifier];
  swift_unknownObjectRelease();
  v20 = sub_1D726207C();
  v6 = v5;

  v7 = a1;
  v8 = sub_1D713A4FC(a1);
  v9 = [FCFeedDescriptor.feedTag.getter() displayName];
  swift_unknownObjectRelease();
  v10 = sub_1D726207C();
  v12 = v11;

  FCFeedDescriptor.feedTag.getter();
  swift_getObjectType();
  v13 = sub_1D62E5CE0();
  v15 = v14;
  swift_unknownObjectRelease();
  v16 = [FCFeedDescriptor.feedTag.getter() feedNavImageAssetHandle];
  swift_unknownObjectRelease();
  if (!v16)
  {
    v17 = [FCFeedDescriptor.feedTag.getter() asSports];
    swift_unknownObjectRelease();
    if (!v17 || (v18 = [v17 sportsTheme], swift_unknownObjectRelease(), !v18) || (v16 = objc_msgSend(v18, sel_sportsLogoImageCompactAssetHandle), swift_unknownObjectRelease(), !v16))
    {
      v16 = [FCFeedDescriptor.feedTag.getter() asSports];
      swift_unknownObjectRelease();
      if (v16)
      {
        v19 = [v16 sportsTheme];
        swift_unknownObjectRelease();
        if (!v19)
        {

          v16 = 0;
          goto LABEL_3;
        }

        v16 = [v19 sportsLogoImageAssetHandle];
        swift_unknownObjectRelease();
      }
    }
  }

LABEL_3:
  v22[1] = 1;
  *a2 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  *(a2 + 56) = v15;
  *(a2 + 64) = v16;
  *(a2 + 72) = 1;
}

void sub_1D6C13A5C()
{
  sub_1D5C14A38();
  v0 = sub_1D726338C();
  v1 = [objc_opt_self() configurationWithFont_];

  qword_1EC9BAB88 = v1;
}

uint64_t sub_1D6C13AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1D6C13B28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6C13B9C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_1D6C13BFC(*(v0 + 56));
    *(v0 + 80) = v1;
  }

  return v1;
}

uint64_t sub_1D6C13BFC(unint64_t a1)
{
  while (2)
  {
    switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
    {
      case 4uLL:
      case 0x12uLL:
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6C14AF4(0, &qword_1EDF19AC8, &qword_1EDF3B4A0, MEMORY[0x1E69D84C8], 0);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D7273AE0;
        v4 = &qword_1EDF30360;
        v5 = type metadata accessor for FormatLayoutView;
        v6 = &protocol conformance descriptor for FormatLayoutView;
        goto LABEL_9;
      case 7uLL:
        a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        continue;
      case 8uLL:
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6C14AF4(0, &qword_1EDF19AC8, &qword_1EDF3B4A0, MEMORY[0x1E69D84C8], 0);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D7273AE0;
        v4 = &unk_1EDF31108;
        v5 = type metadata accessor for FormatStateView;
        v6 = &unk_1D7358AA4;
        goto LABEL_9;
      case 0xCuLL:
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6C14AF4(0, &qword_1EDF19AC8, &qword_1EDF3B4A0, MEMORY[0x1E69D84C8], 0);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D7273AE0;
        v4 = &unk_1EDF0DAB8;
        v5 = type metadata accessor for FormatLayeredMediaView;
        v6 = &unk_1D7383D78;
        goto LABEL_9;
      case 0xEuLL:
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6C14AF4(0, &qword_1EDF19AC8, &qword_1EDF3B4A0, MEMORY[0x1E69D84C8], 0);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D7273AE0;
        v4 = &unk_1EC893948;
        v5 = type metadata accessor for IssueCoverView;
        v6 = &protocol conformance descriptor for IssueCoverView;
        goto LABEL_9;
      case 0x10uLL:
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6C14AF4(0, &qword_1EDF19AC8, &qword_1EDF3B4A0, MEMORY[0x1E69D84C8], 0);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D7273AE0;
        v4 = &unk_1EC893940;
        v5 = type metadata accessor for FormatVideoPlayerViewController;
        v6 = &unk_1D7328B70;
LABEL_9:
        v7 = sub_1D6C14B54(v4, v5, v6);
        *(v3 + 32) = v2;
        *(v3 + 40) = v7;
        v8 = v2;
        result = v3;
        break;
      default:
        result = MEMORY[0x1E69E7CC0];
        break;
    }

    return result;
  }
}

uint64_t sub_1D6C13ECC()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    v1 = sub_1D6C13F2C(*(v0 + 56));
    *(v0 + 88) = v1;
  }

  return v1;
}

uint64_t sub_1D6C13F2C(unint64_t a1)
{
  while (1)
  {
    v1 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
    if (v1 <= 5)
    {
      break;
    }

    if (v1 != 7)
    {
      if (v1 > 0x14)
      {
        goto LABEL_17;
      }

      if (((1 << v1) & 0x1BFE00) != 0)
      {
        return MEMORY[0x1E69E7CC0];
      }

      if (v1 == 8)
      {
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6C14AF4(0, &qword_1EDF19AB8, &qword_1EDF3B490, MEMORY[0x1E69D85B8], 1);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D7273AE0;
        *(v3 + 56) = type metadata accessor for FormatStateView();
        v5 = &unk_1EDF31110;
        v6 = type metadata accessor for FormatStateView;
        v7 = &unk_1D7358A4C;
        goto LABEL_10;
      }

      if (v1 != 18)
      {
LABEL_17:
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6C14AF4(0, &qword_1EDF19AB8, &qword_1EDF3B490, MEMORY[0x1E69D85B8], 1);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D7273AE0;
        *(v3 + 56) = type metadata accessor for WebEmbedImageView(0);
        v5 = &unk_1EDF107C8;
        v6 = type metadata accessor for WebEmbedImageView;
        v7 = &protocol conformance descriptor for WebEmbedImageView;
        goto LABEL_10;
      }

LABEL_7:
      v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6C14AF4(0, &qword_1EDF19AB8, &qword_1EDF3B490, MEMORY[0x1E69D85B8], 1);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1D7273AE0;
LABEL_9:
      *(v3 + 56) = type metadata accessor for FormatLayoutView(0);
      v5 = &unk_1EDF30368;
      v6 = type metadata accessor for FormatLayoutView;
      v7 = &protocol conformance descriptor for FormatLayoutView;
LABEL_10:
      *(v3 + 64) = sub_1D6C14B54(v5, v6, v7);
      *(v3 + 32) = v2;
      v8 = v2;
      return v3;
    }

    a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6C14AF4(0, &qword_1EDF19AB8, &qword_1EDF3B490, MEMORY[0x1E69D85B8], 1);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1D7273AE0;
      v2 = *(v4 + OBJC_IVAR____TtC8NewsFeed12FormatButton_formatLayoutView);
      goto LABEL_9;
    }

    if (v1 == 4)
    {
      goto LABEL_7;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D6C141D0(unint64_t result)
{
  v1 = 0xFFFFFFFFFFFFFFBLL;
  while (2)
  {
    switch((result >> 59) & 0x1E | (result >> 2) & 1)
    {
      case 1uLL:
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 6uLL:
      case 8uLL:
      case 9uLL:
      case 0xAuLL:
      case 0xBuLL:
      case 0xCuLL:
      case 0xDuLL:
      case 0xEuLL:
      case 0x12uLL:
      case 0x14uLL:
        v2 = result & 0xFFFFFFFFFFFFFFBLL;
        goto LABEL_5;
      case 5uLL:
        v4 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        result = [v4 view];
        if (result)
        {
          goto LABEL_16;
        }

        __break(1u);
LABEL_15:
        v4 = *((result & v1) + 0x10);
        result = [v4 view];
        if (result)
        {
LABEL_16:
          v5 = result;

          result = v5;
        }

        else
        {
          __break(1u);
        }

        break;
      case 7uLL:
        result = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        continue;
      case 0xFuLL:
        goto LABEL_11;
      case 0x10uLL:
        goto LABEL_15;
      case 0x11uLL:
        v3 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        if (v3 >> 62)
        {
          v3 &= 0x3FFFFFFFFFFFFFFFuLL;
        }

        goto LABEL_6;
      case 0x13uLL:
        v4 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        result = [v4 view];
        if (result)
        {
          goto LABEL_16;
        }

        __break(1u);
LABEL_11:
        v2 = *((result & v1) + 0x10);
LABEL_5:
        v3 = *(v2 + 16);
LABEL_6:

        result = v3;
        break;
      default:
        v3 = *(result + 16);
        goto LABEL_6;
    }

    return result;
  }
}

uint64_t sub_1D6C14310()
{
  v1 = *(v0 + 32);

  sub_1D5F33D8C(v1);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6C143C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6C && *(a1 + 8))
  {
    return (*a1 + 108);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6C1441C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6B)
  {
    *result = a2 - 108;
    if (a3 >= 0x6C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1D6C1447C(unint64_t a1)
{
  sub_1D6C14A40(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 3uLL:
      v19 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      FormatLayoutView.prepareForReuse()();
      *&v19[OBJC_IVAR____TtC8NewsFeed12FormatButton_lastRenderStateMask] = 0;
      goto LABEL_28;
    case 4uLL:
    case 0x12uLL:
      v39 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      FormatLayoutView.prepareForReuse()();
      goto LABEL_24;
    case 5uLL:
      v39 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      WebEmbedViewController.prepareForReuse()();
      goto LABEL_24;
    case 6uLL:
      v26 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D61CAB60(0);
      (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
      v28 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loader;
      swift_beginAccess();
      v29 = v26;
      sub_1D61CC41C(v5, v26 + v28);
      swift_endAccess();
      sub_1D6F27384();
      sub_1D6C14A98(v5);
      v30 = &v29[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction];
      v31 = *&v29[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction];
      v32 = *&v29[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction + 8];
      *v30 = 0;
      *(v30 + 1) = 0;
      sub_1D5B74328(v31, v32);
      v33 = &v29[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction];
      v34 = *&v29[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction];
      v35 = *&v29[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction + 8];
      *v33 = 0;
      *(v33 + 1) = 0;
      sub_1D5B74328(v34, v35);

      return;
    case 7uLL:
      v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1D6C1447C(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10));
      v7 = 1 << *(v6 + 32);
      v8 = -1;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      v9 = v8 & *(v6 + 64);
      v10 = (v7 + 63) >> 6;

      v11 = 0;
      break;
    case 8uLL:
      v19 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      FormatLayoutView.prepareForReuse()();
      v38 = &v19[OBJC_IVAR____TtC8NewsFeed15FormatStateView_lastRenderedState];
      *v38 = 0;
      *(v38 + 1) = 0;
LABEL_28:

      return;
    case 0xBuLL:
      v39 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D725F8DC();
      goto LABEL_24;
    case 0xFuLL:

      MEMORY[0x1DA6F6CF0](v25);
      v39 = sub_1D725F64C();

      goto LABEL_24;
    case 0x10uLL:
      v36 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      MEMORY[0x1DA6F6CF0]();
      v39 = sub_1D725F64C();

LABEL_24:
      v37 = v39;

      return;
    case 0x13uLL:
      v20 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      MEMORY[0x1DA6F6CF0]();

      v21 = *&v20[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController];
      v22 = (v21 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction);
      swift_beginAccess();
      v23 = *v22;
      v24 = v22[1];
      *v22 = 0;
      v22[1] = 0;
      sub_1D5B74328(v23, v24);
      *(v21 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted) = 0;

      return;
    default:
      return;
  }

  while (v9)
  {
LABEL_12:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(v6 + 56) + ((v11 << 10) | (16 * v13));
    v15 = *v14;
    v16 = *(v14 + 8);
    if (v16 > 3)
    {
      if (v16 == 4)
      {
        v18 = v15;
        sub_1D725F8DC();
      }
    }

    else if ((v16 - 1) >= 3)
    {
      v17 = v15;
      sub_1D725FC3C();
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }
}

void sub_1D6C14958()
{
  sub_1D6C149EC();

  JUMPOUT(0x1DA6F6FC0);
}

unint64_t sub_1D6C14998()
{
  result = qword_1EC893930;
  if (!qword_1EC893930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893930);
  }

  return result;
}

unint64_t sub_1D6C149EC()
{
  result = qword_1EC893938;
  if (!qword_1EC893938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893938);
  }

  return result;
}

void sub_1D6C14A40(uint64_t a1)
{
  if (!qword_1EDF29E98)
  {
    sub_1D61CAB60(255);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF29E98);
    }
  }
}

uint64_t sub_1D6C14A98(uint64_t a1)
{
  sub_1D6C14A40(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6C14AF4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  if (!*a2)
  {
    sub_1D5B483C4(255, a3, a4, a5 & 1);
    v6 = sub_1D72644CC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D6C14B54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6C14BB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  do
  {
    v7 = *v2++;
    v6 = v7;
    if (v7 < 0)
    {
      v3 = v6 & 0x7FFFFFFFFFFFFFFFLL;
      v5 = *(v3 + 16);
      v4 = *(v3 + 24);
    }

    else
    {
      swift_beginAccess();

      v5 = sub_1D6C14BB8(v8);
      v4 = v9;
    }

    MEMORY[0x1DA6F9910](v5, v4);

    --v1;
  }

  while (v1);
  return 0;
}

uint64_t sub_1D6C14CA4()
{
  v1 = *v0;
  if ((v1 & 0x8000000000000000) == 0)
  {
    return sub_1D6867284();
  }

  v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

  return v3;
}

uint64_t sub_1D6C14CE4(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if ((a2 & 0x8000000000000000) == 0 && sub_1D671DCD4(*(a1 + 16), *(a2 + 16)))
    {
      swift_beginAccess();
      v4 = *(a1 + 24);
      swift_beginAccess();
      v5 = *(a2 + 24);

      sub_1D6338B08(v4, v5);
      v7 = v6;

      if (v7)
      {
        return 1;
      }
    }

    return 0;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  if (*((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18))
  {
    return 1;
  }

  return sub_1D72646CC();
}

void sub_1D6C14DEC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D614F57C(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 16);
  v25[0] = *v2;
  v25[1] = v15;
  v25[2] = *(v2 + 32);
  v26 = *(v2 + 48);
  v16 = *(v2 + 56);
  v17 = sub_1D68A62E4(a1);
  if (!v3)
  {
    v19 = v18;
    v27 = v17;
    if ((v16 & 0xF000000000000007) == 0x7000000000000007)
    {
      v20 = type metadata accessor for FormatPostPurchaseData(0);
      (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
    }

    else
    {
      v21 = (v16 >> 57) & 0x78 | v16 & 7;
      if (v21 == 95)
      {
        (*(v7 + 56))(v14, 2, 2, v6);
      }

      else if (v21 == 127)
      {
        (*(v7 + 56))(v14, 1, 2, v6);
      }

      else
      {
        sub_1D614F658(v16);
        sub_1D6D4FCF8(a1, v16, v10);
        v22 = sub_1D614F680(v16);
        (*(v7 + 32))(v14, v10, v6, v22);
        (*(v7 + 56))(v14, 0, 2, v6);
      }

      v23 = type metadata accessor for FormatPostPurchaseData(0);
      (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
    }

    v24 = type metadata accessor for FormatPurchaseLandingPageData(0);
    sub_1D6BC86F8(v14, a2 + *(v24 + 20));
    *a2 = v27;
    a2[1] = v19;
  }
}

void FormatPurchaseLandingPage.articleIdentifier.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 48);
  *(a1 + 48) = v8;
  sub_1D5E1DA6C(v2, v3, v4, v5, v6, v7, v8);
}

double FormatPurchaseLandingPage.postPurchase.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return sub_1D614F63C(v2);
}

BOOL _s8NewsFeed25FormatPurchaseLandingPageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 56);
  v15 = *(a1 + 48);
  v16 = *(a2 + 48);
  v26 = *a1;
  v27 = v2;
  v28 = v3;
  v29 = v4;
  v30 = v5;
  v31 = v6;
  v32 = v15;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v16;
  sub_1D5E1DA6C(v26, v2, v3, v4, v5, v6, v15);
  sub_1D5E1DA6C(v8, v9, v10, v11, v12, v13, v16);
  LOBYTE(v8) = _s8NewsFeed12FormatStringO2eeoiySbAC_ACtFZ_0(&v26, &v19);
  sub_1D5E1DE98(v19, v20, v21, v22, v23, v24, v25);
  sub_1D5E1DE98(v26, v27, v28, v29, v30, v31, v32);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if ((v7 & 0xF000000000000007) == 0x7000000000000007)
  {
    sub_1D614F63C(v7);
    sub_1D614F63C(v14);
    if ((v14 & 0xF000000000000007) == 0x7000000000000007)
    {
      sub_1D614F680(v7);
      return 1;
    }

    goto LABEL_7;
  }

  v26 = v7;
  if ((v14 & 0xF000000000000007) == 0x7000000000000007)
  {
    sub_1D614F63C(v7);
    sub_1D614F63C(v14);
    sub_1D614F63C(v7);
    sub_1D614F69C(v7);
LABEL_7:
    sub_1D614F680(v7);
    sub_1D614F680(v14);
    return 0;
  }

  v19 = v14;
  sub_1D614F63C(v7);
  sub_1D614F63C(v14);
  sub_1D614F63C(v7);
  v18 = _s8NewsFeed18FormatPostPurchaseO2eeoiySbAC_ACtFZ_0(&v26, &v19);
  sub_1D614F69C(v19);
  sub_1D614F69C(v26);
  sub_1D614F680(v7);
  return v18;
}

unint64_t sub_1D6C152CC(uint64_t a1)
{
  result = sub_1D6C152F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C152F4()
{
  result = qword_1EC893950;
  if (!qword_1EC893950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893950);
  }

  return result;
}

unint64_t sub_1D6C15348(void *a1)
{
  a1[1] = sub_1D6667854();
  a1[2] = sub_1D6703ECC();
  result = sub_1D6C15380();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C15380()
{
  result = qword_1EC893958;
  if (!qword_1EC893958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893958);
  }

  return result;
}

uint64_t sub_1D6C153D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 64))
  {
    return (*a1 + 122);
  }

  v3 = *(a1 + 56);
  v4 = (v3 >> 57) & 0x18 | v3 & 7;
  v5 = ((v3 >> 57) >> 5) | (4 * v4);
  if (-v5 < -125 || v5 == 125)
  {
    v6 = -125;
  }

  else
  {
    v6 = -v5;
  }

  v7 = v6 + 124;
  if (!v4)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_1D6C15440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = (((125 - a2) >> 2) | (32 * (125 - a2)) | ((((125 - a2) >> 2) | (32 * (125 - a2))) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D6C154B8()
{
  v1 = v0[33];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];

  (*(v4 + 8))(v2, v3);
  sub_1D5C40AE0(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D6C15604(uint64_t a1)
{
  sub_1D5C3E7FC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *FeedSponsorshipAdService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  return v0;
}

uint64_t FeedSponsorshipAdService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);

  return swift_deallocClassInstance();
}

unint64_t sub_1D6C15744()
{
  result = qword_1EC893968;
  if (!qword_1EC893968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893968);
  }

  return result;
}

void FormatColorColorExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatColor.bind(binder:context:)(a1, a2);

  if (!v2)
  {
    FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  }
}

double FormatColorColorExpression.color.getter@<D0>(void *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

double FormatColorColorExpression.expression.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

double sub_1D6C15888(uint64_t a1, _OWORD *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  v7[7] = *v2;
  return sub_1D62A7684(a1, v7);
}

uint64_t _s8NewsFeed011FormatColorD10ExpressionV2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v7 = *a2;
  v8 = v2;

  LOBYTE(v2) = static FormatColor.== infix(_:_:)(&v8, &v7);

  if (v2)
  {
    v7 = v4;
    v8 = v3;

    v5 = static FormatColorExpression.== infix(_:_:)(&v8, &v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1D6C1599C(uint64_t a1)
{
  result = sub_1D6C159C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C159C4()
{
  result = qword_1EC893970;
  if (!qword_1EC893970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893970);
  }

  return result;
}

unint64_t sub_1D6C15A18(void *a1)
{
  a1[1] = sub_1D667F790();
  a1[2] = sub_1D6700080();
  result = sub_1D6C15A50();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C15A50()
{
  result = qword_1EC893978;
  if (!qword_1EC893978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893978);
  }

  return result;
}

uint64_t sub_1D6C15AA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 16))
  {
    return (*a1 + 124);
  }

  v3 = (((*(a1 + 8) >> 57) >> 4) | (8 * ((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6C15B00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t FormatStateMachineDefinition.input.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1D618ECBC(v2, v3, v4, v5, v6);
}

uint64_t sub_1D6C15B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = *v5;
  v8 = v5[2];
  v7 = v5[3];
  v9 = v5[4];
  v10 = v5[5];
  v11 = *(v5 + 48);
  v30 = v5[1];
  sub_1D5B49714(0, &unk_1EDF1B078, &type metadata for FormatStateMachineEvent);
  sub_1D6C184CC();
  sub_1D6C18534();
  v12 = sub_1D72623BC();
  v31 = v11;
  if (v11)
  {

    v27 = v9;
    if (v9)
    {
      v13 = qword_1EDF16528;

      if (v13 != -1)
      {
        swift_once();
      }

      sub_1D69EEC60(a2, a3);
      if (v14)
      {
        v15 = v9;
        v16 = v10;
        sub_1D5E32940(v8, v7, v15, v10, 1);
      }

      else
      {
        v16 = v10;
      }

      sub_1D69D10F8(0);
      swift_allocObject();
      v21 = 0;
      v20 = 0;
      v19 = sub_1D725AB4C() | 0x8000000000000000;
    }

    else
    {
      v16 = v10;
      sub_1D69D10F8(0);
      swift_allocObject();

      v19 = sub_1D725AB4C() | 0x8000000000000000;
      v20 = a5;

      v21 = a4;
    }
  }

  else
  {
    v17 = v12;

    sub_1D6AC91DC(a1, v8, v7, v9, v10, v17);
    v19 = v18;

    if (v6)
    {
      return v17;
    }

    v27 = v9;
    v16 = v10;
    v21 = 0;
    v20 = 0;
  }

  type metadata accessor for FormatStateMachineData();
  v17 = swift_allocObject();
  *(v17 + 16) = v29;
  *(v17 + 24) = v30;
  *(v17 + 32) = v8;
  *(v17 + 40) = v7;
  *(v17 + 48) = v27;
  *(v17 + 56) = v16;
  *(v17 + 64) = v31;
  *(v17 + 72) = v19;
  *(v17 + 80) = v21;
  *(v17 + 88) = v20;

  sub_1D618ECBC(v8, v7, v27, v16, v31);
  return v17;
}

void FormatStateMachineDefinition.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6C18020(0, &qword_1EDF19BD0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C17EA4();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1D5B49714(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158]);
    v44 = 0;
    sub_1D5B99874(&qword_1EDF3C830, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D726431C();
    v11 = v36;
    sub_1D5B49714(0, &unk_1EDF1B078, &type metadata for FormatStateMachineEvent);
    v44 = 1;
    sub_1D6C18110(&qword_1EDF1B068, sub_1D6C17EF8, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    v34 = v36;
    v44 = 2;
    sub_1D6C17F4C();
    sub_1D726431C();
    v32 = v37;
    v33 = v36;
    v12 = v11;
    v13 = v39;
    v30 = v12;
    v31 = v38;
    v14 = v40;
    v43 = v40;
    v36 = v12;
    v37 = v34;
    v38 = v33;
    v39 = v32;
    v40 = v31;
    v41 = v13;
    v42 = v43;

    v35 = v13;
    v15 = sub_1D618ECBC(v33, v32, v31, v13, v14);
    sub_1D6C162B0(v15, v16);
    v18 = v38;
    v17 = v39;
    v28 = v41;
    v29 = v40;
    LODWORD(v27) = v42;

    sub_1D5E32940(v18, v17, v29, v28, v27);
    (*(v7 + 8))(v10, v6);
    v19 = v43;
    v20 = v31;
    v22 = v33;
    v21 = v34;
    *a2 = v30;
    *(a2 + 8) = v21;
    v23 = v32;
    *(a2 + 16) = v22;
    *(a2 + 24) = v23;
    v24 = v35;
    *(a2 + 32) = v20;
    *(a2 + 40) = v24;
    *(a2 + 48) = v19;
    v25 = v19;

    sub_1D618ECBC(v22, v23, v20, v24, v25);
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_1D5E32940(v22, v23, v20, v24, v25);
  }
}

void sub_1D6C162B0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (!*(*v2 + 16))
  {
    sub_1D5E2D970();
    swift_allocError();
    *v28 = 2;
    v28[1] = 0;
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = 0x8000000000000000;
    swift_willThrow();
    return;
  }

  v5 = v3;
  v63 = *(*v2 + 16);
  v73 = v4;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 40);
  v65 = *(v2 + 32);
  v66 = v9;
  v64 = *(v2 + 48);
  v75 = MEMORY[0x1E69E7CD0];
  v10 = *(v6 + 16);
  v72 = v8;
  v69 = v10;
  v70 = v7;
  if (v10)
  {
    v11 = 0;
    v71 = v6 + 32;
    v67 = v6;
    while (v11 < *(v6 + 16))
    {
      v12 = (v71 + 40 * v11);
      v13 = *v12;
      v14 = v12[1];
      v16 = v12[2];
      v15 = v12[3];
      v17 = v12[4];
      v74[0] = v15;
      v74[1] = v17;
      MEMORY[0x1EEE9AC00](a1, a2);
      v62[2] = v74;

      v18 = v73;
      if ((sub_1D5BD0418(sub_1D5BD0538, v62, v73) & 1) == 0)
      {

        sub_1D5E2D970();
        swift_allocError();
        *v58 = v15;
        *(v58 + 8) = v17;
        *(v58 + 16) = v18;
        *(v58 + 24) = xmmword_1D733BDF0;
        swift_willThrow();

        return;
      }

      v19 = sub_1D6C1798C(v18, v16);

      v20 = sub_1D5BFC390(v19, v16);

      v21 = v75;
      if ((v20 & 1) == 0)
      {

        sub_1D5E2D970();
        swift_allocError();
        v59 = v73;
        *v60 = v16;
        v60[1] = v59;
        v60[2] = 0;
        v60[3] = 0;
        v60[4] = 0x5000000000000000;
LABEL_51:
        swift_willThrow();

        return;
      }

      if (*(v75 + 16))
      {
        v68 = v5;
        sub_1D7264A0C();

        sub_1D72621EC();
        v22 = sub_1D7264A5C();
        v23 = -1 << *(v21 + 32);
        v24 = v22 & ~v23;
        if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
        {
          v25 = ~v23;
          while (1)
          {
            v26 = (*(v21 + 48) + 16 * v24);
            v27 = *v26 == v13 && v26[1] == v14;
            if (v27 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          sub_1D5E2D970();
          swift_allocError();
          *v29 = v13;
          v29[1] = v14;
          v29[2] = 0;
          v29[3] = 0;
          v29[4] = 0x5000000000000004;
          swift_willThrow();

          return;
        }

LABEL_4:

        v5 = v68;
      }

      ++v11;

      sub_1D5B860D0(v74, v13, v14);

      v7 = v70;
      v8 = v72;
      v6 = v67;
      if (v11 == v69)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_56;
  }

LABEL_21:
  if (v64)
  {
    v30 = (v73 + 40);
    v31 = -v63;
    v32 = -1;
    while (1)
    {
      if (v31 + v32 == -1)
      {
        sub_1D618ECBC(v7, v8, v65, v66, 1);

        sub_1D5E2D970();
        swift_allocError();
        *v57 = v7;
        *(v57 + 8) = v8;
        *(v57 + 16) = v73;
        *(v57 + 24) = xmmword_1D733BE10;
        goto LABEL_51;
      }

      if (++v32 >= *(v73 + 16))
      {
        break;
      }

      if (*(v30 - 1) != v7 || v8 != *v30)
      {
        v30 += 2;
        if ((sub_1D72646CC() & 1) == 0)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return;
  }

  v34 = *(v8 + 16);
  sub_1D618ECBC(v7, v8, v65, v66, 0);
  v35 = v75;

  v69 = v34;
  if (v34)
  {
    v36 = 0;
    v71 = v8 + 32;
    v37 = v35 + 56;
    while (1)
    {
      v68 = v5;
      if (v36 >= *(v8 + 16))
      {
        goto LABEL_57;
      }

      v38 = v71 + 40 * v36;
      v40 = *v38;
      v39 = *(v38 + 8);
      v41 = *(v38 + 16);
      v43 = *(v38 + 24);
      v42 = *(v38 + 32);
      v44 = *(v35 + 16);
      v73 = v39;
      if (!v44)
      {
        break;
      }

      sub_1D7264A0C();
      v45 = v40;
      sub_1D5D03180(v40, v39, v41);
      swift_bridgeObjectRetain_n();
      sub_1D72621EC();
      v46 = sub_1D7264A5C();
      v47 = -1 << *(v35 + 32);
      v48 = v46 & ~v47;
      if (((*(v37 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
      {
LABEL_44:

        v52 = v72;

        v40 = v45;
LABEL_45:
        sub_1D5E2D970();
        swift_allocError();
        *v53 = v43;
        *(v53 + 8) = v42;
        *(v53 + 16) = v35;
        *(v53 + 24) = xmmword_1D733BE00;
        swift_willThrow();

        sub_1D5E32940(v70, v52, v65, v66, 0);
        sub_1D5D07BA8(v40, v73, v41);

        return;
      }

      ++v36;
      v49 = ~v47;
      while (1)
      {
        v50 = (*(v35 + 48) + 16 * v48);
        v51 = *v50 == v43 && v50[1] == v42;
        if (v51 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }

        v48 = (v48 + 1) & v49;
        if (((*(v37 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      sub_1D5D07BA8(v45, v73, v41);

      v5 = v68;
      v8 = v72;
      if (v36 == v69)
      {
        goto LABEL_46;
      }
    }

    sub_1D5D03180(v40, v39, v41);

    v52 = v72;

    goto LABEL_45;
  }

LABEL_46:

  v54 = v66;

  v55 = v65;
  v56 = sub_1D5BE240C(v65, v54, v35);

  if (v56)
  {
  }

  else
  {
    sub_1D5E2D970();
    swift_allocError();
    *v61 = v55;
    *(v61 + 8) = v54;
    *(v61 + 16) = v35;
    *(v61 + 24) = xmmword_1D733BE00;
    swift_willThrow();
  }

  sub_1D5E32940(v70, v8, v55, v54, 0);
}

uint64_t FormatStateMachineDefinition.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v91 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v99 = &v87 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v87 - v11;
  sub_1D6C17FA0(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v92 = v1[1];
  v19 = *(v1 + 1);
  v89 = *(v1 + 2);
  v90 = v19;
  v108 = *(v1 + 48);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D6C17EA4();
  sub_1D5D2EE70(&type metadata for FormatStateMachineDefinition, &type metadata for FormatStateMachineDefinition.CodingKeys, v23, v20, &type metadata for FormatStateMachineDefinition, &type metadata for FormatStateMachineDefinition.CodingKeys, &type metadata for FormatVersions.JazzkonG, v21, v17, v22, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD18);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v96 = v25;
  v97 = v24;
  v94 = v26 + 16;
  v95 = v27;
  (v27)(v12);
  v93 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v105 = v18;
  v109 = 0;
  v28 = &v17[*(v14 + 44)];
  v29 = *v28;
  v30 = *(v28 + 1);
  v31 = swift_allocObject();
  v103 = &v87;
  *(v31 + 16) = 0;
  *(v31 + 24) = v29;
  *(v31 + 32) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  *(&v87 - 4) = sub_1D5B4AA6C;
  *(&v87 - 3) = 0;
  v85 = sub_1D6C185C0;
  v86 = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v98 = v29;
  *(v34 + 24) = v29;
  *(v34 + 32) = v30;
  sub_1D6C18020(0, &qword_1EDF025A0, MEMORY[0x1E69E6F58]);
  v36 = v35;
  v37 = sub_1D6C18084();
  swift_retain_n();
  v100 = v37;
  v101 = v36;
  v38 = sub_1D72647CC();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = 0;
  v40 = *(v14 + 36);
  v41 = v12;
  v42 = &v17[v40];
  v102 = v17;
  v43 = *&v17[v40 + 24];
  v44 = *&v17[v40 + 32];
  v45 = __swift_project_boxed_opaque_existential_1(v42, v43);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  *(&v87 - 4) = sub_1D60565EC;
  *(&v87 - 3) = (&v87 - 6);
  v85 = sub_1D6C180F8;
  v86 = v34;
  v49 = v104;
  sub_1D5D2BC70(v41, sub_1D60566B0, v50, sub_1D60565EC, (&v87 - 6), v43, v44);
  if (v49)
  {
    sub_1D5D2D108(v41, type metadata accessor for FormatVersionRequirement);

    v51 = v102;
  }

  else
  {
    v88 = v42;
    v104 = v30;

    sub_1D5B49714(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158]);
    sub_1D5B99874(&qword_1EDF04A90, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    v51 = v102;
    sub_1D72647EC();
    sub_1D5D2D108(v41, type metadata accessor for FormatVersionRequirement);

    v53 = v99;
    v95(v99, v96, v97);
    swift_storeEnumTagMultiPayload();
    *&v105 = v92;
    v109 = 1;
    v54 = swift_allocObject();
    v103 = &v87;
    *(v54 + 16) = 1;
    v55 = v98;
    v56 = v104;
    *(v54 + 24) = v98;
    *(v54 + 32) = v56;
    MEMORY[0x1EEE9AC00](v54, v57);
    *(&v87 - 4) = sub_1D5B4AA6C;
    *(&v87 - 3) = 0;
    v85 = sub_1D6C185C0;
    v86 = v58;
    v59 = swift_allocObject();
    *(v59 + 16) = 1;
    *(v59 + 24) = v55;
    *(v59 + 32) = v56;
    swift_retain_n();
    v60 = sub_1D72647CC();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = 1;
    v62 = *(v88 + 3);
    v63 = *(v88 + 4);
    v64 = __swift_project_boxed_opaque_existential_1(v88, v62);
    MEMORY[0x1EEE9AC00](v64, v65);
    MEMORY[0x1EEE9AC00](v66, v67);
    *(&v87 - 4) = sub_1D615B4A4;
    *(&v87 - 3) = (&v87 - 6);
    sub_1D5D2BC70(v53, sub_1D615B49C, v68, sub_1D615B4A4, (&v87 - 6), v62, v63);

    sub_1D5B49714(0, &unk_1EDF1B078, &type metadata for FormatStateMachineEvent);
    sub_1D6C18110(&qword_1EDF04D68, sub_1D6C1818C, MEMORY[0x1E69E6300]);
    sub_1D72647EC();
    sub_1D5D2D108(v99, type metadata accessor for FormatVersionRequirement);

    v69 = v91;
    v95(v91, v96, v97);
    swift_storeEnumTagMultiPayload();
    v105 = v90;
    v106 = v89;
    v107 = v108;
    v109 = 2;
    v70 = swift_allocObject();
    v103 = &v87;
    *(v70 + 16) = 2;
    v71 = v98;
    v72 = v104;
    *(v70 + 24) = v98;
    *(v70 + 32) = v72;
    MEMORY[0x1EEE9AC00](v70, v73);
    *(&v87 - 4) = sub_1D5B4AA6C;
    *(&v87 - 3) = 0;
    v85 = sub_1D6C185C0;
    v86 = v74;
    v75 = swift_allocObject();
    *(v75 + 16) = 2;
    *(v75 + 24) = v71;
    *(v75 + 32) = v72;
    swift_retain_n();
    v76 = sub_1D72647CC();
    v77 = swift_allocObject();
    *(v77 + 16) = v76;
    *(v77 + 24) = 2;
    v78 = *(v88 + 3);
    v79 = *(v88 + 4);
    v80 = __swift_project_boxed_opaque_existential_1(v88, v78);
    MEMORY[0x1EEE9AC00](v80, v81);
    MEMORY[0x1EEE9AC00](v82, v83);
    *(&v87 - 4) = sub_1D615B4A4;
    *(&v87 - 3) = (&v87 - 6);
    v85 = sub_1D6C185C0;
    v86 = v75;
    sub_1D5D2BC70(v69, sub_1D615B49C, v84, sub_1D615B4A4, (&v87 - 6), v78, v79);

    sub_1D6C181E0();
    sub_1D72647EC();
    sub_1D5D2D108(v69, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2D108(v51, sub_1D6C17FA0);
}

uint64_t sub_1D6C17548(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x73746E657665;
  if (v2 != 1)
  {
    v5 = 0x7475706E69;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x736574617473;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x73746E657665;
  if (*a2 != 1)
  {
    v8 = 0x7475706E69;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x736574617473;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6C17634()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6C176CC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6C17750(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6C177E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6C18480(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6C17814(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x73746E657665;
  if (v2 != 1)
  {
    v5 = 0x7475706E69;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736574617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D6C17868()
{
  v1 = 0x73746E657665;
  if (*v0 != 1)
  {
    v1 = 0x7475706E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736574617473;
  }
}

unint64_t sub_1D6C178B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6C18480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6C178E0(uint64_t a1)
{
  v2 = sub_1D6C17EA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C1791C(uint64_t a1)
{
  v2 = sub_1D6C17EA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6C1798C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v19[6] = *MEMORY[0x1E69E9840];
  v18 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v19[3] = &v18;
  v19[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v14 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v8 = v14, (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v8);
    v10 = &v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    sub_1D6C17B2C(v10, v7, v3, a2);
    v12 = v11;
  }

  else
  {
    v15 = v14;
    v16 = swift_slowAlloc();
    bzero(v16, v15);
    sub_1D6C18588(v16, v7, v19);
    v12 = v19[0];

    MEMORY[0x1DA6FD500](v16, -1, -1);
  }

  return v12;
}

void sub_1D6C17B2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_1D7264A0C();

          sub_1D72621EC();
          v13 = sub_1D7264A5C();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_1D72646CC() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = a1[v16];
        a1[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  sub_1D6EC09F8(a1, a2, v24, a4);
}

uint64_t sub_1D6C17D0C(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_1D5D290FC(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FormatStateMachineDefinition.CodingKeys;
  *(inited + 64) = sub_1D6C17EA4();
  *(inited + 32) = v3;

  sub_1D5D291B8(inited);
  return a1;
}

uint64_t _s8NewsFeed28FormatStateMachineDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v16 = *(a1 + 40);
  v15 = *(a1 + 48);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (sub_1D5BF1C0C(*a1, *a2) & 1) != 0 && (sub_1D635AA9C(v2, v6), (v12))
  {
    v22 = v3;
    v23 = v4;
    v24 = v5;
    v25 = v16;
    v26 = v15;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    sub_1D618ECBC(v3, v4, v5, v16, v15);
    sub_1D618ECBC(v7, v8, v9, v10, v11);
    v13 = _s8NewsFeed23FormatStateMachineInputO2eeoiySbAC_ACtFZ_0(&v22, &v17);
    sub_1D5E32940(v17, v18, v19, v20, v21);
    sub_1D5E32940(v22, v23, v24, v25, v26);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_1D6C17EA4()
{
  result = qword_1EDF217C8;
  if (!qword_1EDF217C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF217C8);
  }

  return result;
}

unint64_t sub_1D6C17EF8()
{
  result = qword_1EDF27020;
  if (!qword_1EDF27020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27020);
  }

  return result;
}

unint64_t sub_1D6C17F4C()
{
  result = qword_1EDF27008;
  if (!qword_1EDF27008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27008);
  }

  return result;
}

void sub_1D6C17FA0(uint64_t a1)
{
  if (!qword_1EDF087A0)
  {
    sub_1D6C18020(255, &qword_1EDF025A0, MEMORY[0x1E69E6F58]);
    v3 = v2;
    v4 = sub_1D6C18084();
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF087A0);
    }
  }
}

void sub_1D6C18020(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6C17EA4();
    v7 = a3(a1, &type metadata for FormatStateMachineDefinition.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6C18084()
{
  result = qword_1EDF025A8;
  if (!qword_1EDF025A8)
  {
    sub_1D6C18020(255, &qword_1EDF025A0, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF025A8);
  }

  return result;
}

uint64_t sub_1D6C18110(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49714(255, &unk_1EDF1B078, &type metadata for FormatStateMachineEvent);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6C1818C()
{
  result = qword_1EDF0D338;
  if (!qword_1EDF0D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D338);
  }

  return result;
}

unint64_t sub_1D6C181E0()
{
  result = qword_1EDF0D328;
  if (!qword_1EDF0D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D328);
  }

  return result;
}

unint64_t sub_1D6C18234(void *a1)
{
  a1[1] = sub_1D66C91DC();
  a1[2] = sub_1D66F61C4();
  result = sub_1D6C1826C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C1826C()
{
  result = qword_1EC893980;
  if (!qword_1EC893980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893980);
  }

  return result;
}

uint64_t sub_1D6C182C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1D6C18308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D6C1837C()
{
  result = qword_1EC893988;
  if (!qword_1EC893988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893988);
  }

  return result;
}

unint64_t sub_1D6C183D4()
{
  result = qword_1EDF217B8;
  if (!qword_1EDF217B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF217B8);
  }

  return result;
}

unint64_t sub_1D6C1842C()
{
  result = qword_1EDF217C0;
  if (!qword_1EDF217C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF217C0);
  }

  return result;
}

unint64_t sub_1D6C18480(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6C184CC()
{
  result = qword_1EDF1B070;
  if (!qword_1EDF1B070)
  {
    sub_1D5B49714(255, &unk_1EDF1B078, &type metadata for FormatStateMachineEvent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B070);
  }

  return result;
}

unint64_t sub_1D6C18534()
{
  result = qword_1EDF27028;
  if (!qword_1EDF27028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27028);
  }

  return result;
}

void sub_1D6C18588(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1D6C17B2C(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

uint64_t sub_1D6C185D4(void *a1)
{
  v3 = v1;
  sub_1D6C1B170(0, &qword_1EC893A30, sub_1D6C1B11C, &type metadata for A12_V19.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C1B11C();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6C1AA88(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6C1881C(uint64_t a1)
{
  v2 = sub_1D6C1B11C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C18858(uint64_t a1)
{
  v2 = sub_1D6C1B11C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6C18894@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6C1AE7C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6C188F4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6C1ABC0();

  return sub_1D725A24C();
}

uint64_t sub_1D6C18970@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6C1B170(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D6C18A2C(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v86 = a2;
  v75 = a3;
  v7 = type metadata accessor for FeedHeadline(0);
  v99 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v87 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v89 = &v75 - v12;
  v13 = sub_1D725895C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for GroupLayoutContext(0);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v18);
  v84 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v75 - v22;
  v79 = &v75 - v22;
  v88 = type metadata accessor for GroupLayoutBindingContext(0);
  v80 = *(v88 - 1);
  MEMORY[0x1EEE9AC00](v88, v24);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v5;
  v28 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  v85 = a1;
  sub_1D5BE3ED8(a1, v26, type metadata accessor for GroupLayoutBindingContext);
  v81 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v86, v23, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v78 = sub_1D725893C();
  v77 = v29;
  (*(v14 + 8))(v17, v13);
  v97 = &type metadata for A12_V19;
  v30 = sub_1D5ECE874();
  v98 = v30;
  LOBYTE(v95) = v27;
  *(&v95 + 1) = v28;
  v96 = v5;
  type metadata accessor for GroupLayoutKey(0);
  v31 = swift_allocObject();
  sub_1D5BEE8A0(v28, v5);
  v90[0] = sub_1D7264C5C();
  v90[1] = v32;
  v93 = 95;
  v94 = 0xE100000000000000;
  v91 = 45;
  v92 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v33 = sub_1D7263A6C();
  v35 = v34;
  v36 = v31;

  *(v31 + 16) = v33;
  *(v31 + 24) = v35;
  v37 = (v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v38 = v77;
  *v37 = v78;
  v37[1] = v38;
  sub_1D5B68374(&v95, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v39 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  v40 = v26;
  v41 = v84;
  sub_1D5BDA904(v40, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v80 + 56))(v31 + v39, 0, 1, v88);
  v42 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v79, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v82 + 56))(v31 + v42, 0, 1, v83);
  __swift_destroy_boxed_opaque_existential_1(&v95);
  v97 = &type metadata for A12_V19;
  v98 = v30;
  LOBYTE(v95) = v27;
  *(&v95 + 1) = v28;
  v96 = v5;
  sub_1D5BE3ED8(v86, v41, v81);
  sub_1D5BD39E8(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  inited = swift_initStackObject();
  v44 = MEMORY[0x1E69E7CC0];
  v86 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v45 = (inited + 16);
  swift_beginAccess();
  sub_1D5BEE8A0(v28, v5);
  v46 = sub_1D5C0F8FC(0, 1, 1, v44);
  v48 = v46[2];
  v47 = v46[3];
  v49 = v48 + 1;
  if (v48 >= v47 >> 1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v46[2] = v49;
    v50 = &v46[2 * v48];
    v50[4] = sub_1D63106DC;
    v50[5] = 0;
    *v45 = v46;
    swift_endAccess();
    if (!*(*&v85[v88[14]] + 16) || (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v51 & 1) == 0) || (v52 = , v45 = sub_1D5C14D80(v52), , !v45))
    {
      v59 = v76;
      if (!qword_1F5113D30 || !qword_1F5113D38)
      {

        v63 = MEMORY[0x1E69E7CC0];
        goto LABEL_28;
      }

      v90[0] = &unk_1F5113D10;
      v4 = v76;
      sub_1D5E239F4(v90);
      if (v59)
      {
        goto LABEL_37;
      }

      v60 = v90[0];
      if (*(v90[0] + 2))
      {
LABEL_18:
        v61 = *(v60 + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v62, "FeedHeadline");
        v62[13] = 0;
        *(v62 + 7) = -5120;
        *(v62 + 2) = 0;
        *(v62 + 3) = 0;
        *(v62 + 4) = 0;
        *(v62 + 5) = v61;
        *(v62 + 6) = 0;
        *(v62 + 7) = 0;
        v62[64] = 0;
        swift_willThrow();
        swift_setDeallocating();

        sub_1D5BE7BCC(v41, type metadata accessor for GroupLayoutContext);
        __swift_destroy_boxed_opaque_existential_1(&v95);
        return;
      }

      __break(1u);
      goto LABEL_35;
    }

    v83 = v36;
    v41 = v45[2];
    if (!v41)
    {
      break;
    }

    v36 = 0;
    v48 = MEMORY[0x1E69E7CC0];
    v49 = v87;
    while (1)
    {
      v47 = v45[2];
      if (v36 >= v47)
      {
        break;
      }

      v53 = (*(v99 + 80) + 32) & ~*(v99 + 80);
      v54 = *(v99 + 72);
      v55 = v89;
      sub_1D5BE3ED8(v45 + v53 + v54 * v36, v89, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v55, v49, type metadata accessor for FeedHeadline);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90[0] = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v48 + 16) + 1, 1);
        v49 = v87;
        v48 = v90[0];
      }

      v58 = *(v48 + 16);
      v57 = *(v48 + 24);
      v46 = (v58 + 1);
      if (v58 >= v57 >> 1)
      {
        sub_1D5C0F91C((v57 > 1), v58 + 1, 1);
        v49 = v87;
        v48 = v90[0];
      }

      ++v36;
      *(v48 + 16) = v46;
      sub_1D5BDA904(v49, v48 + v53 + v58 * v54, type metadata accessor for FeedHeadline);
      if (v41 == v36)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_33:
    v46 = sub_1D5C0F8FC((v47 > 1), v49, 1, v46);
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v64 = v85;
  if ((*v85 & 1) == 0)
  {

    sub_1D62F071C(v48);
    v66 = v65;

    v48 = v66;
  }

  v67 = *&v64[v88[18]];
  v68 = *&v64[v88[19]];
  if (__OFSUB__(v67, v68))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v69 = sub_1D5C0FAD4(v48, v67 - v68);
  v63 = sub_1D5C11E10(&unk_1F5113D10, v69, v45);

  if (v63)
  {

    goto LABEL_27;
  }

  v63 = sub_1D5C11E10(&unk_1F5113D10, v48, v45);

  if (!v63)
  {
    v90[0] = &unk_1F5113D10;
    v4 = v76;
    sub_1D5E239F4(v90);
    if (v4)
    {
LABEL_37:

      __break(1u);
      return;
    }

    v60 = v90[0];
    v41 = v84;
    if (*(v90[0] + 2))
    {
      goto LABEL_18;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_27:
  strcpy(v90, "FeedHeadline");
  BYTE5(v90[1]) = 0;
  HIWORD(v90[1]) = -5120;
  v90[2] = 0;
  v90[3] = 0;

  v71 = sub_1D5C107C4(v70);

  sub_1D5BDACA8(v90, v71);
  swift_setDeallocating();

  v41 = v84;
  v36 = v83;
LABEL_28:
  v72 = type metadata accessor for A12_V19.Bound(0);
  v73 = v75;
  v75[3] = v72;
  v73[4] = sub_1D6C1AA88(&qword_1EC8939A0, type metadata accessor for A12_V19.Bound, &unk_1D733C230);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  *boxed_opaque_existential_1 = v36;
  sub_1D5B63F14(&v95, (boxed_opaque_existential_1 + 1));
  sub_1D5BDA904(v41, boxed_opaque_existential_1 + *(v72 + 24), type metadata accessor for GroupLayoutContext);
  *(boxed_opaque_existential_1 + *(v72 + 28)) = v63;
}

uint64_t sub_1D6C1956C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for A12_V19.Bound(0);
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v11 = *(*(v9 + *(v10 + 40)) + 16);
  v12 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v11 + 16, v39);
  sub_1D5B68374(v11 + 56, v38);
  v13 = v12 * *(v11 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v39, inited + 16);
  sub_1D5B63F14(v38, inited + 56);
  *(inited + 96) = v13;
  v37[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v37, v41);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  __swift_destroy_boxed_opaque_existential_1((inited + 56));
  v15 = *(v2 + *(v8 + 28));
  v36[2] = v2;
  v36[3] = v41;
  v16 = sub_1D5ECA650(sub_1D6C1AAD0, v36, v15);
  *&v39[0] = v16;
  sub_1D5BD39E8(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  v18 = v17;
  sub_1D6C1AAF0(&qword_1EC880610, MEMORY[0x1E69E6340]);
  v33 = v18;
  v19 = sub_1D7262C1C();
  v20 = *MEMORY[0x1E69D7130];
  v21 = sub_1D7259D1C();
  (*(*(v21 - 8) + 104))(v7, v20, v21);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  v35 = v19;
  sub_1D6C1AC68(0, &qword_1EC8939C0, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v22 = v40;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D6C1AAF0(&qword_1EDF1B248, MEMORY[0x1E69E6328]);
  v23 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v31 = v39[1];
  v32 = v39[0];
  *&v39[0] = v16;
  *&v38[0] = v22;
  MEMORY[0x1EEE9AC00](v23, v24);

  v25 = sub_1D725C00C();

  v26 = v34;
  *v34 = 0;
  v27 = v32;
  *(v26 + 24) = v31;
  *(v26 + 8) = v27;
  *&v39[0] = v25;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v28 = sub_1D72623BC();

  v29 = MEMORY[0x1E69E7CC0];
  *(v26 + 5) = v28;
  *(v26 + 6) = v29;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_1D6C19A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6C19B14(uint64_t a1, uint64_t a2)
{
  sub_1D6C1B170(0, &qword_1EC8939D8, sub_1D6C1AB6C, &type metadata for A12_V19.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 12;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D6C1AC68(0, &qword_1EC8939E0, MEMORY[0x1E69D7150]);
  sub_1D6C1AC24(&qword_1EC8939E8, &qword_1EC8939E0, v11, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

void sub_1D6C19D00(uint64_t a1, uint64_t a2)
{
  sub_1D6C1B170(0, &qword_1EC8939D8, sub_1D6C1AB6C, &type metadata for A12_V19.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v24 - v8);
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + 32;
    v12 = sub_1D725994C();
    v30 = *MEMORY[0x1E69D6F50];
    v31 = v12;
    v29 = v12 - 8;
    v28 = *MEMORY[0x1E69D73C0];
    v26 = (v6 + 8);
    v27 = v6 + 104;
    v25 = *MEMORY[0x1E69D7460];
    v34 = a1;
    v13 = (v6 + 104);
    do
    {
      v33 = v10;
      v11 += 8;
      v35 = a1;
      v14 = v31;
      v15 = swift_allocBox();
      (*(*(v14 - 8) + 104))(v16, v30, v14);
      *v9 = v15;
      v17 = *v13;
      (*v13)(v9, v28, v5);
      v18 = MEMORY[0x1E69D6F38];
      sub_1D6C1AC68(0, &qword_1EC8939F0, MEMORY[0x1E69D6F38]);
      v32 = v19;
      sub_1D6C1AC24(&qword_1EC8939F8, &qword_1EC8939F0, v18, MEMORY[0x1E69D6F40]);

      sub_1D7259A9C();
      v20 = *v26;
      (*v26)(v9, v5);
      v35 = v34;
      v21 = v17(v9, v25, v5);
      MEMORY[0x1EEE9AC00](v21, v22);
      v23 = v33;
      sub_1D72599EC();

      a1 = v34;
      v20(v9, v5);
      v10 = v23 - 1;
    }

    while (v10);
  }
}

void sub_1D6C1A01C(uint64_t a1, uint64_t a2)
{
  sub_1D6C1B170(0, &qword_1EC8939D8, sub_1D6C1AB6C, &type metadata for A12_V19.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v21 - v8);
  v10 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = v27 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    v25 = *MEMORY[0x1E69D7490];
    v23 = (v6 + 8);
    v24 = (v6 + 104);
    v22 = v5;
    do
    {
      sub_1D5BE3ED8(v16, v14, type metadata accessor for HeadlineViewLayout.Context);
      v28 = a1;
      v17 = swift_allocObject();
      *(v17 + 16) = 6;
      *v9 = v17;
      v18 = (*v24)(v9, v25, v5);
      MEMORY[0x1EEE9AC00](v18, v19);
      v20 = MEMORY[0x1E69D6F38];
      sub_1D6C1AC68(0, &qword_1EC8939F0, MEMORY[0x1E69D6F38]);
      sub_1D6C1AC24(&qword_1EC8939F8, &qword_1EC8939F0, v20, MEMORY[0x1E69D6F40]);
      sub_1D7259A2C();
      v5 = v22;
      (*v23)(v9, v22);
      sub_1D5BE7BCC(v14, type metadata accessor for HeadlineViewLayout.Context);
      v16 += v26;
      --v15;
    }

    while (v15);
  }
}

uint64_t sub_1D6C1A34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v5 = type metadata accessor for HeadlineViewLayout.Context(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[0] = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v38[0], v10);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C1B170(0, &qword_1EC8939D8, sub_1D6C1AB6C, &type metadata for A12_V19.Layout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = (v38 - v17);
  v42 = a1;
  v38[1] = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = 0x4060E00000000000;
  *v18 = v19;
  v20 = *MEMORY[0x1E69D73D8];
  v40 = v15;
  v41 = v14;
  (*(v15 + 104))(v18, v20, v14);
  v21 = 0;
  v22 = *(a3 + 16);
  while (v22 != v21)
  {
    sub_1D5BE3ED8(a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21++, v9, type metadata accessor for HeadlineViewLayout.Context);
    v23 = *&v9[*(v5 + 20) + 32];
    sub_1D5BE7BCC(v9, type metadata accessor for HeadlineViewLayout.Context);
    if ((v23 & 4) == 0)
    {
      v24 = 2;
      goto LABEL_6;
    }
  }

  v24 = 0;
LABEL_6:
  v25 = v38[0];
  v26 = *(v38[0] + 20);
  v27 = *MEMORY[0x1E69D7348];
  v28 = sub_1D725A34C();
  v29 = *(v28 - 8);
  (*(v29 + 104))(&v12[v26], v27, v28);
  (*(v29 + 56))(&v12[v26], 0, 1, v28);
  v30 = *MEMORY[0x1E69DDC70];
  *v12 = v24;
  *&v12[*(v25 + 24)] = 0;
  *&v12[*(v25 + 28)] = v30;
  v31 = *MEMORY[0x1E69DDCE0];
  v32 = *(MEMORY[0x1E69DDCE0] + 8);
  v33 = *(MEMORY[0x1E69DDCE0] + 16);
  v34 = *(MEMORY[0x1E69DDCE0] + 24);
  v35 = v30;
  _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v39, v12, v31, v32, v33, v34);
  sub_1D5BE7BCC(v12, type metadata accessor for HeadlineViewLayout.Options);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D6C1AC68(0, &qword_1EC8939F0, MEMORY[0x1E69D6F38]);
  sub_1D6C1AC24(&qword_1EC8939F8, &qword_1EC8939F0, v36, MEMORY[0x1E69D6F40]);
  sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v40 + 8))(v18, v41);
}

uint64_t sub_1D6C1A7D0@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V19.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6C1A8E4(uint64_t a1)
{
  *(a1 + 8) = sub_1D6C1A914();
  result = sub_1D6C1A968();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6C1A914()
{
  result = qword_1EC893990;
  if (!qword_1EC893990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893990);
  }

  return result;
}

unint64_t sub_1D6C1A968()
{
  result = qword_1EC893998;
  if (!qword_1EC893998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893998);
  }

  return result;
}

uint64_t type metadata accessor for A12_V19.Bound(uint64_t a1)
{
  result = qword_1EC8939A8;
  if (!qword_1EC8939A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6C1AA30(uint64_t a1)
{
  result = sub_1D6C1AA88(&qword_1EC8939B8, type metadata accessor for A12_V19.Bound, &unk_1D733C208);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C1AA88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6C1AAF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5BD39E8(255, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6C1AB6C()
{
  result = qword_1EC8939C8;
  if (!qword_1EC8939C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8939C8);
  }

  return result;
}

unint64_t sub_1D6C1ABC0()
{
  result = qword_1EC8939D0;
  if (!qword_1EC8939D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8939D0);
  }

  return result;
}

uint64_t sub_1D6C1AC24(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6C1AC68(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6C1AC68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V19.Layout;
    v8[1] = &type metadata for A12_V19.Layout.Attributes;
    v8[2] = sub_1D6C1AB6C();
    v8[3] = sub_1D6C1ABC0();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D6C1AD20()
{
  result = qword_1EC893A00;
  if (!qword_1EC893A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A00);
  }

  return result;
}

unint64_t sub_1D6C1AD78()
{
  result = qword_1EC893A08;
  if (!qword_1EC893A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A08);
  }

  return result;
}

unint64_t sub_1D6C1ADD0()
{
  result = qword_1EC893A10;
  if (!qword_1EC893A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A10);
  }

  return result;
}

unint64_t sub_1D6C1AE28()
{
  result = qword_1EC893A18;
  if (!qword_1EC893A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A18);
  }

  return result;
}

uint64_t sub_1D6C1AE7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6C1B170(0, &qword_1EC893A20, sub_1D6C1B11C, &type metadata for A12_V19.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C1B11C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6C1AA88(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6C1B11C()
{
  result = qword_1EC893A28;
  if (!qword_1EC893A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A28);
  }

  return result;
}

void sub_1D6C1B170(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6C1B1EC()
{
  result = qword_1EC893A38;
  if (!qword_1EC893A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A38);
  }

  return result;
}

unint64_t sub_1D6C1B244()
{
  result = qword_1EC893A40;
  if (!qword_1EC893A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A40);
  }

  return result;
}

unint64_t sub_1D6C1B29C()
{
  result = qword_1EC893A48;
  if (!qword_1EC893A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A48);
  }

  return result;
}

uint64_t static OfflineModelProviding.unsupportedRegion.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC87D8F0 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = *algn_1EC890E98;
  v2 = qword_1EC890EA0;
  v3 = unk_1EC890EA8;
  v4 = qword_1EC890EB0;
  v5 = unk_1EC890EB8;
  v6 = qword_1EC890EC0;
  *a1 = qword_1EC890E90;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

uint64_t sub_1D6C1B478@<X0>(void *a1@<X8>)
{
  if (qword_1EDF102F8 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = unk_1EDFFC5C0;
  v2 = qword_1EDFFC5C8;
  v3 = unk_1EDFFC5D0;
  v4 = qword_1EDFFC5D8;
  v5 = unk_1EDFFC5E0;
  v6 = qword_1EDFFC5E8;
  *a1 = qword_1EDFFC5B8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

uint64_t sub_1D6C1B524@<X0>(void *a1@<X8>)
{
  if (qword_1EC87DD60 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = *algn_1EC9BAE28;
  v2 = qword_1EC9BAE30;
  v3 = unk_1EC9BAE38;
  v4 = qword_1EC9BAE40;
  v5 = unk_1EC9BAE48;
  v6 = qword_1EC9BAE50;
  *a1 = qword_1EC9BAE20;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

uint64_t FeedPuzzleScore.score.getter()
{
  if (v0[8] == 1)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t FeedPuzzleScore.rawState.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8) == 1)
  {
    v4 = *v1;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 8))
  {
    v3 = v4;
  }

  *a1 = v3;
  v5 = *MEMORY[0x1E69D7858];
  v6 = sub_1D725D38C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

BOOL static FeedPuzzleScore.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && v2 == 0;
}

BOOL sub_1D6C1B6EC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && v2 == 0;
}

uint64_t sub_1D6C1B744@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8) == 1)
  {
    v4 = *v1;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 8))
  {
    v3 = v4;
  }

  *a1 = v3;
  v5 = *MEMORY[0x1E69D7858];
  v6 = sub_1D725D38C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

double FormatResetNode.bind(binder:context:)(unint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_1D6C1BF20(a2);
  swift_beginAccess();
  v6 = *(v3 + 48);

  sub_1D6215F90(a1, v5, v6);

  return result;
}

uint64_t FormatResetNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatResetNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

double FormatResetNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;

  return result;
}

double FormatResetNode.regexSelectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

double FormatResetNode.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

void *FormatResetNode.__allocating_init(identifier:selectors:regexSelectors:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  swift_beginAccess();
  v10[2] = a1;
  v10[3] = a2;
  swift_beginAccess();
  v10[4] = a3;
  swift_beginAccess();
  v10[5] = a4;
  swift_beginAccess();
  v10[6] = a5;
  return v10;
}

void *FormatResetNode.init(identifier:selectors:regexSelectors:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v5[2] = a1;
  v5[3] = a2;
  swift_beginAccess();
  v5[4] = a3;
  swift_beginAccess();
  v5[5] = a4;
  swift_beginAccess();
  v5[6] = a5;
  return v5;
}

uint64_t FormatResetNode.deinit()
{

  return v0;
}

uint64_t FormatResetNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1D6C1BDC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D66B4964(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_1D6C1BE20(uint64_t *a1)
{
  sub_1D725A7EC();
  v2 = *(*(v9 + 40) + 16);
  swift_beginAccess();
  if (*(*(v2 + 16) + 16))
  {
    v8 = *(v9 + 56);

    sub_1D6F622E0(v3);
    sub_1D5B886D0(v4);

    v5 = v8;
  }

  else
  {
    v5 = sub_1D6E46E28();
  }

  v6 = sub_1D6C1C7B0(v5);

  if (v6)
  {
    a1 = sub_1D6B0ACE8(v6, 1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1D6C1BF20(uint64_t a1)
{
  v2 = type metadata accessor for GroupLayoutContext(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  sub_1D725A7EC();
  v6 = *(*(v67 + 40) + 16);
  swift_beginAccess();
  if (*(*(v6 + 16) + 16))
  {
    *&v67 = *(v67 + 56);

    sub_1D6F622E0(v7);
    sub_1D5B886D0(v8);

    v9 = v67;
  }

  else
  {
    v9 = sub_1D6E46E28();
  }

  v10 = sub_1D6C1C7B0(v9);

  if (!v10)
  {
    goto LABEL_8;
  }

  v66 = 0;
  memset(v65, 0, sizeof(v65));
  v64 = 0;
  v11 = *(a1 + 24);
  v12 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);

  sub_1D6D0A744(v12, v10);
  swift_beginAccess();
  v64 = 1;
  v13 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
  v14 = *(a1 + 40);
  v53 = *(a1 + 32);

  v62 = v13;

  v15 = sub_1D6BEC5F4(MEMORY[0x1E69E7CC0], a1, &v64);
  v16 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
  v17 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 16);
  v18 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 24);
  v19 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 32);
  v20 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 40);
  v21 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
  v60 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 8);
  v61 = v16;
  v58 = v18;
  v59 = v17;
  v56 = v20;
  v57 = v19;
  v55 = v21;
  sub_1D62E312C(v16, v60, v17, v18, v19, v20, v21);
  v54 = sub_1D6BEC878(v65, a1, &v64, v22);
  v24 = *(a1 + 96);
  v69 = *(a1 + 80);
  v70 = v24;
  v71 = *(a1 + 112);
  v72 = *(a1 + 128);
  v25 = *(a1 + 64);
  v67 = *(a1 + 48);
  v68 = v25;
  if ((v64 & 1) == 0)
  {

    sub_1D62E31A0(v61, v60, v59, v58, v57, v56, v55);

    sub_1D6C1CEB8(v65, sub_1D630BB34);
LABEL_8:

    return a1;
  }

  v52 = v23;
  sub_1D6C1CE20(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
  v50 = v26;
  v51 = v15;
  v47 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext;
  v48 = v11;
  sub_1D6C1CF18(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupLayoutContext);
  v27 = *(v3 + 80);
  v49 = v14;
  v28 = (v27 + 16) & ~v27;
  v29 = (v4 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = swift_allocObject();
  sub_1D6C1CF80(v30, v31 + v28, type metadata accessor for GroupLayoutContext);
  v32 = v62;
  *(v31 + v29) = v62;
  *(v31 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v10;

  sub_1D5CF6A5C(&v67, v63);

  v50 = sub_1D725A80C();
  v33 = *(a1 + 16);
  sub_1D6C1CF18(a1 + v47, v30, type metadata accessor for GroupLayoutContext);
  v34 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
  sub_1D5B68374(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v63);
  type metadata accessor for FormatNodeBinderContext(0);
  a1 = swift_allocObject();
  v35 = v48;
  *(a1 + 16) = v33;
  *(a1 + 24) = v35;
  v36 = v70;
  *(a1 + 80) = v69;
  *(a1 + 96) = v36;
  *(a1 + 112) = v71;
  *(a1 + 128) = v72;
  v37 = v68;
  *(a1 + 48) = v67;
  *(a1 + 64) = v37;
  *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v32;
  *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v10;
  sub_1D6C1CF18(v30, a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
  v38 = v49;
  *(a1 + 32) = v53;
  *(a1 + 40) = v38;
  *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v51;
  *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v34;
  sub_1D5B68374(v63, a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
  v39 = a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
  v40 = v60;
  *v39 = v61;
  *(v39 + 8) = v40;
  v41 = v58;
  *(v39 + 16) = v59;
  *(v39 + 24) = v41;
  v42 = v56;
  *(v39 + 32) = v57;
  *(v39 + 40) = v42;
  *(v39 + 48) = v55;
  v43 = (a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
  v44 = v52;
  *v43 = v54;
  v43[1] = v44;

  __swift_destroy_boxed_opaque_existential_1(v63);
  sub_1D6C1CEB8(v30, type metadata accessor for GroupLayoutContext);
  sub_1D6C1CEB8(v65, sub_1D630BB34);
  *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v50;
  return a1;
}

uint64_t sub_1D6C1C4B4(uint64_t a1, uint64_t a2)
{
  result = sub_1D6C1C5DC(&qword_1EC893A50, a2, type metadata accessor for FormatResetNode, &protocol conformance descriptor for FormatResetNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C1C530(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6C1C5DC(&qword_1EDF31300, a2, type metadata accessor for FormatResetNode, &protocol conformance descriptor for FormatResetNode);
  a1[2] = sub_1D6C1C5DC(&qword_1EDF11820, v3, type metadata accessor for FormatResetNode, &protocol conformance descriptor for FormatResetNode);
  result = sub_1D6C1C5DC(&qword_1EC893A58, v4, type metadata accessor for FormatResetNode, &protocol conformance descriptor for FormatResetNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6C1C5DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D6C1C624(uint64_t a1, uint64_t a2)
{
  result = sub_1D6C1C5DC(&qword_1EC893A60, a2, type metadata accessor for FormatResetNode, &protocol conformance descriptor for FormatResetNode);
  *(a1 + 8) = result;
  return result;
}

double sub_1D6C1C67C(unint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_1D6C1BF20(a2);
  swift_beginAccess();
  v6 = *(v4 + 48);

  sub_1D6215F90(a1, v5, v6);

  return result;
}

double sub_1D6C1C70C(uint64_t *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 48);

  sub_1D626DB9C(a1, v4);

  return result;
}

uint64_t sub_1D6C1C7B0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatRegex(0);
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - v10;
  swift_beginAccess();
  v12 = *(v1 + 32);
  v13 = *(v12 + 16);
  if (v13)
  {
    if (v13 <= *(a1 + 16) >> 3)
    {
      v30[0] = a1;

      sub_1D6836478(v12);

      v14 = v30[0];
    }

    else
    {

      v14 = sub_1D6E14F70(v12, a1);
    }
  }

  else
  {
    swift_beginAccess();
    if (!*(*(v1 + 40) + 16))
    {
      return 0;
    }

    v14 = a1;
  }

  swift_beginAccess();
  v15 = *(v2 + 40);
  if (!*(v15 + 16))
  {
LABEL_19:

    v27 = sub_1D5BFC390(v26, a1);

    if ((v27 & 1) == 0)
    {
      return v14;
    }

    return 0;
  }

  v28 = a1;
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 56);
  v19 = (v16 + 63) >> 6;

  for (i = 0; v18; result = sub_1D6C1CEB8(v7, type metadata accessor for FormatRegex))
  {
    v22 = i;
LABEL_16:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D6C1CF18(*(v15 + 48) + *(v29 + 72) * (v23 | (v22 << 6)), v11, type metadata accessor for FormatRegex);
    v24 = sub_1D6C1CF80(v11, v7, type metadata accessor for FormatRegex);
    MEMORY[0x1EEE9AC00](v24, v25);
    *(&v28 - 2) = v7;
    v14 = sub_1D70E2380(sub_1D6C1CD98, (&v28 - 4), v14);
  }

  while (1)
  {
    v22 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      a1 = v28;
      goto LABEL_19;
    }

    v18 = *(v15 + 56 + 8 * v22);
    ++i;
    if (v18)
    {
      i = v22;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6C1CAD4(uint64_t *a1)
{
  sub_1D6C1CDB8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C1CDEC(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FormatRegex(0);
  sub_1D6C1C5DC(&qword_1EDF175D8, 255, sub_1D6C1CDB8, MEMORY[0x1E69E9290]);
  sub_1D725C15C();
  sub_1D726236C();
  sub_1D725C17C();
  if (v1)
  {

    (*(v4 + 8))(v7, v3);
    sub_1D6C1CE84(0);
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    (*(v4 + 8))(v7, v3);

    sub_1D6C1CE84(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      v14 = 0;
      goto LABEL_5;
    }
  }

  v14 = 1;
LABEL_5:
  sub_1D6C1CEB8(v11, sub_1D6C1CDEC);
  return v14;
}

void sub_1D6C1CE20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6C1CEB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6C1CF18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C1CF80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s8NewsFeed12FormatResizeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v3 + 16);

  v6 = sub_1D5E1F5F0(v4, v5);

  return v6 & 1;
}

unint64_t sub_1D6C1D0D0(uint64_t a1)
{
  result = sub_1D6C1D0F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C1D0F8()
{
  result = qword_1EC893A68;
  if (!qword_1EC893A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A68);
  }

  return result;
}

unint64_t sub_1D6C1D14C(void *a1)
{
  a1[1] = sub_1D5C6411C();
  a1[2] = sub_1D6659D24();
  result = sub_1D6C1D184();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C1D184()
{
  result = qword_1EC893A70;
  if (!qword_1EC893A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A70);
  }

  return result;
}

uint64_t sub_1D6C1D210()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x656D617266;
  }
}

void sub_1D6C1D24C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73ED8E0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

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

uint64_t sub_1D6C1D32C(uint64_t a1)
{
  v2 = sub_1D6C1D5A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C1D368(uint64_t a1)
{
  v2 = sub_1D6C1D5A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GapOfflineViewLayout.Attributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6C1EAF8(0, &qword_1EC893A78, sub_1D6C1D5A0, &type metadata for GapOfflineViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  v11 = v3[2];
  v14 = v3[3];
  v15 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C1D5A0();
  sub_1D7264B5C();
  v12 = v3[1];
  v16 = *v3;
  v17 = v12;
  v18 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BEA9B4(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    v16 = v15;
    v17 = v14;
    v18 = 1;
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6C1D5A0()
{
  result = qword_1EDF2A550;
  if (!qword_1EDF2A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A550);
  }

  return result;
}

uint64_t GapOfflineViewLayout.Attributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = a2;
  sub_1D6C1EAF8(0, &qword_1EDF19C18, sub_1D6C1D5A0, &type metadata for GapOfflineViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C1D5A0();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v6;
    v11 = v17;
    type metadata accessor for CGRect(0);
    v20 = 0;
    sub_1D5BEA9B4(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1D726431C();
    v15 = v19;
    v16 = v18;
    v20 = 1;
    sub_1D726431C();
    (*(v10 + 8))(v9, v5);
    v13 = v15;
    *v11 = v16;
    v11[1] = v13;
    v14 = v19;
    v11[2] = v18;
    v11[3] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6C1D840(uint64_t a1)
{
  v2 = sub_1D6C1E9C8();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D6C1D8AC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D69DE4A4();

  return sub_1D725A24C();
}

uint64_t GapOfflineViewLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  *a1 = sub_1D725996C();
  swift_allocObject();
  result = sub_1D725996C();
  a1[1] = result;
  return result;
}

uint64_t GapOfflineViewLayout.Context.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D6307094(v9, v8);
}

unint64_t sub_1D6C1DA28()
{
  result = qword_1EDF2A530;
  if (!qword_1EDF2A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A530);
  }

  return result;
}

unint64_t sub_1D6C1DA80()
{
  result = qword_1EC893A80;
  if (!qword_1EC893A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A80);
  }

  return result;
}

unint64_t sub_1D6C1DAD8()
{
  result = qword_1EDF2A518;
  if (!qword_1EDF2A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A518);
  }

  return result;
}

unint64_t sub_1D6C1DB30()
{
  result = qword_1EDF2A520;
  if (!qword_1EDF2A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A520);
  }

  return result;
}

unint64_t sub_1D6C1DB88()
{
  result = qword_1EDF2A538;
  if (!qword_1EDF2A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A538);
  }

  return result;
}

uint64_t sub_1D6C1DBDC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = (*(v6 + 8))(a2[5], a2[6], a2[7], a2[8], v5, v6);
  *a3 = result;
  return result;
}

uint64_t sub_1D6C1DC48(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  sub_1D6C1EAF8(0, &qword_1EDF3C0C0, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D70D8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v32[-v16];
  sub_1D6C1EAF8(0, &qword_1EDF3BEF8, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D74B0]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v32[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v32[-v27];
  v34 = a1;
  (*(v20 + 104))(v23, *MEMORY[0x1E69D7460], v19, v26);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  (*(v14 + 104))(v17, *MEMORY[0x1E69D7048], v13);
  sub_1D69DE450();
  sub_1D725A21C();
  (*(v14 + 8))(v17, v13);
  v29 = *(v20 + 8);
  v29(v23, v19);
  v33 = a2;
  v30 = MEMORY[0x1E69D7150];
  sub_1D6C1EB68(0, &qword_1EDF3C058, MEMORY[0x1E69D7150]);
  sub_1D6C1EA24(&qword_1EDF3C060, &qword_1EDF3C058, v30, MEMORY[0x1E69D7158]);
  sub_1D72599EC();
  return (v29)(v28, v19);
}

uint64_t sub_1D6C1DF80(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  sub_1D6C1EAF8(0, &qword_1EDF3BEF8, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (&v19 - v7);
  v22 = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = 0x3FE8000000000000;
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D73C8], v4);
  sub_1D6C1EA68(0);
  sub_1D6C1EAF8(0, &qword_1EDF3C0C0, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D70D8]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7273AE0;
  v15 = *MEMORY[0x1E69D7060];
  sub_1D6C1EAF8(0, &qword_1EDF3C0E8, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v16 - 8) + 104))(v14 + v13, v15, v16);
  (*(v12 + 104))(v14 + v13, *MEMORY[0x1E69D7080], v11);
  v21 = v20;
  v17 = MEMORY[0x1E69D6F38];
  sub_1D6C1EB68(0, &qword_1EDF3C1B8, MEMORY[0x1E69D6F38]);
  sub_1D6C1EA24(&qword_1EDF3C1C0, &qword_1EDF3C1B8, v17, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6C1E2C8(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = sub_1D7261B9C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6C1EAF8(0, &qword_1EDF3BEF8, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v40 - v12);
  v47 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4034000000000000;
  *v13 = v14;
  v15 = *(v10 + 104);
  v43 = *MEMORY[0x1E69D7488];
  v45 = v15;
  v46 = v10 + 104;
  v15(v13);
  v16 = MEMORY[0x1E69D6F38];
  sub_1D6C1EB68(0, &qword_1EDF3C1B8, MEMORY[0x1E69D6F38]);
  v18 = v17;
  v19 = sub_1D6C1EA24(&qword_1EDF3C1C0, &qword_1EDF3C1B8, v16, MEMORY[0x1E69D6F40]);
  v42 = v18;
  sub_1D7259A9C();
  v21 = *(v10 + 8);
  v20 = v10 + 8;
  v41 = v21;
  v21(v13, v9);
  v47 = a1;
  v40[2] = swift_getKeyPath();
  v22 = *(v44 + 128);
  if (*(v22 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v7 = sub_1D726308C(), (*(v4 + 104))(v7, *MEMORY[0x1E69E8018], v3), v23 = sub_1D7261BBC(), result = (*(v4 + 8))(v7, v3), (v23))
  {
    v25 = swift_allocObject();
    v26 = *(*v22 + 136);
    v44 = v19;
    v27 = *(v22 + v26);
    *(v25 + 16) = v27;
    *v13 = v25;
    v45(v13, *MEMORY[0x1E69D73E8], v9);
    sub_1D6C1EA68(0);
    sub_1D6C1EAF8(0, &qword_1EDF3C0C0, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D70D8]);
    v29 = v28;
    v30 = *(v28 - 8);
    v40[1] = v20;
    v31 = v30;
    v32 = *(v30 + 80);
    v40[0] = a1;
    v33 = (v32 + 32) & ~v32;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D7273AE0;
    v35 = *MEMORY[0x1E69D7060];
    sub_1D6C1EAF8(0, &qword_1EDF3C0E8, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D7078]);
    (*(*(v36 - 8) + 104))(v34 + v33, v35, v36);
    (*(v31 + 104))(v34 + v33, *MEMORY[0x1E69D7080], v29);
    sub_1D5BEA9B4(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
    v37 = v27;
    sub_1D7259A7C();

    v38 = v41;
    v41(v13, v9);
    v47 = v40[0];
    v39 = swift_allocObject();
    *(v39 + 16) = 0x4034000000000000;
    *v13 = v39;
    v45(v13, v43, v9);
    sub_1D7259A9C();
    return v38(v13, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D6C1E8C4()
{
  result = qword_1EC893A88;
  if (!qword_1EC893A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A88);
  }

  return result;
}

unint64_t sub_1D6C1E91C()
{
  result = qword_1EDF2A540;
  if (!qword_1EDF2A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A540);
  }

  return result;
}

unint64_t sub_1D6C1E974()
{
  result = qword_1EDF2A548;
  if (!qword_1EDF2A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A548);
  }

  return result;
}

unint64_t sub_1D6C1E9C8()
{
  result = qword_1EC893A90;
  if (!qword_1EC893A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A90);
  }

  return result;
}

uint64_t sub_1D6C1EA24(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6C1EB68(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6C1EA68(uint64_t a1)
{
  if (!qword_1EDF19B68)
  {
    sub_1D6C1EAF8(255, &qword_1EDF3C0C0, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19B68);
    }
  }
}

void sub_1D6C1EAF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D6C1EB68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for GapOfflineViewLayout;
    v8[1] = &type metadata for GapOfflineViewLayout.Attributes;
    v8[2] = sub_1D69DE450();
    v8[3] = sub_1D69DE4A4();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

double FormatItemNode.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

void FormatItemNode.bind(binder:context:)(unint64_t a1, void *a2)
{
  v47[4] = &protocol witness table for FormatNodeBinderContext;
  v47[3] = type metadata accessor for FormatNodeBinderContext(0);
  v47[0] = a2;

  sub_1D6C20938(v47, v48);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v47);
    v44 = v48[4];
    v45 = v48[5];
    v46[0] = v49[0];
    *(v46 + 9) = *(v49 + 9);
    v40 = v48[0];
    v41 = v48[1];
    v42 = v48[2];
    v43 = v48[3];
    swift_beginAccess();
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);

    v8 = sub_1D6E8DD40(v6, v7);
    v10 = v9;

    v33 = 0u;
    v32 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v27 = v44;
    v28 = v45;
    v29[0] = v46[0];
    *(v29 + 9) = *(v46 + 9);
    v23 = v40;
    v24 = v41;
    v25 = v42;
    v34 = 0;
    v35 = MEMORY[0x1E69E7CC0];
    v36 = MEMORY[0x1E69E7CD0];
    v22[0] = 0;
    v26 = v43;
    v30 = v8;
    v31 = v10;
    sub_1D5F8A3DC(&v40, v18);
    sub_1D6D04DCC(a1, a2, v11);
    v12 = sub_1D6C20C68(v22, a2);
    v19 = v27;
    v20 = v28;
    *v21 = v29[0];
    *&v21[9] = *(v29 + 9);
    v18[0] = v23;
    v18[1] = v24;
    v18[2] = v25;
    v18[3] = v26;
    if (v28)
    {
      sub_1D5F8A3DC(v18, v17);
      FormatItemNodeStyle.bind(binder:context:)(a1, v12);
    }

    else
    {
      sub_1D5F8A3DC(v18, v17);
    }

    v13 = *(&v20 + 1);

    sub_1D62160B4(a1, v12, v13);

    v14 = *&v21[8];

    sub_1D6213004(a1, v12, v14);

    v15 = *&v21[16];

    sub_1D62212CC(a1, v12, v15);

    v16 = *(&v19 + 1);

    sub_1D6215F90(a1, v12, v16);

    sub_1D66876CC(v18);
    FormatItemNode.bindChildren(binder:context:)(a1, v12);
    sub_1D6C20C14(v22);
    sub_1D66876CC(&v40);
  }
}

double sub_1D6C1F07C(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  swift_beginAccess();
  v5 = v1[2];
  v6 = v1[3];
  swift_beginAccess();
  v7 = v1[12];

  sub_1D6C4D7E4(v3, v4, 1u, v5, v6, v7, a1, v1);

  return result;
}

uint64_t FormatItemNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatItemNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatItemNode.itemIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t FormatItemNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

double FormatItemNode.resize.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 56);

  return result;
}

double FormatItemNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;

  return result;
}

double FormatItemNode.styles.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;

  return result;
}

double FormatItemNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;

  return result;
}

double FormatItemNode.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;

  return result;
}

double FormatItemNode.blocks.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;

  return result;
}

double sub_1D6C1F6B0(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  sub_1D5EB1500(v2);
  *(v3 + 112) = v2;
  return sub_1D5EB15C4(v4);
}

double FormatItemNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  return sub_1D5EB15C4(v3);
}

double FormatItemNode.sourceItems.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;

  return result;
}

uint64_t FormatItemNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  v6 = v1[20];
  v7 = v1[21];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t FormatItemNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 48));

  sub_1D5EB15C4(*(v0 + 112));

  sub_1D5EB2398(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
  return v0;
}

uint64_t FormatItemNode.__deallocating_deinit()
{
  FormatItemNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_1D6C1F940(void *a1, uint64_t a2, void *a3, char *a4)
{
  v9 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FormatOption(0);
  v99 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[7];
  *&v110 = a1[6];
  *(&v110 + 1) = v17;
  sub_1D5CBA110(v110, v17);
  sub_1D6B0D084(&v110, a3, a4);
  v19 = v18;
  sub_1D5CBA0FC(v110, *(&v110 + 1));
  if (!v4)
  {
    v116 = v16;
    v96 = v13;
    v97 = v19;
    v93 = v12;
    v94 = 0;
    v20 = a1[11];
    v21 = *(v20 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    v92 = a2;
    v23 = v98;
    v95 = a1;
    if (v21)
    {
      *&v100 = MEMORY[0x1E69E7CC0];

      sub_1D69979A0(0, v21, 0);
      v22 = v100;
      v24 = v21 - 1;
      for (i = 32; ; i += 64)
      {
        v26 = *(v20 + i);
        v27 = *(v20 + i + 16);
        v28 = *(v20 + i + 48);
        v112 = *(v20 + i + 32);
        v113 = v28;
        v110 = v26;
        v111 = v27;
        v29 = swift_allocObject();
        v30 = *(v20 + i + 48);
        v32 = *(v20 + i);
        v31 = *(v20 + i + 16);
        *(v29 + 48) = *(v20 + i + 32);
        *(v29 + 64) = v30;
        *(v29 + 16) = v32;
        *(v29 + 32) = v31;
        sub_1D5C8C900(&v110, v106);
        *&v100 = v22;
        v34 = v22[2];
        v33 = v22[3];
        if (v34 >= v33 >> 1)
        {
          sub_1D69979A0((v33 > 1), v34 + 1, 1);
          v22 = v100;
        }

        v22[2] = v34 + 1;
        v22[v34 + 4] = v29 | 0x9000000000000004;
        if (!v24)
        {
          break;
        }

        --v24;
      }

      v23 = v98;
      a1 = v95;
    }

    swift_beginAccess();
    v35 = *(v23 + 72);
    v36 = *(v35 + 16);
    v37 = MEMORY[0x1E69E7CC0];
    if (v36)
    {
      v91 = v22;
      *&v100 = MEMORY[0x1E69E7CC0];

      sub_1D69979A0(0, v36, 0);
      v37 = v100;
      v38 = v36 - 1;
      for (j = 32; ; j += 64)
      {
        v40 = v35;
        v41 = *(v35 + j);
        v42 = *(v35 + j + 16);
        v43 = *(v35 + j + 48);
        v112 = *(v35 + j + 32);
        v113 = v43;
        v110 = v41;
        v111 = v42;
        v44 = swift_allocObject();
        v45 = *(v35 + j + 48);
        v47 = *(v35 + j);
        v46 = *(v35 + j + 16);
        *(v44 + 48) = *(v35 + j + 32);
        *(v44 + 64) = v45;
        *(v44 + 16) = v47;
        *(v44 + 32) = v46;
        sub_1D5C8C900(&v110, v106);
        *&v100 = v37;
        v49 = *(v37 + 16);
        v48 = *(v37 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1D69979A0((v48 > 1), v49 + 1, 1);
          v37 = v100;
        }

        *(v37 + 16) = v49 + 1;
        *(v37 + 8 * v49 + 32) = v44 | 0x4000000000000004;
        if (!v38)
        {
          break;
        }

        --v38;
        v35 = v40;
      }

      v23 = v98;
      a1 = v95;
      v22 = v91;
    }

    *&v110 = v22;
    sub_1D6985C70(v37);
    sub_1D6B0BBC4(v110);

    v50 = a1[12];
    swift_beginAccess();

    v52 = sub_1D5D6021C(v51, v50);
    v91 = sub_1D6B0ACE8(v52, 0);

    v53 = a1[13];
    v54 = v53[2];
    v55 = MEMORY[0x1E69E7CC0];
    v56 = v116;
    if (v54)
    {
      *&v110 = MEMORY[0x1E69E7CC0];

      sub_1D5D24610(0, v54, 0);
      v55 = v110;
      v57 = *(v99 + 80);
      v95 = v53;
      v58 = v53 + ((v57 + 32) & ~v57);
      v59 = *(v99 + 72);
      do
      {
        sub_1D6C221DC(v58, v56, type metadata accessor for FormatOption);
        v60 = swift_allocBox();
        sub_1D5D5E5AC(v56, v61, type metadata accessor for FormatOption);
        *&v110 = v55;
        v63 = *(v55 + 16);
        v62 = *(v55 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_1D5D24610((v62 > 1), v63 + 1, 1);
          v55 = v110;
        }

        *(v55 + 16) = v63 + 1;
        *(v55 + 8 * v63 + 32) = v60 | 0x9000000000000004;
        v58 += v59;
        --v54;
        v56 = v116;
      }

      while (v54);

      v23 = v98;
    }

    v64 = v99;
    swift_beginAccess();
    v65 = *(v23 + 88);
    v66 = v65[2];
    v67 = MEMORY[0x1E69E7CC0];
    if (v66)
    {
      *&v110 = MEMORY[0x1E69E7CC0];

      sub_1D5D24610(0, v66, 0);
      v67 = v110;
      v68 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v69 = v64;
      v95 = v65;
      v70 = v65 + v68;
      v99 = *(v69 + 72);
      do
      {
        sub_1D6C221DC(v70, v56, type metadata accessor for FormatOption);
        v71 = swift_allocBox();
        sub_1D5D5E5AC(v56, v72, type metadata accessor for FormatOption);
        *&v110 = v67;
        v74 = *(v67 + 16);
        v73 = *(v67 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_1D5D24610((v73 > 1), v74 + 1, 1);
          v67 = v110;
        }

        *(v67 + 16) = v74 + 1;
        *(v67 + 8 * v74 + 32) = v71 | 0x4000000000000004;
        v70 += v99;
        --v66;
        v56 = v116;
      }

      while (v66);
    }

    *&v110 = v55;
    sub_1D6985C44(v67);
    sub_1D6B0C068(v110);

    swift_beginAccess();

    v116 = sub_1D6B0C570(v75);

    v76 = *(v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
    v77 = *(v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
    v112 = *(v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
    v113 = v76;
    v114 = v77;
    v115 = *(v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
    v78 = *(v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
    v110 = *(v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
    v111 = v78;
    v79 = *(v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
    v99 = *(v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 8);
    v80 = *(v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 24);
    v81 = *(v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
    sub_1D6C22244(v97 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &v108, &qword_1EDF34AB8, sub_1D5EFF46C);
    v82 = v93;
    v98 = v79;
    if (v109)
    {
      sub_1D5B63F14(&v108, &v100);
      sub_1D5B68374(&v100, &v108);
      sub_1D5CF6A5C(&v110, v106);
      sub_1D6818590(&v108, v82);

      v95 = sub_1D69F6E38(v82);
      v96 = v83;
      sub_1D6C222C4(v82, type metadata accessor for FeedItem);
      __swift_destroy_boxed_opaque_existential_1(&v100);
    }

    else
    {
      sub_1D5CF6A5C(&v110, v106);
      sub_1D6C22548(&v108, &qword_1EDF34AB8, sub_1D5EFF46C, MEMORY[0x1E69E6720], sub_1D6C225A8);
      v96 = v81;

      v95 = v80;
    }

    v84 = v110;
    v85 = BYTE1(v110);
    v86 = *(&v112 + 1);
    v87 = v113;
    v89 = v114;
    v88 = v115;
    sub_1D60B297C(*(&v112 + 1), v113, *(&v113 + 1), v114, *(&v114 + 1), v115);
    sub_1D5D09C48(&v110);
    LOBYTE(v100) = v84;
    BYTE1(v100) = v85;
    *(&v100 + 1) = v99;
    *&v101 = v98;
    *(&v101 + 1) = v95;
    *&v102 = v96;
    *(&v102 + 1) = v86;
    v103 = v87;
    v104 = v89;
    v105 = v88;
    v19 = sub_1D6B14BDC(&v100);

    v106[3] = v103;
    v106[4] = v104;
    v107 = v105;
    v106[0] = v100;
    v106[1] = v101;
    v106[2] = v102;
    sub_1D6C22548(v106, &qword_1EDF33A38, &type metadata for FormatConfig, MEMORY[0x1E69E6720], sub_1D5B49FDC);
  }

  return v19;
}

void sub_1D6C20254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v59 = a7;
  v60 = a8;
  v62 = a6;
  sub_1D6C225A8(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v66 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v67 = &v54 - v22;
  v23 = type metadata accessor for FormatNodeStateData.Data(0);
  v63 = *(v23 - 8);
  v64 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v65 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FormatItemNodeData(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v30 = *(a3 + 120);

  v61 = a4;
  v68[2] = a4;
  v68[3] = a2;
  v31 = sub_1D5FBC110(sub_1D5EB5908, v68, v30);
  if (v12)
  {
  }

  else
  {
    v32 = v31;
    v55 = a12;
    v58 = a11;
    v57 = a10;
    v33 = v62;
    v77 = a5;

    v34 = *(v59 + 24);
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69[0] = *(v34 + 40);
    *(v34 + 40) = 0x8000000000000000;
    v56 = v34;
    v59 = 0;
    sub_1D6D77BEC(v77, v33, v32, v77, v33, isUniquelyReferenced_nonNull_native);
    *(v34 + 40) = v69[0];
    swift_endAccess();

    v36 = v33;

    sub_1D5B68374(v60, &v70);
    sub_1D6818590(&v70, v29);
    v37 = a9[5];
    v74 = a9[4];
    v75 = v37;
    v76[0] = a9[6];
    *(v76 + 9) = *(a9 + 105);
    v38 = a9[3];
    v72 = a9[2];
    v73 = v38;
    v39 = a9[1];
    v70 = *a9;
    v71 = v39;
    v40 = v26[7];
    v41 = sub_1D725D80C();
    (*(*(v41 - 8) + 16))(&v29[v40], v55, v41);
    sub_1D5F8A3DC(&v70, v69);
    sub_1D725A7EC();
    v42 = sub_1D6E465F4();

    v43 = &v29[v26[5]];
    v44 = v75;
    *(v43 + 4) = v74;
    *(v43 + 5) = v44;
    *(v43 + 6) = v76[0];
    *(v43 + 105) = *(v76 + 9);
    v45 = v71;
    *v43 = v70;
    *(v43 + 1) = v45;
    v46 = v73;
    *(v43 + 2) = v72;
    *(v43 + 3) = v46;
    v47 = &v29[v26[6]];
    v48 = v57;
    *v47 = v57;
    v47[8] = v58;
    v49 = &v29[v26[8]];
    *v49 = v77;
    *(v49 + 1) = v36;
    *(v49 + 2) = v32;
    *&v29[v26[9]] = v42;
    v50 = v65;
    sub_1D6C221DC(v29, v65, type metadata accessor for FormatItemNodeData);
    v51 = v64;
    swift_storeEnumTagMultiPayload();
    v52 = v67;
    sub_1D6C221DC(v50, v67, type metadata accessor for FormatNodeStateData.Data);
    (*(v63 + 56))(v52, 0, 1, v51);
    v53 = v66;
    sub_1D6C22244(v52, v66, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data);
    swift_beginAccess();

    sub_1D61CA640(v48, v58);
    sub_1D6D60A18(v53, v77, v36);
    swift_endAccess();
    sub_1D6C22548(v52, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D6C225A8);
    sub_1D6C222C4(v50, type metadata accessor for FormatNodeStateData.Data);
    sub_1D6C222C4(v29, type metadata accessor for FormatItemNodeData);
  }
}

double sub_1D6C207E4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = a3[7];
  if (v10 && (v11 = *(v10 + 16), swift_beginAccess(), *(*(v11 + 16) + 16)))
  {
  }

  else
  {
    v11 = 0;
  }

  v12 = (a4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  v13 = *(a4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier + 8);
  v21 = *v12;
  swift_beginAccess();
  v20 = a3[13];
  swift_beginAccess();
  v14 = a3[14];
  type metadata accessor for FormatItemNodeLayoutAttributes();
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = a2;
  *(v15 + 32) = v11;
  *&v17 = v20;
  *&v16 = v21;
  *(&v16 + 1) = v13;
  *(&v17 + 1) = v14;
  *(v15 + 56) = v17;
  *(v15 + 40) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *a5 = v18;

  sub_1D5EB1500(v14);

  return result;
}

void sub_1D6C20938(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  sub_1D5CBB26C(0);
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27[-v12];
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v16 = (*(v14 + 8))(v15, v14) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
  swift_beginAccess();
  v17 = *(v16 + 8);

  if (*(v17 + 16) && (v18 = sub_1D5B69D90(*(v3 + 32), *(v3 + 40)), (v19 & 1) != 0))
  {
    sub_1D6C221DC(*(v17 + 56) + *(v35 + 72) * v18, v9, sub_1D5CBB26C);
    sub_1D5D5E5AC(v9, v13, sub_1D5CBB26C);

    v20 = v13[5];
    v32 = v13[4];
    v33 = v20;
    v34[0] = v13[6];
    *(v34 + 9) = *(v13 + 105);
    v21 = v13[1];
    v28 = *v13;
    v29 = v21;
    v22 = v13[3];
    v30 = v13[2];
    v31 = v22;
    sub_1D5F8A3DC(&v28, v27);
    sub_1D6C222C4(v13, sub_1D5CBB26C);
    v23 = v33;
    a2[4] = v32;
    a2[5] = v23;
    a2[6] = v34[0];
    *(a2 + 105) = *(v34 + 9);
    v24 = v29;
    *a2 = v28;
    a2[1] = v24;
    v25 = v31;
    a2[2] = v30;
    a2[3] = v25;
  }

  else
  {

    type metadata accessor for FormatLayoutError(0);
    sub_1D6C2260C(&qword_1EDF2F560, 255, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v26 = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_1D6C20C68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v127 = a2;
  v5 = type metadata accessor for GroupLayoutContext(0);
  v102 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v103 = v7;
  v128 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v116 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for FormatOption(0);
  v11 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v12);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = v3[3];
  v125 = v3[2];
  v126 = v15;
  v131 = a1;
  v16 = *(a1 + 112);
  v17 = *(v16 + 16);
  v129 = v3;
  if (v17)
  {
    *&v144[0] = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v17, 0);
    v18 = *&v144[0];
    v19 = *(v11 + 80);
    v124 = v16;
    v20 = v16 + ((v19 + 32) & ~v19);
    v132 = v11;
    v21 = *(v11 + 72);
    do
    {
      sub_1D6C221DC(v20, v14, type metadata accessor for FormatOption);
      v22 = swift_allocBox();
      sub_1D5D5E5AC(v14, v23, type metadata accessor for FormatOption);
      *&v144[0] = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D5D24610((v24 > 1), v25 + 1, 1);
        v18 = *&v144[0];
      }

      *(v18 + 16) = v25 + 1;
      *(v18 + 8 * v25 + 32) = v22 | 0x9000000000000004;
      v20 += v21;
      --v17;
    }

    while (v17);

    v3 = v129;
    v11 = v132;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v26 = v3[11];
  v27 = *(v26 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    *&v144[0] = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v27, 0);
    v28 = *&v144[0];
    v29 = *(v11 + 80);
    v124 = v26;
    v30 = v26 + ((v29 + 32) & ~v29);
    v132 = *(v11 + 72);
    do
    {
      sub_1D6C221DC(v30, v14, type metadata accessor for FormatOption);
      v31 = swift_allocBox();
      sub_1D5D5E5AC(v14, v32, type metadata accessor for FormatOption);
      *&v144[0] = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D5D24610((v33 > 1), v34 + 1, 1);
        v28 = *&v144[0];
      }

      *(v28 + 16) = v34 + 1;
      *(v28 + 8 * v34 + 32) = v31 | 0x4000000000000004;
      v30 += v132;
      --v27;
    }

    while (v27);

    v3 = v129;
  }

  v143 = v18;
  sub_1D6985C44(v28);
  v35 = v131;

  sub_1D6985C44(v36);
  v37 = v143;
  v38 = v35[13];
  swift_beginAccess();

  v40 = sub_1D5D6021C(v39, v38);

  v42 = sub_1D5D6021C(v41, v40);
  swift_beginAccess();
  v43 = v3[12];
  v44 = v35[26];
  v129 = v35[27];
  v130 = v44;
  v45 = v35[28];
  v123 = v35[29];
  v124 = v45;
  v46 = v35[30];
  v121 = v35[31];
  v122 = v46;
  v47 = v127;
  v48 = *(v127 + 96);
  v49 = *(v127 + 112);
  v145 = *(v127 + 80);
  v146 = v48;
  v147 = v49;
  v148 = *(v127 + 128);
  v50 = *(v127 + 64);
  v144[0] = *(v127 + 48);
  v144[1] = v50;
  v51 = *(v127 + 64);
  v120 = *(v127 + 56);
  v52 = *(v127 + 72);
  v53 = *(v127 + 80);
  sub_1D6C22244((v35 + 19), &v141, &qword_1EDF34AB8, sub_1D5EFF46C);
  v119 = v51;
  if (v142)
  {
    sub_1D5B63F14(&v141, v133);
    sub_1D5B68374(v133, &v141);

    sub_1D5CF6A5C(v144, &v135);
    v54 = v116;
    sub_1D6818590(&v141, v116);

    v55 = sub_1D69F6E38(v54);
    v117 = v56;
    v118 = v55;
    sub_1D6C222C4(v54, type metadata accessor for FeedItem);
    __swift_destroy_boxed_opaque_existential_1(v133);
  }

  else
  {
    v118 = v52;

    sub_1D5CF6A5C(v144, &v135);
    sub_1D6C22548(&v141, &qword_1EDF34AB8, sub_1D5EFF46C, MEMORY[0x1E69E6720], sub_1D6C225A8);
    v117 = v53;
  }

  v104 = BYTE1(v144[0]);
  v105 = LOBYTE(v144[0]);
  v57 = *(&v145 + 1);
  v58 = v146;
  v109 = *(&v147 + 1);
  v110 = v147;
  v108 = v148;
  sub_1D60B297C(*(&v145 + 1), v146, *(&v146 + 1), v147, *(&v147 + 1), v148);
  sub_1D5D09C48(v144);
  v134 = 0;

  v125 = sub_1D6E8DE74(v125, v126);

  swift_beginAccess();
  v134 = 1;

  v59 = *(v42 + 16);
  v60 = v42;
  v61 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);
  v132 = v60;
  if (v59 && (sub_1D6D0A744(v61, v60), (v62 & 1) == 0))
  {
    v63 = 1;
    v134 = 1;

    v61 = sub_1D5D6021C(v64, v61);
  }

  else
  {

    v63 = 0;
  }

  v126 = v61;
  if (*(v37 + 16))
  {
    v65 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
    v66 = sub_1D6F619D8(v37);

    if (v66)
    {
      v63 = 1;
      v134 = 1;
    }

    else
    {

      v66 = v65;
    }
  }

  else
  {

    v66 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
  }

  v67 = v128;
  v68 = v47[5];
  v116 = v47[4];
  v128 = v68;

  v115 = sub_1D6BEC5F4(v43, v47, &v134);

  v69 = v129;
  if (v129)
  {
    v114 = 0;
    v134 = 1;
    v70 = v130;
    v71 = v130;
    v112 = v124;
    v113 = v129;
    v111 = v123;
    v106 = v121;
    v107 = v122;
  }

  else
  {
    v71 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
    v72 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 8);
    v73 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 24);
    v74 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 32);
    v75 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 40);
    v76 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
    v112 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 16);
    v113 = v72;
    v111 = v73;
    v106 = v75;
    v107 = v74;
    v114 = v76;
    sub_1D62E312C(v71, v72, v112, v73, v74, v75, v76);
    v70 = v130;
  }

  LOBYTE(v135) = v105;
  BYTE1(v135) = v104;
  *(&v135 + 1) = v120;
  *&v136 = v119;
  *(&v136 + 1) = v118;
  *&v137 = v117;
  *(&v137 + 1) = v57;
  v138 = v58;
  *&v139 = v110;
  *(&v139 + 1) = v109;
  v140 = v108;
  sub_1D67F5880(v70, v69);
  v129 = sub_1D6BEC878(v131 + 152, v47, &v134, v77);
  v124 = v78;
  v130 = v71;
  if (v63)
  {
    sub_1D6C225A8(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
    sub_1D6C221DC(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v67, type metadata accessor for GroupLayoutContext);
    v79 = (*(v102 + 80) + 16) & ~*(v102 + 80);
    v80 = (v103 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    sub_1D5D5E5AC(v67, v82 + v79, type metadata accessor for GroupLayoutContext);
    *(v82 + v80) = v66;
    v83 = v126;
    *(v82 + v81) = v126;
    sub_1D5CF6A5C(&v135, v133);

    v131 = sub_1D725A80C();
  }

  else
  {
    v84 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions);
    sub_1D5CF6A5C(&v135, v133);
    v131 = v84;

    v83 = v126;
  }

  v85 = v47[2];
  sub_1D6C221DC(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v67, type metadata accessor for GroupLayoutContext);
  v86 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
  sub_1D5B68374(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v133);
  type metadata accessor for FormatNodeBinderContext(0);
  v87 = swift_allocObject();
  v88 = v125;
  *(v87 + 16) = v85;
  *(v87 + 24) = v88;
  v89 = v138;
  *(v87 + 80) = v137;
  *(v87 + 96) = v89;
  *(v87 + 112) = v139;
  *(v87 + 128) = v140;
  v90 = v136;
  *(v87 + 48) = v135;
  *(v87 + 64) = v90;
  *(v87 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v66;
  *(v87 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v83;
  sub_1D6C221DC(v67, v87 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
  v91 = v115;
  v92 = v128;
  *(v87 + 32) = v116;
  *(v87 + 40) = v92;
  *(v87 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v91;
  *(v87 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v86;
  sub_1D5B68374(v133, v87 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
  v93 = v87 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
  v94 = v112;
  v95 = v113;
  *v93 = v130;
  *(v93 + 8) = v95;
  *(v93 + 16) = v94;
  v96 = v106;
  v97 = v107;
  *(v93 + 24) = v111;
  *(v93 + 32) = v97;
  *(v93 + 40) = v96;
  *(v93 + 48) = v114;
  v98 = (v87 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
  v99 = v124;
  *v98 = v129;
  v98[1] = v99;

  sub_1D5D09C48(&v135);
  __swift_destroy_boxed_opaque_existential_1(v133);
  sub_1D6C222C4(v67, type metadata accessor for GroupLayoutContext);
  *(v87 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v131;
  return v87;
}

uint64_t sub_1D6C217B4(uint64_t a1, uint64_t a2)
{
  result = sub_1D6C2260C(&qword_1EC893A98, a2, type metadata accessor for FormatItemNode, &protocol conformance descriptor for FormatItemNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C2180C(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6C2260C(&qword_1EDF32660, a2, type metadata accessor for FormatItemNode, &protocol conformance descriptor for FormatItemNode);
  a1[2] = sub_1D6C2260C(&qword_1EDF11B80, v3, type metadata accessor for FormatItemNode, &protocol conformance descriptor for FormatItemNode);
  result = sub_1D6C2260C(&qword_1EC893AA0, v4, type metadata accessor for FormatItemNode, &protocol conformance descriptor for FormatItemNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6C218B8(uint64_t a1, uint64_t a2)
{
  result = sub_1D6C2260C(&qword_1EC893AA8, a2, type metadata accessor for FormatItemNode, &protocol conformance descriptor for FormatItemNode);
  *(a1 + 8) = result;
  return result;
}

void sub_1D6C21970(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v57 = a8;
  v66 = a4;
  sub_1D6C225A8(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = (&v47 - v18);
  v62 = a3[3];
  sub_1D720B6F0(&v62, *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v58);
  if (!v9)
  {
    v51 = a5;
    v52 = a1;
    v53 = a6;
    v50 = a7;
    v56 = a3;
    __swift_project_boxed_opaque_existential_1(&v58, v60);
    v20 = sub_1D725AA4C();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(&v58);
    if (*(*(v66 + 24) + 16))
    {
      *v19 = a2;
      v23 = type metadata accessor for FormatSourceMapContext(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v23 - 8) + 56))(v19, 0, 1, v23);
      swift_beginAccess();

      sub_1D6D60828(v19, v20, v22);
      swift_endAccess();
    }

    v54 = v20;
    v55 = v22;
    v24 = v51;
    v51 = a2;
    v25 = v56;
    v27 = sub_1D6C22060(v24, v53, a2, v56);
    v28 = *(*(v25 + 9) + 16);
    v29 = v52;
    if (__OFADD__(v28, 5))
    {
      __break(1u);
    }

    else
    {
      v47 = *(v25 + 9);
      v53 = a9;
      v48 = v27;
      v49 = v26;
      sub_1D7259E0C();
      *&v62 = v29;
      swift_getKeyPath();
      v60 = MEMORY[0x1E69E6158];
      v30 = MEMORY[0x1E69E6158];
      v61 = MEMORY[0x1E69D74F0];
      v58 = v50;
      v59 = v57;
      sub_1D5EB5368(0);
      sub_1D6C2260C(&qword_1EDF3C040, 255, sub_1D5EB5368, MEMORY[0x1E69D7158]);
      v50 = sub_1D6C2260C(&qword_1EDF3C168, 255, sub_1D5EB544C, MEMORY[0x1E69D6F60]);

      sub_1D7259A0C();

      __swift_destroy_boxed_opaque_existential_1(&v58);
      *&v62 = v29;
      swift_getKeyPath();
      v60 = v30;
      v31 = v30;
      v32 = MEMORY[0x1E69D74F0];
      v61 = MEMORY[0x1E69D74F0];
      v58 = v54;
      v59 = v55;
      sub_1D6C22324();

      sub_1D7259A0C();

      __swift_destroy_boxed_opaque_existential_1(&v58);
      *&v62 = v29;
      swift_getKeyPath();
      v60 = v31;
      v61 = v32;
      v58 = v48;
      v59 = v49;
      sub_1D7259A0C();

      __swift_destroy_boxed_opaque_existential_1(&v58);
      v63 = v29;
      swift_getKeyPath();
      v33 = v53;
      swift_beginAccess();
      v35 = *(v33 + 16);
      v34 = *(v33 + 24);
      v60 = MEMORY[0x1E69E6158];
      v61 = v32;
      v58 = v35;
      v59 = v34;

      sub_1D7259A0C();

      __swift_destroy_boxed_opaque_existential_1(&v58);
      v36 = *(v56 + 120);
      if (v36 != 7)
      {
        v63 = v29;
        swift_getKeyPath();
        v60 = &type metadata for FormatAccessibilityRole;
        v61 = sub_1D62E2C6C();
        LOBYTE(v58) = v36;
        sub_1D6C2243C();
        sub_1D7259A0C();

        __swift_destroy_boxed_opaque_existential_1(&v58);
      }

      v37 = *(v53 + 16);
      v38 = *(v53 + 24);

      sub_1D6B0A84C(v37, v38);

      sub_1D6B0B228(0, 0);

      v39 = sub_1D6B142D4(v54, v55);

      if (v28)
      {
        v40 = (v47 + 32);
        v41 = v66;
        do
        {
          v42 = *v40;
          v43 = v40[2];
          v64[1] = v40[1];
          v64[2] = v43;
          v64[0] = v42;
          v44 = v40[3];
          v45 = v40[4];
          v46 = v40[5];
          v65 = *(v40 + 12);
          v64[4] = v45;
          v64[5] = v46;
          v64[3] = v44;
          sub_1D5C5C4CC(v64, &v58);
          sub_1D6FBF7BC(v29, v39, v41);
          sub_1D5C5C540(v64);
          v40 = (v40 + 104);
          --v28;
        }

        while (v28);
      }
    }
  }
}

uint64_t sub_1D6C22060(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a2)
  {
    v7 = *(a3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
    v8 = MEMORY[0x1E69E6158];
    sub_1D5B49FDC(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7270C10;
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    v16 = *a4;
    *(v9 + 48) = v16;
    v15[2] = v9;
    sub_1D5E422A8(&v16, v15);
    sub_1D5B49FDC(0, &qword_1EDF43BA0, v8, MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();

    v10 = sub_1D7261F3C();
    v12 = v11;

    v13 = *(v7 + 40);
    if (v13)
    {
      v15[0] = *(v7 + 32);
      v15[1] = v13;

      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v10, v12);

      return v15[0];
    }
  }

  else
  {
    v10 = *a4;
  }

  return v10;
}

uint64_t sub_1D6C221DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C22244(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D6C225A8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6C222C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6C22324()
{
  result = qword_1EDF3C158;
  if (!qword_1EDF3C158)
  {
    sub_1D6C224C0(255, &qword_1EDF3C150, &qword_1EDF43BE0, MEMORY[0x1E69E6158], sub_1D6C223A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C158);
  }

  return result;
}

unint64_t sub_1D6C223A8()
{
  result = qword_1EDF1B678;
  if (!qword_1EDF1B678)
  {
    sub_1D5B49FDC(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B678);
  }

  return result;
}

unint64_t sub_1D6C2243C()
{
  result = qword_1EDF3C178;
  if (!qword_1EDF3C178)
  {
    sub_1D6C224C0(255, &qword_1EDF3C170, &qword_1EDF27760, &type metadata for FormatAccessibilityRole, sub_1D62E2D74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C178);
  }

  return result;
}

void sub_1D6C224C0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_1D5B49FDC(255, a3, a4, MEMORY[0x1E69E6720]);
    a5();
    v7 = sub_1D725995C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6C22548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D6C225A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6C2260C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t FormatSelectorSimpleValue.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, a2, v9);
  type metadata accessor for FormatSelectorValueSelector(0, a2, a3, v12);
  v13 = sub_1D726275C();
  (*(v8 + 8))(a1, a2);
  return FormatSelectorValue.init(value:selectors:)(v11, v13, a2, a3, a4);
}

void sub_1D6C2280C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[5];
  v9[4] = a2[4];
  v9[5] = v5;
  v9[6] = a2[6];
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  v7 = a2[3];
  v9[2] = a2[2];
  v9[3] = v7;
  v8 = type metadata accessor for FormatSelectorValue(0, *(a3 + 16), *(a3 + 24), a4);
  sub_1D62A61D8(a1, v9, v8);
}

uint64_t FormatSelectorSimpleValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v9 = type metadata accessor for FormatSelectorValue(0, a2, a3, a4);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v38 = &v30 - v11;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v30 - v18;
  v21 = type metadata accessor for FormatSelectorSimpleValue(0, a2, a3, v20);
  v34 = *(v21 - 8);
  v35 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v33 = &v30 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (v5)
  {
    sub_1D5B68374(a1, v37);
    v24 = v38;
    FormatSelectorValue.init(from:)(v37, a2, v38);

    v28 = v33;
    (*(v31 + 32))(v33, v24, v32);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    sub_1D726472C();
    v25 = v30;
    (*(v30 + 16))(v15, v19, a2);
    type metadata accessor for FormatSelectorValueSelector(0, a2, a3, v26);
    v27 = sub_1D726275C();
    (*(v25 + 8))(v19, a2);
    v28 = v33;
    FormatSelectorValue.init(value:selectors:)(v15, v27, a2, a3, v33);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  (*(v34 + 32))(v36, v28, v35);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSelectorSimpleValue.encode(to:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v11 = sub_1D725BD1C();
  v12 = __swift_project_value_buffer(v11, qword_1EDFFCE38);
  (*(*(v11 - 8) + 16))(v8, v12, v11);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v8, sub_1D5B4AA6C, 0, v9, v10);
  result = sub_1D6079974(v8);
  if (!v2)
  {
    v16 = *(a2 + 16);
    v15 = *(a2 + 24);
    v17 = type metadata accessor for FormatSelectorValue(0, v16, v15, v14);
    v19[1] = sub_1D61834A8(v17);
    type metadata accessor for FormatSelectorValueSelector(255, v16, v15, v18);
    sub_1D72627FC();
    swift_getWitnessTable();
    if (sub_1D7262CCC())
    {
      return sub_1D7261E6C();
    }

    else
    {
      return FormatSelectorValue.encode(to:)(a1, v17);
    }
  }

  return result;
}

uint64_t sub_1D6C22EA4(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6C22F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FormatSelectorValue(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D6C22F94(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for SportsDataVisualizationResponseItem(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    v22 = 0;
    v23 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_27:
    v18 = v21;
    v19 = v22;
    *v21 = v13;
    v18[1] = v12;
    v18[2] = v11;
    v18[3] = v10;
    v18[4] = v9;
    v18[5] = v19;
    v18[6] = v23;
    return;
  }

  v22 = 0;
  v23 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v15 = *(v5 + 72);
  while (1)
  {
    sub_1D6C231C4(v14, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D6C23228(v7);
          v16 = __OFADD__(v12++, 1);
          if (v16)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_1D6C23228(v7);
          v16 = __OFADD__(v11++, 1);
          if (v16)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        v16 = __OFADD__(v13++, 1);
        if (v16)
        {
          goto LABEL_30;
        }

        sub_1D6C23228(v7);
      }

      goto LABEL_4;
    }

    if (EnumCaseMultiPayload <= 4)
    {
      break;
    }

    if (EnumCaseMultiPayload == 5)
    {
      sub_1D6C23228(v7);
      if (__OFADD__(v22, 1))
      {
        goto LABEL_28;
      }

      ++v22;
    }

    else
    {
      sub_1D6C23228(v7);
      if (__OFADD__(v23, 1))
      {
        goto LABEL_32;
      }

      ++v23;
    }

LABEL_4:
    v14 += v15;
    if (!--v8)
    {
      goto LABEL_27;
    }
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1D6C23228(v7);
    v16 = __OFADD__(v9++, 1);
    if (v16)
    {
      goto LABEL_33;
    }

    goto LABEL_4;
  }

  sub_1D6C23228(v7);
  v16 = __OFADD__(v10++, 1);
  if (!v16)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_28:
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
}

uint64_t sub_1D6C231C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataVisualizationResponseItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C23228(uint64_t a1)
{
  v2 = type metadata accessor for SportsDataVisualizationResponseItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s8NewsFeed18FormatFloatBindingO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 >> 5) & 3;
  v5 = v3 & 0x60;
  if (!v4)
  {
    return v2 == v3 && v5 == 0;
  }

  if (v4 == 1)
  {
    v6 = ((v3 ^ v2) & 0x9F) == 0;
    return v5 == 32 && v6;
  }

  else
  {
    if (v5 == 64)
    {
      if ((v2 & 0x80) != 0)
      {
        if ((v3 & 0x80) != 0 && ((v3 ^ v2) & 0x1F) == 0)
        {
          return 1;
        }
      }

      else if ((v3 & 0x80) == 0 && ((v3 ^ v2) & 0x1F) == 0)
      {
        return 1;
      }
    }

    return 0;
  }
}

unint64_t sub_1D6C23348(uint64_t a1)
{
  result = sub_1D6C23370();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C23370()
{
  result = qword_1EC893AB0;
  if (!qword_1EC893AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893AB0);
  }

  return result;
}

unint64_t sub_1D6C233C4(void *a1)
{
  a1[1] = sub_1D6677FFC();
  a1[2] = sub_1D6678178();
  result = sub_1D6C233FC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C233FC()
{
  result = qword_1EC893AB8;
  if (!qword_1EC893AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893AB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatFloatBinding(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 242 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 242) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 242;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 242;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 242;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0xC | (*a1 >> 5) & 3) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FormatFloatBinding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE)
  {
    v4 = 0;
  }

  if (a2 > 0xD)
  {
    v5 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 8 * ((((-a2 >> 2) & 3) - 4 * a2) & 0xF);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t IssueCoverImageProcessorRequest.cacheIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

__n128 IssueCoverImageProcessorRequest.corners.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 56);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t IssueCoverImageProcessorRequest.__allocating_init(assetHandle:size:scale:corners:)(void *a1, uint64_t *a2, double a3, double a4, double a5)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = sub_1D6C23C00(v13, a2, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t IssueCoverImageProcessorRequest.init(assetHandle:size:scale:corners:)(void *a1, uint64_t *a2, double a3, double a4, double a5)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = MEMORY[0x1EEE9AC00](v13, v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_1D6C23960(a3, a4, a5, v16, a2, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v18;
}

uint64_t IssueCoverImageProcessorRequest.Corners.init(cornerRadius:roundedCorners:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = a3;
  if (a3 > 0.0)
  {
    v4 = result;
  }

  else
  {
    v3 = 0.0;
    v4 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = a3 <= 0.0;
  return result;
}

uint64_t IssueCoverImageProcessorRequest.Corners.description.getter(uint64_t a1)
{
  if (*(v1 + 16))
  {
    return 0x657261757173;
  }

  v3 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  v4 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v4);

  return 0x3A3A646E756F72;
}

uint64_t IssueCoverImageProcessorRequest.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  return v0;
}

uint64_t IssueCoverImageProcessorRequest.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6C23960(double a1, double a2, double a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26[3] = a7;
  v26[4] = a8;
  __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a7 - 8) + 32))();
  v15 = *a5;
  v14 = a5[1];
  v16 = *(a5 + 16);
  sub_1D6C23D98(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 0x616D497265766F63;
  *(inited + 40) = 0xEA00000000006567;
  sub_1D5B68374(v26, inited + 48);
  v18 = sub_1D5BFFC64(inited);
  swift_setDeallocating();
  sub_1D5F99394(inited + 32);
  *(a6 + 80) = v18;
  sub_1D5B68374(v26, a6 + 88);
  *(a6 + 32) = a1;
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = v15;
  *(a6 + 64) = v14;
  *(a6 + 72) = v16;
  v19 = sub_1D725D2DC();
  MEMORY[0x1DA6F9910](v19);

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  type metadata accessor for CGSize(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  v20 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v20);

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  if (v16)
  {
    v21 = 0xE600000000000000;
    v22 = 0x657261757173;
  }

  else
  {
    v23 = sub_1D7262A9C();
    MEMORY[0x1DA6F9910](v23);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    v24 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v24);

    v22 = 0x3A3A646E756F72;
    v21 = 0xE700000000000000;
  }

  MEMORY[0x1DA6F9910](v22, v21);

  *(a6 + 16) = 0;
  *(a6 + 24) = 0xE000000000000000;
  __swift_destroy_boxed_opaque_existential_1(v26);
  return a6;
}

uint64_t sub_1D6C23C00(uint64_t a1, uint64_t *a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a1, a7);
  return sub_1D6C23960(a3, a4, a5, v17, a2, v18, a7, a8);
}

void sub_1D6C23D98(uint64_t a1)
{
  if (!qword_1EDF19590)
  {
    sub_1D5C16B18(255);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19590);
    }
  }
}

uint64_t sub_1D6C23E00(void *a1)
{
  v3 = v1;
  sub_1D6C266A0(0, &qword_1EC893AC0, sub_1D6C2664C, &type metadata for A6_V4.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C2664C();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5C14818(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5BEE168(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69E62F8]);
    sub_1D5BD484C(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6C2405C(uint64_t a1)
{
  v2 = sub_1D6C2664C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C24098(uint64_t a1)
{
  v2 = sub_1D6C2664C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6C240D4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6C26398(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6C24134(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6C2605C();

  return sub_1D725A24C();
}

uint64_t sub_1D6C241B0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6C266A0(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D6C2426C(_BYTE *a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v36 = sub_1D725A36C();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A6_V4.Bound(0);
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v44);
  sub_1D5B68374(v12 + 56, v43);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v44, v15 + 16);
  sub_1D5B63F14(v43, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v42[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v42, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  __swift_destroy_boxed_opaque_existential_1((v15 + 56));
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v43);
  sub_1D5B68374(v16 + 56, v42);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v43, v18 + 16);
  sub_1D5B63F14(v42, v18 + 56);
  *(v18 + 96) = v17;
  v41[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v41, v44);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v18 + 16));
  __swift_destroy_boxed_opaque_existential_1((v18 + 56));
  v19 = sub_1D6F50B74(v44, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v44[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v44[0];
  v37 = v2;
  v40[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D6C25FF8, v40);

  v23 = *MEMORY[0x1E69D7130];
  v24 = sub_1D7259D1C();
  (*(*(v24 - 8) + 104))(v6, v23, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v36);
  v39 = v22;
  sub_1D6C26104(0, &qword_1EDF17FA8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v36 = sub_1D725A4CC();
  sub_1D725A4DC();
  v25 = v45;
  sub_1D5C1445C(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  v26 = MEMORY[0x1E69E62F8];
  sub_1D5BEE168(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69E62F8]);
  sub_1D5BD48FC();
  v27 = sub_1D5BD49DC(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v34 = v44[1];
  v35 = v44[0];
  *&v44[0] = v22;
  *&v43[0] = v25;
  MEMORY[0x1EEE9AC00](v27, v28);

  v29 = sub_1D725C00C();

  v30 = v38;
  *v38 = 0;
  v31 = v35;
  *(v30 + 24) = v34;
  *(v30 + 8) = v31;
  *&v44[0] = v29;
  sub_1D5BEE168(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v26);
  sub_1D5BD49DC(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v32 = sub_1D72623BC();

  v33 = MEMORY[0x1E69E7CC0];
  *(v30 + 5) = v32;
  *(v30 + 6) = v33;
}

uint64_t sub_1D6C247DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6C248AC(uint64_t a1, uint64_t a2)
{
  sub_1D6C266A0(0, &qword_1EDF17F70, sub_1D6C26008, &type metadata for A6_V4.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D6C26104(0, &qword_1EDF18030, MEMORY[0x1E69D7150]);
  sub_1D6C260C0(&qword_1EDF18038, &qword_1EDF18030, v11, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D6C24A98(uint64_t a1, int *a2)
{
  v143 = a2;
  v157 = a1;
  v130 = sub_1D725A36C();
  v128 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v3);
  v131 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1D725A19C();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v5);
  v129 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Context(0);
  v147 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v144 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C266A0(0, &qword_1EDF17F70, sub_1D6C26008, &type metadata for A6_V4.Layout, MEMORY[0x1E69D74B0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = (&v128 - v18);
  v158 = a1;
  v20 = sub_1D725994C();
  v21 = swift_allocBox();
  v22 = *(v20 - 8);
  v23 = *(v22 + 104);
  v153 = *MEMORY[0x1E69D6F50];
  v154 = v20;
  v151 = v22 + 104;
  v152 = v23;
  v23(v24);
  *v19 = v21;
  v25 = v16 + 104;
  v26 = *(v16 + 104);
  v150 = *MEMORY[0x1E69D73C0];
  v26(v19);
  v27 = MEMORY[0x1E69D6F38];
  sub_1D6C26104(0, &qword_1EDF18118, MEMORY[0x1E69D6F38]);
  v29 = v28;
  v30 = sub_1D6C260C0(&qword_1EDF18120, &qword_1EDF18118, v27, MEMORY[0x1E69D6F40]);
  v146 = v29;
  v155 = v30;
  sub_1D7259A9C();
  v31 = *(v16 + 8);
  v148 = v16 + 8;
  v31(v19, v15);
  v32 = v15;
  v158 = v157;
  swift_getKeyPath();
  (v26)(v19, *MEMORY[0x1E69D74A8], v15);
  v149 = *(v143 + 2);
  if (v149)
  {
    v156 = v26;
    v145 = v25;
    v141 = v143 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
    sub_1D5BE3ED8(v141, v144, type metadata accessor for HeadlineViewLayout.Context);
    v33 = v7[5];
    v34 = *MEMORY[0x1E69D7348];
    v35 = sub_1D725A34C();
    v36 = *(v35 - 8);
    v37 = *(v36 + 104);
    v139 = v34;
    v137 = v36 + 104;
    v136 = v37;
    v37(&v10[v33], v34, v35);
    v38 = *(v36 + 56);
    v140 = v35;
    v138 = v36 + 56;
    v135 = v38;
    v38(&v10[v33], 0, 1, v35);
    v39 = MEMORY[0x1E69DDC70];
    *v10 = 0;
    *&v10[v7[6]] = 0;
    v40 = *v39;
    v143 = v7;
    *&v10[v7[7]] = v40;
    v41 = qword_1EDF386E8;
    v134 = v40;
    if (v41 == -1)
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

  v42 = v129;
  sub_1D725972C();

  v45 = MEMORY[0x1EEE9AC00](v43, v44);
  v46 = v144;
  *(&v128 - 4) = v144;
  *(&v128 - 3) = v10;
  v127 = v42;
  (*(v128 + 104))(v131, *MEMORY[0x1E69D7378], v130, v45);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v132 + 8))(v42, v133);
  sub_1D5BE780C(v10, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v46, type metadata accessor for HeadlineViewLayout.Context);
  v144 = sub_1D5BE8850();
  v127 = v144;
  sub_1D7259A4C();

  v31(v19, v32);
  v158 = v157;
  v47 = v154;
  v48 = swift_allocBox();
  v152(v49, v153, v47);
  *v19 = v48;
  (v156)(v19, v150, v32);
  sub_1D7259A9C();
  v31(v19, v32);
  v142 = v31;
  if (v149 != 1)
  {
    v158 = v157;
    swift_getKeyPath();
    v50 = swift_allocObject();
    *(v50 + 16) = 0x4060200000000000;
    *v19 = v50;
    (v156)(v19, *MEMORY[0x1E69D73D8], v32);
    sub_1D6C26188(0);
    sub_1D6C266A0(0, &qword_1EDF180B8, sub_1D6C26008, &type metadata for A6_V4.Layout, MEMORY[0x1E69D70D8]);
    v52 = v51;
    v53 = *(v51 - 8);
    v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1D7273AE0;
    *(v55 + v54) = 0x4058C00000000000;
    v56 = v55 + v54;
    v31 = v142;
    (*(v53 + 104))(v56, *MEMORY[0x1E69D70D0], v52);
    v57 = *(v147 + 72);
    v58 = v143;
    v59 = v143[5];
    v60 = v140;
    v136(&v10[v59], v139, v140);
    v135(&v10[v59], 0, 1, v60);
    *v10 = 0;
    *&v10[v58[6]] = 0;
    v61 = v134;
    *&v10[v58[7]] = v134;
    v62 = *MEMORY[0x1E69DDCE0];
    v63 = *(MEMORY[0x1E69DDCE0] + 8);
    v64 = *(MEMORY[0x1E69DDCE0] + 16);
    v65 = *(MEMORY[0x1E69DDCE0] + 24);
    v66 = v61;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v141 + v57, v10, v62, v63, v64, v65);
    sub_1D5BE780C(v10, type metadata accessor for HeadlineViewLayout.Options);
    v127 = v144;
    sub_1D7259A4C();

    v31(v19, v32);
  }

  v158 = v157;
  v67 = v154;
  v68 = swift_allocBox();
  v152(v69, v153, v67);
  *v19 = v68;
  (v156)(v19, v150, v32);
  sub_1D7259A9C();
  v31(v19, v32);
  if (v149 >= 3)
  {
    v158 = v157;
    swift_getKeyPath();
    v70 = swift_allocObject();
    *(v70 + 16) = 0x4060200000000000;
    *v19 = v70;
    (v156)(v19, *MEMORY[0x1E69D73D8], v32);
    sub_1D6C26188(0);
    sub_1D6C266A0(0, &qword_1EDF180B8, sub_1D6C26008, &type metadata for A6_V4.Layout, MEMORY[0x1E69D70D8]);
    v72 = v71;
    v73 = *(v71 - 8);
    v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1D7273AE0;
    *(v75 + v74) = 0x4058C00000000000;
    v76 = v75 + v74;
    v31 = v142;
    (*(v73 + 104))(v76, *MEMORY[0x1E69D70D0], v72);
    v77 = v141 + 2 * *(v147 + 72);
    v78 = v143;
    v79 = v143[5];
    v80 = v140;
    v136(&v10[v79], v139, v140);
    v135(&v10[v79], 0, 1, v80);
    *v10 = 0;
    *&v10[v78[6]] = 0;
    v81 = v134;
    *&v10[v78[7]] = v134;
    v82 = *MEMORY[0x1E69DDCE0];
    v83 = *(MEMORY[0x1E69DDCE0] + 8);
    v84 = *(MEMORY[0x1E69DDCE0] + 16);
    v85 = *(MEMORY[0x1E69DDCE0] + 24);
    v86 = v81;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v77, v10, v82, v83, v84, v85);
    sub_1D5BE780C(v10, type metadata accessor for HeadlineViewLayout.Options);
    v127 = v144;
    sub_1D7259A4C();

    v31(v19, v32);
  }

  v158 = v157;
  v87 = v154;
  v88 = swift_allocBox();
  v152(v89, v153, v87);
  *v19 = v88;
  (v156)(v19, v150, v32);
  sub_1D7259A9C();
  v31(v19, v32);
  if (v149 >= 4)
  {
    v158 = v157;
    swift_getKeyPath();
    v90 = swift_allocObject();
    *(v90 + 16) = 0x4060200000000000;
    *v19 = v90;
    (v156)(v19, *MEMORY[0x1E69D73D8], v32);
    sub_1D6C26188(0);
    sub_1D6C266A0(0, &qword_1EDF180B8, sub_1D6C26008, &type metadata for A6_V4.Layout, MEMORY[0x1E69D70D8]);
    v92 = v91;
    v93 = *(v91 - 8);
    v94 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1D7273AE0;
    *(v95 + v94) = 0x4058C00000000000;
    v96 = v95 + v94;
    v31 = v142;
    (*(v93 + 104))(v96, *MEMORY[0x1E69D70D0], v92);
    v97 = 3 * *(v147 + 72);
    v98 = v143;
    v99 = v143[5];
    v100 = v140;
    v136(&v10[v99], v139, v140);
    v135(&v10[v99], 0, 1, v100);
    *v10 = 0;
    *&v10[v98[6]] = 0;
    v101 = v134;
    *&v10[v98[7]] = v134;
    v102 = *MEMORY[0x1E69DDCE0];
    v103 = *(MEMORY[0x1E69DDCE0] + 8);
    v104 = *(MEMORY[0x1E69DDCE0] + 16);
    v105 = *(MEMORY[0x1E69DDCE0] + 24);
    v106 = v101;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v141 + v97, v10, v102, v103, v104, v105);
    sub_1D5BE780C(v10, type metadata accessor for HeadlineViewLayout.Options);
    v127 = v144;
    sub_1D7259A4C();

    v31(v19, v32);
  }

  v158 = v157;
  v107 = v154;
  v108 = swift_allocBox();
  v152(v109, v153, v107);
  *v19 = v108;
  (v156)(v19, v150, v32);
  sub_1D7259A9C();
  result = (v31)(v19, v32);
  if (v149 >= 5)
  {
    v158 = v157;
    swift_getKeyPath();
    v111 = swift_allocObject();
    *(v111 + 16) = 0x4060200000000000;
    *v19 = v111;
    (v156)(v19, *MEMORY[0x1E69D73D8], v32);
    sub_1D6C26188(0);
    sub_1D6C266A0(0, &qword_1EDF180B8, sub_1D6C26008, &type metadata for A6_V4.Layout, MEMORY[0x1E69D70D8]);
    v113 = v112;
    v114 = *(v112 - 8);
    v115 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_1D7273AE0;
    *(v116 + v115) = 0x4058C00000000000;
    (*(v114 + 104))(v116 + v115, *MEMORY[0x1E69D70D0], v113);
    v117 = v141 + 4 * *(v147 + 72);
    v118 = v143;
    v119 = v143[5];
    v120 = v140;
    v136(&v10[v119], v139, v140);
    v135(&v10[v119], 0, 1, v120);
    *v10 = 0;
    *&v10[v118[6]] = 0;
    v121 = v134;
    *&v10[v118[7]] = v134;
    v122 = *MEMORY[0x1E69DDCE0];
    v123 = *(MEMORY[0x1E69DDCE0] + 8);
    v124 = *(MEMORY[0x1E69DDCE0] + 16);
    v125 = *(MEMORY[0x1E69DDCE0] + 24);
    v126 = v121;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v117, v10, v122, v123, v124, v125);
    sub_1D5BE780C(v10, type metadata accessor for HeadlineViewLayout.Options);
    v127 = v144;
    sub_1D7259A4C();

    return (v142)(v19, v32);
  }

  return result;
}

uint64_t sub_1D6C25ED4@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A6_V4.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6C26008()
{
  result = qword_1EDF05F00;
  if (!qword_1EDF05F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F00);
  }

  return result;
}

unint64_t sub_1D6C2605C()
{
  result = qword_1EDF05F18;
  if (!qword_1EDF05F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F18);
  }

  return result;
}

uint64_t sub_1D6C260C0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6C26104(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6C26104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A6_V4.Layout;
    v8[1] = &type metadata for A6_V4.Layout.Attributes;
    v8[2] = sub_1D6C26008();
    v8[3] = sub_1D6C2605C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6C26188(uint64_t a1)
{
  if (!qword_1EDF023F0)
  {
    sub_1D6C266A0(255, &qword_1EDF180B8, sub_1D6C26008, &type metadata for A6_V4.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF023F0);
    }
  }
}

unint64_t sub_1D6C2623C()
{
  result = qword_1EDF05F08;
  if (!qword_1EDF05F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F08);
  }

  return result;
}

unint64_t sub_1D6C26294()
{
  result = qword_1EDF05F10;
  if (!qword_1EDF05F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F10);
  }

  return result;
}

unint64_t sub_1D6C262EC()
{
  result = qword_1EDF05F28;
  if (!qword_1EDF05F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F28);
  }

  return result;
}

unint64_t sub_1D6C26344()
{
  result = qword_1EDF05F20;
  if (!qword_1EDF05F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F20);
  }

  return result;
}

uint64_t sub_1D6C26398@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6C266A0(0, &qword_1EDF037F8, sub_1D6C2664C, &type metadata for A6_V4.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C2664C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D5C14818(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5BEE168(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69E62F8]);
  v20 = 1;
  sub_1D5BD484C(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6C2664C()
{
  result = qword_1EDF05F40;
  if (!qword_1EDF05F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F40);
  }

  return result;
}

void sub_1D6C266A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6C2671C()
{
  result = qword_1EC893AC8;
  if (!qword_1EC893AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893AC8);
  }

  return result;
}

unint64_t sub_1D6C26774()
{
  result = qword_1EDF05F30;
  if (!qword_1EDF05F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F30);
  }

  return result;
}

unint64_t sub_1D6C267CC()
{
  result = qword_1EDF05F38;
  if (!qword_1EDF05F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F38);
  }

  return result;
}

uint64_t sub_1D6C26820(uint64_t a1)
{
  v2 = *v1;
  v3 = v2 >> 5;
  if (v2 >> 5 <= 2)
  {
    if (v3)
    {
      v7 = v2 & 0x1F;
      if (v3 == 1)
      {
        v19 = v7;
        v5 = sub_1D6C68238(&v19);
        v6 = sub_1D72631FC();
      }

      else
      {
        v20 = v7;
        v5 = sub_1D6C68238(&v20);
        v6 = sub_1D72631CC();
      }
    }

    else
    {
      v18 = *v1;
      v5 = sub_1D6C68238(&v18);
      v6 = sub_1D72631DC();
    }

    goto LABEL_14;
  }

  if (v2 >> 5 <= 4)
  {
    v4 = v2 & 0x1F;
    if (v3 == 3)
    {
      v21 = v4;
      v5 = sub_1D6C68238(&v21);
      v6 = sub_1D72631EC();
LABEL_14:
      v12 = v6;

      return v12 & 1;
    }

    v22 = v4;
    sub_1D6C68238(&v22);
    v13 = sub_1D726207C();
    v15 = v14;
    if (v13 == sub_1D726207C() && v15 == v16)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1D72646CC();
    }

LABEL_25:

    return v12 & 1;
  }

  if (v3 == 5)
  {
    v23 = v2 & 0x1F;
    sub_1D6C68238(&v23);
    v8 = sub_1D726207C();
    v10 = v9;
    if (v8 == sub_1D726207C() && v10 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_1D72646CC() ^ 1;
    }

    goto LABEL_25;
  }

  if (v2 == 192)
  {
    v12 = 1;
    return v12 & 1;
  }

  if (v2 == 193)
  {

    return sub_1D72631FC();
  }

  else
  {

    return sub_1D72631EC();
  }
}

uint64_t FormatContentSizeCategory.encode(to:)(void *a1)
{
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v118 = (&v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v117 = &v104 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v116 = &v104 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v115 = &v104 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v114 = &v104 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v113 = &v104 - v20;
  v21 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v112 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v111 = &v104 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v110 = &v104 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v109 = &v104 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v108 = &v104 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v107 = &v104 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v106 = &v104 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v105 = &v104 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v104 = &v104 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v104 - v50;
  LODWORD(v119) = *v1;
  v52 = a1[3];
  v53 = a1[4];
  v120 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v52);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v54 = sub_1D725BD1C();
  v55 = __swift_project_value_buffer(v54, qword_1EDFFCD30);
  v56 = *(v54 - 8);
  v57 = *(v56 + 16);
  v58 = v56 + 16;
  (v57)(v51, v55, v54);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v59 = v121;
  sub_1D5D2BEC4(v51, sub_1D5B4AA6C, 0, v52, v53);
  if (v59)
  {
    v60 = type metadata accessor for FormatVersionRequirement;
    v61 = v51;
    return sub_1D5D2CF28(v61, v60);
  }

  v121 = v58;
  sub_1D5D2CF28(v51, type metadata accessor for FormatVersionRequirement);
  v62 = v119;
  v63 = v119 >> 5;
  if (v119 >> 5 <= 2)
  {
    if (v63)
    {
      if (v63 == 1)
      {
        v72 = v120[3];
        v73 = v120[4];
        __swift_project_boxed_opaque_existential_1(v120, v72);
        sub_1D5C30408();
        v66 = v114;
        sub_1D71B5B30(&type metadata for FormatCodingKeys, v74, v72, &type metadata for FormatVersions.DawnburstF, v73, &off_1F51F6BD8, v114);
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v75 = __swift_project_value_buffer(v54, qword_1EDFFCE80);
        v69 = v108;
        (v57)(v108, v75, v54);
        swift_storeEnumTagMultiPayload();
        v70 = v62 & 0x1F;
        v71 = 10;
      }

      else
      {
        v87 = v120[3];
        v88 = v120[4];
        __swift_project_boxed_opaque_existential_1(v120, v87);
        sub_1D5C30408();
        v66 = v115;
        sub_1D71B5B30(&type metadata for FormatCodingKeys, v89, v87, &type metadata for FormatVersions.DawnburstF, v88, &off_1F51F6BD8, v115);
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v90 = __swift_project_value_buffer(v54, qword_1EDFFCE80);
        v69 = v109;
        (v57)(v109, v90, v54);
        swift_storeEnumTagMultiPayload();
        v70 = v62 & 0x1F;
        v71 = 11;
      }
    }

    else
    {
      v83 = v120[3];
      v84 = v120[4];
      __swift_project_boxed_opaque_existential_1(v120, v83);
      sub_1D5C30408();
      v66 = v113;
      sub_1D71B5B30(&type metadata for FormatCodingKeys, v85, v83, &type metadata for FormatVersions.DawnburstF, v84, &off_1F51F6BD8, v113);
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v86 = __swift_project_value_buffer(v54, qword_1EDFFCE80);
      v69 = v107;
      (v57)(v107, v86, v54);
      swift_storeEnumTagMultiPayload();
      v71 = 9;
      v70 = v62;
    }

    goto LABEL_29;
  }

  if (v119 >> 5 <= 4)
  {
    v118 = v57;
    if (v63 == 3)
    {
      v64 = v120[3];
      v65 = v120[4];
      __swift_project_boxed_opaque_existential_1(v120, v64);
      sub_1D5C30408();
      v66 = v116;
      sub_1D71B5B30(&type metadata for FormatCodingKeys, v67, v64, &type metadata for FormatVersions.DawnburstF, v65, &off_1F51F6BD8, v116);
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v68 = __swift_project_value_buffer(v54, qword_1EDFFCE80);
      v69 = v110;
      (v118)(v110, v68, v54);
      swift_storeEnumTagMultiPayload();
      v70 = v62 & 0x1F;
      v71 = 12;
    }

    else
    {
      v91 = v120[3];
      v92 = v120[4];
      __swift_project_boxed_opaque_existential_1(v120, v91);
      sub_1D5C30408();
      v66 = v117;
      sub_1D71B5B30(&type metadata for FormatCodingKeys, v93, v91, &type metadata for FormatVersions.DawnburstF, v92, &off_1F51F6BD8, v117);
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v94 = __swift_project_value_buffer(v54, qword_1EDFFCE80);
      v69 = v111;
      (v118)(v111, v94, v54);
      swift_storeEnumTagMultiPayload();
      v70 = v62 & 0x1F;
      v71 = 13;
    }

LABEL_29:
    sub_1D6390D74(v71, v70, v69);
    sub_1D5D2CF28(v69, type metadata accessor for FormatVersionRequirement);
    v60 = sub_1D5D30DC4;
    v61 = v66;
    return sub_1D5D2CF28(v61, v60);
  }

  if (v63 == 5)
  {
    v76 = v57;
    v77 = v120[3];
    v78 = v120[4];
    __swift_project_boxed_opaque_existential_1(v120, v77);
    sub_1D5C30408();
    v79 = v118;
    sub_1D71B5B30(&type metadata for FormatCodingKeys, v80, v77, &type metadata for FormatVersions.DawnburstF, v78, &off_1F51F6BD8, v118);
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v81 = __swift_project_value_buffer(v54, qword_1EDFFCE80);
    v82 = v112;
    v76(v112, v81, v54);
    swift_storeEnumTagMultiPayload();
    sub_1D6390D74(14, v62 & 0x1F, v82);
    sub_1D5D2CF28(v82, type metadata accessor for FormatVersionRequirement);
    v60 = sub_1D5D30DC4;
    v61 = v79;
    return sub_1D5D2CF28(v61, v60);
  }

  if (v119 == 192)
  {
    v100 = v120;
    v101 = v120[3];
    v119 = v120[4];
    __swift_project_boxed_opaque_existential_1(v120, v101);
    v102 = v104;
    (v57)(v104, v55, v54);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v102, sub_1D5B4AA6C, 0, v101, v119);
    sub_1D5D2CF28(v102, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v100, v100[3]);
    sub_1D7264B3C();
    v123 = 0;
  }

  else
  {
    v96 = v120;
    v97 = v120[3];
    if (v119 == 193)
    {
      v119 = v120[4];
      __swift_project_boxed_opaque_existential_1(v120, v97);
      v98 = v105;
      (v57)(v105, v55, v54);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v98, sub_1D5B4AA6C, 0, v97, v119);
      sub_1D5D2CF28(v98, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v96, v96[3]);
      sub_1D7264B3C();
      v99 = 1;
    }

    else
    {
      v119 = v120[4];
      __swift_project_boxed_opaque_existential_1(v120, v97);
      v103 = v106;
      (v57)(v106, v55, v54);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v103, sub_1D5B4AA6C, 0, v97, v119);
      sub_1D5D2CF28(v103, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v96, v96[3]);
      sub_1D7264B3C();
      v99 = 2;
    }

    v123 = v99;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v122, v122[3]);
  sub_1D66F4858();
  sub_1D726476C();
  return __swift_destroy_boxed_opaque_existential_1(v122);
}

unint64_t sub_1D6C27738(char a1)
{
  result = 7958113;
  switch(a1)
  {
    case 1:
      result = 1480683374;
      break;
    case 2:
      result = 0x5841796C6E6FLL;
      break;
    case 3:
    case 4:
      result = 0x6E6168547373656CLL;
      break;
    case 5:
      result = 0x5472657461657267;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6C61757165;
      break;
    case 8:
      result = 0x6C61757145746F6ELL;
      break;
    case 9:
      result = 29804;
      break;
    case 10:
      result = 6648940;
      break;
    case 11:
      result = 29799;
      break;
    case 12:
      result = 6648935;
      break;
    case 13:
      result = 29029;
      break;
    case 14:
      result = 7431534;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6C27870(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D6C27738(*a1);
  v5 = v4;
  if (v3 == sub_1D6C27738(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6C278F8()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6C27738(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6C2795C(uint64_t a1)
{
  sub_1D6C27738(*v1);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6C279B0(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D6C27738(v2);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6C27A10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6C28218(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D6C27A40@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D6C27738(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t FormatContentSizeCategory.description.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = v2 >> 5;
  if (v2 >> 5 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        sub_1D7263D4C();

        v4 = 0xD000000000000013;
        goto LABEL_8;
      }

      v5 = 0x2072657461657247;
    }

    else
    {
      v5 = 0x616854207373654CLL;
    }

LABEL_14:
    v9 = v5;
    goto LABEL_15;
  }

  if (v2 >> 5 <= 4)
  {
    if (v3 == 3)
    {
      sub_1D7263D4C();

      v4 = 0xD000000000000016;
LABEL_8:
      v9 = v4;
LABEL_15:
      v6 = FormatContentSizeCategoryValue.rawValue.getter();
      MEMORY[0x1DA6F9910](v6);

      return v9;
    }

    v5 = 0x206C61757145;
    goto LABEL_14;
  }

  if (v3 == 5)
  {
    v5 = 0x6175714520746F4ELL;
    goto LABEL_14;
  }

  v8 = 0x5841206F4ELL;
  if (v2 != 193)
  {
    v8 = 0x584120796C6E4FLL;
  }

  if (v2 == 192)
  {
    return 7958081;
  }

  else
  {
    return v8;
  }
}

unint64_t FormatContentSizeCategory.groupLayoutContentSizeCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = v3 >> 5;
  if (v5 > 2)
  {
    if ((v3 >> 5) > 4u && v5 != 5)
    {
      result = (v4 + 64);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 >> 5)
  {
    if (v5 == 1)
    {
LABEL_8:
      v3 &= 0x1Fu;
      goto LABEL_9;
    }

    v3 = v4 & 0x1F;
  }

LABEL_9:
  result = **(&unk_1E84CFBB0 + v3);
LABEL_10:
  *a1 = result;
  *(a1 + 8) = v4 >> 5;
  return result;
}

uint64_t _s8NewsFeed25FormatContentSizeCategoryO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  if (v2 >> 5 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        if ((v3 & 0xE0) != 0x20)
        {
          goto LABEL_28;
        }
      }

      else if ((v3 & 0xE0) != 0x40)
      {
        goto LABEL_28;
      }
    }

    else if (v3 > 0x1F)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v2 >> 5 <= 4)
    {
      if (v4 == 3)
      {
        if ((v3 & 0xE0) == 0x60)
        {
          goto LABEL_18;
        }
      }

      else if ((v3 & 0xE0) == 0x80)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }

    if (v4 != 5)
    {
      if (v2 == 192)
      {
        if (v3 != 192)
        {
          goto LABEL_28;
        }
      }

      else if (v2 == 193)
      {
        if (v3 != 193)
        {
          goto LABEL_28;
        }
      }

      else if (v3 != 194)
      {
        goto LABEL_28;
      }

      v9 = 1;
      return v9 & 1;
    }

    if ((v3 & 0xE0) != 0xA0)
    {
LABEL_28:
      v9 = 0;
      return v9 & 1;
    }
  }

LABEL_18:
  v5 = FormatContentSizeCategoryValue.rawValue.getter();
  v7 = v6;
  if (v5 == FormatContentSizeCategoryValue.rawValue.getter() && v7 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

unint64_t sub_1D6C27F94()
{
  result = qword_1EDF24A48;
  if (!qword_1EDF24A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24A48);
  }

  return result;
}

unint64_t sub_1D6C27FE8()
{
  result = qword_1EDF33F10;
  if (!qword_1EDF33F10)
  {
    sub_1D5C30198(255, &qword_1EDF33F08, sub_1D66F48AC, &type metadata for FormatContentSizeCategoryValue, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33F10);
  }

  return result;
}

unint64_t sub_1D6C28078(void *a1)
{
  a1[1] = sub_1D5CB9318();
  a1[2] = sub_1D6684C90();
  result = sub_1D6C280B0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C280B0()
{
  result = qword_1EC893AD0;
  if (!qword_1EC893AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893AD0);
  }

  return result;
}

uint64_t sub_1D6C28104(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0xBF)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 & 0x1F) + 6;
  }
}

_BYTE *sub_1D6C28120(_BYTE *result, unsigned int a2)
{
  if (a2 < 6)
  {
    *result = *result & 0x1F | (32 * a2);
  }

  else
  {
    *result = (a2 + 26) & 0x1F | 0xC0;
  }

  return result;
}

unint64_t sub_1D6C28170()
{
  result = qword_1EC893AD8;
  if (!qword_1EC893AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893AD8);
  }

  return result;
}

unint64_t sub_1D6C281C4()
{
  result = qword_1EDF24A50;
  if (!qword_1EDF24A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24A50);
  }

  return result;
}

unint64_t sub_1D6C28218(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v2;
  }
}

id sub_1D6C28264(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_sourceMetrics] = 0;
  v5 = OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_editor] = a1;
  type metadata accessor for DebugFormatFileTreeModel(0);
  swift_allocObject();

  *&v2[OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_model] = sub_1D6AD49E0(v7, MEMORY[0x1E69E7CC0], 1);
  sub_1D671F790();
  swift_retain_n();
  v14 = sub_1D7260F8C();
  v15 = v8;
  sub_1D671F7E8(0);
  v10 = objc_allocWithZone(v9);
  *&v2[OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_fileViewController] = sub_1D726126C();
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);

  sub_1D725B33C();

  sub_1D725B2EC();

  return v11;
}