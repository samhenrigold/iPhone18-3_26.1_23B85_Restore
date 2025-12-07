id sub_20BFA3614()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765350, &unk_20C184B80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v79 - v2;
  *&v81 = type metadata accessor for SummaryBurnBarMetricViewModel(0);
  v4 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360, &unk_20C17F2A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v79 - v7;
  v9 = type metadata accessor for SessionSummaryViewModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_summary;
  swift_beginAccess();
  v14 = &v0[v13];
  v15 = v0;
  sub_20B52F9E8(v14, v8, &unk_27C765360, &unk_20C17F2A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20B520158(v8, &unk_27C765360, &unk_20C17F2A0);
  }

  sub_20B7A3A9C(v8, v12, type metadata accessor for SessionSummaryViewModel);
  result = [v0 view];
  if (result)
  {
    v17 = result;
    [result layoutIfNeeded];

    sub_20B52F9E8(&v12[*(v9 + 64)], v3, &unk_27C765350, &unk_20C184B80);
    v18 = v81;
    if ((*(v4 + 48))(v3, 1, v81) == 1)
    {
      sub_20B520158(v3, &unk_27C765350, &unk_20C184B80);
LABEL_16:
      v59 = objc_opt_self();
      sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

      v60 = sub_20C13CC54();

      [v59 deactivateConstraints_];

      return sub_20BFA74B8(v12, type metadata accessor for SessionSummaryViewModel);
    }

    v19 = v80;
    sub_20B7A3A9C(v3, v80, type metadata accessor for SummaryBurnBarMetricViewModel);
    if (*(v19 + *(v18 + 20)) != 1)
    {
      sub_20BFA74B8(v19, type metadata accessor for SummaryBurnBarMetricViewModel);
      goto LABEL_16;
    }

    v20 = *&v15[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_activityRingsView];
    [v20 frame];
    Width = CGRectGetWidth(v82);
    [*&v15[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarView] frame];
    v22 = CGRectGetWidth(v83);
    [*&v15[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_contentSummaryView] frame];
    v23 = CGRectGetWidth(v84);
    v24 = [v15 traitCollection];
    v25 = [v24 preferredContentSizeCategory];

    LOBYTE(v24) = sub_20C13D424();
    if ((v24 & 1) != 0 || v23 < Width + 10.0 + v22)
    {
      v61 = v15;
      v62 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToContentSummaryLeadingConstraint;
      [*&v61[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToContentSummaryLeadingConstraint] setConstant_];
      v63 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
      v64 = swift_allocObject();
      v81 = xmmword_20C150040;
      v65 = *&v61[v62];
      *(v64 + 16) = xmmword_20C150040;
      v66 = *&v61[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToActivityRingsTopConstraint];
      *(v64 + 32) = v65;
      *(v64 + 40) = v66;
      v67 = *&v61[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToScrollViewBottomConstraint];
      *(v64 + 48) = v67;
      sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
      v68 = v65;
      v69 = v66;
      v70 = v67;
      v71 = sub_20C13CC54();

      [v63 activateConstraints_];

      v72 = swift_allocObject();
      v73 = *&v61[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarLeadingConstraint];
      *(v72 + 16) = v81;
      v74 = *&v61[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToGridViewTopConstraint];
      *(v72 + 32) = v73;
      *(v72 + 40) = v74;
      v75 = *&v61[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_activityRingsToScrollViewBottomConstraint];
      *(v72 + 48) = v75;
      v76 = v73;
      v77 = v74;
      v78 = v75;
      v58 = sub_20C13CC54();

      [v63 deactivateConstraints_];
      goto LABEL_18;
    }

    *&v81 = v12;
    [v20 frame];
    v26 = CGRectGetWidth(v85) + 10.0;
    v27 = [v20 isHidden];
    v28 = 0.0;
    if (!v27)
    {
      v28 = v26;
    }

    v29 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarLeadingConstraint;
    [*&v15[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarLeadingConstraint] setConstant_];
    [*&v15[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewWidth] constant];
    v31 = v30;
    v32 = *&v15[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridView];
    v33 = v15;
    if (sub_20BA004B4(v30) < 2)
    {
LABEL_14:
      v42 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_20C14FE90;
      v44 = *&v33[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToGridViewTopConstraint];
      v45 = *&v33[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_activityRingsToScrollViewBottomConstraint];
      v46 = *&v33[v29];
      *(v43 + 32) = v44;
      *(v43 + 40) = v45;
      v47 = *&v33[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToContentSummaryLeadingConstraint];
      *(v43 + 48) = v46;
      *(v43 + 56) = v47;
      sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
      v48 = v44;
      v49 = v45;
      v50 = v46;
      v51 = v47;
      v52 = sub_20C13CC54();

      [v42 activateConstraints_];

      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_20C151490;
      v54 = *&v33[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToActivityRingsTopConstraint];
      v55 = *&v33[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToScrollViewBottomConstraint];
      *(v53 + 32) = v54;
      *(v53 + 40) = v55;
      v56 = v54;
      v57 = v55;
      v58 = sub_20C13CC54();

      [v42 deactivateConstraints_];
      v19 = v80;
      v12 = v81;
LABEL_18:

      sub_20BFA74B8(v19, type metadata accessor for SummaryBurnBarMetricViewModel);
      return sub_20BFA74B8(v12, type metadata accessor for SessionSummaryViewModel);
    }

    v34 = *&v15[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToContentSummaryLeadingConstraint];
    v35 = sub_20BA004B4(v31);
    v36 = OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout;
    [*(v32 + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout) itemSize];
    v38 = v37;
    result = [*(v32 + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_collectionView) contentSize];
    if (!__OFSUB__(v35, 1))
    {
      v40 = (v39 - v38 * v35) / (v35 - 1);
      [*(v32 + v36) itemSize];
      [v34 setConstant_];

      v33 = v15;
      goto LABEL_14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_20BFA3EEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneSessionLandscapeSummaryViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PhoneSessionLandscapeSummaryViewController(uint64_t a1)
{
  result = qword_27C7712F0;
  if (!qword_27C7712F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BFA41E4(uint64_t a1)
{
  sub_20B79F044(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20BFA42F0(char a1)
{
  if (a1)
  {
    v2 = &OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_upNextSummaryView;
    if (a1 == 1)
    {
      v2 = &OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_queueCompleteView;
    }

    v3 = v1;
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_trailingStackView];
    [v4 addArrangedSubview_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_cooldownButton] setHidden_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_doneButton] setHidden_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_ttrButton] setHidden_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_trailingStackViewTopConstraint] setActive_];
    v5 = [v1 view];
    if (!v5)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v6 = v5;
    [v5 addSubview_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20C150040;
    v8 = [v4 trailingAnchor];
    v9 = [*&v3[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_scrollView] safeAreaLayoutGuide];
    v10 = [v9 trailingAnchor];

    v11 = [v8 constraintEqualToAnchor_];
    *(v7 + 32) = v11;
    v12 = [v4 topAnchor];
    v13 = [v3 view];
    if (!v13)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v14 = v13;
    v15 = [v13 topAnchor];

    v16 = &selRef_setDescriptionTextHighlightColor_;
    v17 = [v12 constraintEqualToAnchor:v15 constant:10.0];

    *(v7 + 40) = v17;
    v18 = [v4 bottomAnchor];
    v19 = [v3 view];
    if (!v19)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v20 = v19;
    v21 = [v19 bottomAnchor];

    v22 = [v18 constraintEqualToAnchor:v21 constant:-10.0];
    *(v7 + 48) = v22;
    v23 = [v4 arrangedSubviews];
    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v24 = sub_20C13CC74();

    if (v24 >> 62)
    {
      v25 = sub_20C13DB34();
      if (v25)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
LABEL_9:
        v47 = MEMORY[0x277D84F90];
        sub_20C13DD64();
        if ((v25 & 0x8000000000000000) == 0)
        {
          v45 = v7;
          v46 = v3;
          v26 = 0;
          do
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x20F2F5430](v26, v24);
            }

            else
            {
              v27 = *(v24 + 8 * v26 + 32);
            }

            v28 = v27;
            ++v26;
            v29 = [v4 widthAnchor];
            v30 = [v28 widthAnchor];
            v31 = [v29 constraintLessThanOrEqualToAnchor:v30 multiplier:1.0];

            sub_20C13DD34();
            sub_20C13DD74();
            sub_20C13DD84();
            sub_20C13DD44();
          }

          while (v25 != v26);

          v32 = v47;
          v3 = v46;
          v16 = &selRef_setDescriptionTextHighlightColor_;
LABEL_18:
          sub_20B8D9310(v32);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_20C14F580;
          v34 = [*&v3[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_contentSummaryView] trailingAnchor];
          v35 = [v4 leadingAnchor];
          v36 = [v34 v16[181]];

          *(inited + 32) = v36;
          sub_20B8D9310(inited);
          v37 = objc_opt_self();
          sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
          v38 = sub_20C13CC54();
          [v37 activateConstraints_];

          v39 = [v3 view];
          if (v39)
          {
            v40 = v39;
            [v39 setNeedsUpdateConstraints];

            v41 = [v3 view];
            if (v41)
            {
              v42 = v41;
              [v41 setNeedsLayout];

              v43 = [v3 view];
              if (v43)
              {
                v44 = v43;

                [v44 layoutIfNeeded];

                return;
              }

LABEL_29:
              __break(1u);
              return;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        __break(1u);
        goto LABEL_24;
      }
    }

    v32 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }
}

id sub_20BFA4908(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_contentSummaryView) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridView) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_trailingStackView) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarView) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_backgroundView) setAlpha_];
  v2 = *(a1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_activityRingsView);

  return [v2 setAlpha_];
}

void sub_20BFA49C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SessionSummaryViewModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765350, &unk_20C184B80);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v43 - v8;
  v9 = type metadata accessor for SummaryBurnBarMetricViewModel(0);
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x28223BE20](v9);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770980, &unk_20C1588A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v43 - v12;
  v14 = type metadata accessor for SummaryActivityRingsMetricViewModel(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360, &unk_20C17F2A0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - v22;
  sub_20BFA7450(a1, &v43 - v22, type metadata accessor for SessionSummaryViewModel);
  v48 = v5;
  (*(v5 + 56))(v23, 0, 1, v4);
  v24 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_summary;
  swift_beginAccess();
  sub_20B7A30E4(v23, &v2[v24]);
  swift_endAccess();
  v49 = v4;
  sub_20B52F9E8(a1 + *(v4 + 60), v13, &unk_27C770980, &unk_20C1588A0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20B520158(v13, &unk_27C770980, &unk_20C1588A0);
    v25 = [*&v2[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_activityRingsView] setHidden_];
  }

  else
  {
    sub_20B7A3A9C(v13, v17, type metadata accessor for SummaryActivityRingsMetricViewModel);
    v26 = *&v2[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_activityRingsView];
    sub_20BC5762C(v17, 1);
    [v26 setHidden_];
    v25 = sub_20BFA74B8(v17, type metadata accessor for SummaryActivityRingsMetricViewModel);
  }

  v27 = sub_20B839B88(v25);
  sub_20BA006A0(v27);

  v28 = v49;
  v29 = v45;
  sub_20B52F9E8(a1 + *(v49 + 64), v45, &unk_27C765350, &unk_20C184B80);
  v30 = v47;
  if ((*(v46 + 48))(v29, 1, v47) == 1)
  {
    sub_20B520158(v29, &unk_27C765350, &unk_20C184B80);
    [*&v2[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarView] setHidden_];
  }

  else
  {
    v31 = v44;
    sub_20B7A3A9C(v29, v44, type metadata accessor for SummaryBurnBarMetricViewModel);
    v32 = *&v2[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarView];
    sub_20BA675CC(v31);
    [v32 setHidden_];
    sub_20BFA74B8(v31, type metadata accessor for SummaryBurnBarMetricViewModel);
  }

  sub_20BFA2584();
  sub_20B52F9E8(&v2[v24], v20, &unk_27C765360, &unk_20C17F2A0);
  if ((*(v48 + 48))(v20, 1, v28))
  {
    sub_20B520158(v20, &unk_27C765360, &unk_20C17F2A0);
  }

  else
  {
    v33 = v43;
    sub_20BFA7450(v20, v43, type metadata accessor for SessionSummaryViewModel);
    sub_20B520158(v20, &unk_27C765360, &unk_20C17F2A0);
    v34 = v33 + *(v28 + 68);
    v35 = *v34;
    v36 = *(v34 + 8);
    sub_20B7A3154(*v34, v36);
    sub_20BFA74B8(v33, type metadata accessor for SessionSummaryViewModel);
    if (v35)
    {
      sub_20BCA23DC(v35, v36);
    }
  }

  sub_20BFA2AE0();
  v37 = [v2 view];
  if (!v37)
  {
    __break(1u);
    goto LABEL_16;
  }

  v38 = v37;
  [v37 setNeedsUpdateConstraints];

  v39 = [v2 view];
  if (!v39)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v40 = v39;
  [v39 setNeedsLayout];

  v41 = [v2 view];
  if (v41)
  {
    v42 = v41;
    [v41 layoutIfNeeded];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_20BFA5098(char a1, void *a2)
{
  if (a1)
  {
    v3 = *(v2 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_trailingStackView);
    v4 = *(v2 + *a2);
    [v3 addArrangedSubview_];
    v5 = [v4 widthAnchor];
    v6 = *(v2 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_doneButton);
    v7 = [v6 widthAnchor];
    v8 = [v5 constraintEqualToAnchor:v7 multiplier:1.0];

    [v8 setActive_];
    v9 = [v3 widthAnchor];
    v10 = [v6 widthAnchor];
    v12 = [v9 constraintLessThanOrEqualToAnchor:v10 multiplier:1.0];

    [v12 setActive_];
  }

  else
  {
    v11 = *(v2 + *a2);

    [v11 removeFromSuperview];
  }
}

void sub_20BFA5234(char a1)
{
  if (a1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_ttrButton];
      [v2 addSubview_];

      v5 = [v4 trailingAnchor];
      v6 = [v1 view];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 safeAreaLayoutGuide];

        v9 = [v8 trailingAnchor];
        v10 = [v5 constraintEqualToAnchor_];

        [v10 setActive_];
        v11 = [v4 bottomAnchor];
        v12 = [v1 view];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 safeAreaLayoutGuide];

          v15 = [v14 bottomAnchor];
          v17 = [v11 constraintEqualToAnchor_];

          [v17 setActive_];

          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  v16 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_ttrButton];

  [v16 removeFromSuperview];
}

void sub_20BFA5464(char a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_upNextSummaryView);
  if (a2)
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = a1 & 1;
    v10[4] = sub_20B7A0A24;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_20B7B548C;
    v10[3] = &block_descriptor_166;
    v7 = _Block_copy(v10);
    v8 = v4;

    [v5 animateWithDuration:v7 animations:0.1];
    _Block_release(v7);
  }

  else
  {
    v9 = *&v4[OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_startButton];

    [v9 setHidden_];
  }
}

void sub_20BFA55AC(id a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for PhoneSessionLandscapeSummaryViewController(0);
  objc_msgSendSuper2(&v17, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v5 = sub_20C13C954();
  v7 = v6;
  if (v5 != sub_20C13C954() || v7 != v8)
  {
    v10 = sub_20C13DFF4();

    if (v10)
    {
      return;
    }

LABEL_11:
    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      [v11 setNeedsUpdateConstraints];

      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 setNeedsLayout];

        v15 = [v1 view];
        if (v15)
        {
          v16 = v15;
          [v15 layoutIfNeeded];

          return;
        }

        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }
}

uint64_t sub_20BFA57E8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_additionalMetadata) = a1;

  return sub_20BFA2584();
}

void sub_20BFA5884()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_20BFA7448;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_20B7B548C;
  v5[3] = &block_descriptor_67_2;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.3];
  _Block_release(v3);
}

id sub_20BFA5A14(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_upNextSummaryView) + OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_startButton);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v5 = sub_20C13C914();
  [v4 setText_];

  return [v3 setNeedsLayout];
}

void sub_20BFA5AD0()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_20B7A0A30;
  v3[5] = v1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_20B7B548C;
  v3[3] = &block_descriptor_61_2;
  v2 = _Block_copy(v3);

  [v0 animateWithDuration:v2 animations:0.2];
  _Block_release(v2);
}

uint64_t sub_20BFA5C00@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250, &qword_20C153CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_20C1344C4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, *(v1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_presenter) + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_catalogWorkout, v6, v8);
  sub_20C134414();
  (*(v7 + 8))(v10, v6);
  v11 = sub_20C135B04();
  v12 = (*(*(v11 - 8) + 48))(v5, 1, v11);
  sub_20B520158(v5, &qword_27C763250, &qword_20C153CB0);
  v13 = sub_20C1390D4();
  v14 = MEMORY[0x277D54278];
  if (v12 != 1)
  {
    v14 = MEMORY[0x277D54280];
  }

  return (*(*(v13 - 8) + 104))(a1, *v14, v13);
}

