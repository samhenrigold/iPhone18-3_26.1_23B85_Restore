void sub_199AD7878(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_199AD8BEC();
  }
}

id sub_199AD7918()
{
  if (*&v0[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModelSubscriber])
  {

    sub_199DF83AC();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNAvatarPosterPairView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CNAvatarPosterPairView(uint64_t a1)
{
  result = qword_1EAF735E8;
  if (!qword_1EAF735E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199AD7B14()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for CNAvatarPosterPairView(0);
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v1 = [objc_opt_self() currentTraitCollection];
  [v1 displayCornerRadius];
  v3 = v2;

  v4 = sub_199AD9E00();
  v5 = [*&v4[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController] view];
  if (v5)
  {
    v6 = v5;

    if (v3 <= 0.0)
    {
      v7 = 24.0;
    }

    else
    {
      v7 = v3;
    }

    [v6 bounds];
    v9 = v8;

    v10 = v7 * v9;
    v11 = [objc_opt_self() mainScreen];
    [v11 bounds];
    v13 = v12;

    v14 = sub_199ADA004();
    v15 = [v14 layer];

    [v15 setCornerRadius_];
  }

  else
  {
    __break(1u);
  }
}

void sub_199AD7CBC(uint64_t a1)
{
  sub_199ADA4E8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_199AD7D84()
{
  v1 = sub_199AD9E74();
  v2 = [v1 view];

  [v0 addSubview_];
  v3 = sub_199AD9E00();
  v4 = [*&v3[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController] view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = v4;

  [v0 addSubview_];
  v6 = sub_199ADA004();
  [v0 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_199E3A7D0;
  v8 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___avatarVC;
  v9 = [*&v0[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___avatarVC] view];
  v10 = [v9 centerYAnchor];

  v11 = [v0 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v7 + 32) = v12;
  v13 = [*&v0[v8] view];
  v14 = [v13 centerXAnchor];

  v15 = [v0 centerXAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v7 + 40) = v16;
  v17 = [*&v0[v8] view];
  v18 = [v17 widthAnchor];

  v19 = [v0 widthAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 multiplier:0.8];

  *(v7 + 48) = v20;
  v21 = [*&v0[v8] view];
  v22 = [v21 heightAnchor];

  v23 = [*&v0[v8] view];
  v24 = [v23 widthAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v7 + 56) = v25;
  v26 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___posterImageView;
  v27 = *&v0[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___posterImageView];
  v28 = *&v27[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController];
  v29 = v27;
  v30 = [v28 view];
  if (!v30)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v31 = v30;

  v32 = [v31 &selRef_gradientStartColor_ + 2];
  v33 = [v32 constraintEqualToConstant_];

  *(v7 + 64) = v33;
  v125 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_avatarOnlyConstraints;
  *&v0[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_avatarOnlyConstraints] = v7;

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_199E3A7E0;
  v35 = [*&v0[v8] view];
  v36 = [v35 topAnchor];

  v37 = [v0 topAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:5.0];

  *(v34 + 32) = v38;
  v39 = [*&v0[v8] view];
  v40 = [v39 centerXAnchor];

  v41 = [v0 centerXAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v34 + 40) = v42;
  v43 = [*&v0[v8] view];
  v44 = [v43 widthAnchor];

  v45 = [v0 widthAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 multiplier:0.267];

  *(v34 + 48) = v46;
  v47 = [*&v0[v8] view];
  v48 = [v47 heightAnchor];

  v49 = [*&v0[v8] view];
  v50 = [v49 widthAnchor];

  v51 = [v48 constraintEqualToAnchor_];
  *(v34 + 56) = v51;
  v52 = *&v0[v26];
  v53 = *&v52[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController];
  v54 = v52;
  v55 = [v53 view];
  if (!v55)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v56 = v55;

  v57 = [v56 topAnchor];
  v58 = [*&v0[v8] view];
  v59 = [v58 bottomAnchor];

  v60 = [v57 constraintEqualToAnchor:v59 constant:20.0];
  *(v34 + 64) = v60;
  v61 = *&v0[v26];
  v62 = *&v61[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController];
  v63 = v61;
  v64 = [v62 view];
  if (!v64)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v65 = v64;

  v66 = [v65 centerXAnchor];
  v67 = [v0 centerXAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v34 + 72) = v68;
  v69 = *&v0[v26];
  v70 = *&v69[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController];
  v71 = v69;
  v72 = [v70 &selRef_shouldAcceptXPCConnection_];
  if (!v72)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v73 = v72;

  v74 = [v73 bottomAnchor];
  v75 = [v0 bottomAnchor];
  v76 = [v74 constraintEqualToAnchor_];

  *(v34 + 80) = v76;
  v77 = *&v0[v26];
  v78 = *&v77[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController];
  v79 = v77;
  v80 = [v78 &selRef_shouldAcceptXPCConnection_];
  if (!v80)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v81 = v80;

  v82 = [v81 widthAnchor];
  v83 = *&v0[v26];
  v84 = *&v83[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController];
  v85 = v83;
  v86 = [v84 &selRef_shouldAcceptXPCConnection_];
  if (!v86)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v87 = v86;

  v88 = [v87 heightAnchor];
  if (qword_1EAF71E58 != -1)
  {
    swift_once();
  }

  v89 = [v82 constraintEqualToAnchor:v88 multiplier:{*&qword_1EAF73598, v125}];

  *(v34 + 88) = v89;
  v90 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentBlurView;
  v91 = [*&v0[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentBlurView] topAnchor];
  v92 = *&v0[v26];
  v93 = *&v92[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController];
  v94 = v92;
  v95 = [v93 &selRef_shouldAcceptXPCConnection_];
  if (!v95)
  {
    goto LABEL_24;
  }

  v96 = v95;

  v97 = [v96 topAnchor];
  v98 = [v91 constraintEqualToAnchor_];

  *(v34 + 96) = v98;
  v99 = [*&v0[v90] bottomAnchor];
  v100 = *&v0[v26];
  v101 = *&v100[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController];
  v102 = v100;
  v103 = [v101 view];
  if (!v103)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v104 = v103;

  v105 = [v104 bottomAnchor];
  v106 = [v99 constraintEqualToAnchor_];

  *(v34 + 104) = v106;
  v107 = [*&v0[v90] leadingAnchor];
  v108 = *&v0[v26];
  v109 = *&v108[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController];
  v110 = v108;
  v111 = [v109 view];
  if (!v111)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v112 = v111;

  v113 = [v112 leadingAnchor];
  v114 = [v107 constraintEqualToAnchor_];

  *(v34 + 112) = v114;
  v115 = [*&v0[v90] trailingAnchor];
  v116 = *&v0[v26];
  v117 = *&v116[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController];
  v118 = v116;
  v119 = [v117 view];
  if (!v119)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v120 = v119;

  v121 = [v120 trailingAnchor];
  v122 = [v115 constraintEqualToAnchor_];

  *(v34 + 120) = v122;
  *&v0[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_pairConstraints] = v34;

  v123 = objc_opt_self();
  sub_199A7A02C(0, &qword_1EAF71D18, 0x1E696ACD8);
  sub_199DF81AC();
  v124 = sub_199DFA0BC();

  [v123 activateConstraints_];

  sub_199AD8BEC();
}

uint64_t sub_199AD8984()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00, &unk_199E3B930);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - v3;
  v5 = sub_199AD9E74();
  sub_199A7A02C(0, &qword_1ED615BF0, 0x1E695CD58);
  v6 = sub_199DFA0BC();
  [v5 setContacts_];

  v7 = sub_199AD9E00();
  swift_getKeyPath();
  swift_getKeyPath();
  v16[1] = 0;

  sub_199DF842C();

  v8 = sub_199ADA004();
  [v8 resetRevealState];

  v9 = *(v1 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel);
  v10 = *&v9[OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_avatarPosterPair];
  *&v9[OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_avatarPosterPair] = 0;
  v11 = v9;

  v12 = *&v11[OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_contact];
  *&v11[OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_contact] = 0;

  type metadata accessor for CNAvatarPosterPairViewModel();
  sub_199ADA6A8(&qword_1EAF73610, type metadata accessor for CNAvatarPosterPairViewModel, &unk_199E4274C);
  sub_199DF83BC();
  sub_199DF83DC();

  v13 = sub_199DF729C();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_displaySessionUUID;
  swift_beginAccess();
  sub_199ADA6F0(v4, v1 + v14);
  return swift_endAccess();
}

double sub_199AD8BEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00, &unk_199E3B930) - 8;
  MEMORY[0x1EEE9AC00](v1);
  *&result = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v7 = &v36 - v6;
  v8 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel;
  v9 = *(*&v0[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel] + OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_avatarPosterPair);
  if (v9)
  {
    v36 = v4;
    v37 = v3;
    v10 = *&v9[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
    v11 = objc_opt_self();
    sub_199A7A02C(0, &qword_1EAF71D18, 0x1E696ACD8);
    v38 = v9;
    sub_199DF81AC();
    v12 = sub_199DFA0BC();

    if (v10 == 1)
    {
      v13 = &selRef_deactivateConstraints_;
    }

    else
    {
      v13 = &selRef_activateConstraints_;
    }

    if (v10 == 1)
    {
      v14 = &selRef_activateConstraints_;
    }

    else
    {
      v14 = &selRef_deactivateConstraints_;
    }

    [v11 *v13];

    sub_199DF81AC();
    v15 = sub_199DFA0BC();

    [v11 *v14];

    v16 = sub_199AD7490();
    v17 = v16;
    v18 = *&v0[v8];
    v19 = *(v18 + OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_avatarPosterPair);
    if (v19 && (v20 = v19 + OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster, *v20 != 1))
    {
      v21 = HIBYTE(*(v20 + 8)) & 1;
    }

    else
    {
      v21 = 0;
    }

    v22 = [v16 shouldShowUIForPosterWithSensitiveContent:v21 forContact:*(v18 + OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_contact)];

    v23 = sub_199ADA004();
    [v23 setHidden_];

    v24 = sub_199AD9E74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_199E37DF0;
    v26 = sub_199ADA0DC();
    if (!v26)
    {
      v26 = sub_199ADA3DC();
    }

    *(v25 + 32) = v26;
    sub_199A7A02C(0, &qword_1ED615BF0, 0x1E695CD58);
    v27 = sub_199DFA0BC();

    [v24 setContacts_];

    v28 = [v0 traitCollection];
    v29 = [v28 userInterfaceIdiom];

    if (v29)
    {
      v30 = v38;
    }

    else
    {
      v31 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_displaySessionUUID;
      swift_beginAccess();
      sub_199ADA540(&v0[v31], v7);
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = v37;
      sub_199ADA540(v7, v37);
      v34 = (*(v36 + 80) + 24) & ~*(v36 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = v32;
      sub_199ADA5B8(v33, v35 + v34);

      sub_199AD93F0(v38, sub_199ADA628, v35);

      sub_199A79A04(v7, &unk_1EAF73C00, &unk_199E3B930);
    }
  }

  return result;
}

void sub_199AD9038(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_199DF729C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00, &unk_199E3B930);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73600, &qword_199E3A850);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_displaySessionUUID;
    swift_beginAccess();
    v18 = *(v12 + 48);
    sub_199ADA540(v16 + v17, v14);
    sub_199ADA540(a3, &v14[v18]);
    v19 = *(v6 + 48);
    if (v19(v14, 1, v5) == 1)
    {
      if (v19(&v14[v18], 1, v5) == 1)
      {
        sub_199A79A04(v14, &unk_1EAF73C00, &unk_199E3B930);
LABEL_10:
        v22 = sub_199AD9E00();
        swift_getKeyPath();
        swift_getKeyPath();
        v24[1] = a1;
        v23 = a1;

        sub_199DF842C();

        return;
      }

LABEL_8:
      sub_199A79A04(v14, &qword_1EAF73600, &qword_199E3A850);
      return;
    }

    sub_199ADA540(v14, v11);
    if (v19(&v14[v18], 1, v5) == 1)
    {

      (*(v6 + 8))(v11, v5);
      goto LABEL_8;
    }

    (*(v6 + 32))(v8, &v14[v18], v5);
    sub_199ADA6A8(&qword_1EAF73608, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v20 = sub_199DF9EDC();
    v21 = *(v6 + 8);
    v21(v8, v5);
    v21(v11, v5);
    sub_199A79A04(v14, &unk_1EAF73C00, &unk_199E3B930);
    if (v20)
    {
      goto LABEL_10;
    }
  }
}

void sub_199AD93F0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v104 = *MEMORY[0x1E69E9840];
  v8 = [v3 window];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v97 = [v8 windowScene];

  if (!v97)
  {
    goto LABEL_7;
  }

  v10 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel;
  v11 = *(*&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel] + OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_contact);
  if (!v11)
  {

LABEL_7:
    (a2)(0);
    return;
  }

  v12 = *(a1 + OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster);
  if (v12 <= 1)
  {
    v13 = v11;
    goto LABEL_23;
  }

  v93 = a3;
  v95 = *(*&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel] + OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_contact);
  v92 = v11;
  sub_199AA2284(v12);
  v14 = [v12 posterData];
  v15 = sub_199DF71FC();
  v17 = v16;

  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      sub_199A9EF34(v15, v17);
      v27 = v12;
      goto LABEL_22;
    }

    v20 = *(v15 + 16);
    v21 = *(v15 + 24);
    sub_199A9EF34(v15, v17);
    goto LABEL_14;
  }

  if (v18)
  {
    sub_199A9EF34(v15, v17);
    v20 = v15;
    v21 = v15 >> 32;
LABEL_14:
    v11 = v95;
    v19 = v20 == v21;
    goto LABEL_15;
  }

  sub_199A9EF34(v15, v17);
  v19 = (v17 & 0xFF000000000000) == 0;
  v11 = v95;
LABEL_15:
  if (v19)
  {
    sub_199AA2294(v12);
    a3 = v93;
    goto LABEL_23;
  }

  if (qword_1EAF718E0 != -1)
  {
    swift_once();
  }

  v22 = [v12 posterData];
  v23 = sub_199DF71FC();
  v25 = v24;

  v26 = sub_199B73B70(v23, v25, v92);
  sub_199A9EF34(v23, v25);
  if ((v26 & 1) == 0)
  {
    v76 = objc_opt_self();
    v77 = [v12 posterData];
    v78 = sub_199DF71FC();
    v80 = v79;

    v81 = sub_199DF71DC();
    sub_199A9EF34(v78, v80);
    aBlock = 0;
    v82 = [v76 unarchiveCNConfigurationFromData:v81 error:&aBlock];

    v83 = aBlock;
    if (v82)
    {
      v84 = objc_opt_self();
      v85 = *(a1 + OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type) != 3;
      v86 = swift_allocObject();
      *(v86 + 16) = a2;
      *(v86 + 24) = v93;
      v102 = sub_199ADA8A4;
      v103 = v86;
      aBlock = MEMORY[0x1E69E9820];
      v99 = 1107296256;
      v100 = sub_199B77770;
      v101 = &block_descriptor_42;
      v87 = _Block_copy(&aBlock);
      v88 = v83;
      v89 = v82;

      [v84 incomingCallSnapshotForConfiguration:v89 contact:v92 includingCallButtons:v85 windowScene:v97 completionBlock:v87];

      _Block_release(v87);
      sub_199AA2294(v12);
    }

    else
    {
      v90 = aBlock;
      v91 = sub_199DF717C();

      swift_willThrow();
      sub_199AA2294(v12);
      (a2)(0);
    }

    return;
  }

  v27 = v12;
LABEL_22:
  sub_199AA2294(v27);
  a3 = v93;
  v11 = v95;
LABEL_23:
  v28 = *(a1 + OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar);
  if (v28 >= 2)
  {
    v29 = v28;
    v30 = [v29 imageData];
    v31 = sub_199DF71FC();
    v33 = v32;

    v34 = v33;
    v35 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v35 == 2)
      {
        v36 = *(v31 + 16);
        v37 = *(v31 + 24);
        sub_199A9EF34(v31, v34);
        if (v36 == v37)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      sub_199A9EF34(v31, v33);
    }

    else
    {
      if (!v35)
      {
        sub_199A9EF34(v31, v33);
        if ((v33 & 0xFF000000000000) == 0)
        {
          goto LABEL_34;
        }

LABEL_32:
        v38 = objc_opt_self();
        v39 = [v29 imageData];
        v40 = sub_199DF71FC();
        v42 = v41;

        v43 = sub_199DF71DC();
        sub_199A9EF34(v40, v42);
        [v29 cropRect];
        v44 = [v38 generateThumbnailImageDataWithData:v43 cropRect:?];

        v45 = sub_199DF71FC();
        v47 = v46;

        v48 = objc_opt_self();
        v49 = sub_199DF71DC();
        v50 = swift_allocObject();
        *(v50 + 16) = a2;
        *(v50 + 24) = a3;
        v102 = sub_199ABA298;
        v103 = v50;
        aBlock = MEMORY[0x1E69E9820];
        v99 = 1107296256;
        v100 = sub_199B77770;
        v101 = &block_descriptor_36_0;
        v51 = _Block_copy(&aBlock);
        v52 = v11;

        [v48 incomingCallAvatarSnapshotForAvatarImageData:v49 contact:v52 windowScene:v97 completionBlock:v51];

        _Block_release(v51);
        sub_199A9EF34(v45, v47);

        return;
      }

      sub_199A9EF34(v31, v33);
      if (v31 != v31 >> 32)
      {
        goto LABEL_32;
      }
    }

LABEL_34:
  }

  v53 = *(*&v4[v10] + OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_contact);
  if (v53)
  {
    v54 = objc_allocWithZone(CNAvatarImageRenderer);
    v55 = v53;
    v56 = [v54 init];
    v57 = [v4 traitCollection];
    v58 = [v57 layoutDirection];

    v59 = v58 == 1;
    v60 = objc_opt_self();
    v61 = [objc_opt_self() mainScreen];
    [v61 scale];
    v63 = v62;

    v64 = [v56 renderMonogramForContact:v55 color:0 scope:objc_msgSend(v60 prohibitedSources:{sel_scopeWithPointSize_scale_rightToLeft_style_, v59, 0, 60.0, 60.0, v63), 0}];
    v65 = UIImageJPEGRepresentation(v64, 1.0);
    if (v65)
    {
      v94 = v56;
      v66 = a3;
      v67 = v65;
      v68 = sub_199DF71FC();
      v70 = v69;

      v96 = v11;
      v71 = objc_opt_self();
      v72 = sub_199DF71DC();
      v73 = swift_allocObject();
      *(v73 + 16) = a2;
      *(v73 + 24) = v66;
      v102 = sub_199ADA8A4;
      v103 = v73;
      aBlock = MEMORY[0x1E69E9820];
      v99 = 1107296256;
      v100 = sub_199B77770;
      v101 = &block_descriptor_2;
      v74 = _Block_copy(&aBlock);

      v75 = v55;

      [v71 incomingCallAvatarSnapshotForAvatarImageData:v72 contact:v75 windowScene:v97 completionBlock:v74];

      swift_unknownObjectRelease();
      _Block_release(v74);

      sub_199A9EF34(v68, v70);
      return;
    }

    a2();

    swift_unknownObjectRelease();
  }

  else
  {
    (a2)(0);
  }
}

id sub_199AD9E00()
{
  v1 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___posterImageView;
  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___posterImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___posterImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CNHostingPosterSnapshotImageView()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_199AD9E74()
{
  v1 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___avatarVC;
  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___avatarVC);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___avatarVC);
  }

  else
  {
    v4 = sub_199AD9ED8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_199AD9ED8()
{
  v0 = [objc_opt_self() defaultSettings];
  v1 = [objc_allocWithZone(CNAvatarViewController) initWithSettings_];

  v2 = [v1 view];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_199E37DF0;
  v4 = sub_199ADA0DC();
  if (!v4)
  {
    v4 = sub_199ADA3DC();
  }

  *(v3 + 32) = v4;
  sub_199A7A02C(0, &qword_1ED615BF0, 0x1E695CD58);
  v5 = sub_199DFA0BC();

  [v1 setContacts_];

  return v1;
}

id sub_199ADA004()
{
  v1 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentBlurView;
  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentBlurView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentBlurView);
  }

  else
  {
    v4 = sub_199AD7490();
    v5 = [objc_allocWithZone(CNSensitiveContentBlurView) initWithManager_];

    v6 = v5;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = [v6 layer];

    [v7 setMasksToBounds_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_199ADA0DC()
{
  v1 = *(*&v0[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel] + OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_avatarPosterPair);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar);
  if (v2 < 2)
  {
    return 0;
  }

  v4 = objc_allocWithZone(CNPhotoPickerRecentsProvider);
  v5 = v2;
  v6 = [v4 init];
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [v0 effectiveUserInterfaceLayoutDirection] == 1;
  v11 = [objc_opt_self() defaultProvider];
  v12 = sub_199DF9F5C();
  v13 = [v11 newSerialSchedulerWithName_];

  swift_unknownObjectRelease();
  v14 = [v6 providerItemForContactImage:v5 size:v10 scale:v13 RTL:objc_msgSend(objc_opt_self() renderingQueue:sel_mainThreadScheduler) callbackQueue:1 fallbackToDefaultItem:{250.0, 250.0, v9}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  if (v14)
  {
    v15 = [v14 imageData];
    v16 = sub_199DF71FC();
    v18 = v17;

    v19 = sub_199DF71DC();
    sub_199A9EF34(v16, v18);
    [v3 setImageData_];

    [v14 cropRect];
    [v3 setCropRect_];
  }

  else
  {
    v20 = [v5 imageData];
    v21 = sub_199DF71FC();
    v23 = v22;

    v24 = sub_199DF71DC();
    sub_199A9EF34(v21, v23);
    [v3 setImageData_];

    [v5 cropRect];
    [v3 setCropRect_];
  }

  return v3;
}

id sub_199ADA3DC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  v2 = *(*(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel) + OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_contact);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 givenName];
    if (!v4)
    {
      sub_199DF9F8C();
      v4 = sub_199DF9F5C();
    }

    [v1 setGivenName_];

    v5 = [v3 familyName];
    if (!v5)
    {
      sub_199DF9F8C();
      v5 = sub_199DF9F5C();
    }

    [v1 setFamilyName_];
  }

  return v1;
}

