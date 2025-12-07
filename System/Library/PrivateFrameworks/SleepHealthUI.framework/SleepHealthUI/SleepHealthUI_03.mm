id sub_269C68C34()
{
  v1 = v0;
  swift_getObjectType();
  v16.receiver = v0;
  v16.super_class = type metadata accessor for SleepScheduleComponentsEditView(0);
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B220);
  v3 = sub_269D98230();
  v4 = sub_269D9AB50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Layout subviews", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  [*&v1[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockCaption] layoutIfNeeded];
  v10 = *&v1[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_timeInBed];
  [v10 sizeToFit];
  [v1 bounds];
  CGRectGetWidth(v17);
  [v1 directionalLayoutMargins];
  [v1 directionalLayoutMargins];
  [v10 frame];
  [v10 setFrame_];
  [v1 bounds];
  MinX = CGRectGetMinX(v18);
  [v1 directionalLayoutMargins];
  v13 = MinX + v12;
  [v10 frame];
  [v10 setFrame_];
  sub_269C856D0();
  [v10 frame];
  CGRectGetHeight(v19);
  [v10 frame];
  return [v10 setFrame_];
}

void sub_269C68F84(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, int a6, int a7)
{
  v118 = a6;
  v110 = *&a3;
  v13 = MEMORY[0x277D83D88];
  sub_269C6C1A4(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v126 = &v110 - v16;
  sub_269C6C1A4(0, &unk_28034D9A0, MEMORY[0x277CC9A70], v13);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v129 = (&v110 - v19);
  sub_269C6C1A4(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v13);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v128 = &v110 - v22;
  v23 = sub_269D971F0();
  v132 = *(v23 - 8);
  v133 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v125 = &v110 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v114 = &v110 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v110 - v35;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v110 - v39;
  v127 = v7;
  v41 = *(v7 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clock);
  v42 = *(v41 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 152);
  v43 = *(v41 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 160);
  v124 = v41 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  v115 = v41;
  v44 = (v41 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  v45 = *v44;
  v46 = v44[1];
  v121 = v26;
  v120 = a2;
  v119 = a5;
  v123 = v36;
  v117 = a7;
  v116 = a4;
  v122 = a1;
  if (v46 == 60 && __OFADD__(v45, 1))
  {
    __break(1u);
  }

  else
  {
    v47 = sub_269D977A0();
    v48 = *(v47 - 8);
    v113 = *(v48 + 56);
    v112 = v48 + 56;
    v113(v128, 1, 1, v47);
    v49 = sub_269D97810();
    v111 = *(*(v49 - 8) + 56);
    v111(v129, 1, 1, v49);
    sub_269D971D0();
    sub_269C6C098();
    v50 = v122;
    v51 = v133;
    v52 = sub_269D9A560();
    v130 = *(v132 + 8);
    v131 = v132 + 8;
    v130(v40, v51);
    if ((v52 & 1) == 0)
    {
      v53 = v123;
      (*(v132 + 16))(v123, v50, v133);
      sub_269D1F790(v53);
    }

    if (v44[3] != 60 || !__OFADD__(v44[2], 1))
    {
      v113(v128, 1, 1, v47);
      v111(v129, 1, 1, v49);
      v54 = v114;
      sub_269D971D0();
      v55 = v120;
      v56 = v133;
      v57 = sub_269D9A560();
      v130(v54, v56);
      v58 = v123;
      if ((v57 & 1) == 0)
      {
        (*(v132 + 16))(v123, v55, v133);
        sub_269D1F92C(v58);
      }

      v59 = v119;
      v60 = v116;
      if (v44[5])
      {
        v61 = v118;
        if (v116)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v61 = v118;
        if ((v116 & 1) == 0 && *(v44 + 4) == v110)
        {
LABEL_15:
          if (*(v44 + 41) != (v61 & 1))
          {
            *(v44 + 41) = v61 & 1;
          }

          if (*(v44 + 42) != (v117 & 1))
          {
            *(v44 + 42) = v117 & 1;
          }

          sub_269D1FAC8(v42, v43);
          swift_endAccess();
          sub_269CCBCFC();
          v62 = (v127 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model);
          swift_beginAccess();
          *v62 = v61 & 1;
          v63 = type metadata accessor for SleepScheduleComponentsViewModel(0);
          v64 = v63[7];
          v65 = *&v62[v64];
          *&v62[v64] = v59;
          v66 = v59;

          if (v59)
          {
            v67 = sub_269D09440(&v62[v63[9]], &v62[v63[10]]) & 1;
            v68 = sub_269D09680();
            v69 = v67 | 2;
            if ((v68 & 1) == 0)
            {
              v69 = v67;
            }

            v70 = v63[15];
            v129 = v63 + 15;
            *&v62[v70] = v69;
            if (v69)
            {
              v72 = 0;
              v71 = 1;
LABEL_28:
              v62[v63[13]] = v71;
              v62[v63[14]] = v72;
              v75 = v132;
              v74 = v133;
              (*(v132 + 16))(v58, v55, v133);
              v76 = *(v75 + 24);
              v76(&v62[v63[11]], v58, v74);
              sub_269D0A9B8();
              v130(v58, v74);
              swift_endAccess();
              v134 = *v44;
              v135[0] = *(v44 + 1);
              *(v135 + 11) = *(v44 + 27);
              v77 = v125;
              sub_269D1E794(*(v124 + 144));
              swift_beginAccess();
              v78 = v63[9];
              v132 = v75 + 24;
              v76(&v62[v78], v77, v74);
              if (*&v62[v63[7]])
              {
                v79 = sub_269D09440(&v62[v78], &v62[v63[10]]) & 1;
                v80 = sub_269D09680();
                v81 = v79 | 2;
                if ((v80 & 1) == 0)
                {
                  v81 = v79;
                }

                *&v62[v63[15]] = v81;
                if (v81)
                {
                  v83 = 0;
                  v82 = 1;
LABEL_37:
                  v62[v63[13]] = v82;
                  v62[v63[14]] = v83;
                  v84 = v126;
                  sub_269D97720();
                  v85 = sub_269D0CBC0(v84, v62);
                  v87 = v86;
                  sub_269C67C78(v84);
                  v88 = &v62[v63[18]];

                  *v88 = v85;
                  v88[1] = v87;
                  sub_269D97720();
                  v89 = sub_269D0CBC0(v84, v62);
                  v91 = v90;
                  sub_269C67C78(v84);
                  v92 = &v62[v63[19]];

                  *v92 = v89;
                  v92[1] = v91;
                  sub_269D0A9B8();
                  v93 = v133;
                  v130(v125, v133);
                  swift_endAccess();
                  v134 = *v44;
                  v135[0] = *(v44 + 1);
                  *(v135 + 11) = *(v44 + 27);
                  v94 = v121;
                  sub_269D1EA14(*(v124 + 144));
                  swift_beginAccess();
                  v95 = v63[10];
                  v76(&v62[v95], v94, v93);
                  if (*&v62[v63[7]])
                  {
                    v96 = sub_269D09440(&v62[v63[9]], &v62[v95]) & 1;
                    v97 = sub_269D09680();
                    v98 = v96 | 2;
                    if ((v97 & 1) == 0)
                    {
                      v98 = v96;
                    }

                    *&v62[v63[15]] = v98;
                    if (v98)
                    {
                      v100 = 0;
                      v99 = 1;
                      goto LABEL_46;
                    }

                    if (v98)
                    {
                      v99 = 0;
                      v100 = 1;
LABEL_46:
                      v62[v63[13]] = v99;
                      v62[v63[14]] = v100;
                      v101 = v126;
                      sub_269D97720();
                      v102 = sub_269D0CBC0(v101, v62);
                      v104 = v103;
                      sub_269C67C78(v101);
                      v105 = &v62[v63[18]];

                      *v105 = v102;
                      v105[1] = v104;
                      sub_269D97720();
                      v106 = sub_269D0CBC0(v101, v62);
                      v108 = v107;
                      sub_269C67C78(v101);
                      v109 = &v62[v63[19]];

                      *v109 = v106;
                      v109[1] = v108;
                      sub_269D0A9B8();
                      v130(v94, v133);
                      swift_endAccess();
                      sub_269C6A388();
                      return;
                    }
                  }

                  else
                  {
                    *&v62[*v129] = 0;
                  }

                  v99 = 0;
                  v100 = 0;
                  goto LABEL_46;
                }

                if (v81)
                {
                  v82 = 0;
                  v83 = 1;
                  goto LABEL_37;
                }
              }

              else
              {
                *&v62[*v129] = 0;
              }

              v82 = 0;
              v83 = 0;
              goto LABEL_37;
            }

            if (v69)
            {
              v71 = 0;
              v72 = 1;
              goto LABEL_28;
            }
          }

          else
          {
            v73 = v63[15];
            v129 = v63 + 15;
            *&v62[v73] = 0;
          }

          v71 = 0;
          v72 = 0;
          goto LABEL_28;
        }
      }

      *(v44 + 4) = v110;
      *(v44 + 40) = v60 & 1;
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_269C69B58(uint64_t a1)
{
  v2 = v1;
  sub_269C6C1A4(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v57 - v6;
  v8 = sub_269D971F0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v64 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v57 - v14;
  v16 = (a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  v17 = v16[1];
  v66 = *v16;
  v67[0] = v17;
  *(v67 + 11) = *(v16 + 27);
  v60 = a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  sub_269D1E794(*(a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144));
  v63 = v2;
  v18 = v2 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model;
  swift_beginAccess();
  v19 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  v20 = v19[9];
  v65 = v9;
  v21 = *(v9 + 24);
  v61 = v15;
  v59 = v21;
  v21(v18 + v20, v15, v8);
  v22 = *(v18 + v19[7]);
  v62 = v8;
  if (!v22)
  {
    v29 = v19[15];
    v58 = v19 + 15;
    *(v18 + v29) = 0;
LABEL_8:
    v27 = 0;
    v28 = 0;
    goto LABEL_10;
  }

  v23 = sub_269D09440(v18 + v20, v18 + v19[10]) & 1;
  v24 = sub_269D09680();
  v25 = v23 | 2;
  if ((v24 & 1) == 0)
  {
    v25 = v23;
  }

  v26 = v19[15];
  v58 = v19 + 15;
  *(v18 + v26) = v25;
  if ((v25 & 1) == 0)
  {
    if (v25)
    {
      v27 = 0;
      v28 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v28 = 0;
  v27 = 1;
LABEL_10:
  *(v18 + v19[13]) = v27;
  *(v18 + v19[14]) = v28;
  sub_269D97720();
  v30 = sub_269D0CBC0(v7, v18);
  v32 = v31;
  sub_269C67C78(v7);
  v33 = (v18 + v19[18]);

  *v33 = v30;
  v33[1] = v32;
  sub_269D97720();
  v34 = sub_269D0CBC0(v7, v18);
  v36 = v35;
  sub_269C67C78(v7);
  v37 = (v18 + v19[19]);

  *v37 = v34;
  v37[1] = v36;
  sub_269D0A9B8();
  v38 = *(v65 + 8);
  v39 = v61;
  v40 = v62;
  v65 += 8;
  v61 = v38;
  v38(v39, v62);
  swift_endAccess();
  v41 = v16[1];
  v66 = *v16;
  v67[0] = v41;
  *(v67 + 11) = *(v16 + 27);
  v42 = v64;
  sub_269D1EA14(*(v60 + 144));
  swift_beginAccess();
  v43 = v19[10];
  v59(v18 + v43, v42, v40);
  if (!*(v18 + v19[7]))
  {
    *(v18 + *v58) = 0;
LABEL_17:
    v47 = 0;
    v48 = 0;
    goto LABEL_19;
  }

  v44 = sub_269D09440(v18 + v19[9], v18 + v43) & 1;
  v45 = sub_269D09680();
  v46 = v44 | 2;
  if ((v45 & 1) == 0)
  {
    v46 = v44;
  }

  *(v18 + v19[15]) = v46;
  if (v46)
  {
    v48 = 0;
    v47 = 1;
    goto LABEL_19;
  }

  if (!v46)
  {
    goto LABEL_17;
  }

  v47 = 0;
  v48 = 1;
LABEL_19:
  *(v18 + v19[13]) = v47;
  *(v18 + v19[14]) = v48;
  sub_269D97720();
  v49 = sub_269D0CBC0(v7, v18);
  v51 = v50;
  sub_269C67C78(v7);
  v52 = (v18 + v19[18]);

  *v52 = v49;
  v52[1] = v51;
  sub_269D97720();
  v53 = sub_269D0CBC0(v7, v18);
  v55 = v54;
  sub_269C67C78(v7);
  v56 = (v18 + v19[19]);

  *v56 = v53;
  v56[1] = v55;
  sub_269D0A9B8();
  v61(v64, v40);
  swift_endAccess();
  sub_269C6A388();
}

uint64_t sub_269C6A150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v8 = Strong;
  if ([Strong respondsToSelector_])
  {
    [v8 *a5];
  }

  return swift_unknownObjectRelease();
}

void sub_269C6A260()
{
  v1 = v0;
  sub_269C49A1C(&unk_287A9F6F8);
  sub_269C6C154(0, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_269C4BE38();
  v2 = sub_269D9A520();
  v4 = v3;

  v5 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_timeInBed);

  MEMORY[0x26D650930](0x6F6974617275442ELL, 0xED0000747865546ELL);

  v6 = sub_269D9A5F0();

  [v5 setAccessibilityIdentifier_];
}

void sub_269C6A388()
{
  v1 = v0;
  v2 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v32[-v8];
  v10 = *&v0[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model;
    swift_beginAccess();
    sub_269C6C0F0(&v1[v11], v9);
    v12 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model;
    swift_beginAccess();
    sub_269C6C0F0(v10 + v12, v5);
    swift_beginAccess();
    sub_269C6C210(v9, v10 + v12);
    swift_endAccess();
    sub_269CFEB34(v5);
    sub_269C6C03C(v5);
    sub_269C6C03C(v9);
  }

  v13 = *&v1[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_timeInBed];
  v14 = sub_269C684BC();
  v15 = *&v1[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clock];
  v16 = (v15 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  *&v36[11] = *(v16 + 27);
  v35 = *v16;
  *v36 = v16[1];
  v17 = v15 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  v18 = *(v15 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144);
  if (v36[26])
  {
    sub_269CD2560();
  }

  else
  {
    sub_269C67AF0();
  }

  v20 = [v14 stringFromTimeInterval_];

  [v13 setText_];
  v21 = &v1[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model];
  v22 = swift_beginAccess();
  v23 = *&v21[*(v2 + 60)];
  if (v23)
  {
    v26 = 2;
  }

  else if ((v23 & 2) != 0)
  {
    v26 = 3;
  }

  else
  {
    *&v34[11] = *(v16 + 27);
    v24 = v16[1];
    v33 = *v16;
    *v34 = v24;
    if (v34[24])
    {
      v25 = *&v1[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockCaption];
      if (*(v25 + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_message) == 6)
      {
        return;
      }

      *(v25 + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_message) = 6;
      goto LABEL_20;
    }

    v27 = *(v17 + 144);
    v28 = *&v34[16];
    if (v34[26])
    {
      sub_269CD2560();
    }

    else
    {
      sub_269C67AF0();
    }

    v26 = v28 > v27 * round(v29 / v27);
  }

  v30 = *&v1[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockCaption];
  v31 = *(v30 + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_message);
  if (v31 == 6 || v31 != v26)
  {
    *(v30 + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_message) = v26;
LABEL_20:
    sub_269C858CC(v22);
    [v1 setNeedsLayout];
  }
}

id sub_269C6A798(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

id SleepScheduleComponentsEditView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SleepScheduleComponentsEditView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScheduleComponentsEditView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SleepScheduleComponentsEditView(uint64_t a1)
{
  result = qword_28034E5D8;
  if (!qword_28034E5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269C6AC1C(uint64_t a1)
{
  result = type metadata accessor for SleepScheduleComponentsViewModel(319);
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

void sub_269C6AE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  LODWORD(v126) = a6;
  v125 = a5;
  v12 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v124 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_timeInBed;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v17 = [objc_opt_self() labelColor];
  [v16 setTextColor_];

  [v16 setNumberOfLines_];
  [v16 setAdjustsFontSizeToFitWidth_];
  v18 = sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v19 = *MEMORY[0x277D74420];
  v121 = *MEMORY[0x277D76A28];
  v122 = v19;
  v123 = v18;
  v20 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v121, 0, 1, 0, 0, 0, 1, v19, 0);
  [v16 setFont_];

  *&v7[v15] = v16;
  *&v7[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockWidthConstraint] = 0;
  *&v7[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_captionTopConstraint] = 0;
  *&v7[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView____lazy_storage___formatter] = 0;
  v135 = 1;
  *&v129 = a1;
  *(&v129 + 1) = a2;
  v130 = a3;
  v131 = a4;
  v132 = 0;
  v133 = 1;
  v134 = 1;
  if (qword_28034D720 != -1)
  {
    swift_once();
  }

  memcpy(v136, &xmmword_28035E530, 0x188uLL);
  v21 = objc_allocWithZone(type metadata accessor for SleepScheduleClock());
  sub_269C6AAB4(v136, &v128);
  v22 = sub_269CCC4EC(&v129, v136);
  *&v7[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clock] = v22;
  v23 = v125;
  sub_269C6C0F0(v125, &v7[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model]);
  objc_allocWithZone(type metadata accessor for SleepScheduleClockCaption());
  v24 = v22;
  v25 = sub_269C84C5C(0);
  v26 = 0;
  *&v7[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockCaption] = v25;
  if (v126)
  {
    v27 = v23;
    v28 = v124;
    sub_269C6C0F0(v27, v124);
    v29 = objc_allocWithZone(type metadata accessor for SleepScheduleComponentsHeader(0));
    v26 = sub_269CFFE6C(v28);
  }

  *&v7[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader] = v26;
  v30 = type metadata accessor for SleepScheduleComponentsEditView(0);
  v127.receiver = v7;
  v127.super_class = v30;
  v31 = objc_msgSendSuper2(&v127, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_269C6A388();
  v32 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader;
  if (*&v31[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader])
  {
    [v31 addSubview_];
  }

  v33 = v24;
  v34 = v31;
  v35 = v33;
  v36 = v34;
  v37 = v35;
  v38 = v36;
  v39 = v37;
  v40 = v38;
  [v40 addSubview_];
  v120 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_timeInBed;
  [v40 addSubview_];
  v41 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockCaption;
  [v40 addSubview_];
  v42 = *&v31[v32];
  if (v42)
  {
    [v42 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v40 + v41) setTranslatesAutoresizingMaskIntoConstraints_];
  v43 = [v39 widthAnchor];
  v44 = [v43 constraintEqualToConstant_];

  v45 = *(v40 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockWidthConstraint);
  v124 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockWidthConstraint;
  *(v40 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockWidthConstraint) = v44;

  v119 = v41;
  v46 = [*(v40 + v41) topAnchor];
  v47 = [v39 bottomAnchor];

  v48 = [v46 constraintEqualToAnchor_];
  v49 = *(v40 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_captionTopConstraint);
  v126 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_captionTopConstraint;
  *(v40 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_captionTopConstraint) = v48;

  v50 = *&v31[v32];
  v51 = MEMORY[0x277D84F68];
  if (v50)
  {
    v52 = v50;

    v118 = objc_opt_self();
    sub_269C6C154(0, &qword_280C0AD70, v51 + 8, MEMORY[0x277D84560]);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_269DA23C0;
    v54 = v52;
    v55 = [v54 leadingAnchor];
    v56 = [v40 &off_279C86528 + 1];
    v57 = [v55 constraintEqualToAnchor_];

    *(v53 + 32) = v57;
    v58 = [v54 topAnchor];
    v59 = [v40 topAnchor];

    v60 = [v58 constraintEqualToAnchor:v59 constant:20.0];
    *(v53 + 40) = v60;
    v61 = [v40 trailingAnchor];

    v62 = [v54 trailingAnchor];
    v63 = [v61 &selRef:v62 setLargeContentImage:? + 5];

    *(v53 + 48) = v63;
    sub_269C1B0B8(0, &qword_28034E1C0, 0x277CCAAD0);
    v64 = sub_269D9A7D0();
    v51 = MEMORY[0x277D84F68];

    [v118 activateConstraints_];

    v65 = [v54 bottomAnchor];
  }

  else
  {

    v65 = [v40 topAnchor];
  }

  sub_269C6C154(0, &qword_280C0AD70, v51 + 8, MEMORY[0x277D84560]);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_269DA23D0;
  v67 = v65;
  v68 = [v39 widthAnchor];

  v69 = [v39 heightAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v66 + 32) = v70;
  v71 = *&v124[v40];
  v72 = v126;
  if (!v71)
  {
    __break(1u);
    goto LABEL_22;
  }

  *(v66 + 40) = v71;
  v73 = v71;
  v74 = [v39 topAnchor];

  v75 = [v74 constraintEqualToAnchor:v67 constant:12.0];
  v118 = v67;

  *(v66 + 48) = v75;
  v76 = [v39 centerXAnchor];
  v124 = v39;

  v77 = v40;
  v78 = [v77 centerXAnchor];
  v79 = [v76 &selRef:v78 setLargeContentImage:? + 5];

  *(v66 + 56) = v79;
  v80 = *(v40 + v72);
  if (!v80)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v117 = objc_opt_self();
  *(v66 + 64) = v80;
  v81 = v119;
  v82 = *(v40 + v119);
  v83 = v80;
  v84 = [v82 leadingAnchor];
  v85 = [v77 layoutMarginsGuide];
  v86 = [v85 leadingAnchor];

  v87 = [v84 &selRef:v86 setLargeContentImage:? + 5];
  *(v66 + 72) = v87;
  v88 = [v77 layoutMarginsGuide];
  v89 = [v88 trailingAnchor];

  v90 = [*(v40 + v81) trailingAnchor];
  v91 = [v89 &selRef:v90 setLargeContentImage:? + 5];

  *(v66 + 80) = v91;
  v92 = [v77 bottomAnchor];

  v93 = [*(v40 + v81) bottomAnchor];
  v94 = [v92 constraintEqualToAnchor:v93 constant:20.0];

  *(v66 + 88) = v94;
  sub_269C1B0B8(0, &qword_28034E1C0, 0x277CCAAD0);
  v95 = sub_269D9A7D0();

  [v117 activateConstraints_];

  v96 = v120;
  v97 = *(v40 + v120);
  v98 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v121, 0, 1, 0, 0, 0, 1, v122, 0);
  [v97 setFont_];

  v99 = *(v40 + v96);
  v100 = [v77 traitCollection];
  v101 = [v100 preferredContentSizeCategory];

  LOBYTE(v100) = sub_269D9ACF0();
  if (v100)
  {
    v102 = 4;
  }

  else
  {
    v102 = 1;
  }

  [v99 setTextAlignment_];
  v103 = *(v40 + v126);
  v104 = v124;
  if (!v103)
  {
    goto LABEL_20;
  }

  v105 = *(v40 + v96);
  v106 = v103;
  v107 = [v105 font];
  if (v107)
  {
    v108 = v107;
    [v107 lineHeight];
    v110 = v109;

    [v106 setConstant_];
LABEL_20:
    [v77 invalidateIntrinsicContentSize];
    [v77 setNeedsLayout];
    sub_269C6A260();
    v111 = v77;
    [v104 addTarget:v111 action:sel_clockDidChange_ forControlEvents:0x20000];
    [v104 addTarget:v111 action:sel_editingDidChange_ forControlEvents:0x20000];
    [v104 addTarget:v111 action:sel_editingDidEnd_ forControlEvents:0x40000];
    sub_269C6C1A4(0, &qword_28034E1D0, sub_269C2FFF4, MEMORY[0x277D84560]);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_269D9EBF0;
    v113 = sub_269D983D0();
    v114 = MEMORY[0x277D74DB8];
    *(v112 + 32) = v113;
    *(v112 + 40) = v114;
    v115 = sub_269D98270();
    v116 = MEMORY[0x277D74BA0];
    *(v112 + 48) = v115;
    *(v112 + 56) = v116;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_269C30054();
    sub_269D9AD50();

    swift_unknownObjectRelease();

    sub_269C6C03C(v125);
    return;
  }

LABEL_23:
  __break(1u);
}

id sub_269C6BB98(void *a1)
{
  v2 = v1;
  v4 = [v2 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_269D9A630();
  v9 = v8;
  if (v7 == sub_269D9A630() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_269D9B280();

    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v13 = [v2 traitCollection];
  v14 = [v13 legibilityWeight];

  result = [a1 legibilityWeight];
  if (v14 == result)
  {
    return result;
  }

LABEL_11:
  v16 = *&v2[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_timeInBed];
  sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v17 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76A28], 0, 1, 0, 0, 0, 1, *MEMORY[0x277D74420], 0);
  [v16 setFont_];

  v18 = [v2 traitCollection];
  v19 = [v18 preferredContentSizeCategory];

  LOBYTE(v18) = sub_269D9ACF0();
  if (v18)
  {
    v20 = 4;
  }

  else
  {
    v20 = 1;
  }

  [v16 setTextAlignment_];
  v21 = *&v2[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_captionTopConstraint];
  if (v21)
  {
    v22 = v21;
    result = [v16 font];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v23 = result;
    [result lineHeight];
    v25 = v24;

    [v22 setConstant_];
  }

  [v2 invalidateIntrinsicContentSize];

  return [v2 setNeedsLayout];
}

void sub_269C6BEA0()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_timeInBed;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = [objc_opt_self() labelColor];
  [v3 setTextColor_];

  [v3 setNumberOfLines_];
  [v3 setAdjustsFontSizeToFitWidth_];
  sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v5 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76A28], 0, 1, 0, 0, 0, 1, *MEMORY[0x277D74420], 0);
  [v3 setFont_];

  *(v1 + v2) = v3;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_clockWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_captionTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView____lazy_storage___formatter) = 0;
  sub_269D9B100();
  __break(1u);
}

uint64_t sub_269C6C03C(uint64_t a1)
{
  v2 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269C6C098()
{
  result = qword_28034FAE0;
  if (!qword_28034FAE0)
  {
    sub_269D971F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FAE0);
  }

  return result;
}

uint64_t sub_269C6C0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269C6C154(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269C6C1A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C6C210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t CurrentWeatherModel.currentWeather.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269D97920();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CurrentWeatherModel.hourlyForecast.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CurrentWeatherModel(0) + 20);
  sub_269C6C388(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_269C6C388(uint64_t a1)
{
  if (!qword_28034E5F8)
  {
    sub_269D978B0();
    v1 = MEMORY[0x277CE31A0];
    sub_269C6C48C(&qword_28034E600, MEMORY[0x277CE31A0], MEMORY[0x277CE31B8]);
    sub_269C6C48C(&qword_28034E608, v1, MEMORY[0x277CE31A8]);
    sub_269C6C48C(&qword_28034E610, v1, MEMORY[0x277CE31B0]);
    v2 = sub_269D97A10();
    if (!v3)
    {
      atomic_store(v2, &qword_28034E5F8);
    }
  }
}

uint64_t sub_269C6C48C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CurrentWeatherModel.dailyForecast.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CurrentWeatherModel(0) + 24);
  sub_269C6C550(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_269C6C550(uint64_t a1)
{
  if (!qword_28034E618)
  {
    sub_269D978A0();
    v1 = MEMORY[0x277CE3158];
    sub_269C6C48C(&qword_28034E620, MEMORY[0x277CE3158], MEMORY[0x277CE3170]);
    sub_269C6C48C(&qword_28034E628, v1, MEMORY[0x277CE3160]);
    sub_269C6C48C(&qword_28034E630, v1, MEMORY[0x277CE3168]);
    v2 = sub_269D97A10();
    if (!v3)
    {
      atomic_store(v2, &qword_28034E618);
    }
  }
}

uint64_t sub_269C6C654()
{
  swift_getObjectType();
  v2 = sub_269D9B4D0();
  MEMORY[0x26D650930](58, 0xE100000000000000);
  MEMORY[0x26D650930](*(v0 + OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier), *(v0 + OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier + 8));
  return v2;
}

uint64_t sub_269C6C6BC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(a2);
}

uint64_t sub_269C6C738(uint64_t a1, void **a2)
{
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v15 - v10;
  sub_269C7162C(a1, &v15 - v10, sub_269C6C9C4);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269C7162C(v11, v7, sub_269C6C9C4);
  v13 = v12;
  sub_269D98890();
  return sub_269C715C4(v11, sub_269C6C9C4);
}

uint64_t sub_269C6C860@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(a1);
}

uint64_t sub_269C6C8D8(uint64_t a1)
{
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269C7162C(a1, v6, sub_269C6C9C4);
  v7 = v1;
  sub_269D98890();
  return sub_269C715C4(a1, sub_269C6C9C4);
}

void (*sub_269C6C9F8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_269D98870();
  return sub_269C458D0;
}

uint64_t sub_269C6CA9C(void *a1)
{
  swift_beginAccess();
  sub_269C6CD98(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C6CB38(_BYTE *a1, uint64_t *a2)
{
  sub_269C6CD98(0, &unk_28034E9E0, sub_269C6C9C4, MEMORY[0x277CBCEC0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v16 - v12;
  v14 = *(v5 + 16);
  (v14)(&v16 - v12, a1, v4, v11);
  v14(v8, v13, v4);
  swift_beginAccess();
  sub_269C6CD98(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_269C6CD00()
{
  swift_beginAccess();
  sub_269C6CD98(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

void sub_269C6CD98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C6CDFC(uint64_t a1)
{
  sub_269C6CD98(0, &unk_28034E9E0, sub_269C6C9C4, MEMORY[0x277CBCEC0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v6 = MEMORY[0x28223BE20](v2, v5);
  (*(v4 + 16))(&v9 - v7, a1, v3, v6);
  swift_beginAccess();
  sub_269C6CD98(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void (*sub_269C6CF78(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_269C6CD98(0, &unk_28034E9E0, sub_269C6C9C4, MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13SleepHealthUI12WeatherModel__currentWeatherModel;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_269C6CD98(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_269D98850();
  swift_endAccess();
  return sub_269C45F6C;
}

id WeatherModel.__allocating_init(debugIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for LocationModel(0));

  v5 = LocationModel.init(debugIdentifier:)(a1, a2);
  v6 = objc_allocWithZone(type metadata accessor for WeatherModel(0));
  return WeatherModel.init(locationModel:debugIdentifier:)(v5, a1, a2);
}

id WeatherModel.init(locationModel:debugIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  sub_269C6CD98(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v25 - v10;
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v25 - v18;
  v20 = OBJC_IVAR____TtC13SleepHealthUI12WeatherModel__currentWeatherModel;
  v21 = type metadata accessor for CurrentWeatherModel(0);
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  sub_269C7162C(v19, v15, sub_269C6C9C4);
  sub_269D98840();
  sub_269C715C4(v19, sub_269C6C9C4);
  (*(v8 + 32))(&v3[v20], v11, v7);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_weatherService] = 0;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_cancellables] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel____lazy_storage___gradientManager] = 0;
  v22 = &v3[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier];
  *v22 = a2;
  *(v22 + 1) = a3;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_locationModel] = v26;
  v23 = type metadata accessor for WeatherModel(0);
  v27.receiver = v3;
  v27.super_class = v23;
  return objc_msgSendSuper2(&v27, sel_init);
}

void sub_269C6D47C()
{
  v1 = v0;
  swift_getObjectType();
  sub_269C71370(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C71538(0, &qword_2803517D0, MEMORY[0x277CBCEC0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v32 - v10;
  sub_269C7140C(0);
  MEMORY[0x28223BE20](v12, v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_weatherService;
  if (!*&v1[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_weatherService])
  {
    v34 = v8;
    v36 = v15;
    v37 = v14;
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v35 = v7;
    v19 = sub_269D98250();
    __swift_project_value_buffer(v19, qword_280351208);
    v20 = v1;
    v21 = sub_269D98230();
    v22 = sub_269D9AB80();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = v22;
      v24 = v23;
      v32 = swift_slowAlloc();
      v38 = v32;
      *v24 = 136446210;
      v39 = sub_269D9B4D0();
      v40 = v25;
      MEMORY[0x26D650930](58, 0xE100000000000000);
      MEMORY[0x26D650930](*&v20[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier], *&v20[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier + 8]);
      v26 = sub_269C2EACC(v39, v40, &v38);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_269C18000, v21, v33, "[%{public}s] starting", v24, 0xCu);
      v27 = v32;
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x26D652460](v27, -1, -1);
      MEMORY[0x26D652460](v24, -1, -1);
    }

    sub_269D97980();
    *&v1[v18] = sub_269D97970();

    sub_269D6C308();
    swift_beginAccess();
    sub_269C71538(0, &qword_28034E680, MEMORY[0x277CBCED0]);
    sub_269D98850();
    swift_endAccess();
    sub_269C1B0B8(0, &qword_280C0AEB0, 0x277D85C78);
    v28 = sub_269D9AC40();
    v39 = v28;
    v29 = sub_269D9AC30();
    (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
    sub_269C714C4();
    sub_269C2FC08();
    v30 = v35;
    sub_269D988E0();
    sub_269C715C4(v5, sub_269C71370);

    (*(v34 + 8))(v11, v30);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_269C6C48C(&qword_28034E688, sub_269C7140C, MEMORY[0x277CBCD60]);
    v31 = v37;
    sub_269D98900();

    (*(v36 + 8))(v17, v31);
    swift_beginAccess();
    sub_269D98740();
    swift_endAccess();

    sub_269D6BE00();
  }
}

void sub_269C6D9E4(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v5 = v2;
      sub_269C6DC70(v5);
      v6 = *&v4[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_locationModel];
      sub_269D6C110();

      v4 = v6;
    }
  }
}

uint64_t sub_269C6DA78()
{
  result = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_weatherService;
  if (*&v0[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_weatherService])
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v3 = sub_269D98250();
    __swift_project_value_buffer(v3, qword_280351208);
    v4 = v0;
    v5 = sub_269D98230();
    v6 = sub_269D9AB80();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      v11 = sub_269D9B4D0();
      v12 = v9;
      MEMORY[0x26D650930](58, 0xE100000000000000);
      MEMORY[0x26D650930](*&v4[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier], *&v4[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier + 8]);
      v10 = sub_269C2EACC(v11, v12, &v13);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] stopping", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D652460](v8, -1, -1);
      MEMORY[0x26D652460](v7, -1, -1);
    }

    sub_269D6C110();
    *&v0[v2] = 0;
  }

  return result;
}

uint64_t sub_269C6DC70(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_269C6CD98(0, &unk_280351880, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v32 - v6;
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280351208);
  v9 = v2;
  v10 = a1;
  v11 = sub_269D98230();
  v12 = sub_269D9AB80();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136446467;
    v33 = sub_269D9B4D0();
    v34 = v16;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*&v9[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier], *&v9[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier + 8]);
    v17 = sub_269C2EACC(v33, v34, &v35);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2081;
    v18 = v10;
    v19 = [v18 description];
    v20 = sub_269D9A630();
    v22 = v21;

    v23 = sub_269C2EACC(v20, v22, &v35);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_269C18000, v11, v12, "[%{public}s] fetching current weather for location: %{private}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v15, -1, -1);
    v24 = v14;
    v7 = v32;
    MEMORY[0x26D652460](v24, -1, -1);
  }

  v25 = sub_269D9A900();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  sub_269D9A8E0();
  v26 = v9;
  v27 = v10;
  v28 = sub_269D9A8D0();
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  v29[2] = v28;
  v29[3] = v30;
  v29[4] = v26;
  v29[5] = v27;
  sub_269C79F94(0, 0, v7, &unk_269DA2600, v29);
}

uint64_t sub_269C6DFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  sub_269C6C9C4(0);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v6 = MEMORY[0x277CE31F0];
  sub_269C6CD98(0, &qword_28034E6E0, sub_269C6C550, MEMORY[0x277CE31F0]);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  sub_269C6CD98(0, &qword_28034E6E8, sub_269C6C388, v6);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  sub_269C6CD98(0, &unk_28034E6F0, MEMORY[0x277CE31E0], v6);
  v5[25] = v9;
  v5[26] = *(v9 - 8);
  v5[27] = swift_task_alloc();
  sub_269C6C550(0);
  v5[28] = v10;
  v5[29] = *(v10 - 8);
  v5[30] = swift_task_alloc();
  sub_269C6C388(0);
  v5[31] = v11;
  v5[32] = *(v11 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v12 = sub_269D97920();
  v5[36] = v12;
  v5[37] = *(v12 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  sub_269D9A8E0();
  v5[42] = sub_269D9A8D0();
  v14 = sub_269D9A880();
  v5[43] = v14;
  v5[44] = v13;

  return MEMORY[0x2822009F8](sub_269C6E360, v14, v13);
}

uint64_t sub_269C6E360()
{
  v25 = v0;
  v1 = *(v0[15] + OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_weatherService);
  v0[45] = v1;
  if (v1)
  {
    v2 = v0[35];
    v3 = v0[36];
    v4 = v0[30];
    v5 = v0[31];
    v7 = v0[27];
    v6 = v0[28];
    v8 = v0[24];
    v9 = v0[21];
    v0[2] = v0[41];
    v0[3] = v2;
    v0[4] = v4;

    sub_269D97950();
    v0[5] = v7;
    sub_269D97940();
    v0[6] = v8;
    sub_269D97930();
    v0[7] = v9;
    v10 = swift_task_alloc();
    v0[8] = v3;
    v0[46] = v10;
    v0[9] = v5;
    v0[10] = v6;
    *v10 = v0;
    v10[1] = sub_269C6E69C;
    v11 = v0[16];

    return MEMORY[0x282135610](v0 + 2, v11, v0 + 5, 3, v0 + 8);
  }

  else
  {

    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v12 = v0[15];
    v13 = sub_269D98250();
    __swift_project_value_buffer(v13, qword_280351208);
    v14 = v12;
    v15 = sub_269D98230();
    v16 = sub_269D9AB60();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136446210;
      v19 = sub_269C6C654();
      v21 = sub_269C2EACC(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_269C18000, v15, v16, "[%{public}s] weatherService is nil", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x26D652460](v18, -1, -1);
      MEMORY[0x26D652460](v17, -1, -1);
    }

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_269C6E69C()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = v2[43];
    v4 = v2[44];
    v5 = sub_269C6EE88;
  }

  else
  {
    v7 = v2[26];
    v6 = v2[27];
    v9 = v2[24];
    v8 = v2[25];
    v10 = v2[22];
    v11 = v2[23];
    (*(v2[20] + 8))(v2[21], v2[19]);
    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
    v3 = v2[43];
    v4 = v2[44];
    v5 = sub_269C6E81C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_269C6E81C()
{
  v75 = v0;

  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v2 = v0[41];
  v67 = v0[39];
  v3 = v0[36];
  v4 = v0[37];
  v5 = v0[34];
  v73 = v0[35];
  v6 = v0[31];
  v7 = v0[32];
  v70 = v0[15];
  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280351208);
  v9 = *(v4 + 16);
  v9(v1, v2, v3);
  v72 = *(v7 + 16);
  v72(v5, v73, v6);
  v9(v67, v2, v3);
  v10 = v70;
  v11 = sub_269D98230();
  v12 = sub_269D9AB80();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[40];
  v68 = v0[39];
  if (v13)
  {
    log = v11;
    v15 = v0[37];
    v16 = v0[38];
    v17 = v0[36];
    v64 = v0[33];
    v65 = v0[34];
    v18 = v0[32];
    v57 = v9;
    v58 = v0[31];
    v61 = v12;
    v19 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v74 = v59;
    *v19 = 136446979;
    v20 = sub_269C6C654();
    v22 = sub_269C2EACC(v20, v21, &v74);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2081;
    v56 = v16;
    v9(v16, v14, v17);
    v23 = sub_269D9A660();
    v25 = v24;
    v26 = *(v15 + 8);
    v26(v14, v17);
    v27 = sub_269C2EACC(v23, v25, &v74);

    *(v19 + 14) = v27;
    *(v19 + 22) = 2081;
    v28 = v65;
    v72(v64, v65, v58);
    v29 = sub_269D9A660();
    v31 = v30;
    v66 = *(v18 + 8);
    v66(v28, v58);
    v32 = sub_269C2EACC(v29, v31, &v74);

    *(v19 + 24) = v32;
    *(v19 + 32) = 2081;
    v33 = v68;
    v57(v56, v68, v17);
    v34 = sub_269D9A660();
    v36 = v35;
    v69 = v26;
    v26(v33, v17);
    v37 = sub_269C2EACC(v34, v36, &v74);

    *(v19 + 34) = v37;
    _os_log_impl(&dword_269C18000, log, v61, "[%{public}s] fetched current weather: %{private}s, hourly forecast: %{private}s, daily forecast: %{private}s", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v59, -1, -1);
    MEMORY[0x26D652460](v19, -1, -1);

    v38 = v57;
  }

  else
  {
    v40 = v0[36];
    v39 = v0[37];
    v41 = v0[34];
    v42 = v0[31];
    v43 = v0[32];

    v44 = *(v39 + 8);
    v44(v68, v40);
    v66 = *(v43 + 8);
    v66(v41, v42);
    v69 = v44;
    v44(v14, v40);
    v38 = v9;
  }

  v71 = v0[41];
  v45 = v0[35];
  loga = v0[36];
  v47 = v0[30];
  v46 = v0[31];
  v49 = v0[28];
  v48 = v0[29];
  v51 = v0[17];
  v50 = v0[18];
  v60 = v0[15];
  v38(v50);
  v52 = type metadata accessor for CurrentWeatherModel(0);
  v72(v50 + *(v52 + 20), v45, v46);
  (*(v48 + 16))(v50 + *(v52 + 24), v47, v49);
  (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269C7162C(v50, v51, sub_269C6C9C4);
  v53 = v60;
  sub_269D98890();

  sub_269C715C4(v50, sub_269C6C9C4);
  (*(v48 + 8))(v47, v49);
  v66(v45, v46);
  v69(v71, loga);

  v54 = v0[1];

  return v54();
}

uint64_t sub_269C6EE88()
{
  v31 = v0;
  v1 = v0[26];
  v29 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];

  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v3, v4);
  (*(v1 + 8))(v29, v2);
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v9 = v0[47];
  v10 = v0[15];
  v11 = sub_269D98250();
  __swift_project_value_buffer(v11, qword_280351208);
  v12 = v10;
  v13 = v9;
  v14 = sub_269D98230();
  v15 = sub_269D9AB60();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136446466;
    v18 = sub_269C6C654();
    v20 = sub_269C2EACC(v18, v19, &v30);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    swift_getErrorValue();
    v21 = *(v0[12] - 8);
    swift_task_alloc();
    (*(v21 + 16))();
    v22 = sub_269D9A660();
    v24 = v23;

    v25 = sub_269C2EACC(v22, v24, &v30);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] error fetching current weather: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v17, -1, -1);
    MEMORY[0x26D652460](v16, -1, -1);
  }

  v26 = v0[47];
  sub_269C6DA78();

  v27 = v0[1];

  return v27();
}

uint64_t sub_269C6F220()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI12WeatherModel____lazy_storage___gradientManager;
  if (*(v0 + OBJC_IVAR____TtC13SleepHealthUI12WeatherModel____lazy_storage___gradientManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI12WeatherModel____lazy_storage___gradientManager);
  }

  else
  {
    v3 = v0;
    sub_269D9A3E0();
    swift_allocObject();
    v2 = sub_269D9A3D0();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_269C6F29C()
{
  v74[1] = swift_getObjectType();
  v1 = sub_269D9A430();
  v96 = *(v1 - 8);
  v97 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v95 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269D979F0();
  v93 = *(v4 - 8);
  v94 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v92 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D9A410();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v91 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_269D9A3A0();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v10);
  v88 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269D979B0();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v86 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_269D9A3B0();
  v89 = *(v15 - 8);
  v90 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v87 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_269D97580();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v18);
  v76 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_269D9A470();
  v85 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v20);
  v81 = v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v82 = v74 - v24;
  sub_269C6CD98(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v75 = v74 - v27;
  v28 = sub_269D97810();
  MEMORY[0x28223BE20](v28 - 8, v29);
  v74[2] = v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_269D97E00();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v31);
  v100 = v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for CurrentWeatherModel(0);
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v37 = v74 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v41 = (v74 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_269D97920();
  v98 = *(v42 - 8);
  v99 = v42;
  MEMORY[0x28223BE20](v42, v43);
  v45 = v74 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v49 = v74 - v48;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v102);

  v50 = v102;
  if (!v102)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(v41);

  if ((*(v34 + 48))(v41, 1, v33))
  {

    sub_269C715C4(v41, sub_269C6C9C4);
    return 0;
  }

  sub_269C7162C(v41, v37, type metadata accessor for CurrentWeatherModel);
  sub_269C715C4(v41, sub_269C6C9C4);
  v53 = v98;
  v52 = v99;
  (*(v98 + 16))(v45, v37, v99);
  sub_269C715C4(v37, type metadata accessor for CurrentWeatherModel);
  (*(v53 + 32))(v49, v45, v52);
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v54 = sub_269D98250();
  __swift_project_value_buffer(v54, qword_280351208);
  v55 = v0;
  v56 = sub_269D98230();
  v57 = sub_269D9AB80();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v104 = v59;
    *v58 = 136446210;
    v102 = sub_269D9B4D0();
    v103 = v60;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*&v55[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier], *&v55[OBJC_IVAR____TtC13SleepHealthUI12WeatherModel_debugIdentifier + 8]);
    v61 = sub_269C2EACC(v102, v103, &v104);

    *(v58 + 4) = v61;
    _os_log_impl(&dword_269C18000, v56, v57, "[%{public}s] loading gradient for current weather", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    MEMORY[0x26D652460](v59, -1, -1);
    MEMORY[0x26D652460](v58, -1, -1);
  }

  sub_269D97800();
  [v50 coordinate];
  v62 = v77;
  v63 = v78;
  (*(v77 + 56))(v75, 1, 1, v78);
  sub_269D97DF0();
  v64 = v76;
  sub_269D97550();
  v75 = v55;
  v65 = v82;
  sub_269D9A3F0();
  (*(v62 + 8))(v64, v63);
  sub_269D97910();
  v66 = v85;
  (*(v85 + 16))(v81, v65, v101);
  sub_269D978D0();
  v67 = *MEMORY[0x277D7B410];
  v68 = sub_269D9A390();
  v69 = v88;
  (*(*(v68 - 8) + 104))(v88, v67, v68);
  (*(v83 + 104))(v69, *MEMORY[0x277D7B420], v84);
  sub_269D978C0();
  v70 = v92;
  sub_269D978F0();
  sub_269D979C0();
  sub_269D979E0();
  sub_269D979D0();
  sub_269D9A400();
  (*(v93 + 8))(v70, v94);
  v71 = v87;
  sub_269D9A380();
  sub_269C6F220();
  v72 = v95;
  sub_269D9A3C0();

  v73 = sub_269D9A420();

  (*(v96 + 8))(v72, v97);
  (*(v89 + 8))(v71, v90);
  (*(v66 + 8))(v65, v101);
  (*(v79 + 8))(v100, v80);
  (*(v98 + 8))(v49, v99);
  return v73;
}

uint64_t CurrentWeather.predominateCloudAltitudeKind.getter()
{
  v0 = sub_269D979F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D978F0();
  sub_269D979C0();
  sub_269D979E0();
  sub_269D979D0();
  sub_269D9A400();
  return (*(v1 + 8))(v4, v0);
}

id WeatherModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeatherModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269C701F4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WeatherModel(0);
  result = sub_269D98770();
  *a2 = result;
  return result;
}

uint64_t CurrentWeatherModel.naturalLanguageDescription.getter()
{
  sub_269D9A460();
  swift_allocObject();
  sub_269D9A450();
  type metadata accessor for CurrentWeatherModel(0);
  v0 = sub_269D9A440();
  v2 = v1;

  if (v2)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t CurrentWeatherModel.todaysWeather.getter()
{
  v0 = sub_269D97810();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D97580();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CurrentWeatherModel(0);
  sub_269D97900();
  sub_269D97800();
  sub_269D97A00();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t CurrentWeather.conditionsIcon.getter()
{
  v0 = sub_269D979B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97910();
  sub_269D978D0();
  sub_269D97990();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_269C7054C(unsigned int *a1)
{
  sub_269C71694(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D979B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269D9A360();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97910();
  sub_269D978D0();
  sub_269D97990();
  (*(v7 + 8))(v10, v6);
  sub_269D9A350();
  (*(v12 + 8))(v15, v11);
  sub_269D99D60();
  v16 = *a1;
  v17 = sub_269D99DA0();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v5, v16, v17);
  (*(v18 + 56))(v5, 0, 1, v17);
  v19 = sub_269D99D80();

  sub_269C715C4(v5, sub_269C71694);
  return v19;
}

uint64_t CurrentWeather.accessibilityDescription.getter()
{
  v0 = sub_269D979B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97910();
  v5 = sub_269D979A0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t CurrentWeather.temperatureText.getter()
{
  v0 = sub_269D9A370();
  v17 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D9AC20();
  v18 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C713A4(0, &qword_28034E698, &qword_28034E6A0, 0x277CCAE48, MEMORY[0x277CC87D0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v17 - v13;
  sub_269D978E0();
  sub_269D9A340();
  (*(v1 + 104))(v4, *MEMORY[0x277D7B408], v0);
  sub_269D97DE0();
  sub_269D97DD0();
  sub_269C6C48C(&qword_28034E6A8, MEMORY[0x277D7B508], MEMORY[0x277D7B500]);
  v15 = sub_269D96F10();

  (*(v1 + 8))(v4, v17);
  (*(v18 + 8))(v8, v5);
  (*(v11 + 8))(v14, v10);
  return v15;
}

double sub_269C70BF4(void (*a1)(double))
{
  sub_269C713A4(0, &qword_28034E698, &qword_28034E6A0, 0x277CCAE48, MEMORY[0x277CC87D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v17 - v11;
  a1(v10);
  sub_269D96F20();
  v13 = *(v4 + 8);
  v13(v12, v3);
  sub_269D96F00();
  v15 = v14;
  v13(v7, v3);
  return v15;
}

uint64_t DayWeather.shortNaturalLanguageDescription.getter()
{
  v0 = sub_269D9A370();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_269D9AC20();
  v43 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C713A4(0, &qword_28034E698, &qword_28034E6A0, 0x277CCAE48, MEMORY[0x277CC87D0]);
  v9 = v8;
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v30 - v11;
  sub_269D97890();
  sub_269D9A340();
  v37 = *MEMORY[0x277D7B408];
  v36 = *(v1 + 104);
  v36(v4);
  v35 = sub_269D97DE0();
  sub_269D97DD0();
  v34 = sub_269C6C48C(&qword_28034E6A8, MEMORY[0x277D7B508], MEMORY[0x277D7B500]);
  v13 = v38;
  v14 = sub_269D96F10();
  v39 = v15;
  v40 = v14;

  v16 = *(v1 + 8);
  v32 = v1 + 8;
  v33 = v16;
  v16(v4, v0);
  v17 = *(v43 + 8);
  v43 += 8;
  v31 = v17;
  v17(v7, v13);
  v18 = *(v42 + 8);
  v42 += 8;
  v18(v12, v9);
  sub_269D97880();
  sub_269D9A340();
  (v36)(v4, v37, v0);
  sub_269D97DD0();
  v19 = sub_269D96F10();
  v41 = v20;

  v33(v4, v0);
  v31(v7, v13);
  v18(v12, v9);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v21 = qword_280C0D990;
  sub_269D972C0();

  sub_269C6CD98(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_269D9EBF0;
  v23 = MEMORY[0x277D837D0];
  *(v22 + 56) = MEMORY[0x277D837D0];
  v26 = sub_269C7172C(v22, v24, v25);
  v27 = v39;
  *(v22 + 32) = v40;
  *(v22 + 40) = v27;
  *(v22 + 96) = v23;
  *(v22 + 104) = v26;
  *(v22 + 64) = v26;
  *(v22 + 72) = v19;
  *(v22 + 80) = v41;
  v28 = sub_269D9A640();

  return v28;
}

uint64_t sub_269C7125C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_269C712DC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_269D98890();
}

void sub_269C713A4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_269C1B0B8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_269C7140C(uint64_t a1)
{
  if (!qword_28034E670)
  {
    sub_269C71538(255, &qword_2803517D0, MEMORY[0x277CBCEC0]);
    sub_269C1B0B8(255, &qword_280C0AEB0, 0x277D85C78);
    sub_269C714C4();
    sub_269C2FC08();
    v1 = sub_269D98710();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E670);
    }
  }
}

unint64_t sub_269C714C4()
{
  result = qword_28034E678;
  if (!qword_28034E678)
  {
    sub_269C71538(255, &qword_2803517D0, MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E678);
  }

  return result;
}

void sub_269C71538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_269C713A4(255, &qword_2803517C0, &qword_28034E668, 0x277CE41F8, MEMORY[0x277D83D88]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_269C715C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269C7162C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_269C716C8()
{
  result = qword_28034FC00;
  if (!qword_28034FC00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034FC00);
  }

  return result;
}

unint64_t sub_269C7172C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034E6B8;
  if (!qword_28034E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E6B8);
  }

  return result;
}

void sub_269C717A8(uint64_t a1)
{
  sub_269D97920();
  if (v1 <= 0x3F)
  {
    sub_269C6C388(319);
    if (v2 <= 0x3F)
    {
      sub_269C6C550(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_269C7184C(uint64_t a1)
{
  sub_269C6CD98(319, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_269C71B48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269C71C08;

  return sub_269C6DFB8(a1, v4, v5, v7, v6);
}

uint64_t sub_269C71C08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_269C71CFC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t isEscapingClosureAtFileLocation, uint64_t a5, uint64_t a6)
{
  sub_269D9A8D0();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    sub_269C7495C(v14);
    if (v6)
    {
      v10 = swift_isEscapingClosureAtFileLocation();

      if ((v10 & 1) == 0)
      {
        return v10;
      }

      __break(1u);
    }

    else
    {
      v10 = v14[0];
      v11 = swift_isEscapingClosureAtFileLocation();

      if ((v11 & 1) == 0)
      {
        return v10;
      }
    }

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_269D9B000();
  MEMORY[0x26D650930](0xD00000000000003FLL, 0x8000000269DAE680);
  v13 = sub_269D9B4D0();
  MEMORY[0x26D650930](v13);

  MEMORY[0x26D650930](46, 0xE100000000000000);
  result = sub_269D9B100();
  __break(1u);
  return result;
}

uint64_t sub_269C71EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_269D9A8D0();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_269C74A7C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_269D9B000();
    MEMORY[0x26D650930](0xD00000000000003FLL, 0x8000000269DAE680);
    v12 = sub_269D9B4D0();
    MEMORY[0x26D650930](v12);

    MEMORY[0x26D650930](46, 0xE100000000000000);
    result = sub_269D9B100();
    __break(1u);
  }

  return result;
}

uint64_t sub_269C72044@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_269C720C4(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_269D98890();
}

uint64_t sub_269C72134@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(a1);
}

uint64_t sub_269C721AC(void *a1)
{
  swift_beginAccess();
  sub_269C74908(0, &qword_28034E708, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C72234(_BYTE *a1, uint64_t *a2)
{
  sub_269C74908(0, &qword_28034E838, MEMORY[0x277CBCEC0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v16 - v12;
  v14 = *(v5 + 16);
  (v14)(&v16 - v12, a1, v4, v11);
  v14(v8, v13, v4);
  swift_beginAccess();
  sub_269C74908(0, &qword_28034E708, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_269C723D8()
{
  swift_beginAccess();
  sub_269C74908(0, &qword_28034E708, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C72498(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  swift_beginAccess();
  sub_269C749A0(0, a5, a6, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C7252C(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), void *a7, unint64_t *a8)
{
  v23 = a8;
  sub_269C749A0(0, a5, a6, MEMORY[0x277CBCEC0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v23 - v19;
  v21 = *(v12 + 16);
  (v21)(&v23 - v19, a1, v11, v18);
  v21(v15, v20, v11);
  swift_beginAccess();
  sub_269C749A0(0, v23, a6, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v12 + 8))(v20, v11);
}

uint64_t sub_269C72708(void *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  sub_269C749A0(0, a2, a3, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C727AC@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v6);

  *a4 = v6;
  return result;
}

uint64_t sub_269C7283C(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  v9 = v6;
  return sub_269D98890();
}

uint64_t sub_269C728C4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v3);

  return v3;
}

uint64_t sub_269C72958()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v5);

  v0 = v5;
  v1 = *&v5[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 24];
  v2 = *&v5[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v5[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider], v1);
  v3 = (*(v2 + 8))(v1, v2);

  return v3;
}

id sub_269C72A10()
{
  v0 = sub_269D97580();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v11);

  v5 = v11;
  v6 = *&v11[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 24];
  v7 = *&v11[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v11[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider], v6);
  (*&v5[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_currentDateProvider])();
  v8 = SleepScheduleProviding.upcomingResolvedOccurrence(forCurrentDate:)(v4, v6, v7);

  (*(v1 + 8))(v4, v0);
  return v8;
}

void sub_269C72B7C(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v3);

  sub_269C5BE08(v1, a1);
}

char *sub_269C72C0C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v5);

  v2 = v5;
  result = [*&v4[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_behavior] isDeviceSupported];
  if (result && v2 >= 2)
  {
    *a1 = v4;

    return v4;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

char *SleepActivityConfigurationModel.__allocating_init(sleepScheduleProvider:sleepSettingsProvider:featureAvailability:watchAppInstalledProvider:behavior:currentDateProvider:userDefaults:)(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = a1[3];
  v12 = a1[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  v15 = a2[3];
  v16 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  ObjectType = swift_getObjectType();
  v19 = sub_269C742CC(v14, v17, a3, a4, a5, a6, a7, a8, v21, v13, ObjectType, v15, v12, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v19;
}

char *SleepActivityConfigurationModel.init(sleepScheduleProvider:sleepSettingsProvider:featureAvailability:watchAppInstalledProvider:behavior:currentDateProvider:userDefaults:)(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v13 = a1[3];
  v30 = a1[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  v15 = MEMORY[0x28223BE20](v14, v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v15);
  v20 = a2[3];
  v19 = a2[4];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(a2, v20);
  v22 = MEMORY[0x28223BE20](v21, v21);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v22);
  ObjectType = swift_getObjectType();
  v27 = sub_269C73D4C(v17, v24, a3, a4, a5, v32, v33, v34, v31, v13, ObjectType, v20, v30, v19);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v27;
}

uint64_t sub_269C72FDC()
{
  sub_269C749A0(0, &qword_280C0AED0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v18 - v2;
  sub_269C4CBC4(0);
  v19 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(v20);

  v9 = v20[0];
  type metadata accessor for SleepScheduleModel();
  sub_269C74A04(&qword_28034E860, type metadata accessor for SleepScheduleModel, &protocol conformance descriptor for SleepScheduleModel);
  v10 = sub_269D98770();

  v20[0] = v10;
  sub_269D98820();
  v11 = sub_269D988B0();

  v20[0] = v11;
  sub_269C1B0B8(0, &qword_280C0AEB0, 0x277D85C78);
  v12 = sub_269D9AC40();
  v20[3] = v12;
  v13 = sub_269D9AC30();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_269C4CC90();
  sub_269C74A04(&unk_28034E850, sub_269C4CC90, MEMORY[0x277CBCD90]);
  sub_269C2FC08();
  sub_269D988E0();
  sub_269C476EC(v3);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_269C74A4C;
  *(v15 + 24) = v14;
  sub_269C74A04(&qword_28034E018, sub_269C4CBC4, MEMORY[0x277CBCD60]);
  v16 = v19;
  sub_269D98900();

  (*(v5 + 8))(v8, v16);
  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();
}

void sub_269C733C8(uint64_t a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_269C734BC();
  }

  else
  {
  }
}

uint64_t sub_269C734BC()
{
  sub_269C73580(&v4 + 1);
  v1 = BYTE1(v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v4);

  if (v1 != v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v0;
    return sub_269D98890();
  }

  return result;
}

uint64_t sub_269C73580@<X0>(unint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_behavior);
  result = [v3 hksp_supportsSleep];
  if (result)
  {
    ObjectType = swift_getObjectType();
    if (HKFeatureAvailabilityProviding.isFeatureOnboarded.getter(ObjectType))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_269D98880(&v20);

      v6 = v20;
      v7 = *&v20[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule];
      v8 = v7;

      if (v7)
      {
        if ([v8 isEnabled])
        {
          v9 = [v8 occurrences];
          sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
          v10 = sub_269D9A7E0();

          v20 = MEMORY[0x277D84F90];
          if (v10 >> 62)
          {
            goto LABEL_25;
          }

          for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_269D9AF50())
          {
            v18 = v8;
            v19 = a1;
            a1 = 0;
            v8 = (v10 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if ((v10 & 0xC000000000000001) != 0)
              {
                v12 = MEMORY[0x26D651260](a1, v10);
              }

              else
              {
                if (a1 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_24;
                }

                v12 = *(v10 + 8 * a1 + 32);
              }

              v13 = v12;
              v14 = a1 + 1;
              if (__OFADD__(a1, 1))
              {
                break;
              }

              sub_269D9A8E0();
              sub_269D9A8D0();
              sub_269D9A880();
              if ((swift_task_isCurrentExecutor() & 1) == 0)
              {
                swift_task_reportUnexpectedExecutor();
              }

              v15 = [v13 isSingleDayOverride];

              if (v15)
              {
              }

              else
              {
                sub_269D9B050();
                sub_269D9B090();
                sub_269D9B0A0();
                sub_269D9B060();
              }

              ++a1;
              if (v14 == i)
              {
                a1 = v19;
                v16 = v20;
                v8 = v18;
                goto LABEL_27;
              }
            }

            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            ;
          }

          v16 = MEMORY[0x277D84F90];
LABEL_27:

          if ((v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
          {
            v17 = sub_269D9AF50();
          }

          else
          {
            v17 = *(v16 + 16);
          }

          if (v17)
          {
            result = 4;
          }

          else
          {
            result = 3;
          }
        }

        else
        {

          result = 2;
        }
      }

      else
      {
        result = 3;
      }
    }

    else
    {
      result = [v3 isDeviceSupported];
    }
  }

  *a1 = result;
  return result;
}

id SleepActivityConfigurationModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepActivityConfigurationModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepActivityConfigurationModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269C73B74@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SleepActivityConfigurationModel(0);
  result = sub_269D98770();
  *a2 = result;
  return result;
}

uint64_t SleepActivityConfigurationModel.featureAvailabilityProvidingDidUpdateOnboardingCompletion(_:)()
{
  sub_269D9A8E0();
  v3 = v0;
  return sub_269C71EBC(sub_269C744D8, &v2, "SleepHealthUI/SleepActivityConfigurationModel.swift", 51, 2u, 108);
}

uint64_t sub_269C73C28()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269C734BC();
}

char *sub_269C73D4C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v81 = a5;
  v82 = a8;
  v78 = a6;
  v79 = a3;
  v80 = a4;
  v69[1] = a1;
  v70 = a2;
  v74 = a14;
  v75 = a13;
  v76 = a7;
  sub_269C74908(0, &qword_28034E708, MEMORY[0x277CBCED0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v69 - v18;
  v69[0] = a12;
  v20 = *(a12 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = v69 - v27;
  v29 = *(a10 - 8);
  v71 = a10;
  v72 = v29;
  MEMORY[0x28223BE20](v30, v31);
  v33 = v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34, v35);
  v73 = v69 - v37;
  (*(v38 + 32))(v36);
  v39 = v20;
  v77 = v20;
  (*(v20 + 32))(v28, v70, a12);
  v40 = OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel__layout;
  v85 = 0;
  sub_269D98840();
  (*(v16 + 32))(&a9[v40], v19, v15);
  v41 = &a9[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_configUIVisitedKey];
  *v41 = sub_269D9A630();
  *(v41 + 1) = v42;
  *&a9[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_subscriptions] = MEMORY[0x277D84FA0];
  sub_269D97D80();
  v43 = sub_269D97D70();
  v44 = objc_allocWithZone(type metadata accessor for SleepSettingsModel());
  v45 = *(v39 + 16);
  v46 = v28;
  v47 = v69[0];
  v45(v24, v28, v69[0]);
  v48 = v24;
  v49 = v47;
  v50 = sub_269CB57AC(v48, v43, v44, v47, v74);

  swift_beginAccess();
  v84 = v50;
  sub_269D98840();
  swift_endAccess();
  v51 = objc_allocWithZone(type metadata accessor for SleepScheduleModel());
  v52 = v72;
  v53 = v73;
  v54 = v71;
  (*(v72 + 16))(v33, v73, v71);
  v55 = v76;

  v56 = sub_269C797E4(v33, v78, v55, v51, v54, v75);

  swift_beginAccess();
  v84 = v56;
  sub_269D98840();
  swift_endAccess();
  v57 = v79;
  v58 = v80;
  *&a9[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_featureAvailability] = v79;
  *&a9[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_watchAppInstalledProvider] = v58;
  v59 = v81;
  *&a9[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_behavior] = v81;
  v60 = type metadata accessor for SleepActivityConfigurationModel(0);
  v83.receiver = a9;
  v83.super_class = v60;
  v61 = v57;
  swift_unknownObjectRetain();
  v62 = v58;
  v63 = v59;
  v64 = objc_msgSendSuper2(&v83, sel_init);

  v65 = sub_269D9A5F0();

  v66 = v82;
  [v82 setBool:1 forKey:v65];

  sub_269C734BC();
  sub_269C72FDC();
  sub_269C1B0B8(0, &qword_280C0AEB0, 0x277D85C78);
  v67 = sub_269D9AC40();
  [v61 registerObserver:v64 queue:v67];
  swift_unknownObjectRelease();

  (*(v77 + 8))(v46, v49);
  (*(v52 + 8))(v53, v54);
  return v64;
}

char *sub_269C742CC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v32 = a7;
  v33 = a8;
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v26 = a14;
  v27 = a13;
  v16 = *(a12 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a10 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = objc_allocWithZone(type metadata accessor for SleepActivityConfigurationModel(0));
  (*(v19 + 16))(v23, a1, a10);
  (*(v16 + 16))(v18, a2, a12);
  return sub_269C73D4C(v23, v18, v28, v29, v30, v31, v32, v33, v24, a10, a11, a12, v27, v26);
}

uint64_t type metadata accessor for SleepActivityConfigurationModel(uint64_t a1)
{
  result = qword_28034E750;
  if (!qword_28034E750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269C744FC(uint64_t a1)
{
  sub_269C74908(319, &qword_28034E708, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_269C749A0(319, &qword_28034E718, type metadata accessor for SleepScheduleModel, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_269C749A0(319, &qword_28034E728, type metadata accessor for SleepSettingsModel, MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_269C74908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SleepActivityConfigurationSectionLayout);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_269C7495C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

void sub_269C749A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C74A04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Publisher.mapToVoid()(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_269D988C0();
}

uint64_t HKSPWeekdays.id.getter(uint64_t a1)
{
  v1 = HKSPIdentifierStringForWeekdays();
  v2 = sub_269D9A630();

  return v2;
}

uint64_t HKSPWeekdays.description.getter()
{
  v0 = NSStringFromHKSPWeekdays();
  v1 = sub_269D9A630();

  return v1;
}

uint64_t sub_269C74BF0()
{
  v0 = NSStringFromHKSPWeekdays();
  v1 = sub_269D9A630();

  return v1;
}

void sub_269C74C40(uint64_t *a1@<X8>)
{
  v2 = HKSPIdentifierStringForWeekdays();
  v3 = sub_269D9A630();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
}

unint64_t sub_269C74CA4()
{
  result = qword_28034DAF0;
  if (!qword_28034DAF0)
  {
    type metadata accessor for HKSPWeekdays(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034DAF0);
  }

  return result;
}

UIContentSizeCategory __swiftcall UIContentSizeCategory.sizeSmaller()()
{
  v1 = sub_269C75E94(v0);

  return v1;
}

char *static UIContentSizeCategory.contentSizeCategoryFitting(startingAt:strings:size:)(id a1, unint64_t a2, double a3, double a4)
{
  v72 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_86;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  a1 = a1;
  v7 = a1;
  if (v6)
  {
    v8 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x26D651260](v8, a2);
      }

      else
      {
        if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        a1 = *(a2 + 8 * v8 + 32);
      }

      v9 = a1;
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_83;
      }

      v11 = v7;
      sub_269D9AD10();

      ++v8;
    }

    while (v10 != v6);
  }

  if (v72)
  {
    v12 = sub_269D9AF50();
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  v73 = v12;
  v71 = v12 & ~(v12 >> 63);
  if (v12)
  {
    v74 = MEMORY[0x277D84F90];
    result = sub_269C754F8(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    v13 = v74;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      do
      {
        MEMORY[0x26D651260](v15, a2);
        sub_269D9AC70();
        v17 = v16;
        swift_unknownObjectRelease();
        v19 = *(v74 + 16);
        v18 = *(v74 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_269C754F8((v18 > 1), v19 + 1, 1);
        }

        ++v15;
        *(v74 + 16) = v19 + 1;
        *(v74 + 8 * v19 + 32) = v17;
      }

      while (v73 != v15);
    }

    else
    {
      v20 = (a2 + 32);
      do
      {
        v21 = *v20;
        sub_269D9AC70();
        v23 = v22;

        v25 = *(v74 + 16);
        v24 = *(v74 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_269C754F8((v24 > 1), v25 + 1, 1);
        }

        *(v74 + 16) = v25 + 1;
        *(v74 + 8 * v25 + 32) = v23;
        ++v20;
        --v12;
      }

      while (v12);
    }
  }

  v26 = *(v13 + 16);
  if (v26)
  {
    if (v26 > 3)
    {
      v27 = v26 & 0x7FFFFFFFFFFFFFFCLL;
      v29 = (v13 + 48);
      v28 = 0.0;
      v30 = v26 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v28 = v28 + *(v29 - 2) + *(v29 - 1) + *v29 + v29[1];
        v29 += 4;
        v30 -= 4;
      }

      while (v30);
      if (v26 == v27)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v27 = 0;
      v28 = 0.0;
    }

    v31 = v26 - v27;
    v32 = (v13 + 8 * v27 + 32);
    do
    {
      v33 = *v32++;
      v28 = v28 + v33;
      --v31;
    }

    while (v31);
  }

  else
  {
    v28 = 0.0;
  }

LABEL_36:

  if (v28 > a4)
  {
    v34 = a2 & 0xC000000000000001;
    v35 = v73;
    do
    {
      v37 = sub_269C75E94(v7);
      v38 = sub_269D9A630();
      v40 = v39;
      if (v38 == sub_269D9A630() && v40 == v41)
      {

        return v7;
      }

      v42 = sub_269D9B280();
      v43 = v37;

      if (v42)
      {

        return v7;
      }

      v44 = v43;

      if (v72)
      {
        a1 = sub_269D9AF50();
        v45 = a1;
        v7 = v44;
        if (a1)
        {
LABEL_47:
          v46 = 0;
          while (1)
          {
            if (v34)
            {
              a1 = MEMORY[0x26D651260](v46, a2);
            }

            else
            {
              if (v46 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_82;
              }

              a1 = *(a2 + 8 * v46 + 32);
            }

            v47 = a1;
            v48 = (v46 + 1);
            if (__OFADD__(v46, 1))
            {
              break;
            }

            v49 = v7;
            sub_269D9AD10();

            ++v46;
            if (v48 == v45)
            {
              goto LABEL_55;
            }
          }

          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          v70 = a1;
          v6 = sub_269D9AF50();
          a1 = v70;
          goto LABEL_3;
        }
      }

      else
      {
        v45 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v7 = v44;
        if (v45)
        {
          goto LABEL_47;
        }
      }

LABEL_55:
      if (v35)
      {
        v75 = MEMORY[0x277D84F90];
        a1 = sub_269C754F8(0, v71, 0);
        if (v35 < 0)
        {
          goto LABEL_85;
        }

        v50 = v75;
        if (v34)
        {
          for (i = 0; i != v35; ++i)
          {
            MEMORY[0x26D651260](i, a2);
            sub_269D9AC70();
            v53 = v52;
            swift_unknownObjectRelease();
            v55 = *(v75 + 16);
            v54 = *(v75 + 24);
            if (v55 >= v54 >> 1)
            {
              sub_269C754F8((v54 > 1), v55 + 1, 1);
            }

            *(v75 + 16) = v55 + 1;
            *(v75 + 8 * v55 + 32) = v53;
          }
        }

        else
        {
          v63 = (a2 + 32);
          v64 = v35;
          do
          {
            v65 = *v63;
            sub_269D9AC70();
            v67 = v66;

            v69 = *(v75 + 16);
            v68 = *(v75 + 24);
            if (v69 >= v68 >> 1)
            {
              sub_269C754F8((v68 > 1), v69 + 1, 1);
            }

            *(v75 + 16) = v69 + 1;
            *(v75 + 8 * v69 + 32) = v67;
            ++v63;
            --v64;
            v35 = v73;
          }

          while (v64);
        }
      }

      else
      {
        v50 = MEMORY[0x277D84F90];
      }

      v56 = *(v50 + 16);
      if (v56)
      {
        if (v56 > 3)
        {
          v57 = v56 & 0x7FFFFFFFFFFFFFFCLL;
          v58 = (v50 + 48);
          v36 = 0.0;
          v59 = v56 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v36 = v36 + *(v58 - 2) + *(v58 - 1) + *v58 + v58[1];
            v58 += 4;
            v59 -= 4;
          }

          while (v59);
          if (v56 == v57)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v57 = 0;
          v36 = 0.0;
        }

        v60 = v56 - v57;
        v61 = (v50 + 8 * v57 + 32);
        do
        {
          v62 = *v61++;
          v36 = v36 + v62;
          --v60;
        }

        while (v60);
      }

      else
      {
        v36 = 0.0;
      }

LABEL_39:
    }

    while (v36 > a4);
  }

  return v7;
}

void *sub_269C75338(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269C75944(a1, a2, a3, *v3, &qword_28034E868, &qword_280350880, MEMORY[0x277D10D40]);
  *v3 = result;
  return result;
}

char *sub_269C75370(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269C75628(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269C75390(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269C75CB4(a1, a2, a3, *v3, &qword_28034E3C8, MEMORY[0x277D10F78], MEMORY[0x277D10F78]);
  *v3 = result;
  return result;
}

char *sub_269C753E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269C75738(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269C75400(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269C75CB4(a1, a2, a3, *v3, &qword_280C0BBA8, type metadata accessor for SleepStageSegment, type metadata accessor for SleepStageSegment);
  *v3 = result;
  return result;
}

void *sub_269C75450(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269C75CB4(a1, a2, a3, *v3, &qword_280C0AD98, MEMORY[0x277CC88A8], MEMORY[0x277CC88A8]);
  *v3 = result;
  return result;
}

char *sub_269C754A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269C75840(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269C754C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269C75944(a1, a2, a3, *v3, &qword_28034E100, &qword_28034E550, MEMORY[0x277D10D48]);
  *v3 = result;
  return result;
}

char *sub_269C754F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269C75A98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269C75518(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269C75CB4(a1, a2, a3, *v3, &qword_28034E888, type metadata accessor for ScheduleOccurrenceViewModel, type metadata accessor for ScheduleOccurrenceViewModel);
  *v3 = result;
  return result;
}

char *sub_269C75568(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269C75BA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269C75588(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269C75CB4(a1, a2, a3, *v3, &qword_28034E878, type metadata accessor for SleepScoreComponentModel, type metadata accessor for SleepScoreComponentModel);
  *v3 = result;
  return result;
}

void *sub_269C755D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269C75CB4(a1, a2, a3, *v3, &qword_28034E870, MEMORY[0x277CC8918], MEMORY[0x277CC8918]);
  *v3 = result;
  return result;
}

char *sub_269C75628(char *result, int64_t a2, char a3, char *a4)
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
    sub_269C5C1B8(0, &qword_280C0B440, MEMORY[0x277D837D0]);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_269C75738(char *result, int64_t a2, char a3, char *a4)
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
    sub_269C5C1B8(0, &qword_280C0BBA0, MEMORY[0x277D839F8]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_269C75840(char *result, int64_t a2, char a3, char *a4)
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
    sub_269C5C1B8(0, &unk_28034E890, &type metadata for DayDuration);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_269C75944(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_269C764A0(0, a5, a6, a7);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_269C3232C(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *sub_269C75A98(char *result, int64_t a2, char a3, char *a4)
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
    sub_269C5C1B8(0, &qword_280C0B458, MEMORY[0x277D85048]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_269C75BA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_269C7644C(0, &qword_28034E880, type metadata accessor for HKCategoryValueSleepAnalysis);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_269C75CB4(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_269C7644C(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_269C75E94(uint64_t a1)
{
  v1 = sub_269D9A630();
  v3 = v2;
  if (v1 == sub_269D9A630() && v3 == v4)
  {

    v7 = MEMORY[0x277D767F0];
  }

  else
  {
    v6 = sub_269D9B280();

    v7 = MEMORY[0x277D767F0];
    if ((v6 & 1) == 0)
    {
      v8 = sub_269D9A630();
      v10 = v9;
      if (v8 == sub_269D9A630() && v10 == v11)
      {

        v7 = MEMORY[0x277D767F8];
      }

      else
      {
        v13 = sub_269D9B280();

        v7 = MEMORY[0x277D767F8];
        if ((v13 & 1) == 0)
        {
          v14 = sub_269D9A630();
          v16 = v15;
          if (v14 == sub_269D9A630() && v16 == v17)
          {

            v7 = MEMORY[0x277D76800];
          }

          else
          {
            v19 = sub_269D9B280();

            v7 = MEMORY[0x277D76800];
            if ((v19 & 1) == 0)
            {
              v20 = sub_269D9A630();
              v22 = v21;
              if (v20 == sub_269D9A630() && v22 == v23)
              {

                v7 = MEMORY[0x277D76808];
              }

              else
              {
                v24 = sub_269D9B280();

                v7 = MEMORY[0x277D76808];
                if ((v24 & 1) == 0)
                {
                  v25 = sub_269D9A630();
                  v27 = v26;
                  if (v25 == sub_269D9A630() && v27 == v28)
                  {

                    v7 = MEMORY[0x277D76818];
                  }

                  else
                  {
                    v29 = sub_269D9B280();

                    v7 = MEMORY[0x277D76818];
                    if ((v29 & 1) == 0)
                    {
                      v30 = sub_269D9A630();
                      v32 = v31;
                      if (v30 == sub_269D9A630() && v32 == v33)
                      {

                        v7 = MEMORY[0x277D76820];
                      }

                      else
                      {
                        v34 = sub_269D9B280();

                        v7 = MEMORY[0x277D76820];
                        if ((v34 & 1) == 0)
                        {
                          v35 = sub_269D9A630();
                          v37 = v36;
                          if (v35 == sub_269D9A630() && v37 == v38)
                          {

                            v7 = MEMORY[0x277D76828];
                          }

                          else
                          {
                            v39 = sub_269D9B280();

                            v7 = MEMORY[0x277D76828];
                            if ((v39 & 1) == 0)
                            {
                              v40 = sub_269D9A630();
                              v42 = v41;
                              if (v40 == sub_269D9A630() && v42 == v43)
                              {

                                v7 = MEMORY[0x277D76838];
                              }

                              else
                              {
                                v44 = sub_269D9B280();

                                v7 = MEMORY[0x277D76838];
                                if ((v44 & 1) == 0)
                                {
                                  v45 = sub_269D9A630();
                                  v47 = v46;
                                  if (v45 == sub_269D9A630() && v47 == v48)
                                  {

                                    v7 = MEMORY[0x277D76840];
                                  }

                                  else
                                  {
                                    v49 = sub_269D9B280();

                                    v7 = MEMORY[0x277D76840];
                                    if ((v49 & 1) == 0)
                                    {
                                      v50 = sub_269D9A630();
                                      v52 = v51;
                                      if (v50 == sub_269D9A630() && v52 == v53)
                                      {

                                        v7 = MEMORY[0x277D76858];
                                      }

                                      else
                                      {
                                        v54 = sub_269D9B280();

                                        v7 = MEMORY[0x277D76858];
                                        if ((v54 & 1) == 0)
                                        {
                                          v55 = sub_269D9A630();
                                          v57 = v56;
                                          if (v55 == sub_269D9A630() && v57 == v58)
                                          {

                                            v7 = MEMORY[0x277D76830];
                                          }

                                          else
                                          {
                                            v59 = sub_269D9B280();

                                            v7 = MEMORY[0x277D76860];
                                            if (v59)
                                            {
                                              v7 = MEMORY[0x277D76830];
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return *v7;
}

void sub_269C7644C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9B240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269C764A0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_269C3232C(255, a3, a4);
    v5 = sub_269D9B240();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t HKSPSleepSchedule.sleepDurationGoalIfSet.getter()
{
  [v0 sleepDurationGoal];
  if (v1 <= 0.0)
  {
    return 0;
  }

  [v0 sleepDurationGoal];
  return v3;
}

uint64_t SleepSettingsProviding.sleepSettings.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a1);
  sub_269D987C0();

  return v3;
}

id sub_269C765C0(uint64_t a1, uint64_t a2, SEL *a3)
{
  (*(a2 + 24))(a1);
  sub_269D987C0();

  if (!v6)
  {
    return 0;
  }

  v4 = [v6 *a3];

  return v4;
}

id SleepSettingsProvider.init(sleepStore:sleepSettings:)(void *a1, void *a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI21SleepSettingsProvider_sleepStore] = a1;
  sub_269C4CA64(0);
  swift_allocObject();
  v6 = a1;
  v7 = a2;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI21SleepSettingsProvider_currentSettingsPublisher] = sub_269D987F0();
  v11 = [v6 sleepFocusConfiguration];
  sub_269C767CC(0);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC13SleepHealthUI21SleepSettingsProvider_currentSleepFocusConfigurationPublisher] = sub_269D987F0();
  v10.receiver = v3;
  v10.super_class = type metadata accessor for SleepSettingsProvider();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [v6 addObserver_];

  return v8;
}

void sub_269C767CC(uint64_t a1)
{
  if (!qword_28034E8C8)
  {
    sub_269C77450(255, &qword_28034E8D0, &qword_28034E8D8, 0x277D624E8);
    v1 = sub_269D987E0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E8C8);
    }
  }
}

id SleepSettingsProvider.__allocating_init(sleepStore:)(void *a1)
{
  v2 = HKSPSleepStore.settings.getter();
  v3 = objc_allocWithZone(type metadata accessor for SleepSettingsProvider());
  return SleepSettingsProvider.init(sleepStore:sleepSettings:)(a1, v2);
}

id SleepSettingsProvider.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC13SleepHealthUI21SleepSettingsProvider_sleepStore] removeObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepSettingsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SleepSettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_269C76B94(void *a1)
{
  swift_getObjectType();
  v2 = sub_269D9A2A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269C1B0B8(0, &qword_280C0AEB0, 0x277D85C78);
  *v6 = sub_269D9AC40();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = sub_269D9A2B0();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_280C0B218 == -1)
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
  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B220);
  v9 = a1;
  v10 = sub_269D98230();
  v11 = sub_269D9AB80();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v12 = 136446466;
    v14 = sub_269D9B4D0();
    v16 = sub_269C2EACC(v14, v15, &v29);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2114;
    *(v12 + 14) = v9;
    *v13 = v9;
    v17 = v9;
    _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] Settings did change: %{public}@", v12, 0x16u);
    sub_269C773DC(v13);
    MEMORY[0x26D652460](v13, -1, -1);
    v18 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x26D652460](v18, -1, -1);
    MEMORY[0x26D652460](v12, -1, -1);
  }

  sub_269D987C0();
  v19 = v29;
  sub_269C1B0B8(0, &qword_28034E8C0, 0x277D62520);
  v20 = sub_269D9ADD0();

  if (v20)
  {
    v21 = sub_269D98230();
    v22 = sub_269D9AB80();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136446210;
      v25 = sub_269D9B4D0();
      v27 = sub_269C2EACC(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_269C18000, v21, v22, "[%{public}s] Updated settings matched previous settings. Not publishing.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D652460](v24, -1, -1);
      MEMORY[0x26D652460](v23, -1, -1);
    }
  }

  else
  {
    v29 = v9;
    sub_269D987B0();
  }
}

void sub_269C76F78(void *a1)
{
  swift_getObjectType();
  v2 = sub_269D9A2A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269C1B0B8(0, &qword_280C0AEB0, 0x277D85C78);
  *v6 = sub_269D9AC40();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = sub_269D9A2B0();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_280C0B218 == -1)
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
  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B220);
  v9 = a1;
  v10 = sub_269D98230();
  v11 = sub_269D9AB80();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v12 = 136446466;
    v14 = sub_269D9B4D0();
    v16 = sub_269C2EACC(v14, v15, &v31);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2114;
    *(v12 + 14) = v9;
    *v13 = v9;
    v17 = v9;
    _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] Sleep focus did change: %{public}@", v12, 0x16u);
    sub_269C773DC(v13);
    MEMORY[0x26D652460](v13, -1, -1);
    v18 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x26D652460](v18, -1, -1);
    MEMORY[0x26D652460](v12, -1, -1);
  }

  sub_269D987C0();
  v19 = v31;
  if (v31 && (sub_269C1B0B8(0, &qword_28034E8D8, 0x277D624E8), v20 = v9, v21 = sub_269D9ADD0(), v20, v19, (v21 & 1) != 0))
  {
    v22 = sub_269D98230();
    v23 = sub_269D9AB80();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136446210;
      v26 = sub_269D9B4D0();
      v28 = sub_269C2EACC(v26, v27, &v31);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_269C18000, v22, v23, "[%{public}s] Updated sleep focus config matched previous config. Not publishing.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x26D652460](v25, -1, -1);
      MEMORY[0x26D652460](v24, -1, -1);
    }
  }

  else
  {
    v31 = v9;
    v29 = v9;
    sub_269D987B0();
  }
}

uint64_t sub_269C773DC(uint64_t a1)
{
  sub_269C77450(0, &unk_280C0ADC0, &qword_280C0ADD0, 0x277D82BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269C77450(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_269C1B0B8(255, a3, a4);
    v5 = sub_269D9AE60();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t CurrentValueSubject<>.updateValueIfDifferent(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + *MEMORY[0x277CBCE38]);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v10 - v6;
  sub_269D987C0();
  v8 = sub_269D9A560();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    (*(v5 + 16))(v7, a1, v4);
    return sub_269D987D0();
  }

  return result;
}

char *sub_269C77610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_269D9A5F0();
  }

  else
  {
    v5 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for EditScheduleLinkTableViewCell();
  v6 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = qword_280C0AE70;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v12[3] = &type metadata for EditScheduleLinkTableViewCell.Model;
  v12[4] = &off_287AA2FC0;
  v12[0] = sub_269D972C0();
  v12[1] = v9;
  v12[2] = 0;
  v10 = OBJC_IVAR____TtC13SleepHealthUI17TextTableViewCell_model;
  swift_beginAccess();
  sub_269C77A80(v12, v8 + v10);
  swift_endAccess();
  sub_269D42C98();
  sub_269C77BA0(v12);
  sub_269C778FC();

  return v8;
}

void sub_269C778FC()
{
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    [v1 setTextAlignment_];
  }

  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v6[4] = sub_269CC7C58;
  v6[5] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_269CC7F6C;
  v6[3] = &block_descriptor_3;
  v4 = _Block_copy(v6);
  v5 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  [v0 setBackgroundColor_];
}

id sub_269C77A10(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EditScheduleLinkTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_269C77A80(uint64_t a1, uint64_t a2)
{
  sub_269C77AE4(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_269C77AE4(uint64_t a1)
{
  if (!qword_28034E940)
  {
    sub_269C77B3C();
    v1 = sub_269D9AE60();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E940);
    }
  }
}

unint64_t sub_269C77B3C()
{
  result = qword_28034E948;
  if (!qword_28034E948)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034E948);
  }

  return result;
}

uint64_t sub_269C77BA0(uint64_t a1)
{
  sub_269C77AE4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269C77BFC(uint64_t a1, int a2)
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

uint64_t sub_269C77C44(uint64_t result, int a2, int a3)
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

uint64_t SleepOnboardingAnalyticsTracking<>.analyticsManager.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))(a1, a3);
  sub_269C2DB5C(v3 + 88, v8);

  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  v6 = (*(*(v5 + 8) + 8))(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t SleepOnboardingAnalyticsTracking<>.context.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = (*(a2 + 8))(a1, a2);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = *(v4 + 16);

  *a3 = v7;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  return result;
}

void SleepOnboardingAnalyticsTracking<>.trackOnboardingStep(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a4 + 8))(a3, a4);
  v10 = *(a5 + 8);
  v11 = *(v10(a3, a5) + 24);

  v12 = [objc_allocWithZone(MEMORY[0x277D62420]) initWithStep:a1 action:a2 entryPoint:v11];
  v13 = *(v10(a3, a5) + 16);

  v14 = [objc_allocWithZone(MEMORY[0x277D62418]) initWithOnboardingInfo:v12 provenanceInfo:v13];

  [v9 trackEvent_];
}

void SleepOnboardingAnalyticsTracking<>.trackOnboardingPromotion(context:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (*(*(a3 + 8) + 8))(a2);
  v6 = [objc_allocWithZone(MEMORY[0x277D62420]) initWithStep:0 action:0 entryPoint:v4];
  v7 = [objc_allocWithZone(MEMORY[0x277D62418]) initWithOnboardingInfo:v6 provenanceInfo:v3];

  [v5 trackEvent_];
}

uint64_t sub_269C77FE0()
{
  v0 = sub_269D98250();
  __swift_allocate_value_buffer(v0, qword_28035E4B8);
  __swift_project_value_buffer(v0, qword_28035E4B8);
  return sub_269D98240();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id SleepScheduleModel.__allocating_init(sleepScheduleProvider:currentDateProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = sub_269C799A8(v9, a2, a3, v3, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

id SleepScheduleModel.__allocating_init(sleepStore:)(void *a1)
{
  type metadata accessor for SleepScheduleProvider();
  v2 = a1;
  v3 = SleepScheduleProvider.__allocating_init(sleepStore:)(v2);
  v4 = HKSPCurrentDateProvider();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = objc_allocWithZone(type metadata accessor for SleepScheduleModel());
  v7 = sub_269C79AD0(v3, sub_269C79AA4, v5, v6);

  return v7;
}

void sub_269C781F0(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  sub_269D97540();
}

id SleepScheduleModel.init(sleepScheduleProvider:currentDateProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = MEMORY[0x28223BE20](v9, v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_269C797E4(v12, a2, a3, v3, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v14;
}

void *sub_269C78358()
{
  result = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  if (result)
  {
    [result windDownTime];
    return (v2 > 0.0);
  }

  return result;
}

double sub_269C78390()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  if (!v1)
  {
    return 0.0;
  }

  [v1 windDownTime];
  return result;
}

void sub_269C783B4()
{
  [*(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule) setWindDownTime_];

  sub_269C78F44();
}

void (*sub_269C783F0(void *a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    [v4 windDownTime];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_269C78458;
}

uint64_t sub_269C78490()
{
  v1 = sub_269D9ACD0();
  v2 = *(v1 - 8);
  v41 = v1;
  v42 = v2;
  MEMORY[0x28223BE20](v1, v3);
  v39 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C2FB3C(0);
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  MEMORY[0x28223BE20](v5, v7);
  v40 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C71370(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C79DAC(0);
  v38 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 24);
  v19 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 32);
  __swift_project_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider), v18);
  v45 = (*(v19 + 24))(v18, v19);
  v20 = MEMORY[0x277CBCE30];
  sub_269C79E98(0, &qword_280C0B140, MEMORY[0x277CBCE30]);
  sub_269C79F20(&qword_28034D970, &qword_280C0B140, v20, MEMORY[0x277CBCE48]);
  v21 = sub_269D988B0();

  v45 = v21;
  sub_269C1B0B8(0, &qword_280C0AEB0, 0x277D85C78);
  v22 = sub_269D9AC40();
  v46 = v22;
  v23 = sub_269D9AC30();
  v24 = *(v23 - 8);
  v36 = *(v24 + 56);
  v37 = v24 + 56;
  v36(v12, 1, 1, v23);
  v25 = MEMORY[0x277CBCD88];
  sub_269C79E98(0, &qword_28034E988, MEMORY[0x277CBCD88]);
  sub_269C79F20(&qword_28034E990, &qword_28034E988, v25, MEMORY[0x277CBCD90]);
  v35[2] = sub_269C2FC08();
  sub_269D988E0();
  sub_269C476EC(v12);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = MEMORY[0x277CBCD60];
  sub_269C79D64(&qword_28034E998, 255, sub_269C79DAC, MEMORY[0x277CBCD60]);
  v27 = v38;
  sub_269D98900();

  (*(v14 + 8))(v17, v27);
  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();

  v28 = [objc_opt_self() defaultCenter];
  v29 = v39;
  sub_269D9ACE0();

  v30 = sub_269D9AC40();
  v45 = v30;
  v36(v12, 1, 1, v23);
  sub_269C79D64(&qword_280C0B4B0, 255, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  v32 = v40;
  v31 = v41;
  sub_269D988E0();
  sub_269C476EC(v12);

  (*(v42 + 8))(v29, v31);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C79D64(&qword_280C0B178, 255, sub_269C2FB3C, v26);
  v33 = v43;
  sub_269D98900();

  (*(v44 + 8))(v32, v33);
  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();
}

void sub_269C78AFC(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_269C78C04(v2);
  }
}

void *sub_269C78B58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    type metadata accessor for SleepScheduleModel();
    sub_269C79D64(&qword_28034E860, v4, type metadata accessor for SleepScheduleModel, &protocol conformance descriptor for SleepScheduleModel);
    sub_269D98770();

    sub_269D98810();
  }

  return result;
}

void sub_269C78C04(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (!a1)
  {
    v5 = (v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
    v6 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
LABEL_10:
    if (!v6)
    {
      return;
    }

    v4 = 0;
    goto LABEL_12;
  }

  [a1 mutableCopy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E978, 0x277D62488);
  if (swift_dynamicCast())
  {
    v4 = v26;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D62488]) init];
  }

  v5 = (v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  v6 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  if (!v4)
  {
    goto LABEL_10;
  }

  if (!v6 || (v7 = v6, v8 = v4, v9 = sub_269D9ADD0(), v8, v7, (v9 & 1) == 0))
  {
LABEL_12:
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v10 = sub_269D98250();
    __swift_project_value_buffer(v10, qword_280C0B220);
    v11 = v4;
    v12 = sub_269D98230();
    v13 = sub_269D9AB40();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25[0] = v15;
      *v14 = 136446466;
      v16 = sub_269D9B4D0();
      v18 = sub_269C2EACC(v16, v17, v25);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v26 = v4;
      sub_269C77450(0, &qword_28034E970, &qword_28034E978, 0x277D62488);
      v19 = v11;
      v20 = sub_269D9A660();
      v22 = sub_269C2EACC(v20, v21, v25);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_269C18000, v12, v13, "[%{public}s] Updating sleep schedule: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v15, -1, -1);
      MEMORY[0x26D652460](v14, -1, -1);
    }

    v23 = *v5;
    *v5 = v4;
    v8 = v11;

    type metadata accessor for SleepScheduleModel();
    sub_269C79D64(&qword_28034E860, v24, type metadata accessor for SleepScheduleModel, &protocol conformance descriptor for SleepScheduleModel);
    sub_269D98770();
    sub_269D98810();
  }
}

void sub_269C78F44()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule;
  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule];
  if (v4)
  {
    v5 = ObjectType;
    v6 = qword_280C0B218;
    v7 = v4;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_269D98250();
    __swift_project_value_buffer(v8, qword_280C0B220);
    v9 = v1;
    v10 = sub_269D98230();
    v11 = sub_269D9AB40();

    if (os_log_type_enabled(v10, v11))
    {
      v29 = v7;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136446466;
      v14 = sub_269D9B4D0();
      v16 = sub_269C2EACC(v14, v15, aBlock);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v30 = *&v1[v3];
      sub_269C77450(0, &qword_28034E970, &qword_28034E978, 0x277D62488);
      v17 = v30;
      v18 = sub_269D9A660();
      v20 = sub_269C2EACC(v18, v19, aBlock);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] Saving sleep schedule: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v13, -1, -1);
      v21 = v12;
      v7 = v29;
      MEMORY[0x26D652460](v21, -1, -1);
    }

    v22 = &v9[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider];
    v23 = *&v9[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 24];
    v24 = *(v22 + 4);
    __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    v25 = (*(v24 + 8))(v23, v24);
    v26 = swift_allocObject();
    *(v26 + 16) = v5;
    aBlock[4] = sub_269C79F74;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_269C7A600;
    aBlock[3] = &block_descriptor_4;
    v27 = _Block_copy(aBlock);
    v28 = v7;

    [v25 saveCurrentSleepSchedule:v28 completion:v27];
    _Block_release(v27);
  }
}

void sub_269C7923C(char a1, id a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v3 = sub_269D98250();
    __swift_project_value_buffer(v3, qword_280C0B220);
    v29 = sub_269D98230();
    v4 = sub_269D9AB40();
    if (os_log_type_enabled(v29, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v32 = v6;
      *v5 = 136446210;
      v7 = sub_269D9B4D0();
      v9 = sub_269C2EACC(v7, v8, &v32);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_269C18000, v29, v4, "[%{public}s] Successfully saved sleep schedule.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x26D652460](v6, -1, -1);
      MEMORY[0x26D652460](v5, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (a2)
    {
      v10 = a2;
    }

    else
    {
      type metadata accessor for HKError(0);
      v31 = 0;
      sub_269C581B0(MEMORY[0x277D84F90]);
      sub_269C79D64(&qword_28034DB88, 255, type metadata accessor for HKError, &unk_269D9FCB8);
      sub_269D97340();
      a2 = 0;
      v10 = v32;
    }

    v11 = a2;
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v12 = sub_269D98250();
    __swift_project_value_buffer(v12, qword_280C0B220);
    v13 = v10;
    v14 = sub_269D98230();
    v15 = sub_269D9AB60();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136446466;
      v18 = sub_269D9B4D0();
      v20 = sub_269C2EACC(v18, v19, &v32);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v22 = MEMORY[0x28223BE20](ErrorValue, v30);
      (*(v24 + 16))(&v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
      v25 = sub_269D9A660();
      v27 = sub_269C2EACC(v25, v26, &v32);

      *(v16 + 14) = v27;
      _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] Error saving sleep schedule: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v17, -1, -1);
      MEMORY[0x26D652460](v16, -1, -1);
    }

    else
    {
    }
  }
}

id SleepScheduleModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepScheduleModel.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SleepScheduleModel();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_269C797A8@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for SleepScheduleModel();
  result = sub_269D98770();
  *a3 = result;
  return result;
}

id sub_269C797E4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v23[3] = a5;
  v23[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v13 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule;
  *&a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule] = 0;
  *&a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_subscriptions] = MEMORY[0x277D84FA0];
  sub_269C2DB5C(v23, &a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider]);
  v14 = &a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_currentDateProvider];
  *v14 = a2;
  *(v14 + 1) = a3;

  v15 = SleepScheduleProviding.sleepSchedule.getter(a5, a6);
  if (v15)
  {
    v16 = v15;
    [v15 mutableCopy];
    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034E978, 0x277D62488);
    if (swift_dynamicCast())
    {
      v17 = v21;
    }

    else
    {
      v17 = [objc_allocWithZone(MEMORY[0x277D62488]) init];
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *&a4[v13];
  *&a4[v13] = v17;

  v22.receiver = a4;
  v22.super_class = type metadata accessor for SleepScheduleModel();
  v19 = objc_msgSendSuper2(&v22, sel_init);
  sub_269C78490();

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return v19;
}

id sub_269C799A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(type metadata accessor for SleepScheduleModel());
  (*(v11 + 16))(v13, a1, a5);
  return sub_269C797E4(v13, a2, a3, v14, a5, a6);
}

id sub_269C79AD0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v17[3] = type metadata accessor for SleepScheduleProvider();
  v17[4] = &protocol witness table for SleepScheduleProvider;
  v17[0] = a1;
  v8 = OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule;
  *&a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule] = 0;
  *&a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_subscriptions] = MEMORY[0x277D84FA0];
  sub_269C2DB5C(v17, &a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider]);
  v9 = &a4[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_currentDateProvider];
  *v9 = a2;
  *(v9 + 1) = a3;

  sub_269D987C0();
  if (v15)
  {
    [v15 mutableCopy];
    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034E978, 0x277D62488);
    if (swift_dynamicCast())
    {
      v10 = v14;
    }

    else
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D62488]) init];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *&a4[v8];
  *&a4[v8] = v10;

  v16.receiver = a4;
  v16.super_class = type metadata accessor for SleepScheduleModel();
  v12 = objc_msgSendSuper2(&v16, sel_init);
  sub_269C78490();

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v12;
}

uint64_t sub_269C79D64(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_269C79DAC(uint64_t a1)
{
  if (!qword_28034E980)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_269C79E98(255, &qword_28034E988, MEMORY[0x277CBCD88]);
    sub_269C1B0B8(255, &qword_280C0AEB0, 0x277D85C78);
    sub_269C79F20(&qword_28034E990, &qword_28034E988, v1, MEMORY[0x277CBCD90]);
    sub_269C2FC08();
    v2 = sub_269D98710();
    if (!v3)
    {
      atomic_store(v2, &qword_28034E980);
    }
  }
}

void sub_269C79E98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_269C77450(255, &qword_280C0AEE0, &qword_280C0AEF0, 0x277D624F8);
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_269C79F20(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269C79E98(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_269C79F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_269C7FD00(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C807A0(a3, v12, sub_269C7FD00);
  v13 = sub_269D9A900();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_269C80808(v12, sub_269C7FD00);
  }

  else
  {
    sub_269D9A8F0();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_269D9A880();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_269D9A680() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_269C80808(a3, sub_269C7FD00);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_269C80808(a3, sub_269C7FD00);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_269C7A29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_269C7FD00(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C807A0(a3, v12, sub_269C7FD00);
  v13 = sub_269D9A900();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_269C80808(v12, sub_269C7FD00);
  }

  else
  {
    sub_269D9A8F0();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_269D9A880();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26[0] = a3;
      v20 = sub_269D9A680() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      sub_269C80920(0, &unk_28034EA80, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_269C80808(v26[0], sub_269C7FD00);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_269C80808(a3, sub_269C7FD00);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_269C80920(0, &unk_28034EA80, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_269C7A600(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_269C7A678()
{
  swift_getObjectType();
  v2 = sub_269D9B4D0();
  MEMORY[0x26D650930](58, 0xE100000000000000);
  MEMORY[0x26D650930](*(v0 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier), *(v0 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8));
  return v2;
}

uint64_t sub_269C7A6F0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_269C7A770(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_269D98890();
  return sub_269C7A7EC();
}

uint64_t sub_269C7A7EC()
{
  swift_getObjectType();
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v1 = sub_269D98250();
  __swift_project_value_buffer(v1, qword_280351208);
  v2 = v0;
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446466;
    v13 = sub_269D9B4D0();
    v14 = v7;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier], *&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8]);
    v8 = sub_269C2EACC(v13, v14, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_269D98880(&v13);

    v9 = sub_269D9A660();
    v11 = sub_269C2EACC(v9, v10, &v15);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] updated state: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v13);

  if (v13 == 3)
  {
    sub_269CB85C4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v13);

  LOBYTE(v15) = v13;
  return sub_269D98780();
}

uint64_t sub_269C7AAD4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(a1);
}

uint64_t sub_269C7AB4C(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_269D98890();
  return sub_269C7A7EC();
}

uint64_t (*sub_269C7ABC0(void *a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = a1 + 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(v2);

  return sub_269C7AC58;
}

uint64_t sub_269C7AC58(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  *(a1 + 9) = v2;
  v4 = v3;
  sub_269D98890();
  return sub_269C7A7EC();
}

void (*sub_269C7AD10(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_269C80920(0, &qword_28034E9C0, &type metadata for LockScreenContentState, MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_269C80920(0, &qword_28034E9B8, &type metadata for LockScreenContentState, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_269D98850();
  swift_endAccess();
  return sub_269C80D18;
}

uint64_t sub_269C7AEB0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_269C7AF30(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_269D98890();
}

uint64_t sub_269C7AFA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(&v1);

  return v1;
}

uint64_t sub_269C7B014(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_269D98890();
}

void (*sub_269C7B080(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_269D98870();
  return sub_269C458D0;
}

uint64_t sub_269C7B124(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t a6)
{
  swift_beginAccess();
  sub_269C80920(0, a5, a6, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C7B1B8(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, void *a7, unint64_t *a8)
{
  v23 = a8;
  sub_269C80920(0, a5, a6, MEMORY[0x277CBCEC0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v23 - v19;
  v21 = *(v12 + 16);
  (v21)(&v23 - v19, a1, v11, v18);
  v21(v15, v20, v11);
  swift_beginAccess();
  sub_269C80920(0, v23, a6, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v12 + 8))(v20, v11);
}

uint64_t sub_269C7B388(void *a1, unint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  sub_269C80920(0, a2, a3, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269C7B43C(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4, unint64_t *a5)
{
  sub_269C80920(0, a2, a3, MEMORY[0x277CBCEC0]);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x28223BE20](v8, v11);
  (*(v10 + 16))(&v15 - v13, a1, v9, v12);
  swift_beginAccess();
  sub_269C80920(0, a5, a3, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v10 + 8))(a1, v9);
}

void (*sub_269C7B59C(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_269C80920(0, &qword_28034DEF0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel__alarmButtonPressed;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_269C80920(0, &qword_28034E9D0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_269D98850();
  swift_endAccess();
  return sub_269C7B73C;
}

uint64_t sub_269C7B740@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269D97670();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269C41A14(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v20[-v14];
  v16 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel____lazy_storage___gregorianCalendar;
  swift_beginAccess();
  sub_269C807A0(v1 + v16, v15, sub_269C41A14);
  v17 = sub_269D977A0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) != 1)
  {
    return (*(v18 + 32))(a1, v15, v17);
  }

  sub_269C80808(v15, sub_269C41A14);
  (*(v4 + 104))(v7, *MEMORY[0x277CC9830], v3);
  sub_269D97680();
  (*(v4 + 8))(v7, v3);
  (*(v18 + 16))(v11, a1, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  swift_beginAccess();
  sub_269C80A28(v11, v1 + v16);
  return swift_endAccess();
}

void LockScreenContentModel.init(debugIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v85 = a2;
  v80 = a1;
  sub_269C7C508(0);
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v77 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D839B0];
  sub_269C80920(0, &qword_28034DEF0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v83 = *(v8 - 8);
  v84 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v82 = &v76 - v10;
  v11 = MEMORY[0x277CBCED0];
  sub_269C80920(0, &qword_28034E9D0, v7, MEMORY[0x277CBCED0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v76 - v16;
  sub_269C80920(0, &qword_28034E9B8, &type metadata for LockScreenContentState, v11);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v76 - v22;
  v24 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_stateDidChange;
  sub_269C7C53C();
  swift_allocObject();
  *&v3[v24] = sub_269D98790();
  v25 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel__state;
  LOBYTE(aBlock[0]) = 0;
  sub_269D98840();
  (*(v20 + 32))(&v3[v25], v23, v19);
  v26 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel__alarmButtonPressed;
  LOBYTE(aBlock[0]) = 0;
  sub_269D98840();
  v27 = *(v14 + 32);
  v81 = v13;
  v27(&v3[v26], v17, v13);
  v28 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepStore;
  if (qword_28034D630 != -1)
  {
    swift_once();
  }

  v29 = qword_28035E468;
  v30 = objc_allocWithZone(MEMORY[0x277D62528]);
  v31 = v29;
  v32 = sub_269D9A5F0();
  v33 = [v30 initWithIdentifier:v32 healthStore:v31];

  *&v3[v28] = v33;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_alarmProvider] = 0;
  v34 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel____lazy_storage___gregorianCalendar;
  v35 = sub_269D977A0();
  (*(*(v35 - 8) + 56))(&v3[v34], 1, 1, v35);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_cancellables] = MEMORY[0x277D84FA0];
  v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_visible] = 0;
  v36 = &v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_lockScreenState];
  *v36 = 0;
  v36[8] = 1;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepScheduleModel] = 0;
  v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState] = 4;
  v37 = &v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier];
  v38 = v80;
  v39 = v85;
  *v37 = v80;
  v37[1] = v39;
  v40 = objc_allocWithZone(type metadata accessor for LocationModel(0));
  swift_bridgeObjectRetain_n();
  v41 = LocationModel.init(debugIdentifier:)(v38, v39);
  v42 = objc_allocWithZone(type metadata accessor for WeatherModel(0));
  v43 = WeatherModel.init(locationModel:debugIdentifier:)(v41, v38, v39);
  v44 = *&v3[v28];
  v45 = objc_allocWithZone(type metadata accessor for WeatherPrefetchScheduler(0));
  v46 = WeatherPrefetchScheduler.init(sleepStore:)(v44);
  type metadata accessor for WeatherPrefetcher(0);
  swift_allocObject();
  v47 = v43;
  v76 = v46;
  v48 = sub_269CB9254(v47, v46);

  *&v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_weatherPrefetcher] = v48;
  type metadata accessor for ContentAppearenceProvider(0);
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_contentAppearanceProvider] = sub_269CEE6F4(v38, v39);
  v49 = type metadata accessor for LockScreenContentModel(0);
  v87.receiver = v3;
  v87.super_class = v49;
  v50 = objc_msgSendSuper2(&v87, sel_init);
  v51 = qword_28034D750;
  v52 = v50;
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = sub_269D98250();
  __swift_project_value_buffer(v53, qword_280351238);
  v54 = sub_269D98230();
  v55 = sub_269D9AB80();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v56 = 136446210;
    v58 = sub_269C7A678();
    v60 = sub_269C2EACC(v58, v59, aBlock);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_269C18000, v54, v55, "[%{public}s] init", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x26D652460](v57, -1, -1);
    MEMORY[0x26D652460](v56, -1, -1);
  }

  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for AlarmProvider(0);
  swift_allocObject();
  v62 = v52;
  v63 = sub_269D5C3C0(sub_269C7FBB8, v61);

  v64 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_alarmProvider;
  *&v62[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_alarmProvider] = v63;

  swift_beginAccess();

  v65 = v82;
  sub_269D98850();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C7FBC8();
  v66 = v84;
  sub_269D98900();

  (*(v83 + 8))(v65, v66);
  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();

  v67 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepStore;
  [*&v62[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepStore] addObserver_];
  v68 = *&v62[v67];
  v69 = swift_allocObject();
  *(v69 + 16) = v62;
  aBlock[4] = sub_269C7FC44;
  aBlock[5] = v69;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269C4D5F0;
  aBlock[3] = &block_descriptor_5;
  v70 = _Block_copy(aBlock);
  v71 = v62;

  [v68 sleepScheduleModelWithCompletion_];
  _Block_release(v70);
  if (*&v62[v64])
  {

    sub_269D5B5D8();

    swift_beginAccess();
    sub_269C80C2C(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);

    v72 = v77;
    sub_269D98850();
    swift_endAccess();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_269C80BB0(&qword_28034EA48, sub_269C7C508, MEMORY[0x277CBCEC8]);
    v73 = v79;
    sub_269D98900();

    (*(v78 + 8))(v72, v73);
    swift_beginAccess();
    sub_269D98740();
    swift_endAccess();

    v74 = byte_28034E9A0;

    v75 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
    swift_beginAccess();
    v71[v75] = v74;
  }

  else
  {
    __break(1u);
  }
}

void sub_269C7C53C()
{
  if (!qword_28034E9F0)
  {
    v0 = sub_269D987A0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E9F0);
    }
  }
}

void sub_269C7C59C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Alarm(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v40 - v10;
  sub_269C7FC6C(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v40 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v40 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v43 = v4;
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v26 = sub_269D98250();
    __swift_project_value_buffer(v26, qword_280351208);
    sub_269C807A0(a1, v23, sub_269C7FC6C);
    v27 = v25;
    v28 = sub_269D98230();
    v29 = sub_269D9AB80();

    if (os_log_type_enabled(v28, v29))
    {
      v41 = v29;
      v30 = v27;
      v31 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v31 = 136446466;
      v42 = v30;
      v32 = sub_269C7A678();
      v34 = sub_269C2EACC(v32, v33, &v44);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2082;
      sub_269C807A0(v23, v19, sub_269C7FC6C);
      sub_269C807A0(v19, v15, sub_269C7FC6C);
      if ((*(v43 + 48))(v15, 1, v3) == 1)
      {
        v35 = 0xE300000000000000;
        v36 = 7104878;
      }

      else
      {
        sub_269C80C90(v15, v11);
        sub_269C807A0(v11, v7, type metadata accessor for Alarm);
        v36 = sub_269D9A660();
        v35 = v37;
        sub_269C80808(v11, type metadata accessor for Alarm);
      }

      sub_269C80808(v19, sub_269C7FC6C);
      sub_269C80808(v23, sub_269C7FC6C);
      v38 = sub_269C2EACC(v36, v35, &v44);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_269C18000, v28, v41, "[%{public}s] updated alarm: %{public}s", v31, 0x16u);
      v39 = v40;
      swift_arrayDestroy();
      MEMORY[0x26D652460](v39, -1, -1);
      MEMORY[0x26D652460](v31, -1, -1);

      v27 = v42;
    }

    else
    {

      sub_269C80808(v23, sub_269C7FC6C);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_269D98880(&v44);

    if (v44)
    {
      if (v44 != 3)
      {
        type metadata accessor for LockScreenContentModel(0);
        sub_269C80BB0(&unk_28034EA90, type metadata accessor for LockScreenContentModel, &protocol conformance descriptor for LockScreenContentModel);
        sub_269D98770();
        sub_269D98810();
      }
    }
  }
}

void sub_269C7CA78(char *a1, uint64_t a2)
{
  v2 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_visible) = v2;
    sub_269C7D050();
  }

  else
  {
  }
}

void sub_269C7CB5C(uint64_t a1, uint64_t a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_269D98880(&v4);

    if (v4 == 3)
    {
      type metadata accessor for LockScreenContentModel(0);
      sub_269C80BB0(&unk_28034EA90, type metadata accessor for LockScreenContentModel, &protocol conformance descriptor for LockScreenContentModel);
      sub_269D98770();
      sub_269D98810();
    }
  }

  else
  {
  }
}