void sub_20BFA5E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v7 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_contentSummaryView;
  v8 = [objc_allocWithZone(type metadata accessor for SummaryContentSummaryView()) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v7] = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_backgroundView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v10 &selRef_count + 2];
  *&v6[v9] = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_scrollView;
  v12 = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  [v12 &selRef_count + 2];
  [v12 setContentInsetAdjustmentBehavior_];
  v13 = sub_20C13C914();
  [v12 setAccessibilityIdentifier_];

  *&v6[v11] = v12;
  v14 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_scrollViewSizingView;
  v15 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v15 &selRef_count + 2];
  v173 = objc_opt_self();
  v16 = [v173 clearColor];
  [v15 setBackgroundColor_];

  *&v6[v14] = v15;
  v17 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_leadingStackView;
  v18 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v18 &selRef_count + 2];
  [v18 setAlignment_];
  [v18 setAxis_];
  [v18 setDistribution_];
  [v18 setSpacing_];
  *&v6[v17] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridView;
  v20 = [objc_allocWithZone(type metadata accessor for SummaryMetricGridView()) initWithFrame_];
  [v20 &selRef_count + 2];
  *&v6[v19] = v20;
  v21 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_upNextSummaryView;
  v22 = [objc_allocWithZone(type metadata accessor for SummaryUpNextView()) initWithFrame_];
  [v22 &selRef_count + 2];
  *&v6[v21] = v22;
  v23 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_queueCompleteView;
  v24 = [objc_allocWithZone(type metadata accessor for SummaryQueueCompleteView()) initWithFrame_];
  [v24 &selRef_count + 2];
  *&v6[v23] = v24;
  v25 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_trailingStackView;
  v26 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v26 &selRef_count + 2];
  [v26 setAlignment_];
  [v26 setAxis_];
  [v26 setDistribution_];
  [v26 setSpacing_];
  *&v6[v25] = v26;
  v166 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_doneButton;
  v165 = type metadata accessor for SummaryPlatterButtonView();
  v27 = [objc_allocWithZone(v165) initWithFrame_];
  [v27 &selRef_count + 2];
  v28 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v27 setBackgroundColor_];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v164 = objc_opt_self();
  v30 = [v164 bundleForClass_];
  sub_20C132964();

  v31 = [v173 blackColor];
  v32 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v33 = *&v27[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v34 = sub_20C13C914();

  [v33 setText_];

  [*&v27[v32] setTextColor_];
  [v27 setNeedsLayout];

  v35 = sub_20C13C914();
  [v27 setAccessibilityIdentifier_];

  *&v6[v166] = v27;
  v36 = [objc_allocWithZone(v165) initWithFrame_];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v35) = sub_20C1380F4();
  v37 = objc_allocWithZone(MEMORY[0x277D75348]);
  v38 = 0.15;
  if (v35 == 3)
  {
    v39 = 0.415686275;
  }

  else
  {
    v39 = 0.15;
  }

  v40 = [v37 initWithWhite:v39 alpha:1.0];
  v167 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_cooldownButton;
  [v36 setBackgroundColor_];

  v41 = [v164 bundleForClass_];
  sub_20C132964();

  v42 = [v173 whiteColor];
  v43 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v44 = *&v36[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v45 = sub_20C13C914();

  [v44 setText_];

  [*&v36[v43] setTextColor_];
  [v36 setNeedsLayout];

  v46 = sub_20C13C914();
  [v36 setAccessibilityIdentifier_];

  *&v6[v167] = v36;
  v47 = [objc_allocWithZone(v165) initWithFrame_];
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  if (sub_20C1380F4() == 3)
  {
    v38 = 0.415686275;
  }

  v48 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v38 alpha:1.0];
  v49 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_stateOfMindLoggingButton;
  [v47 setBackgroundColor_];

  v50 = [v164 bundleForClass_];
  sub_20C132964();

  v51 = [v173 whiteColor];
  v52 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v53 = *&v47[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v54 = sub_20C13C914();

  [v53 setText_];

  [*&v47[v52] setTextColor_];
  [v47 setNeedsLayout];

  v55 = sub_20C13C914();
  [v47 setAccessibilityIdentifier_];

  *&v6[v49] = v47;
  v56 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v57 = [objc_opt_self() configurationWithPointSize_];
  v58 = sub_20C13C914();
  v59 = [objc_opt_self() systemImageNamed:v58 withConfiguration:v57];

  if (v59)
  {
    v60 = [v59 imageWithRenderingMode_];
  }

  else
  {
    v60 = 0;
  }

  v61 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_ttrButton;
  [v56 setBackgroundImage:v60 forState:0];

  v62 = v56;
  [v62 setTranslatesAutoresizingMaskIntoConstraints_];
  v63 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v62 setTintColor_];

  *&v6[v61] = v62;
  v64 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_activityRingsToScrollViewBottomConstraint;
  *&v6[v64] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v65 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToContentSummaryLeadingConstraint;
  *&v6[v65] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v66 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToActivityRingsTopConstraint;
  *&v6[v66] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v67 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarLeadingConstraint;
  *&v6[v67] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v68 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToGridViewTopConstraint;
  *&v6[v68] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v69 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToScrollViewBottomConstraint;
  *&v6[v69] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *&v6[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarConstraints] = MEMORY[0x277D84F90];
  v70 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_trailingStackViewTopConstraint;
  *&v6[v70] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v71 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewHeight;
  *&v6[v71] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v72 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewWidth;
  *&v6[v72] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v73 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewTopSpacing;
  *&v6[v73] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v74 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_summary;
  v75 = type metadata accessor for SessionSummaryViewModel(0);
  (*(*(v75 - 8) + 56))(&v6[v74], 1, 1, v75);
  *&v6[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_additionalMetadata] = 0;
  *&v6[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_presenter] = a1;
  v76 = &v6[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_eventHub];
  *v76 = a3;
  *(v76 + 1) = a4;
  sub_20B51CC64(a5, &v6[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_storefrontLocalizer]);
  v77 = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v178[2] = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v178[3] = v77;
  v179 = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v78 = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v178[0] = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v178[1] = v78;
  v79 = &v6[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_stringBuilder];
  memmove(&v6[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_stringBuilder], (a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder), 0x42uLL);
  v80 = objc_allocWithZone(type metadata accessor for SummaryActivityRingsView());

  swift_unknownObjectRetain();
  sub_20B7A3194(v178, v180);
  v81 = [v80 init];
  [v81 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_activityRingsView] = v81;
  v82 = sub_20C1371C4();
  v83 = *(v79 + 1);
  v84 = *(v79 + 3);
  v181 = *(v79 + 2);
  v182 = v84;
  v85 = *(v79 + 1);
  v180[0] = *v79;
  v180[1] = v85;
  v176[1] = v83;
  v176[2] = v181;
  v176[3] = *(v79 + 3);
  v183 = *(v79 + 32);
  v177 = *(v79 + 32);
  v176[0] = v180[0];
  v86 = objc_allocWithZone(type metadata accessor for SummaryBurnBarView());
  sub_20B7A3194(v180, v175);
  v87 = SummaryBurnBarView.init(workoutActivityType:stringBuilder:)(v82, 0, v176);
  [v87 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarView] = v87;
  v174.receiver = v6;
  v174.super_class = type metadata accessor for PhoneSessionLandscapeSummaryViewController(0);
  v88 = objc_msgSendSuper2(&v174, sel_initWithNibName_bundle_, 0, 0);
  *(*&v88[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_presenter] + 24) = &off_2822FC090;
  swift_unknownObjectWeakAssign();
  v89 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_trailingStackView;
  v90 = *&v88[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_trailingStackView];
  v91 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_doneButton;
  v92 = *&v88[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_doneButton];
  v93 = v88;
  [v90 addArrangedSubview_];
  v94 = *&v88[v91];
  v95 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v96 = &v94[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v97 = *&v94[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v98 = *&v94[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped + 8];
  *v96 = sub_20BFA7310;
  v96[1] = v95;
  v99 = v94;

  sub_20B583ECC(v97, v98);

  v100 = *&v93[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_cooldownButton];
  v101 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v102 = &v100[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v103 = *&v100[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v104 = *&v100[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped + 8];
  *v102 = sub_20BFA7340;
  v102[1] = v101;
  v105 = v100;

  sub_20B583ECC(v103, v104);

  v106 = *&v93[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_stateOfMindLoggingButton];
  v107 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v108 = &v106[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v109 = *&v106[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v110 = *&v106[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped + 8];
  *v108 = sub_20BFA7370;
  v108[1] = v107;
  v111 = v93;
  v112 = v106;

  sub_20B583ECC(v109, v110);

  v113 = *&v111[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_ttrButton];
  [v113 addTarget:v111 action:sel_handleGuidedRunButtonTapped forControlEvents:64];

  v114 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_contentSummaryView;
  v115 = *&v111[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_contentSummaryView];
  v116 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v117 = &v115[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onBookmarkTapped];
  v118 = *&v115[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onBookmarkTapped];
  v119 = *&v115[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onBookmarkTapped + 8];
  *v117 = sub_20BFA7378;
  v117[1] = v116;
  v120 = v115;

  sub_20B583ECC(v118, v119);

  v121 = *&v111[v114];
  v122 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v123 = &v121[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onShareButtonTapped];
  v124 = *&v121[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onShareButtonTapped];
  v125 = *&v121[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onShareButtonTapped + 8];
  *v123 = sub_20BFA73A8;
  v123[1] = v122;
  v126 = v121;

  sub_20B583ECC(v124, v125);

  v127 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_upNextSummaryView;
  v128 = *&v111[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_upNextSummaryView];
  v129 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v130 = &v128[OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_onStartButtonTapped];
  v131 = *&v128[OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_onStartButtonTapped];
  v132 = *&v128[OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_onStartButtonTapped + 8];
  *v130 = sub_20BFA73D8;
  v130[1] = v129;
  v133 = v128;

  sub_20B583ECC(v131, v132);

  v134 = *&v111[v127];
  v135 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v136 = &v134[OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_onDoneButtonTapped];
  v137 = *&v134[OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_onDoneButtonTapped];
  v138 = *&v134[OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_onDoneButtonTapped + 8];
  *v136 = sub_20BFA7408;
  v136[1] = v135;
  v139 = v134;

  sub_20B583ECC(v137, v138);

  v140 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_queueCompleteView;
  v141 = *&v111[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_queueCompleteView];
  v142 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v143 = &v141[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_onDoneButtonTapped];
  v144 = *&v141[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_onDoneButtonTapped];
  v145 = *&v141[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_onDoneButtonTapped + 8];
  *v143 = sub_20BFA7410;
  v143[1] = v142;
  v146 = v141;

  sub_20B583ECC(v144, v145);

  v147 = *&v111[v140];
  v148 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v149 = &v147[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_onSaveButtonTapped];
  v150 = *&v147[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_onSaveButtonTapped];
  v151 = *&v147[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_onSaveButtonTapped + 8];
  *v149 = sub_20BFA7418;
  v149[1] = v148;
  v152 = v147;

  sub_20B583ECC(v150, v151);

  v153 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_backgroundView;
  v154 = *&v111[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_backgroundView];
  v155 = [v173 blackColor];
  [v154 setBackgroundColor_];

  [*&v111[v153] setAlpha_];
  [*&v111[v114] setAlpha_];
  v156 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridView;
  [*&v111[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridView] setAlpha_];
  [*&v88[v89] setAlpha_];
  v157 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarView;
  [*&v111[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarView] setAlpha_];
  v158 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_activityRingsView;
  [*&v111[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_activityRingsView] setAlpha_];
  v159 = [v111 view];
  if (v159)
  {
    v160 = v159;
    [v159 addSubview_];

    v161 = [v111 view];
    if (v161)
    {
      v162 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_scrollView;
      [v161 addSubview_];

      [*&v111[v162] addSubview_];
      [*&v111[v162] addSubview_];
      [*&v111[v162] addSubview_];
      [*&v111[v162] addSubview_];
      [*&v111[v162] addSubview_];
      [*&v111[v162] addSubview_];
      sub_20BFA11EC();

      __swift_destroy_boxed_opaque_existential_1(a5);
      v163 = sub_20C137254();
      (*(*(v163 - 8) + 8))(a2, v163);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_20BFA7450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BFA74B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20BFA7518()
{
  result = qword_27C771300;
  if (!qword_27C771300)
  {
    type metadata accessor for PhoneSessionLandscapeSummaryViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771300);
  }

  return result;
}

void sub_20BFA774C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_contentSummaryView;
  v2 = [objc_allocWithZone(type metadata accessor for SummaryContentSummaryView()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_backgroundView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_scrollView;
  v6 = [objc_allocWithZone(MEMORY[0x277D759D8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setContentInsetAdjustmentBehavior_];
  v7 = sub_20C13C914();
  [v6 setAccessibilityIdentifier_];

  *(v0 + v5) = v6;
  v8 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_scrollViewSizingView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v74 = objc_opt_self();
  v10 = [v74 clearColor];
  [v9 setBackgroundColor_];

  *(v0 + v8) = v9;
  v11 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_leadingStackView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setAlignment_];
  [v12 setAxis_];
  [v12 setDistribution_];
  [v12 setSpacing_];
  *(v0 + v11) = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridView;
  v14 = [objc_allocWithZone(type metadata accessor for SummaryMetricGridView()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v13) = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_upNextSummaryView;
  v16 = [objc_allocWithZone(type metadata accessor for SummaryUpNextView()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v15) = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_queueCompleteView;
  v18 = [objc_allocWithZone(type metadata accessor for SummaryQueueCompleteView()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v17) = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_trailingStackView;
  v20 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setAlignment_];
  [v20 setAxis_];
  [v20 setDistribution_];
  [v20 setSpacing_];
  *(v0 + v19) = v20;
  v72 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_doneButton;
  v71 = type metadata accessor for SummaryPlatterButtonView();
  v21 = [objc_allocWithZone(v71) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v21 setBackgroundColor_];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v70 = objc_opt_self();
  v24 = [v70 bundleForClass_];
  sub_20C132964();

  v25 = [v74 blackColor];
  v26 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v27 = *&v21[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v28 = sub_20C13C914();

  [v27 setText_];

  [*&v21[v26] setTextColor_];
  [v21 setNeedsLayout];

  v29 = sub_20C13C914();
  [v21 setAccessibilityIdentifier_];

  *(v0 + v72) = v21;
  v30 = [objc_allocWithZone(v71) initWithFrame_];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v29) = sub_20C1380F4();
  v31 = objc_allocWithZone(MEMORY[0x277D75348]);
  v32 = 0.15;
  if (v29 == 3)
  {
    v33 = 0.415686275;
  }

  else
  {
    v33 = 0.15;
  }

  v34 = [v31 initWithWhite:v33 alpha:1.0];
  v73 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_cooldownButton;
  [v30 setBackgroundColor_];

  v35 = [v70 bundleForClass_];
  sub_20C132964();

  v36 = [v74 whiteColor];
  v37 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v38 = *&v30[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v39 = sub_20C13C914();

  [v38 setText_];

  [*&v30[v37] setTextColor_];
  [v30 setNeedsLayout];

  v40 = sub_20C13C914();
  [v30 setAccessibilityIdentifier_];

  *(v0 + v73) = v30;
  v41 = [objc_allocWithZone(v71) initWithFrame_];
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  if (sub_20C1380F4() == 3)
  {
    v32 = 0.415686275;
  }

  v42 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v32 alpha:1.0];
  v43 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_stateOfMindLoggingButton;
  [v41 setBackgroundColor_];

  v44 = [v70 bundleForClass_];
  sub_20C132964();

  v45 = [v74 whiteColor];
  v46 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v47 = *&v41[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v48 = sub_20C13C914();

  [v47 setText_];

  [*&v41[v46] setTextColor_];
  [v41 setNeedsLayout];

  v49 = sub_20C13C914();
  [v41 setAccessibilityIdentifier_];

  *(v0 + v43) = v41;
  v50 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v51 = [objc_opt_self() configurationWithPointSize_];
  v52 = sub_20C13C914();
  v53 = [objc_opt_self() systemImageNamed:v52 withConfiguration:v51];

  if (v53)
  {
    v54 = [v53 imageWithRenderingMode_];
  }

  else
  {
    v54 = 0;
  }

  v55 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_ttrButton;
  [v50 setBackgroundImage:v54 forState:0];

  v56 = v50;
  [v56 setTranslatesAutoresizingMaskIntoConstraints_];
  v57 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v56 setTintColor_];

  *(v0 + v55) = v56;
  v58 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_activityRingsToScrollViewBottomConstraint;
  *(v0 + v58) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v59 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToContentSummaryLeadingConstraint;
  *(v0 + v59) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v60 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToActivityRingsTopConstraint;
  *(v0 + v60) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v61 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarLeadingConstraint;
  *(v0 + v61) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v62 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToGridViewTopConstraint;
  *(v0 + v62) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v63 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToScrollViewBottomConstraint;
  *(v0 + v63) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarConstraints) = MEMORY[0x277D84F90];
  v64 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_trailingStackViewTopConstraint;
  *(v0 + v64) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v65 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewHeight;
  *(v0 + v65) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v66 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewWidth;
  *(v0 + v66) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v67 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewTopSpacing;
  *(v0 + v67) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v68 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_summary;
  v69 = type metadata accessor for SessionSummaryViewModel(0);
  (*(*(v69 - 8) + 56))(v0 + v68, 1, 1, v69);
  *(v0 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_additionalMetadata) = 0;
  sub_20C13DE24();
  __break(1u);
}

double sub_20BFA8610(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_20B51F1D8(v3, v9);
      if (swift_dynamicCast())
      {
        if (!v8)
        {
          v5 = (v1 + OBJC_IVAR____TtC9SeymourUI29AddBookmarkShareSheetActivity_workoutIdentifier);
          *v5 = v6;
          v5[1] = v7;

          return result;
        }

        result = sub_20B624748(v6, v7, v8);
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

id sub_20BFA8730()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - v3;
  v5 = sub_20C132E94();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_20C138034();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC9SeymourUI29AddBookmarkShareSheetActivity_workoutIdentifier + 8])
  {
    v24 = v1;

    sub_20C132E84();
    sub_20C138014();
    v11 = *&v0[OBJC_IVAR____TtC9SeymourUI29AddBookmarkShareSheetActivity_bookmarkClient + 24];
    v21[2] = *&v0[OBJC_IVAR____TtC9SeymourUI29AddBookmarkShareSheetActivity_bookmarkClient + 32];
    v21[1] = __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC9SeymourUI29AddBookmarkShareSheetActivity_bookmarkClient], v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8, &unk_20C179880);
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = v4;
    v14 = v2;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_20C14F980;
    (*(v7 + 16))(v15 + v12, v10, v6);
    sub_20BE8BBF4(v15);
    swift_setDeallocating();
    v16 = *(v7 + 8);
    v22 = v0;
    v23 = v16;
    v16((v15 + v12), v6);
    swift_deallocClassInstance();
    sub_20C13A1E4();

    v17 = v24;
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    v18(sub_20B52347C, v19);

    (*(v14 + 8))(v13, v17);
    [v22 activityDidFinish_];
    return v23(v10, v6);
  }

  else
  {

    return [v0 activityDidFinish_];
  }
}

id sub_20BFA8B40(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AddBookmarkShareSheetActivity();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20BFA8CA4(uint64_t a1)
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 1;
      v7[24] = 96;
      v12 = swift_storeEnumTagMultiPayload();
      v13 = MEMORY[0x28223BE20](v12);
      *(&v16 - 4) = 0;
      *(&v16 - 24) = 1;
      *(&v16 - 2) = v7;
      *(&v16 - 1) = v11;
      v14 = [*(v11 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
      if (v14)
      {
        v15 = v14;
        sub_20C1331E4();

        sub_20C0C1CDC(v4, sub_20B5E2A84);
        swift_unknownObjectRelease();
        (*(v2 + 8))(v4, v1);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      sub_20B763348(v7, type metadata accessor for ShelfItemAction);
    }

    else
    {
    }
  }
}

uint64_t sub_20BFA8F44()
{
  v1 = sub_20C133244();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330, &qword_20C1875B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ButtonAction(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButtonAction;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v13, v8, &qword_27C770330, &qword_20C1875B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20B520158(v8, &qword_27C770330, &qword_20C1875B0);
  }

  sub_20B5F6860(v8, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_20B7632E0(v12, v5, type metadata accessor for ButtonAction);
    v17 = swift_storeEnumTagMultiPayload();
    v18 = MEMORY[0x28223BE20](v17);
    *(&v24 - 4) = 0;
    *(&v24 - 24) = 1;
    *(&v24 - 2) = v5;
    *(&v24 - 1) = v16;
    v19 = [*&v16[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] indexPathForCell_];
    if (v19)
    {
      v20 = v24;
      v21 = v19;
      sub_20C1331E4();

      sub_20C0C1CDC(v20, sub_20B5E2A84);
      (*(v25 + 8))(v20, v26);
    }

    swift_unknownObjectRelease();
    sub_20B763348(v12, type metadata accessor for ButtonAction);
    v22 = type metadata accessor for ShelfItemAction;
    v23 = v5;
  }

  else
  {
    v22 = type metadata accessor for ButtonAction;
    v23 = v12;
  }

  return sub_20B763348(v23, v22);
}

void sub_20BFA9334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v10 = sub_20C133244();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      *v15 = a3;
      *(v15 + 1) = a4;
      *(v15 + 2) = a5;
      v15[24] = a6;
      v20 = swift_storeEnumTagMultiPayload();
      v26[1] = v26;
      MEMORY[0x28223BE20](v20);
      v26[-4] = 0;
      LOBYTE(v26[-3]) = 1;
      v26[-2] = v15;
      v26[-1] = v19;
      v21 = *(v19 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v22 = a5;

      v23 = v17;
      v24 = [v21 indexPathForCell_];
      if (v24)
      {
        v25 = v24;
        sub_20C1331E4();

        sub_20C0C1CDC(v12, sub_20B5E275C);
        (*(v27 + 8))(v12, v10);
      }

      swift_unknownObjectRelease();

      sub_20B763348(v15, type metadata accessor for ShelfItemAction);
    }

    else
    {
    }
  }
}

id sub_20BFA95B4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330, &qword_20C1875B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  sub_20B7632E0(a1, &v34 - v10, type metadata accessor for ButtonAction);
  v12 = type metadata accessor for ButtonAction(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButtonAction;
  swift_beginAccess();
  sub_20B5DF2D4(v11, v2 + v13, &qword_27C770330, &qword_20C1875B0);
  swift_endAccess();
  v14 = *(*(v2 + OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButtonTextView) + OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel);
  if (*(a1 + 40))
  {
    v15 = sub_20C13C914();
  }

  else
  {
    v15 = 0;
  }

  [v14 setText_];

  sub_20B7632E0(a1 + *(v12 + 28), v8, type metadata accessor for ButtonAction.ActionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v26 = *v8;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8, &unk_20C14FB90);
    v28 = *(v27 + 48);
    v29 = *(v27 + 64);
    v30 = *(v2 + OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButton);
    v31 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    v32 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
    [*(v30 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView) setBackgroundColor:v31 forState:8];
    [*(v30 + v32) setBackgroundColor:v31 forState:1];

    *(v30 + OBJC_IVAR____TtC9SeymourUI8TVButton_isLoading) = v26;
    sub_20B9DDDD4();
    sub_20B520158(&v8[v29], &unk_27C768660, &unk_20C152F60);
    sub_20B520158(&v8[v28], &qword_27C7622F0, &unk_20C14FD00);
  }

  else
  {
    v17 = EnumCaseMultiPayload == 17 || EnumCaseMultiPayload == 14;
    v21 = *(v2 + OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButton);
    if (v17)
    {
      v18 = [objc_opt_self() quaternarySystemFillColor];
      v19 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
      [*(v21 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView) setBackgroundColor:v18 forState:8];
      [*(v21 + v19) setBackgroundColor:v18 forState:4];
      [*(v21 + v19) setBackgroundColor:v18 forState:1];
      [*(v21 + v19) setBackgroundColor:v18 forState:0];

      v20 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.9];
      [*(v21 + v19) setBackgroundColor:v20 forState:8];
      [*(v21 + v19) setBackgroundColor:v20 forState:1];

      *(v21 + OBJC_IVAR____TtC9SeymourUI8TVButton_isLoading) = 0;
      sub_20B9DDDD4();
    }

    else
    {
      v22 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      v23 = [v22 colorWithAlphaComponent_];

      v24 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
      [*(v21 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView) setBackgroundColor:v23 forState:8];
      [*(v21 + v24) setBackgroundColor:v23 forState:4];
      [*(v21 + v24) setBackgroundColor:v23 forState:1];
      [*(v21 + v24) setBackgroundColor:v23 forState:0];

      v25 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      [*(v21 + v24) setBackgroundColor:v25 forState:8];
      [*(v21 + v24) setBackgroundColor:v25 forState:1];

      *(v21 + OBJC_IVAR____TtC9SeymourUI8TVButton_isLoading) = 0;
      sub_20B9DDDD4();
      sub_20B763348(v8, type metadata accessor for ButtonAction.ActionType);
    }
  }

  return [*(v3 + OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_ellipsisButton) setHidden_];
}

id sub_20BFA9B1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVQueueListHeaderCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVQueueListHeaderCell(uint64_t a1)
{
  result = qword_27C771380;
  if (!qword_27C771380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BFA9CCC(uint64_t a1)
{
  sub_20BFA9DFC(319, &qword_281103340, type metadata accessor for ShelfCellItemInfo);
  if (v1 <= 0x3F)
  {
    sub_20BFA9DFC(319, &qword_27C771398, type metadata accessor for ButtonAction);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20BFA9DFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20BFA9E50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BFA9E98(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

double sub_20BFA9EF4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BFA9F40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550, &unk_20C1505A0);
}

uint64_t sub_20BFA9FA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5DF2D4(a1, v1 + v3, &qword_27C762550, &unk_20C1505A0);
  return swift_endAccess();
}

uint64_t sub_20BFAA01C(unint64_t a1)
{
  v86 = sub_20C13BB84();
  v3 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v5 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v79 - v7;
  v9 = type metadata accessor for ButtonAction(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330, &qword_20C1875B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v79 - v17;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x3E)
  {
    v83 = v12;
    v85 = v1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768198, &unk_20C166920);
    v84 = v18;
    v20 = v19;
    v21 = swift_projectBox();
    v22 = v21[3];
    v23 = v21[4];
    v24 = v21[5];
    v79[1] = v21[2];
    v79[2] = v23;
    v25 = v20[20];
    v81 = *(v21 + v20[24]);
    v82 = *(v21 + v20[28]);
    v26 = v20[32];
    v27 = v84;
    v80 = *(v21 + v26);
    sub_20B52F9E8(v21 + v25, v84, &qword_27C770330, &qword_20C1875B0);
    if (v22 && v24)
    {
      sub_20B52F9E8(v27, v15, &qword_27C770330, &qword_20C1875B0);
      if ((*(v10 + 48))(v15, 1, v9) == 1)
      {
        sub_20B520158(v15, &qword_27C770330, &qword_20C1875B0);
      }

      else
      {
        v40 = v83;
        sub_20B5F6860(v15, v83);
        if (v82 != 2)
        {
          v44 = v85;
          v45 = *&v85[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_titleLabel];

          v46 = v81;

          v47 = sub_20C13C914();

          [v45 setText_];

          v48 = *&v44[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_durationLabel];
          v49 = sub_20C13C914();

          [v48 setText_];

          v50 = *&v44[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_overviewLabel];
          v51 = sub_20C13C914();

          [v50 setText_];

          v52 = *&v44[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_ellipsisButton];
          v53 = v46;
          v54 = *(v46 + 16);
          if (v54)
          {
            v86 = *&v44[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_ellipsisButton];
            v88 = MEMORY[0x277D84F90];
            sub_20C13DD64();
            sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
            v55 = (v53 + 56);
            do
            {
              v63 = *v55;
              v56 = *(v55 - 3);
              v57 = *(v55 - 2);
              v58 = *(v55 - 1);
              v55 += 32;
              v59 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v60 = swift_allocObject();
              *(v60 + 16) = v59;
              *(v60 + 24) = v56;
              *(v60 + 32) = v57;
              *(v60 + 40) = v58;
              *(v60 + 48) = v63;
              v61 = v58;
              swift_bridgeObjectRetain_n();
              v62 = v61;
              sub_20C13D624();
              sub_20C13DD34();
              sub_20C13DD74();
              sub_20C13DD84();
              sub_20C13DD44();
              --v54;
            }

            while (v54);

            sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
            v64 = sub_20C13D554();
            v52 = v86;
          }

          else
          {

            v64 = 0;
          }

          v65 = *&v52[OBJC_IVAR____TtC9SeymourUI8TVButton_menu];
          *&v52[OBJC_IVAR____TtC9SeymourUI8TVButton_menu] = v64;

          v66 = v82 & 1;
          v67 = v83;
          v68 = v85;
          sub_20BFA95B4(v83, v82 & 1);
          v69 = *&v68[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButton];
          v70 = v80;
          [v69 setUserInteractionEnabled_];
          [v52 setUserInteractionEnabled_];
          if (v70)
          {
            v71 = 32;
          }

          else
          {
            v72 = [objc_opt_self() quaternarySystemFillColor];
            v73 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
            [*&v69[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v72 forState:8];
            [*&v69[v73] setBackgroundColor:v72 forState:4];
            [*&v69[v73] setBackgroundColor:v72 forState:1];
            [*&v69[v73] setBackgroundColor:v72 forState:0];

            v71 = 48;
          }

          if (!v66)
          {
            v71 = 40;
          }

          v74 = *&v68[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_layout + v71];
          if (v66)
          {
            v75 = v70;
          }

          else
          {
            v75 = 1;
          }

          v76 = v74;
          sub_20BB87D08(v76);
          v77 = 48;
          if (v75)
          {
            v77 = 40;
          }

          v78 = *&v68[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_layout + v77];
          sub_20B8C9778(v78);
          [v68 setNeedsLayout];

          sub_20B763348(v67, type metadata accessor for ButtonAction);
          return sub_20B520158(v84, &qword_27C770330, &qword_20C1875B0);
        }

        sub_20B763348(v40, type metadata accessor for ButtonAction);
      }
    }

    sub_20C13B444();
    v41 = sub_20C13BB74();
    v42 = sub_20C13D1D4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_20B517000, v41, v42, "Using ShelfItem.upNextQueueHeader on tv without providing all necessary information!", v43, 2u);
      MEMORY[0x20F2F6A40](v43, -1, -1);
    }

    (*(v3 + 8))(v8, v86);
    return sub_20B520158(v84, &qword_27C770330, &qword_20C1875B0);
  }

  sub_20C13B534();

  v28 = v1;
  v29 = sub_20C13BB74();
  v30 = sub_20C13D1D4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v87 = a1;
    v88 = v33;
    *v31 = 138543618;
    *(v31 + 4) = v28;
    *v32 = v28;
    *(v31 + 12) = 2082;
    v34 = sub_20B5F66D0();
    v35 = v28;
    v36 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v34);
    v38 = sub_20B51E694(v36, v37, &v88);

    *(v31 + 14) = v38;
    _os_log_impl(&dword_20B517000, v29, v30, "Attempted to configure %{public}@ with item: %{public}s", v31, 0x16u);
    sub_20B520158(v32, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x20F2F6A40](v33, -1, -1);
    MEMORY[0x20F2F6A40](v31, -1, -1);
  }

  return (*(v3 + 8))(v5, v86);
}

char *sub_20BFAA98C()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_buttonFocusGuide;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  v5 = &v0[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_layout];
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  v9 = [v7 secondaryLabelColor];
  *v5 = xmmword_20C1874F0;
  *(v5 + 1) = xmmword_20C187500;
  *(v5 + 4) = v6;
  *(v5 + 5) = v8;
  *(v5 + 6) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_titleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setLineBreakMode_];
  [v11 setNumberOfLines_];
  [v11 setLineBreakMode_];
  v12 = objc_opt_self();
  v13 = [v12 smu:*MEMORY[0x277D76A08] preferredFontForTextStyle:1280 variant:?];
  [v11 setFont_];

  v14 = [v7 secondaryLabelColor];
  [v11 setTextColor_];

  [v11 setTextAlignment_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v10] = v11;
  v15 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_overviewLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v17 = *MEMORY[0x277D76920];
  v18 = [v12 preferredFontForTextStyle_];
  [v16 setFont_];

  v19 = [v7 labelColor];
  [v16 setTextColor_];

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v15] = v16;
  v20 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_durationLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v22 = [v12 preferredFontForTextStyle_];
  [v21 setFont_];

  v23 = [v7 secondaryLabelColor];
  [v21 setTextColor_];

  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v20] = v21;
  v24 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButtonAction;
  v25 = type metadata accessor for ButtonAction(0);
  (*(*(v25 - 8) + 56))(&v1[v24], 1, 1, v25);
  v26 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());
  v27 = TVButtonTextContentView.init(title:)(45, 0xE100000000000000);
  v28 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButtonTextView;
  *&v1[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButtonTextView] = v27;
  v29 = *MEMORY[0x277D76918];
  v30 = *&v27[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel];
  v31 = [v12 smu:v29 preferredFontForTextStyle:1024 variant:?];
  [v30 setFont_];

  v32 = *&v1[v28];
  v33 = _UISolariumEnabled();
  v34 = type metadata accessor for TVButton();
  v35 = sub_20BB87F6C(v32, v33, 0, objc_allocWithZone(v34), 0.0, 0.0, 0.0, 0.0);
  v36 = sub_20B9E1660(2uLL, 0);

  v37 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v38 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  [*&v36[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v37 forState:8];
  [*&v36[v38] setBackgroundColor:v37 forState:1];

  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButton] = v36;
  v39 = [v12 smu:v29 preferredFontForTextStyle:1024 variant:?];
  v40 = [objc_opt_self() configurationWithFont_];

  v165 = v40;
  v41 = sub_20C13C914();
  v42 = [objc_opt_self() systemImageNamed:v41 withConfiguration:v165];

  v43 = objc_allocWithZone(type metadata accessor for TVButtonImageContentView());
  v164 = v42;
  v44 = sub_20B8C9328(v42);
  *&v1[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_ellipsisButtonContentView] = v44;
  v45 = sub_20BB87F4C(v44, 1, 1, objc_allocWithZone(v34), 0.0, 0.0, 0.0, 0.0);
  [v45 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v45[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setFocusedSizeIncrease_];
  v46 = [v7 quaternarySystemFillColor];
  [v45 setBackgroundColor_];

  *&v1[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_ellipsisButton] = v45;
  v167.receiver = v1;
  v167.super_class = type metadata accessor for TVQueueListHeaderCell(0);
  v47 = objc_msgSendSuper2(&v167, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v48 = [v47 contentView];
  [v48 setTranslatesAutoresizingMaskIntoConstraints_];

  [v47 setInsetsLayoutMarginsFromSafeArea_];
  v49 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_buttonFocusGuide;
  v50 = *&v47[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_buttonFocusGuide];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20C151490;
  v52 = *&v47[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButton];
  v53 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButton;
  *(v51 + 32) = v52;
  v54 = *&v47[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_ellipsisButton];
  v55 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_ellipsisButton;
  *(v51 + 40) = v54;
  v56 = v50;
  v57 = v52;
  v58 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0, &unk_20C14F970);
  v59 = sub_20C13CC54();

  [v56 setPreferredFocusEnvironments_];

  v60 = [v47 &selRef_setMaximumFractionDigits_];
  [v60 addLayoutGuide_];

  v61 = [v47 &selRef_setMaximumFractionDigits_];
  v62 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_titleLabel;
  v157 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_titleLabel;
  [v61 addSubview_];

  v63 = [v47 &selRef_setMaximumFractionDigits_];
  v166 = v53;
  [v63 addSubview_];

  v64 = [v47 &selRef_setMaximumFractionDigits_];
  [v64 addSubview_];

  v65 = [v47 &selRef_setMaximumFractionDigits_];
  v159 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_overviewLabel;
  [v65 addSubview_];

  v66 = v47;
  v67 = [v66 &selRef_setMaximumFractionDigits_];
  v161 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_durationLabel;
  [v67 addSubview_];

  v163 = v55;
  [*&v47[v55] setContextMenuInteractionEnabled_];
  [*&v47[v55] setShowsMenuAsPrimaryAction_];
  v68 = *&v47[v55];
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = &v68[OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu];
  v71 = *&v68[OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu];
  v72 = *&v68[OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu + 8];
  *v70 = sub_20BFAC21C;
  v70[1] = v69;
  v73 = v68;

  sub_20B583ECC(v71, v72);

  v74 = *&v47[v53];
  [v74 addTarget:v66 action:sel_handleMainActionButtonTapped forControlEvents:0x2000];

  [*&v47[v62] sizeToFit];
  v75 = v66;
  v76 = [v66 &selRef_setMaximumFractionDigits_];
  v78 = *MEMORY[0x277D768C8];
  v77 = *(MEMORY[0x277D768C8] + 8);
  v79 = *(MEMORY[0x277D768C8] + 16);
  v80 = *(MEMORY[0x277D768C8] + 24);
  v81 = [v76 leadingAnchor];
  v82 = [v66 leadingAnchor];
  v83 = [v81 constraintEqualToAnchor:v82 constant:v77];

  LODWORD(v84) = 1148846080;
  [v83 setPriority_];
  v160 = v83;
  v85 = [v76 trailingAnchor];
  v86 = [v66 trailingAnchor];
  v87 = [v85 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v88) = 1148846080;
  [v87 setPriority_];
  v89 = v87;
  v90 = [v76 topAnchor];
  v91 = [v66 &selRef_setLineBreakMode_];
  v92 = [v90 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v93) = 1148846080;
  [v92 setPriority_];
  v94 = [v76 bottomAnchor];
  v95 = [v75 &selRef_secondaryLabel + 5];
  v96 = [v94 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v97) = 1148846080;
  [v96 setPriority_];
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_20C14FE90;
  *(v162 + 32) = v160;
  *(v162 + 40) = v89;
  *(v162 + 48) = v92;
  *(v162 + 56) = v96;
  v98 = v92;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150040;
  v100 = inited;
  v101 = [*&v47[v157] leadingAnchor];
  v102 = [v75 contentView];
  v103 = [v102 leadingAnchor];

  v104 = [v101 constraintEqualToAnchor_];
  v100[4] = v104;
  v105 = [*&v47[v157] topAnchor];
  v106 = [v75 contentView];
  v107 = [v106 topAnchor];

  v108 = [v105 &selRef:v107 alertControllerReleasedDictationButton:? + 5];
  v100[5] = v108;
  v109 = [*&v47[v157] trailingAnchor];
  v110 = [v75 contentView];
  v111 = [v110 trailingAnchor];

  v112 = [v109 &selRef:v111 alertControllerReleasedDictationButton:? + 5];
  v100[6] = v112;
  v113 = swift_initStackObject();
  *(v113 + 16) = xmmword_20C14FE90;
  v114 = [*&v47[v159] leadingAnchor];
  v115 = [*&v47[v157] leadingAnchor];
  v116 = [v114 &selRef:v115 alertControllerReleasedDictationButton:? + 5];

  *(v113 + 32) = v116;
  v117 = [*&v47[v159] topAnchor];
  v118 = [*&v47[v157] bottomAnchor];
  v119 = &v75[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_layout];
  v120 = [v117 constraintEqualToAnchor:v118 constant:*&v75[OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_layout]];

  *(v113 + 40) = v120;
  v121 = [*&v75[v161] leadingAnchor];
  v122 = [*&v47[v159] trailingAnchor];
  v123 = [v121 constraintEqualToAnchor:v122 constant:v119[1]];

  *(v113 + 48) = v123;
  v158 = v113;
  v124 = [*&v75[v161] topAnchor];
  v125 = [*&v47[v159] topAnchor];
  v126 = [v124 constraintEqualToAnchor_];

  *(v113 + 56) = v126;
  v127 = swift_initStackObject();
  *(v127 + 16) = xmmword_20C14FE90;
  v128 = [*&v47[v166] leadingAnchor];
  v129 = [v75 contentView];
  v130 = [v129 leadingAnchor];

  v131 = [v128 constraintEqualToAnchor_];
  *(v127 + 32) = v131;
  v132 = [*&v47[v166] topAnchor];
  v133 = [*&v47[v159] bottomAnchor];
  v134 = [v132 constraintEqualToAnchor:v133 constant:v119[2]];

  *(v127 + 40) = v134;
  v135 = [*&v47[v166] widthAnchor];
  v136 = [v135 constraintEqualToConstant_];

  *(v127 + 48) = v136;
  v137 = [*&v47[v166] bottomAnchor];
  v138 = [v75 contentView];
  v139 = [v138 bottomAnchor];

  v140 = [v137 constraintEqualToAnchor_];
  *(v127 + 56) = v140;
  v141 = swift_initStackObject();
  *(v141 + 16) = xmmword_20C14FE90;
  v142 = [*&v47[v163] trailingAnchor];
  v143 = [v75 contentView];

  v144 = [v143 trailingAnchor];
  v145 = [v142 constraintEqualToAnchor_];

  *(v141 + 32) = v145;
  v146 = [*&v47[v163] centerYAnchor];
  v147 = [*&v47[v166] centerYAnchor];
  v148 = [v146 constraintEqualToAnchor_];

  *(v141 + 40) = v148;
  v149 = [*&v47[v163] widthAnchor];
  v150 = [v149 constraintEqualToConstant_];

  *(v141 + 48) = v150;
  v151 = [*&v47[v163] heightAnchor];
  v152 = [*&v47[v163] widthAnchor];
  v153 = [v151 &selRef:v152 alertControllerReleasedDictationButton:? + 5];

  *(v141 + 56) = v153;
  v154 = objc_opt_self();
  sub_20B8D9310(v100);
  sub_20B8D9310(v127);
  sub_20B8D9310(v141);
  sub_20B8D9310(v158);
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v155 = sub_20C13CC54();

  [v154 activateConstraints_];

  return v75;
}