void sub_199ADA4E8(uint64_t a1)
{
  if (!qword_1EAF735F8)
  {
    sub_199DF729C();
    v1 = sub_199DFA63C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF735F8);
    }
  }
}

uint64_t sub_199ADA540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00, &unk_199E3B930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199ADA5B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00, &unk_199E3B930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_199ADA628(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00, &unk_199E3B930) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_199AD9038(a1, v4, v5);
}

uint64_t sub_199ADA6A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_199ADA6F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00, &unk_199E3B930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_199ADA760()
{
  v1 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for CNAvatarPosterPairViewModel()) init];
  *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModelSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentManager) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_showShadow) = 0;
  v2 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_displaySessionUUID;
  v3 = sub_199DF729C();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_pairConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_avatarOnlyConstraints) = v4;
  *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___posterImageView) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___avatarVC) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentBlurView) = 0;
  sub_199DFA85C();
  __break(1u);
}

void sub_199ADA8B0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0x4034000000000000;
  if (v1 == 1)
  {
    v2 = 0x4056000000000000;
  }

  qword_1EAF73618 = v2;
  byte_1EAF73620 = 0;
}

void sub_199ADA924()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 54.0;
  if (v1 != 1)
  {
    v2 = 9.0;
  }

  qword_1EAF73628 = *&v2;
}

void sub_199ADA994()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 44.0;
  if (v1 != 1)
  {
    v2 = 0.0;
  }

  qword_1EAF73630 = *&v2;
}

void sub_199ADAA04()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0.0;
  if (v1 == 1)
  {
    v2 = 5.0;
  }

  qword_1EAF73638 = *&v2;
}

uint64_t sub_199ADAA70()
{
  swift_getKeyPath();
  sub_199ADEC38(&qword_1EAF71F88, type metadata accessor for CNPosterOnboardingPrivacyView.Model, &unk_199E3AA30);
  sub_199DF73AC();

  return sub_199DF81AC();
}

uint64_t sub_199ADAB14(uint64_t a1)
{
  v3 = sub_199DF81AC();
  v4 = sub_199B03D30(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_199ADEC38(&qword_1EAF71F88, type metadata accessor for CNPosterOnboardingPrivacyView.Model, &unk_199E3AA30);
    sub_199DF739C();
  }
}

uint64_t sub_199ADAC68()
{
  swift_getKeyPath();
  sub_199ADEC38(&qword_1EAF71F88, type metadata accessor for CNPosterOnboardingPrivacyView.Model, &unk_199E3AA30);
  sub_199DF73AC();

  return *(v0 + 24);
}

void sub_199ADAD08(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_199ADEC38(&qword_1EAF71F88, type metadata accessor for CNPosterOnboardingPrivacyView.Model, &unk_199E3AA30);
    sub_199DF739C();
  }
}

uint64_t sub_199ADAE20()
{

  v1 = OBJC_IVAR____TtCV10ContactsUI29CNPosterOnboardingPrivacyView5Model___observationRegistrar;
  v2 = sub_199DF73EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_199ADAEEC(uint64_t a1)
{
  result = sub_199DF73EC();
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

uint64_t sub_199ADAFA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_199ADAFE8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_199ADB088(uint64_t a1)
{
  sub_199ADB13C(319);
  if (v1 <= 0x3F)
  {
    sub_199ADB1A0(319);
    if (v2 <= 0x3F)
    {
      sub_199ADB1F8();
      if (v3 <= 0x3F)
      {
        sub_199ADB248();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_199ADB13C(uint64_t a1)
{
  if (!qword_1EAF76090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF740B0, qword_199E3A9B0);
    v1 = sub_199DF859C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF76090);
    }
  }
}

void sub_199ADB1A0(uint64_t a1)
{
  if (!qword_1EAF73668)
  {
    type metadata accessor for CNPosterOnboardingPrivacyView.Model(255);
    v1 = sub_199DF987C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF73668);
    }
  }
}

unint64_t sub_199ADB1F8()
{
  result = qword_1EAF73E70;
  if (!qword_1EAF73E70)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EAF73E70);
  }

  return result;
}

unint64_t sub_199ADB248()
{
  result = qword_1EAF73670;
  if (!qword_1EAF73670)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EAF73670);
  }

  return result;
}

uint64_t sub_199ADB2C8(uint64_t a1, uint64_t a2)
{
  if ((sub_199DF936C() & 1) == 0)
  {
    return 0;
  }

  return sub_199DF97FC();
}

double sub_199ADB340@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73678, &qword_199E3AA50);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73680, &qword_199E3AA58);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  *v9 = sub_199DF8D4C();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73688, &unk_199E3AA60);
  sub_199ADB5E4(v2, &v9[*(v10 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  v12 = sub_199DF919C();
  *(inited + 32) = v12;
  v13 = sub_199DF91BC();
  *(inited + 33) = v13;
  v14 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v12)
  {
    v14 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v13)
  {
    v14 = sub_199DF91AC();
  }

  if (qword_1EAF71E60 != -1)
  {
    swift_once();
  }

  v15 = byte_1EAF73620;
  v16 = 0uLL;
  v17 = 0uLL;
  if ((byte_1EAF73620 & 1) == 0)
  {
    sub_199DF84FC();
    *(&v17 + 1) = v18;
    *(&v16 + 1) = v19;
  }

  v25 = v17;
  v26 = v16;
  sub_199AB7794(v9, v6, &qword_1EAF73680, &qword_199E3AA58);
  v20 = &v6[*(v4 + 36)];
  *v20 = v14;
  v21 = v26;
  *(v20 + 24) = v25;
  *(v20 + 8) = v21;
  v20[40] = v15;
  v22 = sub_199DF917C();
  sub_199AB7794(v6, a1, &qword_1EAF73678, &qword_199E3AA50);
  v23 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73698, &qword_199E3AA70) + 36);
  *v23 = v22;
  result = 0.0;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 1;
  return result;
}

uint64_t sub_199ADB5E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v129 = a2;
  v3 = sub_199DF9F4C();
  v130 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for CNPosterOnboardingPrivacyView(0);
  v7 = v122[5];
  v124 = a1;
  v8 = (a1 + v7);
  v10 = *v8;
  v9 = v8[1];
  v112 = v10;
  *&v133 = v9;
  *&v175 = v10;
  *(&v175 + 1) = v9;
  *&v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF736A0, &qword_199E3AA78);
  sub_199DF984C();
  v11 = v143;
  swift_getKeyPath();
  *&v175 = v11;
  v138 = sub_199ADEC38(&qword_1EAF71F88, type metadata accessor for CNPosterOnboardingPrivacyView.Model, &unk_199E3AA30);
  sub_199DF73AC();

  v12 = *(v11 + 16);
  sub_199DF81AC();

  v13 = *(v12 + 16);

  sub_199DF9EEC();
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761B0, &qword_199E3CF50);
  v14 = swift_allocObject();
  v136 = xmmword_199E37D40;
  *(v14 + 16) = xmmword_199E37D40;
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v135 = sub_199ADEBEC();
  *(v14 + 56) = v135;
  v134 = sub_199ADEC38(&qword_1EAF736A8, sub_199ADEBEC, MEMORY[0x1E69E81C8]);
  *(v14 + 64) = v134;
  *(v14 + 32) = v15;
  v16 = v6;
  v119 = v6;
  v17 = sub_199AA8A84(v6, v14);
  v19 = v18;
  swift_setDeallocating();
  sub_199A79A04(v14 + 32, &qword_1EAF72790, &qword_199E3AAB0);
  swift_deallocClassInstance();
  v20 = *(v4 + 8);
  v121 = (v4 + 8);
  v131 = v20;
  v20(v16, v3);
  *&v175 = v17;
  *(&v175 + 1) = v19;
  v120 = sub_199A9C458();
  v21 = sub_199DF93CC();
  v23 = v22;
  LOBYTE(v19) = v24;
  sub_199DF91DC();
  v25 = sub_199DF939C();
  v27 = v26;
  LOBYTE(v4) = v28;

  sub_199ACE3E8(v21, v23, v19 & 1);

  v29 = sub_199DF938C();
  v140 = v30;
  v141 = v29;
  v123 = v31;
  v142 = v32;
  v33 = v25;
  v34 = v112;
  sub_199ACE3E8(v33, v27, v4 & 1);

  KeyPath = swift_getKeyPath();
  sub_199DF9B5C();
  sub_199DF863C();
  v127 = v203;
  v128 = v201;
  v125 = v206;
  v126 = v205;
  v215 = 1;
  v214 = v202;
  v213 = v204;
  *&v175 = v34;
  *(&v175 + 1) = v133;
  sub_199DF984C();
  v35 = v143;
  swift_getKeyPath();
  *&v175 = v35;
  sub_199DF73AC();

  v36 = *(v35 + 16);
  sub_199DF81AC();

  v37 = *(v36 + 16);

  v38 = v119;
  sub_199DF9EEC();
  v39 = swift_allocObject();
  *(v39 + 16) = v136;
  v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v41 = v134;
  *(v39 + 56) = v135;
  *(v39 + 64) = v41;
  *(v39 + 32) = v40;
  v42 = sub_199AA8A84(v38, v39);
  v44 = v43;
  swift_setDeallocating();
  sub_199A79A04(v39 + 32, &qword_1EAF72790, &qword_199E3AAB0);
  swift_deallocClassInstance();
  v131(v38, v130);
  *&v175 = v42;
  *(&v175 + 1) = v44;
  v137 = sub_199DF93CC();
  v138 = v45;
  *&v136 = v46;
  v48 = v47;
  v135 = swift_getKeyPath();
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  v49 = swift_allocObject();
  v113 = xmmword_199E39320;
  *(v49 + 16) = xmmword_199E39320;
  LOBYTE(v19) = sub_199DF919C();
  *(v49 + 32) = v19;
  v50 = sub_199DF91BC();
  *(v49 + 33) = v50;
  v51 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v19)
  {
    v51 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v50)
  {
    v51 = sub_199DF91AC();
  }

  LODWORD(v134) = v51;
  if (qword_1EAF71E68 != -1)
  {
    swift_once();
  }

  sub_199DF84FC();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  LODWORD(v131) = v48 & 1;
  v200 = v48 & 1;
  v196 = 0;
  sub_199DF9B5C();
  sub_199DF863C();
  v117 = v209;
  v118 = v207;
  v115 = v212;
  v116 = v211;
  v195 = 1;
  v194 = v208;
  v193 = v210;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF736B0, &qword_199E3AAE8);
  v121 = &v111;
  v119 = *(v120 - 8);
  v60 = *(v119 + 8);
  MEMORY[0x1EEE9AC00](v120);
  v62 = &v111 - v61;
  MEMORY[0x1EEE9AC00](v63);
  v64 = v124;
  *(&v111 - 2) = v124;
  sub_199DF914C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF736B8, &qword_199E3AAF0);
  sub_199ADEC88();
  v130 = v62;
  sub_199DF854C();
  *&v143 = v34;
  *(&v143 + 1) = v133;
  sub_199DF986C();
  v65 = v175;
  v66 = *&v176[0];
  swift_getKeyPath();
  v143 = v65;
  v144 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73740, &qword_199E3AB68);
  sub_199DF998C();

  v67 = v151;
  v68 = v152;
  LOBYTE(v62) = v153;

  v69 = *(v64 + v122[7]);
  v132 = *(v64 + v122[6]);
  v133 = v69;
  sub_199AAB0E0(v64 + v122[8], &v176[2] + 8);
  *&v175 = v67;
  *(&v175 + 1) = v68;
  LOBYTE(v176[0]) = v62;
  *(&v176[1] + 8) = v133;
  *(v176 + 8) = v132;
  v70 = swift_allocObject();
  *(v70 + 16) = v113;

  LOBYTE(v66) = sub_199DF919C();
  *(v70 + 32) = v66;
  v71 = sub_199DF91BC();
  *(v70 + 33) = v71;
  v72 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v66)
  {
    v72 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v71)
  {
    v72 = sub_199DF91AC();
  }

  if (qword_1EAF71E70 != -1)
  {
    swift_once();
  }

  sub_199DF84FC();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v169 = v176[1];
  v170 = v176[2];
  v171 = v177;
  v172 = v178;
  v167 = v175;
  v168 = v176[0];
  v166 = 0;
  v81 = sub_199DF918C();
  v82 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v81)
  {
    v82 = sub_199DF91AC();
  }

  if (qword_1EAF71E78 != -1)
  {
    swift_once();
  }

  v83 = sub_199DF84FC();
  *&v133 = &v111;
  v173 = 0;
  v176[1] = v169;
  v176[2] = v170;
  v177 = v171;
  v178 = v172;
  v175 = v167;
  v176[0] = v168;
  v179 = v72;
  v180 = v74;
  v181 = v76;
  v182 = v78;
  v183 = v80;
  v184 = v166;
  v185 = v82;
  v186 = v84;
  v187 = v85;
  v188 = v86;
  v189 = v87;
  v190 = 0;
  *&v191[3] = *&v174[3];
  *v191 = *v174;
  v192 = 0x3FF0000000000000;
  v88 = v123 & 1;
  v145 = v123 & 1;
  v89 = v215;
  v90 = v214;
  v91 = v213;
  LODWORD(v114) = v195;
  v123 = v194;
  LODWORD(v124) = v88;
  LODWORD(v132) = v193;
  v92 = MEMORY[0x1EEE9AC00](v83);
  v122 = (&v111 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = v119;
  v94 = v120;
  *&v113 = *(v119 + 2);
  (v113)(v92);
  sub_199AAD408(&v175, &v143, &qword_1EAF73748, &qword_199E3AB70);
  v95 = v129;
  v96 = v140;
  *v129 = v141;
  v95[1] = v96;
  *(v95 + 16) = v88;
  v97 = KeyPath;
  v95[3] = v142;
  v95[4] = v97;
  *(v95 + 40) = 1;
  v95[6] = 0;
  *(v95 + 56) = v89;
  v98 = v127;
  v95[8] = v128;
  *(v95 + 72) = v90;
  v95[10] = v98;
  *(v95 + 88) = v91;
  v99 = v125;
  v95[12] = v126;
  v95[13] = v99;
  *&v146 = v137;
  *(&v146 + 1) = v136;
  LOBYTE(v147) = v131;
  DWORD1(v147) = *&v199[3];
  *(&v147 + 1) = *v199;
  *(&v147 + 1) = v138;
  *&v148 = v135;
  BYTE8(v148) = 1;
  *(&v148 + 9) = *v198;
  HIDWORD(v148) = *&v198[3];
  LOBYTE(v149) = v134;
  DWORD1(v149) = *&v197[3];
  *(&v149 + 1) = *v197;
  *(&v149 + 1) = v53;
  *&v150[0] = v55;
  *(&v150[0] + 1) = v57;
  *&v150[1] = v59;
  BYTE8(v150[1]) = 0;
  *(v95 + 185) = *(v150 + 9);
  v100 = v150[0];
  v101 = v148;
  *(v95 + 10) = v149;
  *(v95 + 11) = v100;
  v102 = v146;
  *(v95 + 8) = v147;
  *(v95 + 9) = v101;
  *(v95 + 7) = v102;
  v95[26] = 0;
  *(v95 + 216) = v114;
  v95[28] = v118;
  *(v95 + 232) = v123;
  v95[30] = v117;
  *(v95 + 248) = v132;
  v103 = v115;
  v95[32] = v116;
  v95[33] = v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73750, &qword_199E3AB78);
  v105 = v122;
  (v113)(v95 + v104[24], v122, v94);
  v106 = v95 + v104[28];
  *v106 = 0;
  v106[8] = 1;
  sub_199AAD408(&v143, v95 + v104[32], &qword_1EAF73748, &qword_199E3AB70);
  v107 = v140;
  v108 = v141;
  sub_199ACE3F8(v141, v140, v124);
  sub_199DF81AC();

  sub_199AAD408(&v146, &v151, &qword_1EAF73758, &qword_199E3AB80);
  sub_199A79A04(&v175, &qword_1EAF73748, &qword_199E3AB70);
  v109 = *(v93 + 1);
  v109(v130, v94);
  sub_199A79A04(&v143, &qword_1EAF73748, &qword_199E3AB70);
  v109(v105, v94);
  v151 = v137;
  v152 = v136;
  v153 = v131;
  *v154 = *v199;
  *&v154[3] = *&v199[3];
  v155 = v138;
  v156 = v135;
  v157 = 1;
  *v158 = *v198;
  *&v158[3] = *&v198[3];
  v159 = v134;
  *&v160[3] = *&v197[3];
  *v160 = *v197;
  v161 = v53;
  v162 = v55;
  v163 = v57;
  v164 = v59;
  v165 = 0;
  sub_199A79A04(&v151, &qword_1EAF73758, &qword_199E3AB80);
  sub_199ACE3E8(v108, v107, v145);
}

uint64_t sub_199ADC47C(uint64_t a1)
{
  v41 = *(a1 + *(type metadata accessor for CNPosterOnboardingPrivacyView(0) + 20) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF736A0, &qword_199E3AA78);
  sub_199DF984C();
  swift_getKeyPath();
  v40 = v39;
  sub_199ADEC38(&qword_1EAF71F88, type metadata accessor for CNPosterOnboardingPrivacyView.Model, &unk_199E3AA30);
  sub_199DF73AC();

  v2 = *(v39 + 24);

  if (v2 == 1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73768, &qword_199E3AB90);
    v4 = *(v3 - 8);
    v5 = v4[8];
    MEMORY[0x1EEE9AC00](v3);
    sub_199DF85FC();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF736D0, &qword_199E3AAF8);
    v38 = v35;
    MEMORY[0x1EEE9AC00](v36);
    v7 = v35 - v6;
    v37 = v35;
    v9 = MEMORY[0x1EEE9AC00](v8);
    v10 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = v4[2];
    v11(v10, v10, v3, v9);
    *v7 = 0;
    v7[8] = 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73770, &qword_199E3AB98);
    (v11)(&v7[*(v12 + 48)], v10, v3);
    v13 = v4[1];
    v13(v10, v3);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73760, &qword_199E3AB88);
    v35[1] = v35;
    MEMORY[0x1EEE9AC00](v14);
    sub_199AAD408(v7, v35 - v15, &qword_1EAF736D0, &qword_199E3AAF8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF736E0, &qword_199E3AB00);
    sub_199AA0B90(&qword_1EAF736C8, &qword_1EAF736D0, &qword_199E3AAF8, MEMORY[0x1E6981F48]);
    sub_199ADED40();
    sub_199DF8EDC();
    sub_199A79A04(v7, &qword_1EAF736D0, &qword_199E3AAF8);
    return (v13)(v10, v3);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF736E0, &qword_199E3AB00);
    MEMORY[0x1EEE9AC00](v17);
    v19 = v35 - v18;
    sub_199ADCA78(a1);
    v20 = [objc_opt_self() systemGroupedBackgroundColor];
    v21 = sub_199DF969C();
    v22 = sub_199DF916C();
    v23 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF736F0, &qword_199E3AB08) + 36)];
    *v23 = v21;
    v23[8] = v22;
    v24 = &v19[*(v17 + 36)];
    v25 = *(sub_199DF896C() + 20);
    v26 = *MEMORY[0x1E697F468];
    v27 = sub_199DF8D1C();
    (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
    __asm { FMOV            V0.2D, #8.0 }

    *v24 = _Q0;
    *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C10, &qword_199E38FC0) + 36)] = 256;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73760, &qword_199E3AB88);
    MEMORY[0x1EEE9AC00](v33);
    sub_199AAD408(v19, v35 - v34, &qword_1EAF736E0, &qword_199E3AB00);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF736D0, &qword_199E3AAF8);
    sub_199AA0B90(&qword_1EAF736C8, &qword_1EAF736D0, &qword_199E3AAF8, MEMORY[0x1E6981F48]);
    sub_199ADED40();
    sub_199DF8EDC();
    return sub_199A79A04(v19, &qword_1EAF736E0, &qword_199E3AB00);
  }
}