id LockScreenContentModel.__deallocating_deinit()
{
  swift_getObjectType();
  if (qword_28034D750 != -1)
  {
    swift_once();
  }

  v1 = sub_269D98250();
  __swift_project_value_buffer(v1, qword_280351238);
  v2 = v0;
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v11 = sub_269D9B4D0();
    v12 = v7;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier], *&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8]);
    v8 = sub_269C2EACC(v11, v12, &v13);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v9 = type metadata accessor for LockScreenContentModel(0);
  v14.receiver = v2;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, sel_dealloc);
}

void sub_269C7D050()
{
  swift_getObjectType();
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v1 = sub_269D98250();
  __swift_project_value_buffer(v1, qword_280351208);
  v2 = v0;
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446466;
    v12 = sub_269D9B4D0();
    v13 = v7;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier], *&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8]);
    v8 = sub_269C2EACC(v12, v13, &v14);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    if (v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_visible])
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_visible])
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = sub_269C2EACC(v9, v10, &v14);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] updated visible: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  if (v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_visible] == 1)
  {
    sub_269C7DAE8();
  }
}

id sub_269C7D268()
{
  result = *(v0 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepScheduleModel);
  if (result)
  {
    result = [result sleepSettings];
    if (result)
    {
      v2 = result;
      v3 = [result sleepModeOptions];

      return ((v3 >> 3) & 1);
    }
  }

  return result;
}