void sub_20BFABDD0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_buttonFocusGuide;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  v4 = v0 + OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_layout;
  v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  v8 = [v6 secondaryLabelColor];
  *v4 = xmmword_20C1874F0;
  *(v4 + 16) = xmmword_20C187500;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 48) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_titleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];
  [v10 setLineBreakMode_];
  v11 = objc_opt_self();
  v12 = [v11 smu:*MEMORY[0x277D76A08] preferredFontForTextStyle:1280 variant:?];
  [v10 setFont_];

  v13 = [v6 secondaryLabelColor];
  [v10 setTextColor_];

  [v10 setTextAlignment_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v9) = v10;
  v14 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_overviewLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v16 = *MEMORY[0x277D76920];
  v17 = [v11 preferredFontForTextStyle_];
  [v15 setFont_];

  v18 = [v6 labelColor];
  [v15 setTextColor_];

  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v15;
  v19 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_durationLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v21 = [v11 preferredFontForTextStyle_];
  [v20 setFont_];

  v22 = [v6 secondaryLabelColor];
  [v20 setTextColor_];

  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v19) = v20;
  v23 = OBJC_IVAR____TtC9SeymourUI21TVQueueListHeaderCell_mainButtonAction;
  v24 = type metadata accessor for ButtonAction(0);
  (*(*(v24 - 8) + 56))(v0 + v23, 1, 1, v24);
  sub_20C13DE24();
  __break(1u);
}

uint64_t type metadata accessor for ShelfDiffableItemIdentifierX(uint64_t a1)
{
  result = qword_27C7713A8;
  if (!qword_27C7713A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BFAC298(uint64_t a1)
{
  result = sub_20C133244();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ShelfItemX(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BFAC31C()
{
  v1 = type metadata accessor for ShelfItemX(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C13E164();
  sub_20C133244();
  sub_20BFACA6C(&qword_27C764180, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_20C13C7C4();
  v4 = type metadata accessor for ShelfDiffableItemIdentifierX(0);
  sub_20B8D1410(v0 + *(v4 + 20), v3);
  v5 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0, &unk_20C1719B0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 64);
  MEMORY[0x20F2F58E0](0);
  sub_20BBA7D74(v13, v5);

  v9 = sub_20C135214();
  sub_20BFACA6C(&qword_27C762F80, MEMORY[0x277D51640], MEMORY[0x277D51648]);
  sub_20C13C7C4();
  (*(*(v9 - 8) + 8))(v3 + v7, v9);
  v10 = sub_20C133954();
  sub_20BFACA6C(&qword_27C767540, MEMORY[0x277D50180], MEMORY[0x277D50188]);
  sub_20C13C7C4();
  (*(*(v10 - 8) + 8))(v3 + v8, v10);
  return sub_20C13E1B4();
}

uint64_t sub_20BFAC55C(__int128 *a1, uint64_t a2)
{
  v5 = type metadata accessor for ShelfItemX(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C133244();
  sub_20BFACA6C(&qword_27C764180, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_20C13C7C4();
  sub_20B8D1410(v2 + *(a2 + 20), v7);
  v8 = *v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0, &unk_20C1719B0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  MEMORY[0x20F2F58E0](0);
  sub_20BBA7D74(a1, v8);

  v12 = sub_20C135214();
  sub_20BFACA6C(&qword_27C762F80, MEMORY[0x277D51640], MEMORY[0x277D51648]);
  sub_20C13C7C4();
  (*(*(v12 - 8) + 8))(v7 + v10, v12);
  v13 = sub_20C133954();
  sub_20BFACA6C(&qword_27C767540, MEMORY[0x277D50180], MEMORY[0x277D50188]);
  sub_20C13C7C4();
  return (*(*(v13 - 8) + 8))(v7 + v11, v13);
}

uint64_t sub_20BFAC780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfItemX(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C13E164();
  sub_20C133244();
  sub_20BFACA6C(&qword_27C764180, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_20C13C7C4();
  sub_20B8D1410(v2 + *(a2 + 20), v6);
  v7 = *v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0, &unk_20C1719B0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  MEMORY[0x20F2F58E0](0);
  sub_20BBA7D74(v15, v7);

  v11 = sub_20C135214();
  sub_20BFACA6C(&qword_27C762F80, MEMORY[0x277D51640], MEMORY[0x277D51648]);
  sub_20C13C7C4();
  (*(*(v11 - 8) + 8))(v6 + v9, v11);
  v12 = sub_20C133954();
  sub_20BFACA6C(&qword_27C767540, MEMORY[0x277D50180], MEMORY[0x277D50188]);
  sub_20C13C7C4();
  (*(*(v12 - 8) + 8))(v6 + v10, v12);
  return sub_20C13E1B4();
}

uint64_t sub_20BFAC9BC(uint64_t a1, uint64_t a2)
{
  if ((sub_20C1331D4() & 1) == 0)
  {
    return 0;
  }

  return sub_20B8D0E48();
}

uint64_t sub_20BFACA6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20BFACAC8()
{
  result = qword_27C7713C0;
  if (!qword_27C7713C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7713C0);
  }

  return result;
}

id NotificationSettingsViewController.__allocating_init(dependencies:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  v3 = sub_20BFB2120();

  return v3;
}

id NotificationSettingsViewController.init(dependencies:)(uint64_t a1, __n128 a2)
{
  v2 = sub_20BFB2120();

  return v2;
}

id NotificationSettingsViewController.__deallocating_deinit()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notifyToken;
  if ([v1 tokenIsValid_])
  {
    [v1 cancelToken_];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for NotificationSettingsViewController(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_20BFACE60()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v124 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  v130 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v129 = &v124 - v6;
  v7 = type metadata accessor for NotificationSettingsViewController(0);
  v134.receiver = v0;
  v134.super_class = v7;
  objc_msgSendSuper2(&v134, sel_viewDidLoad);
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 systemBackgroundColor];
  [v9 setBackgroundColor_];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v14 = sub_20C13C914();

  [v1 setTitle_];

  v15 = *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_tableView];
  [v15 setDataSource_];
  [v15 setEstimatedRowHeight_];
  [v15 setRowHeight_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v132 = *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentUnavailableView];
  [v132 setHidden_];
  v16 = *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_loadingView];
  v17 = [v10 systemBackgroundColor];
  [v16 setBackgroundColor_];

  v131 = *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_spinnerView];
  [v16 addSubview_];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = v18;
  [v18 addSubview_];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = v20;
  [v20 addSubview_];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v23 = v22;
  v128 = v5;
  [v22 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20C1530F0;
  v25 = [v15 topAnchor];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v24 + 32) = v29;
  v30 = [v15 leadingAnchor];
  v31 = [v1 view];
  if (!v31)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v32 = v31;
  v126 = v4;
  v33 = [v31 leadingAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(v24 + 40) = v34;
  v35 = [v15 trailingAnchor];
  v36 = [v1 view];
  if (!v36)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v37 = v36;
  v38 = [v36 trailingAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v24 + 48) = v39;
  v40 = [v15 widthAnchor];
  v41 = [v1 view];
  if (!v41)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v42 = v41;
  v43 = [v41 widthAnchor];

  v44 = [v40 constraintEqualToAnchor_];
  *(v24 + 56) = v44;
  v127 = v15;
  v45 = [v15 bottomAnchor];
  v46 = [v1 view];
  if (!v46)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v47 = v46;
  v48 = [v46 bottomAnchor];

  v49 = [v45 constraintEqualToAnchor_];
  *(v24 + 64) = v49;
  v50 = [v16 topAnchor];
  v51 = [v1 view];
  if (!v51)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v52 = v51;
  v53 = [v51 topAnchor];

  v54 = [v50 &selRef:v53 alertControllerReleasedDictationButton:? + 5];
  *(v24 + 72) = v54;
  v55 = [v16 leadingAnchor];
  v56 = [v1 view];
  if (!v56)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v57 = v56;
  v58 = [v56 leadingAnchor];

  v59 = [v55 &selRef:v58 alertControllerReleasedDictationButton:? + 5];
  *(v24 + 80) = v59;
  v60 = [v16 trailingAnchor];
  v61 = [v1 view];
  if (!v61)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v62 = v61;
  v63 = [v61 trailingAnchor];

  v64 = [v60 &selRef:v63 alertControllerReleasedDictationButton:? + 5];
  *(v24 + 88) = v64;
  v65 = [v16 &selRef_secondaryLabel + 5];
  v66 = [v1 view];
  if (!v66)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v67 = v66;
  v68 = v16;
  v69 = [v66 &selRef_secondaryLabel + 5];

  v70 = [v65 &selRef:v69 alertControllerReleasedDictationButton:? + 5];
  *(v24 + 96) = v70;
  v71 = v131;
  v72 = [v131 centerXAnchor];
  v73 = [v68 centerXAnchor];
  v74 = [v72 &selRef:v73 alertControllerReleasedDictationButton:? + 5];

  *(v24 + 104) = v74;
  v75 = [v71 centerYAnchor];
  v76 = [v68 centerYAnchor];
  v77 = [v75 &selRef:v76 alertControllerReleasedDictationButton:? + 5];

  *(v24 + 112) = v77;
  v78 = v132;
  v79 = [v132 centerXAnchor];
  v80 = [v1 view];
  v125 = v68;
  if (!v80)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v81 = v80;
  v82 = [v80 centerXAnchor];

  v83 = [v79 &selRef:v82 alertControllerReleasedDictationButton:? + 5];
  *(v24 + 120) = v83;
  v84 = [v78 centerYAnchor];
  v85 = [v1 view];
  if (!v85)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v86 = v85;
  v87 = [v85 centerYAnchor];

  v88 = [v84 &selRef:v87 alertControllerReleasedDictationButton:? + 5];
  *(v24 + 128) = v88;
  v89 = [v78 heightAnchor];
  v90 = [v1 view];
  if (!v90)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v91 = v90;
  v92 = [v90 heightAnchor];

  v93 = [v89 constraintLessThanOrEqualToAnchor_];
  *(v24 + 136) = v93;
  v94 = [v78 leadingAnchor];
  v95 = [v1 view];
  if (!v95)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v96 = v95;
  v97 = [v95 safeAreaLayoutGuide];

  v98 = [v97 leadingAnchor];
  v99 = [v94 &selRef:v98 alertControllerReleasedDictationButton:? + 5];

  *(v24 + 144) = v99;
  v100 = [v78 trailingAnchor];
  v101 = [v1 view];
  if (!v101)
  {
LABEL_40:
    __break(1u);
    return;
  }

  v102 = v101;
  v103 = objc_opt_self();
  v104 = [v102 safeAreaLayoutGuide];

  v105 = [v104 trailingAnchor];
  v106 = [v100 &selRef:v105 alertControllerReleasedDictationButton:? + 5];

  *(v24 + 152) = v106;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v107 = sub_20C13CC54();

  [v103 activateConstraints_];

  sub_20B51C88C(0, &qword_27C76C770, 0x277D75B48);
  v108 = swift_getObjCClassFromMetadata();
  v109 = sub_20C13C914();
  v110 = v127;
  [v127 registerClass:v108 forCellReuseIdentifier:v109];

  type metadata accessor for RemoteNotificationSettingCell();
  v111 = swift_getObjCClassFromMetadata();
  v112 = sub_20C13C914();
  [v110 registerClass:v111 forCellReuseIdentifier:v112];

  v113 = [objc_opt_self() defaultCenter];
  [v113 addObserver:v1 selector:sel_updateSettings name:*MEMORY[0x277D76758] object:0];

  sub_20BFAF468();
  v114 = sub_20BFAF2B4();
  v115 = v129;
  v116 = v130;
  v117 = v128;
  (*(v130 + 16))(v129, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController__fitnessPlusNotificationSettingsEnabled], v128, v114);
  sub_20C13A344();
  (*(v116 + 8))(v115, v117);
  if (v133 == 1)
  {
    [v131 startAnimating];
    v118 = sub_20C13CDF4();
    v119 = v126;
    (*(*(v118 - 8) + 56))(v126, 1, 1, v118);
    sub_20C13CDA4();
    v120 = v1;
    v121 = sub_20C13CD94();
    v122 = swift_allocObject();
    v123 = MEMORY[0x277D85700];
    v122[2] = v121;
    v122[3] = v123;
    v122[4] = v120;
    sub_20B6383D0(0, 0, v119, &unk_20C187700, v122);
  }

  else
  {
    [v125 removeFromSuperview];
  }
}

uint64_t sub_20BFADCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  v4[3] = swift_task_alloc();
  v4[4] = sub_20C13CDA4();
  v4[5] = sub_20C13CD94();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_20BFADDE0;

  return sub_20BFAE20C();
}

uint64_t sub_20BFADDE0()
{

  v1 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BFADF1C, v1, v0);
}

uint64_t sub_20BFADF1C()
{
  v1 = *(v0 + 24);

  v2 = sub_20C13CDF4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = sub_20C13CD94();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v3;

  sub_20B6380FC(0, 0, v1, &unk_20C1878D8, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20BFAE060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_20C13CDA4();
  v4[7] = sub_20C13CD94();
  v6 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BFAE0F8, v6, v5);
}

uint64_t sub_20BFAE0F8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [*(Strong + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_spinnerView) stopAnimating];
    [*&v2[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_loadingView] removeFromSuperview];
    sub_20BFAF880();
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20BFAE20C()
{
  v1[10] = v0;
  v2 = sub_20C13BB84();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771500, &qword_20C161210);
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771508, &qword_20C1878A8);
  v1[17] = swift_task_alloc();
  v4 = sub_20C135534();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_20C13CDA4();
  v1[22] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v1[23] = v6;
  v1[24] = v5;

  return MEMORY[0x2822009F8](sub_20BFAE408, v6, v5);
}

uint64_t sub_20BFAE408()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 80) + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentAvailabilityClient), *(*(v0 + 80) + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentAvailabilityClient + 24));
  sub_20C139D44();

  return MEMORY[0x2822009F8](sub_20BFAE4A4, 0, 0);
}

uint64_t sub_20BFAE4A4()
{
  v1 = v0[16];
  v2 = swift_task_alloc();
  v0[25] = v2;
  *(v2 + 16) = "SeymourUI/NotificationSettingsViewController.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 148;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_20BFAE5B0;
  v4 = v0[17];
  v5 = v0[18];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B8E0850, v2, v5);
}

uint64_t sub_20BFAE5B0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_20BFAE9D4;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[15];
    v6 = v2[16];
    v8 = v2[14];

    (*(v7 + 8))(v6, v8);
    v4 = v2[23];
    v5 = v2[24];
    v3 = sub_20BFAE728;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20BFAE728()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  v6 = 1;
  (*(v4 + 56))(v5, 0, 1, v3);
  (*(v4 + 32))(v1, v5, v3);
  (*(v4 + 104))(v2, *MEMORY[0x277D51A28], v3);
  sub_20BFB3550(&qword_281103BB0, MEMORY[0x277D51A40], MEMORY[0x277D51A50]);
  sub_20C13CC34();
  sub_20C13CC34();
  if (v0[5] != v0[7] || v0[6] != v0[8])
  {
    v6 = sub_20C13DFF4();
  }

  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v10 = *(v8 + 8);
  v0[27] = v10;
  v0[28] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v9);

  if (v6)
  {
    v11 = (v0[10] + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_accountProvider);
    v13 = v11[3];
    v12 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v13);
    v14 = swift_task_alloc();
    v0[29] = v14;
    *v14 = v0;
    v14[1] = sub_20BFAEB44;

    return MEMORY[0x2821AFC58](v13, v12);
  }

  else
  {
    v10(v0[21], v0[18]);

    v15 = v0[10] + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
    *v15 = 0;
    *(v15 + 8) = 2;

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_20BFAE9D4()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[23];
  v2 = v0[24];

  return MEMORY[0x2822009F8](sub_20BFAEA48, v1, v2);
}