uint64_t sub_199ADCA78(uint64_t a1)
{
  v22[1] = *(a1 + *(type metadata accessor for CNPosterOnboardingPrivacyView(0) + 20) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF736A0, &qword_199E3AA78);
  sub_199DF984C();
  swift_getKeyPath();
  v22[0] = v21[0];
  sub_199ADEC38(&qword_1EAF71F88, type metadata accessor for CNPosterOnboardingPrivacyView.Model, &unk_199E3AA30);
  sub_199DF73AC();

  v2 = *(v21[0] + 16);
  sub_199DF81AC();

  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73730, &qword_199E3AB28);
    v16[1] = v16;
    MEMORY[0x1EEE9AC00](v4);
    v6 = v16 - v5;
    *v6 = sub_199DF9B5C();
    *(v6 + 1) = v7;
    *(v6 + 2) = 0;
    v6[24] = 0;
    *(v6 + 4) = 0;
    v6[40] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73778, &qword_199E3ABA0);
    sub_199ADD2CC(a1);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73780, &qword_199E3ABA8);
    v16[0] = v16;
    MEMORY[0x1EEE9AC00](v8);
    sub_199AAD408(v6, v16 - v9, &qword_1EAF73730, &qword_199E3AB28);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73720, &qword_199E3AB20);
    sub_199AA0B90(&qword_1EAF73718, &qword_1EAF73720, &qword_199E3AB20, MEMORY[0x1E69817F8]);
    sub_199AA0B90(&qword_1EAF73728, &qword_1EAF73730, &qword_199E3AB28, MEMORY[0x1EEE7C748]);
    sub_199DF8EDC();
    return sub_199A79A04(v6, &qword_1EAF73730, &qword_199E3AB28);
  }

  else
  {
    v11 = sub_199DF8CFC();
    v20 = 1;
    sub_199ADCF10(v18);
    memcpy(v21, v18, sizeof(v21));
    memcpy(v22, v18, 0x158uLL);
    sub_199AAD408(v21, &v17, &qword_1EAF73788, &qword_199E3ABB0);
    sub_199A79A04(v22, &qword_1EAF73788, &qword_199E3ABB0);
    memcpy(&v19[7], v21, 0x158uLL);
    v12 = v20;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73780, &qword_199E3ABA8);
    MEMORY[0x1EEE9AC00](v13);
    v15 = v16 - v14;
    *v15 = v11;
    *(v15 + 1) = 0;
    v15[16] = v12;
    memcpy(&v16[2] - v14 + 1, v19, 0x15FuLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73720, &qword_199E3AB20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73730, &qword_199E3AB28);
    sub_199AA0B90(&qword_1EAF73718, &qword_1EAF73720, &qword_199E3AB20, MEMORY[0x1E69817F8]);
    sub_199AA0B90(&qword_1EAF73728, &qword_1EAF73730, &qword_199E3AB28, MEMORY[0x1EEE7C748]);
    return sub_199DF8EDC();
  }
}

uint64_t sub_199ADCF10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_199DF9B5C();
  sub_199DF897C();
  *&v49[55] = v54;
  *&v49[71] = v55;
  *&v49[87] = v56;
  *&v49[103] = v57;
  *&v49[7] = v51;
  *&v49[23] = v52;
  v50 = 1;
  *&v49[39] = v53;
  sub_199DF9EEC();
  v6 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v58 = v6;
  *(&v58 + 1) = v8;
  sub_199A9C458();
  v9 = sub_199DF93CC();
  v11 = v10;
  LOBYTE(v3) = v12;
  v14 = v13;
  LOBYTE(v5) = sub_199DF916C();
  LOBYTE(v3) = v3 & 1;
  LOBYTE(v58) = v3;
  LOBYTE(v33[0]) = 1;
  sub_199DF9B5C();
  sub_199DF897C();
  v45 = 1;
  *&v44[55] = v61;
  *&v44[71] = v62;
  *&v44[87] = v63;
  *&v44[103] = v64;
  *&v44[7] = v58;
  *&v44[23] = v59;
  *&v44[39] = v60;
  *&v29 = v9;
  *(&v29 + 1) = v11;
  LOBYTE(v30) = v3;
  DWORD1(v30) = *&v47[3];
  *(&v30 + 1) = *v47;
  *(&v30 + 1) = v14;
  LOBYTE(v31[0]) = v5;
  *(v31 + 1) = *v46;
  DWORD1(v31[0]) = *&v46[3];
  *(&v31[1] + 8) = 0u;
  *(v31 + 8) = 0u;
  BYTE8(v31[2]) = 1;
  HIDWORD(v31[2]) = *&v48[3];
  *(&v31[2] + 9) = *v48;
  v32 = 0x3FF0000000000000;
  *a1 = 0;
  *(a1 + 8) = 1;
  v15 = *&v49[80];
  *(a1 + 73) = *&v49[64];
  *(a1 + 89) = v15;
  *(a1 + 105) = *&v49[96];
  *(a1 + 120) = *&v49[111];
  v16 = *&v49[16];
  *(a1 + 9) = *v49;
  *(a1 + 25) = v16;
  v17 = *&v49[48];
  *(a1 + 41) = *&v49[32];
  *(a1 + 57) = v17;
  v18 = v30;
  *(a1 + 128) = v29;
  *(a1 + 144) = v18;
  v19 = v32;
  v20 = v31[2];
  *(a1 + 176) = v31[1];
  *(a1 + 192) = v20;
  *(a1 + 160) = v31[0];
  *(a1 + 208) = v19;
  *(a1 + 216) = 0;
  *(a1 + 224) = 1;
  v21 = *v44;
  v22 = *&v44[16];
  v23 = *&v44[48];
  *(a1 + 257) = *&v44[32];
  *(a1 + 273) = v23;
  *(a1 + 241) = v22;
  *(a1 + 225) = v21;
  v24 = *&v44[64];
  v25 = *&v44[80];
  v26 = *&v44[96];
  *(a1 + 336) = *&v44[111];
  *(a1 + 305) = v25;
  *(a1 + 321) = v26;
  *(a1 + 289) = v24;
  v33[0] = v9;
  v33[1] = v11;
  v34 = v3;
  *&v35[3] = *&v47[3];
  *v35 = *v47;
  v36 = v14;
  v37 = v5;
  *&v38[3] = *&v46[3];
  *v38 = *v46;
  v39 = 0u;
  v40 = 0u;
  v41 = 1;
  *&v42[3] = *&v48[3];
  *v42 = *v48;
  v43 = 0x3FF0000000000000;
  sub_199AAD408(&v29, v28, &qword_1EAF73790, &qword_199E3ABB8);
  return sub_199A79A04(v33, &qword_1EAF73790, &qword_199E3ABB8);
}

uint64_t sub_199ADD2CC(uint64_t a1)
{
  v2 = type metadata accessor for CNPosterOnboardingPrivacyView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v15 = *(a1 + *(v5 + 28) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF736A0, &qword_199E3AA78);
  sub_199DF984C();
  swift_getKeyPath();
  v14 = v13;
  sub_199ADEC38(&qword_1EAF71F88, type metadata accessor for CNPosterOnboardingPrivacyView.Model, &unk_199E3AA30);
  sub_199DF73AC();

  v6 = *(v13 + 16);
  sub_199DF81AC();

  sub_199ADF00C(v6);
  v8 = v7;

  v14 = v8;
  swift_getKeyPath();
  sub_199A9D944(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_199ADF254(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73798, &qword_199E3ABE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF737A0, &qword_199E3ABF0);
  sub_199AA0B90(&qword_1EAF737A8, &qword_1EAF73798, &qword_199E3ABE8, MEMORY[0x1E69E6338]);
  sub_199AA0B90(&qword_1EAF737B0, &qword_1EAF737A0, &qword_199E3ABF0, MEMORY[0x1E6981F48]);
  return sub_199DF99EC();
}

uint64_t sub_199ADD578@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF737B8, &qword_199E3ABF8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v44 - v12;
  *v13 = 0;
  v13[8] = 1;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF737C0, &qword_199E3AC00) + 36);
  v47[0] = v6;
  v47[1] = v5;
  v47[2] = v7;
  v48 = v8;
  v49 = *(a1 + 2);
  sub_199ADDA48(v47, &v13[v14]);
  v15 = sub_199DF916C();
  v16 = &v13[*(v10 + 44)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF737C8, &qword_199E3AC08);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v44 - v19;
  v21 = (a2 + *(type metadata accessor for CNPosterOnboardingPrivacyView(0) + 20));
  v23 = *v21;
  v22 = v21[1];
  *&v50 = v23;
  *(&v50 + 1) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF736A0, &qword_199E3AA78);
  sub_199DF984C();
  v24 = v46;
  swift_getKeyPath();
  *&v50 = v24;
  sub_199ADEC38(&qword_1EAF71F88, type metadata accessor for CNPosterOnboardingPrivacyView.Model, &unk_199E3AA30);
  sub_199DF73AC();

  v25 = *(v24 + 16);
  sub_199DF81AC();

  v26 = *(v25 + 16);

  v27 = v26 - 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF737D0, &qword_199E3AC10);
  v29 = v28;
  v30 = *(v28 - 8);
  if (v6 >= v27)
  {
    v37 = (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v28);
    v32 = v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v32 = 0;
    v32[8] = 1;
    v33 = &v32[*(v29 + 36)];
    sub_199DF99CC();
    v34 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF737E0, &qword_199E3AC20) + 36)];
    *v34 = 2;
    v34[8] = 0;
    sub_199DF9B5C();
    sub_199DF863C();
    v35 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF737E8, &qword_199E3AC28) + 36)];
    v36 = v51;
    *v35 = v50;
    *(v35 + 1) = v36;
    *(v35 + 2) = v52;
    sub_199AB7794(v32, v20, &qword_1EAF737D0, &qword_199E3AC10);
    v37 = (*(v30 + 56))(v20, 0, 1, v29);
  }

  v44[1] = v44;
  MEMORY[0x1EEE9AC00](v37);
  v38 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_199AAD408(v13, v38, &qword_1EAF737B8, &qword_199E3ABF8);
  MEMORY[0x1EEE9AC00](v39);
  v40 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AAD408(v20, v40, &qword_1EAF737C8, &qword_199E3AC08);
  v41 = v45;
  sub_199AAD408(v38, v45, &qword_1EAF737B8, &qword_199E3ABF8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF737D8, &qword_199E3AC18);
  sub_199AAD408(v40, v41 + *(v42 + 48), &qword_1EAF737C8, &qword_199E3AC08);
  sub_199A79A04(v20, &qword_1EAF737C8, &qword_199E3AC08);
  sub_199A79A04(v13, &qword_1EAF737B8, &qword_199E3ABF8);
  sub_199A79A04(v40, &qword_1EAF737C8, &qword_199E3AC08);
  return sub_199A79A04(v38, &qword_1EAF737B8, &qword_199E3ABF8);
}

uint64_t sub_199ADDA48@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = a2;
  v3 = *(a1 + 16);
  v32 = *(a1 + 8);
  v2 = v32;
  v31 = v3;
  v4 = *(a1 + 24);
  v30 = v4;
  v5 = *(a1 + 40);
  *&v33 = *(a1 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74640, &qword_199E3AC30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v35 = sub_199DF8CFC();
  v38 = 1;
  sub_199ACE3F8(v2, v3, v4);
  sub_199DF81AC();
  *(&v33 + 1) = sub_199DF8D5C();
  sub_199ACE3F8(v2, v3, v4);
  sub_199DF81AC();
  sub_199ACE3E8(v2, v3, v4);

  v37 = v4;
  v36 = 1;
  v29 = v38;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF737F0, &qword_199E3AC38);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_199DF924C();
  v13 = sub_199DF922C();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = sub_199DF928C();
  sub_199A79A04(v8, &unk_1EAF74640, &qword_199E3AC30);
  KeyPath = swift_getKeyPath();
  v16 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF737F8, &qword_199E3AC70) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73800, &qword_199E3AC78) + 28);
  sub_199DF8D6C();
  v18 = sub_199DF8D8C();
  (*(*(v18 - 8) + 56))(v16 + v17, 0, 1, v18);
  *v16 = swift_getKeyPath();
  *v12 = v5;
  v12[1] = KeyPath;
  v12[2] = v14;
  v19 = sub_199DF8D4C();
  *(v12 + *(v10 + 44)) = v19;
  MEMORY[0x1EEE9AC00](v19);
  sub_199AAD408(v12, v12, &qword_1EAF737F0, &qword_199E3AC38);
  v41 = v35;
  LOBYTE(v11) = v29;
  LOBYTE(v42) = v29;
  *(&v42 + 1) = *v40;
  DWORD1(v42) = *&v40[3];
  v20 = v32;
  v21 = v31;
  *(&v42 + 1) = v32;
  *&v43 = v31;
  LOBYTE(v5) = v30;
  BYTE8(v43) = v30;
  HIDWORD(v43) = *&v39[3];
  *(&v43 + 9) = *v39;
  v22 = v33;
  *v44 = v33;
  *&v44[16] = 0;
  v44[24] = 1;
  v23 = v35;
  v24 = v42;
  v25 = v34;
  *(v34 + 57) = *&v44[9];
  v26 = *v44;
  v25[2] = v43;
  v25[3] = v26;
  *v25 = v23;
  v25[1] = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73808, &qword_199E3ACB0);
  sub_199AAD408(v12, v25 + *(v27 + 48), &qword_1EAF737F0, &qword_199E3AC38);
  sub_199AAD408(&v41, v45, &qword_1EAF73810, &qword_199E3ACB8);
  sub_199A79A04(v12, &qword_1EAF737F0, &qword_199E3AC38);
  sub_199A79A04(v12, &qword_1EAF737F0, &qword_199E3AC38);
  v45[0] = v35;
  v45[1] = 0;
  v46 = v11;
  *v47 = *v40;
  *&v47[3] = *&v40[3];
  v48 = v20;
  v49 = v21;
  v50 = v5;
  *v51 = *v39;
  *&v51[3] = *&v39[3];
  v52 = v22;
  v53 = 0;
  v54 = 1;
  return sub_199A79A04(v45, &qword_1EAF73810, &qword_199E3ACB8);
}

uint64_t sub_199ADDEE8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73838, &qword_199E3AD80);
  v54 = *(v55 - 8);
  v51 = v54[8];
  MEMORY[0x1EEE9AC00](v55);
  v52 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v46 - v52;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73840, &qword_199E3AD88);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  sub_199ADF5B0(v1, &v59);
  v8 = swift_allocObject();
  v9 = v62;
  v8[3] = v61;
  v8[4] = v9;
  v10 = v64;
  v8[5] = v63;
  v8[6] = v10;
  v11 = v60;
  v8[1] = v59;
  v8[2] = v11;
  v57 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73848, &qword_199E3AD90);
  v50 = sub_199ADF618();
  sub_199DF989C();
  v12 = *(v1 + 8);
  v13 = *(v1 + 16);
  *&v59 = *v1;
  *(&v59 + 1) = v12;
  LOBYTE(v60) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0, &qword_199E37A70);
  MEMORY[0x19A8F7740](&v58, v14);
  v15 = v58;
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = &v7[*(v5 + 36)];
  *v18 = KeyPath;
  v18[1] = sub_199ADF728;
  v18[2] = v17;
  v19 = sub_199DF904C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF903C();
  sub_199ADF730();
  sub_199AD576C();
  v48 = v4;
  sub_199DF944C();
  (*(v20 + 8))(v22, v19);
  sub_199A79A04(v7, &qword_1EAF73840, &qword_199E3AD88);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73860, &qword_199E3ADD8);
  v47 = *(v49 - 8);
  v23 = v47;
  v24 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_199ADF5B0(v2, &v59);
  v25 = swift_allocObject();
  v26 = v62;
  v25[3] = v61;
  v25[4] = v26;
  v27 = v64;
  v25[5] = v63;
  v25[6] = v27;
  v28 = v60;
  v25[1] = v59;
  v25[2] = v28;
  v56 = v2;
  v29 = sub_199DF989C();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v31 = &v46 - v52;
  v32 = v54[2];
  v33 = v55;
  v34 = v32(&v46 - v52, v4, v55, v30);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v23 + 16);
  v38 = v49;
  v37(v36, v36, v49, v35);
  v39 = v53;
  (v32)(v53, v31, v33);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73878, &qword_199E3ADE8);
  (v37)(&v39[*(v40 + 48)], v36, v38);
  v41 = *(v47 + 8);
  v42 = v38;
  v41(v36, v38);
  v43 = v54[1];
  v44 = v55;
  v43(v48, v55);
  v41(v36, v42);
  return (v43)(v31, v44);
}

double sub_199ADE4C0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v6 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v47 = v6;
  *(&v47 + 1) = v8;
  sub_199A9C458();
  v9 = sub_199DF93CC();
  v11 = v10;
  LOBYTE(v6) = v12;
  sub_199DF920C();
  v13 = sub_199DF939C();
  v15 = v14;
  v17 = v16;
  v43 = v18;

  sub_199ACE3E8(v9, v11, v6 & 1);

  sub_199DF925C();
  v19 = sub_199DF932C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_199ACE3E8(v13, v15, v17 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  v27 = sub_199DF917C();
  *(inited + 32) = v27;
  v28 = sub_199DF918C();
  *(inited + 33) = v28;
  v29 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v27)
  {
    v29 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v28)
  {
    v29 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v23 & 1;
  v45 = v38;
  v44 = 0;
  sub_199DF9B5C();
  sub_199DF897C();
  *&v46[55] = v50;
  *&v46[71] = v51;
  *&v46[87] = v52;
  *&v46[103] = v53;
  *&v46[7] = v47;
  *&v46[23] = v48;
  *&v46[39] = v49;
  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v38;
  *(a1 + 24) = v25;
  *(a1 + 32) = v29;
  *(a1 + 40) = v31;
  *(a1 + 48) = v33;
  *(a1 + 56) = v35;
  *(a1 + 64) = v37;
  *(a1 + 72) = 0;
  v39 = *&v46[80];
  *(a1 + 137) = *&v46[64];
  *(a1 + 153) = v39;
  *(a1 + 169) = *&v46[96];
  *(a1 + 184) = *&v46[111];
  v40 = *&v46[16];
  *(a1 + 73) = *v46;
  *(a1 + 89) = v40;
  result = *&v46[32];
  v42 = *&v46[48];
  *(a1 + 105) = *&v46[32];
  *(a1 + 121) = v42;
  return result;
}

double sub_199ADE854@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v6 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v47 = v6;
  *(&v47 + 1) = v8;
  sub_199A9C458();
  v9 = sub_199DF93CC();
  v11 = v10;
  LOBYTE(v6) = v12;
  sub_199DF920C();
  v13 = sub_199DF939C();
  v15 = v14;
  v17 = v16;
  v43 = v18;

  sub_199ACE3E8(v9, v11, v6 & 1);

  sub_199DF925C();
  v19 = sub_199DF932C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_199ACE3E8(v13, v15, v17 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  v27 = sub_199DF917C();
  *(inited + 32) = v27;
  v28 = sub_199DF918C();
  *(inited + 33) = v28;
  v29 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v27)
  {
    v29 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v28)
  {
    v29 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v23 & 1;
  v45 = v38;
  v44 = 0;
  sub_199DF9B5C();
  sub_199DF897C();
  *&v46[55] = v50;
  *&v46[71] = v51;
  *&v46[87] = v52;
  *&v46[103] = v53;
  *&v46[7] = v47;
  *&v46[23] = v48;
  *&v46[39] = v49;
  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v38;
  *(a1 + 24) = v25;
  *(a1 + 32) = v29;
  *(a1 + 40) = v31;
  *(a1 + 48) = v33;
  *(a1 + 56) = v35;
  *(a1 + 64) = v37;
  *(a1 + 72) = 0;
  v39 = *&v46[80];
  *(a1 + 137) = *&v46[64];
  *(a1 + 153) = v39;
  *(a1 + 169) = *&v46[96];
  *(a1 + 184) = *&v46[111];
  v40 = *&v46[16];
  *(a1 + 73) = *v46;
  *(a1 + 89) = v40;
  result = *&v46[32];
  v42 = *&v46[48];
  *(a1 + 105) = *&v46[32];
  *(a1 + 121) = v42;
  return result;
}

unint64_t sub_199ADEBEC()
{
  result = qword_1EAF75C70;
  if (!qword_1EAF75C70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF75C70);
  }

  return result;
}

uint64_t sub_199ADEC38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_199ADEC88()
{
  result = qword_1EAF736C0;
  if (!qword_1EAF736C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF736B8, &qword_199E3AAF0);
    sub_199AA0B90(&qword_1EAF736C8, &qword_1EAF736D0, &qword_199E3AAF8, MEMORY[0x1E6981F48]);
    sub_199ADED40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF736C0);
  }

  return result;
}

