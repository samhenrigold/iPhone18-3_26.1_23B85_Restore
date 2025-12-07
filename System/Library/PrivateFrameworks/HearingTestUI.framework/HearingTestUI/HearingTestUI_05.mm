void sub_20CDF17AC()
{
  ObjectType = swift_getObjectType();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for HTUIResultsViewController(0);
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v2 = [v0 headerView];
  [v2 setTitleStyle_];

  sub_20CDF27C8();
  sub_20CDF29AC();
  sub_20CDF2B7C();
  v3 = [v0 contentView];
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  v5 = v0;
}

id sub_20CDF18AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram);
  result = [objc_allocWithZone(MEMORY[0x277CCDAC0]) initWithHealthStore_];
  v8 = *(a1 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel + 8);
  if (v8)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a2;

    v12 = v6;
    v13 = v9;
    sub_20CDD0754(v12, v13, 0xD000000000000010, 0x800000020CE203B0, v26);
    v14 = v12;
    sub_20CD86178(v14, &v25);
    v15 = _s13HearingTestUI29ClassificationDescriptionViewV5ModelV8headline9audiogram14recommendationSSSo17HKAudiogramSampleC_AA14RecommendationOtFZ_0(v14, &v25);
    v17 = v16;

    KeyPath = swift_getKeyPath();
    v19 = type metadata accessor for ClassificationInfoView(0);
    *(a3 + *(v19 + 24)) = KeyPath;
    v20 = MEMORY[0x277CDF458];
    sub_20CDF61A8(0, &qword_27C812430, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v21 = v26[5];
    *(a3 + 64) = v26[4];
    *(a3 + 80) = v21;
    *(a3 + 96) = v26[6];
    v22 = v26[1];
    *a3 = v26[0];
    *(a3 + 16) = v22;
    v23 = v26[3];
    *(a3 + 32) = v26[2];
    *(a3 + 48) = v23;
    *(a3 + 112) = v15;
    *(a3 + 120) = v17;
    *(a3 + 128) = 0xD000000000000010;
    *(a3 + 136) = 0x800000020CE203B0;
    *(a3 + 144) = sub_20CDF6148;
    *(a3 + 152) = v11;
    *(a3 + 160) = v8;
    v24 = *(v19 + 20);
    *(a3 + v24) = swift_getKeyPath();
    sub_20CDF61A8(0, &qword_27C812390, MEMORY[0x277CDFA28], v20);

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20CDF1B18(uint64_t a1, uint64_t a2)
{
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817768);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136446210;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] User tapped to show detailed results.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_20CDF3988();
  }
}

uint64_t sub_20CDF1CB4(char a1)
{
  sub_20CDF61A8(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4 - 8];
  v6 = type metadata accessor for HTUIResultsViewController(0);
  v14.receiver = v1;
  v14.super_class = v6;
  objc_msgSendSuper2(&v14, sel_viewDidAppear_, a1 & 1);
  sub_20CE124D4();
  v7 = sub_20CE124E4();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_stepStartTime;
  swift_beginAccess();
  sub_20CD83094(v5, &v1[v8]);
  result = swift_endAccess();
  if (*&v1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager])
  {
    v10 = *&v1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager + 8];
    ObjectType = swift_getObjectType();
    v13[0] = 0;
    return (*(v10 + 48))(v13, v1, &protocol witness table for HTUIResultsViewController, ObjectType, v10);
  }

  return result;
}

uint64_t sub_20CDF1F0C(char a1, int a2)
{
  v3 = v2;
  sub_20CDF61A8(0, &qword_27C813520, type metadata accessor for ClassificationHighlightView.Model, MEMORY[0x277D84220]);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v60 - v7;
  v64 = type metadata accessor for ClassificationHighlightView.Model(0);
  v8 = *(v64 - 8);
  v9 = MEMORY[0x28223BE20](v64);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v60 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v60 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v18);
  v62 = &v60 - v21;
  v22 = *(v3 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_recommendation);
  v23 = *(v3 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_isHearingAssistAvailable);
  v61 = [*(v3 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram) isAverageSensitivityUpperClampedForAnySide];
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = MEMORY[0x277D84F90];
  if (v22 <= 4)
  {
    if ((v22 - 1) >= 4)
    {
      sub_20CDF61A8(0, &qword_27C812360, type metadata accessor for ClassificationHighlightView.Model, MEMORY[0x277D84560]);
      v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v17 = swift_allocObject();
      v60 = xmmword_20CE16370;
      *(v17 + 1) = xmmword_20CE16370;
      v50 = v65;

      sub_20CDEE718(sub_20CDF61A0, v50, &v17[v22]);
      sub_20CDE511C(v17);
      v28 = v63;
      if (v23)
      {
        v51 = swift_allocObject();
        *(v51 + 16) = v60;
        if (qword_27C811DA0 != -1)
        {
          swift_once();
        }

        v52 = __swift_project_value_buffer(v64, qword_27C817968);
        sub_20CDAE024(v52, v51 + v22);
        sub_20CDE511C(v51);
        v29 = 128;
        LOBYTE(v30) = 2;
      }

      else
      {
        v29 = 128;
        LOBYTE(v30) = 3;
      }
    }

    else
    {
      LODWORD(v60) = a2;
      v24 = v65;

      sub_20CDEE8D0(sub_20CDF61A0, v24, v20);
      v25 = sub_20CD896DC(0, 1, 1, MEMORY[0x277D84F90]);
      v27 = v25[2];
      v26 = v25[3];
      v28 = v3;
      if (v27 >= v26 >> 1)
      {
        v25 = sub_20CD896DC((v26 > 1), v27 + 1, 1, v25);
      }

      v25[2] = v27 + 1;
      v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v3 = *(v8 + 72);
      sub_20CDF620C(v20, v25 + v22 + v3 * v27);
      v66 = v25;
      if (v23)
      {
        v29 = 64;
        if (qword_27C811DA8 != -1)
        {
          goto LABEL_48;
        }

        while (1)
        {
          LOBYTE(v30) = v60 & 1;
          v29 = v29 & 0xFFFFFFFE | v60 & 1;
          v31 = __swift_project_value_buffer(v64, qword_27C817980);
          sub_20CDAE024(v31, v17);
          v33 = v25[2];
          v32 = v25[3];
          if (v33 >= v32 >> 1)
          {
            v25 = sub_20CD896DC((v32 > 1), v33 + 1, 1, v25);
          }

          v34 = v61;
          v25[2] = v33 + 1;
          sub_20CDF620C(v17, v25 + v22 + v33 * v3);
          v66 = v25;
          v3 = v28;
          v35 = v62;
          v28 = v63;
          if (!v34)
          {
            goto LABEL_34;
          }

LABEL_37:
          if (qword_27C811DC0 != -1)
          {
            swift_once();
          }

          v53 = __swift_project_value_buffer(v64, qword_27C8179C8);
          sub_20CDAE024(v53, v35);
          v25 = v66;
          v54 = v66[2];
          v55 = v54 != 0;
          if (v54 < v55)
          {
            __break(1u);
          }

          else
          {
            sub_20CDF620C(v35, v28);
            v56 = v25[2];
            if (v56 >= v55)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v56 >= v25[3] >> 1)
              {
                v25 = sub_20CD896DC(isUniquelyReferenced_nonNull_native, v56 + 1, 1, v25);
                v66 = v25;
              }

              sub_20CDF5308(v55, v55, 1, v28);

              goto LABEL_45;
            }
          }

          __break(1u);
LABEL_48:
          swift_once();
        }
      }

      v29 = 128;
      LOBYTE(v30) = 3;
      v3 = v28;
      v28 = v63;
    }

    v35 = v62;
    if (v61)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v22 == 5)
  {
    *&v60 = v3;
    v36 = v65;

    sub_20CDEE8D0(sub_20CDF61A0, v36, v14);
    v17 = sub_20CD896DC(0, 1, 1, MEMORY[0x277D84F90]);
    v38 = *(v17 + 2);
    v37 = *(v17 + 3);
    if (v38 >= v37 >> 1)
    {
      v17 = sub_20CD896DC((v37 > 1), v38 + 1, 1, v17);
    }

    *(v17 + 2) = v38 + 1;
    v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v39 = *(v8 + 72);
    sub_20CDF620C(v14, &v17[v22 + v39 * v38]);
    v66 = v17;
    if (v23)
    {
      if (qword_27C811DB0 != -1)
      {
        swift_once();
      }

      v30 = a1 & 1;
      v40 = __swift_project_value_buffer(v64, qword_27C817998);
      sub_20CDAE024(v40, v11);
      v42 = *(v17 + 2);
      v41 = *(v17 + 3);
      if (v42 >= v41 >> 1)
      {
        v17 = sub_20CD896DC((v41 > 1), v42 + 1, 1, v17);
      }

      v43 = v61;
      v28 = v63;
      *(v17 + 2) = v42 + 1;
      sub_20CDF620C(v11, &v17[v22 + v42 * v39]);
      v66 = v17;
      v29 = v30;
      v3 = v60;
      v35 = v62;
      if (v43)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v29 = 128;
    LOBYTE(v30) = 3;
    v3 = v60;
  }

  else
  {
    if (v23)
    {
      LOBYTE(v30) = 2;
    }

    else
    {
      LOBYTE(v30) = 3;
    }

    sub_20CDF61A8(0, &qword_27C812360, type metadata accessor for ClassificationHighlightView.Model, MEMORY[0x277D84560]);
    v44 = *(v8 + 72);
    v45 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_20CE16360;
    v47 = v46 + v45;
    v48 = v65;

    sub_20CDEE8D0(sub_20CDF61A0, v48, v47);
    if (qword_27C811DB8 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v64, qword_27C8179B0);
    sub_20CDAE024(v49, v47 + v44);
    sub_20CDE511C(v46);
    v29 = 128;
  }

  v35 = v62;
  v28 = v63;
  if (v61)
  {
    goto LABEL_37;
  }

LABEL_34:

  v25 = v66;
LABEL_45:
  v58 = (v3 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel);
  *v58 = v29 & 0xFFFF00FF | (v30 << 8);
  v58[1] = v25;
}

void sub_20CDF2774(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_20CDF48B0();
  }
}

void sub_20CDF27C8()
{
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton_];

  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_20CE13914();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    sub_20CE11910();
    v6 = v5;

    if (v6)
    {
      v7 = [v0 navigationItem];
      sub_20CDF6150(0, &qword_27C812230, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_20CE183B0;
      v12[3] = type metadata accessor for HTUIResultsViewController(0);
      v12[0] = v0;
      v9 = v0;
      v10 = sub_20CDEA770(v12, sel_invokeTapToRadar);
      sub_20CDF5F58(v12, &qword_27C812D30, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_20CDF6150);
      *(v8 + 32) = v10;
      sub_20CD83128(0, &qword_27C812220, 0x277D751E0);
      v11 = sub_20CE13AA4();

      [v7 setRightBarButtonItems_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDF29AC()
{
  v1 = [objc_opt_self() boldButton];
  sub_20CDF2A64(v1, v0);
  v2 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton;
  v3 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton];
  *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton] = v1;

  sub_20CDF2D44();
  v4 = [v0 buttonTray];
  if (*&v0[v2])
  {
    v5 = v4;
    [v4 addButton_];
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDF2A64(void *a1, uint64_t a2)
{
  v2 = a2 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel;
  if (!*(a2 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel + 8))
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_20CD85C18(*v2);
  v5 = sub_20CE13914();

  [a1 setAccessibilityIdentifier_];

  if (!*(v2 + 8))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [a1 addTarget:a2 action:*off_277DAD048[*v2 >> 6] forControlEvents:64];
  if (!*(v2 + 8))
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_20CD85A68(*v2);
  v6 = sub_20CE13914();

  [a1 setTitle:v6 forState:0];
}

void sub_20CDF2B7C()
{
  if (*&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel + 8])
  {
    v1 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel];
    if (BYTE1(v1) != 3)
    {
      v2 = v1 >> 8;
      v3 = BYTE1(v1);
      v4 = [objc_opt_self() linkButton];
      if (v3 >= 2)
      {
        v5 = &selRef_didTapLearnMoreAboutAid;
      }

      else
      {
        v5 = &selRef_didTapDone;
      }

      v6 = sub_20CE13914();

      [v4 setAccessibilityIdentifier_];

      [v4 addTarget:v0 action:*v5 forControlEvents:64];
      sub_20CD85DEC(v2);
      v7 = sub_20CE13914();

      [v4 setTitle:v7 forState:0];

      v8 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_secondaryButton];
      *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_secondaryButton] = v4;
      v9 = v4;

      v10 = [v0 buttonTray];
      [v10 addButton_];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CDF2D44()
{
  ObjectType = swift_getObjectType();
  v39 = MEMORY[0x277CC9E70];
  v38 = MEMORY[0x277D83D88];
  sub_20CDF61A8(0, &qword_27C812800, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = &v32 - v2;
  sub_20CDF5BBC(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDF5CB4(0);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  MEMORY[0x28223BE20](v8);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDF5E00(0);
  v12 = *(v11 - 8);
  v40 = v11;
  v41 = v12;
  MEMORY[0x28223BE20](v11);
  v34 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_hmServiceClient);
  v43 = *(v14 + 16);
  v15 = MEMORY[0x277CBCE30];
  sub_20CDF5D74(0, &qword_27C8131A8, MEMORY[0x277CBCE30]);
  sub_20CDF5C70(&qword_27C8134C8, &qword_27C8131A8, v15, MEMORY[0x277CBCE48]);
  sub_20CDF5ECC();
  sub_20CE12E74();
  sub_20CDF6098(&qword_27C813500, sub_20CDF5BBC, MEMORY[0x277CBCBE0]);
  v16 = sub_20CE12E34();
  v17 = *(v5 + 8);
  v17(v7, v4);
  v43 = v16;
  v44 = *(v14 + 24);
  sub_20CE12E74();
  v18 = sub_20CE12E34();
  v17(v7, v4);
  v44 = v18;
  v19 = MEMORY[0x277CBCD88];
  sub_20CDF5D74(0, &qword_27C8134D8, MEMORY[0x277CBCD88]);
  sub_20CDF5C70(&qword_27C8134E0, &qword_27C8134D8, v19, MEMORY[0x277CBCD90]);
  v20 = v33;
  sub_20CE12D54();
  v21 = [objc_opt_self() mainRunLoop];
  v43 = v21;
  v22 = sub_20CE13F34();
  v23 = v35;
  (*(*(v22 - 8) + 56))(v35, 1, 1, v22);
  sub_20CD83128(0, &qword_27C812818, 0x277CBEB88);
  sub_20CDF6098(&qword_27C8134F0, sub_20CDF5CB4, MEMORY[0x277CBCAF0]);
  sub_20CDA33E0();
  v24 = v34;
  v25 = v36;
  sub_20CE12E64();
  sub_20CDF5F58(v23, &qword_27C812800, v39, v38, sub_20CDF61A8);

  (*(v37 + 8))(v20, v25);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v28 = ObjectType;
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_20CDF5FB8;
  *(v29 + 24) = v27;
  sub_20CDF6098(&qword_27C813508, sub_20CDF5E00, MEMORY[0x277CBCD60]);
  v30 = v40;
  sub_20CE12E84();

  (*(v41 + 8))(v24, v30);
  swift_beginAccess();
  sub_20CE12DB4();
  swift_endAccess();
}

void sub_20CDF33A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v7 = Strong;
  v8 = *(Strong + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID);

  v10 = v8(v9);
  v12 = v11;

  if (!v12)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v28 = sub_20CE12CB4();
    __swift_project_value_buffer(v28, qword_27C817780);
    v20 = sub_20CE12C94();
    v21 = sub_20CE13CB4();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_26;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41 = v23;
    *v22 = 136446210;
    v29 = sub_20CE14414();
    v31 = sub_20CD96DCC(v29, v30, &v41);

    *(v22 + 4) = v31;
    v27 = "[%{public}s] Aborting primary button title update as deviceAddress is nil.";
    goto LABEL_25;
  }

  if (*(a1 + 16) && (v13 = sub_20CD89A48(v10, v12), (v14 & 1) != 0))
  {
    v15 = *(*(a1 + 56) + v13);
    if (!*(a2 + 16))
    {
LABEL_15:
      v18 = 2;
      if (v15 == 2)
      {
        goto LABEL_16;
      }

LABEL_13:
      if (v18 == 2)
      {
        LOBYTE(v18) = 0;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v15 = 2;
    if (!*(a2 + 16))
    {
      goto LABEL_15;
    }
  }

  v16 = sub_20CD89A48(v10, v12);
  if ((v17 & 1) == 0)
  {
    goto LABEL_15;
  }

  v18 = *(*(a2 + 56) + v16);
  if (v15 != 2)
  {
    goto LABEL_13;
  }

LABEL_16:
  if (v18 == 2)
  {

    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v19 = sub_20CE12CB4();
    __swift_project_value_buffer(v19, qword_27C817780);
    v20 = sub_20CE12C94();
    v21 = sub_20CE13CB4();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_26;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41 = v23;
    *v22 = 136446210;
    v24 = sub_20CE14414();
    v26 = sub_20CD96DCC(v24, v25, &v41);

    *(v22 + 4) = v26;
    v27 = "[%{public}s] Aborting primary button title update as we don't know its Hearing Aid nor its Media Assist status.";
LABEL_25:
    _os_log_impl(&dword_20CD70000, v20, v21, v27, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x20F314110](v23, -1, -1);
    MEMORY[0x20F314110](v22, -1, -1);
LABEL_26:

    return;
  }

  LOBYTE(v15) = 0;
LABEL_28:
  sub_20CDF1F0C(v15 & 1, v18 & 1);
  v32 = *&v7[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton];
  if (!v32)
  {
    __break(1u);
    goto LABEL_38;
  }

  v33 = &v7[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel];
  if (!*&v7[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel + 8])
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  v34 = *v33;
  v35 = v32;
  sub_20CD85A68(v34);
  v36 = sub_20CE13914();

  [v35 setTitle:v36 forState:0];

  v37 = *&v7[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_secondaryButton];
  if (!v37)
  {

    return;
  }

  if (!*(v33 + 1))
  {
    goto LABEL_39;
  }

  v38 = v33[1];
  v39 = v37;

  if (v38 == 3)
  {
    v40 = 0;
  }

  else
  {
    sub_20CD85DEC(v38);
    v40 = sub_20CE13914();
  }

  [v39 setTitle:v40 forState:0];
}

void sub_20CDF3988()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager])
  {
    v3 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager + 8];
    v4 = swift_getObjectType();
    LOBYTE(aBlock[0]) = 10;
    (*(v3 + 48))(aBlock, v0, &protocol witness table for HTUIResultsViewController, v4, v3);
  }

  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v5 = sub_20CE12CB4();
  __swift_project_value_buffer(v5, qword_27C817768);
  v6 = sub_20CE12C94();
  v7 = sub_20CE13CD4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446466;
    v10 = sub_20CE14414();
    v12 = sub_20CD96DCC(v10, v11, aBlock);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    type metadata accessor for HearingTestDetailedResultsViewController();
    sub_20CDF5B70(0, &qword_27C8134B8, type metadata accessor for HearingTestDetailedResultsViewController);
    v13 = sub_20CE13974();
    v15 = sub_20CD96DCC(v13, v14, aBlock);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_20CD70000, v6, v7, "[%{public}s] About to present %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v9, -1, -1);
    MEMORY[0x20F314110](v8, -1, -1);
  }

  v16 = *&v1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram];
  v17 = *&v1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_healthStore];
  v18 = objc_allocWithZone(type metadata accessor for HearingTestDetailedResultsViewController());
  v19 = v16;
  v20 = v17;
  v21 = sub_20CDCD9C8(v19, v20);

  v22 = [objc_allocWithZone(MEMORY[0x277D12970]) initWithRootViewController_];
  [v22 setModalPresentationStyle_];
  v23 = swift_allocObject();
  *(v23 + 16) = ObjectType;
  aBlock[4] = sub_20CDF5B50;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = &block_descriptor_9;
  v24 = _Block_copy(aBlock);

  [v1 presentViewController:v22 animated:1 completion:v24];
  _Block_release(v24);
}