uint64_t sub_269C7D2C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_alarmProvider);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC13SleepHealthUI13AlarmProvider_alarm;
    swift_beginAccess();
    return sub_269C807A0(v3 + v4, a1, sub_269C7FC6C);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_269C7D34C(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_280351208);
  v5 = sub_269D98230();
  v6 = sub_269D9AB80();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    v9 = sub_269D9B4D0();
    v11 = sub_269C2EACC(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] dismiss active alarm", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D652460](v8, -1, -1);
    MEMORY[0x26D652460](v7, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_alarmProvider))
  {

    sub_269D5AF64(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_269C7D4E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_269D97580();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280351208);
  v9 = sub_269D98230();
  v10 = sub_269D9AB80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136446210;
    v13 = sub_269D9B4D0();
    v21 = v4;
    v15 = sub_269C2EACC(v13, v14, aBlock);
    v4 = v21;

    *(v11 + 4) = v15;
    _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] skip upcoming alarm", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D652460](v12, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  v16 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepStore);
  sub_269D97570();
  v17 = sub_269D974B0();
  (*(v4 + 8))(v7, v3);
  v18 = swift_allocObject();
  *(v18 + 16) = ObjectType;
  aBlock[4] = sub_269C7FCA0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269C7A600;
  aBlock[3] = &block_descriptor_19;
  v19 = _Block_copy(aBlock);

  [v16 skipUpcomingWakeUpAlarmForDate:v17 completion:v19];
  _Block_release(v19);
}