unint64_t sub_199ADED40()
{
  result = qword_1EAF736D8;
  if (!qword_1EAF736D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF736E0, &qword_199E3AB00);
    sub_199ADEDF8();
    sub_199AA0B90(&qword_1EAF713D8, &qword_1EAF72C10, &qword_199E38FC0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF736D8);
  }

  return result;
}

unint64_t sub_199ADEDF8()
{
  result = qword_1EAF736E8;
  if (!qword_1EAF736E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF736F0, &qword_199E3AB08);
    sub_199ADEEB0();
    sub_199AA0B90(&qword_1EAF71218, &qword_1EAF73738, &unk_199E3AB30, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF736E8);
  }

  return result;
}

unint64_t sub_199ADEEB0()
{
  result = qword_1EAF736F8;
  if (!qword_1EAF736F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73700, &qword_199E3AB10);
    sub_199ADEF34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF736F8);
  }

  return result;
}

unint64_t sub_199ADEF34()
{
  result = qword_1EAF73708;
  if (!qword_1EAF73708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73710, &qword_199E3AB18);
    sub_199AA0B90(&qword_1EAF73718, &qword_1EAF73720, &qword_199E3AB20, MEMORY[0x1E69817F8]);
    sub_199AA0B90(&qword_1EAF73728, &qword_1EAF73730, &qword_199E3AB28, MEMORY[0x1EEE7C748]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73708);
  }

  return result;
}

void sub_199ADF00C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = (a1 + 64);
    v24 = *(a1 + 16);
    while (1)
    {
      v8 = *(v6 - 4);
      v7 = *(v6 - 3);
      v9 = *(v6 - 1);
      v10 = *v6;
      v26 = *(v6 - 16);
      if (v4)
      {
        sub_199ACE3F8(v8, v7, *(v6 - 16));
        sub_199DF81AC();

        goto LABEL_20;
      }

      v11 = v2[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_29;
      }

      v25 = *(v6 - 3);
      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73818, &qword_199E3ACC0);
      v14 = swift_allocObject();
      v15 = (_swift_stdlib_malloc_size(v14) - 32) / 48;
      v14[2] = v13;
      v14[3] = 2 * v15;
      v16 = v2[2];
      v17 = v2;
      v18 = v2[3] >> 1;
      v5 = &v14[6 * v18 + 4];
      v4 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v18;
      if (!v16)
      {
        sub_199ACE3F8(v8, v25, v26);
        sub_199DF81AC();

        v2 = v14;
        v7 = v25;
        v1 = v24;
        goto LABEL_20;
      }

      if (v14 < v17 || v14 + 4 >= &v17[6 * v18 + 4])
      {
        sub_199ACE3F8(v8, v25, v26);
      }

      else
      {
        sub_199ACE3F8(v8, v25, v26);
        if (v14 == v17)
        {
          goto LABEL_19;
        }
      }

      memmove(v14 + 4, v17 + 4, 48 * v18);
LABEL_19:
      sub_199DF81AC();

      v17[2] = 0;

      v2 = v14;
      v1 = v24;
      v7 = v25;
LABEL_20:
      v20 = __OFSUB__(v4--, 1);
      if (v20)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

      *v5 = v3;
      *(v5 + 8) = v8;
      *(v5 + 16) = v7;
      *(v5 + 24) = v26;
      *(v5 + 32) = v9;
      *(v5 + 40) = v10;
      v5 += 48;
      v6 += 5;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v21 = v2[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v20 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v20)
    {
      goto LABEL_30;
    }

    v2[2] = v23;
  }
}

uint64_t sub_199ADF254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNPosterOnboardingPrivacyView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199ADF2B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CNPosterOnboardingPrivacyView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_199ADD578(a1, v6, a2);
}

uint64_t sub_199ADF338()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
  sub_199DF81AC();
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_199ADF3A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_199ADF3E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_199ADF450()
{
  result = qword_1EAF73820;
  if (!qword_1EAF73820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73698, &qword_199E3AA70);
    sub_199ADF4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73820);
  }

  return result;
}

unint64_t sub_199ADF4DC()
{
  result = qword_1EAF73828;
  if (!qword_1EAF73828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73678, &qword_199E3AA50);
    sub_199AA0B90(&qword_1EAF73830, &qword_1EAF73680, &qword_199E3AA58, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73828);
  }

  return result;
}

unint64_t sub_199ADF618()
{
  result = qword_1EAF712A8;
  if (!qword_1EAF712A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73848, &qword_199E3AD90);
    sub_199ADF6A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712A8);
  }

  return result;
}

unint64_t sub_199ADF6A4()
{
  result = qword_1EAF71308;
  if (!qword_1EAF71308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73850, &unk_199E3AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71308);
  }

  return result;
}

unint64_t sub_199ADF730()
{
  result = qword_1EAF73858;
  if (!qword_1EAF73858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73840, &qword_199E3AD88);
    sub_199AA0B90(&qword_1EAF711A0, &qword_1EAF73860, &qword_199E3ADD8, MEMORY[0x1EEE7D278]);
    sub_199AA0B90(&qword_1EAF73868, &qword_1EAF73870, &qword_199E3ADE0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73858);
  }

  return result;
}

uint64_t objectdestroy_48Tm()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

void *sub_199ADFA80()
{
  swift_getKeyPath();
  sub_199ADFF90();
  sub_199DF73AC();

  v1 = *(v0 + OBJC_IVAR____TtC10ContactsUI15PosterViewModel__snapshot);
  v2 = v1;
  return v1;
}

id sub_199ADFB00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199ADFF90();
  sub_199DF73AC();

  v4 = *(v3 + OBJC_IVAR____TtC10ContactsUI15PosterViewModel__snapshot);
  *a2 = v4;

  return v4;
}

void sub_199ADFB90(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10ContactsUI15PosterViewModel__snapshot;
  v5 = *(v1 + OBJC_IVAR____TtC10ContactsUI15PosterViewModel__snapshot);
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
    sub_199ADFF90();
    sub_199DF739C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_199ADFFE8();
  v6 = v5;
  v7 = a1;
  v8 = sub_199DFA4EC();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

id sub_199ADFD34(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for PosterViewModel(uint64_t a1)
{
  result = qword_1EAF738A8;
  if (!qword_1EAF738A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199ADFE50(uint64_t a1)
{
  result = sub_199DF73EC();
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

uint64_t sub_199ADFEF4()
{

  return swift_deallocClassInstance();
}

void sub_199ADFF50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC10ContactsUI15PosterViewModel__snapshot);
  *(v1 + OBJC_IVAR____TtC10ContactsUI15PosterViewModel__snapshot) = v2;
  v4 = v2;
}

unint64_t sub_199ADFF90()
{
  result = qword_1EAF738B8;
  if (!qword_1EAF738B8)
  {
    type metadata accessor for PosterViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF738B8);
  }

  return result;
}

unint64_t sub_199ADFFE8()
{
  result = qword_1EAF738C0[0];
  if (!qword_1EAF738C0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EAF738C0);
  }

  return result;
}

uint64_t sub_199AE004C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_199AE00CC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_199AE01D8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_199AE038C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_199AE03FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_199AE053C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_199AE0778(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_199DF9C0C();
}

uint64_t sub_199AE0948(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = sub_199DF994C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  sub_199DF8D4C();
  v14 = v2;
  v15 = v3;
  v16 = v1;
  sub_199DF993C();
  swift_getWitnessTable();
  sub_199AC8AF0();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_199AC8AF0();
  return (v11)(v10, v4);
}

void sub_199AE0AE0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v17 = *(a1 + 8);
    *&aBlock = *a1;
    *(&aBlock + 1) = v17;
    sub_199A9C458();
    sub_199DF81AC();
    *&v53 = sub_199DF93CC();
    *(&v53 + 1) = v19;
    v54 = v18 & 1;
    v55 = v20;
    v56 = 1;
    sub_199DF8EDC();
    goto LABEL_5;
  }

  v5 = v4;
  sub_199DF8D0C();
  LOWORD(v40) = 256;
  *&v53 = sub_199DF93AC();
  *(&v53 + 1) = v6;
  LOBYTE(v54) = v7;
  v55 = v8;
  v9 = [v5 length];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = &v53;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_199AE2F8C;
  *(v11 + 24) = v10;
  v49 = sub_199AE2F94;
  v50 = v11;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v48 = sub_199AE1368;
  *(&v48 + 1) = &block_descriptor_3;
  v12 = _Block_copy(&aBlock);
  v13 = v5;

  [v13 enumerateAttributesInRange:0 options:v9 usingBlock:{0, v12}];

  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    v14 = v53;
    v15 = v54;
    v16 = v55;

    v53 = v14;
    v54 = v15;
    v55 = v16;
    v56 = 0;
    sub_199ACE3F8(v14, *(&v14 + 1), v15);
    sub_199DF81AC();
    sub_199DF8EDC();

    sub_199ACE3E8(v14, *(&v14 + 1), v15);

LABEL_5:
    v21 = aBlock;
    v22 = v49;
    v45 = v48;
    v46 = aBlock;
    aBlock = *(a1 + 24);
    v53 = *(a1 + 24);
    v43 = *(&v21 + 1);
    v44 = v21;
    v41 = *(&v48 + 1);
    v42 = v48;
    sub_199AE2EB8(v21, *(&v21 + 1), v48, *(&v48 + 1));
    sub_199AE2EF4(&aBlock, v52);
    sub_199A9C458();
    v23 = sub_199DF93CC();
    v25 = v24;
    v27 = v26;
    sub_199DF91EC();
    v28 = sub_199DF939C();
    v30 = v29;
    v32 = v31;

    sub_199ACE3E8(v23, v25, v27 & 1);

    sub_199DF977C();
    v33 = sub_199DF933C();
    v35 = v34;
    v37 = v36;
    v39 = v38;

    sub_199ACE3E8(v28, v30, v32 & 1);

    v51 = v22;
    sub_199AE2EB8(v44, v43, v42, v41);
    sub_199ACE3F8(v33, v35, v37 & 1);
    sub_199DF81AC();
    sub_199AE2F50(v44, v43, v42, v41);
    LOBYTE(v53) = v22;
    v52[0] = v37 & 1;
    *a2 = v46;
    *(a2 + 16) = v45;
    *(a2 + 32) = v22;
    *(a2 + 40) = v33;
    *(a2 + 48) = v35;
    *(a2 + 56) = v37 & 1;
    *(a2 + 64) = v39;
    sub_199ACE3E8(v33, v35, v37 & 1);

    sub_199AE2F50(v44, v43, v42, v41);
    return;
  }

  __break(1u);
}

__n128 sub_199AE0F54@<Q0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v8[2] = v2[2];
  v5 = sub_199DF8D5C();
  sub_199AE0AE0(v8, v9);
  *&v7[55] = v9[3];
  *&v7[39] = v9[2];
  *&v7[23] = v9[1];
  *&v7[7] = v9[0];
  *(a2 + 33) = *&v7[16];
  *(a2 + 49) = *&v7[32];
  *&v7[71] = v10;
  *(a2 + 65) = *&v7[48];
  result = *&v7[63];
  *(a2 + 80) = *&v7[63];
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 17) = *v7;
  return result;
}

uint64_t sub_199AE100C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, id a5, uint64_t a6)
{
  v8 = [a5 attributedSubstringFromRange_];
  v9 = [v8 string];

  v10 = sub_199DF9F8C();
  v12 = v11;

  v53[0] = v10;
  v53[1] = v12;
  sub_199A9C458();
  v13 = sub_199DF93CC();
  v15 = v14;
  v17 = v16;
  if (*(a1 + 16))
  {
    v18 = sub_199B4BCF0();
    if (v19)
    {
      sub_199A9DA04(*(a1 + 56) + 32 * v18, v53);
      sub_199AE301C();
      if (swift_dynamicCast())
      {

        sub_199DF920C();
        v20 = sub_199DF939C();
        v22 = v21;
        v24 = v23;

        sub_199ACE3E8(v13, v15, v17 & 1);

        v13 = v20;
        v15 = v22;
        v17 = v24;
      }
    }
  }

  v25 = sub_199DF9F5C();
  if (*(a1 + 16) && (v26 = sub_199B4BCF0(), (v27 & 1) != 0))
  {
    sub_199A9DA04(*(a1 + 56) + 32 * v26, v53);

    if (swift_dynamicCast() & 1) != 0 && (v52)
    {
      sub_199DF920C();
      v28 = sub_199DF939C();
      v30 = v29;
      v32 = v31;

      sub_199DF923C();
      v33 = sub_199DF932C();
      v50 = v34;
      v47 = v35;
      sub_199ACE3E8(v28, v30, v32 & 1);

      sub_199ACE3E8(v13, v15, v17 & 1);

      v13 = v33;
      v15 = v50;
      v17 = v47;
    }
  }

  else
  {
  }

  v36 = *a6;
  v37 = *(a6 + 8);
  v38 = *(a6 + 16);
  sub_199ACE3F8(*a6, v37, v38);
  sub_199DF81AC();
  v39 = sub_199DF935C();
  v49 = v40;
  v51 = v41;
  v48 = v42;
  sub_199ACE3E8(v36, v37, v38);

  sub_199ACE3E8(v13, v15, v17 & 1);

  v43 = *a6;
  v44 = *(a6 + 8);
  v45 = *(a6 + 16);
  *a6 = v39;
  *(a6 + 8) = v49;
  *(a6 + 16) = v48 & 1;
  *(a6 + 24) = v51;
  sub_199ACE3E8(v43, v44, v45);
}

uint64_t sub_199AE1368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_199AE2FC4();
  v9 = sub_199DF9E9C();
  v8(v9, a3, a4, a5);
}

__n128 sub_199AE1408@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (a2)
  {
    [a2 updateImageForContact_];
  }

  else
  {
    v7 = a1;
  }

  v8 = [objc_opt_self() defaultSettingsWithCacheSize:0 threeDTouchEnabled:0];
  sub_199DF9B5C();
  sub_199DF863C();
  *&v10[7] = v11;
  *&v10[23] = v12;
  *&v10[39] = v13;
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = v8;
  *(a3 + 24) = 1;
  *(a3 + 25) = *v10;
  *(a3 + 41) = *&v10[16];
  result = *&v10[32];
  *(a3 + 57) = *&v10[32];
  *(a3 + 72) = *(&v13 + 1);
  return result;
}

uint64_t sub_199AE1518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a1;
  v27 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v33 = sub_199DF994C();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF739F0, &qword_199E3B0C0);
  sub_199DF889C();
  sub_199DF889C();
  sub_199DF889C();
  swift_getTupleTypeMetadata3();
  sub_199DF9BFC();
  swift_getWitnessTable();
  v6 = sub_199DF98DC();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF739F8, &qword_199E3B0C8);
  v9 = sub_199DF889C();
  v25 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v28 = v4;
  v29 = v5;
  v30 = v3;
  sub_199DF8CFC();
  sub_199DF98CC();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A00, &qword_199E3B0D0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  sub_199DF99CC();
  v18 = *(v3 + *(v26 + 40));
  v19 = &v17[*(v15 + 36)];
  *v19 = 0;
  *(v19 + 1) = v18;
  sub_199DF9B4C();
  v20 = swift_getWitnessTable();
  sub_199AE2AA0();
  sub_199DF95EC();
  sub_199AE2B8C(v17);
  (*(v24 + 8))(v8, v6);
  v21 = sub_199AA0B90(&qword_1EAF73A10, &qword_1EAF739F8, &qword_199E3B0C8, MEMORY[0x1E697EC18]);
  v31 = v20;
  v32 = v21;
  swift_getWitnessTable();
  sub_199AC8AF0();
  v22 = *(v25 + 8);
  v22(v14, v9);
  sub_199AC8AF0();
  return (v22)(v11, v9);
}

uint64_t sub_199AE196C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a1;
  v57 = a4;
  v50 = sub_199DF858C();
  v54 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_199DF994C();
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  WitnessTable = swift_getWitnessTable();
  v70 = v7;
  v71 = WitnessTable;
  v46 = MEMORY[0x1E6981198];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v12 = &v39 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF739F0, &qword_199E3B0C0);
  v45 = sub_199DF889C();
  v51 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v39 - v13;
  v49 = sub_199DF889C();
  v55 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v44 = &v39 - v14;
  v15 = sub_199DF889C();
  v56 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v39 - v19;
  v40 = a2;
  v59 = a2;
  v41 = a3;
  v60 = a3;
  v61 = v58;
  sub_199DF8D4C();
  sub_199DF993C();
  sub_199DF925C();
  v20 = v12;
  sub_199DF942C();
  (*(v47 + 8))(v9, v7);
  v21 = v54;
  v22 = v53;
  v23 = v50;
  (*(v54 + 104))(v53, *MEMORY[0x1E697DC10], v50);
  v70 = v7;
  v71 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v42;
  v26 = OpaqueTypeMetadata2;
  sub_199DF945C();
  (*(v21 + 8))(v22, v23);
  (*(v48 + 8))(v20, v26);
  sub_199DF916C();
  v27 = sub_199AA0B90(&qword_1EAF73A18, &qword_1EAF739F0, &qword_199E3B0C0, MEMORY[0x1E6980A18]);
  v77 = OpaqueTypeConformance2;
  v78 = v27;
  v28 = v45;
  v29 = swift_getWitnessTable();
  v30 = v44;
  sub_199DF95FC();
  (*(v51 + 8))(v25, v28);
  type metadata accessor for ActionButtonsContainer(0, v40, v41, v31);
  sub_199DF9B5C();
  v75 = v29;
  v76 = MEMORY[0x1E697E5D8];
  v37 = v49;
  v38 = swift_getWitnessTable();
  sub_199DF95CC();
  (*(v55 + 8))(v30, v37);
  v73 = v38;
  v74 = MEMORY[0x1E697EBF8];
  v32 = swift_getWitnessTable();
  v33 = v52;
  sub_199AC8AF0();
  v34 = v56;
  v35 = *(v56 + 8);
  v35(v17, v15);
  v68 = 0;
  v69 = 1;
  v70 = &v68;
  (*(v34 + 16))(v17, v33, v15);
  v66 = 0;
  v67 = 1;
  v71 = v17;
  v72 = &v66;
  v65[0] = MEMORY[0x1E6981840];
  v65[1] = v15;
  v65[2] = MEMORY[0x1E6981840];
  v62 = MEMORY[0x1E6981838];
  v63 = v32;
  v64 = MEMORY[0x1E6981838];
  sub_199AE0778(&v70, 3uLL, v65);
  v35(v33, v15);
  return (v35)(v17, v15);
}

uint64_t sub_199AE2160(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AC8AF0();
  sub_199AC8AF0();
  return (*(v3 + 8))(v5, a2);
}

double sub_199AE2240@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF739C8, &qword_199E3B0A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  sub_199DF927C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF739D0, &qword_199E3B0B0);
  v7 = sub_199AA0B90(&qword_1EAF739D8, &qword_1EAF739D0, &qword_199E3B0B0, MEMORY[0x1E697FDF8]);
  sub_199DF942C();
  v8 = sub_199DF8F2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8F1C();
  v15[0] = v6;
  v15[1] = v7;
  swift_getOpaqueTypeConformance2();
  sub_199AE2B44(&qword_1EAF739E0, MEMORY[0x1EEE7C010], MEMORY[0x1EEE7C008]);
  sub_199DF944C();
  (*(v9 + 8))(v11, v8);
  (*(v3 + 8))(v5, v2);
  v12 = sub_199DF916C();
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF739E8, &qword_199E3B0B8) + 36);
  *v13 = v12;
  result = 0.0;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 1;
  return result;
}

uint64_t sub_199AE24C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A28, &qword_199E3B0E0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A30, &qword_199E3B0E8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - v9;
  sub_199DF869C();
  if (v11 <= 450.0)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A20, &qword_199E3B0D8);
    (*(*(v18 - 8) + 16))(v6, a1, v18);
    swift_storeEnumTagMultiPayload();
    v19 = sub_199AA0B90(&qword_1EAF73A38, &qword_1EAF73A20, &qword_199E3B0D8, MEMORY[0x1E697FDF8]);
    v21 = v18;
    v22 = v19;
    swift_getOpaqueTypeConformance2();
    return sub_199DF8EDC();
  }

  else
  {
    v20[1] = a1;
    v20[2] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_199E39320;
    v13 = sub_199DF91BC();
    *(inited + 32) = v13;
    v14 = sub_199DF919C();
    *(inited + 33) = v14;
    sub_199DF91AC();
    sub_199DF91AC();
    if (sub_199DF91AC() != v13)
    {
      sub_199DF91AC();
    }

    sub_199DF91AC();
    if (sub_199DF91AC() != v14)
    {
      sub_199DF91AC();
    }

    sub_199DF869C();
    sub_199DF868C();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A20, &qword_199E3B0D8);
    v16 = sub_199AA0B90(&qword_1EAF73A38, &qword_1EAF73A20, &qword_199E3B0D8, MEMORY[0x1E697FDF8]);
    sub_199DF948C();
    (*(v8 + 16))(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    v21 = v15;
    v22 = v16;
    swift_getOpaqueTypeConformance2();
    sub_199DF8EDC();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_199AE2898@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A20, &qword_199E3B0D8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  result = (*(v5 + 32))(v10 + v9, v8, v4);
  *a2 = sub_199AE2BF4;
  a2[1] = v10;
  return result;
}