void sub_20CDF3CD8(uint64_t a1)
{
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v1 = sub_20CE12CB4();
  __swift_project_value_buffer(v1, qword_27C817768);
  oslog = sub_20CE12C94();
  v2 = sub_20CE13CD4();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136446466;
    v5 = sub_20CE14414();
    v7 = sub_20CD96DCC(v5, v6, &v12);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    type metadata accessor for HearingTestDetailedResultsViewController();
    sub_20CDF5B70(0, &qword_27C8134B8, type metadata accessor for HearingTestDetailedResultsViewController);
    v8 = sub_20CE13974();
    v10 = sub_20CD96DCC(v8, v9, &v12);

    *(v3 + 14) = v10;
    _os_log_impl(&dword_20CD70000, oslog, v2, "[%{public}s] Completed the presentation of %s.", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v4, -1, -1);
    MEMORY[0x20F314110](v3, -1, -1);
  }

  else
  {
  }
}

void sub_20CDF3ED8(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*&a1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager])
  {
    v5 = *&a1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager + 8];
    ObjectType = swift_getObjectType();
    v9 = a4;
    (*(v5 + 48))(&v9, a1, &protocol witness table for HTUIResultsViewController, ObjectType, v5);
  }

  else
  {
    v7 = a1;
  }

  sub_20CDF4000();
}

void sub_20CDF4000()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID];

  v2(v3);
  v5 = v4;

  if (!v5)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v12 = sub_20CE12CB4();
    __swift_project_value_buffer(v12, qword_27C817780);
    v13 = sub_20CE12C94();
    v14 = sub_20CE13CB4();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_14;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446466;
    v17 = sub_20CE14414();
    v19 = sub_20CD96DCC(v17, v18, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_20CD96DCC(0xD000000000000017, 0x800000020CE20360, &v26);
    v20 = "[%{public}s] %s could not fetch a device's bluetooth UUID.";
    goto LABEL_13;
  }

  v6 = *&v1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram];
  v7 = objc_allocWithZone(MEMORY[0x277D12C18]);
  v8 = v6;
  v9 = sub_20CE13914();

  v25 = [v7 initWithDeviceAddress:v9 withAudiogramSample:v8];

  if (v25)
  {
    v10 = [v1 navigationController];
    if (v10)
    {
      v11 = v10;
      [v10 pushViewController:v25 animated:1];
    }

    else
    {
      [v1 presentViewController:v25 animated:1 completion:0];
    }

    return;
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v21 = sub_20CE12CB4();
  __swift_project_value_buffer(v21, qword_27C817780);
  v13 = sub_20CE12C94();
  v14 = sub_20CE13CB4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446466;
    v22 = sub_20CE14414();
    v24 = sub_20CD96DCC(v22, v23, &v26);

    *(v15 + 4) = v24;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_20CD96DCC(0xD000000000000017, 0x800000020CE20360, &v26);
    v20 = "[%{public}s] %s could not create a HMHearingAidEnrollmentViewController.";
LABEL_13:
    _os_log_impl(&dword_20CD70000, v13, v14, v20, v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v16, -1, -1);
    MEMORY[0x20F314110](v15, -1, -1);
  }

LABEL_14:

  sub_20CDF49DC();
}

void sub_20CDF43D0()
{
  swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager])
  {
    v1 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager + 8];
    ObjectType = swift_getObjectType();
    LOBYTE(v26) = 12;
    (*(v1 + 48))(&v26, v0, &protocol witness table for HTUIResultsViewController, ObjectType, v1);
  }

  v3 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID];

  v3(v4);
  v6 = v5;

  if (!v6)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v12 = sub_20CE12CB4();
    __swift_project_value_buffer(v12, qword_27C817780);
    v13 = sub_20CE12C94();
    v14 = sub_20CE13CB4();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_16;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446466;
    v17 = sub_20CE14414();
    v19 = sub_20CD96DCC(v17, v18, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_20CD96DCC(0xD000000000000018, 0x800000020CE20340, &v26);
    v20 = "[%{public}s] %s could not fetch a device's bluetooth UUID.";
    goto LABEL_15;
  }

  v7 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram];
  objc_allocWithZone(sub_20CE12B74());
  v8 = v7;
  v9 = sub_20CE12B64();
  if (v9)
  {
    v25 = v9;
    v10 = [v0 navigationController];
    if (v10)
    {
      v11 = v10;
      [v10 pushViewController:v25 animated:1];
    }

    else
    {
      [v0 presentViewController:v25 animated:1 completion:0];
    }

    return;
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v21 = sub_20CE12CB4();
  __swift_project_value_buffer(v21, qword_27C817780);
  v13 = sub_20CE12C94();
  v14 = sub_20CE13CB4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446466;
    v22 = sub_20CE14414();
    v24 = sub_20CD96DCC(v22, v23, &v26);

    *(v15 + 4) = v24;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_20CD96DCC(0xD000000000000018, 0x800000020CE20340, &v26);
    v20 = "[%{public}s] %s could not create a HMMediaAssistEnrollmentViewController.";
LABEL_15:
    _os_log_impl(&dword_20CD70000, v13, v14, v20, v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v16, -1, -1);
    MEMORY[0x20F314110](v15, -1, -1);
  }

LABEL_16:

  sub_20CDF4B14();
}

void sub_20CDF47E4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_20CDF48B0()
{
  v1 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_articlePresenter + 24];
  v2 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_articlePresenter + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_articlePresenter], v1);
  v8[3] = type metadata accessor for HTUIResultsViewController(0);
  v8[0] = v0;
  v3 = *(v2 + 8);
  v4 = v0;
  v3(v8, v1, v2);
  result = sub_20CDF5F58(v8, &qword_27C812D30, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_20CDF6150);
  if (*&v4[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager])
  {
    v6 = *&v4[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager + 8];
    ObjectType = swift_getObjectType();
    LOBYTE(v8[0]) = 11;
    return (*(v6 + 48))(v8, v4, &protocol witness table for HTUIResultsViewController, ObjectType, v6);
  }

  return result;
}

uint64_t sub_20CDF49DC()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v0 = sub_20CE12354();
  v2 = v1;
  v3 = sub_20CE12354();
  sub_20CDF4C4C(v0, v2, v3, v4);
}

uint64_t sub_20CDF4B14()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v0 = sub_20CE12354();
  v2 = v1;
  v3 = sub_20CE12354();
  sub_20CDF4C4C(v0, v2, v3, v4);
}

void sub_20CDF4C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20CE13914();
  v6 = sub_20CE13914();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v8 = sub_20CE13914();

  v9 = [objc_opt_self() actionWithTitle:v8 style:0 handler:{0, 0xE000000000000000}];

  [v7 addAction_];
  [v4 presentViewController:v7 animated:1 completion:0];
}

id HTUIResultsViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20CE13914();

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

  v13 = sub_20CE13914();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20CE13914();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id HTUIResultsViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20CE13914();

  if (a4)
  {
    v12 = sub_20CE13914();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

uint64_t sub_20CDF4FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id HTUIResultsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HTUIResultsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CDF5240(uint64_t a1)
{
  v2 = sub_20CE12EB4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20CE13024();
}

unint64_t sub_20CDF5308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for ClassificationHighlightView.Model(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_20CDF5F58(a4, &unk_27C813520, type metadata accessor for ClassificationHighlightView.Model, MEMORY[0x277D84220], sub_20CDF61A8);
  }

  if (v17 < 1)
  {
    return sub_20CDF5F58(a4, &unk_27C813520, type metadata accessor for ClassificationHighlightView.Model, MEMORY[0x277D84220], sub_20CDF61A8);
  }

  result = sub_20CDAE024(a4, v15);
  if (v12 >= v17)
  {
    return sub_20CDF5F58(a4, &unk_27C813520, type metadata accessor for ClassificationHighlightView.Model, MEMORY[0x277D84220], sub_20CDF61A8);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_20CDF54B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20CDF6270(0, &qword_27C812368, MEMORY[0x277D84460]);
    v3 = sub_20CE14204();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_20CD89A48(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20CDF56A4(uint64_t a1, void (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    a2(0);
    v10 = sub_20CE14204();
    v11 = a1 + 32;

    while (1)
    {
      sub_20CDF5AE4(v11, &v18, a3, a4);
      v12 = v18;
      result = a5(v18);
      if (v14)
      {
        break;
      }

      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v10[6] + 8 * result) = v12;
      result = sub_20CD8A9E8(&v19, (v10[7] + 32 * result));
      v15 = v10[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v10[2] = v17;
      v11 += 40;
      if (!--v5)
      {

        return v10;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20CDF57C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20CD8ABA4(0);
    v3 = sub_20CE14204();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_20CD89A48(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_20CDF58CC(uint64_t a1)
{
  sub_20CDF61A8(319, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20CDF5A44(uint64_t a1)
{
  if (!qword_27C8134A8)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    sub_20CDF6098(&qword_27C811FD8, type metadata accessor for OpenExternalURLOptionsKey, &unk_20CE162F0);
    v1 = sub_20CE14214();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8134A8);
    }
  }
}

uint64_t sub_20CDF5AE4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_20CDF60E0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_20CDF5B70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_20CDF5BBC(uint64_t a1)
{
  if (!qword_27C8134C0)
  {
    v1 = MEMORY[0x277CBCE30];
    sub_20CDF5D74(255, &qword_27C8131A8, MEMORY[0x277CBCE30]);
    sub_20CDF5C70(&qword_27C8134C8, &qword_27C8131A8, v1, MEMORY[0x277CBCE48]);
    v2 = sub_20CE12D64();
    if (!v3)
    {
      atomic_store(v2, &qword_27C8134C0);
    }
  }
}

uint64_t sub_20CDF5C70(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_20CDF5D74(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CDF5CB4(uint64_t a1)
{
  if (!qword_27C8134D0)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_20CDF5D74(255, &qword_27C8134D8, MEMORY[0x277CBCD88]);
    sub_20CDF5C70(&qword_27C8134E0, &qword_27C8134D8, v1, MEMORY[0x277CBCD90]);
    v2 = sub_20CE12D44();
    if (!v3)
    {
      atomic_store(v2, &qword_27C8134D0);
    }
  }
}

void sub_20CDF5D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_20CDF6270(255, &qword_27C8131B0, MEMORY[0x277D834F8]);
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_20CDF5E00(uint64_t a1)
{
  if (!qword_27C8134E8)
  {
    sub_20CDF5CB4(255);
    sub_20CD83128(255, &qword_27C812818, 0x277CBEB88);
    sub_20CDF6098(&qword_27C8134F0, sub_20CDF5CB4, MEMORY[0x277CBCAF0]);
    sub_20CDA33E0();
    v1 = sub_20CE12D94();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8134E8);
    }
  }
}

unint64_t sub_20CDF5ECC()
{
  result = qword_27C8134F8;
  if (!qword_27C8134F8)
  {
    sub_20CDF6270(255, &qword_27C8131B0, MEMORY[0x277D834F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8134F8);
  }

  return result;
}

uint64_t sub_20CDF5F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_20CDF5FF8(uint64_t a1)
{
  if (!qword_27C813510)
  {
    type metadata accessor for VFXWorldLoaderOption(255);
    sub_20CDF6098(&qword_27C811FB8, type metadata accessor for VFXWorldLoaderOption, &unk_20CE16268);
    v1 = sub_20CE14214();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813510);
    }
  }
}

uint64_t sub_20CDF6098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20CDF60E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_20CDF6150(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_20CDF61A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CDF620C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationHighlightView.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20CDF6270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0], MEMORY[0x277D839B0], MEMORY[0x277D837E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void ShortSession.__allocating_init(on:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_20CE13914();
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    *(v2 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_defaults) = v5;
    *(v2 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_numberOfTonesToPlay) = 3;
    v6 = OBJC_IVAR____TtC13HearingTestUI12ShortSession_channel;
    v7 = sub_20CE12924();
    (*(*(v7 - 8) + 32))(v2 + v6, a1, v7);
  }

  else
  {
    __break(1u);
  }
}

char *sub_20CDF63D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69[1] = a1;
  v80 = sub_20CE12854();
  v82 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDF76A0(0, &qword_27C813558, MEMORY[0x277D12C68]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v70 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = v69 - v7;
  v8 = sub_20CE12644();
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v69[0] = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = v69 - v11;
  v12 = sub_20CE12924();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v69 - v17;
  v19 = OBJC_IVAR____TtC13HearingTestUI12ShortSession_channel;
  v20 = *MEMORY[0x277D12CD8];
  (*(v13 + 104))(v69 - v17, *MEMORY[0x277D12CD8], v12);
  sub_20CDF76F4(&qword_27C812380, MEMORY[0x277D12CE8], MEMORY[0x277D12CF0]);
  sub_20CE13A84();
  sub_20CE13A84();
  v21 = *(v13 + 8);
  v78 = v18;
  v21(v18, v12);
  v22 = v84 != v83;
  v23 = *(v13 + 16);
  v76 = v13 + 16;
  v77 = v19;
  v75 = v23;
  v23(v16, v1 + v19, v12);
  v24 = *(v13 + 88);
  v81 = v12;
  v25 = v24(v16, v12);
  if (v25 == v20)
  {
    v26 = v70;
    NSUserDefaults.overriddenLeftSessionResultState.getter(v70);
LABEL_5:
    v28 = v72;
    v27 = v73;
    goto LABEL_7;
  }

  v26 = v70;
  if (v25 == *MEMORY[0x277D12CE0])
  {
    NSUserDefaults.overriddenRightSessionResultState.getter(v70);
    goto LABEL_5;
  }

  v28 = v72;
  v27 = v73;
  (*(v72 + 56))(v70, 1, 1, v73);
  v21(v16, v81);
LABEL_7:
  v29 = v74;
  sub_20CDF773C(v26, v74);
  v30 = *(v28 + 48);
  if (v30(v29, 1, v27) == 1)
  {
    (*(v28 + 104))(v71, *MEMORY[0x277D12C48], v27);
    if (v30(v29, 1, v27) != 1)
    {
      sub_20CDF77BC(v29);
    }
  }

  else
  {
    (*(v28 + 32))(v71, v29, v27);
  }

  v31 = NSUserDefaults.overriddenHearingLossSensitivity(ear:)(v22);
  v32 = MEMORY[0x277D84F90];
  if (v31)
  {
    v33 = *(v31 + 2);
    if (v33)
    {
      v74 = v2;
      v84 = MEMORY[0x277D84F90];
      v34 = v31;
      sub_20CDB4690(0, v33, 0);
      v35 = v84;
      sub_20CE13B84();
      v36 = objc_opt_self();
      v70 = v34;
      v37 = (v34 + 40);
      do
      {
        v38 = *v37;
        v39 = *(v37 - 1);
        v40 = v38;
        sub_20CE13B74();
        sub_20CE13B24();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v41 = [v36 hertzUnit];
        [v39 doubleValueForUnit_];
        v43 = v42;

        v44 = [v36 decibelHearingLevelUnit];
        [v40 doubleValueForUnit_];
        v46 = v45;

        v84 = v35;
        v48 = *(v35 + 16);
        v47 = *(v35 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_20CDB4690((v47 > 1), v48 + 1, 1);
          v35 = v84;
        }

        *(v35 + 16) = v48 + 1;
        v49 = v35 + 16 * v48;
        *(v49 + 32) = v43;
        *(v49 + 40) = v46;
        v37 += 2;
        --v33;
      }

      while (v33);
      goto LABEL_32;
    }

LABEL_41:

    v35 = MEMORY[0x277D84F90];
    v62 = *(MEMORY[0x277D84F90] + 16);
    if (v62)
    {
LABEL_33:
      v84 = v32;
      sub_20CDB4670(0, v62, 0);
      sub_20CE13B84();
      v63 = v84;
      v74 = v82 + 32;
      v64 = v35 + 40;
      do
      {
        sub_20CE13B74();
        sub_20CE13B24();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v75(v78, v2 + v77, v81);
        v65 = v79;
        sub_20CE12824();

        v84 = v63;
        v67 = *(v63 + 16);
        v66 = *(v63 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_20CDB4670((v66 > 1), v67 + 1, 1);
          v63 = v84;
        }

        *(v63 + 16) = v67 + 1;
        (*(v82 + 32))(v63 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v67, v65, v80);
        v64 += 16;
        --v62;
      }

      while (v62);

      v28 = v72;
      v27 = v73;
      goto LABEL_43;
    }

LABEL_42:

LABEL_43:
    v68 = v71;
    (*(v28 + 16))(v69[0], v71, v27);
    sub_20CDD9AAC(16);
    sub_20CE12654();
    return (*(v28 + 8))(v68, v27);
  }

  v50 = _HKAudiogramStandardFrequencies();
  sub_20CD8E798();
  v51 = sub_20CE13AB4();

  if (v51 >> 62)
  {
    v52 = sub_20CE141C4();
    if (!v52)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v52)
    {
      goto LABEL_41;
    }
  }

  v74 = v2;
  v84 = v32;
  result = sub_20CDB4690(0, v52 & ~(v52 >> 63), 0);
  if ((v52 & 0x8000000000000000) == 0)
  {
    v35 = v84;
    sub_20CE13B84();
    v54 = 0;
    do
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x20F313610](v54, v51);
      }

      else
      {
        v55 = *(v51 + 8 * v54 + 32);
      }

      v56 = v55;
      sub_20CE13B74();
      sub_20CE13B24();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v56 doubleValue];
      v58 = v57;

      v84 = v35;
      v60 = *(v35 + 16);
      v59 = *(v35 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_20CDB4690((v59 > 1), v60 + 1, 1);
        v35 = v84;
      }

      ++v54;
      *(v35 + 16) = v60 + 1;
      v61 = v35 + 16 * v60;
      *(v61 + 32) = v58;
      *(v61 + 40) = 0;
    }

    while (v52 != v54);
LABEL_32:

    v27 = v73;
    v2 = v74;
    v28 = v72;
    v32 = MEMORY[0x277D84F90];
    v62 = *(v35 + 16);
    if (v62)
    {
      goto LABEL_33;
    }

    goto LABEL_42;
  }

  __break(1u);
  return result;
}

void ShortSession.init(on:)(uint64_t a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_20CE13914();
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    *(v1 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_defaults) = v5;
    *(v1 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_numberOfTonesToPlay) = 3;
    v6 = OBJC_IVAR____TtC13HearingTestUI12ShortSession_channel;
    v7 = sub_20CE12924();
    (*(*(v7 - 8) + 32))(v1 + v6, a1, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CDF6EAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_20CDF76A0(0, &qword_27C813540, MEMORY[0x277D12C80]);
  v2[4] = swift_task_alloc();
  v3 = sub_20CE12924();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_20CE13B84();
  v2[8] = sub_20CE13B74();
  v5 = sub_20CE13B24();

  return MEMORY[0x2822009F8](sub_20CDF6FE8, v5, v4);
}

uint64_t sub_20CDF6FE8()
{
  v1 = v0[3];

  v2 = OBJC_IVAR____TtC13HearingTestUI12ShortSession_numberOfTonesToPlay;
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_numberOfTonesToPlay) > 0)
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[2];
    v8 = v0[3];
    sub_20CD7C468(0);
    v10 = *(v9 + 48);
    (*(v4 + 16))(v3, v8 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_channel, v6);
    sub_20CE126F4();
    *(v7 + v10) = (*(v1 + v2) / -3.0) + 1.0;
    v11 = sub_20CE12714();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    sub_20CE12734();
    v12 = *MEMORY[0x277D12C70];
    v13 = sub_20CE126A4();
    (*(*(v13 - 8) + 104))(v7, v12, v13);
    v14 = *(v1 + v2);
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (!v15)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v17 = v0[2];
  sub_20CD7C52C(0);
  sub_20CDF63D4(v17);
  sub_20CD7C2DC(0);
  swift_storeEnumTagMultiPayload();
  sub_20CE127D4();
  v18 = *MEMORY[0x277D12C78];
  v19 = sub_20CE126A4();
  result = (*(*(v19 - 8) + 104))(v17, v18, v19);
  v21 = *(v1 + v2);
  v15 = __OFSUB__(v21, 1);
  v16 = v21 - 1;
  if (v15)
  {
    __break(1u);
    return result;
  }

LABEL_6:
  *(v1 + v2) = v16;

  v22 = v0[1];

  return v22();
}