void sub_269C7D7C0(char a1, void *a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v4 = sub_269D98250();
    __swift_project_value_buffer(v4, qword_280351208);
    v5 = a2;
    oslog = sub_269D98230();
    v6 = sub_269D9AB60();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      v9 = sub_269D9B4D0();
      v11 = sub_269C2EACC(v9, v10, &v18);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      if (a2)
      {
        v12 = a2;
        sub_269C80B44();
        v13 = sub_269D9A660();
        v15 = v14;
      }

      else
      {
        v15 = 0xE300000000000000;
        v13 = 7104878;
      }

      v16 = sub_269C2EACC(v13, v15, &v18);

      *(v7 + 14) = v16;
      _os_log_impl(&dword_269C18000, oslog, v6, "[%{public}s] failed to skip upcoming alarm: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v8, -1, -1);
      MEMORY[0x26D652460](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_269C7D9BC()
{
  v1 = v0 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_lockScreenState;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_269C7DA08(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_lockScreenState;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return sub_269C7DAE8();
}

uint64_t (*sub_269C7DA6C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_269C7DAD0;
}

uint64_t sub_269C7DAE8()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  swift_beginAccess();
  if (v0[v1] != 4)
  {
    goto LABEL_3;
  }

  v2 = &v0[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_lockScreenState];
  swift_beginAccess();
  if (v2[8])
  {
    goto LABEL_3;
  }

  v5 = *v2;
  if (*v2 > 1)
  {
    if (v5 == 2 || v5 == 3)
    {
      goto LABEL_3;
    }
  }

  else if (v5 <= 1)
  {
LABEL_3:
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v0;
    sub_269D98890();
    return sub_269C7A7EC();
  }

  result = sub_269D9B100();
  __break(1u);
  return result;
}

void sub_269C7DD34(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v8 = *&v4[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepStore];
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  v12[4] = a2;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_269C7A600;
  v12[3] = a3;
  v10 = _Block_copy(v12);
  v11 = v4;

  [v8 *a4];
  _Block_release(v10);
}

void sub_269C7DE04(char a1, void *a2, void *a3, const char *a4, const char *a5, ...)
{
  swift_getObjectType();
  if (a1)
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v10 = sub_269D98250();
    __swift_project_value_buffer(v10, qword_280351208);
    v11 = a3;
    oslog = sub_269D98230();
    v12 = sub_269D9AB80();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v36 = v14;
      *v13 = 136446210;
      v32 = sub_269D9B4D0();
      v34 = v15;
      MEMORY[0x26D650930](58, 0xE100000000000000);
      MEMORY[0x26D650930](*&v11[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier], *&v11[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8]);
      v16 = sub_269C2EACC(v32, v34, &v36);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_269C18000, oslog, v12, a4, v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x26D652460](v14, -1, -1);
      v17 = v13;
LABEL_16:
      MEMORY[0x26D652460](v17, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v18 = sub_269D98250();
    __swift_project_value_buffer(v18, qword_280351208);
    v19 = a3;
    v20 = a2;
    oslog = sub_269D98230();
    v21 = sub_269D9AB60();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136446466;
      v33 = sub_269D9B4D0();
      v35 = v24;
      MEMORY[0x26D650930](58, 0xE100000000000000);
      MEMORY[0x26D650930](*&v19[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier], *&v19[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8]);
      v25 = sub_269C2EACC(v33, v35, &v36);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      if (a2)
      {
        v26 = a2;
        sub_269C80B44();
        v27 = sub_269D9A660();
        v29 = v28;
      }

      else
      {
        v29 = 0xE300000000000000;
        v27 = 7104878;
      }

      v30 = sub_269C2EACC(v27, v29, &v36);

      *(v22 + 14) = v30;
      _os_log_impl(&dword_269C18000, oslog, v21, a5, v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v23, -1, -1);
      v17 = v22;
      goto LABEL_16;
    }
  }
}

void sub_269C7E194(void *a1, void *a2, void *a3)
{
  swift_getObjectType();
  v6 = sub_269D9A260();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269D9A290();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v37 = v14;
    sub_269C1B0B8(0, &qword_280C0AEB0, 0x277D85C78);
    v17 = a1;
    v18 = sub_269D9AC40();
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = v17;
    v42 = sub_269C80BA8;
    v43 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_269CA6718;
    v41 = &block_descriptor_94;
    v20 = _Block_copy(&aBlock);
    v21 = v17;
    v22 = a3;
    sub_269D9A280();
    v44 = MEMORY[0x277D84F90];
    sub_269C80BB0(&qword_28034EAA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_269C80BF8(0);
    sub_269C80BB0(qword_28034EAB0, sub_269C80BF8, MEMORY[0x277D83970]);
    sub_269D9AEF0();
    MEMORY[0x26D650EA0](0, v16, v10, v20);
    _Block_release(v20);

    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v16, v37);
  }

  else
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v23 = sub_269D98250();
    __swift_project_value_buffer(v23, qword_280351208);
    v24 = a3;
    v25 = a2;
    v37 = sub_269D98230();
    v26 = sub_269D9AB60();

    if (os_log_type_enabled(v37, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44 = v28;
      *v27 = 136446466;
      aBlock = sub_269D9B4D0();
      v39 = v29;
      MEMORY[0x26D650930](58, 0xE100000000000000);
      MEMORY[0x26D650930](*&v24[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier], *&v24[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8]);
      v30 = sub_269C2EACC(aBlock, v39, &v44);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2082;
      if (a2)
      {
        aBlock = a2;
        v31 = a2;
        sub_269C80B44();
        v32 = sub_269D9A660();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v36 = sub_269C2EACC(v32, v34, &v44);

      *(v27 + 14) = v36;
      _os_log_impl(&dword_269C18000, v37, v26, "[%{public}s] failed to retrieve sleep schedule model: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v28, -1, -1);
      MEMORY[0x26D652460](v27, -1, -1);
    }

    else
    {
      v35 = v37;
    }
  }
}

uint64_t sub_269C7E6A8(uint64_t a1, void *a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepScheduleModel);
  *(a1 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepScheduleModel) = a2;
  v5 = a2;

  sub_269C7DAE8();
}

uint64_t sub_269C7E76C(uint64_t a1, void *a2)
{
  sub_269C7FD00(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269D9A900();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_269D9A8E0();
  v9 = v2;
  v10 = a2;
  v11 = sub_269D9A8D0();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v9;
  v12[5] = v10;
  sub_269C79F94(0, 0, v7, &unk_269DA2AD8, v12);
}

uint64_t sub_269C7E89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_269D9A8E0();
  v5[4] = sub_269D9A8D0();
  v7 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269C7E934, v7, v6);
}