uint64_t sub_20BFAEA48()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];

  (*(v2 + 56))(v3, 1, 1, v1);
  sub_20B520158(v3, &unk_27C771508, &qword_20C1878A8);
  v4 = v0[10] + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  *v4 = 0;
  *(v4 + 8) = 2;

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BFAEB44(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 240) = a1;

  if (v1)
  {

    v4 = *(v3 + 184);
    v5 = *(v3 + 192);
    v6 = sub_20BFAEF64;
  }

  else
  {
    v4 = *(v3 + 184);
    v5 = *(v3 + 192);
    v6 = sub_20BFAEC6C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20BFAEC6C()
{
  v1 = (v0[10] + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notificationSettingsProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_20BFAED34;
  v5 = v0[30];

  return MEMORY[0x2821AFD28](v5, v2, v3);
}

uint64_t sub_20BFAED34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_20BFAF03C;
  }

  else
  {
    v4[33] = a1;
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_20BFAEE5C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20BFAEE5C()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[10];

  v7 = v6 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  *v7 = v1;
  *(v7 + 8) = 1;

  sub_20BC416CC(v1);

  v3(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20BFAEF64()
{
  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[10];

  v1(v2, v3);
  v5 = v4 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  *v5 = 0;
  *(v5 + 8) = 2;

  v6 = v0[1];

  return v6();
}

uint64_t sub_20BFAF03C()
{
  v31 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 80);

  v3 = sub_20BC41324();
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  *v4 = v3;
  *(v4 + 8) = 0;

  sub_20C13B534();
  v5 = v1;
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 256);
    v9 = *(v0 + 240);
    v29 = *(v0 + 216);
    v27 = *(v0 + 144);
    v28 = *(v0 + 168);
    v10 = *(v0 + 96);
    v25 = *(v0 + 88);
    v26 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2F5850](*(v0 + 24), *(v0 + 32));
    v15 = sub_20B51E694(v13, v14, &v30);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v6, v7, "Failed to fetch notification settings %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);

    (*(v10 + 8))(v26, v25);
    v29(v28, v27);
  }

  else
  {
    v16 = *(v0 + 256);
    v17 = *(v0 + 216);
    v18 = *(v0 + 168);
    v19 = *(v0 + 144);
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);
    v22 = *(v0 + 88);

    (*(v21 + 8))(v20, v22);
    v17(v18, v19);
  }

  v23 = *(v0 + 8);

  return v23();
}

double sub_20BFAF2B4()
{
  swift_getObjectType();
  sub_20C13A9D4();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C139024();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20BFB3550(&qword_27C76A9B0, MEMORY[0x277D54248], MEMORY[0x277D54240]);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

uint64_t sub_20BFAF468()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notifyToken;
  result = [v6 tokenIsValid_];
  if ((result & 1) == 0)
  {
    v17 = v3;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    v9 = sub_20C13D374();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_20BFB3598;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_167;
    v11 = _Block_copy(aBlock);

    v12 = [v6 registerNotification:sub_20C13CA14() + 32 queue:v9 callback:v11];

    _Block_release(v11);

    result = [v6 tokenIsValid_];
    if (result)
    {
      *(v1 + v7) = v12;
    }

    else
    {
      sub_20C13B534();
      v13 = sub_20C13BB74();
      v14 = sub_20C13D1D4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_20B517000, v13, v14, "Error registering for notifications setting changes", v15, 2u);
        MEMORY[0x20F2F6A40](v15, -1, -1);
      }

      return (*(v17 + 8))(v5, v2);
    }
  }

  return result;
}

void sub_20BFAF710(uint64_t a1, const char *a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20B517000, v7, v8, a2, v9, 2u);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_20BFAF880();
  }
}

id sub_20BFAF880()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
  v1 = sub_20C13AC74();
  v2 = v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8);
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8))
  {
    v4 = 1;
    v5 = *v2;
  }

  else
  {
    v6 = sub_20C138104();
    v4 = v6 != sub_20C138104();
    v3 = *(v2 + 8);
    v5 = *v2;
    if (!*(v2 + 8))
    {
LABEL_5:
      v7 = v5;
      goto LABEL_7;
    }
  }

  if (v3 == 1)
  {
    goto LABEL_5;
  }

  v7 = sub_20B6B4C84(MEMORY[0x277D84F90]);
LABEL_7:
  v8 = *(v7 + 16);

  v9 = *(sub_20B756D68(v1, (v8 != 0) & v4, *(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform)) + 2);

  if (v9)
  {
    [*(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentUnavailableView) setHidden_];
    v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_tableView);
    [v10 setHidden_];

    return [v10 reloadData];
  }

  else
  {

    return sub_20BFAFA58();
  }
}

id sub_20BFAFA58()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_networkEvaluator), *(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_networkEvaluator + 24));
  sub_20C13A884();
  v2 = sub_20C1350A4();
  v4 = v3;
  if (v2 == sub_20C1350A4() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_20C13DFF4();

    if ((v7 & 1) == 0)
    {
      v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentUnavailableView);
      v9 = (v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_storefrontLocalizer);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_storefrontLocalizer + 24));
      sub_20C138D34();
      v10 = sub_20C13C914();

      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      sub_20C138D34();
      v11 = sub_20C13C914();

      v12 = sub_20C13C914();
      v13 = [objc_opt_self() systemImageNamed_];

      [v8 smu:1 updateWithType:v10 text:v11 secondaryText:v13 image:0 buttonTitle:0 buttonPrimaryAction:?];
      goto LABEL_9;
    }
  }

  sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
  v14 = sub_20C13D624();
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentUnavailableView);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_browsingStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_browsingStringBuilder + 24));
  sub_20C138D34();
  v15 = sub_20C13C914();

  sub_20B7B2BBC();
  v10 = sub_20C13C914();

  v16 = sub_20C13C914();
  v11 = [objc_opt_self() systemImageNamed_];

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_storefrontLocalizer + 24));
  sub_20C138D34();
  v13 = sub_20C13C914();

  [v8 smu:1 updateWithType:v15 text:v10 secondaryText:v11 image:v13 buttonTitle:v14 buttonPrimaryAction:?];

LABEL_9:
  [v8 setHidden_];
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_tableView);

  return [v17 setHidden_];
}

uint64_t sub_20BFAFE7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_20C132C14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13C954();
  sub_20C132C04();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_20B520158(v2, &unk_27C7617F0, &unk_20C151A10);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() sharedApplication];
  v9 = sub_20C132B64();
  sub_20B6B3B84(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_20BFB3550(&qword_27C761D60, type metadata accessor for OpenExternalURLOptionsKey, &unk_20C14F080);
  v10 = sub_20C13C744();

  [v8 openURL:v9 options:v10 completionHandler:0];

  return (*(v4 + 8))(v6, v3);
}

void sub_20BFB00E4(void *a1)
{
  v2 = v1;
  v4 = sub_20B756E54([a1 tag]);
  if (v4 != 7)
  {
    v5 = v4;
    v6 = [a1 isOn];
    v7 = sub_20B756BBC(v5);
    v9 = v8;
    sub_20B756AB8(v5);
    v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v11 = sub_20C13C914();
    v12 = [v10 initWithSuiteName_];

    if (v12)
    {
      v13 = v12;
      v14 = sub_20C13C914();
      [v13 setBool:v6 forKey:v14];
    }

    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
    sub_20C13AC74();
    v15 = sub_20C13A2C4();
    v17 = v16;
    if (v15 == sub_20C13A2C4() && v17 == v18)
    {
    }

    else
    {
      v20 = sub_20C13DFF4();

      if ((v20 & 1) == 0)
      {

LABEL_12:
        v30 = objc_opt_self();
        [v30 postNotificationName_];

        return;
      }
    }

    v21 = objc_allocWithZone(SMUNPSDomainAccessor);
    v22 = sub_20C13C914();
    v23 = [v21 initWithDomain_];

    v24 = sub_20C13C914();
    [v23 setBool:v6 forKey:v24];

    v25 = *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_syncManager);
    v26 = sub_20C13C914();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0, &qword_20C14FCC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    *(inited + 32) = v7;
    v28 = inited + 32;
    *(inited + 40) = v9;
    sub_20B527580(inited);
    swift_setDeallocating();
    sub_20B5D9804(v28);
    v29 = sub_20C13CF64();

    [v25 synchronizeNanoDomain:v26 keys:v29];

    goto LABEL_12;
  }

  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BFB04E4(unint64_t a1, double a2)
{
  v4 = sub_20C136704();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = sub_20C1356C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  if (a1 <= 1)
  {
    if (*(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) && *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) != 1)
    {
      v17 = sub_20B6B4C84(MEMORY[0x277D84F90]);

      if (a1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v17 = *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult);

      if (a1)
      {
LABEL_5:
        v18 = sub_20C135584();
        goto LABEL_8;
      }
    }

    v18 = sub_20C1355A4();
LABEL_8:
    if (*(v17 + 16))
    {
      v28 = v4;
      v20 = sub_20B65AA60(v18, v19);
      v22 = v21;

      if (v22)
      {
        (*(v11 + 16))(v13, *(v17 + 56) + *(v11 + 72) * v20, v10);

        (*(v11 + 32))(v16, v13, v10);
        sub_20C1356B4();
        v23 = v28;
        v24 = v29;
        (*(v29 + 104))(v6, *MEMORY[0x277D52C40], v28);
        v25 = sub_20C1366F4();
        v26 = *(v24 + 8);
        v26(v6, v23);
        v26(v9, v23);
        (*(v11 + 8))(v16, v10);
        return v25 & 1;
      }
    }

    else
    {
    }

    v25 = 1;
    return v25 & 1;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20BFB0844(unsigned __int8 a1)
{
  sub_20B756AB8(a1);
  sub_20B756BBC(a1);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
  sub_20C13AC74();
  v3 = sub_20C13A2C4();
  v5 = v4;
  if (v3 == sub_20C13A2C4() && v5 == v6)
  {

    goto LABEL_10;
  }

  v8 = sub_20C13DFF4();

  if (v8)
  {
LABEL_10:
    v15 = objc_allocWithZone(SMUNPSDomainAccessor);
    v16 = sub_20C13C914();

    v17 = [v15 initWithDomain_];

    v18 = sub_20C13C914();

    v19 = [v17 objectForKey_];

    sub_20C13DA64();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_20C13C914();

  v11 = [v9 initWithSuiteName_];

  if (!v11)
  {

    v23 = 0u;
    v24 = 0u;
LABEL_18:
    sub_20B520158(&v23, &unk_27C768A00, &qword_20C152F90);
    return 0;
  }

  v12 = v11;
  v13 = sub_20C13C914();

  v14 = [v12 objectForKey_];

  if (v14)
  {
    sub_20C13DA64();
    swift_unknownObjectRelease();
  }

  else
  {

    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (!*(&v22 + 1))
  {
    goto LABEL_18;
  }

LABEL_11:
  sub_20B51C88C(0, &qword_27C765490, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

void sub_20BFB0B24(uint64_t a1)
{
  v3 = sub_20C13BB84();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C1356C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) && *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) != 1)
  {
    v11 = sub_20B6B4C84(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult);
  }

  v12 = sub_20C1356A4();
  v14 = v13;
  (*(v7 + 16))(v9, a1, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v11;
  sub_20B91EEC8(v9, v12, v14, isUniquelyReferenced_nonNull_native);

  v16 = v23;
  sub_20BC416CC(v23);
  if (!*(v10 + 8))
  {
    *v10 = v16;
    *(v10 + 8) = 0;
    goto LABEL_9;
  }

  if (*(v10 + 8) == 1)
  {
    *v10 = v16;
    *(v10 + 8) = 1;
LABEL_9:

    return;
  }

  sub_20C13B534();
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1E4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20B517000, v17, v18, "Unexpected fitness plus setting update", v19, 2u);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  (*(v21 + 8))(v5, v22);
}

id NotificationSettingsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void *NotificationSettingsViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BDF4();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = sub_20C133204();
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult);
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8);
  v48 = v6;
  v49 = v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  if (v12 > 1)
  {
    v13 = sub_20B6B4C84(MEMORY[0x277D84F90]);
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v13 + 16);

  v15 = sub_20C133234();
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
  v16 = sub_20C13AC74();
  result = sub_20B756D68(v16, v14 != 0, *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform));
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v15 >= result[2])
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v18 = *(result + v15 + 32);

  v19 = sub_20C13C914();

  v20 = sub_20C1331B4();
  v21 = [a1 dequeueReusableCellWithIdentifier:v19 forIndexPath:v20];

  if (v18 == 5)
  {
    type metadata accessor for RemoteNotificationSettingCell();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v21;
    }

    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_wheelchairStatus), *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_wheelchairStatus + 24));
    v24 = sub_20C138964();
    sub_20B7561F4(v10, v24 & 1, 5u);
    v26 = sub_20BFB04E4(v10, v25);
    if (v22)
    {
      v27 = v26;
      LODWORD(v49) = *(v49 + 8);
      *&v22[OBJC_IVAR____TtC9SeymourUI29RemoteNotificationSettingCell_delegate + 8] = &off_2822FC5E0;
      swift_unknownObjectWeakAssign();
      v28 = &v22[OBJC_IVAR____TtC9SeymourUI29RemoteNotificationSettingCell_rowIndex];
      *v28 = v10;
      v28[8] = 0;
      v29 = v22;
      v30 = v48;
      sub_20C13BDA4();

      sub_20C13BDB4();
      v31 = v51;
      v53 = v51;
      v54 = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
      v33 = v50;
      (*(v50 + 16))(boxed_opaque_existential_1, v30, v31);
      MEMORY[0x20F2F49E0](v52);
      [v29 setSelectionStyle_];
      v34 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      [v34 setOn:v27 & 1 animated:0];
      v35 = v34;
      [v35 addTarget:v29 action:sel_switchTappedWithCellSwitch_ forControlEvents:4096];
      [v29 setAccessoryView_];
      v36 = v49 != 0;
      [v29 setUserInteractionEnabled_];
      [v35 setEnabled_];

      (*(v33 + 8))(v30, v31);
    }

    else
    {
    }
  }

  else
  {
    sub_20C13BDA4();
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_wheelchairStatus), *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_wheelchairStatus + 24));
    v37 = sub_20C138964();
    sub_20B7561F4(v10, v37 & 1, v18);
    sub_20C13BDB4();
    v38 = v51;
    v53 = v51;
    v54 = MEMORY[0x277D74C30];
    v39 = __swift_allocate_boxed_opaque_existential_1(v52);
    v40 = v50;
    (*(v50 + 16))(v39, v9, v38);
    MEMORY[0x20F2F49E0](v52);
    [v21 setSelectionStyle_];
    v41 = sub_20BFB0844(v18);
    if (v41)
    {
      v42 = v41;
      v43 = [v41 BOOLValue];
    }

    else
    {
      v43 = 1;
    }

    v44 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    [v44 setTag_];
    [v44 setOn:v43 animated:0];
    v45 = v44;
    [v45 addTarget:v2 action:sel_switchTappedWithCellSwitch_ forControlEvents:4096];
    [v21 setAccessoryView_];
    if (v18 == 6)
    {
      v46 = *(v49 + 8);

      if (v46)
      {
        [v21 setUserInteractionEnabled_];
        [v45 setEnabled_];
      }

      else
      {
        [v21 setUserInteractionEnabled_];
        [v45 setEnabled_];
      }

      (*(v40 + 8))(v9, v38);
    }

    else
    {

      (*(v40 + 8))(v9, v38);
    }
  }

  return v21;
}

Swift::String_optional __swiftcall NotificationSettingsViewController.tableView(_:titleForHeaderInSection:)(UITableView *_, Swift::Int titleForHeaderInSection)
{
  v2 = sub_20BFB2F2C(titleForHeaderInSection);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

Swift::String_optional __swiftcall NotificationSettingsViewController.tableView(_:titleForFooterInSection:)(UITableView *_, Swift::Int titleForFooterInSection)
{
  v2 = sub_20BFB3038(titleForFooterInSection);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

id sub_20BFB1704(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = a3;
  v9 = a1;
  a5(a4);
  v11 = v10;

  if (v11)
  {
    v12 = sub_20C13C914();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_20BFB179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = sub_20C13BB84();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  sub_20C13CDA4();
  v7[14] = sub_20C13CD94();
  v10 = sub_20C13CD24();
  v7[15] = v10;
  v7[16] = v9;

  return MEMORY[0x2822009F8](sub_20BFB18A0, v10, v9);
}

uint64_t sub_20BFB18A0()
{
  v1 = (*(v0 + 48) + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_accountProvider);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_20BFB1964;

  return MEMORY[0x2821AFC58](v3, v2);
}

uint64_t sub_20BFB1964(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {

    v4 = *(v3 + 120);
    v5 = *(v3 + 128);
    v6 = sub_20BFB1A8C;
  }

  else
  {
    v4 = *(v3 + 120);
    v5 = *(v3 + 128);
    v6 = sub_20BFB1BA0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20BFB1A8C()
{

  sub_20C13B534();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1D4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20B517000, v1, v2, "Unable to fetch account for settings update", v7, 2u);
    MEMORY[0x20F2F6A40](v7, -1, -1);
  }

  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20BFB1BA0()
{
  v1 = v0[7];
  v2 = (v0[6] + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notificationSettingsProvider);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771518, &unk_20C1878C0);
  v5 = sub_20C1356C4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v0[19] = v8;
  *(v8 + 16) = xmmword_20C14F980;
  (*(v6 + 16))(v8 + v7, v1, v5);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_20BFB1D2C;
  v10 = v0[18];

  return MEMORY[0x2821AFD30](v8, v10, v3, v4);
}

uint64_t sub_20BFB1D2C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_20BFB1ED4;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_20BFB1E48;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20BFB1E48()
{
  v1 = v0[18];
  v2 = v0[7];

  sub_20BFB0B24(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_20BFB1ED4()
{
  v24 = v0;
  v1 = *(v0 + 168);

  sub_20C13B534();

  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = *(v0 + 144);
    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    v21 = *(v0 + 80);
    v22 = *(v0 + 96);
    v9 = *(v0 + 64);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_20B51E694(v9, v8, &v23);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v12 = MEMORY[0x20F2F5850](*(v0 + 24), *(v0 + 32));
    v14 = sub_20B51E694(v12, v13, &v23);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_20B517000, v3, v4, "Unable to settings for: %s, error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);

    (*(v7 + 8))(v22, v21);
  }

  else
  {
    v15 = *(v0 + 168);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

id sub_20BFB2120()
{
  v1 = v0;
  v2 = sub_20C13A814();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentUnavailableView;
  v7 = [objc_opt_self() smu_contentUnavailableView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v6] = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_loadingView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v8] = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_spinnerView;
  v11 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v10] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notifyToken;
  *&v1[v12] = [objc_opt_self() invalidToken];
  (*(v3 + 104))(v5, *MEMORY[0x277D4F070], v2);
  LOBYTE(v22[0]) = 1;
  sub_20C13A384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
  sub_20C133AA4();
  sub_20B51C710(v22, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_accountProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860, &unk_20C14FD70);
  sub_20C133AA4();
  sub_20B51C710(v22, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentAvailabilityClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_eventHub] = v22[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763C08, &qword_20C155088);
  sub_20C133AA4();
  sub_20B51C710(v22, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E40, &unk_20C16DEE0);
  sub_20C133AA4();
  sub_20B51C710(v22, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_networkEvaluator]);
  v13 = &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult];
  *v13 = 0;
  v13[8] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763CC0, &qword_20C155100);
  sub_20C133AA4();
  sub_20B51C710(v22, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notificationSettingsProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  v14 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_storefrontLocalizer;
  sub_20B51C710(v22, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_storefrontLocalizer]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_subscriptionToken] = sub_20C13A914();
  v15 = [objc_allocWithZone(SMUNPSManager) init];
  *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_syncManager] = v15;
  sub_20C133AA4();
  v16 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform;
  v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform] = v22[0];
  v17 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_tableView] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763D70, &qword_20C155178);
  sub_20C133AA4();
  sub_20B51C710(v22, &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_wheelchairStatus]);
  v18 = &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_browsingStringBuilder];
  sub_20B51CC64(&v1[v14], &v1[OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_browsingStringBuilder]);
  v18[40] = v1[v16];
  v19 = type metadata accessor for NotificationSettingsViewController(0);
  v21.receiver = v1;
  v21.super_class = v19;
  return objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t type metadata accessor for NotificationSettingsViewController(uint64_t a1)
{
  result = qword_27C771488;
  if (!qword_27C771488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BFB2650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BFADCF8(a1, v4, v5, v6);
}

uint64_t sub_20BFB2704(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v32 - v4;
  v35 = sub_20C1377D4();
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C136704();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20C1356C4();
  v12 = *(v37 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v37);
  v34 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  if (a2 == 1)
  {
    v17 = sub_20C135584();
LABEL_5:
    v19 = v18;
    v32 = v17;
    (*(v9 + 16))(v11, v36, v8);
    (*(v5 + 104))(v7, *MEMORY[0x277D53690], v35);

    v20 = v16;
    v33 = v16;
    sub_20C135694();
    v21 = sub_20C13CDF4();
    v22 = v39;
    (*(*(v21 - 8) + 56))(v39, 1, 1, v21);
    v23 = v34;
    v24 = v37;
    (*(v12 + 16))(v34, v20, v37);
    sub_20C13CDA4();
    v25 = v38;
    v26 = sub_20C13CD94();
    v27 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    *(v28 + 2) = v26;
    *(v28 + 3) = v29;
    *(v28 + 4) = v25;
    (*(v12 + 32))(&v28[v27], v23, v24);
    v30 = &v28[(v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v30 = v32;
    v30[1] = v19;
    sub_20B6383D0(0, 0, v22, &unk_20C1878B8, v28);

    return (*(v12 + 8))(v33, v24);
  }

  if (!a2)
  {
    v17 = sub_20C1355A4();
    goto LABEL_5;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

void sub_20BFB2B50()
{
  v1 = sub_20C13A814();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_contentUnavailableView;
  v6 = [objc_opt_self() smu_contentUnavailableView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_loadingView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_spinnerView;
  v10 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v9) = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notifyToken;
  *(v0 + v11) = [objc_opt_self() invalidToken];
  (*(v2 + 104))(v4, *MEMORY[0x277D4F070], v1);
  v12[15] = 1;
  sub_20C13A384();
  sub_20C13DE24();
  __break(1u);
}

uint64_t _s9SeymourUI34NotificationSettingsViewControllerC16numberOfSections2inSiSo07UITableE0C_tF_0()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v0 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
  v2 = sub_20C13AC74();
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) && *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) != 1)
  {
    v3 = sub_20B6B4C84(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult);
  }

  v4 = *(v3 + 16);

  v5 = *(sub_20B756D68(v2, v4 != 0, *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform)) + 2);

  return v5;
}

uint64_t sub_20BFB2E2C(unint64_t a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
  v4 = sub_20C13AC74();
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) && *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) != 1)
  {
    v5 = sub_20B6B4C84(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult);
  }

  v6 = *(v5 + 16);

  result = sub_20B756D68(v4, v6 != 0, *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(result + 16) <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = *(result + a1 + 32);

  if (v8 == 5)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *sub_20BFB2F2C(unint64_t a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
  v4 = sub_20C13AC74();
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) && *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) != 1)
  {
    v5 = sub_20B6B4C84(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult);
  }

  v6 = *(v5 + 16);

  result = sub_20B756D68(v4, v6 != 0, *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result[2] <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = *(result + a1 + 32);

  return sub_20B755FE0(v4, v8);
}

void *sub_20BFB3038(unint64_t a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver), *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessModeObserver + 24));
  v5 = sub_20C13AC74();
  v6 = v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) && *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult + 8) != 1)
  {
    v7 = sub_20B6B4C84(MEMORY[0x277D84F90]);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_fitnessPlusSettingsResult);
  }

  v8 = *(v7 + 16);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v9 = sub_20C13AC74();
  result = sub_20B756D68(v9, v8 != 0, *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_platform));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result[2] <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v11 = *(result + a1 + 32);

  v12 = *(v6 + 8) == 0;
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_wheelchairStatus), *(v2 + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_wheelchairStatus + 24));
  v13 = sub_20C138964() & 1;

  return sub_20B756618(v5, v12, v13, v11);
}