uint64_t ShortSession.deinit()
{
  v1 = OBJC_IVAR____TtC13HearingTestUI12ShortSession_channel;
  v2 = sub_20CE12924();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ShortSession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13HearingTestUI12ShortSession_channel;
  v2 = sub_20CE12924();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_20CDF7388(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CD7C660;

  return sub_20CDF6EAC(a1);
}

uint64_t type metadata accessor for ShortSession(uint64_t a1)
{
  result = qword_27C813548;
  if (!qword_27C813548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CDF7478(uint64_t a1)
{
  result = sub_20CE12924();
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

uint64_t dispatch thunk of ShortSession.hearingTestStatusWithAverageNoise(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CD7C660;

  return v8(a1, a2);
}

void sub_20CDF76A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE13F44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20CDF76F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CDF773C(uint64_t a1, uint64_t a2)
{
  sub_20CDF76A0(0, &qword_27C813558, MEMORY[0x277D12C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDF77BC(uint64_t a1)
{
  sub_20CDF76A0(0, &qword_27C813558, MEMORY[0x277D12C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CDF7834(unint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v45 = MEMORY[0x277D84F90];
    sub_20CDB4650(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_20CE12204();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_20CE12214();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_20CE12204();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_20CE12214();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_20CDFA528(0, &qword_27C8135A0, sub_20CDDA734, MEMORY[0x277D84560]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_20CE16370;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = sub_20CE13964();
      v45 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_20CDB4650((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_20CDF7BCC(void *a1, unsigned __int8 a2)
{
  if ((a2 >> 6) > 1u)
  {
    if (a2 >> 6 != 2)
    {
      return 0x7269615020746F4ELL;
    }

    sub_20CD935CC();
    v46 = sub_20CE13FB4();
    MEMORY[0x20F312EF0](0x6369766544207C20, 0xEB00000000203A65);
    v20 = [a1 identifier];
    if (!v20)
    {
LABEL_9:
      v34 = sub_20CE13F64();
      v31 = v35;
      goto LABEL_10;
    }
  }

  else
  {
    if (!(a2 >> 6))
    {
      sub_20CE140E4();
      sub_20CD935CC();
      v4 = sub_20CE13FB4();

      v46 = v4;
      MEMORY[0x20F312EF0](0x6369766544207C20, 0xEB00000000203A65);
      v5 = [a1 identifier];
      if (v5)
      {
        v6 = v5;
        v7 = sub_20CE13954();
        v9 = v8;

        v10 = sub_20CDFA33C(5, v7, v9);
        v12 = v11;
        v14 = v13;
        v16 = v15;

        v17 = v14;
        v18 = v12;
        v19 = v10;
      }

      else
      {
        v19 = sub_20CE13F64();
        v16 = v40;
      }

      v41 = MEMORY[0x20F312EB0](v19, v18, v17, v16);
      v43 = v42;

      MEMORY[0x20F312EF0](v41, v43);

      MEMORY[0x20F312EF0](0x6145206E49207C20, 0xEB00000000203A72);
      if (a2)
      {
        v44 = 1702195828;
      }

      else
      {
        v44 = 0x65736C6166;
      }

      if (a2)
      {
        v45 = 0xE400000000000000;
      }

      else
      {
        v45 = 0xE500000000000000;
      }

      MEMORY[0x20F312EF0](v44, v45);
      goto LABEL_20;
    }

    sub_20CD935CC();
    v46 = sub_20CE13FB4();
    MEMORY[0x20F312EF0](0x6369766544207C20, 0xEB00000000203A65);
    v20 = [a1 identifier];
    if (!v20)
    {
      goto LABEL_9;
    }
  }

  v21 = v20;
  v22 = sub_20CE13954();
  v24 = v23;

  v25 = sub_20CDFA33C(5, v22, v24);
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v29;
  v33 = v27;
  v34 = v25;
LABEL_10:
  v36 = MEMORY[0x20F312EB0](v34, v33, v32, v31);
  v38 = v37;

  MEMORY[0x20F312EF0](v36, v38);
LABEL_20:

  return v46;
}

id sub_20CDF80C4(void *a1)
{
  v1 = a1;
  CBDevice.btAddress.getter();
  v3 = v2;

  if (v3)
  {
    v4 = sub_20CE13914();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t CBDevice.btAddress.getter()
{
  v1 = [v0 btAddressData];
  if (!v1)
  {
    return 1280070990;
  }

  v2 = v1;
  v3 = sub_20CE12484();
  v5 = v4;

  sub_20CDF9A50(v3, v5);
  sub_20CDF7834(v3, v5);
  sub_20CDF9AA4();
  sub_20CDFA4E0(&qword_27C813740, 255, sub_20CDF9AA4, MEMORY[0x277D83958]);
  sub_20CE138C4();

  sub_20CD935CC();
  v6 = sub_20CE13F84();
  sub_20CDF9AF4(v3, v5);
  sub_20CDF9AF4(v3, v5);

  return v6;
}

uint64_t static CBDevice.dataAddress(from:)(unint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 1280070990;
  }

  sub_20CDF9A50(a1, a2);
  sub_20CDF7834(a1, a2);
  sub_20CDF9AA4();
  sub_20CDFA4E0(&qword_27C813740, 255, sub_20CDF9AA4, MEMORY[0x277D83958]);
  sub_20CE138C4();

  sub_20CD935CC();
  v5 = sub_20CE13F84();
  sub_20CDF9B48(a1, a2);

  return v5;
}

id sub_20CDF83B0(void *a1)
{
  v1 = a1;
  CBProductIDToString([v1 productID]);
  sub_20CE139F4();

  v2 = sub_20CE13914();

  return v2;
}

uint64_t CBDevice.hardwareVersion.getter()
{
  CBProductIDToString([v0 productID]);

  return sub_20CE139F4();
}

uint64_t sub_20CDF8484()
{
  v0 = sub_20CE129B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C811D20 != -1)
  {
    swift_once();
  }

  v4 = sub_20CE12CB4();
  __swift_project_value_buffer(v4, qword_27C8177C8);
  v5 = sub_20CE12C94();
  v6 = sub_20CE13CD4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v9 = sub_20CE14414();
    v11 = sub_20CD96DCC(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20CD70000, v5, v6, "[%{public}s] Adding self as an observer to requirement status updates.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x20F314110](v8, -1, -1);
    MEMORY[0x20F314110](v7, -1, -1);
  }

  sub_20CDFA4E0(&qword_27C813598, v12, type metadata accessor for HearingTestDeviceManager, &unk_20CE19350);
  sub_20CE12994();
  sub_20CE129F4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_20CDF86EC()
{
  v0 = sub_20CE129B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C811D20 != -1)
  {
    swift_once();
  }

  v4 = sub_20CE12CB4();
  __swift_project_value_buffer(v4, qword_27C8177C8);
  v5 = sub_20CE12C94();
  v6 = sub_20CE13CD4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v9 = sub_20CE14414();
    v11 = sub_20CD96DCC(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20CD70000, v5, v6, "[%{public}s] Removing self as an observer to requirement status updates.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x20F314110](v8, -1, -1);
    MEMORY[0x20F314110](v7, -1, -1);
  }

  sub_20CDFA4E0(&qword_27C813598, v12, type metadata accessor for HearingTestDeviceManager, &unk_20CE19350);
  sub_20CE12994();
  sub_20CE12A04();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_20CDF8950()
{
  sub_20CDF86EC();
  sub_20CD99704(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

BOOL sub_20CDF89B0()
{
  v0 = sub_20CDF8BB8() != 0;
  swift_unknownObjectRelease();
  return v0;
}

id sub_20CDF8BB8()
{
  v2 = v1;
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 48);
  v17[0] = 0;
  v4 = [v3 pairedDevicesWithError_];
  v5 = v17[0];
  if (!v4)
  {
    v14 = v17[0];
    sub_20CE12394();

    swift_willThrow();
    return v14;
  }

  v6 = v4;
  sub_20CDFA3F0();
  v7 = sub_20CE13AB4();
  v8 = v5;

  v17[0] = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_18;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    while (1)
    {
      v10 = 0;
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
      v16 = v2;
      while ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F313610](v10, v7);
        v2 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v13 = v17[0];
          goto LABEL_20;
        }

LABEL_10:
        if ([v12 isHearingTestCapable])
        {
          sub_20CE14134();
          sub_20CE14164();
          sub_20CE14174();
          sub_20CE14144();
          v11 = v7 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v10;
        if (v2 == v9)
        {
          goto LABEL_15;
        }
      }

      if (v10 < *(v11 + 16))
      {
        break;
      }

      __break(1u);
LABEL_18:
      v9 = sub_20CE141C4();
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    v12 = *(v7 + 8 * v10 + 32);
    swift_unknownObjectRetain();
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_19:
  v13 = MEMORY[0x277D84F90];
LABEL_20:

  if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
  {
    if (sub_20CE141C4())
    {
      goto LABEL_23;
    }

LABEL_28:

    return 0;
  }

  if (!*(v13 + 16))
  {
    goto LABEL_28;
  }

LABEL_23:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x20F313610](0, v13);
  }

  else
  {
    if (!*(v13 + 16))
    {
      __break(1u);
    }

    v14 = *(v13 + 32);
    swift_unknownObjectRetain();
  }

  return v14;
}

id sub_20CDF8E38(uint64_t a1)
{
  v2 = v1;
  if (qword_27C811D20 != -1)
  {
    swift_once();
  }

  v4 = sub_20CE12CB4();
  __swift_project_value_buffer(v4, qword_27C8177C8);
  swift_unknownObjectRetain();
  v5 = sub_20CE12C94();
  v6 = sub_20CE13CD4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446466;
    v9 = sub_20CE14414();
    v11 = sub_20CD96DCC(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = sub_20CE13974();
    v14 = sub_20CD96DCC(v12, v13, &v16);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_20CD70000, v5, v6, "[%{public}s] removing observer %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v8, -1, -1);
    MEMORY[0x20F314110](v7, -1, -1);
  }

  return [*(v2 + 56) unregisterObserver_];
}

uint64_t sub_20CDF9030@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 40);
  *a1 = *(*v1 + 32);
  a1[1] = v2;
}

uint64_t sub_20CDF9040()
{
  sub_20CE14384();
  sub_20CE139C4();
  return sub_20CE143B4();
}

uint64_t sub_20CDF9094(uint64_t a1)
{
  sub_20CE14384();
  sub_20CE139C4();
  return sub_20CE143B4();
}

uint64_t sub_20CDF90D8(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 32) == *(*a2 + 32) && *(*a1 + 40) == *(*a2 + 40))
  {
    return 1;
  }

  else
  {
    return sub_20CE14284();
  }
}

uint64_t sub_20CDF9104(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = *(a2 + 16);
    v8 = *(v5 + 8);
    v9 = *(a2 + 24);
    sub_20CD996F0(v7, v9);
    v8(v7, v9, ObjectType, v5);
    sub_20CD99704(v7, v9);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20CDF91D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_20CDF9230(uint64_t a1)
{
  v2 = v1;
  v68 = *v1;
  v4 = sub_20CE12944();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v63 - v9);
  v11 = *(v5 + 16);
  v11(&v63 - v9, a1, v4);
  v12 = (*(v5 + 88))(v10, v4);
  v13 = *MEMORY[0x277D12D20];
  v66 = v8;
  v67 = v5;
  if (v12 == v13)
  {
    (*(v5 + 96))(v10, v4);
    v14 = *v10;
    v15 = v14;
    v16 = 1;
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D12D28])
  {
    (*(v5 + 96))(v10, v4);
    v14 = *v10;
    v17 = v14;
    v16 = 0;
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D12D10])
  {
    (*(v5 + 96))(v10, v4);
    v14 = *v10;
    v18 = v14;
    v16 = 64;
    goto LABEL_17;
  }

  if (v12 == *MEMORY[0x277D12D18])
  {
    (*(v5 + 96))(v10, v4);
    v14 = *v10;
    if (sub_20CDF89B0())
    {
      v19 = v14;
      v16 = 0x80;
      goto LABEL_17;
    }
  }

  else
  {
    if (qword_27C811D20 != -1)
    {
      swift_once();
    }

    v20 = sub_20CE12CB4();
    __swift_project_value_buffer(v20, qword_27C8177C8);
    v21 = sub_20CE12C94();
    v22 = sub_20CE13CC4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v64 = v23;
      v65 = swift_slowAlloc();
      aBlock[0] = v65;
      *v23 = 136446210;
      v24 = sub_20CE14414();
      v26 = sub_20CD96DCC(v24, v25, aBlock);
      v5 = v67;

      v27 = v64;
      *(v64 + 4) = v26;
      v28 = v22;
      v29 = v27;
      _os_log_impl(&dword_20CD70000, v21, v28, "[%{public}s] Unhandled case of HTAudioDeviceStatus.", v27, 0xCu);
      v30 = v65;
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x20F314110](v30, -1, -1);
      MEMORY[0x20F314110](v29, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }

  v14 = 0;
  v16 = -64;
LABEL_17:
  v31 = *(v2 + 16);
  v32 = *(v2 + 24);
  sub_20CD996F0(v31, v32);
  v33 = sub_20CDFA084(v31, v32, v14, v16);
  sub_20CD99704(v14, v16);
  sub_20CD99704(v31, v32);
  if ((v33 & 1) == 0)
  {
    if (qword_27C811D20 != -1)
    {
      swift_once();
    }

    v34 = sub_20CE12CB4();
    v35 = __swift_project_value_buffer(v34, qword_27C8177C8);
    v36 = v66;
    v11(v66, a1, v4);
    v65 = v35;
    v37 = sub_20CE12C94();
    v38 = sub_20CE13CD4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v39 = 136446722;
      v40 = sub_20CE14414();
      v42 = sub_20CD96DCC(v40, v41, aBlock);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_20CD96DCC(0xD00000000000001CLL, 0x800000020CE20580, aBlock);
      *(v39 + 22) = 2080;
      v43 = sub_20CE07A78();
      v45 = v44;
      (*(v67 + 8))(v36, v4);
      v46 = sub_20CD96DCC(v43, v45, aBlock);

      *(v39 + 24) = v46;
      _os_log_impl(&dword_20CD70000, v37, v38, "[%{public}s] %s called with new status:        %s.", v39, 0x20u);
      v47 = v64;
      swift_arrayDestroy();
      MEMORY[0x20F314110](v47, -1, -1);
      MEMORY[0x20F314110](v39, -1, -1);
    }

    else
    {

      (*(v67 + 8))(v36, v4);
    }

    sub_20CD996F0(v14, v16);
    v48 = sub_20CE12C94();
    v49 = sub_20CE13CD4();
    sub_20CD99704(v14, v16);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v50 = 136446722;
      v52 = sub_20CE14414();
      v54 = sub_20CD96DCC(v52, v53, aBlock);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_20CD96DCC(0xD00000000000001CLL, 0x800000020CE20580, aBlock);
      *(v50 + 22) = 2080;
      v55 = sub_20CDF7BCC(v14, v16);
      v57 = sub_20CD96DCC(v55, v56, aBlock);

      *(v50 + 24) = v57;
      _os_log_impl(&dword_20CD70000, v48, v49, "[%{public}s] %s converted the new status into: %s.", v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v51, -1, -1);
      MEMORY[0x20F314110](v50, -1, -1);
    }

    v58 = *(v2 + 16);
    *(v2 + 16) = v14;
    v59 = *(v2 + 24);
    *(v2 + 24) = v16;
    sub_20CD996F0(v14, v16);
    sub_20CD99704(v58, v59);
    v60 = *(v2 + 56);
    aBlock[4] = sub_20CDC16E0;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CDF91D0;
    aBlock[3] = &block_descriptor_10;
    v61 = _Block_copy(aBlock);

    [v60 notifyObservers_];
    _Block_release(v61);
  }

  return sub_20CD99704(v14, v16);
}

uint64_t sub_20CDF9A18()
{
  v1 = *(v0 + 32);

  return v1;
}

double sub_20CDF9A50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

void sub_20CDF9AA4()
{
  if (!qword_27C8121F0)
  {
    v0 = sub_20CE13B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8121F0);
    }
  }
}

uint64_t sub_20CDF9AF4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_20CDF9B48(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20CDF9AF4(result, a2);
  }

  return result;
}

const char *CBProductIDToString(int a1)
{
  if (a1 > 21759)
  {
    if (a1 > 28943)
    {
      if (a1 <= 29714)
      {
        if (a1 == 28944)
        {
          return "AudioAccessory1,2";
        }

        if (a1 == 29455)
        {
          return "AppleTV11,1";
        }
      }

      else
      {
        switch(a1)
        {
          case 29715:
            return "AudioAccessory5,1";
          case 65533:
            return "HeGn";
          case 65534:
            return "ApGn";
        }
      }
    }

    else if (a1 <= 28419)
    {
      if (a1 == 21760)
      {
        return "Device1,21760";
      }

      if (a1 == 22034)
      {
        return "Device1,22034";
      }
    }

    else
    {
      switch(a1)
      {
        case 28420:
          return "AppleTV5,3";
        case 28936:
          return "AppleTV6,2";
        case 28943:
          return "AudioAccessory1,1";
      }
    }

    return "?";
  }

  if (a1 <= 8193)
  {
    switch(a1)
    {
      case 0:
        return "Invalid";
      case 614:
        return "ATVRemote1,1";
      case 621:
        return "ATVRemote1,2";
    }

    return "?";
  }

  switch(a1)
  {
    case 8194:
      result = "AirPods1,1";
      break;
    case 8195:
      result = "PowerBeats3,1";
      break;
    case 8197:
      result = "BeatsX1,1";
      break;
    case 8198:
      result = "BeatsSolo3,1";
      break;
    case 8201:
      result = "BeatsStudio3,2";
      break;
    case 8202:
      result = "Device1,8202";
      break;
    case 8203:
      result = "PowerbeatsPro1,1";
      break;
    case 8204:
      result = "BeatsSoloPro1,1";
      break;
    case 8205:
      result = "Powerbeats4,1";
      break;
    case 8206:
      result = "AirPodsPro1,1";
      break;
    case 8207:
      result = "AirPods1,3";
      break;
    case 8208:
      result = "Device1,8208";
      break;
    case 8209:
      result = "BeatsStudioBuds1,1";
      break;
    case 8210:
      result = "Device1,8210";
      break;
    case 8211:
      result = "Device1,8211";
      break;
    case 8212:
      result = "Device1,8212";
      break;
    case 8213:
      result = "Device1,8213";
      break;
    case 8214:
      result = "BeatsStudioBuds1,2";
      break;
    case 8215:
      result = "BeatsStudioPro1,1";
      break;
    case 8216:
      result = "Device1,8216";
      break;
    case 8217:
      result = "Device1,8217";
      break;
    case 8218:
      result = "Device1,8218";
      break;
    case 8219:
      result = "Device1,8219";
      break;
    case 8220:
      result = "Device1,8220";
      break;
    case 8221:
      result = "Powerb3,1";
      break;
    case 8222:
      result = "Device1,8222";
      break;
    case 8223:
      result = "Device1,8223";
      break;
    case 8224:
      result = "Device1,8224";
      break;
    case 8228:
      result = "Device1,8228";
      break;
    case 8229:
      result = "Device1,8229";
      break;
    case 8230:
      result = "Device1,8230";
      break;
    case 8231:
      result = "AirPods3,4";
      break;
    case 8232:
      result = "Device1,8232";
      break;
    case 8233:
      result = "Device1,8233";
      break;
    case 8239:
      result = "Device1,8239";
      break;
    default:
      return "?";
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HearingTestUI15DeviceCheckModeO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_20CDF9EF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 9))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20CDF9F48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_20CDF9FAC(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -64;
  }

  return result;
}

uint64_t sub_20CDFA084(void *a1, unsigned __int8 a2, void *a3, unsigned __int8 a4)
{
  if ((a2 >> 6) > 1u)
  {
    if (a2 >> 6 != 2)
    {
      if (a4 < 0xC0u || a3 || a4 != 192)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    if ((a4 & 0xC0) != 0x80)
    {
      goto LABEL_42;
    }

    v12 = [a1 identifier];
    if (v12)
    {
      v13 = v12;
      v14 = sub_20CE13954();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v25 = [a3 identifier];
    if (!v25)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  if (a2 >> 6)
  {
    if ((a4 & 0xC0) != 0x40)
    {
      goto LABEL_42;
    }

    v17 = [a1 identifier];
    if (v17)
    {
      v18 = v17;
      v14 = sub_20CE13954();
      v16 = v19;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v25 = [a3 identifier];
    if (!v25)
    {
LABEL_35:
      if (v16)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

LABEL_26:
    v26 = v25;
    v27 = sub_20CE13954();
    v29 = v28;

    if (v16)
    {
      if (v29)
      {
        if (v14 != v27 || v16 != v29)
        {
          v31 = sub_20CE14284();

          return v31 & 1;
        }

        v30 = 1;
        return v30 & 1;
      }

      goto LABEL_41;
    }

    if (v29)
    {
      goto LABEL_41;
    }

LABEL_36:
    v30 = 1;
    return v30 & 1;
  }

  if (a4 >= 0x40u)
  {
LABEL_42:
    v30 = 0;
    return v30 & 1;
  }

  v7 = [a1 identifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_20CE13954();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v20 = [a3 identifier];
  if (!v20)
  {
    if (!v11)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  v21 = v20;
  v22 = sub_20CE13954();
  v24 = v23;

  if (!v11)
  {
    if (!v24)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  if (!v24)
  {
LABEL_41:

    goto LABEL_42;
  }

  if (v9 == v22 && v11 == v24)
  {

LABEL_45:
    v30 = a4 ^ a2 ^ 1;
    return v30 & 1;
  }

  v33 = sub_20CE14284();

  v30 = 0;
  if (v33)
  {
    goto LABEL_45;
  }

  return v30 & 1;
}

uint64_t sub_20CDFA33C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_20CE139D4();

    return sub_20CE13A74();
  }

  return result;
}

double block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_20CDFA3F0()
{
  result = qword_27C813580;
  if (!qword_27C813580)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C813580);
  }

  return result;
}

uint64_t sub_20CDFA454(uint64_t a1)
{
  sub_20CDFA528(0, &qword_27C812CA0, sub_20CDEBEC8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CDFA4E0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_20CDFA528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CDFA58C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = HKLogHearingCategory();
  v10 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v11 = sub_20CE13914();
  v12 = [v10 initWithName:v11 loggingCategory:v9];

  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 48) = a2;
  *(v4 + 56) = v12;
  *(v4 + 64) = a1;
  *(v4 + 16) = 0;
  *(v4 + 24) = -64;
  v13 = a2;

  sub_20CDF8484();
  return v4;
}

uint64_t sub_20CDFA688@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result == 0xD000000000000020 && 0x800000020CE1A610 == a2;
  if (v4 || (v6 = result, result = sub_20CE14284(), (result & 1) != 0))
  {
    v7 = 0;
  }

  else if (v6 == 0xD00000000000001CLL && 0x800000020CE1A5C0 == a2 || (result = sub_20CE14284(), (result & 1) != 0))
  {
    v7 = 3;
  }

  else if (v6 == 0xD000000000000026 && 0x800000020CE1A5E0 == a2 || (result = sub_20CE14284(), (result & 1) != 0))
  {
    v7 = 2;
  }

  else
  {
    v7 = 4;
    if (v6 != 0xD000000000000022 || 0x800000020CE1A640 != a2)
    {
      result = sub_20CE14284();
      if (result)
      {
        v7 = 4;
      }

      else
      {
        v7 = 8;
      }
    }
  }

  *a3 = v7;
  return result;
}

void sub_20CDFA7C0(uint64_t a1, unint64_t a2)
{
  v30[1] = swift_getObjectType();
  v5 = sub_20CE136C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CE136E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDFA688(a1, a2, aBlock);
  v13 = aBlock[0];
  if (LOBYTE(aBlock[0]) == 8)
  {
    if (qword_27C811D18 != -1)
    {
      swift_once();
    }

    v14 = sub_20CE12CB4();
    __swift_project_value_buffer(v14, qword_27C8177B0);

    v31 = sub_20CE12C94();
    v15 = sub_20CE13CB4();

    if (os_log_type_enabled(v31, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136446466;
      v18 = sub_20CE14414();
      v20 = sub_20CD96DCC(v18, v19, aBlock);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_20CD96DCC(a1, a2, aBlock);
      _os_log_impl(&dword_20CD70000, v31, v15, "[%{public}s] Could not interpret interruptType for keyPath %s)", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v17, -1, -1);
      MEMORY[0x20F314110](v16, -1, -1);
    }

    else
    {
      v26 = v31;
    }
  }

  else
  {
    v21 = *&v2[OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observerQueue];
    if (v21)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = v2;
      *(v22 + 24) = v13;
      v34 = sub_20CDFBC64;
      v35 = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20CDB3E40;
      v33 = &block_descriptor_21;
      v23 = _Block_copy(aBlock);
      v24 = v21;
      v25 = v2;
      sub_20CE136D4();
      v37[0] = MEMORY[0x277D84F90];
      sub_20CDFBC70(&qword_27C812AB8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_20CDFBC00(0, &qword_27C812AC0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_20CDD8CC8();
      sub_20CE14044();
      MEMORY[0x20F313260](0, v12, v8, v23);
      _Block_release(v23);

      (*(v6 + 8))(v8, v5);
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      v27 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observer;
      swift_beginAccess();
      sub_20CDFBA58(&v2[v27], aBlock);
      if (v33)
      {
        sub_20CD7C388(aBlock, v37);
        sub_20CDFBB50(aBlock);
        v28 = v38;
        v29 = v39;
        __swift_project_boxed_opaque_existential_1(v37, v38);
        v36 = v13;
        (*(v29 + 8))(&v36, v28, v29);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
      }

      else
      {
        sub_20CDFBB50(aBlock);
      }
    }
  }
}

uint64_t sub_20CDFACE4(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observer;
  swift_beginAccess();
  sub_20CDFBA58(a1 + v4, v12);
  if (!v13)
  {
    return sub_20CDFBB50(v12);
  }

  sub_20CD7C388(v12, v9);
  sub_20CDFBB50(v12);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = a2;
  (*(v6 + 8))(&v8, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

void sub_20CDFADA8(uint64_t a1, unint64_t a2)
{
  v30[1] = swift_getObjectType();
  v5 = sub_20CE136C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CE136E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDFA688(a1, a2, aBlock);
  v13 = aBlock[0];
  if (LOBYTE(aBlock[0]) == 8)
  {
    if (qword_27C811D18 != -1)
    {
      swift_once();
    }

    v14 = sub_20CE12CB4();
    __swift_project_value_buffer(v14, qword_27C8177B0);

    v31 = sub_20CE12C94();
    v15 = sub_20CE13CB4();

    if (os_log_type_enabled(v31, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136446466;
      v18 = sub_20CE14414();
      v20 = sub_20CD96DCC(v18, v19, aBlock);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_20CD96DCC(a1, a2, aBlock);
      _os_log_impl(&dword_20CD70000, v31, v15, "[%{public}s] Could not interpret interruptType for keyPath %s)", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v17, -1, -1);
      MEMORY[0x20F314110](v16, -1, -1);
    }

    else
    {
      v26 = v31;
    }
  }

  else
  {
    v21 = *&v2[OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observerQueue];
    if (v21)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = v2;
      *(v22 + 24) = v13;
      v34 = sub_20CDFBBDC;
      v35 = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20CDB3E40;
      v33 = &block_descriptor_11;
      v23 = _Block_copy(aBlock);
      v24 = v21;
      v25 = v2;
      sub_20CE136D4();
      v37[0] = MEMORY[0x277D84F90];
      sub_20CDFBC70(&qword_27C812AB8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_20CDFBC00(0, &qword_27C812AC0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_20CDD8CC8();
      sub_20CE14044();
      MEMORY[0x20F313260](0, v12, v8, v23);
      _Block_release(v23);

      (*(v6 + 8))(v8, v5);
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      v27 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observer;
      swift_beginAccess();
      sub_20CDFBA58(&v2[v27], aBlock);
      if (v33)
      {
        sub_20CD7C388(aBlock, v37);
        sub_20CDFBB50(aBlock);
        v28 = v38;
        v29 = v39;
        __swift_project_boxed_opaque_existential_1(v37, v38);
        v36 = v13;
        (*(v29 + 16))(&v36, v28, v29);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
      }

      else
      {
        sub_20CDFBB50(aBlock);
      }
    }
  }
}

uint64_t sub_20CDFB2CC(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observer;
  swift_beginAccess();
  sub_20CDFBA58(a1 + v4, v12);
  if (!v13)
  {
    return sub_20CDFBB50(v12);
  }

  sub_20CD7C388(v12, v9);
  sub_20CDFBB50(v12);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = a2;
  (*(v6 + 16))(&v8, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

void sub_20CDFB390(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v27[0] = a1;
  v27[1] = a2;
  MEMORY[0x28223BE20](a1);
  v24[2] = v27;
  if ((sub_20CDFB9AC(sub_20CDFBCB8, v24, v11) & 1) == 0)
  {
    v16 = sub_20CE13914();
LABEL_11:
    sub_20CD8CF38(a3, v27);
    v17 = v28;
    if (v28)
    {
      v18 = __swift_project_boxed_opaque_existential_1(v27, v28);
      v19 = *(v17 - 8);
      MEMORY[0x28223BE20](v18);
      v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v21);
      v22 = sub_20CE14274();
      (*(v19 + 8))(v21, v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      if (!a4)
      {
LABEL_14:
        v23 = type metadata accessor for MockInterruptionProvider();
        v26.receiver = v5;
        v26.super_class = v23;
        objc_msgSendSuper2(&v26, sel_observeValueForKeyPath_ofObject_change_context_, v16, v22, a4, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v22 = 0;
      if (!a4)
      {
        goto LABEL_14;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_20CDFBC70(&qword_27C811FC8, type metadata accessor for NSKeyValueChangeKey, &unk_20CE162AC);
    a4 = sub_20CE13874();
    goto LABEL_14;
  }

  if (a4)
  {
    if (a4[2] && (v12 = sub_20CD8B0EC(), (v13 & 1) != 0) && (sub_20CD8A98C(a4[7] + 32 * v12, v27), sub_20CD8E798(), (swift_dynamicCast() & 1) != 0) && (v14 = v25, v15 = [v25 BOOLValue], v14, (v15 & 1) != 0))
    {
      sub_20CDFA7C0(a1, a2);
    }

    else
    {
      sub_20CDFADA8(a1, a2);
    }
  }
}

void sub_20CDFB7DC()
{
  *&v0[OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_userDefaultsKeyPathsToObserve] = &unk_2823BAFC8;
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_20CE13914();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    *&v0[OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_hearingTestUserDefaults] = v3;
    v4 = &v0[OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observer];
    *v4 = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 4) = 0;
    *&v0[OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observerQueue] = 0;
    v0[OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_isObservingUserDefaults] = 0;
    v5.receiver = v0;
    v5.super_class = type metadata accessor for MockInterruptionProvider();
    objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    __break(1u);
  }
}

id sub_20CDFB8E8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MockInterruptionProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20CDFB9AC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_20CDFBA58(uint64_t a1, uint64_t a2)
{
  sub_20CDFBC00(0, &qword_27C812CB8, sub_20CDFBAEC, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20CDFBAEC()
{
  result = qword_27C812CC0;
  if (!qword_27C812CC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C812CC0);
  }

  return result;
}

uint64_t sub_20CDFBB50(uint64_t a1)
{
  sub_20CDFBC00(0, &qword_27C812CB8, sub_20CDFBAEC, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_20CDFBC00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CDFBC70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CDFBCB8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_20CE14284() & 1;
  }
}

uint64_t sub_20CDFBD18(void *a1, void *a2, uint64_t a3)
{
  sub_20CDFC314(a1, a2, a3);
  v5 = v4;

  return v5;
}

void OBWelcomeController.addHostedContent<A>(contentBuilder:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = sub_20CE13284();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  sub_20CE13204();
  a1();
  v9 = sub_20CE131E4();
  sub_20CE13274();
  sub_20CE131D4();
  v10 = v9;
  [v5 addChildViewController_];
  v11 = [v5 contentView];
  v12 = [v10 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  [v11 addSubview_];

  v14 = [v10 view];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = [objc_opt_self() clearColor];
  [v14 setBackgroundColor_];

  v16 = [v10 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  v17 = [v10 view];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = [v17 topAnchor];

  v19 = [v5 contentView];
  v20 = [v19 layoutMarginsGuide];

  v21 = [v20 topAnchor];
  v22 = [v18 constraintEqualToAnchor_];

  [v22 setActive_];
  v23 = [v10 view];

  if (!v23)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = [v23 bottomAnchor];

  v25 = [v5 contentView];
  v26 = [v25 layoutMarginsGuide];

  v27 = [v26 bottomAnchor];
  v28 = [v24 constraintEqualToAnchor_];

  [v28 setActive_];
  v29 = [v10 view];

  if (!v29)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = [v29 leadingAnchor];

  v31 = [v5 view];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = v31;
  v33 = [v31 layoutMarginsGuide];

  v34 = [v33 leadingAnchor];
  v35 = [v30 constraintEqualToAnchor_];

  [v35 setActive_];
  v36 = [v10 view];

  if (!v36)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v37 = [v36 trailingAnchor];

  v38 = [v5 view];
  if (!v38)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v39 = v38;
  v40 = [v38 layoutMarginsGuide];

  v41 = [v40 trailingAnchor];
  v42 = [v37 constraintEqualToAnchor_];

  [v42 setActive_];
  [v10 didMoveToParentViewController_];
  v43 = [v10 view];

  if (v43)
  {

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_20CDFC314(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CE13284();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for ClassificationInfoView(0);
  MEMORY[0x28223BE20](v7 - 8);
  sub_20CDF18AC(a2, a3, &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CDFC8D4(0);
  v10 = objc_allocWithZone(v9);
  v11 = sub_20CE131F4();
  sub_20CE13274();
  sub_20CE131D4();
  v12 = v11;
  [a1 addChildViewController_];
  v13 = [a1 contentView];
  v14 = [v12 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  [v13 addSubview_];

  v16 = [v12 view];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = [objc_opt_self() clearColor];
  [v16 setBackgroundColor_];

  v18 = [v12 view];
  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  v19 = [v12 view];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = [v19 topAnchor];

  v21 = [a1 contentView];
  v22 = [v21 layoutMarginsGuide];

  v23 = [v22 topAnchor];
  v24 = [v20 constraintEqualToAnchor_];

  [v24 setActive_];
  v25 = [v12 view];

  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = [v25 bottomAnchor];

  v27 = [a1 contentView];
  v28 = [v27 layoutMarginsGuide];

  v29 = [v28 bottomAnchor];
  v30 = [v26 constraintEqualToAnchor_];

  [v30 setActive_];
  v31 = [v12 view];

  if (!v31)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v32 = [v31 leadingAnchor];

  v33 = [a1 view];
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v34 = v33;
  v35 = [v33 layoutMarginsGuide];

  v36 = [v35 leadingAnchor];
  v37 = [v32 constraintEqualToAnchor_];

  [v37 setActive_];
  v38 = [v12 view];

  if (!v38)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = [v38 trailingAnchor];

  v40 = [a1 view];
  if (!v40)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v41 = v40;
  v42 = [v40 layoutMarginsGuide];

  v43 = [v42 trailingAnchor];
  v44 = [v39 constraintEqualToAnchor_];

  [v44 setActive_];
  [v12 didMoveToParentViewController_];
  v45 = [v12 view];

  if (v45)
  {

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_20CDFC8D4(uint64_t a1)
{
  if (!qword_27C8135D0)
  {
    type metadata accessor for ClassificationInfoView(255);
    sub_20CDFC938();
    v1 = sub_20CE13204();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8135D0);
    }
  }
}

unint64_t sub_20CDFC938()
{
  result = qword_27C8135D8;
  if (!qword_27C8135D8)
  {
    type metadata accessor for ClassificationInfoView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8135D8);
  }

  return result;
}

void sub_20CDFC994(void **a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v9 = sub_20CE12644();
      (*(*(v9 - 8) + 8))(a1, v9);
      v5 = &qword_27C8131D8;
      v6 = &type metadata for ResultsProcessor.Partial;
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        return;
      }

      v7 = sub_20CE12644();
      (*(*(v7 - 8) + 8))(a1, v7);
      v5 = &qword_27C8131D0;
      v6 = &type metadata for ResultsProcessor.Complete;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return;
    }

    v4 = sub_20CE12644();
    (*(*(v4 - 8) + 8))(a1, v4);
    v5 = &qword_27C812EB8;
    v6 = &type metadata for ResultsProcessor.Empty;
LABEL_13:
    sub_20CDFF32C(0, v5, v6, sub_20CDFCB50);

    return;
  }

  v8 = *a1;
}

char *sub_20CDFCB68(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v23 = sub_20CE12644();
      (*(*(v23 - 8) + 32))(a1, a2, v23);
      sub_20CDFF32C(0, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete, sub_20CDFCB50);
      *&a1[v24[7]] = *&a2[v24[7]];
      *&a1[v24[8]] = *&a2[v24[8]];
      *&a1[v24[9]] = *&a2[v24[9]];
      *&a1[v24[10]] = *&a2[v24[10]];
      *&a1[v24[11]] = *&a2[v24[11]];
      v25 = v24[12];
      v26 = &a1[v25];
      v27 = &a2[v25];
      v26[8] = v27[8];
      *v26 = *v27;
      v28 = v24[13];
      v29 = &a1[v28];
      v30 = &a2[v28];
      v29[8] = v30[8];
      *v29 = *v30;
      goto LABEL_7;
    case 2:
      v15 = sub_20CE12644();
      (*(*(v15 - 8) + 32))(a1, a2, v15);
      sub_20CDFF32C(0, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial, sub_20CDFCB50);
      *&a1[v16[7]] = *&a2[v16[7]];
      *&a1[v16[8]] = *&a2[v16[8]];
      *&a1[v16[9]] = *&a2[v16[9]];
      *&a1[v16[10]] = *&a2[v16[10]];
      *&a1[v16[11]] = *&a2[v16[11]];
      v17 = v16[12];
      v18 = &a1[v17];
      v19 = &a2[v17];
      v18[8] = v19[8];
      *v18 = *v19;
      v20 = v16[13];
      v21 = &a1[v20];
      v22 = &a2[v20];
      v21[8] = v22[8];
      *v21 = *v22;
      goto LABEL_7;
    case 1:
      v7 = sub_20CE12644();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      sub_20CDFF32C(0, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
      *&a1[v8[7]] = *&a2[v8[7]];
      *&a1[v8[8]] = *&a2[v8[8]];
      *&a1[v8[9]] = *&a2[v8[9]];
      *&a1[v8[10]] = *&a2[v8[10]];
      *&a1[v8[11]] = *&a2[v8[11]];
      v9 = v8[12];
      v10 = &a1[v9];
      v11 = &a2[v9];
      v10[8] = v11[8];
      *v10 = *v11;
      v12 = v8[13];
      v13 = &a1[v12];
      v14 = &a2[v12];
      v13[8] = v14[8];
      *v13 = *v14;
LABEL_7:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v32 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v32);
}

char *sub_20CDFCEC0(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_20CDFD228(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v23 = sub_20CE12644();
      (*(*(v23 - 8) + 32))(a1, a2, v23);
      sub_20CDFF32C(0, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete, sub_20CDFCB50);
      *&a1[v24[7]] = *&a2[v24[7]];
      *&a1[v24[8]] = *&a2[v24[8]];
      *&a1[v24[9]] = *&a2[v24[9]];
      *&a1[v24[10]] = *&a2[v24[10]];
      *&a1[v24[11]] = *&a2[v24[11]];
      v25 = v24[12];
      v26 = &a1[v25];
      v27 = &a2[v25];
      v26[8] = v27[8];
      *v26 = *v27;
      v28 = v24[13];
      v29 = &a1[v28];
      v30 = &a2[v28];
      v29[8] = v30[8];
      *v29 = *v30;
      goto LABEL_8;
    case 2:
      v15 = sub_20CE12644();
      (*(*(v15 - 8) + 32))(a1, a2, v15);
      sub_20CDFF32C(0, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial, sub_20CDFCB50);
      *&a1[v16[7]] = *&a2[v16[7]];
      *&a1[v16[8]] = *&a2[v16[8]];
      *&a1[v16[9]] = *&a2[v16[9]];
      *&a1[v16[10]] = *&a2[v16[10]];
      *&a1[v16[11]] = *&a2[v16[11]];
      v17 = v16[12];
      v18 = &a1[v17];
      v19 = &a2[v17];
      v18[8] = v19[8];
      *v18 = *v19;
      v20 = v16[13];
      v21 = &a1[v20];
      v22 = &a2[v20];
      v21[8] = v22[8];
      *v21 = *v22;
      goto LABEL_8;
    case 1:
      v7 = sub_20CE12644();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      sub_20CDFF32C(0, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
      *&a1[v8[7]] = *&a2[v8[7]];
      *&a1[v8[8]] = *&a2[v8[8]];
      *&a1[v8[9]] = *&a2[v8[9]];
      *&a1[v8[10]] = *&a2[v8[10]];
      *&a1[v8[11]] = *&a2[v8[11]];
      v9 = v8[12];
      v10 = &a1[v9];
      v11 = &a2[v9];
      v10[8] = v11[8];
      *v10 = *v11;
      v12 = v8[13];
      v13 = &a1[v12];
      v14 = &a2[v12];
      v13[8] = v14[8];
      *v13 = *v14;
LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v32 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v32);
}

uint64_t sub_20CDFD228(uint64_t a1)
{
  v2 = type metadata accessor for ResultsProcessor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ResultsProcessor(uint64_t a1)
{
  result = qword_27C8135E0;
  if (!qword_27C8135E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CDFD2E4(uint64_t a1)
{
  sub_20CDFF32C(319, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
  if (v1 <= 0x3F)
  {
    sub_20CDFF32C(319, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial, sub_20CDFCB50);
    if (v2 <= 0x3F)
    {
      sub_20CDFF32C(319, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete, sub_20CDFCB50);
      if (v3 <= 0x3F)
      {
        swift_initEnumMetadataMultiPayload();
      }
    }
  }
}

uint64_t sub_20CDFD494(uint64_t a1)
{
  result = sub_20CE12644();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_20CDFD540(uint64_t a1, int *a2)
{
  v3 = sub_20CE12644();
  (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t sub_20CDFD5E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20CE12644();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  v12 = a3[13];
  v13 = a1 + v12;
  v14 = a2 + v12;
  *v13 = *v14;
  *(v13 + 8) = *(v14 + 8);
  return a1;
}

uint64_t sub_20CDFD6BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20CE12644();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + a3[7]) = *(a2 + a3[7]);

  *(a1 + a3[8]) = *(a2 + a3[8]);

  *(a1 + a3[9]) = *(a2 + a3[9]);

  *(a1 + a3[10]) = *(a2 + a3[10]);

  *(a1 + a3[11]) = *(a2 + a3[11]);

  v7 = a3[12];
  v8 = a3[13];
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  v11 = a1 + v8;
  v12 = a2 + v8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  return a1;
}

void sub_20CDFD7EC(uint64_t a1)
{
  v2 = v1;
  sub_20CDFF32C(0, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial, sub_20CDFCB50);
  MEMORY[0x28223BE20](v4);
  v6 = v51 - v5 + 16;
  sub_20CDFF32C(0, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
  MEMORY[0x28223BE20](v7);
  v9 = v51 - v8 + 16;
  v10 = type metadata accessor for ResultsProcessor(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v51 - v15 + 16;
  MEMORY[0x28223BE20](v14);
  v18 = (v51 - v17 + 16);
  sub_20CDFE150(v2, v51 - v17 + 16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v20 = *v18;
      if (qword_27C811D00 != -1)
      {
        swift_once();
      }

      v21 = sub_20CE12CB4();
      __swift_project_value_buffer(v21, qword_27C817768);
      v22 = sub_20CE12C94();
      v23 = sub_20CE13CB4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v51[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_20CD96DCC(0x28737365636F7270, 0xEB00000000293A5FLL, v51);
        _os_log_impl(&dword_20CD70000, v22, v23, "[ResultsProcessor] Unexpected call to %s. Error -> Error.", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x20F314110](v25, -1, -1);
        MEMORY[0x20F314110](v24, -1, -1);
      }

      swift_willThrow();
      goto LABEL_32;
    }

    sub_20CDFEE48(v18, v9, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty);
    sub_20CDFE1B4(v16);
    swift_storeEnumTagMultiPayload();
    sub_20CDFE150(v16, v2);
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v38 = sub_20CE12CB4();
    __swift_project_value_buffer(v38, qword_27C817768);
    v27 = sub_20CE12C94();
    v28 = sub_20CE13CD4();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_36;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "[ResultsProcessor] Empty -> Partial.";
LABEL_28:
    _os_log_impl(&dword_20CD70000, v27, v28, v30, v29, 2u);
    MEMORY[0x20F314110](v29, -1, -1);
LABEL_36:

    return;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_20CDFEE48(v18, v6, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial);
    sub_20CDFE680(a1, v13);
    swift_storeEnumTagMultiPayload();
    sub_20CDFE150(v13, v2);
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v26 = sub_20CE12CB4();
    __swift_project_value_buffer(v26, qword_27C817768);
    v27 = sub_20CE12C94();
    v28 = sub_20CE13CD4();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_36;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "[ResultsProcessor] Partial -> Complete.";
    goto LABEL_28;
  }

  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v31 = sub_20CE12CB4();
  __swift_project_value_buffer(v31, qword_27C817768);
  v32 = sub_20CE12C94();
  v33 = sub_20CE13CB4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v51[0] = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_20CD96DCC(0x28737365636F7270, 0xEB00000000293A5FLL, v51);
    _os_log_impl(&dword_20CD70000, v32, v33, "[ResultsProcessor] Unexpected call to %s. Complete -> Error.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x20F314110](v35, -1, -1);
    MEMORY[0x20F314110](v34, -1, -1);
  }

  sub_20CDFEDF4();
  v20 = swift_allocError();
  swift_willThrow();
  v36 = swift_getEnumCaseMultiPayload();
  if (v36 > 1)
  {
    if (v36 == 2)
    {
      v37 = sub_20CE12644();
      (*(*(v37 - 8) + 8))(v18, v37);
    }

    else
    {
      v40 = sub_20CE12644();
      (*(*(v40 - 8) + 8))(v18, v40);
      sub_20CDFF32C(0, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete, sub_20CDFCB50);
    }
  }

  else
  {
    if (!v36)
    {
      sub_20CDFD228(v18);
      goto LABEL_32;
    }

    v39 = sub_20CE12644();
    (*(*(v39 - 8) + 8))(v18, v39);
  }

LABEL_32:
  *v2 = v20;
  swift_storeEnumTagMultiPayload();
  v41 = v20;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v42 = sub_20CE12CB4();
  __swift_project_value_buffer(v42, qword_27C817768);
  v43 = v20;
  v27 = sub_20CE12C94();
  v44 = sub_20CE13CB4();

  if (os_log_type_enabled(v27, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51[0] = v46;
    *v45 = 136315394;
    *(v45 + 4) = sub_20CD96DCC(0x28737365636F7270, 0xEB00000000293A5FLL, v51);
    *(v45 + 12) = 2080;
    swift_getErrorValue();
    v47 = sub_20CE14324();
    v49 = sub_20CD96DCC(v47, v48, v51);

    *(v45 + 14) = v49;
    _os_log_impl(&dword_20CD70000, v27, v44, "[ResultsProcessor] Error in %s: %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v46, -1, -1);
    MEMORY[0x20F314110](v45, -1, -1);

    goto LABEL_36;
  }
}

uint64_t sub_20CDFE150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResultsProcessor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDFE1B4@<X0>(uint64_t a1@<X8>)
{
  sub_20CDFF32C(0, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial, sub_20CDFCB50);
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = v25 - v5;
  v7 = sub_20CE12644();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE12674();
  v11 = sub_20CE12664();
  sub_20CE12684();
  v13 = v12;
  v14 = Array<A>.asHKAudiogramSensitivityPoints.getter(v11);
  if (v1)
  {
    v15 = *(v8 + 8);
    v15(v10, v7);

    v15(v26, v7);
  }

  else
  {
    v16 = v14;
    v17 = Array<A>.asHKAudiogramSensitivityPoints.getter(MEMORY[0x277D84F90]);
    v25[2] = v16;
    v25[3] = v17;
    v27 = v11;

    sub_20CDE50F0(MEMORY[0x277D84F90]);
    v25[1] = Array<A>.asHKAudiogramSensitivityPoints.getter(v27);

    (*(v8 + 16))(v6, v10, v7);
    *&v6[v4[7]] = v11;
    *&v6[v4[8]] = MEMORY[0x277D84F90];

    v27 = sub_20CDFF1E0(v19);
    sub_20CDFEEC8(&v27);

    *&v6[v4[9]] = v27;
    v20 = &v6[v4[12]];
    *v20 = v13;
    v20[8] = 0;
    v21 = &v6[v4[13]];
    *v21 = 0;
    v21[8] = 1;

    v27 = sub_20CDFF1E0(v22);
    sub_20CDFEEC8(&v27);

    *&v6[v4[10]] = v27;

    v27 = sub_20CDFF1E0(v23);
    sub_20CDFEEC8(&v27);
    v24 = *(v8 + 8);
    v24(v10, v7);

    *&v6[v4[11]] = v27;
    sub_20CDFEE48(v6, a1, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial);
    v24(v26, v7);
  }

  sub_20CDFF32C(0, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
}

uint64_t sub_20CDFE680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  sub_20CDFF32C(0, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete, sub_20CDFCB50);
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = v57 - v5;
  v6 = sub_20CE12644();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v57 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v57 - v15;
  MEMORY[0x28223BE20](v14);
  v67 = v57 - v17;
  v64 = a1;
  sub_20CE12674();
  (*(v7 + 32))(v13, v16, v6);
  v18 = *(v7 + 88);
  v68 = v6;
  v19 = v18(v13, v6);
  v20 = *MEMORY[0x277D12C48];
  v21 = *MEMORY[0x277D12C50];
  v22 = v19 == *MEMORY[0x277D12C48] || v19 == v21;
  v23 = MEMORY[0x277D12C58];
  v60 = v4;
  if (v22)
  {
    goto LABEL_6;
  }

  if (v19 != *MEMORY[0x277D12C58])
  {
    if (v19 != *MEMORY[0x277D12C40])
    {
      if (v19 == *MEMORY[0x277D12C60])
      {
        v24 = 0x7FFFFFFFFFFFFFFELL;
        goto LABEL_9;
      }

      (*(v7 + 8))(v13, v68);
    }

LABEL_6:
    v62 = 0;
    goto LABEL_10;
  }

  v24 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_9:
  v62 = v24;
LABEL_10:
  v25 = v68;
  v61 = *(v7 + 16);
  v61(v10, v66, v68);
  v26 = v18(v10, v25);
  v27 = v26 == v20 || v26 == v21;
  v63 = v7;
  if (v27)
  {
    v28 = 0;
    v29 = v66;
    goto LABEL_25;
  }

  v29 = v66;
  if (v26 == *v23)
  {
    goto LABEL_27;
  }

  if (v26 != *MEMORY[0x277D12C40])
  {
    if (v26 == *MEMORY[0x277D12C60])
    {
      v28 = 0x7FFFFFFFFFFFFFFELL;
      goto LABEL_25;
    }

    (*(v7 + 8))(v10, v68);
  }

  v28 = 0;
LABEL_25:
  if (v28 < v62)
  {
    sub_20CE12674();
    goto LABEL_28;
  }

LABEL_27:
  v61(v67, v29, v68);
LABEL_28:
  sub_20CDFF32C(0, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial, sub_20CDFCB50);
  v31 = v30;
  v32 = *(v29 + *(v30 + 28));

  v33 = sub_20CE12664();
  v34 = (v29 + *(v31 + 48));
  v35 = *v34;
  v36 = *(v34 + 8);
  sub_20CE12684();
  v38 = v37;
  v39 = v65;
  v40 = Array<A>.asHKAudiogramSensitivityPoints.getter(v32);
  if (v39)
  {
    v41 = *(v63 + 8);
    v42 = v68;
    v41(v67, v68);

    v41(v29, v42);
  }

  else
  {
    v65 = v35;
    v66 = v40;
    LODWORD(v64) = v36;
    v62 = Array<A>.asHKAudiogramSensitivityPoints.getter(v33);
    v69 = v32;

    sub_20CDE50F0(v43);
    v44 = Array<A>.asHKAudiogramSensitivityPoints.getter(v69);
    v45 = v63;
    v57[1] = v44;

    v47 = v58;
    v61(v58, v67, v68);
    v48 = v60;
    *&v47[v60[7]] = v32;
    *&v47[v48[8]] = v33;

    v69 = sub_20CDFF1E0(v49);
    sub_20CDFEEC8(&v69);

    *&v47[v48[9]] = v69;
    v50 = &v47[v48[12]];
    *v50 = v65;
    v50[8] = v64;
    v51 = &v47[v48[13]];
    *v51 = v38;
    v51[8] = 0;

    v69 = sub_20CDFF1E0(v52);
    sub_20CDFEEC8(&v69);

    *&v47[v48[10]] = v69;

    v69 = sub_20CDFF1E0(v53);
    sub_20CDFEEC8(&v69);
    v54 = *(v45 + 8);
    v55 = v68;
    v54(v67, v68);

    v56 = v59;
    *v60[11] = v69;
    sub_20CDFEE48(0, v56, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete);
    v54(v29, v55);
  }
}

void *sub_20CDFED50(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_20CDFF32C(0, &qword_27C812230, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
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

unint64_t sub_20CDFEDF4()
{
  result = qword_27C813670;
  if (!qword_27C813670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813670);
  }

  return result;
}

uint64_t sub_20CDFEE48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_20CDFF32C(0, a3, a4, sub_20CDFCB50);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CDFEEC8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_20CDFF274(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_20CDFEF44(v6);
  return sub_20CE14144();
}

void sub_20CDFEF44(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20CE14254();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CDFF288();
        v6 = sub_20CE13AE4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_20CD87BF8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_20CD87A4C(0, v2, 1, a1);
  }
}

uint64_t sub_20CDFF048(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20CDFF0D4(v3);
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

char *sub_20CDFF0E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CDFF2D4(0);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_20CDFF1E0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_20CE141C4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_20CDFED50(v3, 0);
  sub_20CDE5454((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_20CDFF288()
{
  result = qword_27C812330;
  if (!qword_27C812330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C812330);
  }

  return result;
}

void sub_20CDFF2D4(uint64_t a1)
{
  if (!qword_27C812340)
  {
    sub_20CD8A930();
    v1 = sub_20CE14264();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812340);
    }
  }
}

void sub_20CDFF32C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_20CDFF3C0()
{
  result = qword_27C813678;
  if (!qword_27C813678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813678);
  }

  return result;
}

uint64_t sub_20CDFF424(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = type metadata accessor for PreTestError(0);
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[4] = v3;
  v2[5] = v4;

  return MEMORY[0x2822009F8](sub_20CDFF4BC, 0, 0);
}

uint64_t sub_20CDFF4BC()
{
  if (sub_20CE129D4())
  {
    v3 = v0[4];
    v4 = v0[2];
    *v3 = v1;
    v3[1] = v2;
    swift_storeEnumTagMultiPayload();
    sub_20CD99698();
    swift_willThrowTypedImpl();
    sub_20CD99634(v3, v4);
  }

  else
  {
  }

  v5 = v0[1];

  return v5();
}

id sub_20CDFF5C8()
{
  _s24HearingTestUIBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27C8179E8 = result;
  return result;
}

uint64_t HTUINoiseView.Model.__allocating_init(mode:samples:)(_BYTE *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LOBYTE(a1) = *a1;
  sub_20CE12B24();
  *(v4 + 16) = a1;
  type metadata accessor for NoiseWaveformView.Model(0);
  v5 = swift_allocObject();
  *(v5 + 32) = MEMORY[0x277D84F90];
  sub_20CE12B24();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_20CDAC7A8();
  *(v4 + 24) = v5;
  return v4;
}

uint64_t sub_20CDFF6C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CE01450(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);
  sub_20CE12AF4();

  *a2 = *(v3 + 24);
}

double HTUINoiseView.body.getter@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = sub_20CE131B4();
  v21 = 0;
  sub_20CDFF91C(v4, &v13);
  v26 = v17;
  v27 = v18;
  v28[0] = v19[0];
  *(v28 + 9) = *(v19 + 9);
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v29[0] = v13;
  v29[1] = v14;
  v29[2] = v15;
  v29[3] = v16;
  v29[4] = v17;
  v29[5] = v18;
  v30[0] = v19[0];
  *(v30 + 9) = *(v19 + 9);
  sub_20CE014F4(&v22, &v12, sub_20CE00C48);
  sub_20CE0155C(v29, sub_20CE00C48);
  *(&v20[4] + 7) = v26;
  *(&v20[5] + 7) = v27;
  *(&v20[6] + 7) = v28[0];
  v20[7] = *(v28 + 9);
  *(v20 + 7) = v22;
  *(&v20[1] + 7) = v23;
  *(&v20[2] + 7) = v24;
  *(&v20[3] + 7) = v25;
  v6 = v20[5];
  *(a2 + 81) = v20[4];
  *(a2 + 97) = v6;
  v7 = v20[7];
  *(a2 + 113) = v20[6];
  *(a2 + 129) = v7;
  v8 = v20[1];
  *(a2 + 17) = v20[0];
  *(a2 + 33) = v8;
  result = *&v20[2];
  v10 = v20[3];
  *(a2 + 49) = v20[2];
  v11 = v21;
  *a2 = v5;
  *(a2 + 8) = 0x4040000000000000;
  *(a2 + 16) = v11;
  *(a2 + 65) = v10;
  return result;
}

uint64_t sub_20CDFF91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  v25 = a1;
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model, &protocol conformance descriptor for HTUINoiseView.Model);
  sub_20CE12AF4();

  v4 = *(a1 + 24);

  sub_20CE135F4();
  sub_20CE12FF4();
  swift_getKeyPath();
  v25 = a1;
  sub_20CE12AF4();

  swift_beginAccess();
  *v24 = v4;
  v5 = v17;
  *&v24[8] = v17;
  *&v24[24] = v18;
  v6 = v18;
  v7 = v19;
  v8 = v21;
  *&v24[40] = v19;
  *&v24[56] = v20;
  v9 = v22;
  *&v24[104] = v23;
  v10 = v20;
  *&v24[72] = v21;
  *&v24[88] = v22;
  v11 = *&v24[48];
  *(a2 + 32) = *&v24[32];
  *(a2 + 48) = v11;
  v12 = *&v24[16];
  *a2 = *v24;
  *(a2 + 16) = v12;
  *(a2 + 96) = *&v24[96];
  v13 = *&v24[80];
  *(a2 + 64) = *&v24[64];
  *(a2 + 80) = v13;
  v28 = v7;
  v27 = v6;
  v14 = *(a1 + 16);
  *(a2 + 112) = *&v24[112];
  *(a2 + 120) = v14;
  v25 = v4;
  v26 = v5;
  v32 = v23;
  v31 = v9;
  v30 = v8;
  v29 = v10;
  sub_20CE014F4(v24, &v16, sub_20CE00D08);
  sub_20CE0155C(&v25, sub_20CE00D08);
}

uint64_t HTUINoiseView.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v1);
  return sub_20CE143B4();
}

uint64_t sub_20CDFFC50()
{
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model, &protocol conformance descriptor for HTUINoiseView.Model);
  sub_20CE12AF4();

  v1 = *(v0 + 24);
  swift_getKeyPath();

  sub_20CE12AF4();

  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16))
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20CE01450(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);
    sub_20CE12AE4();
  }
}

uint64_t (*sub_20CDFFE34(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CDFFE88;
}

uint64_t sub_20CDFFE88(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_20CDFFC50();
  }

  return result;
}

uint64_t sub_20CDFFEBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model, &protocol conformance descriptor for HTUINoiseView.Model);
  sub_20CE12AF4();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_20CDFFFB0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model, &protocol conformance descriptor for HTUINoiseView.Model);
  sub_20CE12AF4();

  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_20CE0006C(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (v2 == *(v1 + 16))
  {
    *(v1 + 16) = v2;
    return sub_20CDFFC50();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model, &protocol conformance descriptor for HTUINoiseView.Model);
    sub_20CE12AE4();
  }
}

uint64_t sub_20CE00194(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2 & 1;
  return sub_20CDFFC50();
}

uint64_t (*sub_20CE001F4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV13HearingTestUI13HTUINoiseView5Model___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model, &protocol conformance descriptor for HTUINoiseView.Model);
  sub_20CE12AF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_20CE12B14();

  v4[7] = sub_20CDFFE34(v4);
  return sub_20CE0032C;
}

void sub_20CE0032C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_20CE12B04();

  free(v1);
}

double sub_20CE003C0()
{
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model, &protocol conformance descriptor for HTUINoiseView.Model);
  sub_20CE12AF4();

  return result;
}

double sub_20CE00464@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model, &protocol conformance descriptor for HTUINoiseView.Model);
  sub_20CE12AF4();

  *a2 = *(v3 + 24);

  return result;
}

uint64_t sub_20CE0053C(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model, &protocol conformance descriptor for HTUINoiseView.Model);
    sub_20CE12AE4();
  }
}

uint64_t sub_20CE00670(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model, &protocol conformance descriptor for HTUINoiseView.Model);

  sub_20CE12AF4();

  sub_20CDAC38C(v2);
}

uint64_t sub_20CE00740()
{
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model, &protocol conformance descriptor for HTUINoiseView.Model);
  sub_20CE12AF4();

  v1 = *(v0 + 24);
  swift_getKeyPath();
  sub_20CE01450(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);

  sub_20CE12AF4();

  v2 = *(v1 + 24);

  return v2;
}

uint64_t sub_20CE00870(uint64_t a1)
{
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model, &protocol conformance descriptor for HTUINoiseView.Model);
  sub_20CE12AF4();

  sub_20CDAC38C(a1);
}

void (*sub_20CE0092C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  swift_getKeyPath();
  v4[3] = OBJC_IVAR____TtCV13HearingTestUI13HTUINoiseView5Model___observationRegistrar;
  v4[1] = v1;
  v4[4] = sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model, &protocol conformance descriptor for HTUINoiseView.Model);
  sub_20CE12AF4();

  v5 = *(v1 + 24);
  swift_getKeyPath();
  v4[1] = v5;
  sub_20CE01450(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);

  sub_20CE12AF4();

  v6 = *(v5 + 24);

  *v4 = v6;
  return sub_20CE00ABC;
}

void sub_20CE00ABC(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  swift_getKeyPath();
  v3[1] = v3[2];
  if (a2)
  {

    sub_20CE12AF4();

    sub_20CDAC38C(v4);
  }

  else
  {
    sub_20CE12AF4();

    sub_20CDAC38C(v4);
  }

  free(v3);
}

uint64_t HTUINoiseView.Model.init(mode:samples:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  sub_20CE12B24();
  *(v3 + 16) = v5;
  type metadata accessor for NoiseWaveformView.Model(0);
  v6 = swift_allocObject();
  *(v6 + 32) = MEMORY[0x277D84F90];
  sub_20CE12B24();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  sub_20CDAC7A8();
  *(v3 + 24) = v6;
  return v3;
}

void sub_20CE00C48(uint64_t a1)
{
  if (!qword_27C813688)
  {
    sub_20CE00CA0(255);
    v1 = sub_20CE13634();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813688);
    }
  }
}