unint64_t sub_199AE2AA0()
{
  result = qword_1EAF73A08;
  if (!qword_1EAF73A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73A00, &qword_199E3B0D0);
    sub_199AE2B44(&qword_1EAF71168, MEMORY[0x1EEE7D2F8], MEMORY[0x1EEE7D2F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73A08);
  }

  return result;
}

uint64_t sub_199AE2B44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_199AE2B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A00, &qword_199E3B0D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_199AE2BF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A20, &qword_199E3B0D8) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_199AE24C8(v4, a1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_199AE2C94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_199AE2CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_199AE2D38()
{
  result = qword_1EAF73A40;
  if (!qword_1EAF73A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF739E8, &qword_199E3B0B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF739C8, &qword_199E3B0A8);
    sub_199DF8F2C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF739D0, &qword_199E3B0B0);
    sub_199AA0B90(&qword_1EAF739D8, &qword_1EAF739D0, &qword_199E3B0B0, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    sub_199AE2B44(&qword_1EAF739E0, MEMORY[0x1EEE7C010], MEMORY[0x1EEE7C008]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73A40);
  }

  return result;
}

uint64_t sub_199AE2EB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_199ACE3F8(a1, a2, a3 & 1);

  return sub_199DF81AC();
}

uint64_t sub_199AE2F50(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_199ACE3E8(a1, a2, a3 & 1);
}

unint64_t sub_199AE2FC4()
{
  result = qword_1EAF71078;
  if (!qword_1EAF71078)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71078);
  }

  return result;
}

unint64_t sub_199AE301C()
{
  result = qword_1EAF74B70;
  if (!qword_1EAF74B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF74B70);
  }

  return result;
}

uint64_t sub_199AE30A4()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF86FB8);
  __swift_project_value_buffer(v0, qword_1EAF86FB8);
  return sub_199DF803C();
}

uint64_t sub_199AE3128(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_199A7A02C(0, &qword_1EAF71C10, 0x1E69DC888);
  v3 = sub_199DFA0CC();

  v2(v3);
}

void sub_199AE32CC(uint64_t a1, uint64_t a2)
{
  sub_199A7A02C(0, &qword_1EAF71C10, 0x1E69DC888);
  v3 = sub_199DFA0BC();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_199AE3490(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_199A7A02C(0, &qword_1EAF71C10, 0x1E69DC888);
  **(*(v2 + 64) + 40) = sub_199DFA0CC();

  return MEMORY[0x1EEE6DED8](v2);
}

uint64_t sub_199AE3514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = sub_199DF804C();
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_199AE3604, 0, 0);
}

uint64_t sub_199AE3604()
{
  v1 = v0[16];
  v2 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v3 = [v1 identifier];
  if (!v3)
  {
    sub_199DF9F8C();
    v3 = sub_199DF9F5C();
  }

  v4 = *MEMORY[0x1E695C400];
  v0[6] = sub_199DF9F8C();
  v0[7] = v5;
  v0[8] = sub_199DF9F8C();
  v0[9] = v6;
  v44 = MEMORY[0x1E69E7CC0];
  sub_199DFA79C();
  sub_199DF81AC();
  sub_199DF9F5C();

  sub_199DFA77C();
  sub_199DFA7AC();
  sub_199DFA7BC();
  sub_199DFA78C();
  sub_199DF81AC();
  swift_arrayDestroy();
  sub_199DF9F5C();

  sub_199DFA77C();
  sub_199DFA7AC();
  sub_199DFA7BC();
  sub_199DFA78C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790, &qword_199E38F80);
  v7 = sub_199DFA0BC();

  v0[14] = 0;
  v8 = [v2 unifiedContactWithIdentifier:v3 keysToFetch:v7 error:{v0 + 14, v44}];

  v9 = v0[14];
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_199E37DF0;
    *(v10 + 32) = v4;
    v11 = v9;
    v12 = v4;
    v13 = sub_199DFA0BC();

    v14 = [v8 areKeysAvailable_];

    if (v14 && (v15 = [v8 thumbnailImageData]) != 0)
    {
      v17 = v0[17];
      v16 = v0[18];
      v18 = v15;
      v19 = sub_199DF71FC();
      v21 = v20;

      sub_199AA7630(v19, v21);
      if (sub_199B48F70(v19, v21, v17, v16))
      {
        v22 = v0[16];
        sub_199A9EF34(v19, v21);
        [v22 mutableCopy];
        sub_199DFA66C();
        swift_unknownObjectRelease();
        sub_199A7A02C(0, &qword_1EAF710A0, 0x1E695CF18);
        swift_dynamicCast();
        v23 = v0[15];
        v24 = [v22 backgroundColors];
        if (!v24)
        {
          v24 = [objc_allocWithZone(MEMORY[0x1E6996AB8]) init];
        }

        sub_199A7A02C(0, &qword_1EAF71C10, 0x1E69DC888);
        v25 = sub_199DFA0BC();
        [v24 setContactImage_];

        [v23 setBackgroundColors_];
        if (qword_1EAF71E80 != -1)
        {
          swift_once();
        }

        v27 = v0[21];
        v26 = v0[22];
        v28 = v0[20];
        v29 = __swift_project_value_buffer(v28, qword_1EAF86FB8);
        (*(v27 + 16))(v26, v29, v28);
        sub_199DF7F4C();
        swift_allocObject();
        sub_199DF7F2C();
        v30 = swift_task_alloc();
        *(v30 + 16) = v23;
        *(v30 + 24) = v2;
        sub_199DF7F3C();

        sub_199A9EF34(v19, v21);

        goto LABEL_20;
      }

      sub_199AE5B64();
      v31 = swift_allocError();
      *v43 = 2;
      swift_willThrow();
      sub_199A9EF34(v19, v21);
      sub_199A9EF34(v19, v21);
    }

    else
    {
      sub_199AE5B64();
      v31 = swift_allocError();
      *v32 = 1;
      swift_willThrow();
    }
  }

  else
  {
    v33 = v9;
    v31 = sub_199DF717C();

    swift_willThrow();
  }

  if (qword_1EAF71E80 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[20], qword_1EAF86FB8);
  v34 = v31;
  v35 = sub_199DF802C();
  v36 = sub_199DFA31C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    v39 = v31;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v40;
    *v38 = v40;
    _os_log_impl(&dword_199A75000, v35, v36, "Failed to validate contact and persist cached color generation, error: %@", v37, 0xCu);
    sub_199A79A04(v38, &unk_1EAF73A90, &unk_199E3A0B0);
    MEMORY[0x19A8FA1A0](v38, -1, -1);
    MEMORY[0x19A8FA1A0](v37, -1, -1);
  }

  else
  {
  }

LABEL_20:

  v41 = v0[1];

  return v41();
}

void sub_199AE3D3C(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_allocWithZone(MEMORY[0x1E695CF88]) init];
  [v4 setSuppressChangeNotifications_];
  [v4 updateContact_];
  v16[0] = 0;
  if ([a2 executeSaveRequest:v4 error:v16])
  {
    v5 = v16[0];
  }

  else
  {
    v6 = v16[0];
    v7 = sub_199DF717C();

    swift_willThrow();
    if (qword_1EAF71E80 != -1)
    {
      swift_once();
    }

    v8 = sub_199DF804C();
    __swift_project_value_buffer(v8, qword_1EAF86FB8);
    v9 = v7;
    v10 = sub_199DF802C();
    v11 = sub_199DFA31C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v7;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_199A75000, v10, v11, "Failed to save background colors, error: %@", v12, 0xCu);
      sub_199A79A04(v13, &unk_1EAF73A90, &unk_199E3A0B0);
      MEMORY[0x19A8FA1A0](v13, -1, -1);
      MEMORY[0x19A8FA1A0](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_199AE3F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_199AE5C8C(a3, v25 - v10);
  v12 = sub_199DFA1BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_199A79A04(v11, &qword_1EAF73A70, &qword_199E3B390);
  }

  else
  {
    sub_199DFA1AC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_199DFA12C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_199DF9FCC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_199AE43B0(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_199AE4460;

  return sub_199AE5120(v4);
}

uint64_t sub_199AE4460(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_199DF716C();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_199A7A02C(0, &qword_1EAF71C10, 0x1E69DC888);
    v10 = sub_199DFA0BC();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_199AE45FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  return MEMORY[0x1EEE6DFA0](sub_199AE4620, 0, 0);
}

uint64_t sub_199AE4620()
{
  v1 = v0[19];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_199AE4758;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73A78, &qword_199E3B270);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_199AE4980;
  v0[13] = &block_descriptor_4;
  v0[14] = v3;
  [v2 fetchTintedAvatarColorsFor:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_199AE4758()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_199AE48E0;
  }

  else
  {
    v2 = sub_199AE4868;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_199AE4868()
{
  (*(v0 + 160))(*(v0 + 144), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_199AE48E0()
{
  v1 = v0[22];
  v2 = v0[20];
  swift_willThrow();
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_199AE4980(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD0, &qword_199E3C220);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_199A7A02C(0, &qword_1EAF71C10, 0x1E69DC888);
    **(*(v4 + 64) + 40) = sub_199DFA0CC();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

void sub_199AE4BB8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_199A7A02C(0, &qword_1EAF71C10, 0x1E69DC888);
    v5 = sub_199DFA0BC();
  }

  if (a2)
  {
    v6 = sub_199DF716C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

CNImageDerivedColorGenerator __swiftcall CNImageDerivedColorGenerator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_199AE4D28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_199AA7688;

  return sub_199AE45FC(a1, v4, v5, v6, v7, v8);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_199AE4E3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_199AA7688;

  return sub_199AE43B0(v2, v3);
}

uint64_t sub_199AE4EF0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_199AE4FE8;

  return v6(a1);
}

uint64_t sub_199AE4FE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_199AE5120(uint64_t a1)
{
  *(v1 + 152) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  *(v1 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_199AE51BC, 0, 0);
}

uint64_t sub_199AE51BC()
{
  v49 = v0;
  v1 = *(v0 + 152);
  *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_199E37DF0;
  v3 = *MEMORY[0x1E695C268];
  *(v0 + 176) = *MEMORY[0x1E695C268];
  *(v2 + 32) = v3;
  v4 = v3;
  *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790, &qword_199E38F80);
  v5 = sub_199DFA0BC();

  LODWORD(v1) = [v1 areKeysAvailable_];

  if (v1)
  {
    v6 = [*(v0 + 152) backgroundColors];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 contactImage];

      sub_199A7A02C(0, &qword_1EAF71C10, 0x1E69DC888);
      v9 = sub_199DFA0CC();

      if (v9 >> 62)
      {
        if (sub_199DFA87C())
        {
          goto LABEL_5;
        }
      }

      else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if (qword_1EAF71E80 != -1)
        {
          swift_once();
        }

        v10 = *(v0 + 152);
        v11 = sub_199DF804C();
        __swift_project_value_buffer(v11, qword_1EAF86FB8);
        v12 = v10;
        v13 = sub_199DF802C();
        v14 = sub_199DFA2FC();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = *(v0 + 152);
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v48 = v17;
          *v16 = 136315138;
          v18 = [v15 identifier];
          v19 = sub_199DF9F8C();
          v21 = v20;

          v22 = sub_199A9BE90(v19, v21, &v48);

          *(v16 + 4) = v22;
          _os_log_impl(&dword_199A75000, v13, v14, "Returning cached backgroundColors for contact: %s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v17);
          MEMORY[0x19A8FA1A0](v17, -1, -1);
          MEMORY[0x19A8FA1A0](v16, -1, -1);
        }

        v23 = *(v0 + 8);

        return v23(v9);
      }
    }
  }

  v25 = *(v0 + 152);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_199E37DF0;
  v27 = *MEMORY[0x1E695C400];
  *(v26 + 32) = *MEMORY[0x1E695C400];
  v28 = v27;
  v29 = sub_199DFA0BC();

  v30 = [v25 areKeysAvailable_];

  if (v30 && (v31 = [*(v0 + 152) thumbnailImageData]) != 0)
  {
    v32 = v31;
    v33 = sub_199DF71FC();
    v35 = v34;

    *(v0 + 192) = v33;
    *(v0 + 200) = v35;
    v36 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_199AA7630(v33, v35);
    sub_199AA7630(v33, v35);
    v37 = sub_199DF71DC();
    v38 = [v36 initWithData_];
    *(v0 + 208) = v38;

    sub_199A9EF34(v33, v35);
    if (v38)
    {
      v39 = objc_opt_self();
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_199AE5850;
      v40 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A88, &qword_199E3B290);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_199AE3490;
      *(v0 + 104) = &block_descriptor_21;
      *(v0 + 112) = v40;
      [v39 fetchColorsForImage:v38 withCompletionHandler:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    if (qword_1EAF71E80 != -1)
    {
      swift_once();
    }

    v43 = sub_199DF804C();
    __swift_project_value_buffer(v43, qword_1EAF86FB8);
    v44 = sub_199DF802C();
    v45 = sub_199DFA31C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_199A75000, v44, v45, "Failed to create UIImage from contact image", v46, 2u);
      MEMORY[0x19A8FA1A0](v46, -1, -1);
    }

    sub_199AE5B64();
    swift_allocError();
    *v47 = 0;
    swift_willThrow();
    sub_199A9EF34(v33, v35);
    sub_199A9EF34(v33, v35);
  }

  else
  {
    sub_199AE5B64();
    swift_allocError();
    *v41 = 1;
    swift_willThrow();
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_199AE5850()
{

  return MEMORY[0x1EEE6DFA0](sub_199AE5930, 0, 0);
}

uint64_t sub_199AE5930()
{
  v1 = *(v0 + 144);
  if ([*(v0 + 152) hasBeenPersisted])
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 152);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_199E37DF0;
    *(v4 + 32) = v2;
    v5 = v2;
    v6 = sub_199DFA0BC();

    v7 = [v3 areKeysAvailable_];

    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    v10 = *(v0 + 192);
    if (v7)
    {
      v12 = *(v0 + 152);
      v11 = *(v0 + 160);
      sub_199DFA19C();
      v13 = sub_199DFA1BC();
      (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v12;
      v14[5] = v10;
      v14[6] = v8;
      v14[7] = v1;
      v15 = v12;
      sub_199AA7630(v10, v8);
      sub_199DF81AC();
      sub_199AE3F7C(0, 0, v11, &unk_199E3B2A0, v14);

      sub_199A9EF34(v10, v8);
      sub_199A9EF34(v10, v8);
      sub_199A79A04(v11, &qword_1EAF73A70, &qword_199E3B390);
    }

    else
    {
      sub_199A9EF34(*(v0 + 192), *(v0 + 200));
      sub_199A9EF34(v10, v8);
    }
  }

  else
  {
    v16 = *(v0 + 200);
    v17 = *(v0 + 208);
    v18 = *(v0 + 192);
    sub_199A9EF34(v18, v16);
    sub_199A9EF34(v18, v16);
  }

  v19 = *(v0 + 8);

  return v19(v1);
}

unint64_t sub_199AE5B64()
{
  result = qword_1EAF71B50;
  if (!qword_1EAF71B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71B50);
  }

  return result;
}

uint64_t sub_199AE5BB8(uint64_t a1)
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
  v10[1] = sub_199AA7688;

  return sub_199AE3514(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_199AE5C8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199AE5CFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_199AA7314;

  return sub_199AE4EF0(a1, v4);
}

uint64_t block_copy_helper_40_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_199AE5E04()
{
  result = qword_1EAF73AA0;
  if (!qword_1EAF73AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73AA0);
  }

  return result;
}

uint64_t sub_199AE5E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_199AE5C8C(a3, v25 - v10);
  v12 = sub_199DFA1BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_199A79A04(v11, &qword_1EAF73A70, &qword_199E3B390);
  }

  else
  {
    sub_199DFA1AC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_199DFA12C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_199DF9FCC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_199A79A04(a3, &qword_1EAF73A70, &qword_199E3B390);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_199A79A04(a3, &qword_1EAF73A70, &qword_199E3B390);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_199AE6150()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF86EF8);
  __swift_project_value_buffer(v0, qword_1EAF86EF8);
  return sub_199DF803C();
}

unint64_t CNFMLFriendshipState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t CNFMLFriendshipUpdateType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_199AE61FC()
{
  v1 = *v0;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v1);
  return sub_199DFAABC();
}

uint64_t sub_199AE6244(uint64_t a1)
{
  v2 = *v1;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v2);
  return sub_199DFAABC();
}

unint64_t *sub_199AE6288@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_199AE6380()
{
  v1 = (v0 + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_friendshipUpdateCallback);
  swift_beginAccess();
  v2 = *v1;
  sub_199A9A57C(*v1, v1[1]);
  return v2;
}

uint64_t sub_199AE63DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  v5 = swift_unknownObjectRetain();
  v4(v5, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_199AE6504(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_friendshipUpdateCallback);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_199A9A5FC(v6, v7);
}

uint64_t sub_199AE6564@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_friendshipUpdateCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_199AF03DC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_199A9A57C(v4, v5);
}

uint64_t sub_199AE6604(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_199AF03A0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_friendshipUpdateCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_199A9A57C(v3, v4);
  return sub_199A9A5FC(v8, v9);
}

id FindMyLocateSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FindMyLocateSession.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = &v22 - v3;
  v4 = sub_199DFA36C();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_199DF9E1C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_199DFA38C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v0[OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_friendshipUpdateCallback];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v0[OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession__session] = 0;
  v0[OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_isInitialized] = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_initContinuations] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_friendsUpdateTask] = 0;
  v23 = OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_serialQueue;
  sub_199A7A02C(0, &qword_1EAF71D20, 0x1E69E9610);
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8098], v6);
  sub_199DF9E0C();
  v26 = v11;
  sub_199AF0510(&qword_1EAF71090, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73AE0, &qword_199E3B398);
  sub_199AE6B88();
  sub_199DFA68C();
  *&v0[v23] = sub_199DFA3CC();
  v12 = OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_logger;
  if (qword_1EAF71B18 != -1)
  {
    swift_once();
  }

  v13 = sub_199DF804C();
  v14 = __swift_project_value_buffer(v13, qword_1EAF86EF8);
  (*(*(v13 - 8) + 16))(&v1[v12], v14, v13);
  Session = type metadata accessor for FindMyLocateSession(0);
  v25.receiver = v1;
  v25.super_class = Session;
  v16 = objc_msgSendSuper2(&v25, sel_init);
  v17 = sub_199DFA1BC();
  v18 = v24;
  (*(*(v17 - 8) + 56))(v24, 1, 1, v17);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v16;
  v20 = v16;
  sub_199AE5E60(0, 0, v18, &unk_199E3B3A8, v19);

  return v20;
}

unint64_t sub_199AE6B88()
{
  result = qword_1EAF71108;
  if (!qword_1EAF71108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73AE0, &qword_199E3B398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71108);
  }

  return result;
}

uint64_t type metadata accessor for FindMyLocateSession(uint64_t a1)
{
  result = qword_1EAF71A60;
  if (!qword_1EAF71A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199AE6C38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_199AA7314;

  return sub_199AE6DA0();
}

uint64_t sub_199AE6CC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_199AA7688;

  return sub_199AE6C38();
}

uint64_t sub_199AE6DA0()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A80, &qword_199E3B7A0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_199DF743C();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  sub_199DF744C();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_199AE6EF4, 0, 0);
}

uint64_t sub_199AE6EF4()
{
  v1 = v0[2];
  (*(v0[7] + 104))(v0[8], *MEMORY[0x1E699C8A0], v0[6]);
  sub_199DF745C();
  sub_199DF761C();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession__session) = sub_199DF762C();

  v2 = OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_initContinuations;
  v3 = *(v1 + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_initContinuations);
  v4 = *(v3 + 16);
  if (v4)
  {
    v16 = OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_initContinuations;
    v17 = v1;
    v5 = v0[4];
    v8 = *(v5 + 16);
    v6 = v5 + 16;
    v7 = v8;
    v9 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v10 = *(v6 + 56);
    sub_199DF81AC();
    do
    {
      v11 = v0[5];
      v12 = v0[3];
      v7(v11, v9, v12);
      sub_199DFA13C();
      (*(v6 - 8))(v11, v12);
      v9 += v10;
      --v4;
    }

    while (v4);

    v2 = v16;
    v1 = v17;
  }

  v13 = v0[2];
  *(v1 + v2) = MEMORY[0x1E69E7CC0];

  *(v13 + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_isInitialized) = 1;

  v14 = v0[1];

  return v14();
}