uint64_t sub_269C7E934()
{
  v27 = v0;

  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_269D98250();
  __swift_project_value_buffer(v3, qword_280351208);
  v4 = v2;
  v5 = v1;
  v6 = sub_269D98230();
  v7 = sub_269D9AB80();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136446466;
    v11 = sub_269C7A678();
    v13 = sub_269C2EACC(v11, v12, &v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = v8;
    v15 = [v14 description];
    v16 = sub_269D9A630();
    v18 = v17;

    v19 = sub_269C2EACC(v16, v18, &v26);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_269C18000, v6, v7, "[%{public}s] updated sleep schedule model: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v10, -1, -1);
    MEMORY[0x26D652460](v9, -1, -1);
  }

  v21 = v0[2];
  v20 = v0[3];
  v22 = *(v21 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepScheduleModel);
  *(v21 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepScheduleModel) = v20;
  v23 = v20;

  sub_269C7DAE8();
  v24 = v0[1];

  return v24();
}

uint64_t sub_269C7ECB0()
{
  swift_getObjectType();
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v1 = sub_269D98250();
  __swift_project_value_buffer(v1, qword_280351208);
  v2 = v0;
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446466;
    v17 = sub_269D9B4D0();
    v18 = v7;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier], *&v2[OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_debugIdentifier + 8]);
    v8 = sub_269C2EACC(v17, v18, &v16);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    v9 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
    swift_beginAccess();
    if (v2[v9] == 4)
    {
      v10 = 0xE300000000000000;
      v11 = 7104878;
    }

    else
    {
      LOBYTE(v17) = v2[v9];
      v11 = sub_269D9A660();
      v10 = v12;
    }

    v13 = sub_269C2EACC(v11, v10, &v16);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] updated demo state: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  sub_269C7DAE8();
  v14 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  result = swift_beginAccess();
  byte_28034E9A0 = v2[v14];
  return result;
}