void sub_20CE00CA0(uint64_t a1)
{
  if (!qword_27C813690)
  {
    sub_20CE00D08();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C813690);
    }
  }
}

void sub_20CE00D08()
{
  if (!qword_27C813698)
  {
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813698);
    }
  }
}

uint64_t type metadata accessor for HTUINoiseView.Model(uint64_t a1)
{
  result = qword_27C8136A0;
  if (!qword_27C8136A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CE00DAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 16) = v2;
  return sub_20CDFFC50();
}

uint64_t HTUINoiseView.Model.deinit()
{

  v1 = OBJC_IVAR____TtCV13HearingTestUI13HTUINoiseView5Model___observationRegistrar;
  v2 = sub_20CE12B34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t HTUINoiseView.Model.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCV13HearingTestUI13HTUINoiseView5Model___observationRegistrar;
  v2 = sub_20CE12B34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_20CE00F34@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = sub_20CE131B4();
  v21 = 0;
  sub_20CDFF91C(v4, &v13);
  v26 = v17;
  v27 = v18;
  v28[0] = v19[0];
  *(v28 + 9) = *(v19 + 9);
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v29[0] = v13;
  v29[1] = v14;
  v29[2] = v15;
  v29[3] = v16;
  v29[4] = v17;
  v29[5] = v18;
  v30[0] = v19[0];
  *(v30 + 9) = *(v19 + 9);
  sub_20CE014F4(&v22, &v12, sub_20CE00C48);
  sub_20CE0155C(v29, sub_20CE00C48);
  *(&v20[4] + 7) = v26;
  *(&v20[5] + 7) = v27;
  *(&v20[6] + 7) = v28[0];
  v20[7] = *(v28 + 9);
  *(v20 + 7) = v22;
  *(&v20[1] + 7) = v23;
  *(&v20[2] + 7) = v24;
  *(&v20[3] + 7) = v25;
  v6 = v20[5];
  *(a2 + 81) = v20[4];
  *(a2 + 97) = v6;
  v7 = v20[7];
  *(a2 + 113) = v20[6];
  *(a2 + 129) = v7;
  v8 = v20[1];
  *(a2 + 17) = v20[0];
  *(a2 + 33) = v8;
  result = *&v20[2];
  v10 = v20[3];
  *(a2 + 49) = v20[2];
  v11 = v21;
  *a2 = v5;
  *(a2 + 8) = 0x4040000000000000;
  *(a2 + 16) = v11;
  *(a2 + 65) = v10;
  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for HTUINoiseView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HTUINoiseView(uint64_t result, int a2, int a3)
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

uint64_t sub_20CE01210(uint64_t a1)
{
  result = sub_20CE12B34();
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

void sub_20CE013BC(uint64_t a1)
{
  if (!qword_27C8136B8)
  {
    sub_20CE00C48(255);
    sub_20CE01450(&unk_27C8136C0, sub_20CE00C48, MEMORY[0x277CE14C0]);
    v1 = sub_20CE13584();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8136B8);
    }
  }
}