uint64_t sub_199AE70C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A80, &qword_199E3B7A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = *(a2 + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_isInitialized);
  v9 = sub_199DF802C();
  if (v8)
  {
    v10 = sub_199DFA30C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_199A75000, v9, v10, "FindMyLocateSession: Init is done. Resume all.", v11, 2u);
      MEMORY[0x19A8FA1A0](v11, -1, -1);
    }

    return sub_199DFA13C();
  }

  else
  {
    v13 = sub_199DFA33C();
    if (os_log_type_enabled(v9, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_199A75000, v9, v13, "FindMyLocateSession: Init in progress; appending continuation.", v14, 2u);
      MEMORY[0x19A8FA1A0](v14, -1, -1);
    }

    (*(v5 + 16))(v7, a1, v4);
    v15 = OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_initContinuations;
    v16 = *(a2 + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_initContinuations);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + v15) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_199AB24F4(0, v16[2] + 1, 1, v16);
      *(a2 + v15) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_199AB24F4((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    result = (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v7, v4);
    *(a2 + v15) = v16;
  }

  return result;
}

double sub_199AE7348(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_199DFA1BC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;

  sub_199AE7FD0(0, 0, v7, &unk_199E3B3B8, v9);

  return result;
}

uint64_t sub_199AE7468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_199DF758C();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_199DF755C();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_199AE7588, 0, 0);
}

uint64_t sub_199AE7588()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_199AE7678;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v3, 0, 0, 0x6F44734974696E69, 0xEC0000002928656ELL, sub_199AF071C, v2, v4);
}

uint64_t sub_199AE7678()
{

  return MEMORY[0x1EEE6DFA0](sub_199AE7790, 0, 0);
}

uint64_t sub_199AE7790()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession__session);
  v0[13] = v1;

  if (v1)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_199AE7950;

    return MEMORY[0x1EEE04588]();
  }

  else
  {
    v3 = sub_199DF802C();
    v4 = sub_199DFA31C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_199A75000, v3, v4, "FindMyLocateSession: Missing FindMyLocate.Session!", v5, 2u);
      MEMORY[0x19A8FA1A0](v5, -1, -1);
    }

    v6 = v0[3];

    sub_199AED14C();
    v7 = swift_allocError();
    *v8 = 5;
    v6(0, v7);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_199AE7950(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_199AE7E0C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[17] = v4;
    *v4 = v3;
    v4[1] = sub_199AE7AC0;

    return MEMORY[0x1EEE04550]();
  }
}

uint64_t sub_199AE7AC0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_199AE7E84;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_199AE7BE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_199AE7BE8()
{
  v21 = *(v0 + 120);
  sub_199B436FC(*(v0 + 152));
  v1 = *(v21 + 16);
  if (v1)
  {
    v2 = *(v0 + 72);
    v20 = *(v2 + 16);
    v3 = v21 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = (*(v0 + 48) + 8);
    v19 = *(v2 + 72);
    v17 = (v2 + 8);
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = *(v0 + 80);
      v7 = *(v0 + 56);
      v6 = *(v0 + 64);
      v8 = *(v0 + 40);
      v20(v5, v3, v6);
      sub_199DF752C();
      v9 = sub_199DF756C();
      v11 = v10;
      (*v18)(v7, v8);
      (*v17)(v5, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_199AB26E4(0, *(v4 + 2) + 1, 1, v4);
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        v4 = sub_199AB26E4((v12 > 1), v13 + 1, 1, v4);
      }

      *(v4 + 2) = v13 + 1;
      v14 = &v4[16 * v13];
      *(v14 + 4) = v9;
      *(v14 + 5) = v11;
      v3 += v19;
      --v1;
    }

    while (v1);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  (*(v0 + 24))(v4, 0);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_199AE7E0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_199AE7E84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_199AE7F08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_199AA7688;

  return sub_199AE7468(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_199AE7FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_199AE5C8C(a3, v22 - v9);
  v11 = sub_199DFA1BC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_199A79A04(v10, &qword_1EAF73A70, &qword_199E3B390);
  }

  else
  {
    sub_199DFA1AC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_199DFA12C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_199DF9FCC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_199A79A04(a3, &qword_1EAF73A70, &qword_199E3B390);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_199A79A04(a3, &qword_1EAF73A70, &qword_199E3B390);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_199AE826C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_199AE5C8C(a3, v22 - v9);
  v11 = sub_199DFA1BC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_199A79A04(v10, &qword_1EAF73A70, &qword_199E3B390);
  }

  else
  {
    sub_199DFA1AC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_199DFA12C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_199DF9FCC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_199A79A04(a3, &qword_1EAF73A70, &qword_199E3B390);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_199A79A04(a3, &qword_1EAF73A70, &qword_199E3B390);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_199AE8648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_199DFA0BC();
    if (a2)
    {
LABEL_3:
      v6 = sub_199DF716C();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_199AE8750(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a2;
  v6 = sub_199DF9DDC();
  v56 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_199DF9E3C();
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - v16;
  swift_unknownObjectRetain();
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v51 = a3;
    v52 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73B58, &qword_199E3B848);
    v20 = swift_allocObject();
    v49 = v6;
    v21 = v20;
    *(v20 + 16) = 0;
    *(v20 + 24) = 1;
    v22 = dispatch_group_create();
    dispatch_group_enter(v22);
    v23 = sub_199DFA1BC();
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v48 = v14;
    v25 = v17;
    v26 = v53;
    v24[4] = v22;
    v24[5] = v26;
    v24[6] = v19;
    v24[7] = v21;
    v24[8] = a1;
    v50 = a1;
    swift_unknownObjectRetain_n();
    v27 = v22;
    v26;
    v53 = v21;

    sub_199AE826C(0, 0, v25, &unk_199E3B858, v24);

    sub_199DF9E2C();
    *v8 = 60;
    v28 = v56;
    v29 = v49;
    (v56[13].isa)(v8, *MEMORY[0x1E69E7F48], v49);
    v30 = v48;
    MEMORY[0x19A8F7C30](v11, v8);
    (v28[1].isa)(v8, v29);
    v31 = v55;
    v32 = *(v54 + 8);
    v32(v11, v55);
    v56 = v27;
    sub_199DFA35C();
    v32(v30, v31);
    if (sub_199DF9DEC())
    {
      v33 = sub_199DF802C();
      v34 = sub_199DFA31C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_199A75000, v33, v34, "FindMyLocateSession: Timed out waiting for cachedOfferExpiration", v35, 2u);
        MEMORY[0x19A8FA1A0](v35, -1, -1);
      }
    }

    if (*(v53 + 24))
    {
      v36 = 2;
    }

    else
    {
      v36 = *(v53 + 16);
    }

    v37 = v50;
    swift_unknownObjectRetain();
    v38 = sub_199DF802C();
    v39 = sub_199DFA33C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v58 = v41;
      *v40 = 136315394;
      v57 = v37;
      swift_unknownObjectRetain();
      v42 = sub_199DF9FBC();
      v44 = sub_199A9BE90(v42, v43, &v58);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v57 = v36;
      v45 = sub_199DF9FBC();
      v47 = sub_199A9BE90(v45, v46, &v58);

      *(v40 + 14) = v47;
      _os_log_impl(&dword_199A75000, v38, v39, "FindMyLocateSession: Share state for handle: %s : %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8FA1A0](v41, -1, -1);
      MEMORY[0x19A8FA1A0](v40, -1, -1);
    }

    swift_unknownObjectRelease();
    a3 = v51;
  }

  else
  {
    swift_unknownObjectRelease();
    v36 = 2;
  }

  *a3 = v36;
}

uint64_t sub_199AE8D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a1;
  v8[5] = a4;
  v9 = sub_199DF758C();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v10 = sub_199DF748C();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_199AE8E34, 0, 0);
}

uint64_t sub_199AE8E34()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[16] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_199AE8F24;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v3, 0, 0, 0x6F44734974696E69, 0xEC0000002928656ELL, sub_199AF071C, v2, v4);
}

uint64_t sub_199AE8F24()
{

  return MEMORY[0x1EEE6DFA0](sub_199AE903C, 0, 0);
}

uint64_t sub_199AE903C()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession__session);
  *(v0 + 144) = v1;

  if (v1)
  {
    v2 = [*(v0 + 56) identifier];
    sub_199DF9F8C();

    sub_199AF040C(MEMORY[0x1E69E7CC0]);
    sub_199DF757C();
    v3 = swift_task_alloc();
    *(v0 + 152) = v3;
    *v3 = v0;
    v3[1] = sub_199AE9254;
    v4 = *(v0 + 120);
    v5 = *(v0 + 96);

    return MEMORY[0x1EEE04560](v4, v5, 0);
  }

  else
  {
    v6 = sub_199DF802C();
    v7 = sub_199DFA31C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_199A75000, v6, v7, "FindMyLocateSession: Missing FindMyLocate.Session!", v8, 2u);
      MEMORY[0x19A8FA1A0](v8, -1, -1);
    }

    v10 = *(v0 + 32);
    v9 = *(v0 + 40);

    *v10 = 2;
    dispatch_group_leave(v9);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_199AE9254()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_199AE9624;
  }

  else
  {
    v5 = sub_199AE93C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_199AE93C4()
{
  v24 = v0;
  if (sub_199DF746C())
  {
    v1 = (sub_199DF747C() & 1) == 0;
  }

  else
  {
    v1 = 2;
  }

  v2 = *(v0 + 64);
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  swift_unknownObjectRetain();
  v3 = sub_199DF802C();
  v4 = sub_199DFA33C();
  swift_unknownObjectRelease();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);
  if (v5)
  {
    v9 = *(v0 + 72);
    v22 = *(v0 + 120);
    v10 = swift_slowAlloc();
    v21 = v8;
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315394;
    *(v0 + 16) = v9;
    swift_unknownObjectRetain();
    v12 = sub_199DF9FBC();
    v14 = sub_199A9BE90(v12, v13, &v23);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v0 + 24) = v1;
    v15 = sub_199DF9FBC();
    v17 = sub_199A9BE90(v15, v16, &v23);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_199A75000, v3, v4, "FindMyLocateSession: Share state for handle: %s : %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8FA1A0](v11, -1, -1);
    MEMORY[0x19A8FA1A0](v10, -1, -1);

    (*(v6 + 8))(v22, v21);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  v18 = *(v0 + 40);
  **(v0 + 32) = v1;
  dispatch_group_leave(v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_199AE9624()
{
  v1 = *(v0 + 40);

  dispatch_group_leave(v1);

  v2 = *(v0 + 8);

  return v2();
}

double sub_199AE9744(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_199DFA1BC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a1;
  *(v13 + 40) = a3;
  *(v13 + 48) = a4;
  *(v13 + 56) = v4;
  *(v13 + 64) = a2;
  sub_199DF81AC();

  v14 = v4;
  sub_199AE7FD0(0, 0, v11, &unk_199E3B3C8, v13);

  return result;
}

uint64_t sub_199AE9880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 216) = a8;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = sub_199DF74EC();
  *(v8 + 48) = v9;
  *(v8 + 56) = *(v9 - 8);
  *(v8 + 64) = swift_task_alloc();
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_199DF758C();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73B38, &qword_199E3B838);
  *(v8 + 112) = swift_task_alloc();
  v11 = sub_199DF74CC();
  *(v8 + 120) = v11;
  *(v8 + 128) = *(v11 - 8);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_199AE9A68, 0, 0);
}