uint64_t sub_269C7EEF8@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_269C7EF4C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  swift_beginAccess();
  *(v1 + v3) = v2;
  return sub_269C7ECB0();
}

uint64_t (*sub_269C7EFA0(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_269C7F004;
}

uint64_t sub_269C7F01C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_269C7F060()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  swift_beginAccess();
  if (*(v0 + v1) != 4)
  {
    v4 = 4;
LABEL_11:
    *(v0 + v1) = v4;
    return sub_269C7ECB0();
  }

  *(v0 + v1) = 0;
  result = sub_269C7ECB0();
  v3 = *(v0 + v1);
  if (v3 <= 1)
  {
    if (*(v0 + v1))
    {
      v4 = 2;
      goto LABEL_11;
    }

LABEL_8:
    v4 = 1;
    goto LABEL_11;
  }

  if (v3 == 2)
  {
    v4 = 3;
    goto LABEL_11;
  }

  if (v3 == 3)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_269C7F0FC()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  v2 = 1;
  result = swift_beginAccess();
  v4 = *(v0 + v1);
  if (v4 <= 1)
  {
    if (*(v0 + v1))
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v2 = 3;
    goto LABEL_9;
  }

  if (v4 == 3)
  {
LABEL_9:
    *(v0 + v1) = v2;
    return sub_269C7ECB0();
  }

  return result;
}