uint64_t sub_20CE01450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CE01498()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_20CE014F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE0155C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CE01620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (!a2)
  {
    memset(v10, 0, sizeof(v10));
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjectType = swift_getObjectType();
  *&v8 = a2;
  sub_20CD8A9E8(&v8, v10);
  if (v3)
  {
LABEL_3:
    v3 = sub_20CE13884();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_20CD8CFF0(v10);
  return v6 & 1;
}

uint64_t sub_20CE016F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_20CE07550();
    v2 = sub_20CE140A4();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    swift_dynamicCast();
    result = sub_20CE14074();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_20CE01910(void *a1)
{
  ObjectType = swift_getObjectType();
  v29 = sub_20CE136C4();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &ObjectType - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20CE136E4();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE06E60(0, &unk_27C813720, &qword_27C812CB0, 0x277CBEB70, MEMORY[0x277D11BF0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v11 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &ObjectType - v12;
  aBlock[0] = a1;
  sub_20CD83128(0, &qword_27C812CB0, 0x277CBEB70);
  v14 = a1;
  sub_20CE12C74();
  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  v15 = sub_20CE13D44();
  (*(v8 + 16))(v11, v13, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v11, v7);
  v19 = ObjectType;
  v20 = v27;
  *(v18 + v17) = v27;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  aBlock[4] = sub_20CE06D20;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = &block_descriptor_12;
  v21 = _Block_copy(aBlock);
  v22 = v20;
  sub_20CE136D4();
  v33 = MEMORY[0x277D84F90];
  sub_20CDD8C0C();
  sub_20CE06DFC(0, &qword_27C812AC0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_20CDD8CC8();
  v24 = v28;
  v23 = v29;
  sub_20CE14044();
  MEMORY[0x20F313260](0, v5, v24, v21);
  _Block_release(v21);

  (*(v32 + 8))(v24, v23);
  (*(v30 + 8))(v5, v31);
  (*(v8 + 8))(v13, v7);
}

id sub_20CE01DE8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20CE01EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE06E60(0, &unk_27C813720, &qword_27C812CB0, 0x277CBEB70, MEMORY[0x277D11BF0]);
  sub_20CE12C64();
  v4 = *&v51[0];
  sub_20CE0261C(*&v51[0]);
  if (!*(*(a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions) + 16))
  {
    if (qword_27C811D18 != -1)
    {
      swift_once();
    }

    v22 = sub_20CE12CB4();
    __swift_project_value_buffer(v22, qword_27C8177B0);
    v23 = sub_20CE12C94();
    v24 = sub_20CE13CD4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v51[0] = v26;
      *v25 = 136446210;
      v27 = sub_20CE14414();
      v29 = sub_20CD96DCC(v27, v28, v51);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_20CD70000, v23, v24, "[%{public}s] No active interruptions being tracked", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x20F314110](v26, -1, -1);
      MEMORY[0x20F314110](v25, -1, -1);
    }

    goto LABEL_33;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CBEB40]) initWithOrderedSet_];

  sub_20CE016F4(v6);

  v7 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v8 = sub_20CE13C34();

  v9 = [v7 initWithSet_];

  [v5 intersectOrderedSet_];
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v10 = sub_20CE12CB4();
  __swift_project_value_buffer(v10, qword_27C8177B0);
  v11 = v5;
  v12 = sub_20CE12C94();
  v13 = sub_20CE13CD4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v51[0] = v15;
    *v14 = 136446466;
    v16 = sub_20CE14414();
    v18 = v4;
    v19 = v9;
    v20 = sub_20CD96DCC(v16, v17, v51);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2048;
    v21 = [v11 count];

    *(v14 + 14) = v21;
    v9 = v19;
    v4 = v18;

    _os_log_impl(&dword_20CD70000, v12, v13, "[%{public}s] Handling %ld interrupts.", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x20F314110](v15, -1, -1);
    MEMORY[0x20F314110](v14, -1, -1);
  }

  else
  {
  }

  v30 = v11;
  if ([v30 count] < 1)
  {

    return;
  }

  sub_20CE0292C(v30);
  v31 = [v30 firstObject];

  if (v31)
  {
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51[0] = v49;
  v51[1] = v50;
  if (*(&v50 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v48 == 5 || v48 == 2)
      {
        v32 = a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionListener;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v33 = v9;
          v34 = *(v32 + 8);
          ObjectType = swift_getObjectType();
          (*(v34 + 24))(ObjectType, v34);
LABEL_31:
          swift_unknownObjectRelease();
          v9 = v33;
        }
      }

      else
      {
        v45 = a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionListener;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v33 = v9;
          v46 = *(v45 + 8);
          v47 = swift_getObjectType();
          (*(v46 + 8))(v47, v46);
          goto LABEL_31;
        }
      }

      LOBYTE(v51[0]) = v48;
      sub_20CE02A94(v51);

      goto LABEL_33;
    }
  }

  else
  {
    sub_20CD8CFF0(v51);
  }

  v36 = v4;
  v37 = sub_20CE12C94();
  v38 = sub_20CE13CC4();

  if (!os_log_type_enabled(v37, v38))
  {

    return;
  }

  v39 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  *&v51[0] = v41;
  *v39 = 136446466;
  v42 = sub_20CE14414();
  v44 = sub_20CD96DCC(v42, v43, v51);

  *(v39 + 4) = v44;
  *(v39 + 12) = 2112;
  *(v39 + 14) = v36;
  *v40 = v36;
  v4 = v36;
  _os_log_impl(&dword_20CD70000, v37, v38, "[%{public}s] Unexpected Interrupts to process %@", v39, 0x16u);
  sub_20CDFA454(v40);
  MEMORY[0x20F314110](v40, -1, -1);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  MEMORY[0x20F314110](v41, -1, -1);
  MEMORY[0x20F314110](v39, -1, -1);