uint64_t sub_199AE9A68()
{
  v1 = sub_199AEAC98(v0[2]);
  v0[20] = v1;
  if (v1)
  {
    v2 = v0[5];
    v3 = swift_task_alloc();
    v0[21] = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_199AE9C4C;
    v5 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v4, 0, 0, 0x6F44734974696E69, 0xEC0000002928656ELL, sub_199AF071C, v3, v5);
  }

  else
  {
    v6 = v0[3];
    sub_199AED14C();
    v7 = swift_allocError();
    *v8 = 3;
    v6();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_199AE9C4C()
{

  return MEMORY[0x1EEE6DFA0](sub_199AE9D64, 0, 0);
}

uint64_t sub_199AE9D64()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession__session);
  *(v0 + 184) = v1;

  v2 = *(v0 + 160);
  if (v1)
  {
    if (v2 >> 62)
    {
      v3 = sub_199DFA87C();
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
LABEL_4:
        v34 = MEMORY[0x1E69E7CC0];
        v4 = sub_199A9C620(0, v3 & ~(v3 >> 63), 0);
        if (v3 < 0)
        {
          __break(1u);
          return MEMORY[0x1EEE04548](v4, v5, v6, v7);
        }

        v8 = v34;
        v9 = *(v0 + 160);
        v10 = *(v0 + 88);
        if ((v9 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v3; ++i)
          {
            MEMORY[0x19A8F8520](i, *(v0 + 160));
            v12 = [swift_unknownObjectRetain() identifier];
            sub_199DF9F8C();

            sub_199DF757C();
            swift_unknownObjectRelease_n();
            v14 = *(v34 + 16);
            v13 = *(v34 + 24);
            if (v14 >= v13 >> 1)
            {
              sub_199A9C620((v13 > 1), v14 + 1, 1);
            }

            v15 = *(v0 + 104);
            v16 = *(v0 + 80);
            *(v34 + 16) = v14 + 1;
            (*(v10 + 32))(v34 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, v15, v16);
          }
        }

        else
        {
          v25 = (v9 + 32);
          do
          {
            v26 = v3;
            v27 = *v25;
            v28 = [v27 identifier];
            sub_199DF9F8C();

            sub_199DF757C();
            v30 = *(v34 + 16);
            v29 = *(v34 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_199A9C620((v29 > 1), v30 + 1, 1);
            }

            v31 = *(v0 + 96);
            v32 = *(v0 + 80);
            *(v34 + 16) = v30 + 1;
            (*(v10 + 32))(v34 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30, v31, v32);
            ++v25;
            v3 = v26 - 1;
          }

          while (v26 != 1);
        }

LABEL_23:
        *(v0 + 192) = v8;
        (*(*(v0 + 88) + 56))(*(v0 + 112), 1, 1, *(v0 + 80));
        v33 = swift_task_alloc();
        *(v0 + 200) = v33;
        *v33 = v0;
        v33[1] = sub_199AEA254;
        v4 = *(v0 + 152);
        v6 = *(v0 + 112);
        v7 = *(v0 + 216);
        v5 = v8;

        return MEMORY[0x1EEE04548](v4, v5, v6, v7);
      }
    }

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v17 = sub_199DF802C();
  v18 = sub_199DFA31C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_199A75000, v17, v18, "FindMyLocateSession: Missing FindMyLocate.Session!", v19, 2u);
    MEMORY[0x19A8FA1A0](v19, -1, -1);
  }

  v20 = *(v0 + 24);

  sub_199AED14C();
  v21 = swift_allocError();
  *v22 = 5;
  v20();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_199AEA254()
{
  v2 = *(*v1 + 112);
  *(*v1 + 208) = v0;

  sub_199A79A04(v2, &qword_1EAF73B38, &qword_199E3B838);
  if (v0)
  {

    v3 = sub_199AEAAEC;
  }

  else
  {
    v3 = sub_199AEA3A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_199AEA3A4()
{
  v71 = v0;
  v64 = *(v0[16] + 16);
  v64(v0[18], v0[19], v0[15]);
  v1 = sub_199DF802C();
  v2 = sub_199DFA33C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v70 = v8;
    *v7 = 136315138;
    sub_199AF0510(&qword_1EAF73B48, MEMORY[0x1E699C8C0], MEMORY[0x1E699C8C8]);
    v9 = sub_199DFA96C();
    v11 = v10;
    v65 = *(v6 + 8);
    v65(v4, v5);
    v12 = sub_199A9BE90(v9, v11, &v70);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_199A75000, v1, v2, "FindMyLocateSession: stopSharingLocation result: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x19A8FA1A0](v8, -1, -1);
    MEMORY[0x19A8FA1A0](v7, -1, -1);
  }

  else
  {

    v65 = *(v6 + 8);
    v65(v4, v5);
  }

  v69 = v0;
  v13 = v0[7];
  v14 = sub_199DF74BC();
  v15 = v14 + 64;
  v16 = -1;
  v17 = -1 << *(v14 + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & *(v14 + 64);
  v19 = (63 - v17) >> 6;
  v66 = *MEMORY[0x1E699C8D8];
  v67 = v14;
  result = sub_199DF81AC();
  v21 = 0;
  while (v18)
  {
    v22 = v21;
LABEL_13:
    v24 = v69[8];
    v23 = v69[9];
    v25 = v69[6];
    v26 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    (*(v13 + 16))(v23, *(v67 + 56) + *(v13 + 72) * (v26 | (v22 << 6)), v25);
    (*(v13 + 104))(v24, v66, v25);
    v27 = sub_199DF74DC();
    v28 = *(v13 + 8);
    v28(v24, v25);
    result = (v28)(v23, v25);
    if ((v27 & 1) == 0)
    {
      v29 = v69[19];
      v30 = v69[17];
      v31 = v69[15];

      v64(v30, v29, v31);
      v32 = sub_199DF802C();
      v33 = sub_199DFA31C();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v69[17];
      v36 = v69[15];
      if (v34)
      {
        v37 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v70 = v68;
        *v37 = 136315138;
        sub_199DF74BC();
        sub_199AF0510(&qword_1EAF73B40, MEMORY[0x1E699C8F0], MEMORY[0x1E699C8F8]);
        v38 = sub_199DF9EAC();
        v40 = v39;

        v41 = v69;
        v65(v35, v36);
        v42 = v38;
        v43 = v65;
        v44 = sub_199A9BE90(v42, v40, &v70);

        *(v37 + 4) = v44;
        _os_log_impl(&dword_199A75000, v32, v33, "FindMyLocateSession: stopSharingLocationFailed %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x19A8FA1A0](v68, -1, -1);
        MEMORY[0x19A8FA1A0](v37, -1, -1);
      }

      else
      {

        v41 = v69;
        v43 = v65;
        v65(v35, v36);
      }

      v59 = v41[19];
      v60 = v41[15];
      v61 = v41[3];
      sub_199AED14C();
      v62 = swift_allocError();
      *v63 = 5;
      v61();

      v43(v59, v60);
      goto LABEL_20;
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      return result;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_13;
    }
  }

  v41 = v69;

  sub_199DF81AC();
  v45 = sub_199DF802C();
  v46 = sub_199DFA33C();

  v47 = os_log_type_enabled(v45, v46);
  v48 = v69[24];
  if (v47)
  {
    v49 = v69[10];
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v70 = v51;
    *v50 = 136315138;
    v52 = MEMORY[0x19A8F7EB0](v48, v49);
    v54 = v53;

    v55 = sub_199A9BE90(v52, v54, &v70);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_199A75000, v45, v46, "FindMyLocateSession: Successfully stop location share with %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x19A8FA1A0](v51, -1, -1);
    MEMORY[0x19A8FA1A0](v50, -1, -1);
  }

  else
  {
  }

  v56 = v69[19];
  v57 = v69[15];
  (v69[3])(0);

  v65(v56, v57);
LABEL_20:

  v58 = v41[1];

  return v58();
}

uint64_t sub_199AEAAEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_199AEABBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_199AA7688;

  return sub_199AE9880(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_199AEAC98(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_199DFA87C();
    sub_199DFA79C();
    v2 = sub_199DFA87C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_199DFA79C();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x19A8F8520](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_199DFA77C();
        sub_199DFA7AC();
        sub_199DFA7BC();
        sub_199DFA78C();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

void sub_199AEAF80(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_199DF716C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

double sub_199AEAFE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - v12;
  v14 = sub_199DFA1BC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a1;
  *(v15 + 40) = a4;
  *(v15 + 48) = a5;
  *(v15 + 56) = v5;
  *(v15 + 64) = a2;
  *(v15 + 72) = a3;
  sub_199DF81AC();

  v16 = v5;
  sub_199AE7FD0(0, 0, v13, &unk_199E3B3D8, v15);

  return result;
}

uint64_t sub_199AEB128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v15;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = sub_199DF74EC();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();
  v10 = sub_199DF758C();
  *(v8 + 88) = v10;
  *(v8 + 96) = *(v10 - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  v11 = sub_199DF74AC();
  *(v8 + 120) = v11;
  *(v8 + 128) = *(v11 - 8);
  *(v8 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73B38, &qword_199E3B838);
  *(v8 + 144) = swift_task_alloc();
  v12 = sub_199DF74CC();
  *(v8 + 152) = v12;
  *(v8 + 160) = *(v12 - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_199AEB378, 0, 0);
}

uint64_t sub_199AEB378()
{
  v1 = sub_199AEAC98(v0[2]);
  v0[24] = v1;
  if (v1)
  {
    v2 = v0[5];
    v3 = swift_task_alloc();
    v0[25] = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    v0[26] = v4;
    *v4 = v0;
    v4[1] = sub_199AEB564;
    v5 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v4, 0, 0, 0x6F44734974696E69, 0xEC0000002928656ELL, sub_199AF071C, v3, v5);
  }

  else
  {
    v6 = v0[3];
    sub_199AED14C();
    v7 = swift_allocError();
    *v8 = 3;
    v6();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_199AEB564()
{

  return MEMORY[0x1EEE6DFA0](sub_199AEB67C, 0, 0);
}

uint64_t sub_199AEB67C()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession__session);
  *(v0 + 216) = v1;

  v2 = *(v0 + 192);
  if (v1)
  {
    if (v2 >> 62)
    {
      v3 = sub_199DFA87C();
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
LABEL_4:
        v37 = MEMORY[0x1E69E7CC0];
        v4 = sub_199A9C620(0, v3 & ~(v3 >> 63), 0);
        if (v3 < 0)
        {
          __break(1u);
          return MEMORY[0x1EEE04570](v4, v5, v6, v7, v8);
        }

        v9 = v37;
        v10 = *(v0 + 192);
        v11 = *(v0 + 96);
        if ((v10 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v3; ++i)
          {
            MEMORY[0x19A8F8520](i, *(v0 + 192));
            v13 = [swift_unknownObjectRetain() identifier];
            sub_199DF9F8C();

            sub_199DF757C();
            swift_unknownObjectRelease_n();
            v15 = *(v37 + 16);
            v14 = *(v37 + 24);
            if (v15 >= v14 >> 1)
            {
              sub_199A9C620((v14 > 1), v15 + 1, 1);
            }

            v16 = *(v0 + 112);
            v17 = *(v0 + 88);
            *(v37 + 16) = v15 + 1;
            (*(v11 + 32))(v37 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v15, v16, v17);
          }
        }

        else
        {
          v26 = (v10 + 32);
          do
          {
            v27 = v3;
            v28 = *v26;
            v29 = [v28 identifier];
            sub_199DF9F8C();

            sub_199DF757C();
            v31 = *(v37 + 16);
            v30 = *(v37 + 24);
            if (v31 >= v30 >> 1)
            {
              sub_199A9C620((v30 > 1), v31 + 1, 1);
            }

            v32 = *(v0 + 104);
            v33 = *(v0 + 88);
            *(v37 + 16) = v31 + 1;
            (*(v11 + 32))(v37 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v31, v32, v33);
            ++v26;
            v3 = v27 - 1;
          }

          while (v27 != 1);
        }

LABEL_23:
        *(v0 + 224) = v9;
        v34 = *(v0 + 136);
        v35 = *(v0 + 48);
        (*(*(v0 + 96) + 56))(*(v0 + 144), 1, 1, *(v0 + 88));
        sub_199AA807C(v35, v34);
        v36 = swift_task_alloc();
        *(v0 + 232) = v36;
        *v36 = v0;
        v36[1] = sub_199AEBB84;
        v4 = *(v0 + 184);
        v7 = *(v0 + 136);
        v6 = *(v0 + 144);
        v8 = *(v0 + 248);
        v5 = v9;

        return MEMORY[0x1EEE04570](v4, v5, v6, v7, v8);
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v18 = sub_199DF802C();
  v19 = sub_199DFA31C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_199A75000, v18, v19, "FindMyLocateSession: Missing FindMyLocate.Session!", v20, 2u);
    MEMORY[0x19A8FA1A0](v20, -1, -1);
  }

  v21 = *(v0 + 24);

  sub_199AED14C();
  v22 = swift_allocError();
  *v23 = 5;
  v21();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_199AEBB84()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = v2[17];
    v3 = v2[18];
    v7 = v2 + 15;
    v5 = v2[15];
    v6 = v7[1];

    (*(v6 + 8))(v4, v5);
    sub_199A79A04(v3, &qword_1EAF73B38, &qword_199E3B838);
    v8 = sub_199AEC4EC;
  }

  else
  {
    v9 = v2[18];
    (*(v2[16] + 8))(v2[17], v2[15]);
    sub_199A79A04(v9, &qword_1EAF73B38, &qword_199E3B838);
    v8 = sub_199AEBD10;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_199AEBD10()
{
  v81 = v0;
  v72 = *(v0[20] + 16);
  v72(v0[22], v0[23], v0[19]);
  v1 = sub_199DF802C();
  v2 = sub_199DFA33C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v79 = v0;
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v80 = v8;
    *v7 = 136315138;
    sub_199AF0510(&qword_1EAF73B48, MEMORY[0x1E699C8C0], MEMORY[0x1E699C8C8]);
    v9 = sub_199DFA96C();
    v11 = v10;
    v73 = *(v6 + 8);
    v73(v4, v5);
    v12 = sub_199A9BE90(v9, v11, &v80);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_199A75000, v1, v2, "FindMyLocateSession: sendFriendshipOffer result: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x19A8FA1A0](v8, -1, -1);
    MEMORY[0x19A8FA1A0](v7, -1, -1);
  }

  else
  {

    v73 = *(v6 + 8);
    v73(v4, v5);
  }

  v13 = v0;
  v14 = v0[8];
  v15 = sub_199DF74BC();
  v16 = v15 + 64;
  v17 = -1;
  v18 = -1 << *(v15 + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(v15 + 64);
  v20 = (63 - v18) >> 6;
  v75 = *MEMORY[0x1E699C8D8];
  v76 = v14;
  v74 = *MEMORY[0x1E699C8D0];
  v77 = v15;
  result = sub_199DF81AC();
  v22 = 0;
  while (v19)
  {
LABEL_13:
    v25 = v13[9];
    v24 = v13[10];
    v26 = v79[7];
    v27 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    (*(v76 + 16))(v24, *(v77 + 56) + *(v76 + 72) * (v27 | (v22 << 6)), v26);
    v28 = *(v76 + 104);
    v28(v25, v75, v26);
    v29 = sub_199DF74DC();
    v30 = *(v76 + 8);
    v31 = v26;
    v13 = v79;
    v30(v25, v31);
    v32 = v79[10];
    if (v29)
    {
      result = (v30)(v79[10], v79[7]);
    }

    else
    {
      v33 = v79[9];
      v34 = v79[7];
      v28(v33, v74, v34);
      v35 = sub_199DF74DC();
      v30(v33, v34);
      v36 = v34;
      v13 = v79;
      result = (v30)(v32, v36);
      if ((v35 & 1) == 0)
      {
        v37 = v79[23];
        v38 = v79[21];
        v39 = v79[19];

        v72(v38, v37, v39);
        v40 = sub_199DF802C();
        v41 = sub_199DFA31C();
        v42 = os_log_type_enabled(v40, v41);
        v43 = v79[21];
        v44 = v79[19];
        if (v42)
        {
          v45 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v80 = v78;
          *v45 = 136315138;
          sub_199DF74BC();
          sub_199AF0510(&qword_1EAF73B40, MEMORY[0x1E699C8F0], MEMORY[0x1E699C8F8]);
          v46 = sub_199DF9EAC();
          v48 = v47;

          v73(v43, v44);
          v49 = v46;
          v50 = v73;
          v51 = sub_199A9BE90(v49, v48, &v80);

          *(v45 + 4) = v51;
          _os_log_impl(&dword_199A75000, v40, v41, "FindMyLocateSession: sendFriendshipOffer failed %s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v78);
          MEMORY[0x19A8FA1A0](v78, -1, -1);
          MEMORY[0x19A8FA1A0](v45, -1, -1);
        }

        else
        {

          v50 = v73;
          v73(v43, v44);
        }

        v67 = v79[23];
        v68 = v79[19];
        v69 = v79[3];
        sub_199AED14C();
        v70 = swift_allocError();
        *v71 = 7;
        v69();

        v50(v67, v68);
        v13 = v79;
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      return result;
    }

    if (v23 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_13;
    }
  }

  sub_199DF81AC();
  v52 = sub_199DF802C();
  v53 = sub_199DFA33C();

  v54 = os_log_type_enabled(v52, v53);
  v55 = v13[28];
  if (v54)
  {
    v56 = v13[11];
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v80 = v58;
    *v57 = 136315138;
    v59 = MEMORY[0x19A8F7EB0](v55, v56);
    v61 = v60;

    v62 = sub_199A9BE90(v59, v61, &v80);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_199A75000, v52, v53, "FindMyLocateSession: Successfully sent friendship offer to %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    v63 = v58;
    v13 = v79;
    MEMORY[0x19A8FA1A0](v63, -1, -1);
    MEMORY[0x19A8FA1A0](v57, -1, -1);
  }

  else
  {
  }

  v64 = v13[23];
  v65 = v13[19];
  (v13[3])(0);

  v73(v64, v65);
LABEL_21:

  v66 = v13[1];

  return v66();
}

uint64_t sub_199AEC4EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_199AEC5CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_199AA7688;

  return sub_199AEB128(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_199AEC840(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 112) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  *(v2 + 24) = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73AE8, &qword_199E3B3E8);
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  *(v2 + 48) = *(v4 + 64);
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_199AEC95C, 0, 0);
}

uint64_t sub_199AEC95C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_199AECA4C;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v3, 0, 0, 0x6F44734974696E69, 0xEC0000002928656ELL, sub_199AED144, v2, v4);
}

uint64_t sub_199AECA4C()
{

  return MEMORY[0x1EEE6DFA0](sub_199AECB64, 0, 0);
}

uint64_t sub_199AECB64()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession__session);
  *(v0 + 88) = v1;

  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_199AECD20;
    v3 = *(v0 + 64);
    v4 = *(v0 + 112);

    return MEMORY[0x1EEE04580](v3, v4);
  }

  else
  {
    v5 = sub_199DF802C();
    v6 = sub_199DFA31C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_199A75000, v5, v6, "FindMyLocateSession: Missing FindMyLocate.Session!", v7, 2u);
      MEMORY[0x19A8FA1A0](v7, -1, -1);
    }

    sub_199AED14C();
    swift_allocError();
    *v8 = 5;
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_199AECD20()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_199AED0BC;
  }

  else
  {
    v2 = sub_199AECE34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_199AECE34(uint64_t a1)
{
  v2 = sub_199DF802C();
  v3 = sub_199DFA33C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_199A75000, v2, v3, "FindMyLocateSession: Successfully startUpdatingFriends stream", v4, 2u);
    MEMORY[0x19A8FA1A0](v4, -1, -1);
  }

  v5 = v1[2];

  v21 = OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_friendsUpdateTask;
  v22 = v5;
  if (*(v5 + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_friendsUpdateTask))
  {

    sub_199DFA1EC();
  }

  v6 = v1[7];
  v7 = v1[8];
  v9 = v1[5];
  v8 = v1[6];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[2];
  v13 = sub_199DFA1BC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  (*(v9 + 16))(v6, v7, v11);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v9 + 32))(v16 + v14, v6, v11);
  *(v16 + v15) = v12;
  v17 = v12;
  v18 = sub_199AE5E60(0, 0, v10, &unk_199E3B3F8, v16);

  (*(v9 + 8))(v7, v11);
  *(v22 + v21) = v18;

  v19 = v1[1];

  return v19();
}

uint64_t sub_199AED0BC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_199AED14C()
{
  result = qword_1EAF73AF0;
  if (!qword_1EAF73AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73AF0);
  }

  return result;
}

uint64_t sub_199AED1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_199DF755C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v7 = sub_199DF749C();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73B18, &qword_199E3B828);
  v5[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73B20, &qword_199E3B830);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_199AED3BC, 0, 0);
}

uint64_t sub_199AED3BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73AE8, &qword_199E3B3E8);
  sub_199DFA1CC();
  v1 = OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_friendshipUpdateCallback;
  *(v0 + 200) = OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_logger;
  *(v0 + 208) = v1;
  swift_beginAccess();
  v2 = *MEMORY[0x1E699C8B0];
  *(v0 + 224) = *MEMORY[0x1E699C8A8];
  *(v0 + 228) = v2;
  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  *v3 = v0;
  v3[1] = sub_199AED4D0;
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);

  return MEMORY[0x1EEE6D9C8](v4, 0, 0, v5);
}

uint64_t sub_199AED4D0()
{

  return MEMORY[0x1EEE6DFA0](sub_199AED5CC, 0, 0);
}

uint64_t sub_199AED5CC()
{
  v129 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
LABEL_9:
    v30 = sub_199DF802C();
    v31 = sub_199DFA33C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_199A75000, v30, v31, "FindMyLocateSession: Successfully startUpdatingFriends", v32, 2u);
      MEMORY[0x19A8FA1A0](v32, -1, -1);
    }

    v33 = *(v0 + 8);

    return v33();
  }

  (*(v3 + 32))(*(v0 + 160), v1, v2);
  if (sub_199DFA1FC())
  {
    v4 = sub_199DF802C();
    v5 = sub_199DFA33C();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 184);
    v8 = *(v0 + 192);
    v9 = *(v0 + 176);
    v10 = *(v0 + 160);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    if (v6)
    {
      v126 = *(v0 + 192);
      v124 = *(v0 + 176);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v128 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_199A9BE90(0xD000000000000025, 0x8000000199E46D30, &v128);
      _os_log_impl(&dword_199A75000, v4, v5, "%{public}s has been canceled", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x19A8FA1A0](v14, -1, -1);
      MEMORY[0x19A8FA1A0](v13, -1, -1);

      (*(v12 + 8))(v10, v11);
      (*(v7 + 8))(v126, v124);
    }

    else
    {

      (*(v12 + 8))(v10, v11);
      (*(v7 + 8))(v8, v9);
    }

    goto LABEL_9;
  }

  v15 = *(*(v0 + 120) + 16);
  v15(*(v0 + 152), *(v0 + 160), *(v0 + 112));
  v16 = sub_199DF802C();
  v17 = sub_199DFA33C();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 152);
  if (v18)
  {
    v121 = v15;
    v20 = *(v0 + 144);
    v21 = *(v0 + 112);
    v22 = *(v0 + 120);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v128 = v24;
    *v23 = 136446466;
    *(v23 + 4) = sub_199A9BE90(0xD000000000000025, 0x8000000199E46D30, &v128);
    *(v23 + 12) = 2080;
    v121(v20, v19, v21);
    v25 = sub_199DF9FBC();
    v27 = v26;
    v127 = *(v22 + 8);
    v127(v19, v21);
    v28 = v25;
    v15 = v121;
    v29 = sub_199A9BE90(v28, v27, &v128);

    *(v23 + 14) = v29;
    _os_log_impl(&dword_199A75000, v16, v17, "%{public}s friendshipUpdate: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8FA1A0](v24, -1, -1);
    MEMORY[0x19A8FA1A0](v23, -1, -1);
  }

  else
  {
    v35 = *(v0 + 112);
    v36 = *(v0 + 120);

    v127 = *(v36 + 8);
    v127(v19, v35);
  }

  v38 = (v0 + 136);
  v37 = *(v0 + 136);
  v39 = *(v0 + 224);
  v40 = *(v0 + 112);
  v41 = *(v0 + 120);
  v15(v37, *(v0 + 160), v40);
  v42 = (*(v41 + 88))(v37, v40);
  if (v42 == v39)
  {
    v43 = *(v0 + 136);
    v45 = *(v0 + 96);
    v44 = *(v0 + 104);
    v46 = *(v0 + 56);
    v47 = *(v0 + 64);
    (*(*(v0 + 120) + 96))(v43, *(v0 + 112));
    (*(v47 + 32))(v44, v43, v46);
    v48 = *(v47 + 16);
    v48(v45, v44, v46);
    v49 = sub_199DF802C();
    v50 = sub_199DFA33C();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 96);
    v54 = *(v0 + 56);
    v53 = *(v0 + 64);
    if (v51)
    {
      v55 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v128 = v118;
      *v55 = 136446466;
      *(v55 + 4) = sub_199A9BE90(0xD000000000000025, 0x8000000199E46D30, &v128);
      *(v55 + 12) = 2080;
      sub_199AF0510(&qword_1EAF73B30, MEMORY[0x1E699C8E0], MEMORY[0x1E699C8E8]);
      v56 = sub_199DFA96C();
      v115 = v50;
      v57 = v48;
      v59 = v58;
      v122 = *(v53 + 8);
      v122(v52, v54);
      v60 = sub_199A9BE90(v56, v59, &v128);
      v48 = v57;

      *(v55 + 14) = v60;
      _os_log_impl(&dword_199A75000, v49, v115, "%{public}s Added friend: %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8FA1A0](v118, -1, -1);
      MEMORY[0x19A8FA1A0](v55, -1, -1);
    }

    else
    {

      v122 = *(v53 + 8);
      v122(v52, v54);
    }

    v38 = (v0 + 160);
    v79 = *(v0 + 48) + *(v0 + 208);
    v80 = *v79;
    if (*v79)
    {
      v81 = *(v0 + 104);
      v82 = *(v0 + 88);
      v83 = *(v0 + 56);
      v84 = *(v79 + 8);
      sub_199A7A02C(0, &qword_1EAF73B28, off_1E74DEBC8);
      v48(v82, v81, v83);

      v85 = sub_199AA83C4(v82);
      v80(v85, 0);

      sub_199A9A5FC(v80, v84);
    }

    v86 = *(v0 + 104);
  }

  else
  {
    if (v42 != *(v0 + 228))
    {
      v15(*(v0 + 128), *(v0 + 160), *(v0 + 112));
      v87 = sub_199DF802C();
      v88 = sub_199DFA31C();
      v89 = os_log_type_enabled(v87, v88);
      v90 = *(v0 + 160);
      if (v89)
      {
        v123 = v15;
        v91 = *(v0 + 144);
        v92 = *(v0 + 128);
        v93 = *(v0 + 112);
        v125 = *(v0 + 160);
        v94 = swift_slowAlloc();
        v117 = v0;
        v95 = swift_slowAlloc();
        v128 = v95;
        *v94 = 136315138;
        v120 = v93;
        v123(v91, v92, v93);
        v96 = sub_199DF9FBC();
        v98 = v97;
        v99 = v93;
        v100 = v127;
        v127(v92, v99);
        v101 = sub_199A9BE90(v96, v98, &v128);

        *(v94 + 4) = v101;
        _os_log_impl(&dword_199A75000, v87, v88, "FindMyLocateSession: Unknown friendship update type %s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95);
        v102 = v95;
        v0 = v117;
        MEMORY[0x19A8FA1A0](v102, -1, -1);
        MEMORY[0x19A8FA1A0](v94, -1, -1);

        v127(v125, v120);
      }

      else
      {
        v113 = *(v0 + 128);
        v114 = *(v0 + 112);

        v100 = v127;
        v127(v113, v114);
        v127(v90, v114);
      }

      goto LABEL_32;
    }

    v61 = *(v0 + 136);
    v63 = *(v0 + 72);
    v62 = *(v0 + 80);
    v64 = *(v0 + 56);
    v65 = *(v0 + 64);
    (*(*(v0 + 120) + 96))(v61, *(v0 + 112));
    (*(v65 + 32))(v62, v61, v64);
    v66 = *(v65 + 16);
    v66(v63, v62, v64);
    v67 = sub_199DF802C();
    v68 = sub_199DFA33C();
    v69 = os_log_type_enabled(v67, v68);
    v71 = *(v0 + 64);
    v70 = *(v0 + 72);
    v72 = *(v0 + 56);
    if (v69)
    {
      v73 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v128 = v119;
      *v73 = 136446466;
      *(v73 + 4) = sub_199A9BE90(0xD000000000000025, 0x8000000199E46D30, &v128);
      *(v73 + 12) = 2080;
      sub_199AF0510(&qword_1EAF73B30, MEMORY[0x1E699C8E0], MEMORY[0x1E699C8E8]);
      v74 = sub_199DFA96C();
      v116 = v68;
      v75 = v66;
      v77 = v76;
      v122 = *(v71 + 8);
      v122(v70, v72);
      v78 = sub_199A9BE90(v74, v77, &v128);
      v66 = v75;

      *(v73 + 14) = v78;
      _os_log_impl(&dword_199A75000, v67, v116, "%{public}s Removed friend: %s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8FA1A0](v119, -1, -1);
      MEMORY[0x19A8FA1A0](v73, -1, -1);
    }

    else
    {

      v122 = *(v71 + 8);
      v122(v70, v72);
    }

    v38 = (v0 + 160);
    v103 = *(v0 + 48) + *(v0 + 208);
    v104 = *v103;
    if (*v103)
    {
      v106 = *(v0 + 80);
      v105 = *(v0 + 88);
      v107 = *(v0 + 56);
      v108 = *(v103 + 8);
      sub_199A7A02C(0, &qword_1EAF73B28, off_1E74DEBC8);
      v66(v105, v106, v107);

      v109 = sub_199AA83C4(v105);
      v104(v109, 1);

      sub_199A9A5FC(v104, v108);
    }

    v86 = *(v0 + 80);
  }

  v122(v86, *(v0 + 56));
  v100 = v127;
LABEL_32:
  v100(*v38, *(v0 + 112));
  v110 = swift_task_alloc();
  *(v0 + 216) = v110;
  *v110 = v0;
  v110[1] = sub_199AED4D0;
  v111 = *(v0 + 168);
  v112 = *(v0 + 176);

  return MEMORY[0x1EEE6D9C8](v111, 0, 0, v112);
}

uint64_t sub_199AEE424(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_199AF0710;

  return sub_199AEC840(a1);
}

uint64_t sub_199AEE500()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_199AEE5F0;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v3, 0, 0, 0x6F44734974696E69, 0xEC0000002928656ELL, sub_199AF071C, v2, v4);
}