uint64_t sub_269C7F184()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  v4 = 2;
  if (v3 <= 1)
  {
    if (*(v0 + v1))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    goto LABEL_9;
  }

  if (v3 == 2)
  {
    v4 = 1;
    goto LABEL_9;
  }

  if (v3 == 3)
  {
LABEL_9:
    *(v0 + v1) = v4;
    return sub_269C7ECB0();
  }

  return result;
}

void sub_269C7F204(uint64_t a1)
{
  v2 = v1;
  v4 = sub_269D977A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D975C0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C7FC6C(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C807A0(a1, v17, sub_269C7FC6C);
  v18 = type metadata accessor for Alarm(0);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    sub_269C80808(v17, sub_269C7FC6C);
  }

  else
  {
    v19 = *&v17[*(v18 + 20)];
    sub_269C80808(v17, type metadata accessor for Alarm);
    v20 = [v19 alarmID];

    sub_269D975A0();
    sub_269D97590();
    (*(v10 + 8))(v13, v9);
  }

  v21 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  sub_269C7B740(v8);
  v22 = sub_269D976E0();
  (*(v5 + 8))(v8, v4);
  v23 = [v21 hk:v22 morningIndexWithCalendar:?];

  v24 = objc_allocWithZone(MEMORY[0x277D62438]);
  v25 = sub_269D9A5F0();

  v26 = [v24 initWithWindDownAction:3 wasUsed:1 identifier:v25];

  v27 = [*(v2 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_sleepStore) analyticsManager];
  v28 = [v27 analyticsStore];

  sub_269C80920(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_269DA2A30;
  *(v29 + 32) = v26;
  sub_269C1B0B8(0, &unk_28034EA58, 0x277D62438);
  v30 = v26;
  v31 = sub_269D9A7D0();

  [v28 updateWindDownActions:v31 onMorningIndex:v23];
}

id LockScreenContentModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_269C7F734@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LockScreenContentModel(0);
  result = sub_269D98770();
  *a2 = result;
  return result;
}

uint64_t sub_269C7F774(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_269C7F86C;

  return v6(a1);
}

uint64_t sub_269C7F86C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_269C7F964(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_269C7FA58;

  return v5(v2 + 32);
}

uint64_t sub_269C7FA58()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t type metadata accessor for LockScreenContentModel(uint64_t a1)
{
  result = qword_28034EA68;
  if (!qword_28034EA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_269C7FBC8()
{
  result = qword_28034EA38;
  if (!qword_28034EA38)
  {
    sub_269C80920(255, &qword_28034DEF0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034EA38);
  }

  return result;
}

double block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_269C7FD34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269C80D04;

  return sub_269C7E89C(a1, v4, v5, v7, v6);
}

void sub_269C7FDFC(uint64_t a1)
{
  sub_269C80920(319, &qword_28034E9B8, &type metadata for LockScreenContentState, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_269C80920(319, &qword_28034E9D0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_269C41A14(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t objectdestroy_33Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C806E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269C71C08;

  return sub_269C7E89C(a1, v4, v5, v7, v6);
}

uint64_t sub_269C807A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269C80808(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269C80868(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269C80D04;

  return sub_269C7F964(a1, v4);
}

void sub_269C80920(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269C80970(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269C71C08;

  return sub_269C7F964(a1, v4);
}

uint64_t sub_269C80A28(uint64_t a1, uint64_t a2)
{
  sub_269C41A14(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C80A8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269C80D04;

  return sub_269C7F774(a1, v4);
}

unint64_t sub_269C80B44()
{
  result = qword_280351A50;
  if (!qword_280351A50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280351A50);
  }

  return result;
}

uint64_t sub_269C80BB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269C80C2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C80C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SleepScoreComponent.color.getter()
{
  SleepScoreComponent.uiColor.getter();

  return sub_269D99CC0();
}

id SleepScoreComponent.uiColor.getter()
{
  v1 = v0;
  v2 = sub_269D97AC0();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D62590])
  {
    v9 = [objc_opt_self() hk_sleepScoreDurationComponentColor];
  }

  else if (v8 == *MEMORY[0x277D62588])
  {
    v9 = [objc_opt_self() hk_sleepScoreBedtimeComponentColor];
  }

  else
  {
    v10 = *MEMORY[0x277D62580];
    v11 = v8;
    v12 = objc_opt_self();
    if (v11 != v10)
    {
      v14 = [v12 blackColor];
      (*(v3 + 8))(v7, v2);
      return v14;
    }

    v9 = [v12 hk_sleepScoreInterruptionsComponentColor];
  }

  return v9;
}

uint64_t OptionalContentGroup.init(showContent:content:elseContent:)@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, _BYTE *a7@<X8>, uint64_t a8)
{
  *a7 = a1;
  v12[0] = a4;
  v12[1] = a5;
  v12[2] = a6;
  v12[3] = a8;
  type metadata accessor for OptionalContentGroup(0, v12);
  v10 = a2();
  return a3(v10);
}

uint64_t OptionalContentGroup.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = a1[3];
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v35 - v10;
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v35 - v20;
  v22 = sub_269D992E0();
  v23 = *(v22 - 8);
  v36 = v22;
  v37 = v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v35 - v25;
  if (*v3 == 1)
  {
    v27 = a1[4];
    sub_269CE81C8();
    sub_269CE81C8();
    v28 = v14;
    v29 = a1[5];
    sub_269CE3A44(v17, v13, v5, v27, v29);
    v30 = *(v28 + 8);
    v30(v17, v13);
    v30(v21, v13);
  }

  else
  {
    v29 = a1[5];
    sub_269CE81C8();
    sub_269CE81C8();
    v31 = v35;
    v27 = a1[4];
    sub_269CE3B3C(v7, v13, v5, v27, v29);
    v32 = *(v31 + 8);
    v32(v7, v5);
    v32(v11, v5);
  }

  v39 = v27;
  v40 = v29;
  v33 = v36;
  swift_getWitnessTable();
  sub_269CE81C8();
  return (*(v37 + 8))(v26, v33);
}

uint64_t OptionalContentGroup<>.init(showContent:content:)@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  *a5 = a1;
  v7[0] = a3;
  v7[1] = MEMORY[0x277CE1428];
  v7[2] = a4;
  v7[3] = MEMORY[0x277CE1410];
  type metadata accessor for OptionalContentGroup(0, v7);
  return a2();
}

uint64_t sub_269C813DC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_269C81478(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 1) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *&a1[v15];
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v26 = &a1[v9 + 1] & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v26);
        }

        else
        {
          return (*(v7 + 48))((v26 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *a1;
        v24 = v23 >= 2;
        v25 = (v23 + 2147483646) & 0x7FFFFFFF;
        if (v24)
        {
          return (v25 + 1);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = a1[v15];
  if (!a1[v15])
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (a1[2] << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_269C816A4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 1) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_51:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 1] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

id ScheduleOccurrenceAlarmSnoozeTableViewCell.apply(_:)(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v2 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C60AF4();
  swift_dynamicCast();
  v3 = [v5 allowsSnooze];

  return [v1 setOn:v3 animated:1];
}

void sub_269C81C50()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v1 = sub_269D9A5F0();

  [v0 setDisplayText_];

  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_269CC7C58;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269CC7F6C;
  aBlock[3] = &block_descriptor_6;
  v3 = _Block_copy(aBlock);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  [v0 setBackgroundColor_];
}

id ScheduleOccurrenceAlarmSnoozeTableViewCell.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_269C81E7C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_background;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v8 = OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v9 = OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_elsewhereIndicator;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_isSelectedElsewhere] = 0;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_day] = a1;
  v10 = &v3[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_configuration];
  v11 = *(a3 + 48);
  *(v10 + 2) = *(a3 + 32);
  *(v10 + 3) = v11;
  *(v10 + 4) = *(a3 + 64);
  *(v10 + 10) = *(a3 + 80);
  v12 = *(a3 + 16);
  *v10 = *a3;
  *(v10 + 1) = v12;
  sub_269C835D8(a3, v29);
  v28.receiver = v3;
  v28.super_class = type metadata accessor for SleepScheduleDayPickerDay();
  v13 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel;
  v15 = *&v13[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel];
  v16 = v13;
  v17 = v15;
  NSDateFormatter.veryShortStandaloneWeekdaySymbol(for:)(a1);
  if (v18)
  {
    v19 = sub_269D9A5F0();
  }

  else
  {
    v19 = 0;
  }

  [v17 setText_];

  v20 = v16;
  NSDateFormatter.standaloneWeekdaySymbol(for:)(a1);
  if (v21)
  {
    v22 = sub_269D9A5F0();
  }

  else
  {
    v22 = 0;
  }

  [v20 setLargeContentTitle_];

  v23 = [v20 layer];
  [v23 addSublayer_];

  [v20 addSubview_];
  [v20 addSubview_];
  sub_269C82178();
  sub_269C822E0();
  sub_269C57F8C(0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_269D9EBE0;
  v25 = sub_269D983D0();
  v26 = MEMORY[0x277D74DB8];
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C30054();
  sub_269D9AD50();
  swift_unknownObjectRelease();

  sub_269C83618(a3);

  return v20;
}