LABEL_33:
}

void sub_20CE0261C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_20CE13714();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  *v7 = sub_20CE13D44();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_20CE13744();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_10;
  }

  v9 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption);
  if (v9)
  {
    v10 = v9[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_interruptionType];
    if (v10 > 7 || ((1 << v10) & 0xE7) == 0)
    {
      v24 = v9[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_interruptionType];
      v12 = v9;
      v22 = [a1 containsObject_];
      swift_unknownObjectRelease();
      v13 = sub_20CD83170();
      [v13 setEnabled_];
    }

    else
    {
      v12 = v9;
      v13 = sub_20CD83170();
      [v13 setEnabled_];
    }

    return;
  }

  if (qword_27C811D18 != -1)
  {
    goto LABEL_15;
  }

LABEL_10:
  v14 = sub_20CE12CB4();
  __swift_project_value_buffer(v14, qword_27C8177B0);
  v15 = sub_20CE12C94();
  v16 = sub_20CE13CD4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136446210;
    v19 = sub_20CE14414();
    v21 = sub_20CD96DCC(v19, v20, &v23);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_20CD70000, v15, v16, "[%{public}s] No VC to update", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x20F314110](v18, -1, -1);
    MEMORY[0x20F314110](v17, -1, -1);
  }
}

void *sub_20CE0292C(void *result)
{
  v2 = OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_encounteredInterruptionRequiringFitCheck;
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_encounteredInterruptionRequiringFitCheck))
  {
    return result;
  }

  v3 = [result array];
  v4 = sub_20CE13AB4();

  v5 = sub_20CE1104C(v4);

  if (!v5)
  {
    v10 = 0;
LABEL_18:
    *(v1 + v2) = v10;
    return result;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    v10 = 0;
LABEL_17:

    goto LABEL_18;
  }

  result = sub_20CE13B84();
  v7 = 0;
  while (v7 < *(v5 + 16))
  {
    v8 = *(v5 + 32 + v7);
    sub_20CE13B74();
    sub_20CE13B24();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v8 == 3 || v8 == 0)
    {
      v10 = 1;
      goto LABEL_17;
    }

    if (v6 == ++v7)
    {
      v10 = 0;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void sub_20CE02A94(unsigned __int8 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20CE136C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v131 = v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_20CE136E4();
  v130 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v129 = v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_20CE13704();
  v128 = *(v134 - 1);
  v9 = MEMORY[0x28223BE20](v134);
  v126 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v127 = v120 - v11;
  v12 = sub_20CE13714();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  v125 = sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  *v15 = sub_20CE13D44();
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  LOBYTE(a1) = sub_20CE13744();
  (*(v13 + 8))(v15, v12);
  if (a1)
  {
    v123 = v6;
    v124 = v5;
    if (qword_27C811D18 == -1)
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
  v17 = sub_20CE12CB4();
  v18 = __swift_project_value_buffer(v17, qword_27C8177B0);
  v19 = sub_20CE12C94();
  v20 = sub_20CE13CD4();
  if (os_log_type_enabled(v19, v20))
  {
    v122 = v18;
    v133 = v2;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446722;
    v23 = sub_20CE14414();
    v24 = v16;
    v26 = sub_20CD96DCC(v23, v25, aBlock);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_20CD96DCC(0xD000000000000022, 0x800000020CE20B60, aBlock);
    *(v21 + 22) = 2080;
    if (v16 > 3)
    {
      v33 = 0x800000020CE1E140;
      v34 = 0xD000000000000015;
      if (v16 == 6)
      {
        v34 = 0xD000000000000013;
      }

      else
      {
        v33 = 0x800000020CE1E100;
      }

      v35 = 0x800000020CE1E180;
      v36 = 0xD000000000000018;
      if (v16 == 4)
      {
        v36 = 0xD000000000000012;
      }

      else
      {
        v35 = 0x800000020CE1E160;
      }

      if (v16 <= 5)
      {
        v31 = v36;
      }

      else
      {
        v31 = v34;
      }

      if (v16 <= 5)
      {
        v32 = v35;
      }

      else
      {
        v32 = v33;
      }
    }

    else
    {
      v27 = 0xEF64657461766974;
      v28 = 0x6361654420707041;
      v29 = 0x800000020CE1E1C0;
      v30 = 0xD000000000000017;
      if (v16 != 2)
      {
        v30 = 0xD000000000000012;
        v29 = 0x800000020CE1E1A0;
      }

      if (!v16)
      {
        v28 = 0xD000000000000010;
        v27 = 0x800000020CE1E1E0;
      }

      if (v16 <= 1)
      {
        v31 = v28;
      }

      else
      {
        v31 = v30;
      }

      if (v16 <= 1)
      {
        v32 = v27;
      }

      else
      {
        v32 = v29;
      }
    }

    v37 = sub_20CD96DCC(v31, v32, aBlock);

    *(v21 + 24) = v37;
    _os_log_impl(&dword_20CD70000, v19, v20, "[%{public}s] %s called with %s.", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v22, -1, -1);
    MEMORY[0x20F314110](v21, -1, -1);

    v2 = v133;
    v16 = v24;
  }

  else
  {
  }

  v38 = &v2[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = &v2[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption];
    v41 = *&v2[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption];
    if (v41)
    {
      v42 = *(v40 + 1);
      v43 = v41[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_interruptionType];
      v120[1] = ObjectType;
      if (v16 == 5 || v16 == 2)
      {
        if (v43 != 2 && v43 != 5)
        {
LABEL_35:
          v121 = v16;
          v122 = Strong;
          sub_20CE06F14(v41, v42);
          v134 = v41;
          v44 = v42;
          v45 = sub_20CE12C94();
          v46 = sub_20CE13CD4();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            aBlock[0] = v48;
            *v47 = 136446210;
            v49 = sub_20CE14414();
            v51 = sub_20CD96DCC(v49, v50, aBlock);

            *(v47 + 4) = v51;
            _os_log_impl(&dword_20CD70000, v45, v46, "[%{public}s] The new interruption has higher priority and will be pushed onto the stack.", v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v48);
            MEMORY[0x20F314110](v48, -1, -1);
            MEMORY[0x20F314110](v47, -1, -1);
          }

          v52 = v121;
          LOBYTE(aBlock[0]) = v121;
          v53 = sub_20CE03A4C(aBlock);
          v54 = sub_20CD83170();
          [v54 setEnabled_];

          v55 = [v53 navigationItem];
          [v55 setHidesBackButton_];

          LOBYTE(aBlock[0]) = 1;
          sub_20CE05FC8(aBlock);
          sub_20CE064B8();
          sub_20CDE4F50(v53, 1);

          v56 = v134;
          swift_unknownObjectRelease();
          v57 = *v40;
          v58 = *(v40 + 1);
          *v40 = v53;
          goto LABEL_45;
        }
      }

      else if (v43 != 2 && v43 != 5)
      {
        v117 = v43 != 3 && v16 == 3;
        v118 = v117 || v16 == 7;
        v119 = v118;
        if (v43 != 7 && v119)
        {
          goto LABEL_35;
        }
      }

      sub_20CE06F14(v41, v42);
      v84 = v41;
      v85 = v42;
      v86 = sub_20CE12C94();
      v87 = sub_20CE13CD4();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        aBlock[0] = v89;
        *v88 = 136446210;
        v90 = sub_20CE14414();
        v92 = sub_20CD96DCC(v90, v91, aBlock);

        *(v88 + 4) = v92;
        _os_log_impl(&dword_20CD70000, v86, v87, "[%{public}s] We already have an active interrution with higher priority.", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        MEMORY[0x20F314110](v89, -1, -1);
        MEMORY[0x20F314110](v88, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v121 = v16;
      v122 = Strong;
      v66 = *(v38 + 1);
      v67 = sub_20CE12C94();
      v68 = sub_20CE13CD4();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v133 = v2;
        v71 = v70;
        aBlock[0] = v70;
        *v69 = 136446210;
        v72 = sub_20CE14414();
        v74 = sub_20CD96DCC(v72, v73, aBlock);

        *(v69 + 4) = v74;
        _os_log_impl(&dword_20CD70000, v67, v68, "[%{public}s] Will present new interruption.", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        MEMORY[0x20F314110](v71, -1, -1);
        MEMORY[0x20F314110](v69, -1, -1);
      }

      v75 = swift_getObjectType();
      if ((*(v66 + 8))(v75, v66))
      {
        v76 = v121;
        LOBYTE(aBlock[0]) = v121;
        v77 = sub_20CE03A4C(aBlock);
        v78 = v76 < 8;
        v79 = 0xE7u >> v76;
        v80 = sub_20CD83170();
        [v80 setEnabled_];

        v81 = v77;
        v82 = [v81 navigationItem];
        [v82 setHidesBackButton_];

        v83 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
        v42 = v83;
        [v42 setModalInPresentation_];
        [v42 setModalPresentationStyle_];

        (*(v66 + 16))(v42, v75, v66);
        swift_unknownObjectRelease();
        v57 = *v40;
        v58 = *(v40 + 1);
        *v40 = v81;
LABEL_45:
        *(v40 + 1) = v42;
        sub_20CE06ED4(v57, v58);
        return;
      }

      v93 = sub_20CE12C94();
      v94 = sub_20CE13CB4();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        aBlock[0] = v96;
        *v95 = 136446210;
        v97 = sub_20CE14414();
        v99 = sub_20CD96DCC(v97, v98, aBlock);

        *(v95 + 4) = v99;
        _os_log_impl(&dword_20CD70000, v93, v94, "[%{public}s] Aborting presentation as we aren't able to present now.", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v96);
        MEMORY[0x20F314110](v96, -1, -1);
        MEMORY[0x20F314110](v95, -1, -1);
      }

      v100 = sub_20CE12C94();
      v101 = sub_20CE13CD4();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        aBlock[0] = v103;
        *v102 = 136446210;
        v104 = sub_20CE14414();
        v106 = sub_20CD96DCC(v104, v105, aBlock);

        *(v102 + 4) = v106;
        _os_log_impl(&dword_20CD70000, v100, v101, "[%{public}s] Will try to present again shortly.", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v103);
        MEMORY[0x20F314110](v103, -1, -1);
        MEMORY[0x20F314110](v102, -1, -1);
      }

      v108 = v123;
      v107 = v124;
      v125 = sub_20CE13D44();
      v109 = v126;
      sub_20CE136F4();
      v110 = v127;
      sub_20CE13734();
      v133 = *(v128 + 8);
      (v133)(v109, v134);
      v111 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v112 = swift_allocObject();
      *(v112 + 16) = v111;
      *(v112 + 24) = v121;
      aBlock[4] = sub_20CE06EC8;
      aBlock[5] = v112;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20CDB3E40;
      aBlock[3] = &block_descriptor_15;
      v113 = _Block_copy(aBlock);

      v114 = v129;
      sub_20CE136D4();
      v135 = MEMORY[0x277D84F90];
      sub_20CDD8C0C();
      sub_20CE06DFC(0, &qword_27C812AC0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_20CDD8CC8();
      v115 = v131;
      sub_20CE14044();
      v116 = v125;
      MEMORY[0x20F313230](v110, v114, v115, v113);
      _Block_release(v113);
      swift_unknownObjectRelease();

      (*(v108 + 8))(v115, v107);
      (*(v130 + 8))(v114, v132);
      (v133)(v110, v134);
    }
  }

  else
  {
    v59 = sub_20CE12C94();
    v60 = sub_20CE13CC4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock[0] = v62;
      *v61 = 136446210;
      v63 = sub_20CE14414();
      v65 = sub_20CD96DCC(v63, v64, aBlock);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_20CD70000, v59, v60, "[%{public}s] Attempting to present interruptions without a delegate.", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x20F314110](v62, -1, -1);
      MEMORY[0x20F314110](v61, -1, -1);
    }
  }
}