uint64_t sub_199AEE5F0()
{

  return MEMORY[0x1EEE6DFA0](sub_199AEE708, 0, 0);
}

uint64_t sub_199AEE708()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession__session);
  v0[5] = v2;

  if (v2)
  {
    v3 = OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_friendsUpdateTask;
    if (*(v1 + OBJC_IVAR____TtC10ContactsUI19FindMyLocateSession_friendsUpdateTask))
    {

      sub_199DFA1EC();
    }

    *(v1 + v3) = 0;

    v10 = swift_task_alloc();
    v0[6] = v10;
    *v10 = v0;
    v10[1] = sub_199AEE8FC;

    return MEMORY[0x1EEE04578]();
  }

  else
  {
    v4 = sub_199DF802C();
    v5 = sub_199DFA31C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_199A75000, v4, v5, "FindMyLocateSession: Missing FindMyLocate.Session!", v6, 2u);
      MEMORY[0x19A8FA1A0](v6, -1, -1);
    }

    sub_199AED14C();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_199AEE8FC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_199AEEAFC;
  }

  else
  {
    v2 = sub_199AEEA10;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_199AEEA10(uint64_t a1)
{
  v2 = sub_199DF802C();
  v3 = sub_199DFA33C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_199A75000, v2, v3, "FindMyLocateSession: Successfully stopUpdatingFriends", v4, 2u);
    MEMORY[0x19A8FA1A0](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_199AEEAFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_199AEECD4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_199AEED7C;

  return sub_199AEE4E0();
}

uint64_t sub_199AEED7C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_199DF716C();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id FindMyLocateSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindMyLocateSession(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199AEF058(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73AE8, &qword_199E3B3E8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_199AA7688;

  return sub_199AED1A0(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_199AEF188()
{
  result = qword_1EAF73AF8;
  if (!qword_1EAF73AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73AF8);
  }

  return result;
}

unint64_t sub_199AEF1E0()
{
  result = qword_1EAF73B00;
  if (!qword_1EAF73B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73B00);
  }

  return result;
}

unint64_t sub_199AEF238()
{
  result = qword_1EAF73B08;
  if (!qword_1EAF73B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73B08);
  }

  return result;
}

uint64_t sub_199AEF2C4(uint64_t a1)
{
  result = sub_199DF804C();
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

uint64_t dispatch thunk of FindMyLocateSession.startUpdatingFriends(initialUpdates:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x138);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_199AA7688;

  return v7(a1);
}

uint64_t dispatch thunk of FindMyLocateSession.stopUpdatingFriends()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x140);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_199AA7688;

  return v5();
}

uint64_t getEnumTagSinglePayload for CNFMLSessionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CNFMLSessionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_199AEF8E8()
{
  result = qword_1EAF73B10;
  if (!qword_1EAF73B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73B10);
  }

  return result;
}

uint64_t sub_199AEF93C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_199AA7314;

  return sub_199AEECD4(v2, v3);
}

unint64_t sub_199AEF9E8(uint64_t a1, uint64_t a2)
{
  sub_199DFAA7C();
  sub_199DF9FEC();
  v4 = sub_199DFAABC();

  return sub_199AEFA60(a1, a2, v4);
}

unint64_t sub_199AEFA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_199DFA99C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_199AEFB18(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_199AA7688;

  return v6();
}

uint64_t sub_199AEFC00()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_199AA7688;

  return sub_199AEFB18(v2, v3, v4);
}

uint64_t sub_199AEFCC0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_199AA7688;

  return v7();
}

uint64_t sub_199AEFDA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_199AA7688;

  return sub_199AEFCC0(a1, v4, v5, v6);
}

uint64_t sub_199AEFE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_199AE5C8C(a3, v23 - v10);
  v12 = sub_199DFA1BC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_199A79A04(v11, &qword_1EAF73A70, &qword_199E3B390);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_199DFA1AC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_199DFA12C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_199DF9FCC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_199A79A04(a3, &qword_1EAF73A70, &qword_199E3B390);

    return v21;
  }

LABEL_8:
  sub_199A79A04(a3, &qword_1EAF73A70, &qword_199E3B390);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_199AF0160(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_199AA7688;

  return sub_199AE4EF0(a1, v4);
}

uint64_t sub_199AF0218()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_199AA7688;

  return sub_199AEE424(v2, v4, v3);
}

uint64_t objectdestroy_7Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_199AF03A0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

unint64_t sub_199AF040C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73B50, &qword_199E3B840);
    v3 = sub_199DFA8BC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_199DF81AC();
      result = sub_199AEF9E8(v5, v6);
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

uint64_t sub_199AF0510(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_199AF0558(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_199AA7314;

  return sub_199AE8D10(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_199AF0634(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_199AA7688;

  return sub_199AE4EF0(a1, v4);
}

id sub_199AF0724(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView);
  if (result)
  {
    return [result setContentOffset_];
  }

  __break(1u);
  return result;
}

void sub_199AF074C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollableContentView);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_showShadow;
    v1[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_showShadow] = *(v0 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_showShadow);
    v3 = v1;
    v4 = sub_199AD9E00();
    v4[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hideShadow] = (v1[v2] & 1) == 0;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_199DF842C();
  }

  else
  {
    __break(1u);
  }
}

id sub_199AF0834()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewCell();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  [v0 bounds];
  v3 = OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView;
  result = *&v0[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  [result setContentSize_];
  [v0 bounds];
  result = *&v0[v3];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  [result contentOffset];
  v14 = -v13;
  v16.origin.x = v9;
  v16.origin.y = v10;
  v16.size.width = v11;
  v16.size.height = v12;
  v17 = CGRectOffset(v16, 0.0, v14);
  result = *&v0[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollableContentView];
  if (result)
  {
    return [result setFrame_];
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_199AF098C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewCell();
  objc_msgSendSuper2(&v6, sel_prepareForReuse);
  v1 = *&v0[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v1 setContentOffset_];
  v2 = OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollableContentView;
  v3 = *&v0[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollableContentView];
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v3 setUserInteractionEnabled_];
  v4 = *&v0[v2];
  if (v4)
  {
    v5 = v4;
    sub_199AD8984();

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_199AF0A78(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_maximumVerticalRevealFraction] = 0x3FF0000000000000;
  v4[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_showShadow] = 0;
  *&v4[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView] = 0;
  *&v4[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollableContentView] = 0;
  *&v4[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_defaultScrollAnimationDuration] = 0x3FD3333333333333;
  *&v4[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_maximumRevealProgressWhenRevealingDisallowed] = 0x3FD0000000000000;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewCell();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  sub_199AF0C94();

  return v9;
}

id sub_199AF0B90(void *a1)
{
  *&v1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_maximumVerticalRevealFraction] = 0x3FF0000000000000;
  v1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_showShadow] = 0;
  *&v1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView] = 0;
  *&v1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollableContentView] = 0;
  *&v1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_defaultScrollAnimationDuration] = 0x3FD3333333333333;
  *&v1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_maximumRevealProgressWhenRevealingDisallowed] = 0x3FD0000000000000;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewCell();
  v3 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    sub_199AF0C94();
  }

  return v4;
}

void sub_199AF0C94()
{
  [v0 bounds];
  v5 = [objc_allocWithZone(type metadata accessor for CNAvatarPosterPairView(0)) initWithFrame_];
  v6 = *&v0[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollableContentView];
  *&v0[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollableContentView] = v5;
  v7 = v5;

  [v0 bounds];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  [v12 setDecelerationRate_];
  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setContentInsetAdjustmentBehavior_];
  [v13 setShowsVerticalScrollIndicator_];
  [v13 setAlwaysBounceVertical_];
  [v13 setClipsToBounds_];
  [v13 setScrollsToTop_];
  [v13 setDelegate_];
  [v13 setHidden_];
  v14 = [v13 panGestureRecognizer];
  [v0 addGestureRecognizer_];

  v15 = OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView;
  v16 = *&v0[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView];
  *&v0[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView] = v13;
  v17 = v13;

  [v0 bounds];
  v20 = *&v0[v15];
  if (v20)
  {
    [v20 setContentSize_];
    v21 = v7;
    v22 = [v0 contentView];
    [v22 addSubview_];

    [v0 addSubview_];
    v23 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_199E38F10;
    v25 = [v0 leadingAnchor];
    v26 = [v17 leadingAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    *(v24 + 32) = v27;
    v28 = [v0 trailingAnchor];
    v29 = [v17 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor_];

    *(v24 + 40) = v30;
    v31 = [v0 topAnchor];
    v32 = [v17 topAnchor];
    v33 = [v31 constraintEqualToAnchor_];

    *(v24 + 48) = v33;
    v34 = [v0 bottomAnchor];
    v35 = [v17 bottomAnchor];

    v36 = [v34 constraintEqualToAnchor_];
    *(v24 + 56) = v36;
    sub_199AF1984();
    v37 = sub_199DFA0BC();

    [v23 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

void sub_199AF112C(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00, &unk_199E3B930);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollableContentView;
  v9 = *(v2 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollableContentView);
  if (v9)
  {
    v10 = v9;
    sub_199DF728C();
    v11 = sub_199DF729C();
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    v12 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_displaySessionUUID;
    swift_beginAccess();
    sub_199ADA6F0(v7, v10 + v12);
    swift_endAccess();

    v13 = *(v2 + v8);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel);
      v15 = *&v14[OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_avatarPosterPair];
      *&v14[OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_avatarPosterPair] = a1;
      v16 = v14;
      v17 = a1;

      v18 = *&v16[OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_contact];
      *&v16[OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_contact] = a2;
      v19 = a2;

      type metadata accessor for CNAvatarPosterPairViewModel();
      sub_199AF192C();
      sub_199DF83BC();
      sub_199DF83DC();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_199AF12E8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_199AF139C(void *a1)
{
  v2 = v1;
  [v1 bounds];
  v8 = OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView;
  v9 = *&v1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView];
  if (!v9)
  {
    __break(1u);
    goto LABEL_26;
  }

  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  [v9 contentOffset];
  v15 = -v14;
  v37.origin.x = v10;
  v37.origin.y = v11;
  v37.size.width = v12;
  v37.size.height = v13;
  v38 = CGRectOffset(v37, 0.0, v15);
  v16 = OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollableContentView;
  v17 = *&v1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollableContentView];
  if (!v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v17 setFrame_];
  v18 = *&v1[v8];
  if (!v18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v18 bounds];
  v20 = v19 * *&v1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_maximumVerticalRevealFraction];
  v21 = 0.0;
  if (v20 > 0.0)
  {
    v22 = *&v1[v8];
    if (!v22)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    [v22 contentOffset];
    v24 = v23 / v20;
    if (v23 / v20 <= 0.0)
    {
      v24 = 0.0;
    }

    v21 = 1.0;
    if (v24 <= 1.0)
    {
      v21 = v24;
    }
  }

  v25 = *&v1[v16];
  if (!v25)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = v25;
  [v26 setUserInteractionEnabled_];

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  if (v21 > 0.25)
  {
    sub_199B63700(v2);
    if ((v27 & 1) == 0)
    {
      if (![a1 isTracking])
      {
        goto LABEL_15;
      }

      v28 = objc_opt_self();
      v29 = swift_allocObject();
      *(v29 + 16) = v2;
      v35[4] = sub_199AF191C;
      v35[5] = v29;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 1107296256;
      v35[2] = sub_199AB45A0;
      v35[3] = &block_descriptor_6;
      v30 = _Block_copy(v35);
      v31 = v2;

      [v28 animateWithDuration:v30 animations:0.3];
      _Block_release(v30);
      v32 = *&v2[v8];
      if (v32)
      {
        if ([v32 isScrollEnabled])
        {
LABEL_23:
          v34 = sub_199B6467C();
          [v34 notificationOccurred_];
          swift_unknownObjectRelease();

          return;
        }

        v33 = *&v2[v8];
        if (v33)
        {
          [v33 setScrollEnabled_];
          goto LABEL_23;
        }

LABEL_31:
        __break(1u);
        return;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  sub_199B6A820(v2);
LABEL_15:

  swift_unknownObjectRelease();
}

id sub_199AF169C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView;
  result = *(a1 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView);
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = [result isScrollEnabled];
  if (!result)
  {
    return result;
  }

  result = *(a1 + v2);
  if (!result)
  {
    goto LABEL_13;
  }

  [result setScrollEnabled_];
  result = *(a1 + v2);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = [result contentOffset];
  if (v5 == 0.0 && v4 == 0.0)
  {
    return result;
  }

  result = *(a1 + v2);
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return [result setContentOffset:1 animated:{0.0, 0.0}];
}

uint64_t sub_199AF17C8(void *a1, uint64_t a2, double a3, double a4)
{
  [a1 bounds];
  v8 = v7;
  v9 = *(v4 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_maximumVerticalRevealFraction);
  result = swift_unknownObjectWeakLoadStrong();
  v11 = 0.0;
  if (result)
  {
    sub_199B63700(v4);
    v13 = v12;
    result = swift_unknownObjectRelease();
    if (v13)
    {
      if (fabs(a4) <= 0.05)
      {
        if (vabdd_f64(*(a2 + 8), v8 * v9) >= fabs(*(a2 + 8)))
        {
          v11 = 0.0;
        }

        else
        {
          v11 = v8 * v9;
        }
      }

      else if (a4 >= 0.0)
      {
        v11 = v8 * v9;
      }

      else
      {
        v11 = 0.0;
      }
    }
  }

  *(a2 + 8) = v11;
  return result;
}

unint64_t sub_199AF192C()
{
  result = qword_1EAF73610;
  if (!qword_1EAF73610)
  {
    type metadata accessor for CNAvatarPosterPairViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73610);
  }

  return result;
}

unint64_t sub_199AF1984()
{
  result = qword_1EAF71D18;
  if (!qword_1EAF71D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF71D18);
  }

  return result;
}

uint64_t static MonogramPosterFactory.wallpaper(forContact:)(void *a1)
{
  sub_199DF79FC();
  swift_allocObject();
  v2 = a1;
  sub_199DF79DC();
  v3 = sub_199DF79EC();

  return v3;
}

uint64_t sub_199AF1A98()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF86F10);
  __swift_project_value_buffer(v0, qword_1EAF86F10);
  return sub_199DF803C();
}

void sub_199AF1B28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73CB0, &qword_199E3BA70);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0, 0x1E69DD258);
  if (v11)
  {
  }

  else
  {
    sub_199DF7E4C();
    swift_allocObject();
    v12 = sub_199DF7E3C();
    sub_199DF7ABC();
    v13 = sub_199DF7AAC();

    v39 = v13;
    v40 = v12;
    sub_199DF777C();
    KeyPath = swift_getKeyPath();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73CB8, &qword_199E3BAA8) + 36)];
    *v16 = KeyPath;
    v16[1] = sub_199AF4DE8;
    v16[2] = v15;
    v17 = swift_getKeyPath();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = &v10[*(v2 + 36)];
    *v19 = v17;
    v19[1] = sub_199AF4E7C;
    v19[2] = v18;
    sub_199AF4EAC(v10, v7);
    v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73CC0, &qword_199E3BAE0));
    v21 = MEMORY[0x1E69E7D40];
    *&v20[*((*MEMORY[0x1E69E7D40] & *v20) + qword_1EAF86F28 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    sub_199AF4EAC(v7, v4);
    v22 = sub_199DF8DFC();
    sub_199A79A04(v7, &qword_1EAF73CB0, &qword_199E3BA70);
    *(v22 + *((*v21 & *v22) + qword_1EAF86F28 + 16) + 8) = &off_1F0CDFBC8;
    swift_unknownObjectWeakAssign();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73CC8, &qword_199E3BAE8);
    sub_199DF910C();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_199E37D40;
    v24 = v22;
    v25 = sub_199DF90FC();
    MEMORY[0x1EEE9AC00](v25);
    v41 = v23;
    sub_199AF4F1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73CD8, &qword_199E3BAF0);
    sub_199AF4F68(&unk_1EAF71C20, &unk_1EAF73CD8, &qword_199E3BAF0);
    sub_199DFA68C();
    sub_199DF8DCC();

    v26 = v24;
    v27 = [v26 view];
    if (v27)
    {
      v28 = v27;
      v29 = [objc_opt_self() quaternarySystemFillColor];
      [v28 setBackgroundColor_];

      v30 = [v26 view];
      if (v30)
      {
        v31 = v30;
        [v1 addSubview_];

        swift_beginAccess();
        v32 = v26;
        objc_setAssociatedObject(v1, &unk_1EAF73C12, v32, 1);
        swift_endAccess();

        swift_beginAccess();
        v33 = v40;

        objc_setAssociatedObject(v1, &unk_1EAF73C13, v33, 1);
        swift_endAccess();

        swift_beginAccess();
        v34 = v39;

        objc_setAssociatedObject(v1, &unk_1EAF73C14, v34, 1);
        swift_endAccess();

        v35 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
        v36 = [objc_allocWithZone(CNSharedProfileOnboardingController) initWithContactStore_];

        swift_beginAccess();
        v37 = v36;
        objc_setAssociatedObject(v1, &unk_1EAF73C15, v37, 1);
        swift_endAccess();

        sub_199AF2868();
        sub_199AF319C();

        sub_199A79A04(v10, &qword_1EAF73CB0, &qword_199E3BA70);
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

void sub_199AF21F8()
{
  v1 = v0;
  if (qword_1EAF71C40 != -1)
  {
    swift_once();
  }

  v2 = sub_199DF804C();
  __swift_project_value_buffer(v2, qword_1EAF86F10);
  v3 = sub_199DF802C();
  v4 = sub_199DFA33C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_199A75000, v3, v4, "Requested to reveal shared profile navigation bar palette", v5, 2u);
    MEMORY[0x19A8FA1A0](v5, -1, -1);
  }

  if (sub_199AF3648())
  {
    oslog = sub_199DF802C();
    v6 = sub_199DFA33C();
    if (!os_log_type_enabled(oslog, v6))
    {
LABEL_9:

      return;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_199A75000, oslog, v6, "Requested to reveal shared profile navigation bar palette, but we are already visible", v7, 2u);
    v8 = v7;
LABEL_8:
    MEMORY[0x19A8FA1A0](v8, -1, -1);
    goto LABEL_9;
  }

  v9 = sub_199AF3818();
  if (!v9)
  {
    v10 = v1;
    oslog = sub_199DF802C();
    v11 = sub_199DFA31C();

    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_9;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    *(v12 + 4) = v10;
    *v13 = v10;
    *(v12 + 12) = 2112;
    v14 = [v10 superview];
    *(v12 + 14) = v14;
    v13[1] = v14;
    _os_log_impl(&dword_199A75000, oslog, v11, "Could not find parent navigation controller to reveal palette: %@ superview: %@", v12, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73A90, &unk_199E3A0B0);
    swift_arrayDestroy();
    MEMORY[0x19A8FA1A0](v13, -1, -1);
    v8 = v12;
    goto LABEL_8;
  }

  sub_199AF3A20(2u, 1);
}

uint64_t sub_199AF24A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  v10 = *a1;
  v9 = a1[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;

  return a7(a6, v11);
}

void sub_199AF2514(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_199AF2570()
{
  v1 = v0;
  if (qword_1EAF71C40 != -1)
  {
    swift_once();
  }

  v2 = sub_199DF804C();
  __swift_project_value_buffer(v2, qword_1EAF86F10);
  v3 = sub_199DF802C();
  v4 = sub_199DFA33C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_199A75000, v3, v4, "Requested to show the legacy SNaP editor from shared profile navigation bar palette", v5, 2u);
    MEMORY[0x19A8FA1A0](v5, -1, -1);
  }

  v6 = sub_199AF3818();
  if (v6)
  {
    v15 = v6;
    v7 = [v6 topViewController];
    if (!v7)
    {
      v7 = v15;
    }

    v8 = sub_199A7A0B4(&unk_1EAF73C15, &qword_1EAF73CE8, off_1E74DEE10);
    if (v8)
    {
      v9 = v8;
      [v8 startOnboardingOrEditForMode:1 fromViewController:v7];
    }
  }

  else
  {
    v10 = v1;
    v15 = sub_199DF802C();
    v11 = sub_199DFA31C();

    if (os_log_type_enabled(v15, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412546;
      *(v12 + 4) = v10;
      *v13 = v10;
      *(v12 + 12) = 2112;
      v14 = [v10 superview];
      *(v12 + 14) = v14;
      v13[1] = v14;
      _os_log_impl(&dword_199A75000, v15, v11, "Could not find parent navigation controller for palette: %@ superview: %@", v12, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73A90, &unk_199E3A0B0);
      swift_arrayDestroy();
      MEMORY[0x19A8FA1A0](v13, -1, -1);
      MEMORY[0x19A8FA1A0](v12, -1, -1);
    }
  }
}