id sub_269C82178()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel];
  v3 = &v0[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_configuration];
  v4 = (*&v0[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_configuration])();
  [v2 setFont_];

  v5 = v3[7];
  v6 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_elsewhereIndicator];
  [v6 setBackgroundColor_];
  [v6 setBounds_];
  v7 = [v6 layer];
  [v7 setCornerRadius_];

  [v1 setShowsLargeContentViewer_];
  [v1 setScalesLargeContentImage_];
  v8 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v1 addInteraction_];

  sub_269C82B24();

  return [v1 setNeedsLayout];
}

void sub_269C822E0()
{
  v1 = v0;
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBF0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000269DAEC70;
  v3 = NSStringForHKSPDay();
  v4 = sub_269D9A630();
  v6 = v5;

  *(inited + 48) = v4;
  *(inited + 56) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269DA0D60;
  *(v7 + 32) = sub_269D9A630();
  *(v7 + 40) = v8;
  *(v7 + 48) = 0x7065656C53;
  *(v7 + 56) = 0xE500000000000000;
  strcpy((v7 + 64), "ScheduleEditor");
  *(v7 + 79) = -18;
  v16 = v7;

  sub_269C49A1C(v9);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v10 = sub_269D9A520();
  v12 = v11;

  swift_setDeallocating();
  swift_arrayDestroy();
  v13 = sub_269D9A5F0();
  [v1 setAccessibilityIdentifier_];

  v14 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel];

  MEMORY[0x26D650930](0x747865547961442ELL, 0xE800000000000000);

  v15 = sub_269D9A5F0();

  [v14 setAccessibilityIdentifier_];
}

void sub_269C8253C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_269C82178();
  }

  else
  {
  }
}

id sub_269C826B4()
{
  v1 = v0;
  swift_getObjectType();
  v37.receiver = v0;
  v37.super_class = type metadata accessor for SleepScheduleDayPickerDay();
  objc_msgSendSuper2(&v37, sel_layoutSubviews);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = COERCE_DOUBLE(swift_slowAlloc());
    v33 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v33);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Layout subviews", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(*&v6);
    MEMORY[0x26D652460](*&v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v11 = &v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_configuration];
  v12 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_configuration + 72];
  v13 = [v1 traitCollection];
  [v10 scaledValueForValue:v13 compatibleWithTraitCollection:v12];
  v15 = v14;

  [v1 bounds];
  Height = CGRectGetHeight(v38);
  v17 = v11[10];
  [v1 bounds];
  Width = CGRectGetWidth(v39);
  if (v15 > v12)
  {
    v19 = v15;
  }

  else
  {
    v19 = v12;
  }

  v20 = Width - v17;
  if (v20 >= Height - v17)
  {
    v20 = Height - v17;
  }

  if (v19 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v22 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_background];
  v40.origin.x = 0.0;
  v40.origin.y = 0.0;
  v40.size.width = v21;
  v40.size.height = v21;
  v23 = CGPathCreateWithEllipseInRect(v40, 0);
  [v22 setPath_];

  v24 = [v22 path];
  [v22 setShadowPath_];

  [v22 setFrame_];
  [v1 bounds];
  sub_269D9AD20();
  [v22 frame];
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  sub_269D9AD30();
  [v22 setFrame_];
  v29 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel];
  [v29 sizeToFit];
  [v1 bounds];
  sub_269D9AD20();
  [v29 setCenter_];
  v30 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_elsewhereIndicator];
  [v1 bounds];
  MidX = CGRectGetMidX(v41);
  [v1 bounds];
  return [v30 setCenter_];
}

void sub_269C82B24()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v31);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Updating style", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  if ([v1 isSelected])
  {
    v10 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_background];
    v11 = [v1 tintColor];
    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    v13 = [v1 traitCollection];
    v14 = [v12 resolvedColorWithTraitCollection_];
    v15 = [v14 CGColor];

    [v10 setFillColor_];
    [*&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel] setTextColor_];
    [*&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_elsewhereIndicator] setHidden_];
    v16 = sub_269D9A5F0();
    v29 = [objc_opt_self() systemImageNamed_];

    isa = v29;
  }

  else
  {
    v18 = *&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_background];
    v19 = &v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_configuration];
    if (v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_isSelectedElsewhere] == 1)
    {
      v20 = *(v19 + 4);
      v21 = [v1 traitCollection];
      v22 = [v20 resolvedColorWithTraitCollection_];
      v23 = [v22 CGColor];

      [v18 setFillColor_];
      [*&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel] setTextColor_];
      [*&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_elsewhereIndicator] setHidden_];
      v32 = 28672;
    }

    else
    {
      v25 = *(v19 + 2);
      v26 = [v1 traitCollection];
      v27 = [v25 resolvedColorWithTraitCollection_];
      v28 = [v27 CGColor];

      [v18 setFillColor_];
      [*&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel] setTextColor_];
      [*&v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_elsewhereIndicator] setHidden_];
      v33 = 28672;
    }

    v24.value.super.isa = 0;
    isa = Symbol.uiImage(configuration:)(v24).super.isa;
  }

  v30 = isa;
  [v1 setLargeContentImage_];
}

id sub_269C833A8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SleepScheduleDayPickerDay();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_269C834D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_269C8351C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_269C83580()
{
  result = [objc_opt_self() _preferredFontForTextStyle_variant_maximumContentSizeCategory_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_269C83648()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_background;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v2 = OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_elsewhereIndicator;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_isSelectedElsewhere) = 0;
  sub_269D9B100();
  __break(1u);
}

id sub_269C8371C()
{
  result = [objc_opt_self() hk_sleepKeyColor];
  qword_280C0B4A0 = result;
  return result;
}

id static UIColor.primarySleep.getter()
{
  if (qword_280C0B498 != -1)
  {
    swift_once();
  }

  v1 = qword_280C0B4A0;

  return v1;
}

uint64_t sub_269C837B4()
{
  if (qword_280C0B498 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0B4A0;
  result = sub_269D99CC0();
  qword_280C0AFD8 = result;
  return result;
}

uint64_t sub_269C838F0(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_269D99CC0();
  *a3 = result;
  return result;
}

double sub_269C8395C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

double Color.computeContrastRatio(with:)(uint64_t a1, uint64_t a2)
{
  Color.linearRGB.getter(a2);
  v6 = v5 * 0.0722 + v3 * 0.2126 + v4 * 0.7152;
  Color.linearRGB.getter(a1);
  v10 = v9 * 0.0722 + v7 * 0.2126 + v8 * 0.7152;
  if (v6 > v10)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  if (v10 >= v6)
  {
    v10 = v6;
  }

  return (v11 + 0.05) / (v10 + 0.05);
}

void Color.linearRGB.getter(uint64_t a1)
{
  sub_269C83CE4();

  v1 = sub_269D9AD90();
  v2 = [v1 CGColor];

  v3 = sub_269D9AA70();
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = *(v3 + 16);
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 < 3)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);

  if (v5 <= 0.03928)
  {
    if (v6 <= 0.03928)
    {
LABEL_7:
      if (v7 <= 0.03928)
      {
        return;
      }

LABEL_11:
      pow((v7 + 0.055) / 1.055, 2.4);
      return;
    }
  }

  else
  {
    pow((v5 + 0.055) / 1.055, 2.4);
    if (v6 <= 0.03928)
    {
      goto LABEL_7;
    }
  }

  pow((v6 + 0.055) / 1.055, 2.4);
  if (v7 > 0.03928)
  {
    goto LABEL_11;
  }
}

void Color.rgb.getter(uint64_t a1)
{
  sub_269C83CE4();

  v1 = sub_269D9AD90();
  v2 = [v1 CGColor];

  v3 = sub_269D9AA70();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    if (v4 != 1)
    {
      if (v4 >= 3)
      {

        return;
      }

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  __break(1u);
}

unint64_t sub_269C83CE4()
{
  result = qword_280350120;
  if (!qword_280350120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280350120);
  }

  return result;
}

Swift::Void __swiftcall UITextView.adjustContentInsetForLineFragmentPadding()()
{
  v1 = [v0 textContainer];
  [v1 lineFragmentPadding];
  v3 = v2;

  [v0 setContentInset_];
}

id sub_269C83DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = &v3[OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_item];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_titleLabel;
  v8 = *MEMORY[0x277D76918];
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v10 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v8, 2, 0, 0, 0, 0, 0, 0, 1);
  [v9 setFont_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setLineBreakMode_];
  [v9 setNumberOfLines_];
  *&v3[v7] = v9;
  v11 = *MEMORY[0x277D769D0];
  v12 = [objc_opt_self() secondaryLabelColor];
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v14 = v13;
  if (v12)
  {
    [v13 setTextColor_];
  }

  v15 = OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_detailLabel;
  v16 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v11, 0, 0, 0, 0, 0, 0, 0, 1);
  [v14 setFont_];

  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setAdjustsFontForContentSizeCategory_];
  [v14 setLineBreakMode_];
  [v14 setNumberOfLines_];

  *&v4[v15] = v14;
  if (a3)
  {
    v17 = sub_269D9A5F0();
  }

  else
  {
    v17 = 0;
  }

  v22.receiver = v4;
  v22.super_class = type metadata accessor for AddScheduleTableViewCell();
  v18 = objc_msgSendSuper2(&v22, sel_initWithStyle_reuseIdentifier_, a1, v17);

  v19 = v18;
  [v19 setAccessoryType_];
  [v19 setSelectionStyle_];
  sub_269C84228();

  return v19;
}

void sub_269C84228()
{
  v1 = v0;
  sub_269C4E764();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269DA13E0;
  v3 = *&v0[OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_titleLabel];
  *(inited + 32) = v3;
  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_detailLabel];
  *(inited + 40) = v4;
  v5 = v3;
  v6 = v4;
  v7 = [v1 contentView];
  UIView.addSubviews(_:useAutoLayout:)(inited, 1);

  v8 = [v1 contentView];
  UIView.constraints(verticallyStackedViews:interitemSpacing:contentInsets:)(inited, 4.0, 11.0, 16.0, 11.0, 16.0);
  v10 = v9;

  v11 = [v1 contentView];
  v12 = [v11 heightAnchor];

  v13 = [v12 constraintGreaterThanOrEqualToConstant_];
  v14 = v13;
  MEMORY[0x26D650A10]();
  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_269D9A7F0();
  }

  sub_269D9A820();
  v15 = objc_opt_self();
  sub_269C1B0B8(0, &qword_28034E1C0, 0x277CCAAD0);
  v16 = sub_269D9A7D0();

  [v15 activateConstraints_];
}

id sub_269C8442C()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_item;
  swift_beginAccess();
  sub_269C63264(v0 + v1, v14);
  if (!v15)
  {
    sub_269C8492C(v14, &qword_28034E548, &qword_28034E550, MEMORY[0x277D10D48]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_8;
  }

  sub_269C3232C(0, &qword_28034E550, MEMORY[0x277D10D48]);
  sub_269C3232C(0, &unk_28034EBB0, &protocol descriptor for AddScheduleTableViewCellProviding);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_8;
  }

  if (!*(&v17 + 1))
  {
LABEL_8:
    sub_269C8492C(&v16, &qword_28034EBA8, &unk_28034EBB0, &protocol descriptor for AddScheduleTableViewCellProviding);
    [*(v0 + OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_titleLabel) setText_];
    return [*(v0 + OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_detailLabel) setText_];
  }

  sub_269C25520(&v16, v19);
  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_titleLabel);
  v4 = v20;
  v5 = v21;
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  (*(v5 + 8))(v4, v5);
  if (v6)
  {
    v7 = sub_269D9A5F0();
  }

  else
  {
    v7 = 0;
  }

  [v3 setText_];

  v9 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_detailLabel);
  v10 = v20;
  v11 = v21;
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  (*(v11 + 16))(v10, v11);
  if (v12)
  {
    v13 = sub_269D9A5F0();
  }

  else
  {
    v13 = 0;
  }

  [v9 setText_];

  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

id sub_269C84678(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AddScheduleTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_269C84744@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_item;
  swift_beginAccess();
  return sub_269C63264(v1 + v3, a1);
}

uint64_t sub_269C8479C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_item;
  swift_beginAccess();
  sub_269C6314C(a1, v1 + v3);
  swift_endAccess();
  sub_269C8442C();
  return sub_269C8492C(a1, &qword_28034E548, &qword_28034E550, MEMORY[0x277D10D48]);
}

id (*sub_269C84820(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_269C84884;
}

id sub_269C84884(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_269C8442C();
  }

  return result;
}

uint64_t sub_269C8492C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_269C84988(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_269C84988(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_269C3232C(255, a3, a4);
    v5 = sub_269D9AE60();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269C849E0()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_item;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_titleLabel;
  v4 = *MEMORY[0x277D76918];
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v6 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v4, 2, 0, 0, 0, 0, 0, 0, 1);
  [v5 setFont_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setAdjustsFontForContentSizeCategory_];
  [v5 setLineBreakMode_];
  [v5 setNumberOfLines_];
  *(v0 + v3) = v5;
  v7 = *MEMORY[0x277D769D0];
  v8 = [objc_opt_self() secondaryLabelColor];
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = v9;
  if (v8)
  {
    [v9 setTextColor_];
  }

  v11 = OBJC_IVAR____TtC13SleepHealthUI24AddScheduleTableViewCell_detailLabel;
  v12 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v7, 0, 0, 0, 0, 0, 0, 0, 1);
  [v10 setFont_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];

  *(v1 + v11) = v10;
  sub_269D9B100();
  __break(1u);
}

char *sub_269C84C5C(char a1)
{
  sub_269C86644(0, &unk_2803505A0, MEMORY[0x277D12720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v55 = &v52 - v5;
  v53 = v1;
  v1[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_message] = a1;
  v58 = MEMORY[0x277D84F90];
  sub_269D9B080();
  v56 = sub_269D9A8E0();
  v6 = objc_opt_self();
  v7 = 0;
  *&v54 = "eepScheduleClockCaption.swift";
  do
  {
    v11 = byte_287A9F6A0[v7 + 32];
    sub_269D9A8D0();
    sub_269D9A880();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v13 = [v6 secondaryLabelColor];
    [v12 setTextColor_];

    [v12 setNumberOfLines_];
    [v12 setLineBreakMode_];
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    result = [v12 font];
    if (!result)
    {
      goto LABEL_23;
    }

    v15 = result;
    result = [v12 textColor];
    if (!result)
    {
      goto LABEL_24;
    }

    v16 = result;
    if (v11)
    {
      sub_269C1B0B8(0, &unk_28034EBF0, 0x277CCA898);
      v17 = [v6 systemOrangeColor];
      v18 = sub_269D9ACA0();
      (*(*(v18 - 8) + 56))(v55, 1, 1, v18);
      sub_269C85F54(v11);
      v10 = sub_269D9AC90();
    }

    else
    {
      sub_269C85F54(0);
      v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v9 = sub_269D9A5F0();

      v10 = [v8 initWithString_];
    }

    ++v7;
    [v12 setAttributedText_];

    sub_269D9B050();
    sub_269D9B090();
    sub_269D9B0A0();
    sub_269D9B060();
  }

  while (v7 != 6);
  v19 = v53;
  *&v53[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_labels] = v58;
  v20 = type metadata accessor for SleepScheduleClockCaption();
  v57.receiver = v19;
  v57.super_class = v20;
  v21 = objc_msgSendSuper2(&v57, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_269C858CC(v21);
  sub_269C85AA0();
  v23 = *&v21[OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_labels];
  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_12;
    }

LABEL_19:
    LODWORD(v22) = 1148846080;
    [v21 setContentHuggingPriority:1 forAxis:v22];
    sub_269C86644(0, &qword_28034E1D0, sub_269C2FFF4, MEMORY[0x277D84560]);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_269D9EBF0;
    v48 = sub_269D983D0();
    v49 = MEMORY[0x277D74DB8];
    *(v47 + 32) = v48;
    *(v47 + 40) = v49;
    v50 = sub_269D98270();
    v51 = MEMORY[0x277D74BA0];
    *(v47 + 48) = v50;
    *(v47 + 56) = v51;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_269C30054();
    sub_269D9AD50();
    swift_unknownObjectRelease();

    return v21;
  }

  v24 = sub_269D9AF50();
  if (!v24)
  {
    goto LABEL_19;
  }

LABEL_12:
  result = objc_opt_self();
  v56 = result;
  if (v24 >= 1)
  {
    v55 = (v23 & 0xC000000000000001);

    v25 = 0;
    v54 = xmmword_269DA13F0;
    v53 = v24;
    do
    {
      if (v55)
      {
        v26 = MEMORY[0x26D651260](v25, v23);
      }

      else
      {
        v26 = *(v23 + 8 * v25 + 32);
      }

      ++v25;
      v27 = v26;
      [v21 addSubview_];
      sub_269C865F4(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v28 = swift_allocObject();
      *(v28 + 16) = v54;
      v29 = [v27 leadingAnchor];
      v30 = [v21 leadingAnchor];
      v31 = [v29 constraintEqualToAnchor_];

      *(v28 + 32) = v31;
      v32 = [v27 topAnchor];

      v33 = [v21 topAnchor];
      v34 = [v32 constraintGreaterThanOrEqualToAnchor_];

      *(v28 + 40) = v34;
      v35 = [v21 trailingAnchor];
      v36 = [v27 trailingAnchor];

      v37 = [v35 constraintEqualToAnchor_];
      *(v28 + 48) = v37;
      v38 = [v21 bottomAnchor];
      v39 = [v27 bottomAnchor];

      v40 = [v38 constraintGreaterThanOrEqualToAnchor_];
      *(v28 + 56) = v40;
      v41 = [v21 centerYAnchor];
      v42 = [v27 centerYAnchor];

      v43 = [v41 constraintEqualToAnchor_];
      *(v28 + 64) = v43;
      sub_269C1B0B8(0, &qword_28034E1C0, 0x277CCAAD0);
      v44 = sub_269D9A7D0();

      [v56 activateConstraints_];

      LODWORD(v45) = 1148846080;
      [v27 setContentHuggingPriority:1 forAxis:v45];
      LODWORD(v46) = 1132068864;
      [v27 setContentHuggingPriority:0 forAxis:v46];
    }

    while (v53 != v25);

    goto LABEL_19;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}