char *sub_20CE03A4C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_20CE13714();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  *v7 = sub_20CE13D44();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  LOBYTE(a1) = sub_20CE13744();
  result = (*(v5 + 8))(v7, v4);
  if (a1)
  {
    v10 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_requirementStatusManager);
    v11 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_deviceManager);
    if (*(v11 + 24) <= 0x3Fu && (v12 = [*(v11 + 16) name]) != 0)
    {
      v13 = v12;
      v14 = sub_20CE13954();
      v16 = v15;

      v17 = v14;
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    v18 = sub_20CE06F54(v10, v17, v16, v8);

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    v22 = &v18[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_continueButtonHandler];
    v23 = *&v18[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_continueButtonHandler];
    v24 = *&v18[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_continueButtonHandler + 8];
    *v22 = sub_20CE070F0;
    v22[1] = v21;
    v25 = v18;

    sub_20CD84E24(v23, v24);

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    v29 = &v25[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_startOverButtonHandler];
    v30 = *&v25[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_startOverButtonHandler];
    v31 = *&v25[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_startOverButtonHandler + 8];
    *v29 = sub_20CE070F8;
    v29[1] = v28;

    sub_20CD84E24(v30, v31);

    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    *(v34 + 24) = v33;
    *(v34 + 32) = v8;
    v35 = &v25[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_endTestButtonHandler];
    v36 = *&v25[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_endTestButtonHandler];
    v37 = *&v25[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_endTestButtonHandler + 8];
    *v35 = sub_20CE07128;
    v35[1] = v34;

    sub_20CD84E24(v36, v37);

    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v39;
    v41 = &v25[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_doneButtonHandler];
    v42 = *&v25[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_doneButtonHandler];
    v43 = *&v25[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_doneButtonHandler + 8];
    *v41 = sub_20CE07180;
    v41[1] = v40;

    sub_20CD84E24(v42, v43);

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20CE03EDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = v4;
      sub_20CE03F78(v5);

      v3 = v6;
    }
  }
}

void sub_20CE03F78(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20CE13714();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  *v8 = sub_20CE13D44();
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v9 = sub_20CE13744();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (qword_27C811D18 == -1)
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
  v10 = sub_20CE12CB4();
  __swift_project_value_buffer(v10, qword_27C8177B0);
  v11 = sub_20CE12C94();
  v12 = sub_20CE13CD4();
  v13 = os_log_type_enabled(v11, v12);
  v131 = ObjectType;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&aBlock = v15;
    *v14 = 136446210;
    v16 = sub_20CE14414();
    v18 = sub_20CD96DCC(v16, v17, &aBlock);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_20CD70000, v11, v12, "[%{public}s] interruptionContinueButtonTapped ", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x20F314110](v15, -1, -1);
    MEMORY[0x20F314110](v14, -1, -1);
  }

  v19 = (v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption);
  v20 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption);
  if (!v20)
  {
    v22 = sub_20CE12C94();
    v30 = sub_20CE13CC4();
    if (os_log_type_enabled(v22, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&aBlock = v32;
      *v31 = 136446210;
      v33 = sub_20CE14414();
      v35 = sub_20CD96DCC(v33, v34, &aBlock);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_20CD70000, v22, v30, "[%{public}s] Continue tapped on interruption screen but no active interruption being tracked", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x20F314110](v32, -1, -1);
      MEMORY[0x20F314110](v31, -1, -1);
    }

    goto LABEL_13;
  }

  v21 = v19[1];
  if (a1 && v20 != a1)
  {
    sub_20CE06F14(*(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption), v19[1]);
    v22 = a1;
    v23 = sub_20CE12C94();
    v24 = sub_20CE13CD4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&aBlock = v26;
      *v25 = 136446210;
      v27 = sub_20CE14414();
      v29 = sub_20CD96DCC(v27, v28, &aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_20CD70000, v23, v24, "[%{public}s] Continue tapped on an interruption that is not the active interruption. Ignoring tap.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x20F314110](v26, -1, -1);
      MEMORY[0x20F314110](v25, -1, -1);
    }

LABEL_13:
    return;
  }

  LOBYTE(aBlock) = 1;
  v36 = v20;
  v37 = v21;
  sub_20CE05FC8(&aBlock);
  v38 = *(*(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager) + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions);
  v137 = sub_20CDC18C0;
  v138 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v136 = sub_20CE01620;
  *(&v136 + 1) = &block_descriptor_41;
  v39 = _Block_copy(&aBlock);
  v40 = objc_opt_self();
  v129 = v37;
  v41 = v38;
  v42 = [v40 predicateWithBlock_];
  _Block_release(v39);

  v43 = [v41 filteredOrderedSetUsingPredicate_];

  v44 = [objc_allocWithZone(MEMORY[0x277CBEB40]) initWithOrderedSet_];

  sub_20CE016F4(v45);

  v46 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v47 = sub_20CE13C34();

  v48 = [v46 initWithSet_];

  v128 = v48;
  [v44 intersectOrderedSet_];
  v130 = v44;
  if ([v44 firstObject])
  {
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v133 = 0u;
    v134 = 0u;
  }

  aBlock = v133;
  v136 = v134;
  if (*(&v134 + 1))
  {
    if (swift_dynamicCast())
    {
      v49 = v132;
      v50 = sub_20CE12C94();
      v51 = sub_20CE13CD4();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&aBlock = v53;
        *v52 = 136446466;
        v54 = sub_20CE14414();
        v56 = sub_20CD96DCC(v54, v55, &aBlock);
        v131 = v36;
        v57 = v56;

        *(v52 + 4) = v57;
        *(v52 + 12) = 2080;
        LOBYTE(v133) = v49;
        v58 = sub_20CE13974();
        v60 = sub_20CD96DCC(v58, v59, &aBlock);
        v36 = v131;

        *(v52 + 14) = v60;
        _os_log_impl(&dword_20CD70000, v50, v51, "[%{public}s] Still have an interrupt to process: %s", v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F314110](v53, -1, -1);
        MEMORY[0x20F314110](v52, -1, -1);
      }

      v61 = v130;
      LOBYTE(aBlock) = v49;
      v62 = sub_20CE03A4C(&aBlock);
      v63 = sub_20CD83170();
      [v63 setEnabled_];

      v64 = [v62 navigationItem];
      [v64 setHidesBackButton_];

      v65 = v129;
      sub_20CDE4F50(v62, 1);

      v66 = *v19;
      v67 = v19[1];
      *v19 = v62;
      v19[1] = v21;
      sub_20CE06ED4(v66, v67);
      return;
    }
  }

  else
  {
    sub_20CD8CFF0(&aBlock);
  }

  v68 = sub_20CE12C94();
  v69 = sub_20CE13CD4();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = v36;
    v72 = swift_slowAlloc();
    *&aBlock = v72;
    *v70 = 136446210;
    v73 = sub_20CE14414();
    v75 = sub_20CD96DCC(v73, v74, &aBlock);

    *(v70 + 4) = v75;
    _os_log_impl(&dword_20CD70000, v68, v69, "[%{public}s] User hit continue and all interrupts have recovered", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    v76 = v72;
    v36 = v71;
    MEMORY[0x20F314110](v76, -1, -1);
    MEMORY[0x20F314110](v70, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_encounteredInterruptionRequiringFitCheck) != 1)
  {
    goto LABEL_28;
  }

  v77 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v78 = sub_20CE13914();
  v79 = [v77 initWithSuiteName_];

  if (!v79)
  {
    __break(1u);
    return;
  }

  v80 = sub_20CE0F018();

  if ((v80 & 1) == 0)
  {
    v99 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_deviceManager);
    if (*(v99 + 24) <= 0x3Fu && (v100 = [*(v99 + 16) identifier]) != 0)
    {
      v101 = v100;
      v102 = [objc_allocWithZone(MEMORY[0x277D12C08]) initWithDeviceAddress_];

      [v102 setFitNoiseCheckDelegate_];
      v103 = v129;
      sub_20CDE4F50(v102, 1);
    }

    else
    {
      v119 = sub_20CE12C94();
      v120 = sub_20CE13CC4();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        *&aBlock = v122;
        *v121 = 136446210;
        v123 = sub_20CE14414();
        v125 = sub_20CD96DCC(v123, v124, &aBlock);

        *(v121 + 4) = v125;
        _os_log_impl(&dword_20CD70000, v119, v120, "[%{public}s] Compatible AirPods are not connected. Can not continue with Fit Check after interruption recovery.", v121, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v122);
        MEMORY[0x20F314110](v122, -1, -1);
        MEMORY[0x20F314110](v121, -1, -1);
      }

      v126 = v129;
    }
  }

  else
  {
LABEL_28:
    v81 = v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionListener;
    if (swift_unknownObjectWeakLoadStrong() && (v82 = *(v81 + 8), v83 = swift_getObjectType(), v84 = (*(v82 + 32))(v83, v82), swift_unknownObjectRelease(), v84 != 4))
    {
      v104 = sub_20CE12C94();
      v105 = sub_20CE13CD4();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *&aBlock = v107;
        *v106 = 136446210;
        v108 = sub_20CE14414();
        v110 = sub_20CD96DCC(v108, v109, &aBlock);

        *(v106 + 4) = v110;
        _os_log_impl(&dword_20CD70000, v104, v105, "[%{public}s] Blocking reason found, presenting alert", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v107);
        MEMORY[0x20F314110](v107, -1, -1);
        MEMORY[0x20F314110](v106, -1, -1);
      }

      v111 = v130;
      v112 = v128;
      v113 = sub_20CDA3584(v84);
      v115 = v114;
      v116 = sub_20CDA3760(v84);
      v117 = v129;
      sub_20CD95C28(v113, v115, v116, v118, 0);
    }

    else
    {
      v85 = sub_20CE12C94();
      v86 = sub_20CE13CD4();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *&aBlock = v88;
        *v87 = 136446210;
        v89 = sub_20CE14414();
        v91 = sub_20CD96DCC(v89, v90, &aBlock);

        *(v87 + 4) = v91;
        _os_log_impl(&dword_20CD70000, v85, v86, "[%{public}s] No blocking reasons. Dismissing interrupts and posting continue", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v88);
        MEMORY[0x20F314110](v88, -1, -1);
        MEMORY[0x20F314110](v87, -1, -1);
      }

      v93 = v129;
      v92 = v130;
      v94 = v128;
      [v129 dismissViewControllerAnimated:1 completion:0];
      v95 = *v19;
      v96 = v19[1];
      *v19 = 0;
      v19[1] = 0;
      sub_20CE06ED4(v95, v96);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v97 = *(v81 + 8);
        v98 = swift_getObjectType();
        (*(v97 + 16))(v98, v97);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_20CE04D98(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_20CE13714();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  *v7 = sub_20CE13D44();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_20CE13744();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_27C811D18 == -1)
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
  v9 = sub_20CE12CB4();
  __swift_project_value_buffer(v9, qword_27C8177B0);
  v10 = sub_20CE12C94();
  v11 = sub_20CE13CD4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v52 = v13;
    *v12 = 136446210;
    v14 = sub_20CE14414();
    v16 = sub_20CD96DCC(v14, v15, &v52);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_20CD70000, v10, v11, "[%{public}s] startOverButtonTapped ", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x20F314110](v13, -1, -1);
    MEMORY[0x20F314110](v12, -1, -1);
  }

  v17 = v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v23 = sub_20CE12C94();
    v30 = sub_20CE13CC4();
    if (os_log_type_enabled(v23, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v52 = v32;
      *v31 = 136446210;
      v33 = sub_20CE14414();
      v35 = sub_20CD96DCC(v33, v34, &v52);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_20CD70000, v23, v30, "[%{public}s] Interruption 'restart' button pressed without an active delegate", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x20F314110](v32, -1, -1);
      MEMORY[0x20F314110](v31, -1, -1);
    }

    goto LABEL_16;
  }

  v18 = v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption;
  v19 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption);
  if (!v19)
  {
    v23 = sub_20CE12C94();
    v36 = sub_20CE13CC4();
    if (os_log_type_enabled(v23, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v52 = v38;
      *v37 = 136446210;
      v39 = sub_20CE14414();
      v41 = sub_20CD96DCC(v39, v40, &v52);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_20CD70000, v23, v36, "[%{public}s] Start Over tapped on interruption screen but no active interruption is being tracked. Ignoring tap.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x20F314110](v38, -1, -1);
      MEMORY[0x20F314110](v37, -1, -1);
    }

    goto LABEL_15;
  }

  v20 = *(v18 + 8);
  if (v19 != a1)
  {
    v21 = v19;
    v22 = v20;
    v23 = sub_20CE12C94();
    v24 = sub_20CE13CD4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v52 = v26;
      *v25 = 136446210;
      v27 = sub_20CE14414();
      v29 = sub_20CD96DCC(v27, v28, &v52);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_20CD70000, v23, v24, "[%{public}s] Start Over tapped on an interruption that is not the active interruption. Ignoring tap.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x20F314110](v26, -1, -1);
      MEMORY[0x20F314110](v25, -1, -1);
    }

LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:

    return;
  }

  v42 = *(v17 + 8);
  LOBYTE(v52) = 5;
  v43 = v19;
  v44 = v20;
  sub_20CE05FC8(&v52);
  v45 = *v18;
  if (*v18)
  {
    v46 = *(v18 + 8);
    sub_20CE06F14(*v18, v46);
    v47 = v46;
    [v47 dismissViewControllerAnimated:1 completion:0];

    v48 = *v18;
    v49 = *(v18 + 8);
    *v18 = 0;
    *(v18 + 8) = 0;
    sub_20CE06ED4(v48, v49);
  }

  ObjectType = swift_getObjectType();
  (*(v42 + 24))(ObjectType, v42);
  swift_unknownObjectRelease();
}

void sub_20CE05350(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v8 = a3;
      v7 = v6;
      sub_20CE053E4(v6, &v8);
    }
  }
}

void sub_20CE053E4(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_20CE13714();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a2;
  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  *v9 = sub_20CE13D44();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  LOBYTE(a2) = sub_20CE13744();
  (*(v7 + 8))(v9, v6);
  if (a2)
  {
    if (qword_27C811D18 == -1)
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
  v11 = sub_20CE12CB4();
  __swift_project_value_buffer(v11, qword_27C8177B0);
  v12 = sub_20CE12C94();
  v13 = sub_20CE13CD4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    HIDWORD(v49) = v10;
    v16 = v15;
    v50 = v15;
    *v14 = 136446210;
    v17 = sub_20CE14414();
    v19 = sub_20CD96DCC(v17, v18, &v50);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20CD70000, v12, v13, "[%{public}s] interruptionCancelButtonTapped ", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    v20 = v16;
    v10 = HIDWORD(v49);
    MEMORY[0x20F314110](v20, -1, -1);
    MEMORY[0x20F314110](v14, -1, -1);
  }

  v21 = v3 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v26 = sub_20CE12C94();
    v33 = sub_20CE13CC4();
    if (os_log_type_enabled(v26, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v35;
      *v34 = 136446210;
      v36 = sub_20CE14414();
      v38 = sub_20CD96DCC(v36, v37, &v50);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_20CD70000, v26, v33, "[%{public}s] Interruption 'cancel' button pressed without an active delegate", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x20F314110](v35, -1, -1);
      MEMORY[0x20F314110](v34, -1, -1);
    }

    goto LABEL_16;
  }

  v22 = *(v3 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption);
  if (!v22)
  {
    v26 = sub_20CE12C94();
    v39 = sub_20CE13CC4();
    if (os_log_type_enabled(v26, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v50 = v41;
      *v40 = 136446210;
      v42 = sub_20CE14414();
      v44 = sub_20CD96DCC(v42, v43, &v50);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_20CD70000, v26, v39, "[%{public}s] Cancel tapped on interruption screen but no active interruption is being tracked. Ignoring tap.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x20F314110](v41, -1, -1);
      MEMORY[0x20F314110](v40, -1, -1);
    }

    goto LABEL_15;
  }

  v23 = *(v3 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption + 8);
  if (v22 != a1)
  {
    v24 = v22;
    v25 = v23;
    v26 = sub_20CE12C94();
    v27 = sub_20CE13CD4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v50 = v29;
      *v28 = 136446210;
      v30 = sub_20CE14414();
      v32 = sub_20CD96DCC(v30, v31, &v50);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_20CD70000, v26, v27, "[%{public}s] Cancel tapped on an interruption that is not the active interruption. Ignoring tap.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x20F314110](v29, -1, -1);
      MEMORY[0x20F314110](v28, -1, -1);
    }

LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:

    return;
  }

  v45 = *(v21 + 8);
  ObjectType = swift_getObjectType();
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = *(v45 + 32);
  sub_20CE06F14(v22, v23);

  v48(a1, v10 < 7, sub_20CE07A6C, v47, ObjectType, v45);
  swift_unknownObjectRelease();
}

void sub_20CE059C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      a3();

      v5 = v7;
    }
  }
}

void sub_20CE05A5C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_20CE13714();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  *v7 = sub_20CE13D44();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_20CE13744();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_27C811D18 == -1)
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
  v9 = sub_20CE12CB4();
  __swift_project_value_buffer(v9, qword_27C8177B0);
  v10 = sub_20CE12C94();
  v11 = sub_20CE13CD4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v46 = v13;
    *v12 = 136446210;
    v14 = sub_20CE14414();
    v16 = sub_20CD96DCC(v14, v15, &v46);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_20CD70000, v10, v11, "[%{public}s] interruptionDoneButtonTapped ", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x20F314110](v13, -1, -1);
    MEMORY[0x20F314110](v12, -1, -1);
  }

  v17 = v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v22 = sub_20CE12C94();
    v29 = sub_20CE13CC4();
    if (os_log_type_enabled(v22, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136446210;
      v32 = sub_20CE14414();
      v34 = sub_20CD96DCC(v32, v33, &v46);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_20CD70000, v22, v29, "[%{public}s] Interruption 'done' button pressed without an active delegate", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x20F314110](v31, -1, -1);
      MEMORY[0x20F314110](v30, -1, -1);
    }

    goto LABEL_16;
  }

  v18 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption);
  if (!v18)
  {
    v22 = sub_20CE12C94();
    v35 = sub_20CE13CC4();
    if (os_log_type_enabled(v22, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46 = v37;
      *v36 = 136446210;
      v38 = sub_20CE14414();
      v40 = sub_20CD96DCC(v38, v39, &v46);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_20CD70000, v22, v35, "[%{public}s] Done tapped on interruption screen but no active interruption is being tracked. Ignoring tap.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x20F314110](v37, -1, -1);
      MEMORY[0x20F314110](v36, -1, -1);
    }

    goto LABEL_15;
  }

  v19 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption + 8);
  if (v18 != a1)
  {
    v20 = v18;
    v21 = v19;
    v22 = sub_20CE12C94();
    v23 = sub_20CE13CD4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v46 = v25;
      *v24 = 136446210;
      v26 = sub_20CE14414();
      v28 = sub_20CD96DCC(v26, v27, &v46);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_20CD70000, v22, v23, "[%{public}s] Done tapped on an interruption that is not the active interruption. Ignoring tap.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x20F314110](v25, -1, -1);
      MEMORY[0x20F314110](v24, -1, -1);
    }

LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:

    return;
  }

  v41 = *(v17 + 8);
  LOBYTE(v46) = 3;
  v42 = v18;
  v43 = v19;
  sub_20CE05FC8(&v46);
  ObjectType = swift_getObjectType();
  (*(v41 + 40))(ObjectType, v41);
  swift_unknownObjectRelease();
}

void sub_20CE05FC8(unsigned __int8 *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_20CE124E4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v41[-v9];
  sub_20CE06DFC(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41[-v12];
  v14 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption);
  if (v14)
  {
    v15 = *a1;
    LODWORD(v43) = v14[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_interruptionType];
    v16 = OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_interruptionStartTime;
    swift_beginAccess();
    sub_20CD7DC78(&v14[v16], v13);
    v17 = (*(v5 + 48))(v13, 1, v4);
    if (v17 == 1)
    {
      v18 = v14;
      v19 = 0.0;
    }

    else
    {
      v42 = v15;
      (*(v5 + 32))(v10, v13, v4);
      sub_20CE13B84();
      v27 = v14;
      sub_20CE13B74();
      sub_20CE13B24();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_20CE124D4();
      sub_20CE12494();
      v29 = v28;
      v30 = *(v5 + 8);
      v30(v8, v4);
      v30(v10, v4);

      v19 = v29;
      LOBYTE(v15) = v42;
    }

    v31 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_analyticsManager + 8);
    ObjectType = swift_getObjectType();
    v33 = *(v31 + 8);
    v34 = v33(ObjectType, v31);
    v35 = v19;
    if (v17 == 1)
    {
      v35 = 0.0;
    }

    *(v34 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalInterruptionDuration) = v35 + *(v34 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalInterruptionDuration);

    v36 = v33(ObjectType, v31);
    v37 = *(v36 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_interruptionCount);
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (!v38)
    {
      *(v36 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_interruptionCount) = v39;

      v45 = v15;
      v44 = v43;
      (*(v31 + 40))(&v45, &v44, COERCE_DOUBLE(*&v19), v17 == 1, ObjectType, v31);

      return;
    }

    __break(1u);
  }

  else if (qword_27C811D18 == -1)
  {
    goto LABEL_5;
  }

  swift_once();
LABEL_5:
  v20 = sub_20CE12CB4();
  __swift_project_value_buffer(v20, qword_27C8177B0);
  v43 = sub_20CE12C94();
  v21 = sub_20CE13CC4();
  if (os_log_type_enabled(v43, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v46[0] = v23;
    *v22 = 136446210;
    v24 = sub_20CE14414();
    v26 = sub_20CD96DCC(v24, v25, v46);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_20CD70000, v43, v21, "[%{public}s] Attempting to submit analytics for a non-active interruption VC", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x20F314110](v23, -1, -1);
    MEMORY[0x20F314110](v22, -1, -1);
  }

  else
  {
    v40 = v43;
  }
}

void sub_20CE064B8()
{
  swift_getObjectType();
  if (*(v0 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption))
  {
    v10 = *(v0 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption + 8);
    v1 = [v10 presentedViewController];
    if (v1)
    {

      if (qword_27C811D18 != -1)
      {
        swift_once();
      }

      v2 = sub_20CE12CB4();
      __swift_project_value_buffer(v2, qword_27C8177B0);
      v3 = sub_20CE12C94();
      v4 = sub_20CE13CD4();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v11 = v6;
        *v5 = 136446210;
        v7 = sub_20CE14414();
        v9 = sub_20CD96DCC(v7, v8, &v11);

        *(v5 + 4) = v9;
        _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] Dismissing UIViewController presented by the interruptions navigation stack.", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v6);
        MEMORY[0x20F314110](v6, -1, -1);
        MEMORY[0x20F314110](v5, -1, -1);
      }

      [v10 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_20CE06688(uint64_t a1, unsigned __int8 a2)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    sub_20CE02A94(&v5);
  }

  else
  {
  }
}

void sub_20CE06844(uint64_t a1)
{
  swift_getObjectType();
  v3 = v1 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    if (qword_27C811D18 != -1)
    {
      swift_once();
    }

    v5 = sub_20CE12CB4();
    __swift_project_value_buffer(v5, qword_27C8177B0);
    v6 = sub_20CE12C94();
    v7 = sub_20CE13CD4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 136446466;
      v10 = sub_20CE14414();
      v12 = sub_20CD96DCC(v10, v11, &v24);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_20CD96DCC(0xD00000000000001ALL, 0x800000020CE1E270, &v24);
      _os_log_impl(&dword_20CD70000, v6, v7, "[%{public}s] %s called. Cancelling flow.", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v9, -1, -1);
      MEMORY[0x20F314110](v8, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = *(v4 + 32);

    v15(a1, 0, sub_20CE075A8, v14, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27C811D18 != -1)
    {
      swift_once();
    }

    v16 = sub_20CE12CB4();
    __swift_project_value_buffer(v16, qword_27C8177B0);
    oslog = sub_20CE12C94();
    v17 = sub_20CE13CC4();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136446210;
      v20 = sub_20CE14414();
      v22 = sub_20CD96DCC(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_20CD70000, oslog, v17, "[%{public}s] Cancellation of interruption fit/noise check without an active delegate", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x20F314110](v19, -1, -1);
      MEMORY[0x20F314110](v18, -1, -1);
    }

    else
    {
    }
  }
}

void sub_20CE06BD8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = 4;
    sub_20CE05FC8(&v3);
  }
}

void sub_20CE06D20()
{
  sub_20CE06E60(0, &unk_27C813720, &qword_27C812CB0, 0x277CBEB70, MEMORY[0x277D11BF0]);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_20CE01EF4(v0 + v3, v5, v6);
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_20CE06DFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CE06E60(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_20CD83128(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_20CE06ED4(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id sub_20CE06F14(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

char *sub_20CE06F54(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = a4;
  v18[3] = sub_20CE12A34();
  v18[4] = &protocol witness table for HTRequirementStatusManager;
  v18[0] = a1;
  if (v8 == 4)
  {
    sub_20CD7C388(v18, v17);
    v9 = objc_allocWithZone(type metadata accessor for HearingTestNoiseInterruptionViewController(0));
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
    MEMORY[0x28223BE20](v10);
    v12 = (v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;

    v15 = sub_20CE071B0(4, v14, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    LOBYTE(v17[0]) = a4;
    objc_allocWithZone(type metadata accessor for HearingTestInterruptionsViewController(0));

    v15 = sub_20CD83D04(v17, a2, a3, 2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v15;
}

uint64_t objectdestroy_21Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

char *sub_20CE071B0(int a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v5 = sub_20CE12514();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = sub_20CE12A34();
  v31[4] = &protocol witness table for HTRequirementStatusManager;
  v31[0] = a2;
  v9 = OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_automationIdentifierBase;
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v10 = (a3 + v9);
  v12 = qword_27C817868;
  v11 = unk_27C817870;
  v13 = MEMORY[0x277D837D0];
  sub_20CDAA04C(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_20CE16360;
  *(v14 + 32) = v12;
  *(v14 + 40) = v11;
  *(v14 + 48) = 0xD000000000000012;
  *(v14 + 56) = 0x800000020CE1D080;
  *&v30[0] = v14;
  sub_20CDAA04C(0, &qword_27C8121F0, v13, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v15 = sub_20CE138C4();
  v17 = v16;

  *v10 = v15;
  v10[1] = v17;
  v18 = OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_noiseModel;
  v19 = sub_20CE13AE4();
  *(v19 + 16) = 16;
  type metadata accessor for HTUINoiseView.Model(0);
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 64) = 0u;
  *(v19 + 80) = 0u;
  *(v19 + 96) = 0u;
  *(v19 + 112) = 0u;
  *(v19 + 128) = 0u;
  *(v19 + 144) = 0u;
  v20 = swift_allocObject();
  sub_20CE12B24();
  *(v20 + 16) = 1;
  type metadata accessor for NoiseWaveformView.Model(0);
  v21 = swift_allocObject();
  *(v21 + 32) = MEMORY[0x277D84F90];
  sub_20CE12B24();
  *(v21 + 16) = 1;
  *(v21 + 24) = v19;
  sub_20CDAC7A8();
  *(v20 + 24) = v21;
  *(a3 + v18) = v20;
  sub_20CD7C388(v31, v30);
  type metadata accessor for NoiseDataProvider();
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20CE12504();
  v23 = sub_20CE124F4();
  v25 = v24;
  (*(v6 + 8))(v8, v5);
  *(v22 + 72) = v23;
  *(v22 + 80) = v25;
  *(v22 + 88) = 0u;
  *(v22 + 104) = 0u;
  *(v22 + 120) = 0;
  *(v22 + 128) = -1;
  sub_20CDAA09C(v30, v22 + 32);
  *(a3 + OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_noiseDataProvider) = v22;
  LOBYTE(v30[0]) = v29;
  v26 = sub_20CD83D04(v30, 0, 0, 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  *(*&v26[OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_noiseDataProvider] + 24) = &off_2823BCC10;
  swift_unknownObjectWeakAssign();
  return v26;
}

void sub_20CE07550()
{
  if (!qword_27C813748)
  {
    v0 = sub_20CE140B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813748);
    }
  }
}

void sub_20CE075C4(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = v1 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    if (qword_27C811D18 != -1)
    {
      swift_once();
    }

    v6 = sub_20CE12CB4();
    __swift_project_value_buffer(v6, qword_27C8177B0);
    v7 = sub_20CE12C94();
    v8 = sub_20CE13CD4();
    if (os_log_type_enabled(v7, v8))
    {
      osloga = v5;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136446722;
      v11 = sub_20CE14414();
      v13 = sub_20CD96DCC(v11, v12, &v35);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_20CD96DCC(0xD000000000000021, 0x800000020CE20B90, &v35);
      *(v9 + 22) = 2080;
      v14 = sub_20CDD108C(a1);
      v16 = sub_20CD96DCC(v14, v15, &v35);

      *(v9 + 24) = v16;
      _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] %s called with %s.", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v10, -1, -1);
      v17 = v9;
      v5 = osloga;
      MEMORY[0x20F314110](v17, -1, -1);
    }

    if (a1)
    {
      if (a1 == 1)
      {
        *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_encounteredInterruptionRequiringFitCheck) = 0;
        sub_20CE03F78(0);
LABEL_20:

        swift_unknownObjectRelease();
        return;
      }

      v25 = sub_20CE12C94();
      v26 = sub_20CE13CB4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v35 = v28;
        *v27 = 136446466;
        v29 = sub_20CE14414();
        v31 = sub_20CD96DCC(v29, v30, &v35);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_20CD96DCC(0xD000000000000021, 0x800000020CE20B90, &v35);
        _os_log_impl(&dword_20CD70000, v25, v26, "[%{public}s] %s cancelling flow due to unhandled FitNoiseCheckStatus case.", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F314110](v28, -1, -1);
        MEMORY[0x20F314110](v27, -1, -1);
      }
    }

    ObjectType = swift_getObjectType();
    (v5[5].isa)(ObjectType, v5);
    goto LABEL_20;
  }

  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v18 = sub_20CE12CB4();
  __swift_project_value_buffer(v18, qword_27C8177B0);
  oslog = sub_20CE12C94();
  v19 = sub_20CE13CC4();
  if (os_log_type_enabled(oslog, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 136446210;
    v22 = sub_20CE14414();
    v24 = sub_20CD96DCC(v22, v23, &v35);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_20CD70000, oslog, v19, "[%{public}s] Completion of interruption fit/noise check without an active delegate", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x20F314110](v21, -1, -1);
    MEMORY[0x20F314110](v20, -1, -1);
  }
}

uint64_t sub_20CE07A78()
{
  v1 = v0;
  v2 = sub_20CE12944();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D12D20])
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    v34[0] = 0x726145206E49;
    v34[1] = 0xE600000000000000;
    v32 = 32;
    v33 = 0xE100000000000000;
    sub_20CD935CC();
    v34[0] = sub_20CE13FB4();
    v34[1] = v8;
    MEMORY[0x20F312EF0](0x6369766544207C20, 0xEB00000000203A65);
    v9 = [v7 identifier];
    if (!v9)
    {
      goto LABEL_12;
    }

LABEL_9:
    v12 = v9;
    v13 = sub_20CE13954();
    v15 = v14;

    v16 = sub_20CDFA33C(5, v13, v15);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = v20;
    v24 = v18;
    v25 = v16;
LABEL_13:
    v28 = MEMORY[0x20F312EB0](v25, v24, v23, v22);
    v30 = v29;

    MEMORY[0x20F312EF0](v28, v30);

    return v34[0];
  }

  if (v6 == *MEMORY[0x277D12D28])
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    strcpy(v34, "Out Ear");
    v34[1] = 0xE700000000000000;
    v32 = 32;
    v33 = 0xE100000000000000;
    sub_20CD935CC();
    v34[0] = sub_20CE13FB4();
    v34[1] = v10;
    MEMORY[0x20F312EF0](0x6369766544207C20, 0xEB00000000203A65);
    v9 = [v7 identifier];
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v6 == *MEMORY[0x277D12D10])
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    v34[0] = 0x6E6F432074736F4CLL;
    v34[1] = 0xEF6E6F697463656ELL;
    v32 = 32;
    v33 = 0xE100000000000000;
    sub_20CD935CC();
    v34[0] = sub_20CE13FB4();
    v34[1] = v11;
    MEMORY[0x20F312EF0](0x6369766544207C20, 0xEB00000000203A65);
    v9 = [v7 identifier];
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_12:
    v25 = sub_20CE13F64();
    v22 = v27;
    goto LABEL_13;
  }

  if (v6 == *MEMORY[0x277D12D18])
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    strcpy(v34, "Incompatible");
    BYTE5(v34[1]) = 0;
    HIWORD(v34[1]) = -5120;
    v32 = 32;
    v33 = 0xE100000000000000;
    sub_20CD935CC();
    v34[0] = sub_20CE13FB4();
    v34[1] = v26;
    MEMORY[0x20F312EF0](0x6369766544207C20, 0xEB00000000203A65);
    v9 = [v7 identifier];
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  (*(v3 + 8))(v5, v2);
  return 0x6E776F6E6B6E55;
}

uint64_t sub_20CE07F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_20CE0940C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_20CD89A48(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_20CD8AD88();
        v14 = v16;
      }

      result = sub_20CE08FA0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t HearingTestFlowEvent.__allocating_init(metric:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t HearingTestFlowEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t HearingTestFlowEvent.makeUnrestrictedEventPayload(with:)(void *a1)
{
  v2 = sub_20CDE7A24(a1);
  v3 = [a1 environmentDataSource];
  v4 = [v3 isImproveHealthAndActivityEnabled];

  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20CE0940C(v5, 0xD000000000000021, 0x800000020CE1AA70, isUniquelyReferenced_nonNull_native);
  v7 = sub_20CE08230(v2);

  return v7;
}

unint64_t sub_20CE08230(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_20CE0963C();
    v2 = sub_20CE14204();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_20CDEBEC8();

        v19 = v18;
        swift_dynamicCast();
        sub_20CD8A9E8(&v25, v27);
        sub_20CD8A9E8(v27, v28);
        sub_20CD8A9E8(v28, &v26);
        result = sub_20CD89A48(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = sub_20CD8A9E8(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_20CD8A9E8(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t HearingTestFlowEvent.makeIHAGatedEventPayload(with:)(void *a1)
{
  v2 = v1;
  v3 = [a1 healthDataSource];
  if (v3)
  {
    v4 = v3;
    v5 = sub_20CDE7360();
    v6 = sub_20CE08230(v5);

    v7 = sub_20CE087F4(v4);
    v29 = MEMORY[0x277D837D0];
    *&v28 = v7;
    *(&v28 + 1) = v8;
    sub_20CD8A9E8(&v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v6;
    sub_20CE09150(v27, 0x6369676F6C6F6962, 0xED00007865536C61, isUniquelyReferenced_nonNull_native);
    v10 = v30;
    v11 = sub_20CE08A8C(v4);
    v29 = MEMORY[0x277D83B88];
    *&v28 = v11;
    sub_20CD8A9E8(&v28, v27);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v10;
    sub_20CE09150(v27, 6645601, 0xE300000000000000, v12);
    swift_unknownObjectRelease();
    return v30;
  }

  else
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v14 = sub_20CE12CB4();
    __swift_project_value_buffer(v14, qword_27C817780);
    v15 = sub_20CE12C94();
    v16 = sub_20CE13CC4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28 = v18;
      *v17 = 136446210;
      v19 = sub_20CE14414();
      v21 = sub_20CD96DCC(v19, v20, &v28);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_20CD70000, v15, v16, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x20F314110](v18, -1, -1);
      MEMORY[0x20F314110](v17, -1, -1);
    }

    v22 = [v2 eventName];
    v23 = sub_20CE13954();
    v25 = v24;

    sub_20CE09584();
    swift_allocError();
    *v26 = v23;
    v26[1] = v25;
    return swift_willThrow();
  }
}

uint64_t sub_20CE087F4(void *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v21[0] = 0;
  v1 = [a1 biologicalSexWithError_];
  if (v1)
  {
    v2 = v1;
    v3 = v21[0];
    v4 = HKAnalyticsPropertyValueForBiologicalSex();
    v5 = sub_20CE13954();
  }

  else
  {
    v6 = v21[0];
    v7 = sub_20CE12394();

    swift_willThrow();
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v8 = sub_20CE12CB4();
    __swift_project_value_buffer(v8, qword_27C817780);
    v9 = v7;
    v10 = sub_20CE12C94();
    v11 = sub_20CE13CB4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21[0] = v14;
      *v12 = 136446466;
      v15 = sub_20CE14414();
      v17 = sub_20CD96DCC(v15, v16, v21);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2114;
      v18 = v7;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v19;
      *v13 = v19;
      _os_log_impl(&dword_20CD70000, v10, v11, "[%{public}s] HKAnalyticsHealthDataSource Error when retrieving biological sex: %{public}@", v12, 0x16u);
      sub_20CDFA454(v13);
      MEMORY[0x20F314110](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x20F314110](v14, -1, -1);
      MEMORY[0x20F314110](v12, -1, -1);
    }

    v5 = sub_20CE13954();
  }

  return v5;
}

id sub_20CE08A8C(void *a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = sub_20CE124E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE124D4();
  v6 = sub_20CE124A4();
  (*(v3 + 8))(v5, v2);
  v26[0] = 0;
  v7 = [a1 ageWithCurrentDate:v6 error:v26];

  if (v7)
  {
    v8 = v26[0];
    v9 = [v7 integerValue];
  }

  else
  {
    v10 = v26[0];
    v11 = sub_20CE12394();

    swift_willThrow();
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v12 = sub_20CE12CB4();
    __swift_project_value_buffer(v12, qword_27C817780);
    v13 = v11;
    v14 = sub_20CE12C94();
    v15 = sub_20CE13CB4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26[0] = v18;
      *v16 = 136446466;
      v19 = sub_20CE14414();
      v21 = sub_20CD96DCC(v19, v20, v26);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2114;
      v22 = v11;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v23;
      *v17 = v23;
      _os_log_impl(&dword_20CD70000, v14, v15, "[%{public}s] HKAnalyticsHealthDataSource Error when retrieving age: %{public}@", v16, 0x16u);
      sub_20CDFA454(v17);
      MEMORY[0x20F314110](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x20F314110](v18, -1, -1);
      MEMORY[0x20F314110](v16, -1, -1);
    }

    v9 = [*MEMORY[0x277CCB7A0] integerValue];
  }

  return v9;
}

uint64_t sub_20CE08EB4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20CE140E4();
  MEMORY[0x20F312EF0](0xD000000000000051, 0x800000020CE20CA0);
  MEMORY[0x20F312EF0](v1, v2);
  return 0;
}

_OWORD *sub_20CE08F34(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20CD8A9E8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_20CE08FA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20CE14064() + 1) & ~v5;
    do
    {
      sub_20CE14384();

      sub_20CE139C4();
      v9 = sub_20CE143B4();

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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
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

  return result;
}

_OWORD *sub_20CE09150(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20CD89A48(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20CD8A9F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20CD89DC0(v16, a4 & 1);
    v11 = sub_20CD89A48(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_20CE142E4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_20CD8A9E8(a1, v22);
  }

  else
  {
    sub_20CE08F34(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_20CE092A0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_20CD89A48(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_20CD8A080(v16, a4 & 1);
      result = sub_20CD89A48(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_20CE142E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_20CD8AC1C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_20CE0940C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20CD89A48(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_20CD8A324(v16, a4 & 1);
      v11 = sub_20CD89A48(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_20CE142E4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_20CD8AD88();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}