void sub_20BFB31BC(uint64_t a1)
{
  sub_20B52432C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI34NotificationSettingsViewControllerC011FitnessPlusD6ResultO(uint64_t a1)
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

uint64_t sub_20BFB3318(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C1356C4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20B52AC14;

  return sub_20BFB179C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_20BFB3454(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BFAE060(a1, v4, v5, v6);
}

uint64_t sub_20BFB3550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_20BFB3648(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SessionBlurView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20BFB36B0(uint64_t result)
{
  if (result > 3u)
  {
    if (result != 4)
    {
      if (result == 5)
      {
        sub_20C1380F4();
      }

      else
      {
        sub_20C1380F4();
        v1 = objc_opt_self();
        v2 = [v1 mainScreen];
        [v2 nativeBounds];
        v4 = v3;
        v6 = v5;
        v8 = v7;
        v10 = v9;

        v23.origin.x = v4;
        v23.origin.y = v6;
        v23.size.width = v8;
        v23.size.height = v10;
        CGRectGetWidth(v23);
        v11 = [v1 mainScreen];
        [v11 nativeScale];
      }

      sub_20C138104();
      return sub_20C138104();
    }
  }

  else if (result - 2 >= 2)
  {
    if (result)
    {
      sub_20C1380F4();
      v12 = objc_opt_self();
      v13 = [v12 mainScreen];
      [v13 nativeBounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v24.origin.x = v15;
      v24.origin.y = v17;
      v24.size.width = v19;
      v24.size.height = v21;
      CGRectGetWidth(v24);
      v22 = [v12 mainScreen];
      [v22 nativeScale];

      sub_20C138104();
      return sub_20C138104();
    }
  }

  else
  {
    sub_20C1380F4();
    sub_20C138104();
    return sub_20C138104();
  }

  return result;
}

char *sub_20BFB39E0(char a1, char a2, double a3)
{
  v4 = v3;
  v7 = sub_20C13C0B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v49[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v49[-1] - v12;
  v14 = OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_contentLayoutGuide;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *&v4[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_guideConstraints] = MEMORY[0x277D84F90];
  v4[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_insets] = a1;
  if (_UISolariumEnabled())
  {
    v15 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    sub_20C13C0A4();
    (*(v8 + 16))(v10, v13, v7);
    v49[3] = sub_20C13C0D4();
    v49[4] = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v49);
    sub_20C13C0E4();
    sub_20C13D564();
    (*(v8 + 8))(v13, v7);
    [v15 setTranslatesAutoresizingMaskIntoConstraints_];
    [v15 setClipsToBounds_];
  }

  else
  {
    v16 = [objc_opt_self() smu:10.0 effectWithBlurRadius:?];
    v17 = [objc_opt_self() sessionColorDark];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_20C151490;
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
    v19 = objc_allocWithZone(MEMORY[0x277D75D68]);
    sub_20B51C88C(0, &qword_27C7663F0, 0x277D75D58);
    v20 = sub_20C13CC54();

    v21 = [v19 initWithBackgroundEffects_];

    v15 = v21;
    [v15 setTranslatesAutoresizingMaskIntoConstraints_];
    [v15 setClipsToBounds_];
    v22 = sub_20C13C914();
    [v15 setSmu:v22 groupName:?];
  }

  *&v4[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_effectView] = v15;
  sub_20C1380F4();
  v23 = objc_opt_self();
  v24 = [v23 mainScreen];
  [v24 nativeBounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v51.origin.x = v26;
  v51.origin.y = v28;
  v51.size.width = v30;
  v51.size.height = v32;
  Width = CGRectGetWidth(v51);
  v34 = [v23 mainScreen];
  [v34 nativeScale];
  v36 = v35;

  if (a2)
  {
    v37 = sub_20C138104();
    v38 = sub_20C138104();
    v39 = 30.0;
    if (v37 != v38)
    {
      v39 = 16.0;
      if (Width / v36 > 375.0)
      {
        v39 = 22.5;
        if (Width / v36 < 834.0)
        {
          v39 = 18.0;
        }
      }
    }
  }

  else
  {
    v40 = sub_20C138104();
    if (v40 == sub_20C138104())
    {
      v39 = 40.0;
    }

    else
    {
      v39 = 30.0;
      if (Width / v36 <= 375.0)
      {
        v39 = 20.0;
      }
    }
  }

  *&v4[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_cornerRadius] = v39;
  v41 = type metadata accessor for SessionElementBackdropView();
  v50.receiver = v4;
  v50.super_class = v41;
  v42 = objc_msgSendSuper2(&v50, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v43 = OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_effectView;
  v44 = *&v42[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_effectView];
  v45 = v42;
  [v45 addSubview_];
  [v45 addLayoutGuide_];
  v46 = [*&v42[v43] layer];
  [v46 setCornerCurve_];

  sub_20BFB3FE4();
  sub_20BFB4340();

  return v45;
}

void sub_20BFB3FE4()
{
  v1 = [v0 heightAnchor];
  v2 = [v1 constraintGreaterThanOrEqualToConstant_];

  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_effectView];
  v5 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  v8 = [v3 leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v4];

  LODWORD(v11) = 1148846080;
  [v10 setPriority_];
  v12 = v10;
  v13 = [v3 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-v7];

  LODWORD(v16) = 1148846080;
  [v15 setPriority_];
  v17 = v15;
  v18 = [v3 topAnchor];
  v19 = [v0 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v5];

  LODWORD(v21) = 1148846080;
  [v20 setPriority_];
  v22 = [v3 bottomAnchor];
  v23 = [v0 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-v6];

  LODWORD(v25) = 1148846080;
  [v24 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v12;
  *(inited + 40) = v17;
  *(inited + 48) = v20;
  *(inited + 56) = v24;

  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C14F580;
  *(v28 + 32) = v2;
  v29 = v2;
  sub_20B8D9310(inited);
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v30 = sub_20C13CC54();

  [v27 activateConstraints_];
}

void sub_20BFB4340()
{
  v21 = objc_opt_self();
  v1 = OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_guideConstraints;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

  v2 = sub_20C13CC54();

  [v21 deactivateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14FE90;
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_contentLayoutGuide];
  v5 = [v4 leadingAnchor];
  v6 = [v0 leadingAnchor];
  v7 = OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_insets;
  sub_20BFB36B0(v0[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_insets]);
  v9 = [v5 constraintEqualToAnchor:v6 constant:v8];

  *(v3 + 32) = v9;
  v10 = [v4 trailingAnchor];
  v11 = [v0 trailingAnchor];
  sub_20BFB36B0(v0[v7]);
  v13 = [v10 constraintEqualToAnchor:v11 constant:-v12];

  *(v3 + 40) = v13;
  v14 = [v4 topAnchor];
  v15 = [v0 topAnchor];
  sub_20BFB36B0(v0[v7]);
  v16 = [v14 constraintEqualToAnchor:v15 constant:?];

  *(v3 + 48) = v16;
  v17 = [v4 bottomAnchor];
  v18 = [v0 bottomAnchor];
  sub_20BFB36B0(v0[v7]);
  v20 = [v17 constraintEqualToAnchor:v18 constant:-v19];

  *(v3 + 56) = v20;
  *&v0[v1] = v3;

  v22 = sub_20C13CC54();

  [v21 activateConstraints_];
}

id sub_20BFB46F4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SessionElementBackdropView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_20BFB47BC()
{
  result = qword_27C771550;
  if (!qword_27C771550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771550);
  }

  return result;
}

uint64_t sub_20BFB4810@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v22 - v13;
  v22[0] = sub_20C134324();
  v15 = *MEMORY[0x277D517A8];
  v16 = sub_20C1352F4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  sub_20B58C2C8(*(v2 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_pageContext), *(v2 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_pageContext + 8));
  sub_20C134334();
  v18 = sub_20C132C14();
  (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  sub_20C134404();
  v19 = sub_20C135ED4();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v20 = sub_20C136914();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  return sub_20C133384();
}

uint64_t sub_20BFB4BA8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250, &qword_20C153CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  sub_20C134414();
  v5 = sub_20C135B04();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_20BFB4CD8(v4);
  v7 = sub_20C1390D4();
  v8 = MEMORY[0x277D54278];
  if (v6 != 1)
  {
    v8 = MEMORY[0x277D54280];
  }

  return (*(*(v7 - 8) + 104))(a1, *v8, v7);
}

uint64_t sub_20BFB4CD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250, &qword_20C153CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20BFB4D40(uint64_t a1, int a2)
{
  LODWORD(v166) = a2;
  v3 = sub_20C134214();
  v172 = *(v3 - 8);
  v173 = v3;
  MEMORY[0x28223BE20](v3);
  v162 = v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_20C13BB84();
  v167 = *(v171 - 1);
  MEMORY[0x28223BE20](v171);
  v176 = v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v151 = *(v6 - 8);
  v152 = v6;
  MEMORY[0x28223BE20](v6);
  v150 = (v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v179 = sub_20C132EE4();
  v177 = *(v179 - 1);
  MEMORY[0x28223BE20](v179);
  v178 = v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v154 = *(v9 - 8);
  v155 = v9;
  MEMORY[0x28223BE20](v9);
  v153 = v149 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EC8, &unk_20C187A60);
  MEMORY[0x28223BE20](v11 - 8);
  v159 = v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v158 = v149 - v14;
  v15 = sub_20C135524();
  v164 = *(v15 - 1);
  v165 = v15;
  MEMORY[0x28223BE20](v15);
  v157 = v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v156 = v149 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810, &unk_20C16B440);
  MEMORY[0x28223BE20](v19 - 8);
  v170 = (v149 - v20);
  v168 = sub_20C1351B4();
  v21 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C137F24();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v149 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v149 - v31;
  v33 = a1;
  sub_20C134204();
  v163 = sub_20C137EF4();
  v35 = v34;
  v36 = *(v24 + 8);
  v36(v32, v23);
  if (!v35)
  {
    sub_20C13B534();
    v75 = v162;
    (*(v172 + 16))(v162, v33, v173);
    v76 = sub_20C13BB74();
    v77 = sub_20C13D1D4();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      *&v194 = v179;
      *v78 = 136446210;
      LODWORD(v178) = v77;
      sub_20C134204();
      v177 = sub_20C137ED4();
      v80 = v79;
      v36(v26, v23);
      (*(v172 + 8))(v75, v173);
      v81 = sub_20B51E694(v177, v80, &v194);

      *(v78 + 4) = v81;
      _os_log_impl(&dword_20B517000, v76, v178, "TrainerBioShelf not updating without bio for %{public}s", v78, 0xCu);
      v82 = v179;
      __swift_destroy_boxed_opaque_existential_1(v179);
      MEMORY[0x20F2F6A40](v82, -1, -1);
      MEMORY[0x20F2F6A40](v78, -1, -1);
    }

    else
    {

      (*(v172 + 8))(v75, v173);
    }

    (*(v167 + 8))(v176, v171);
    return;
  }

  v167 = v35;
  sub_20C134204();
  v37 = sub_20C137EE4();
  v36(v29, v23);
  v38 = v37 + 56;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v37 + 56);
  v160 = (v175 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer);
  v42 = (v39 + 63) >> 6;
  v171 = (v21 + 8);
  v172 = v21 + 16;
  v176 = v37;

  v43 = 0;
  v44 = MEMORY[0x277D84F90];
  v161 = xmmword_20C14F980;
  v46 = v168;
  v45 = v169;
  v173 = v37 + 56;
  v174 = v21;
LABEL_5:
  v162 = v44;
  v47 = v43;
  if (!v41)
  {
    goto LABEL_7;
  }

  do
  {
    v43 = v47;
LABEL_10:
    v48 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    (*(v21 + 16))(v45, *(v176 + 48) + *(v21 + 72) * (v48 | (v43 << 6)), v46);
    v49 = sub_20C1351A4();
    v51 = v50;
    *&v194 = v49;
    *(&v194 + 1) = v50;
    v53 = v52 & 1;
    LOBYTE(v195) = v52 & 1;
    LOBYTE(v185) = 0;
    sub_20BFBF908();
    sub_20BFBF95C();
    v54 = sub_20C133C04();
    sub_20B583F4C(v49, v51, v53);
    if (v54)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BEC8, &qword_20C172818);
      v55 = type metadata accessor for LinkAnnotation(0);
      v56 = (*(*(v55 - 8) + 80) + 32) & ~*(*(v55 - 8) + 80);
      v149[3] = *(*(v55 - 8) + 72);
      v57 = swift_allocObject();
      *(v57 + 16) = v161;
      v149[1] = v56;
      v149[2] = v57;
      v58 = (v57 + v56);
      __swift_project_boxed_opaque_existential_1(v160, v160[3]);
      v59 = sub_20C138D34();
      v61 = v60;
      v149[4] = v55;
      sub_20C135194();
      *v58 = v59;
      v58[1] = v61;
      v44 = v162;
      v62 = *(v162 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v64 = *(v44 + 3) >> 1, v64 <= v62))
      {
        v44 = sub_20BC08234(isUniquelyReferenced_nonNull_native, v62 + 1, 1, v44);
        v64 = *(v44 + 3) >> 1;
      }

      v38 = v173;
      v21 = v174;
      v45 = v169;
      if (v64 <= *(v44 + 2))
      {
        goto LABEL_59;
      }

      swift_arrayInitWithCopy();

      ++*(v44 + 2);
      v46 = v168;
      (*v171)(v45, v168);
      goto LABEL_5;
    }

    (*v171)(v45, v46);
    v47 = v43;
    v38 = v173;
    v21 = v174;
  }

  while (v41);
  while (1)
  {
LABEL_7:
    v43 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      goto LABEL_58;
    }

    if (v43 >= v42)
    {
      break;
    }

    v41 = *(v38 + 8 * v43);
    ++v47;
    if (v41)
    {
      goto LABEL_10;
    }
  }

  v65 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filter;
  v66 = v175;
  swift_beginAccess();
  v67 = v170;
  sub_20B52F9E8(v66 + v65, v170, &qword_27C766810, &unk_20C16B440);
  v68 = sub_20B84AFA0(v67);
  sub_20B520158(v67, &qword_27C766810, &unk_20C16B440);
  if (v68)
  {
    goto LABEL_21;
  }

  v69 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterResult;
  swift_beginAccess();
  v70 = v66 + v69;
  v71 = v158;
  sub_20B52F9E8(v70, v158, &qword_27C769EC8, &unk_20C187A60);
  v73 = v164;
  v72 = v165;
  if ((*(v164 + 48))(v71, 1, v165) == 1)
  {
    sub_20B520158(v71, &qword_27C769EC8, &unk_20C187A60);
LABEL_21:
    v74 = v166;
  }

  else
  {
    v83 = v156;
    v84 = (*(v73 + 32))(v156, v71, v72);
    v85 = sub_20BB110D4(v84);
    (*(v73 + 8))(v83, v72);
    v74 = !v85 & v166;
  }

  v86 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow;
  *(v66 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow) = v74 & 1;
  __swift_project_boxed_opaque_existential_1(v160, v160[3]);
  v87 = sub_20C138D34();
  v89 = v88;
  v90 = v66 + v65;
  v91 = v170;
  sub_20B52F9E8(v90, v170, &qword_27C766810, &unk_20C16B440);
  v92 = sub_20B84AFA0(v91);
  sub_20B520158(v91, &qword_27C766810, &unk_20C16B440);
  if (v92)
  {
LABEL_30:
    v98 = 0;
  }

  else
  {
    v93 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterResult;
    swift_beginAccess();
    v94 = v66 + v93;
    v95 = v159;
    sub_20B52F9E8(v94, v159, &qword_27C769EC8, &unk_20C187A60);
    v97 = v164;
    v96 = v165;
    if ((*(v164 + 48))(v95, 1, v165) == 1)
    {
      sub_20B520158(v95, &qword_27C769EC8, &unk_20C187A60);
      goto LABEL_30;
    }

    v99 = v157;
    v100 = (*(v97 + 32))(v157, v95, v96);
    v98 = sub_20BB110D4(v100);
    (*(v97 + 8))(v99, v96);
  }

  v101 = v163;
  v102 = swift_allocObject();
  v103 = v167;
  *(v102 + 16) = v101;
  *(v102 + 24) = v103;
  *(v102 + 32) = 1;
  *(v102 + 40) = v87;
  *(v102 + 48) = v89;
  *(v102 + 56) = v98;
  *(v102 + 57) = 1;
  *(v102 + 64) = v162;
  v104 = v102 | 0x2000000000000003;
  v105 = v175;
  v106 = *(v175 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
  *(v175 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = v102 | 0x2000000000000003;

  sub_20B9EAE04(v106);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v107 = swift_allocObject();
  *(v107 + 16) = v161;
  *(v107 + 32) = v104;
  v108 = *(v105 + v86);
  v185 = 0uLL;
  LOBYTE(v186) = 1;
  *&v187 = 0;
  *(&v186 + 1) = 0;
  BYTE8(v187) = 0x80;
  BYTE9(v187) = v108;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  LOBYTE(v191) = 0;
  *(&v191 + 1) = v107;
  *&v192[0] = MEMORY[0x277D84F90];
  *(&v192[1] + 8) = 0u;
  *(v192 + 8) = 0u;
  *(&v192[2] + 1) = 0;
  v193 = 2;
  nullsub_1();
  v109 = v105 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  v110 = *(v109 + 144);
  v202 = *(v109 + 128);
  v203 = v110;
  v204 = *(v109 + 160);
  v111 = *(v109 + 80);
  v198 = *(v109 + 64);
  v199 = v111;
  v112 = *(v109 + 112);
  v200 = *(v109 + 96);
  v201 = v112;
  v113 = *(v109 + 16);
  v194 = *v109;
  v195 = v113;
  v114 = *(v109 + 48);
  v196 = *(v109 + 32);
  v197 = v114;
  v115 = v192[2];
  *(v109 + 128) = v192[1];
  *(v109 + 144) = v115;
  *(v109 + 160) = v193;
  v116 = v190;
  *(v109 + 64) = v189;
  *(v109 + 80) = v116;
  v117 = v192[0];
  *(v109 + 96) = v191;
  *(v109 + 112) = v117;
  v118 = v186;
  *v109 = v185;
  *(v109 + 16) = v118;
  v119 = v188;
  *(v109 + 32) = v187;
  *(v109 + 48) = v119;

  sub_20B520158(&v194, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_54;
  }

  v121 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    goto LABEL_53;
  }

  if (![*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource])
  {
LABEL_52:
    sub_20C0C2D50(0);
    goto LABEL_53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_52;
  }

  v165 = v121;
  v122 = v153;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v123 = v155;
  v124 = sub_20C13BE74();
  (*(v154 + 8))(v122, v123);
  v173 = *(v124 + 16);
  v174 = v124;
  if (!v173)
  {
LABEL_50:

    goto LABEL_52;
  }

  v125 = 0;
  v171 = (v174 + 32);
  v172 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v169 = (v177 + 8);
  v170 = (v177 + 16);
  while (2)
  {
    if (v125 < *(v174 + 16))
    {
      v126 = &v171[3 * v125];
      v127 = v126[1];
      v168 = *v126;
      v128 = v126[2];
      ++v125;
      (*v170)(v178, v175 + v172, v179);
      v129 = *(v127 + 16);

      v176 = v128;

      v130 = 0;
      do
      {
        if (v129 == v130)
        {
          (*v169)(v178, v179);
          goto LABEL_39;
        }

        v131 = v130 + 1;
        sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v132 = sub_20C13C894();
        v130 = v131;
      }

      while ((v132 & 1) == 0);
      (*v169)(v178, v179);
      v133 = *(v109 + 128);
      v134 = *(v109 + 144);
      v135 = *(v109 + 96);
      v181[7] = *(v109 + 112);
      v182 = v133;
      v183 = v134;
      v184 = *(v109 + 160);
      v136 = *(v109 + 80);
      v181[4] = *(v109 + 64);
      v181[5] = v136;
      v181[6] = v135;
      v137 = *(v109 + 16);
      v181[0] = *v109;
      v181[1] = v137;
      v138 = *(v109 + 48);
      v181[2] = *(v109 + 32);
      v181[3] = v138;
      v139 = sub_20B5EAF8C(v181);
      if (v139 == 1)
      {
        v140 = 0;
        v141 = 0;
      }

      else
      {
        v140 = *(&v182 + 1);
        v141 = v183;
      }

      v142 = v176;
      v166 = v149;
      v180[0] = v140;
      v180[1] = v141;
      MEMORY[0x28223BE20](v139);
      v149[-2] = v180;
      v143 = sub_20B796758(sub_20B5EB0CC, &v149[-4], v142);

      if ((v143 & 1) == 0)
      {
LABEL_39:

        if (v125 == v173)
        {
          goto LABEL_50;
        }

        continue;
      }

      sub_20B5E2E18();
      v144 = sub_20C13D374();
      v146 = v150;
      v145 = v151;
      *v150 = v144;
      v147 = v152;
      (*(v145 + 104))(v146, *MEMORY[0x277D85200], v152);
      v148 = sub_20C13C584();
      (*(v145 + 8))(v146, v147);
      if ((v148 & 1) == 0)
      {
        goto LABEL_60;
      }

      sub_20B61F5C0(v168, v127, v176, v175, 1, v165);

LABEL_53:

      swift_unknownObjectRelease();
LABEL_54:

      return;
    }

    break;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void sub_20BFB6054(uint64_t a1, char a2)
{
  v149 = 0;
  v150 = a1;
  v4 = sub_20C13C554();
  v139 = *(v4 - 8);
  v140 = v4;
  MEMORY[0x28223BE20](v4);
  v138 = (&v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_20C132EE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v153 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v152 = &v135 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v143 = *(v11 - 8);
  v144 = v11;
  MEMORY[0x28223BE20](v11);
  v142 = (&v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v141 = (&v135 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0, &unk_20C14FE50);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v135 - v16;
  v18 = sub_20C134734();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v145 = (&v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v23 = &v135 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v135 - v25;
  v148 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow;
  *(v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow) = a2;
  v151 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer + 24));
  v146 = sub_20C138D34();
  v147 = v27;
  sub_20C135CB4();
  sub_20C134714();
  v28 = *(v19 + 8);
  v28(v26, v18);
  v29 = sub_20C134284();
  v30 = (*(*(v29 - 8) + 48))(v17, 1, v29);
  sub_20B520158(v17, &unk_27C7623C0, &unk_20C14FE50);
  if (v30 != 1)
  {
    sub_20C135CB4();
    v56 = sub_20C134724();
    v58 = v57;
    v28(v23, v18);
    v59 = swift_allocObject();
    *(v59 + 16) = v56;
    *(v59 + 24) = v58;
    *(v59 + 32) = 1;
    v60 = v147;
    *(v59 + 40) = v146;
    *(v59 + 48) = v60;
    *(v59 + 56) = 512;
    v61 = MEMORY[0x277D84F90];
    *(v59 + 64) = MEMORY[0x277D84F90];
    v62 = v151;
    v63 = *(v151 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
    *(v151 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = v59 | 0x2000000000000003;

    sub_20B9EAE04(v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_20C14F980;
    *(v64 + 32) = v59 | 0x2000000000000003;
    v65 = v59;
    v66 = *(v62 + v148);
    v171 = 0uLL;
    LOBYTE(v172) = 1;
    *(&v172 + 1) = *v170;
    DWORD1(v172) = *&v170[3];
    *(&v172 + 1) = 0;
    *&v173 = 0;
    BYTE8(v173) = 0x80;
    BYTE9(v173) = v66;
    *(&v173 + 10) = v168;
    HIWORD(v173) = v169;
    LOBYTE(v177) = 0;
    v176 = 0u;
    v175 = 0u;
    v174 = 0u;
    *(&v177 + 1) = *v167;
    DWORD1(v177) = *&v167[3];
    *(&v177 + 1) = v64;
    *&v178[0] = v61;
    *(v178 + 8) = 0u;
    *(&v178[1] + 8) = 0u;
    *(&v178[2] + 1) = 0;
    v179 = 2;
    nullsub_1();
    v67 = v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
    v68 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
    v188 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
    v189 = v68;
    v190 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
    v69 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
    v184 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
    v185 = v69;
    v70 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
    v186 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
    v187 = v70;
    v71 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
    v180 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
    v181 = v71;
    v72 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
    v182 = *(v62 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
    v183 = v72;
    v73 = v178[2];
    *(v67 + 128) = v178[1];
    *(v67 + 144) = v73;
    *(v67 + 160) = v179;
    v74 = v176;
    *(v67 + 64) = v175;
    *(v67 + 80) = v74;
    v75 = v178[0];
    *(v67 + 96) = v177;
    *(v67 + 112) = v75;
    v76 = v172;
    *v67 = v171;
    *(v67 + 16) = v76;
    v77 = v174;
    *(v67 + 32) = v173;
    *(v67 + 48) = v77;

    sub_20B520158(&v180, &qword_27C762340, &unk_20C150290);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (!*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
      {
        v137 = Strong;
        if ([*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
          if (swift_dynamicCastClass())
          {
            v135 = v65;
            v136 = v58;
            v102 = v141;
            sub_20C13BFA4();
            swift_unknownObjectRelease();
            v103 = v144;
            v104 = sub_20C13BE74();
            v143[1](v102, v103);
            v150 = v104;
            v148 = *(v104 + 16);
            if (v148)
            {
              v105 = 0;
              v146 = v150 + 32;
              v147 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
              v144 = (v7 + 8);
              v145 = (v7 + 16);
              while (2)
              {
                if (v105 < *(v150 + 16))
                {
                  v106 = v146 + 24 * v105;
                  v107 = *(v106 + 8);
                  v143 = *v106;
                  v108 = *(v106 + 16);
                  v105 = (v105 + 1);
                  (*v145)(v152, v151 + v147, v6);
                  v109 = *(v107 + 16);

                  v153 = v108;

                  v110 = 0;
                  do
                  {
                    if (v109 == v110)
                    {
                      (*v144)(v152, v6);

                      goto LABEL_31;
                    }

                    v111 = v110 + 1;
                    sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                    v112 = sub_20C13C894();
                    v110 = v111;
                  }

                  while ((v112 & 1) == 0);
                  v141 = v105;
                  (*v144)(v152, v6);
                  v113 = *(v67 + 128);
                  v114 = *(v67 + 144);
                  v115 = *(v67 + 96);
                  v163 = *(v67 + 112);
                  v164 = v113;
                  v165 = v114;
                  v166 = *(v67 + 160);
                  v116 = *(v67 + 80);
                  v160 = *(v67 + 64);
                  v161 = v116;
                  v162 = v115;
                  v117 = *(v67 + 16);
                  v156 = *v67;
                  v157 = v117;
                  v118 = *(v67 + 48);
                  v158 = *(v67 + 32);
                  v159 = v118;
                  v119 = sub_20B5EAF8C(&v156);
                  if (v119 == 1)
                  {
                    v120 = 0;
                    v121 = 0;
                  }

                  else
                  {
                    v120 = *(&v164 + 1);
                    v121 = v165;
                  }

                  v122 = v153;
                  v142 = &v135;
                  v154 = v120;
                  v155 = v121;
                  MEMORY[0x28223BE20](v119);
                  *(&v135 - 2) = &v154;
                  v123 = v149;
                  v124 = sub_20B796758(sub_20B5EB0CC, (&v135 - 4), v122);
                  v149 = v123;

                  if ((v124 & 1) == 0)
                  {

                    v105 = v141;
LABEL_31:
                    if (v105 == v148)
                    {
                      break;
                    }

                    continue;
                  }

                  sub_20B5E2E18();
                  v130 = sub_20C13D374();
                  v132 = v138;
                  v131 = v139;
                  *v138 = v130;
                  v133 = v140;
                  (*(v131 + 104))(v132, *MEMORY[0x277D85200], v140);
                  v134 = sub_20C13C584();
                  (*(v131 + 8))(v132, v133);
                  if ((v134 & 1) == 0)
                  {
                    goto LABEL_56;
                  }

                  sub_20B61F5C0(v143, v107, v153, v151, 1, v137);

                  swift_unknownObjectRelease();
                  goto LABEL_48;
                }

                goto LABEL_54;
              }
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        sub_20C0C2D50(0);
      }

      swift_unknownObjectRelease();
      goto LABEL_48;
    }

LABEL_9:

    goto LABEL_48;
  }

  v31 = v145;
  sub_20C135CB4();
  v32 = sub_20C134724();
  v34 = v33;
  v28(v31, v18);
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = v34;
  *(v35 + 32) = 1;
  v36 = v147;
  *(v35 + 40) = v146;
  *(v35 + 48) = v36;
  *(v35 + 56) = 256;
  v37 = MEMORY[0x277D84F90];
  *(v35 + 64) = MEMORY[0x277D84F90];
  v38 = v151;
  v39 = *(v151 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
  *(v151 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = v35 | 0x2000000000000003;

  sub_20B9EAE04(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20C14F980;
  *(v40 + 32) = v35 | 0x2000000000000003;
  v41 = *(v38 + v148);
  v171 = 0uLL;
  LOBYTE(v172) = 1;
  *(&v172 + 1) = *v170;
  DWORD1(v172) = *&v170[3];
  *(&v172 + 1) = 0;
  *&v173 = 0;
  BYTE8(v173) = 0x80;
  BYTE9(v173) = v41;
  *(&v173 + 10) = v168;
  HIWORD(v173) = v169;
  LOBYTE(v177) = 0;
  v176 = 0u;
  v175 = 0u;
  v174 = 0u;
  *(&v177 + 1) = *v167;
  DWORD1(v177) = *&v167[3];
  *(&v177 + 1) = v40;
  *&v178[0] = v37;
  v42 = v35;
  *(v178 + 8) = 0u;
  *(&v178[1] + 8) = 0u;
  *(&v178[2] + 1) = 0;
  v179 = 2;
  nullsub_1();
  v43 = v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  v44 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v188 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v189 = v44;
  v190 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v45 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v184 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v185 = v45;
  v46 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v186 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v187 = v46;
  v47 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v180 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v181 = v47;
  v48 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v182 = *(v38 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
  v183 = v48;
  v49 = v178[2];
  *(v43 + 128) = v178[1];
  *(v43 + 144) = v49;
  *(v43 + 160) = v179;
  v50 = v176;
  *(v43 + 64) = v175;
  *(v43 + 80) = v50;
  v51 = v178[0];
  *(v43 + 96) = v177;
  *(v43 + 112) = v51;
  v52 = v172;
  *v43 = v171;
  *(v43 + 16) = v52;
  v53 = v174;
  *(v43 + 32) = v173;
  *(v43 + 48) = v53;

  sub_20B520158(&v180, &qword_27C762340, &unk_20C150290);
  v54 = swift_unknownObjectWeakLoadStrong();
  if (!v54)
  {
    goto LABEL_9;
  }

  v55 = v54;
  v148 = v34;
  if (*(v54 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {

LABEL_5:
    swift_unknownObjectRelease();
LABEL_48:

    return;
  }

  v136 = v42;
  if (![*(v54 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource])
  {
LABEL_44:
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
    goto LABEL_48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_44;
  }

  v135 = v55;
  v79 = v142;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v80 = v144;
  v81 = sub_20C13BE74();
  v143[1](v79, v80);
  v150 = v81;
  v147 = *(v81 + 16);
  if (!v147)
  {
LABEL_41:

    goto LABEL_44;
  }

  v82 = 0;
  v145 = (v150 + 32);
  v146 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v143 = (v7 + 8);
  v144 = (v7 + 16);
  while (2)
  {
    if (v82 < *(v150 + 16))
    {
      v83 = &v145[3 * v82];
      v84 = v83[1];
      v142 = *v83;
      v85 = v83[2];
      ++v82;
      (*v144)(v153, v151 + v146, v6);
      v86 = *(v84 + 16);

      v152 = v85;

      v87 = 0;
      do
      {
        if (v86 == v87)
        {
          (*v143)(v153, v6);

          goto LABEL_16;
        }

        v88 = v87 + 1;
        sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v89 = sub_20C13C894();
        v87 = v88;
      }

      while ((v89 & 1) == 0);
      v137 = v82;
      (*v143)(v153, v6);
      v90 = *(v43 + 128);
      v91 = *(v43 + 144);
      v92 = *(v43 + 96);
      v163 = *(v43 + 112);
      v164 = v90;
      v165 = v91;
      v166 = *(v43 + 160);
      v93 = *(v43 + 80);
      v160 = *(v43 + 64);
      v161 = v93;
      v162 = v92;
      v94 = *(v43 + 16);
      v156 = *v43;
      v157 = v94;
      v95 = *(v43 + 48);
      v158 = *(v43 + 32);
      v159 = v95;
      v96 = sub_20B5EAF8C(&v156);
      if (v96 == 1)
      {
        v97 = 0;
        v98 = 0;
      }

      else
      {
        v97 = *(&v164 + 1);
        v98 = v165;
      }

      v99 = v152;
      v141 = &v135;
      v154 = v97;
      v155 = v98;
      MEMORY[0x28223BE20](v96);
      *(&v135 - 2) = &v154;
      v100 = v149;
      v101 = sub_20B796758(sub_20B5EB0CC, (&v135 - 4), v99);
      v149 = v100;

      if ((v101 & 1) == 0)
      {

        v82 = v137;
LABEL_16:
        if (v82 == v147)
        {
          goto LABEL_41;
        }

        continue;
      }

      sub_20B5E2E18();
      v125 = sub_20C13D374();
      v127 = v138;
      v126 = v139;
      *v138 = v125;
      v128 = v140;
      (*(v126 + 104))(v127, *MEMORY[0x277D85200], v140);
      v129 = sub_20C13C584();
      (*(v126 + 8))(v127, v128);
      if ((v129 & 1) == 0)
      {
        goto LABEL_55;
      }

      sub_20B61F5C0(v142, v84, v152, v151, 1, v135);

      goto LABEL_5;
    }

    break;
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_20BFB7170(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_20C13C554();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v73 = (&v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_20C132EE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v88 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v70 - v10;
  v11 = sub_20C134314();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow;
  *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow) = a2;
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer), *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer + 24));
  v15 = sub_20C138D34();
  v85 = v16;
  v86 = v15;
  sub_20C135954();
  v17 = sub_20BFBE9B4();
  v18 = *(v12 + 8);
  v18(v14, v11);
  sub_20C135954();
  sub_20BFB7C6C(v14);
  v20 = v19;
  v18(v14, v11);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  v22 = v85;
  *(v21 + 40) = v86;
  *(v21 + 48) = v22;
  *(v21 + 56) = 768;
  *(v21 + 64) = v17;
  v23 = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
  *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = v21 | 0x2000000000000003;
  v24 = v20;

  v25 = v23;
  v26 = v21;
  sub_20B9EAE04(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20C14F980;
  v28 = *(v3 + v87);
  *(v27 + 32) = v21 | 0x2000000000000003;
  v97 = 0uLL;
  LOBYTE(v98) = 1;
  *(&v98 + 1) = *v96;
  DWORD1(v98) = *&v96[3];
  *(&v98 + 1) = 0;
  *&v99 = 0;
  BYTE8(v99) = 0x80;
  BYTE9(v99) = v28;
  *(&v99 + 10) = *&v94[7];
  HIWORD(v99) = v95;
  LOBYTE(v103) = 0;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  *(&v103 + 1) = *v94;
  DWORD1(v103) = *&v94[3];
  *(&v103 + 1) = v27;
  *&v104[0] = MEMORY[0x277D84F90];
  *(v104 + 8) = 0u;
  *(&v104[1] + 8) = 0u;
  *(&v104[2] + 1) = 0;
  v105 = 2;
  nullsub_1();
  v29 = v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  v30 = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v106[8] = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v106[9] = v30;
  v107 = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v31 = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v106[4] = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v106[5] = v31;
  v32 = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v106[6] = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v106[7] = v32;
  v33 = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v106[0] = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v106[1] = v33;
  v34 = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v106[2] = *(v3 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
  v106[3] = v34;
  v35 = v104[2];
  *(v29 + 128) = v104[1];
  *(v29 + 144) = v35;
  *(v29 + 160) = v105;
  v36 = v102;
  *(v29 + 64) = v101;
  *(v29 + 80) = v36;
  v37 = v104[0];
  *(v29 + 96) = v103;
  *(v29 + 112) = v37;
  v38 = v98;
  *v29 = v97;
  *(v29 + 16) = v38;
  v39 = v100;
  *(v29 + 32) = v99;
  *(v29 + 48) = v39;

  sub_20B520158(v106, &qword_27C762340, &unk_20C150290);
  v85 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v83 = v24;
  if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
LABEL_3:

    swift_unknownObjectRelease();

    return;
  }

  v72 = v26;
  v71 = Strong;
  v41 = [*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource];
  v42 = v83;
  if (!v41)
  {
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v43 = v81;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v44 = v84;
  v45 = sub_20C13BE74();
  (*(v82 + 8))(v43, v44);
  v84 = v45;
  v82 = *(v45 + 16);
  if (!v82)
  {
LABEL_20:

    v42 = v83;
LABEL_22:
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();

    return;
  }

  v46 = 0;
  v80 = v84 + 32;
  v81 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v78 = (v8 + 8);
  v79 = (v8 + 16);
  while (2)
  {
    if (v46 < *(v84 + 16))
    {
      v47 = (v80 + 24 * v46);
      v48 = v47[1];
      v77 = *v47;
      v49 = v47[2];
      v86 = v46 + 1;
      (*v79)(v88, &v81[v85], v7);
      v50 = *(v48 + 16);

      v87 = v49;

      v51 = 0;
      do
      {
        if (v50 == v51)
        {
          (*v78)(v88, v7);
          goto LABEL_10;
        }

        v52 = v51 + 1;
        sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v53 = sub_20C13C894();
        v51 = v52;
      }

      while ((v53 & 1) == 0);
      (*v78)(v88, v7);
      v54 = *(v29 + 128);
      v55 = *(v29 + 144);
      v56 = *(v29 + 96);
      v90[7] = *(v29 + 112);
      v91 = v54;
      v92 = v55;
      v93 = *(v29 + 160);
      v57 = *(v29 + 80);
      v90[4] = *(v29 + 64);
      v90[5] = v57;
      v90[6] = v56;
      v58 = *(v29 + 16);
      v90[0] = *v29;
      v90[1] = v58;
      v59 = *(v29 + 48);
      v90[2] = *(v29 + 32);
      v90[3] = v59;
      v60 = sub_20B5EAF8C(v90);
      if (v60 == 1)
      {
        v61 = 0;
        v62 = 0;
      }

      else
      {
        v61 = *(&v91 + 1);
        v62 = v92;
      }

      v63 = v87;
      v76 = &v70;
      v89[0] = v61;
      v89[1] = v62;
      MEMORY[0x28223BE20](v60);
      *(&v70 - 2) = v89;
      v64 = sub_20B796758(sub_20B5EB0CC, (&v70 - 4), v63);

      if ((v64 & 1) == 0)
      {
LABEL_10:

        v46 = v86;
        if (v86 == v82)
        {
          goto LABEL_20;
        }

        continue;
      }

      sub_20B5E2E18();
      v65 = sub_20C13D374();
      v67 = v73;
      v66 = v74;
      *v73 = v65;
      v68 = v75;
      (*(v66 + 104))(v67, *MEMORY[0x277D85200], v75);
      v69 = sub_20C13C584();
      (*(v66 + 8))(v67, v68);
      if ((v69 & 1) == 0)
      {
        goto LABEL_27;
      }

      sub_20B61F5C0(v77, v48, v87, v85, 1, v71);

      goto LABEL_3;
    }

    break;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_20BFB7ABC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_20C1351A4();
  v6 = v5;
  v8 = v7 & 1;
  sub_20BFBF908();
  sub_20BFBF95C();
  v9 = sub_20C133C04();
  sub_20B583F4C(v4, v6, v8);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BEC8, &qword_20C172818);
    v10 = *(type metadata accessor for LinkAnnotation(0) - 8);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_20C14F980;
    v13 = (v12 + v11);
    v14 = sub_20C137F04();
    v16 = v15;
    sub_20C135194();
    *v13 = v14;
    v13[1] = v16;

    sub_20B8DB830(v12);
  }

  else
  {
  }

  *a2 = v3;
}

void sub_20BFB7C6C(uint64_t a1)
{
  v2 = sub_20C1385B4();
  v142 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v141 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_20C137F24();
  v152 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v5 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v171 = &v137 - v7;
  v150 = sub_20C13BB84();
  v143 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v9 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v151 = &v137 - v11;
  v12 = sub_20C1335F4();
  v156 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v149 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v172 = (&v137 - v15);
  v16 = sub_20C138094();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v167 = (&v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v166 = &v137 - v20;
  MEMORY[0x28223BE20](v21);
  v165 = (&v137 - v22);
  MEMORY[0x28223BE20](v23);
  v164 = &v137 - v24;
  MEMORY[0x28223BE20](v25);
  v163 = &v137 - v26;
  MEMORY[0x28223BE20](v27);
  v162 = &v137 - v28;
  MEMORY[0x28223BE20](v29);
  v161 = (&v137 - v30);
  MEMORY[0x28223BE20](v31);
  v160 = (&v137 - v32);
  MEMORY[0x28223BE20](v33);
  v159 = (&v137 - v34);
  MEMORY[0x28223BE20](v35);
  *&v158 = &v137 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = (&v137 - v38);
  MEMORY[0x28223BE20](v40);
  *(&v137 - v41) = 2;
  v173 = &v137 - v41;
  swift_storeEnumTagMultiPayload();
  v144 = a1;
  *v39 = sub_20C1342F4();
  v39[1] = v42;
  v169 = v16;
  swift_storeEnumTagMultiPayload();
  v43 = sub_20BC060E4(0, 1, 1, MEMORY[0x277D84F90]);
  v45 = v43[2];
  v44 = v43[3];
  if (v45 >= v44 >> 1)
  {
    v43 = sub_20BC060E4((v44 > 1), v45 + 1, 1, v43);
  }

  v43[2] = v45 + 1;
  v175 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v174 = *(v17 + 72);
  sub_20BC9EFAC(v39, v43 + v175 + v174 * v45);
  v46 = sub_20C1342B4();
  v47 = *(v46 + 16);
  v168 = v9;
  v155 = v12;
  if (v47)
  {
    v48 = sub_20BEDEBF0(v47, 0);
    sub_20BEE2700(v176, &v48[(*(v156 + 80) + 32) & ~*(v156 + 80)], v47, v46);
    v50 = v49;
    v51 = v176[0];
    v157 = v176[3];
    v154 = v176[4];

    sub_20B583EDC(v51);
    if (v50 != v47)
    {
      __break(1u);
LABEL_50:

      __break(1u);
      return;
    }

    v12 = v155;
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

  v139 = v2;
  v176[0] = v48;

  v47 = 0;
  sub_20BFBB578(v176, v52);

  v54 = *(v176[0] + 16);
  v55 = &unk_20C14F000;
  v148 = v5;
  if (v54)
  {
    v138 = 0;
    v56 = *(v156 + 16);
    v57 = (*(v156 + 80) + 32) & ~*(v156 + 80);
    v137 = v176[0];
    v58 = v176[0] + v57;
    v153 = *(v156 + 72);
    v156 += 16;
    v157 = (v156 - 8);
    v147 = (v143 + 8);
    *&v53 = 136446210;
    v145 = v53;
    v59 = v151;
    v154 = v56;
    do
    {
      v62 = v59;
      v63 = v56;
      v56(v172, v58, v12);
      v64 = sub_20C1335C4();
      if (v65)
      {
        v66 = v64;
        v67 = v65;
        sub_20B634348(v173, v158);
        v69 = v43[2];
        v68 = v43[3];
        v70 = v69 + 1;
        if (v69 >= v68 >> 1)
        {
          v43 = sub_20BC060E4((v68 > 1), v69 + 1, 1, v43);
        }

        v43[2] = v70;
        sub_20BC9EFAC(v158, v43 + v175 + v69 * v174);
        sub_20B634348(v173, v159);
        v71 = v43[3];
        if ((v69 + 2) > (v71 >> 1))
        {
          v43 = sub_20BC060E4((v71 > 1), v69 + 2, 1, v43);
        }

        v43[2] = v69 + 2;
        sub_20BC9EFAC(v159, v43 + v175 + v70 * v174);
        v72 = sub_20C1335D4();
        v73 = v160;
        *v160 = v72;
        v73[1] = v74;
        v73[2] = 0;
        v73[3] = 0;
        swift_storeEnumTagMultiPayload();
        v76 = v43[2];
        v75 = v43[3];
        v77 = v76 + 1;
        if (v76 >= v75 >> 1)
        {
          v43 = sub_20BC060E4((v75 > 1), v76 + 1, 1, v43);
        }

        v43[2] = v77;
        sub_20BC9EFAC(v160, v43 + v175 + v76 * v174);
        sub_20B634348(v173, v161);
        v78 = v43[3];
        v79 = v76 + 2;
        if ((v76 + 2) > (v78 >> 1))
        {
          v43 = sub_20BC060E4((v78 > 1), v76 + 2, 1, v43);
        }

        v43[2] = v79;
        sub_20BC9EFAC(v161, v43 + v175 + v77 * v174);
        v80 = v162;
        *v162 = v66;
        *(v80 + 8) = v67;
        swift_storeEnumTagMultiPayload();
        v81 = v43[3];
        v82 = v76 + 3;
        if ((v76 + 3) > (v81 >> 1))
        {
          v43 = sub_20BC060E4((v81 > 1), v76 + 3, 1, v43);
        }

        v59 = v151;
        v12 = v155;
        (*v157)(v172, v155);
        v43[2] = v82;
        sub_20BC9EFAC(v162, v43 + v175 + v79 * v174);
      }

      else
      {
        v83 = v12;
        sub_20C13B534();
        v84 = v149;
        v63(v149, v172, v83);
        v59 = v62;
        v85 = sub_20C13BB74();
        v86 = sub_20C13D1F4();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v176[0] = v146;
          *v87 = v145;
          v88 = sub_20C1335B4();
          v90 = v89;
          v91 = *v157;
          (*v157)(v84, v155);
          v92 = sub_20B51E694(v88, v90, v176);
          v59 = v151;

          *(v87 + 4) = v92;
          _os_log_impl(&dword_20B517000, v85, v86, "No bio available for %{public}s, skipping", v87, 0xCu);
          v93 = v146;
          __swift_destroy_boxed_opaque_existential_1(v146);
          MEMORY[0x20F2F6A40](v93, -1, -1);
          v12 = v155;
          MEMORY[0x20F2F6A40](v87, -1, -1);

          (*v147)(v59, v150);
          v91(v172, v12);
        }

        else
        {
          v60 = v83;

          v61 = *v157;
          (*v157)(v84, v60);
          (*v147)(v59, v150);
          v61(v172, v60);
          v12 = v60;
        }
      }

      v58 += v153;
      --v54;
      v56 = v154;
    }

    while (v54);

    v55 = &unk_20C14F000;
    v47 = v138;
  }

  else
  {
  }

  v176[0] = sub_20C134304();

  sub_20BFBB65C(v176);
  v94 = v152;
  if (v47)
  {
    goto LABEL_50;
  }

  v96 = *(v176[0] + 16);
  if (v96)
  {
    v99 = *(v94 + 16);
    v97 = v94 + 16;
    v98 = v99;
    v100 = (*(v97 + 64) + 32) & ~*(v97 + 64);
    v157 = v176[0];
    v101 = v176[0] + v100;
    v162 = *(v97 + 56);
    v172 = (v97 - 8);
    v160 = (v143 + 8);
    *&v95 = v55[314];
    v158 = v95;
    v152 = v97;
    v161 = v99;
    v99(v171, (v176[0] + v100), v170);
    while (1)
    {
      v104 = sub_20C137EF4();
      if (v105)
      {
        v106 = v104;
        v107 = v105;
        sub_20B634348(v173, v163);
        v109 = v43[2];
        v108 = v43[3];
        v110 = v109 + 1;
        if (v109 >= v108 >> 1)
        {
          v43 = sub_20BC060E4((v108 > 1), v109 + 1, 1, v43);
        }

        v43[2] = v110;
        sub_20BC9EFAC(v163, v43 + v175 + v109 * v174);
        sub_20B634348(v173, v164);
        v111 = v43[3];
        if ((v109 + 2) > (v111 >> 1))
        {
          v43 = sub_20BC060E4((v111 > 1), v109 + 2, 1, v43);
        }

        v43[2] = v109 + 2;
        sub_20BC9EFAC(v164, v43 + v175 + v110 * v174);
        v112 = sub_20C137F04();
        v113 = v165;
        *v165 = v112;
        v113[1] = v114;
        v113[2] = 0;
        v113[3] = 0;
        swift_storeEnumTagMultiPayload();
        v116 = v43[2];
        v115 = v43[3];
        v117 = v116 + 1;
        if (v116 >= v115 >> 1)
        {
          v43 = sub_20BC060E4((v115 > 1), v116 + 1, 1, v43);
        }

        v43[2] = v117;
        sub_20BC9EFAC(v165, v43 + v175 + v116 * v174);
        sub_20B634348(v173, v166);
        v118 = v43[3];
        v119 = v116 + 2;
        if ((v116 + 2) > (v118 >> 1))
        {
          v43 = sub_20BC060E4((v118 > 1), v116 + 2, 1, v43);
        }

        v43[2] = v119;
        sub_20BC9EFAC(v166, v43 + v175 + v117 * v174);
        v120 = v167;
        *v167 = v106;
        v120[1] = v107;
        swift_storeEnumTagMultiPayload();
        v121 = v43[3];
        if ((v116 + 3) > (v121 >> 1))
        {
          v43 = sub_20BC060E4((v121 > 1), v116 + 3, 1, v43);
        }

        (*v172)(v171, v170);
        v43[2] = v116 + 3;
        sub_20BC9EFAC(v167, v43 + v175 + v119 * v174);
      }

      else
      {
        sub_20C13B534();
        v122 = v171;
        v123 = v148;
        v98(v148, v171, v170);
        v124 = sub_20C13BB74();
        v125 = sub_20C13D1F4();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          v176[0] = v159;
          *v126 = v158;
          v127 = sub_20C137ED4();
          v129 = v128;
          v130 = *v172;
          (*v172)(v123, v170);
          v131 = sub_20B51E694(v127, v129, v176);

          *(v126 + 4) = v131;
          _os_log_impl(&dword_20B517000, v124, v125, "No bio available for %{public}s, skipping", v126, 0xCu);
          v132 = v159;
          __swift_destroy_boxed_opaque_existential_1(v159);
          MEMORY[0x20F2F6A40](v132, -1, -1);
          MEMORY[0x20F2F6A40](v126, -1, -1);

          (*v160)(v168, v150);
          v130(v171, v170);
        }

        else
        {

          v102 = *v172;
          v103 = v170;
          (*v172)(v123, v170);
          (*v160)(v168, v150);
          v102(v122, v103);
        }

        v98 = v161;
      }

      v101 += v162;
      if (!--v96)
      {
        break;
      }

      v98(v171, v101, v170);
    }
  }

  __swift_project_boxed_opaque_existential_1((v140 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_mediaTagStringBuilder), *(v140 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_mediaTagStringBuilder + 24));
  v133 = objc_opt_self();
  v134 = [v133 whiteColor];
  v135 = [v133 systemGrayColor];
  v136 = v141;
  sub_20C1385A4();

  sub_20C138524();

  (*(v142 + 8))(v136, v139);
  sub_20BE9B9EC(v173, MEMORY[0x277D53BC8]);
}

void sub_20BFB8DDC()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x28223BE20](v2);
  v62 = (&v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20C132EE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v77 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v59 - v7;
  v76 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow) = 0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer + 24));
  v8 = sub_20C138D34();
  v75 = v9;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_mediaTagStringBuilder + 24));
  sub_20C1359E4();
  v10 = sub_20C138544();

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  v12 = v75;
  *(v11 + 40) = v8;
  *(v11 + 48) = v12;
  *(v11 + 56) = 768;
  v13 = MEMORY[0x277D84F90];
  *(v11 + 64) = MEMORY[0x277D84F90];
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
  *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = v11 | 0x2000000000000003;
  v15 = v10;

  sub_20B9EAE04(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20C14F980;
  *(v16 + 32) = v11 | 0x2000000000000003;
  v17 = *(v1 + v76);
  v83 = 0uLL;
  LOBYTE(v84) = 1;
  *(&v84 + 1) = 0;
  *&v85 = 0;
  BYTE8(v85) = 0x80;
  BYTE9(v85) = v17;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  LOBYTE(v89) = 0;
  *(&v89 + 1) = v16;
  *&v90[0] = v13;
  *(&v90[1] + 8) = 0u;
  *(v90 + 8) = 0u;
  *(&v90[2] + 1) = 0;
  v91 = 2;
  nullsub_1();
  v18 = v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v92[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v92[9] = v19;
  v93 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v92[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v92[5] = v20;
  v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v92[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v92[7] = v21;
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v92[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v92[1] = v22;
  v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v92[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
  v92[3] = v23;
  v24 = v90[2];
  *(v18 + 128) = v90[1];
  *(v18 + 144) = v24;
  *(v18 + 160) = v91;
  v25 = v88;
  *(v18 + 64) = v87;
  *(v18 + 80) = v25;
  v26 = v90[0];
  *(v18 + 96) = v89;
  *(v18 + 112) = v26;
  v27 = v84;
  *v18 = v83;
  *(v18 + 16) = v27;
  v28 = v86;
  *(v18 + 32) = v85;
  *(v18 + 48) = v28;

  sub_20B520158(v92, &qword_27C762340, &unk_20C150290);
  v74 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_5;
  }

  v72 = v15;
  if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
LABEL_3:

    swift_unknownObjectRelease();
    v15 = v72;
LABEL_5:

    return;
  }

  v61 = v11;
  v60 = Strong;
  v30 = [*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource];
  v31 = v72;
  if (!v30)
  {
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v32 = v70;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v33 = v73;
  v34 = sub_20C13BE74();
  (*(v71 + 8))(v32, v33);
  v73 = v34;
  v71 = *(v34 + 16);
  if (!v71)
  {
LABEL_21:

    v31 = v72;
LABEL_23:
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();

    return;
  }

  v35 = 0;
  v69 = v73 + 32;
  v70 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v67 = (v5 + 8);
  v68 = (v5 + 16);
  while (2)
  {
    if (v35 < *(v73 + 16))
    {
      v36 = (v69 + 24 * v35);
      v37 = v36[1];
      v66 = *v36;
      v38 = v36[2];
      v75 = v35 + 1;
      (*v68)(v77, &v70[v74], v4);
      v39 = *(v37 + 16);

      v76 = v38;

      v40 = 0;
      do
      {
        if (v39 == v40)
        {
          (*v67)(v77, v4);
          goto LABEL_11;
        }

        v41 = v40 + 1;
        sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v42 = sub_20C13C894();
        v40 = v41;
      }

      while ((v42 & 1) == 0);
      (*v67)(v77, v4);
      v43 = *(v18 + 128);
      v44 = *(v18 + 144);
      v45 = *(v18 + 96);
      v79[7] = *(v18 + 112);
      v80 = v43;
      v81 = v44;
      v82 = *(v18 + 160);
      v46 = *(v18 + 80);
      v79[4] = *(v18 + 64);
      v79[5] = v46;
      v79[6] = v45;
      v47 = *(v18 + 16);
      v79[0] = *v18;
      v79[1] = v47;
      v48 = *(v18 + 48);
      v79[2] = *(v18 + 32);
      v79[3] = v48;
      v49 = sub_20B5EAF8C(v79);
      if (v49 == 1)
      {
        v50 = 0;
        v51 = 0;
      }

      else
      {
        v50 = *(&v80 + 1);
        v51 = v81;
      }

      v52 = v76;
      v65 = &v59;
      v78[0] = v50;
      v78[1] = v51;
      MEMORY[0x28223BE20](v49);
      *(&v59 - 2) = v78;
      v53 = sub_20B796758(sub_20B5EB0CC, (&v59 - 4), v52);

      if ((v53 & 1) == 0)
      {
LABEL_11:

        v35 = v75;
        if (v75 == v71)
        {
          goto LABEL_21;
        }

        continue;
      }

      sub_20B5E2E18();
      v54 = sub_20C13D374();
      v56 = v62;
      v55 = v63;
      *v62 = v54;
      v57 = v64;
      (*(v55 + 104))(v56, *MEMORY[0x277D85200], v64);
      v58 = sub_20C13C584();
      (*(v55 + 8))(v56, v57);
      if ((v58 & 1) == 0)
      {
        goto LABEL_28;
      }

      sub_20B61F5C0(v66, v37, v76, v74, 1, v60);

      goto LABEL_3;
    }

    break;
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_20BFB9660(void *a1, void *a2, int a3, char a4, int a5, int a6)
{
  LODWORD(v79) = a6;
  LODWORD(v80) = a5;
  LODWORD(v78) = a3;
  v10 = sub_20C13C554();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = (v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_20C132EE4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v70 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v75 = *(v15 - 8);
  v76 = v15;
  MEMORY[0x28223BE20](v15);
  v74 = (v66 - v16);
  v77 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow;
  v81 = v6;
  *(v6 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow) = a4;
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer), *(v6 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer + 24));
  v17 = sub_20C138D34();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = a2;
  LOBYTE(a2) = v78 & 1;
  *(v20 + 32) = v78 & 1;
  *(v20 + 40) = v17;
  *(v20 + 48) = v19;
  *(v20 + 56) = v79 & 1;
  *(v20 + 57) = v80;
  *(v20 + 64) = MEMORY[0x277D84F90];
  v22 = v81;
  v23 = *(v81 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
  *(v81 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem) = v20 | 0x2000000000000003;

  sub_20B7D4748(a1, v21, a2);
  sub_20B9EAE04(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20C14F980;
  *(v24 + 32) = v20 | 0x2000000000000003;
  v25 = *(v22 + v77);
  v87 = 0uLL;
  LOBYTE(v88) = 1;
  *(&v88 + 1) = 0;
  *&v89 = 0;
  BYTE8(v89) = 0x80;
  BYTE9(v89) = v25;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  LOBYTE(v93) = 0;
  *(&v93 + 1) = v24;
  *&v94[0] = MEMORY[0x277D84F90];
  *(&v94[1] + 8) = 0u;
  *(v94 + 8) = 0u;
  *(&v94[2] + 1) = 0;
  v95 = 2;
  nullsub_1();
  v26 = v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  v27 = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v96[8] = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v96[9] = v27;
  v97 = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v28 = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v96[4] = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v96[5] = v28;
  v29 = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v96[6] = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v96[7] = v29;
  v30 = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v96[0] = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v96[1] = v30;
  v31 = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v96[2] = *(v22 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
  v96[3] = v31;
  v32 = v94[2];
  *(v26 + 128) = v94[1];
  *(v26 + 144) = v32;
  *(v26 + 160) = v95;
  v33 = v92;
  *(v26 + 64) = v91;
  *(v26 + 80) = v33;
  v34 = v94[0];
  *(v26 + 96) = v93;
  *(v26 + 112) = v34;
  v35 = v88;
  *v26 = v87;
  *(v26 + 16) = v35;
  v36 = v90;
  *(v26 + 32) = v89;
  *(v26 + 48) = v36;

  sub_20B520158(v96, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
    goto LABEL_23;
  }

  v66[1] = v20;
  v66[0] = Strong;
  if (![*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
  {
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v38 = v74;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v39 = v76;
  v40 = sub_20C13BE74();
  (*(v75 + 8))(v38, v39);
  v77 = *(v40 + 16);
  v78 = v40;
  v41 = v70;
  if (!v77)
  {
LABEL_20:

LABEL_22:
    sub_20C0C2D50(0);
LABEL_23:

    swift_unknownObjectRelease();
    return;
  }

  v42 = 0;
  v75 = v78 + 32;
  v76 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v73 = (v13 + 8);
  v74 = (v13 + 16);
  while (2)
  {
    if (v42 < *(v78 + 16))
    {
      v43 = (v75 + 24 * v42);
      v44 = v43[1];
      v72 = *v43;
      v45 = v43[2];
      v79 = v42 + 1;
      (*v74)(v41, v81 + v76, v12);
      v46 = *(v44 + 16);

      v80 = v45;

      v47 = 0;
      do
      {
        if (v46 == v47)
        {
          (*v73)(v41, v12);
          goto LABEL_10;
        }

        v48 = v47 + 1;
        sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v49 = sub_20C13C894();
        v47 = v48;
      }

      while ((v49 & 1) == 0);
      (*v73)(v41, v12);
      v50 = *(v26 + 128);
      v51 = *(v26 + 144);
      v52 = *(v26 + 96);
      v83[7] = *(v26 + 112);
      v84 = v50;
      v85 = v51;
      v86 = *(v26 + 160);
      v53 = *(v26 + 80);
      v83[4] = *(v26 + 64);
      v83[5] = v53;
      v83[6] = v52;
      v54 = *(v26 + 16);
      v83[0] = *v26;
      v83[1] = v54;
      v55 = *(v26 + 48);
      v83[2] = *(v26 + 32);
      v83[3] = v55;
      v56 = sub_20B5EAF8C(v83);
      if (v56 == 1)
      {
        v57 = 0;
        v58 = 0;
      }

      else
      {
        v57 = *(&v84 + 1);
        v58 = v85;
      }

      v59 = v80;
      v71 = v66;
      v82[0] = v57;
      v82[1] = v58;
      MEMORY[0x28223BE20](v56);
      v66[-2] = v82;
      v60 = sub_20B796758(sub_20B5EB0CC, &v66[-4], v59);

      if ((v60 & 1) == 0)
      {
LABEL_10:

        v42 = v79;
        if (v79 == v77)
        {
          goto LABEL_20;
        }

        continue;
      }

      sub_20B5E2E18();
      v61 = sub_20C13D374();
      v63 = v67;
      v62 = v68;
      *v67 = v61;
      v64 = v69;
      (*(v62 + 104))(v63, *MEMORY[0x277D85200], v69);
      v65 = sub_20C13C584();
      (*(v62 + 8))(v63, v64);
      if ((v65 & 1) == 0)
      {
        goto LABEL_28;
      }

      sub_20B61F5C0(v72, v44, v80, v81, 1, v66[0]);

      goto LABEL_23;
    }

    break;
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_20BFB9E98(char *a1)
{
  v2 = sub_20C13C554();
  v126 = *(v2 - 8);
  v127 = v2;
  MEMORY[0x28223BE20](v2);
  v125 = (&v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = sub_20C132EE4();
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v142 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v129 = *(v5 - 8);
  v130 = v5;
  MEMORY[0x28223BE20](v5);
  v128 = &v119 - v6;
  v139 = sub_20C135524();
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v131 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EC8, &unk_20C187A60);
  MEMORY[0x28223BE20](v8 - 8);
  v132 = (&v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v135 = &v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810, &unk_20C16B440);
  MEMORY[0x28223BE20](v12 - 8);
  v138 = &v119 - v13;
  v14 = sub_20C134EC4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v134 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649D8, &unk_20C1566E0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v119 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0, &unk_20C1643C0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v119 - v26;
  v28 = *(v15 + 16);
  v136 = a1;
  v28(&v119 - v26, a1, v14, v25);
  (*(v15 + 56))(v27, 0, 1, v14);
  v29 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterRoot;
  v30 = *(v18 + 56);
  sub_20B52F9E8(v27, v20, &qword_27C7649E0, &unk_20C1643C0);
  v133 = v29;
  sub_20B52F9E8(v140 + v29, &v20[v30], &qword_27C7649E0, &unk_20C1643C0);
  v31 = *(v15 + 48);
  if (v31(v20, 1, v14) == 1)
  {
    sub_20B520158(v27, &qword_27C7649E0, &unk_20C1643C0);
    if (v31(&v20[v30], 1, v14) == 1)
    {
      sub_20B520158(v20, &qword_27C7649E0, &unk_20C1643C0);
      v33 = v139;
      v32 = v140;
      goto LABEL_8;
    }

LABEL_6:
    sub_20B520158(v20, &qword_27C7649D8, &unk_20C1566E0);
    return;
  }

  sub_20B52F9E8(v20, v23, &qword_27C7649E0, &unk_20C1643C0);
  if (v31(&v20[v30], 1, v14) == 1)
  {
    sub_20B520158(v27, &qword_27C7649E0, &unk_20C1643C0);
    (*(v15 + 8))(v23, v14);
    goto LABEL_6;
  }

  v34 = v134;
  (*(v15 + 32))(v134, &v20[v30], v14);
  sub_20BFBF8A4(&qword_27C7649E8, MEMORY[0x277D512A8], MEMORY[0x277D512B0]);
  v35 = sub_20C13C894();
  v36 = *(v15 + 8);
  v36(v34, v14);
  sub_20B520158(v27, &qword_27C7649E0, &unk_20C1643C0);
  v36(v23, v14);
  sub_20B520158(v20, &qword_27C7649E0, &unk_20C1643C0);
  v33 = v139;
  v32 = v140;
  if ((v35 & 1) == 0)
  {
    return;
  }

LABEL_8:
  v37 = type metadata accessor for FilterResultUpdated(0);
  v38 = *(v37 + 20);
  v39 = sub_20C133E24();
  v40 = *(v39 - 8);
  v41 = v136;
  v42 = &v136[v38];
  v43 = v138;
  (*(v40 + 16))(v138, v42, v39);
  (*(v40 + 56))(v43, 0, 1, v39);
  v44 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filter;
  swift_beginAccess();
  sub_20B5DF2D4(v43, v32 + v44, &qword_27C766810, &unk_20C16B440);
  swift_endAccess();
  v45 = *(v37 + 24);
  v46 = v137;
  v47 = v135;
  (*(v137 + 16))(v135, &v41[v45], v33);
  (*(v46 + 56))(v47, 0, 1, v33);
  v48 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterResult;
  swift_beginAccess();
  sub_20B5DF2D4(v47, v32 + v48, &qword_27C769EC8, &unk_20C187A60);
  swift_endAccess();
  v49 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem;
  v50 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem);
  if ((~v50 & 0xF000000000000007) == 0 || ((v50 >> 57) & 0x78 | v50 & 7) != 0x13)
  {
    return;
  }

  v51 = v50 & 0xFFFFFFFFFFFFFF8;
  v53 = *(v51 + 16);
  v52 = *(v51 + 24);
  v54 = *(v51 + 32);
  v55 = *(v51 + 48);
  v122 = *(v51 + 40);
  LODWORD(v135) = *(v51 + 56);
  v121 = *(v51 + 57);
  v56 = *(v51 + 64);
  v57 = v32 + v44;
  v58 = v52;
  v59 = v138;
  sub_20B52F9E8(v57, v138, &qword_27C766810, &unk_20C16B440);
  v136 = v53;
  LODWORD(v134) = v54;
  sub_20B7D4748(v53, v58, v54);
  v123 = v55;

  v124 = v56;

  LOBYTE(v54) = sub_20B84AFA0(v59);
  sub_20B520158(v59, &qword_27C766810, &unk_20C16B440);
  if ((v54 & 1) == 0)
  {
    v60 = v132;
    sub_20B52F9E8(v32 + v48, v132, &qword_27C769EC8, &unk_20C187A60);
    v61 = v137;
    v62 = v139;
    if ((*(v137 + 48))(v60, 1, v139) == 1)
    {
      sub_20B520158(v60, &qword_27C769EC8, &unk_20C187A60);
    }

    else
    {
      v63 = v131;
      v64 = (*(v61 + 32))(v131, v60, v62);
      v65 = sub_20BB110D4(v64);
      (*(v61 + 8))(v63, v62);
      LODWORD(v135) = v65 | v135;
    }
  }

  v66 = v134;
  v67 = v136;
  v69 = v122;
  v68 = v123;
  v70 = swift_allocObject();
  *(v70 + 16) = v67;
  *(v70 + 24) = v58;
  *(v70 + 32) = v66;
  *(v70 + 40) = v69;
  *(v70 + 48) = v68;
  *(v70 + 56) = v135 & 1;
  *(v70 + 57) = v121;
  *(v70 + 64) = v124;
  v71 = *(v32 + v49);
  *(v32 + v49) = v70 | 0x2000000000000003;
  sub_20B7D4748(v67, v58, v66);

  sub_20B9EAE04(v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_20C14F980;
  v73 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_displaysSeparatorBelow);
  *(v72 + 32) = v70 | 0x2000000000000003;
  v149 = 0uLL;
  LOBYTE(v150) = 1;
  *(&v150 + 1) = 0;
  *&v151 = 0;
  BYTE8(v151) = 0x80;
  BYTE9(v151) = v73;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  LOBYTE(v155) = 0;
  *(&v155 + 1) = v72;
  *&v156[0] = MEMORY[0x277D84F90];
  *(&v156[1] + 8) = 0u;
  *(v156 + 8) = 0u;
  *(&v156[2] + 1) = 0;
  v157 = 2;
  nullsub_1();
  v74 = v67;
  v75 = v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row;
  v76 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v158[8] = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v158[9] = v76;
  v159 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v77 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v158[4] = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v158[5] = v77;
  v78 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v158[6] = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v158[7] = v78;
  v79 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v158[0] = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v158[1] = v79;
  v80 = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v158[2] = *(v32 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
  v158[3] = v80;
  v81 = v156[2];
  *(v75 + 128) = v156[1];
  *(v75 + 144) = v81;
  *(v75 + 160) = v157;
  v82 = v154;
  *(v75 + 64) = v153;
  *(v75 + 80) = v82;
  v83 = v156[0];
  *(v75 + 96) = v155;
  *(v75 + 112) = v83;
  v84 = v150;
  *v75 = v149;
  *(v75 + 16) = v84;
  v85 = v152;
  *(v75 + 32) = v151;
  *(v75 + 48) = v85;

  sub_20B520158(v158, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_20B9E75BC(v74, v58, v66);

    return;
  }

  v87 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v88 = v136;
    v89 = v58;
    v90 = v66;
LABEL_36:
    sub_20B9E75BC(v88, v89, v90);

LABEL_37:
    swift_unknownObjectRelease();
    return;
  }

  if (![*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource])
  {
LABEL_35:
    sub_20C0C2D50(0);
    v88 = v136;
    v89 = v58;
    v90 = v134;
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v123 = v70;
  v124 = v87;
  v91 = v128;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v92 = v130;
  v93 = sub_20C13BE74();
  (*(v129 + 8))(v91, v92);
  v137 = *(v93 + 16);
  v138 = v93;
  if (!v137)
  {
LABEL_33:

    goto LABEL_35;
  }

  v94 = 0;
  v95 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v135 = v138 + 32;
  v132 = (v141 + 8);
  v133 = (v141 + 16);
  v120 = v58;
  v130 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  while (2)
  {
    if (v94 < *(v138 + 16))
    {
      v96 = (v135 + 24 * v94);
      v97 = v96[1];
      v131 = *v96;
      v98 = v96[2];
      ++v94;
      (*v133)(v142, v140 + v95, v143);
      v99 = *(v97 + 16);

      v139 = v98;

      v100 = 0;
      do
      {
        if (v99 == v100)
        {
          (*v132)(v142, v143);

          goto LABEL_23;
        }

        v101 = v100 + 1;
        sub_20BFBF8A4(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v102 = sub_20C13C894();
        v100 = v101;
      }

      while ((v102 & 1) == 0);
      (*v132)(v142, v143);
      v103 = *(v75 + 128);
      v104 = *(v75 + 144);
      v105 = *(v75 + 96);
      v145[7] = *(v75 + 112);
      v146 = v103;
      v147 = v104;
      v148 = *(v75 + 160);
      v106 = *(v75 + 80);
      v145[4] = *(v75 + 64);
      v145[5] = v106;
      v145[6] = v105;
      v107 = *(v75 + 16);
      v145[0] = *v75;
      v145[1] = v107;
      v108 = *(v75 + 48);
      v145[2] = *(v75 + 32);
      v145[3] = v108;
      v109 = sub_20B5EAF8C(v145);
      if (v109 == 1)
      {
        v110 = 0;
        v111 = 0;
      }

      else
      {
        v110 = *(&v146 + 1);
        v111 = v147;
      }

      v112 = v139;
      v144[0] = v110;
      v144[1] = v111;
      MEMORY[0x28223BE20](v109);
      *(&v119 - 2) = v144;
      v113 = sub_20B796758(sub_20B5EB0CC, (&v119 - 4), v112);

      if ((v113 & 1) == 0)
      {

        v95 = v130;
LABEL_23:
        v58 = v120;
        if (v94 == v137)
        {
          goto LABEL_33;
        }

        continue;
      }

      sub_20B5E2E18();
      v114 = sub_20C13D374();
      v116 = v125;
      v115 = v126;
      *v125 = v114;
      v117 = v127;
      (*(v115 + 104))(v116, *MEMORY[0x277D85200], v127);
      v118 = sub_20C13C584();
      (*(v115 + 8))(v116, v117);
      if ((v118 & 1) == 0)
      {
        goto LABEL_42;
      }

      sub_20B61F5C0(v131, v97, v139, v140, 1, v124);
      sub_20B9E75BC(v136, v120, v134);

      goto LABEL_37;
    }

    break;
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_20BFBAE78()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_mediaTagStringBuilder));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_storefrontLocalizer));
  swift_unknownObjectRelease();
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterRoot, &qword_27C7649E0, &unk_20C1643C0);

  sub_20B9EAE04(*(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_currentItem));
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filter, &qword_27C766810, &unk_20C16B440);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_filterResult, &qword_27C769EC8, &unk_20C187A60);
  return v0;
}

uint64_t sub_20BFBAFEC()
{
  sub_20BFBAE78();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExpandingTextShelf(uint64_t a1)
{
  result = qword_27C771590;
  if (!qword_27C771590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BFBB098(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20BFBB278(319, &qword_27C7715A0, MEMORY[0x277D512A8]);
    if (v2 <= 0x3F)
    {
      sub_20BFBB278(319, &qword_27C769EB8, MEMORY[0x277D504B0]);
      if (v3 <= 0x3F)
      {
        sub_20BFBB278(319, &qword_27C769EC0, MEMORY[0x277D51980]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20BFBB278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_20BFBB2CC(char *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BFB9E98(a1);
  }

  return result;
}

uint64_t sub_20BFBB32C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BFBB3A4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ExpandingTextShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BFBB460()
{
  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BFBF8A4(&qword_27C7710D0, type metadata accessor for FilterResultUpdated, &unk_20C16F370);
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

void sub_20BFBB578(uint64_t *a1, __n128 a2)
{
  v3 = *(sub_20C1335F4() - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_20B6A0FB0(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_20BFBB740(v6, MEMORY[0x277D4FFF0], sub_20BFBBF90, sub_20BFBB890);
  *a1 = v4;
}

void sub_20BFBB65C(uint64_t *a1)
{
  v2 = *(sub_20C137F24() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A103C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BFBB740(v5, MEMORY[0x277D53B20], sub_20BFBCCC4, sub_20BFBBC88);
  *a1 = v3;
}

void sub_20BFBB740(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), void (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  v9 = sub_20C13DF84();
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_20C13CCD4();
        *(v12 + 16) = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    a4(0, v8, 1, a1);
  }
}

void sub_20BFBB890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, __n128 a5)
{
  v9 = sub_20C1335F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v60 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = &v49 - v13;
  v16.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v17 = &v49 - v15;
  v51 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v10 + 16);
    v19 = v10 + 16;
    v21 = *(v19 + 56);
    v62 = (v19 - 8);
    v63 = v20;
    v58 = (v19 + 16);
    v59 = v18;
    v22 = (v18 + v21 * (a3 - 1));
    v56 = v19;
    v57 = -v21;
    v23 = a1 - a3;
    v50 = v21;
    v24 = v18 + v21 * a3;
    v64 = &v49 - v15;
    v61 = v9;
    while (2)
    {
      v54 = v22;
      v55 = a3;
      v52 = v24;
      v53 = v23;
      v26 = v22;
      while (1)
      {
        v27 = v63;
        (v63)(v17, v24, v9, v16);
        v27(v65, v26, v9);
        v28 = sub_20C1335E4();
        v30 = v29;
        v32 = v31;
        v33 = sub_20C1335E4();
        v36 = v35;
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (v35)
        {
          v37 = qword_20C187A70[v28] < qword_20C187A70[v33];
          v17 = v64;
          v9 = v61;
LABEL_15:
          v44 = *v62;
          (*v62)(v65, v9);
          v44(v17, v9);
          if ((v37 & 1) == 0)
          {
            goto LABEL_6;
          }

          if (!v59)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

        sub_20B583F4C(v33, v34, 0);
        v9 = v61;
        v45 = *v62;
        (*v62)(v65, v61);
        v17 = v64;
        v45(v64, v9);
        if (!v59)
        {
LABEL_22:
          __break(1u);
          return;
        }

LABEL_19:
        v46 = *v58;
        v47 = v60;
        (*v58)(v60, v24, v9);
        swift_arrayInitWithTakeFrontToBack();
        v46(v26, v47, v9);
        v26 += v57;
        v24 += v57;
        if (__CFADD__(v23++, 1))
        {
          goto LABEL_6;
        }
      }

      v38 = v34;
      v39 = v33;
      sub_20B583F4C(v28, v30, 0);
      v9 = v61;
      if (v36)
      {
        goto LABEL_5;
      }

      sub_20B583F4C(v39, v38, 0);
      v17 = v64;
      v40 = sub_20C1335D4();
      v42 = v41;
      if (v40 == sub_20C1335D4() && v42 == v43)
      {

LABEL_5:
        v25 = *v62;
        (*v62)(v65, v9);
        v17 = v64;
        v25(v64, v9);
LABEL_6:
        a3 = v55 + 1;
        v22 = &v54[v50];
        v23 = v53 - 1;
        v24 = v52 + v50;
        if (v55 + 1 == v51)
        {
          return;
        }

        continue;
      }

      break;
    }

    v37 = sub_20C13DFF4();

    goto LABEL_15;
  }
}

void sub_20BFBBC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C137F24();
  MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v34 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_20C137F04();
      v27 = v26;
      if (sub_20C137F04() == v25 && v28 == v27)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_20C13DFF4();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_20BFBBF90(unint64_t *a1, __n128 a2, uint64_t a3, char *a4, unint64_t a5)
{
  v6 = v5;
  v148 = a1;
  v9 = sub_20C1335F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v152 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v166 = &v144 - v13;
  MEMORY[0x28223BE20](v14);
  v172 = &v144 - v15;
  MEMORY[0x28223BE20](v16);
  v171 = &v144 - v17;
  MEMORY[0x28223BE20](v18);
  v162 = &v144 - v19;
  MEMORY[0x28223BE20](v20);
  v161 = &v144 - v21;
  MEMORY[0x28223BE20](v22);
  v26.n128_f64[0] = MEMORY[0x28223BE20](v23);
  v159 = a4;
  v27 = *(a4 + 1);
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_116:
    a4 = *v148;
    if (!*v148)
    {
      goto LABEL_156;
    }

    a5 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v138 = a5;
    }

    else
    {
LABEL_150:
      v138 = sub_20B6A07A0(a5);
    }

    v173 = v138;
    a5 = *(v138 + 2);
    if (a5 >= 2)
    {
      while (*v159)
      {
        v139 = *&v138[16 * a5];
        v140 = v138;
        v141 = *&v138[16 * a5 + 24];
        sub_20BFBD874((*v159 + *(v10 + 72) * v139), (*v159 + *(v10 + 72) * *&v138[16 * a5 + 16]), (*v159 + *(v10 + 72) * v141), a4, v137);
        if (v6)
        {
          goto LABEL_127;
        }

        if (v141 < v139)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_20B6A07A0(v140);
        }

        if (a5 - 2 >= *(v140 + 2))
        {
          goto LABEL_144;
        }

        v142 = &v140[16 * a5];
        *v142 = v139;
        *(v142 + 1) = v141;
        v173 = v140;
        sub_20B6A0714(a5 - 1);
        v138 = v173;
        a5 = *(v173 + 2);
        if (a5 <= 1)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_154;
    }

    goto LABEL_127;
  }

  v146 = &v144 - v24;
  v145 = v25;
  v28 = 0;
  v169 = v10 + 16;
  v170 = (v10 + 8);
  v168 = (v10 + 32);
  v29 = MEMORY[0x277D84F90];
  v157 = v10;
  v163 = v9;
  v147 = a5;
  while (1)
  {
    v153 = v29;
    if (v28 + 1 < v27)
    {
      v160 = v27;
      v30 = *v159;
      v31 = *(v10 + 72);
      v149 = v28;
      v32 = &v30[v31 * (v28 + 1)];
      v33 = *(v10 + 16);
      v33(v146, v32, v9, v26);
      v167 = v30;
      v34 = &v30[v31 * v149];
      v35 = v145;
      v164 = v33;
      (v33)(v145, v34, v9);
      LODWORD(v165) = sub_20B80531C();
      if (!v6)
      {
        v150 = 0;
        v36 = *v170;
        (*v170)(v35, v9);
        v158 = v36;
        (v36)(v146, v9);
        v37 = v149 + 2;
        a4 = (v167 + v31 * (v149 + 2));
        v38 = v31;
        v167 = v31;
        while (1)
        {
          v41 = v160;
          if (v160 == v37)
          {
            break;
          }

          v42 = v164;
          (v164)(v161, a4, v9);
          v42(v162, v32, v9);
          v43 = sub_20C1335E4();
          v45 = v44;
          v47 = v46;
          v48 = sub_20C1335E4();
          v51 = v48;
          v52 = v50;
          if (v47)
          {
            if (v50)
            {
              v39 = qword_20C187A70[v43] < qword_20C187A70[v48];
            }

            else
            {
              sub_20B583F4C(v48, v49, 0);
              v39 = 1;
            }
          }

          else
          {
            v53 = v49;
            sub_20B583F4C(v43, v45, 0);
            v39 = 0;
            if ((v52 & 1) == 0)
            {
              sub_20B583F4C(v51, v53, 0);
              v54 = sub_20C1335D4();
              v56 = v55;
              if (v54 == sub_20C1335D4() && v56 == v57)
              {

                v39 = 0;
              }

              else
              {
                v39 = sub_20C13DFF4();
              }
            }
          }

          v9 = v163;
          v40 = v158;
          (v158)(v162, v163);
          v40(v161, v9);
          ++v37;
          v38 = v167;
          a4 += v167;
          v32 += v167;
          v10 = v157;
          if ((v165 ^ v39))
          {
            v41 = v37 - 1;
            break;
          }
        }

        v6 = v150;
        v58 = v153;
        a5 = v147;
        v28 = v149;
        if (v165)
        {
          if (v41 < v149)
          {
            goto LABEL_149;
          }

          if (v149 < v41)
          {
            v59 = v38 * (v41 - 1);
            v60 = v41 * v38;
            v160 = v41;
            v61 = v41;
            v62 = v149;
            v63 = v149 * v38;
            do
            {
              if (v62 != --v61)
              {
                v64 = *v159;
                if (!*v159)
                {
                  goto LABEL_153;
                }

                a4 = &v64[v63];
                v165 = *v168;
                (v165)(v152, &v64[v63], v163, v58);
                if (v63 < v59 || a4 >= &v64[v60])
                {
                  v9 = v163;
                  swift_arrayInitWithTakeFrontToBack();
                }

                else
                {
                  v9 = v163;
                  if (v63 != v59)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                (v165)(&v64[v59], v152, v9);
                v6 = v150;
                v58 = v153;
                v38 = v167;
              }

              ++v62;
              v59 -= v38;
              v60 -= v38;
              v63 += v38;
            }

            while (v62 < v61);
            a5 = v147;
            v28 = v149;
            v41 = v160;
          }
        }

        goto LABEL_34;
      }

      v143 = *v170;
      (*v170)(v35, v9);
      (v143)(v146, v9);
LABEL_127:

      return;
    }

    v41 = v28 + 1;
LABEL_34:
    v65 = v159[1];
    if (v41 >= v65)
    {
      goto LABEL_43;
    }

    if (__OFSUB__(v41, v28))
    {
      goto LABEL_146;
    }

    if (v41 - v28 >= a5)
    {
LABEL_43:
      v67 = v41;
      if (v41 < v28)
      {
        goto LABEL_145;
      }

      goto LABEL_44;
    }

    if (__OFADD__(v28, a5))
    {
      goto LABEL_147;
    }

    if ((v28 + a5) >= v65)
    {
      v66 = v159[1];
    }

    else
    {
      v66 = v28 + a5;
    }

    if (v66 < v28)
    {
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v41 == v66)
    {
      goto LABEL_43;
    }

    v150 = v6;
    v112 = *v159;
    v113 = *(v10 + 72);
    v167 = *(v10 + 16);
    v114 = (v112 + v113 * (v41 - 1));
    v164 = -v113;
    v149 = v28;
    v115 = v28 - v41;
    v165 = v112;
    v151 = v113;
    v116 = v112 + v41 * v113;
    v154 = v66;
LABEL_97:
    v160 = v41;
    v155 = v116;
    v156 = v115;
    v117 = v116;
    v158 = v114;
    v118 = v114;
LABEL_98:
    v119 = v167;
    (v167)(v171, v117, v9, v26);
    v119(v172, v118, v9);
    v120 = sub_20C1335E4();
    v122 = v121;
    v124 = v123;
    v125 = sub_20C1335E4();
    v128 = v127;
    if (v124)
    {
      break;
    }

    v129 = v126;
    v130 = v125;
    sub_20B583F4C(v120, v122, 0);
    if (v128)
    {
      goto LABEL_95;
    }

    sub_20B583F4C(v130, v129, 0);
    v131 = sub_20C1335D4();
    v133 = v132;
    if (v131 != sub_20C1335D4() || v133 != v134)
    {
      a5 = sub_20C13DFF4();

      v9 = v163;
      goto LABEL_105;
    }

LABEL_95:
    a5 = v170;
    a4 = *v170;
    v9 = v163;
    (*v170)(v172, v163);
    (a4)(v171, v9);
LABEL_96:
    v41 = v160 + 1;
    v114 = &v158[v151];
    v115 = v156 - 1;
    v116 = v155 + v151;
    v67 = v154;
    if (v160 + 1 != v154)
    {
      goto LABEL_97;
    }

    v6 = v150;
    v10 = v157;
    v28 = v149;
    if (v154 < v149)
    {
      goto LABEL_145;
    }

LABEL_44:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = v153;
    }

    else
    {
      v29 = sub_20BC05740(0, *(v153 + 2) + 1, 1, v153);
    }

    a4 = *(v29 + 2);
    v68 = *(v29 + 3);
    a5 = (a4 + 1);
    if (a4 >= v68 >> 1)
    {
      v29 = sub_20BC05740((v68 > 1), (a4 + 1), 1, v29);
    }

    *(v29 + 2) = a5;
    v69 = &v29[16 * a4];
    *(v69 + 4) = v28;
    *(v69 + 5) = v67;
    v70 = *v148;
    if (!*v148)
    {
      goto LABEL_155;
    }

    v154 = v67;
    if (a4)
    {
      while (2)
      {
        v71 = a5 - 1;
        if (a5 >= 4)
        {
          v76 = &v29[16 * a5 + 32];
          v77 = *(v76 - 64);
          v78 = *(v76 - 56);
          v82 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          if (v82)
          {
            goto LABEL_132;
          }

          v81 = *(v76 - 48);
          v80 = *(v76 - 40);
          v82 = __OFSUB__(v80, v81);
          v74 = v80 - v81;
          v75 = v82;
          if (v82)
          {
            goto LABEL_133;
          }

          v83 = &v29[16 * a5];
          v85 = *v83;
          v84 = *(v83 + 1);
          v82 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v82)
          {
            goto LABEL_135;
          }

          v82 = __OFADD__(v74, v86);
          v87 = v74 + v86;
          if (v82)
          {
            goto LABEL_138;
          }

          if (v87 >= v79)
          {
            v105 = &v29[16 * v71 + 32];
            v107 = *v105;
            v106 = *(v105 + 1);
            v82 = __OFSUB__(v106, v107);
            v108 = v106 - v107;
            if (v82)
            {
              goto LABEL_142;
            }

            if (v74 < v108)
            {
              v71 = a5 - 2;
            }
          }

          else
          {
LABEL_63:
            if (v75)
            {
              goto LABEL_134;
            }

            v88 = &v29[16 * a5];
            v90 = *v88;
            v89 = *(v88 + 1);
            v91 = __OFSUB__(v89, v90);
            v92 = v89 - v90;
            v93 = v91;
            if (v91)
            {
              goto LABEL_137;
            }

            v94 = &v29[16 * v71 + 32];
            v96 = *v94;
            v95 = *(v94 + 1);
            v82 = __OFSUB__(v95, v96);
            v97 = v95 - v96;
            if (v82)
            {
              goto LABEL_140;
            }

            if (__OFADD__(v92, v97))
            {
              goto LABEL_141;
            }

            if (v92 + v97 < v74)
            {
              goto LABEL_77;
            }

            if (v74 < v97)
            {
              v71 = a5 - 2;
            }
          }
        }

        else
        {
          if (a5 == 3)
          {
            v72 = *(v29 + 4);
            v73 = *(v29 + 5);
            v82 = __OFSUB__(v73, v72);
            v74 = v73 - v72;
            v75 = v82;
            goto LABEL_63;
          }

          v98 = &v29[16 * a5];
          v100 = *v98;
          v99 = *(v98 + 1);
          v82 = __OFSUB__(v99, v100);
          v92 = v99 - v100;
          v93 = v82;
LABEL_77:
          if (v93)
          {
            goto LABEL_136;
          }

          v101 = &v29[16 * v71];
          v103 = *(v101 + 4);
          v102 = *(v101 + 5);
          v82 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v82)
          {
            goto LABEL_139;
          }

          if (v104 < v92)
          {
            break;
          }
        }

        a4 = (v71 - 1);
        if (v71 - 1 >= a5)
        {
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v159)
        {
          goto LABEL_152;
        }

        v109 = v29;
        a5 = *&v29[16 * a4 + 32];
        v110 = *&v29[16 * v71 + 40];
        sub_20BFBD874((*v159 + *(v10 + 72) * a5), (*v159 + *(v10 + 72) * *&v29[16 * v71 + 32]), (*v159 + *(v10 + 72) * v110), v70, v26);
        if (v6)
        {
          goto LABEL_127;
        }

        if (v110 < a5)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_20B6A07A0(v109);
        }

        if (a4 >= *(v109 + 2))
        {
          goto LABEL_131;
        }

        v111 = &v109[16 * a4];
        *(v111 + 4) = a5;
        *(v111 + 5) = v110;
        v173 = v109;
        sub_20B6A0714(v71);
        v29 = v173;
        a5 = *(v173 + 2);
        if (a5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v27 = v159[1];
    v28 = v154;
    a5 = v147;
    if (v154 >= v27)
    {
      goto LABEL_116;
    }
  }

  if ((v127 & 1) == 0)
  {
    sub_20B583F4C(v125, v126, 0);
    v135 = *v170;
    (*v170)(v172, v9);
    (v135)(v171, v9);
    if (!v165)
    {
      goto LABEL_151;
    }

    goto LABEL_109;
  }

  a5 = qword_20C187A70[v120] < qword_20C187A70[v125];
LABEL_105:
  a4 = *v170;
  (*v170)(v172, v9);
  (a4)(v171, v9);
  if ((a5 & 1) == 0)
  {
    goto LABEL_96;
  }

  if (v165)
  {
LABEL_109:
    a4 = *v168;
    a5 = v166;
    (*v168)(v166, v117, v9);
    swift_arrayInitWithTakeFrontToBack();
    (a4)(v118, a5, v9);
    v118 += v164;
    v117 += v164;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_96;
    }

    goto LABEL_98;
  }

LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void sub_20BFBCCC4(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_20C137F24();
  MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v150 = &v129 - v12;
  MEMORY[0x28223BE20](v13);
  v155 = &v129 - v14;
  MEMORY[0x28223BE20](v15);
  v154 = &v129 - v16;
  MEMORY[0x28223BE20](v17);
  v147 = &v129 - v18;
  MEMORY[0x28223BE20](v19);
  v146 = &v129 - v20;
  MEMORY[0x28223BE20](v21);
  v134 = &v129 - v22;
  v25.n128_f64[0] = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v26;
  v27 = a3[1];
  v144 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_20BFBE080(v124 + *(v5 + 72) * v126, (v124 + *(v5 + 72) * v127), (v124 + *(v5 + 72) * v29), v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_20B6A07A0(a3);
          }

          if (v123 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v128 = &a3[2 * v123];
          *v128 = v126;
          v128[1] = v29;
          v156 = a3;
          sub_20B6A0714(v123 - 1);
          v29 = v156;
          v123 = v156[2];
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_20B6A07A0(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, v32 + v33 * v30, v9);
      v31 = sub_20C137F04();
      v37 = v36;
      v38 = sub_20C137F04();
      v132 = v6;
      if (v38 == v31 && v39 == v37)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_20C13DFF4();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = v32 + v42;
      v44 = v145 * v5;
      v45 = v32 + v145 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_20C137F04();
        v52 = v51;
        if (sub_20C137F04() == v50 && v53 == v52)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_20C13DFF4();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = (a3 + 1);
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              v149(v139, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v149((v57 + v6), v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_20BC05740(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_20BC05740((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_20BFBE080(v118 + *(v144 + 72) * v119, (v118 + *(v144 + 72) * v120), (v118 + *(v144 + 72) * v29), v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_20B6A07A0(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v156 = a3;
        sub_20B6A0714(v31);
        v29 = v156;
        v77 = v156[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = v60 + v31 * v61;
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_20C137F04();
    v69 = v68;
    if (sub_20C137F04() == v5 && v70 == v69)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_20C13DFF4();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_20BFBD874(char *a1, char *a2, char *a3, char *a4, __n128 a5)
{
  v9 = sub_20C1335F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v82 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v81 = &v74 - v13;
  MEMORY[0x28223BE20](v14);
  v86 = &v74 - v15;
  MEMORY[0x28223BE20](v16);
  v85 = &v74 - v17;
  v80 = *(v18 + 72);
  if (!v80)
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v80 == -1)
  {
    goto LABEL_81;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v80 == -1)
  {
    goto LABEL_82;
  }

  v20 = (a2 - a1) / v80;
  v89 = a1;
  v88 = a4;
  v84 = v9;
  if (v20 >= v19 / v80)
  {
    v22 = v19 / v80 * v80;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v22 < 1)
    {
      v51 = &a4[v22];
    }

    else
    {
      v49 = -v80;
      v77 = (v10 + 8);
      v78 = (v10 + 16);
      v50 = &a4[v22];
      v51 = &a4[v22];
      v83 = a4;
      v85 = -v80;
      do
      {
        v74 = v51;
        v52 = a2;
        v53 = &a2[v49];
        v54 = v49;
        v79 = v52;
        v80 = v53;
        while (1)
        {
          if (v52 <= a1)
          {
            v89 = v52;
            v87 = v74;
            goto LABEL_79;
          }

          v55 = a3;
          v76 = v51;
          v56 = *v78;
          v86 = &v54[v50];
          (v56)(v81);
          (v56)(v82, v53, v9);
          v57 = sub_20C1335E4();
          v59 = v58;
          v61 = v60;
          v62 = sub_20C1335E4();
          v65 = v64;
          if (v61)
          {
            if (v64)
            {
              v66 = qword_20C187A70[v57] < qword_20C187A70[v62];
            }

            else
            {
              sub_20B583F4C(v62, v63, 0);
              v66 = 1;
            }
          }

          else
          {
            v75 = v63;
            v67 = v62;
            sub_20B583F4C(v57, v59, 0);
            v66 = 0;
            if ((v65 & 1) == 0)
            {
              sub_20B583F4C(v67, v75, 0);
              v68 = sub_20C1335D4();
              v70 = v69;
              if (v68 == sub_20C1335D4() && v70 == v71)
              {

                v66 = 0;
              }

              else
              {
                v66 = sub_20C13DFF4();
              }
            }
          }

          v9 = v84;
          v54 = v85;
          a3 = &v55[v85];
          v72 = *v77;
          (*v77)(v82, v84);
          v72(v81, v9);
          if (v66)
          {
            break;
          }

          v73 = v86;
          v51 = v86;
          v53 = v80;
          if (v55 < v50 || a3 >= v50)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v55 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = v51;
          v52 = v79;
          if (v73 <= v83)
          {
            a2 = v79;
            goto LABEL_78;
          }
        }

        a2 = v80;
        if (v55 < v79 || a3 >= v79)
        {
          swift_arrayInitWithTakeFrontToBack();
          v51 = v76;
        }

        else
        {
          v51 = v76;
          if (v55 != v79)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v49 = v85;
      }

      while (v50 > v83);
    }

LABEL_78:
    v89 = a2;
    v87 = v51;
  }

  else
  {
    v21 = v20 * v80;
    if (a4 < a1 || &a1[v21] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v82 = &a4[v21];
    v87 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v10 + 16);
      v81 = (v10 + 16);
      v78 = (v10 + 8);
      v79 = v24;
      v25 = v86;
      do
      {
        v26 = a3;
        v27 = v79;
        (v79)(v85, a2, v9);
        (v27)(v25, a4, v9);
        v28 = sub_20C1335E4();
        v30 = v29;
        LOBYTE(v27) = v31;
        v32 = sub_20C1335E4();
        v35 = v34;
        if (v27)
        {
          if ((v34 & 1) == 0)
          {
            sub_20B583F4C(v32, v33, 0);
            v45 = *v78;
            v9 = v84;
            (*v78)(v86, v84);
            v45(v85, v9);
            a3 = v26;
            goto LABEL_32;
          }

          v36 = qword_20C187A70[v28] < qword_20C187A70[v32];
          v9 = v84;
        }

        else
        {
          v83 = a4;
          v37 = a2;
          v38 = v33;
          v39 = v32;
          sub_20B583F4C(v28, v30, 0);
          if (v35)
          {
            goto LABEL_28;
          }

          sub_20B583F4C(v39, v38, 0);
          v40 = sub_20C1335D4();
          v42 = v41;
          if (v40 == sub_20C1335D4() && v42 == v43)
          {

LABEL_28:
            v44 = *v78;
            v9 = v84;
            (*v78)(v86, v84);
            v44(v85, v9);
            a2 = v37;
            a4 = v83;
            a3 = v26;
LABEL_36:
            v47 = v80;
            v48 = &v80[a4];
            if (a1 < a4 || a1 >= v48)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v88 = v48;
            a4 = &v47[a4];
            goto LABEL_44;
          }

          v36 = sub_20C13DFF4();

          a2 = v37;
          a4 = v83;
          v9 = v84;
        }

        a3 = v26;
        v46 = *v78;
        (*v78)(v86, v9);
        v46(v85, v9);
        if ((v36 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_32:
        v47 = v80;
        if (a1 < a2 || a1 >= &v80[a2])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 = &v47[a2];
LABEL_44:
        a1 = &v47[a1];
        v89 = a1;
      }

      while (a4 < v82 && a2 < a3);
    }
  }

LABEL_79:
  sub_20B6A0990(&v89, &v88, &v87);
}