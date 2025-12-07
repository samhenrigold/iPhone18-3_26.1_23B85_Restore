uint64_t sub_1001F960C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v192 = a4;
  v191 = a3;
  v190 = a2;
  v216 = a1;
  v6 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  __chkstk_darwin(v6 - 8);
  v204 = &v161 - v7;
  v205 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  v203 = *(v205 - 8);
  __chkstk_darwin(v205);
  v202 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_1007701A0, &qword_100631A50);
  __chkstk_darwin(v9 - 8);
  v195 = &v161 - v10;
  v196 = sub_100058000(&qword_100775950, &qword_100635F80);
  v194 = *(v196 - 8);
  __chkstk_darwin(v196);
  v193 = &v161 - v11;
  v199 = sub_100058000(&qword_100775958, &unk_100635F88);
  v198 = *(v199 - 8);
  __chkstk_darwin(v199);
  v197 = &v161 - v12;
  v201 = type metadata accessor for TTRReminderDetailSubject();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v211 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v14 - 8);
  v188 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v189 = &v161 - v17;
  v18 = sub_100058000(&unk_100775960, &unk_100634F40);
  __chkstk_darwin(v18 - 8);
  v168 = &v161 - v19;
  v169 = type metadata accessor for TTRSection();
  v179 = *(v169 - 8);
  __chkstk_darwin(v169);
  v164 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v171 = *(v172 - 8);
  __chkstk_darwin(v172);
  v170 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v22 - 8);
  v162 = &v161 - v23;
  v185 = type metadata accessor for TTRSectionID();
  v187 = *(v185 - 8);
  __chkstk_darwin(v185);
  v163 = &v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v181 = &v161 - v26;
  __chkstk_darwin(v27);
  v182 = &v161 - v28;
  __chkstk_darwin(v29);
  v165 = (&v161 - v30);
  v166 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v177 = *(v166 - 8);
  __chkstk_darwin(v166);
  v176 = &v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v167 = *(v178 - 8);
  __chkstk_darwin(v178);
  v180 = &v161 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v34 - 8);
  v183 = &v161 - v35;
  v210 = type metadata accessor for TTRRemindersListViewModel.Item();
  v214 = *(v210 - 8);
  __chkstk_darwin(v210);
  v184 = &v161 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v212 = *(v37 - 8);
  v213 = v37;
  __chkstk_darwin(v37);
  v215 = &v161 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100058000(&qword_10076DF38, &qword_100631A08);
  __chkstk_darwin(v39 - 8);
  v161 = &v161 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v217 = &v161 - v42;
  v43 = sub_100058000(&qword_100775970, &qword_100632680);
  __chkstk_darwin(v43 - 8);
  v45 = &v161 - v44;
  v46 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = &v161 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v161 - v51;
  v53 = v4[17];
  v54 = v5[18];
  ObjectType = swift_getObjectType();
  v56 = *(v54 + 104);
  v207 = ObjectType;
  v208 = v53;
  v209 = v54;
  v186 = v56;
  v57 = v56(ObjectType, v54);
  if (!v57)
  {
    goto LABEL_7;
  }

  v58 = v57;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    (*(v47 + 56))(v45, 1, 1, v46);
    goto LABEL_6;
  }

  v206 = v5;
  v59 = *(v58 + 64);
  v60 = swift_getObjectType();
  (*(v59 + 32))(v216, v60, v59);
  swift_unknownObjectRelease();
  if ((*(v47 + 48))(v45, 1, v46) != 1)
  {
    (*(v47 + 32))(v52, v45, v46);
    if ((sub_1002313D4() & 1) == 0)
    {
      (*(v47 + 8))(v52, v46);
      swift_unknownObjectRelease();
      v61 = 0;
      v5 = v206;
      goto LABEL_8;
    }

    (*(v47 + 16))(v49, v52, v46);
    v90 = (*(v47 + 88))(v49, v46);
    v5 = v206;
    if (v90 != enum case for TTRRemindersListInteractorSectionsCapabilityTarget.list(_:))
    {
      if (v90 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.smartList(_:))
      {
        v61 = 0;
LABEL_43:
        v102 = *(v47 + 8);
        v102(v52, v46);
        swift_unknownObjectRelease();
        v102(v49, v46);
        goto LABEL_8;
      }

      if (v90 != enum case for TTRRemindersListInteractorSectionsCapabilityTarget.template(_:))
      {
        goto LABEL_71;
      }
    }

    v61 = 1;
    goto LABEL_43;
  }

  swift_unknownObjectRelease();
  v5 = v206;
LABEL_6:
  sub_1000079B4(v45, &qword_100775970, &qword_100632680);
LABEL_7:
  v61 = 0;
LABEL_8:
  v62 = v215;
  v63 = v216;
  v64 = v213;
  v65 = v214;
  v66 = v212;
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  result = (*(v66 + 88))(v62, v64);
  if (result != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:) && result != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:))
  {
    if (result == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      if (!v61)
      {
LABEL_14:
        v71 = type metadata accessor for TTRSectionLite();
        (*(*(v71 - 8) + 56))(v217, 1, 1, v71);
        v70 = v210;
LABEL_40:
        (*(v66 + 8))(v62, v64);
        goto LABEL_50;
      }

      (*(v209 + 208))(v207);
      swift_getObjectType();
      v68 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
      swift_unknownObjectRelease();
      swift_getObjectType();
      v219[0] = v68;
      v69 = v183;
      dispatch thunk of TTRTreeContentsQueryable.parent(of:)();
      swift_unknownObjectRelease();
      v70 = v210;
      if (v65[6](v69, 1, v210) == 1)
      {
        sub_1000079B4(v69, &qword_100772140, &qword_10062D9F0);
        goto LABEL_14;
      }

      v65[4](v184, v69, v70);
      v91 = v173;
      TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
      v92 = v174;
      v93 = v175;
      v94 = (*(v174 + 88))(v91, v175);
      if (v94 == enum case for TTRRemindersListViewModel.Item.SectionCasesItem.section(_:))
      {
        (*(v92 + 96))(v91, v93);
        v75 = v167;
        (*(v167 + 32))(v180, v91, v178);
        v95 = v176;
        TTRRemindersListViewModel.SectionHeader.id.getter();
        v96 = v166;
        v97 = (*(v177 + 88))(v95, v166);
        if (v97 != enum case for TTRRemindersListViewModel.SectionID.named(_:))
        {
          if (v97 == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
          {
            v151 = v176;
            (*(v177 + 96))(v176, v96);
            v152 = *v151;
            *v165 = v152;
            (*(v187 + 104))();
            v153 = v152;
            v154 = v162;
            TTRRemindersListViewModel.SectionHeader.title.getter();
            v155 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
            v156 = *(v155 - 8);
            if ((*(v156 + 48))(v154, 1, v155) == 1)
            {
              sub_1000079B4(v154, &unk_10076B050, &unk_100631DF0);
            }

            else
            {
              TTRRemindersListViewModel.SectionHeaderTitle.text.getter();
              (*(v156 + 8))(v154, v155);
            }

            v62 = v215;
            v159 = v161;
            TTRSectionLite.init(sectionID:displayName:canonicalName:)();

            (*(v167 + 8))(v180, v178);
            v70 = v210;
            (v65[1])(v184, v210);
            v160 = type metadata accessor for TTRSectionLite();
            (*(*(v160 - 8) + 56))(v159, 0, 1, v160);
            sub_100016588(v159, v217, &qword_10076DF38, &qword_100631A08);
            goto LABEL_40;
          }

          if (v97 != enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:) && v97 != enum case for TTRRemindersListViewModel.SectionID.date(_:) && v97 != enum case for TTRRemindersListViewModel.SectionID.day(_:) && v97 != enum case for TTRRemindersListViewModel.SectionID.month(_:) && v97 != enum case for TTRRemindersListViewModel.SectionID.year(_:) && v97 != enum case for TTRRemindersListViewModel.SectionID.eraAndYear(_:))
          {
            if (v97 == enum case for TTRRemindersListViewModel.SectionID.sectionless(_:))
            {
              (*(v177 + 8))(v176, v96);
              (*(v171 + 104))(v170, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v172);
              v157 = v217;
              TTRSectionLite.init(sectionType:)();
              (*(v75 + 8))(v180, v178);
              (v65[1])(v184, v70);
              v158 = type metadata accessor for TTRSectionLite();
              (*(*(v158 - 8) + 56))(v157, 0, 1, v158);
              goto LABEL_40;
            }

            if (v97 != enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:))
            {
              goto LABEL_69;
            }
          }
        }

        (*(v75 + 8))(v180, v178);
        (v65[1])(v184, v70);
        (*(v177 + 8))(v176, v96);
LABEL_39:
        v101 = type metadata accessor for TTRSectionLite();
        (*(*(v101 - 8) + 56))(v217, 1, 1, v101);
        goto LABEL_40;
      }

      if (v94 == enum case for TTRRemindersListViewModel.Item.SectionCasesItem.unknown(_:))
      {
        (v65[1])(v184, v70);
        goto LABEL_39;
      }

LABEL_72:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    if (result == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
    {
      return result;
    }

LABEL_71:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_72;
  }

  (*(v66 + 8))(v62, v64);
  if (!v61)
  {
    goto LABEL_33;
  }

  v72 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
  if (!v72)
  {
    goto LABEL_33;
  }

  v64 = v72;
  v73 = v186(v207, v209);
  if (!v73)
  {

LABEL_33:
    v98 = type metadata accessor for TTRSectionLite();
    (*(*(v98 - 8) + 56))(v217, 1, 1, v98);
    goto LABEL_34;
  }

  v74 = v73;
  v66 = v182;
  sub_10031F774(v64, v182);
  v75 = v187;
  v76 = v181;
  v77 = v185;
  (*(v187 + 16))(v181, v66, v185);
  v78 = (*(v75 + 88))(v76, v77);
  if (v78 == enum case for TTRSectionID.sectioned(_:))
  {
    (*(v75 + 96))(v76, v77);
    v75 = *v76;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v79 = *(v74 + 64);
      v80 = swift_getObjectType();
      (*(v79 + 16))(v80, v79);
      swift_unknownObjectRelease();
      v81 = v75;
      v82 = v168;
      v216 = v81;
      TTRSection.init(with:store:)();
      v83 = v179;
      v84 = v169;
      if ((*(v179 + 48))(v82, 1, v169) != 1)
      {
        v85 = v82;
        v86 = v164;
        (*(v83 + 32))(v164, v85, v84);
        TTRSection.sectionID.getter();
        TTRSection.displayName.getter();
        v87 = v217;
        TTRSectionLite.init(sectionID:displayName:canonicalName:)();

        swift_unknownObjectRelease();
        (*(v179 + 8))(v86, v84);
        (*(v187 + 8))(v66, v185);
        v88 = type metadata accessor for TTRSectionLite();
        (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
LABEL_34:
        v70 = v210;
        goto LABEL_50;
      }
    }

    else
    {
      v82 = v168;
      (*(v179 + 56))(v168, 1, 1, v169);
    }

    sub_1000079B4(v82, &unk_100775960, &unk_100634F40);
    if (qword_100767008 == -1)
    {
LABEL_46:
      v103 = type metadata accessor for Logger();
      sub_100003E30(v103, qword_1007741F0);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&_mh_execute_header, v104, v105, "Reminder list failed to fetch section in sectionsContext", v106, 2u);

        v107 = v75;
      }

      else
      {
        v107 = v104;
        v104 = v75;
      }

      v70 = v210;

      swift_unknownObjectRelease();
      (*(v187 + 8))(v66, v185);
      v108 = type metadata accessor for TTRSectionLite();
      v89.n128_f64[0] = (*(*(v108 - 8) + 56))(v217, 1, 1, v108);
      goto LABEL_50;
    }

LABEL_70:
    swift_once();
    goto LABEL_46;
  }

  v70 = v210;
  if (v78 != enum case for TTRSectionID.sectionless(_:))
  {
LABEL_69:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_70;
  }

  (*(v171 + 104))(v170, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v172);
  v99 = v217;
  TTRSectionLite.init(sectionType:)();
  swift_unknownObjectRelease();

  (*(v187 + 8))(v66, v77);
  v100 = type metadata accessor for TTRSectionLite();
  v89.n128_f64[0] = (*(*(v100 - 8) + 56))(v99, 0, 1, v100);
LABEL_50:
  v109 = sub_1004EEBA8(v63, v89);
  if (v109)
  {
    v111 = v109;
    v206 = v5;
    v216 = v110;
    sub_100058000(&qword_100772150, &unk_100635D00);
    v112 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_10062D400;
    v65[2](v113 + v112, v63, v70);
    v114 = v189;
    static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
    v115 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
    sub_10000794C(v114, v188, &unk_10076FCD0, &unk_1006304D0);
    v116 = type metadata accessor for TTRIRemindersListDetailPopoverAnchorProvider();
    swift_allocObject();

    v117 = TTRIRemindersListDetailPopoverAnchorProvider.init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)();
    TTRIRemindersListDetailPopoverAnchorProvider.temporarilyAssertCellInfoButtonVisibility()();
    v219[3] = v116;
    v219[4] = &protocol witness table for TTRIRemindersListDetailPopoverAnchorProvider;
    v219[0] = v117;
    sub_1000079B4(v114, &unk_10076FCD0, &unk_1006304D0);
    type metadata accessor for ReminderDetailModuleDelegate();
    v118 = swift_allocObject();
    swift_weakInit();
    *(v118 + 24) = 0;
    *(v118 + 32) = 0;
    swift_weakAssign();
    v119 = *(v118 + 24);
    v120 = *(v118 + 32);
    v121 = v191;
    v122 = v192;
    *(v118 + 24) = v191;
    *(v118 + 32) = v122;
    sub_10003BE34(v121, v122);
    sub_1000301AC(v119, v120);
    v123 = sub_10022DFF4(&qword_100775658, type metadata accessor for ReminderDetailModuleDelegate, &unk_100635C00);
    v124 = (v5 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler);
    v214 = (v5 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler);
    *v124 = v118;
    v124[1] = v123;
    swift_unknownObjectRelease();
    v218 = v111;
    sub_100058000(&qword_100775978, &qword_100635F98);
    swift_allocObject();
    v215 = v111;
    v213 = CurrentValueSubject.init(_:)();

    TTRReminderDetailSubject.init(reminderChangeItemSubject:)();
    v125 = v5[9];
    v212 = v5[10];
    v126 = v212;
    v218 = v216;
    v127 = swift_allocObject();
    v210 = v125;
    *(v127 + 16) = v125;
    *(v127 + 24) = v126;
    swift_unknownObjectRetain();
    v192 = static Subscribers.Demand.unlimited.getter();
    sub_100058000(&qword_100775980, &qword_100635FA0);
    sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
    sub_100058000(&qword_100775988, &qword_100635FA8);
    sub_10000E188(&qword_100775990, &qword_100775980, &qword_100635FA0, &protocol conformance descriptor for Future<A, B>);
    sub_10000E188(&unk_100775998, &qword_100775988, &qword_100635FA8, &protocol conformance descriptor for Future<A, B>);
    v128 = v193;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    v129 = [objc_opt_self() mainRunLoop];
    v218 = v129;
    v130 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v131 = v195;
    (*(*(v130 - 8) + 56))(v195, 1, 1, v130);
    sub_100003540(0, &qword_10076DFB0, NSRunLoop_ptr);
    sub_10000E188(&unk_1007759A8, &qword_100775950, &qword_100635F80, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    sub_1000072CC(&qword_10076DFC0, &qword_10076DFB0, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
    v132 = v197;
    v133 = v196;
    Publisher.receive<A>(on:options:)();
    sub_1000079B4(v131, &qword_1007701A0, &qword_100631A50);

    (*(v194 + 8))(v128, v133);
    v134 = swift_allocObject();
    v135 = v212;
    v136 = v213;
    v134[2] = v210;
    v134[3] = v135;
    v134[4] = v136;
    sub_10000E188(&qword_1007759B8, &qword_100775958, &unk_100635F88, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

    swift_unknownObjectRetain();
    v137 = v199;
    v138 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v198 + 8))(v132, v137);
    v139 = v206;
    *(v206 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_reminderChangeItemForShowDetailsCancellable) = v138;
    v140 = v139;

    v141 = v140[11];
    v142 = v203;
    v143 = v202;
    v144 = v205;
    (*(v203 + 104))(v202, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection.none(_:), v205);
    v145 = v204;
    v146 = (*(v209 + 608))(v207);
    v147 = __chkstk_darwin(v146);
    v148 = v211;
    *(&v161 - 8) = v141;
    *(&v161 - 7) = v148;
    *(&v161 - 6) = v143;
    *(&v161 - 5) = v147;
    v149 = v217;
    *(&v161 - 3) = v219;
    *(&v161 - 2) = v149;
    *(&v161 - 1) = v145;
    swift_unknownObjectRetain();
    firstly<A>(closure:)();

    swift_unknownObjectRelease();
    sub_1000079B4(v145, &qword_10076DF30, &qword_100631A00);
    (*(v142 + 8))(v143, v144);
    (*(v200 + 8))(v148, v201);
    sub_100004758(v219);
    v150 = v149;
  }

  else
  {
    v150 = v217;
  }

  return sub_1000079B4(v150, &qword_10076DF38, &qword_100631A08);
}

id sub_1001FB6DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v84 = a5;
  v83 = a4;
  v85 = a3;
  v90 = a2;
  v8 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  __chkstk_darwin(v8 - 8);
  v82 = v71 - v9;
  v10 = sub_100058000(&qword_10076DF38, &qword_100631A08);
  __chkstk_darwin(v10 - 8);
  v81 = v71 - v11;
  v87 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  v80 = *(v87 - 8);
  __chkstk_darwin(v87);
  v79 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TTRIReminderDetailStyle();
  v78 = *(v86 - 8);
  __chkstk_darwin(v86);
  v76 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for TTRReminderDetailSubject();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v71[1] = v15;
  v73 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v16 - 8);
  v72 = v71 - v17;
  v18 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v18 - 8);
  v20 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v71 - v22;
  v24 = type metadata accessor for TTRRemindersListViewModel.Item();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget(0);
  __chkstk_darwin(v28);
  v30 = (v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __chkstk_darwin(v31);
  v34 = v71 - v32;
  if (*(a1 + 16) == 1)
  {
    (*(v25 + 16))(v71 - v32, a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v24, v33);
    swift_storeEnumTagMultiPayload();
    sub_100233874(v34, v30, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = *v30;
      if ([*v30 presentationSourceItem])
      {
        swift_unknownObjectRetain();
        static TTRIPopoverAnchor.sourceItem(_:permittedArrowDirections:)();
        swift_unknownObjectRelease_n();
        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

      v60 = type metadata accessor for TTRIPopoverAnchor();
      (*(*(v60 - 8) + 56))(v23, v36, 1, v60);
      sub_100227684(v23, v98);

      sub_1000079B4(v23, &unk_10076FCD0, &unk_1006304D0);
    }

    else
    {
      (*(v25 + 32))(v27, v30, v24);
      v59 = sub_1002111BC(v27, v85, v83, v84, v98);
      (*(v25 + 8))(v27, v24, v59);
    }

    sub_10000794C(v98, &v91, &qword_100775748, &qword_100635DC0);
    if (v91)
    {
      v96[2] = v93;
      v96[3] = v94;
      v97 = v95;
      v96[0] = v91;
      v96[1] = v92;
      *(v6 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler) = v94;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v61 = type metadata accessor for TaskPriority();
      v62 = v72;
      (*(*(v61 - 8) + 56))(v72, 1, 1, v61);
      sub_100233AF0(v96, &v91);
      v63 = v88;
      v64 = v73;
      v65 = v89;
      (*(v88 + 16))(v73, v90, v89);
      type metadata accessor for MainActor();

      v66 = static MainActor.shared.getter();
      v67 = (*(v63 + 80) + 105) & ~*(v63 + 80);
      v68 = swift_allocObject();
      v69 = v91;
      *(v68 + 56) = v92;
      v70 = v94;
      *(v68 + 72) = v93;
      *(v68 + 88) = v70;
      *(v68 + 16) = v66;
      *(v68 + 24) = &protocol witness table for MainActor;
      *(v68 + 32) = v6;
      *(v68 + 104) = v95;
      *(v68 + 40) = v69;
      (*(v63 + 32))(v68 + v67, v64, v65);
      sub_10009E31C(0, 0, v62, &unk_100635F70, v68);

      sub_100233BFC(v96);
      sub_1000079B4(v98, &qword_100775748, &qword_100635DC0);
      return sub_10022E05C(v34, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
    }

    else
    {
      sub_1000079B4(v98, &qword_100775748, &qword_100635DC0);
      sub_10022E05C(v34, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
      return sub_1000079B4(&v91, &qword_100775748, &qword_100635DC0);
    }
  }

  else
  {
    result = sub_1002110D0(a1);
    if (result)
    {
      v38 = result;
      v39 = v6;
      type metadata accessor for BatchDueDatePickerDetailModuleDelegate();
      v40 = swift_allocObject();
      swift_weakInit();
      swift_unknownObjectWeakInit();
      swift_weakAssign();
      swift_unknownObjectWeakAssign();
      v41 = v83;
      v40[4] = a1;
      v40[5] = v41;
      v42 = v84;
      v40[6] = v84;
      v43 = sub_10022DFF4(&unk_100775940, type metadata accessor for BatchDueDatePickerDetailModuleDelegate, &unk_100635BB8);
      v44 = (v39 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler);
      *v44 = v40;
      v44[1] = v43;

      sub_10003BE34(v41, v42);
      swift_unknownObjectRelease();
      sub_10000794C(v85, v20, &unk_10076FCD0, &unk_1006304D0);
      v45 = type metadata accessor for TTRIRemindersListDetailPopoverAnchorProvider();
      swift_allocObject();

      v46 = TTRIRemindersListDetailPopoverAnchorProvider.init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)();
      TTRIRemindersListDetailPopoverAnchorProvider.temporarilyAssertCellInfoButtonVisibility()();
      v83 = *(v39 + 88);
      v47 = *v44;
      v84 = v44[1];
      v98[3] = v45;
      v98[4] = &protocol witness table for TTRIRemindersListDetailPopoverAnchorProvider;
      v98[0] = v46;
      swift_unknownObjectRetain();

      v85 = v38;
      v48 = v74;
      TTRReminderDetailSubject.init(reminderChangeItem:)();
      v49 = v76;
      *v76 = 1;
      v50 = v78;
      (*(v78 + 104))(v49, enum case for TTRIReminderDetailStyle.quickBarDueDatePicker(_:), v86);
      v51 = v79;
      (*(v88 + 16))(v79, v90, v89);
      v52 = v80;
      (*(v80 + 104))(v51, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection.dueDate(_:), v87);
      v53 = type metadata accessor for TTRSectionLite();
      v54 = v81;
      (*(*(v53 - 8) + 56))(v81, 1, 1, v53);
      v55 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
      v56 = v82;
      v57 = (*(*(v55 - 8) + 56))(v82, 1, 1, v55);
      __chkstk_darwin(v57);
      v58 = v83;
      v71[-12] = v48;
      v71[-11] = v58;
      v71[-10] = v51;
      v71[-9] = v47;
      v71[-8] = v84;
      v71[-7] = v49;
      LOBYTE(v71[-6]) = 0;
      v71[-5] = 1;
      v71[-4] = v54;
      v71[-3] = v56;
      v71[-2] = v98;
      LOWORD(v71[-1]) = 0;
      firstly<A>(closure:)();

      swift_unknownObjectRelease();

      sub_1000079B4(v56, &qword_10076DF30, &qword_100631A00);
      sub_1000079B4(v54, &qword_10076DF38, &qword_100631A08);
      (*(v52 + 8))(v51, v87);
      (*(v50 + 8))(v49, v86);
      (*(v75 + 8))(v48, v77);
      return sub_100004758(v98);
    }
  }

  return result;
}

void sub_1001FC3E0(uint64_t a1, void *a2, __n128 a3)
{
  v96 = a2;
  v94 = type metadata accessor for TTRIPopoverAnchor();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v85 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v86 = &v84 - v7;
  v8 = sub_100058000(&unk_10076DF90, &qword_100631A48);
  __chkstk_darwin(v8 - 8);
  v90 = &v84 - v9;
  v91 = type metadata accessor for TTRIHashtagEditorPresentationStyle();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v11 - 8);
  v92 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v95 = &v84 - v14;
  __chkstk_darwin(v15);
  v87 = &v84 - v16;
  v17 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v3;
  v26 = *(v3[13] + 72);
  ObjectType = swift_getObjectType();
  (*(v26 + 16))(ObjectType, v26);
  LODWORD(v18) = v20[*(v18 + 52)];
  sub_10022E05C(v20, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v18 == 1)
  {
    (*(v22 + 104))(v24, enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:), v21);
    return;
  }

  TTRRemindersListPresenterCapabilityCore.paramsForBatchAddHashtag(_:fetchAllHashtagLabels:)();
  v28 = (*(v22 + 88))(v24, v21);
  if (v28 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.allowed(_:))
  {
    (*(v22 + 96))(v24, v21);
    v20 = *(v24 + 1);
    v29 = v24[16];

    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = v3[20];
      v31 = swift_getObjectType();
      v104 = type metadata accessor for TTRIRemindersCommonPresenter(0);
      v105 = &off_10071AA88;
      aBlock[0] = v3;
      v32 = *(v30 + 8);

      v33 = v32(aBlock, v31, v30);
      swift_unknownObjectRelease();
      sub_100004758(aBlock);
      v34 = *(a1 + 16);
      if (v34 == 1)
      {
        v35 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
        sub_1002111BC(a1 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v96, 0, 0, aBlock);
        sub_10000794C(aBlock, v97, &qword_100775748, &qword_100635DC0);
        if (*&v97[0])
        {
          v99[0] = v97[0];
          v99[1] = v97[1];
          v100 = v97[2];
          v101 = v97[3];
          v102 = v98;
          v36 = *&v97[0];
          type metadata accessor for SingleItemHashtagEditorModuleDelegate();
          v37 = swift_allocObject();
          swift_weakInit();
          swift_weakAssign();
          v37[3] = v36;
          v38 = sub_10022DFF4(&qword_100775938, type metadata accessor for SingleItemHashtagEditorModuleDelegate, &unk_100635B10);
          v39 = (v25 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentHashtagEditorModuleEventHandler);
          *v39 = v37;
          v39[1] = v38;
          v40 = v36;

          swift_unknownObjectRelease();
          v41 = v25[11];
          v42 = v100;
          v43 = sub_10000C36C(v99 + 1, v100);
          sub_100138804(v40, 1, v37, v38, v33, v43, v41, v42, v44, *(&v42 + 1));

          sub_1000079B4(aBlock, &qword_100775748, &qword_100635DC0);
          sub_100233BFC(v99);
          return;
        }

        sub_1000079B4(aBlock, &qword_100775748, &qword_100635DC0);
        v81 = v97;
        v82 = &qword_100775748;
        v83 = &qword_100635DC0;
        goto LABEL_28;
      }

      sub_10000794C(v96, v87, &unk_10076FCD0, &unk_1006304D0);
      v84 = type metadata accessor for TTRIRemindersListDetailPopoverAnchorProvider();
      swift_allocObject();

      v49 = TTRIRemindersListDetailPopoverAnchorProvider.init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)();
      TTRIRemindersListDetailPopoverAnchorProvider.temporarilyAssertCellInfoButtonVisibility()();
      type metadata accessor for BatchHashtagEditorModuleDelegate();
      v50 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      *(v50 + 24) = a1;
      *(v50 + 32) = v29;
      v51 = sub_10022DFF4(&qword_100775930, type metadata accessor for BatchHashtagEditorModuleDelegate, &unk_100635B40);
      v52 = (v3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentHashtagEditorModuleEventHandler);
      *v52 = v50;
      v52[1] = v51;

      swift_unknownObjectRelease();
      v87 = v3[11];
      *&v99[0] = v49;
      type metadata accessor for TTRIHashtagEditorAssembly();
      v53 = v88;
      *v88 = v34;
      v54 = v89;
      v55 = v91;
      (*(v89 + 104))(v53, enum case for TTRIHashtagEditorPresentationStyle.batchEdit(_:), v91);
      v56 = type metadata accessor for TTRHashtagEditorModuleState();
      v57 = v90;
      (*(*(v56 - 8) + 56))(v90, 1, 1, v56);

      v96 = v33;
      v58 = static TTRIHashtagEditorAssembly.createViewController(style:reminderChangeItem:previousModuleState:delegate:undoManager:)();
      sub_1000079B4(v57, &unk_10076DF90, &qword_100631A48);
      (*(v54 + 8))(v53, v55);
      swift_unknownObjectRelease();
      v59 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v58];
      v60 = v95;
      dispatch thunk of TTRIRemindersListDetailPopoverAnchorProviding.acquirePopoverAnchor()();

      v61 = v92;
      sub_10000794C(v60, v92, &unk_10076FCD0, &unk_1006304D0);
      v62 = v93;
      v63 = v94;
      if ((*(v93 + 48))(v61, 1, v94) == 1)
      {
        v64 = v59;
        sub_1000079B4(v61, &unk_10076FCD0, &unk_1006304D0);
      }

      else
      {
        v89 = v49;
        v65 = v62;
        v91 = v20;
        v90 = v50;
        v66 = *(v62 + 32);
        v88 = v58;
        v67 = v86;
        v66(v86, v61, v63);
        v92 = v59;
        UIPopoverArrowDirection.addingRTLFallback()();
        v68 = v85;
        TTRIPopoverAnchor.withPermittedArrowDirectionsIfNil(_:)();
        v69 = v60;
        v70 = *(v65 + 8);
        v70(v67, v63);
        v66(v67, v68, v63);
        v20 = v91;
        UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
        v71 = v67;
        v58 = v88;
        v70(v71, v63);
        v60 = v69;
      }

      v72 = [v59 presentationController];

      if (v72)
      {
        [v72 setDelegate:v58];
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v74 = Strong;
        v75 = [Strong presentedViewController];
        if (v75)
        {
          v76 = v75;
          v77 = swift_allocObject();
          *(v77 + 16) = v74;
          *(v77 + 24) = v59;
          *(v77 + 32) = 1;
          v105 = sub_10023A490;
          v106 = v77;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10001047C;
          v104 = &unk_10071C2F0;
          v78 = _Block_copy(aBlock);
          v79 = v59;
          v80 = v74;

          [v76 dismissViewControllerAnimated:1 completion:v78];

          _Block_release(v78);

LABEL_27:
          v82 = &unk_10076FCD0;
          v83 = &unk_1006304D0;
          v81 = v60;
LABEL_28:
          sub_1000079B4(v81, v82, v83);
          return;
        }

        [v74 presentViewController:v59 animated:1 completion:0];
      }

      else
      {
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (v28 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:))
    {
      return;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100003E30(v45, qword_1007741F0);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "TTRIRemindersCommonPresenter#showHashtagsEditor: missing undoManager", v48, 2u);
  }
}

objc_class *sub_1001FD138(int a1)
{
  LODWORD(v162) = a1;
  v151 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v145 = &v142 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v2;
  __chkstk_darwin(v3);
  v150 = &v142 - v4;
  v5 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v153 = *(v5 - 8);
  v154 = v5;
  __chkstk_darwin(v5);
  v152 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v7 - 8);
  v158 = &v142 - v8;
  v9 = type metadata accessor for TTRListType.SortingCapability();
  v157 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v12 - 8);
  v14 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v142 - v16;
  __chkstk_darwin(v18);
  v20 = &v142 - v19;
  v21 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  __chkstk_darwin(v21);
  v23 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for TTRRemindersListLayout();
  v159 = *(v156 - 8);
  v24 = *(v159 + 64);
  __chkstk_darwin(v156);
  v143 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v148 = &v142 - v26;
  __chkstk_darwin(v27);
  v146 = &v142 - v28;
  __chkstk_darwin(v29);
  v147 = &v142 - v30;
  __chkstk_darwin(v31);
  v155 = &v142 - v32;
  __chkstk_darwin(v33);
  v35 = &v142 - v34;
  __chkstk_darwin(v36);
  v160 = &v142 - v37;
  v161 = v1;
  v38 = *(v1 + 136);
  v39 = *(v1 + 144);
  v163 = v38;
  ObjectType = swift_getObjectType();
  if (v162 > 3u)
  {
    if (v162 <= 5u)
    {
      if (v162 == 4)
      {
        (*(v39 + 584))(ObjectType, v39);
        v50 = v157;
        if ((*(v157 + 88))(v11, v9) == enum case for TTRListType.SortingCapability.supported(_:))
        {
          return sub_1001F46C8();
        }

        (*(v50 + 8))(v11, v9);
        return 0;
      }

      v67 = ObjectType;
      if ((*(v39 + 32))(ObjectType, v39))
      {
        v68 = *(v39 + 40);
        if (v68(v67, v39) && (swift_getObjectType(), v69 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter(), swift_unknownObjectRelease(), (v69 & 1) != 0))
        {
          static TTRLocalizableStrings.RemindersList.hideCompletedRemindersButtonText.getter();
        }

        else
        {
          static TTRLocalizableStrings.RemindersList.showCompletedRemindersButtonText.getter();
        }

        if (v68(v67, v39))
        {
          swift_getObjectType();
          dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
          swift_unknownObjectRelease();
        }

        v94 = String._bridgeToObjectiveC()();

        [objc_opt_self() _systemImageNamed:v94];

        sub_100003540(0, &qword_10076BA60, UIAction_ptr);
        swift_allocObject();
        swift_weakInit();
        return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      }

      return 0;
    }

    if (v162 == 6)
    {
      if (!(*(v39 + 96))(ObjectType, v39))
      {
        v92 = type metadata accessor for TTRListOrCustomSmartList();
        v93 = v158;
        (*(*(v92 - 8) + 56))(v158, 1, 1, v92);
        v54 = &unk_10076DF20;
        v55 = &unk_10063BD50;
        v56 = v93;
        goto LABEL_44;
      }

      swift_getObjectType();
      v57 = v158;
      dispatch thunk of TTRRemindersListDataModelSourceTemplateContextType.sourceListForSavingAsTemplate.getter();
      swift_unknownObjectRelease();
      v58 = type metadata accessor for TTRListOrCustomSmartList();
      (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
      sub_1000079B4(v57, &unk_10076DF20, &unk_10063BD50);
      sub_100003540(0, &qword_10076BA60, UIAction_ptr);
      v59._object = 0x80000001006784F0;
      v60._countAndFlagsBits = 0xD00000000000002BLL;
      v60._object = 0x8000000100678510;
      v59._countAndFlagsBits = 0xD000000000000010;
      TTRLocalizedString(_:comment:)(v59, v60);
      v61 = String._bridgeToObjectiveC()();
      [objc_opt_self() _systemImageNamed:v61];

      swift_allocObject();
      swift_weakInit();
    }

    else
    {
      (*(v39 + 152))(ObjectType, v39);
      v72 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
      v73 = *(v72 - 8);
      if ((*(v73 + 48))(v17, 1, v72) == 1)
      {
        v54 = &unk_10078A380;
        v55 = &qword_10062DE60;
        v56 = v17;
        goto LABEL_44;
      }

      v88 = TTRRemindersListViewModel.ListInfo.canBePrinted.getter();
      (*(v73 + 8))(v17, v72);
      if ((v88 & 1) == 0)
      {
        return 0;
      }

      sub_100003540(0, &qword_10076BA60, UIAction_ptr);
      v89._countAndFlagsBits = 0x746E697250;
      v90._countAndFlagsBits = 0xD000000000000020;
      v90._object = 0x8000000100678560;
      v89._object = 0xE500000000000000;
      TTRLocalizedString(_:comment:)(v89, v90);
      v91 = String._bridgeToObjectiveC()();
      [objc_opt_self() _systemImageNamed:v91];

      swift_allocObject();
      swift_weakInit();
    }

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  if (v162 > 1u)
  {
    if (v162 != 2)
    {
      v70 = *(v39 + 128);
      v71 = ObjectType;
      result = v70(ObjectType, v39);
      if (!result)
      {
        return result;
      }

      swift_unknownObjectRelease();
      static TTRCommonAsset.Image.autoCategorizationIcon.getter();
      static TTRLocalizableStrings.RemindersList.autoCategorizationTitle.getter();
      if (v70(v71, v39))
      {
        swift_getObjectType();
        dispatch thunk of TTRRemindersListDataModelSourceAutoCategorizationContextType.shouldAutoCategorizeItems.getter();
        swift_unknownObjectRelease();
      }

      sub_100003540(0, &qword_10076BA60, UIAction_ptr);
      swift_allocObject();
      swift_weakInit();
      return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    }

    v51 = ObjectType;
    (*(v39 + 152))(ObjectType, v39);
    v52 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v14, 1, v52) == 1)
    {
      v54 = &unk_10078A380;
      v55 = &qword_10062DE60;
      v56 = v14;
LABEL_44:
      sub_1000079B4(v56, v54, v55);
      return 0;
    }

    v74 = v152;
    TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
    (*(v53 + 8))(v14, v52);
    v75 = TTRRemindersListViewModel.SupportsEditableSections.isSupported.getter();
    (*(v153 + 8))(v74, v154);
    if ((v75 & 1) == 0)
    {
      return 0;
    }

    result = (*(v39 + 104))(v51, v39);
    if (!result)
    {
      return result;
    }

    v76 = result;
    v77 = v161;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v78 = *(v77 + 160);
      v79 = swift_getObjectType();
      v164[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
      v164[4] = &off_10071AA88;
      v164[0] = v77;
      v80 = *(v78 + 8);

      v81 = v80(v164, v79, v78);
      swift_unknownObjectRelease();
      sub_100004758(v164);
      v82 = v150;
      (*(v39 + 192))(v51, v39);
      if ((TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter() & 1) == 0)
      {
        v113 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
        v85 = v156;
        if ((v113 & 1) == 0 || (TTRRemindersListSectionMenuCapabilities.canSupportEditSections.getter() & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_60;
      }

      v83 = TTRRemindersListSectionMenuCapabilities.canSupportEditSections.getter();
      v85 = v156;
      if (v83)
      {
        v86 = sub_1002E2EA8(v84)[2];

        if (TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter())
        {
          v87 = TTRRemindersListSectionMenuCapabilities.canSupportEditSections.getter();
          if (v86 >= 2)
          {
            if ((v87 & 1) == 0)
            {
              goto LABEL_70;
            }

LABEL_60:
            v114 = (*(v39 + 112))(v51, v39);
            v162 = v76;
            if (v114)
            {
              swift_getObjectType();
              v115 = v143;
              dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
              swift_unknownObjectRelease();
              v116 = v148;
              (*(v159 + 32))(v148, v115, v85);
            }

            else
            {
              v116 = v148;
              (*(v159 + 104))(v148, enum case for TTRRemindersListLayout.list(_:), v85);
            }

            v125 = swift_allocObject();
            swift_weakInit();
            v126 = v149;
            v127 = v145;
            v128 = v151;
            (*(v149 + 16))(v145, v82, v151);
            v129 = (*(v126 + 80) + 24) & ~*(v126 + 80);
            v130 = (v144 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            *(v131 + 16) = v125;
            (*(v126 + 32))(v131 + v129, v127, v128);
            *(v131 + v130) = v81;

            v163 = v81;
            isa = sub_10049CB50(v116, sub_100235E4C, v131).super.super.isa;
            sub_100003540(0, &unk_10076B890, UIMenu_ptr);
            v133 = static TTRLocalizableStrings.RemindersList.manageSectionsActionText(listLayout:)();
            v135 = v134;
            v136 = static TTRCommonAsset.Image.sectionIcon.getter();
            sub_100058000(&qword_10076B780, &qword_10062D7C0);
            v137 = swift_allocObject();
            *(v137 + 16) = xmmword_10062D420;
            *(v137 + 32) = isa;
            v138 = isa;
            v139._countAndFlagsBits = v133;
            v139._object = v135;
            v166.value.super.isa = v136;
            v166.is_nil = 0;
            v140 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v139, 0, v166, 0, 0xFFFFFFFFFFFFFFFFLL, v137, v141).super.super.isa;

            swift_unknownObjectRelease();

            (*(v159 + 8))(v148, v156);
            (*(v126 + 8))(v150, v151);

            return v140;
          }
        }

        else if (v86 > 1)
        {
LABEL_70:
          swift_unknownObjectRelease();

          (*(v149 + 8))(v82, v151);
          return 0;
        }
      }

      else if (TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter())
      {
        TTRRemindersListSectionMenuCapabilities.canSupportEditSections.getter();
      }

      v117 = v161;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v118 = *(v117 + 24);
        v119 = swift_getObjectType();
        v120 = (*(v118 + 24))(v119, v118);
        swift_unknownObjectRelease();
        if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) != 0 && (v120 & 1) == 0)
        {
          (*(v149 + 8))(v82, v151);

          goto LABEL_69;
        }
      }

      else
      {
        static REMFeatureFlags.isSolariumEnabled.getter();
      }

      if ((*(v39 + 112))(v51, v39))
      {
        swift_getObjectType();
        v121 = v146;
        dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
        swift_unknownObjectRelease();
        v122 = v159;
        v123 = v147;
        (*(v159 + 32))(v147, v121, v85);
      }

      else
      {
        v122 = v159;
        v123 = v147;
        (*(v159 + 104))(v147, enum case for TTRRemindersListLayout.list(_:), v85);
      }

      sub_100003540(0, &qword_10076BA60, UIAction_ptr);
      static TTRLocalizableStrings.Sections.newSectionActionText(listLayout:)();
      (*(v122 + 8))(v123, v85);
      static TTRCommonAsset.Image.addSectionIcon.getter();
      swift_allocObject();
      swift_weakInit();

      v124 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

      swift_unknownObjectRelease();
      (*(v149 + 8))(v82, v151);

      return v124;
    }

LABEL_69:
    swift_unknownObjectRelease();
    return 0;
  }

  if (v162)
  {
    v62 = ObjectType;
    (*(v39 + 16))(ObjectType, v39);
    v63 = v23[*(v21 + 52)];
    sub_10022E05C(v23, type metadata accessor for TTRRemindersListEditingInteractionOptions);
    if ((v63 & 1) == 0)
    {
      v64 = String._bridgeToObjectiveC()();
      [objc_opt_self() _systemImageNamed:v64];

      (*(v39 + 152))(v62, v39);
      v65 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
      v66 = *(v65 - 8);
      if ((*(v66 + 48))(v20, 1, v65) == 1)
      {
        sub_1000079B4(v20, &unk_10078A380, &qword_10062DE60);
      }

      else
      {
        v108 = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
        (*(v66 + 8))(v20, v65);
        if (v108)
        {
          v109 = 0x49207463656C6553;
          v110 = 0xEC000000736D6574;
          v111 = 0xD00000000000002FLL;
          v112 = 0x8000000100678600;
LABEL_55:
          TTRLocalizedString(_:comment:)(*&v109, *&v111);
          sub_100003540(0, &qword_10076BA60, UIAction_ptr);
          swift_allocObject();
          swift_weakInit();
          return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        }
      }

      v110 = 0x80000001006785B0;
      v111 = 0xD00000000000002BLL;
      v112 = 0x80000001006785D0;
      v109 = 0xD000000000000010;
      goto LABEL_55;
    }

    return 0;
  }

  result = (*(v39 + 112))(ObjectType, v39);
  if (result)
  {
    swift_getObjectType();
    v42 = v160;
    TTRRemindersListDataModelSourceLayoutContextType.nextSelectableLayout.getter();
    v43 = v159;
    v44 = *(v159 + 16);
    v45 = v156;
    v44(v35, v42, v156);
    v46 = (*(v43 + 88))(v35, v45);
    if (v46 == enum case for TTRRemindersListLayout.list(_:))
    {
      v47 = String._bridgeToObjectiveC()();
      v48 = [objc_opt_self() _systemImageNamed:v47];

      v49 = 0xEC0000007473694CLL;
LABEL_51:
      v163 = v48;
      v95._countAndFlagsBits = 0x2073612077656956;
      v96._countAndFlagsBits = 0xD00000000000001FLL;
      v96._object = 0x8000000100678630;
      v95._object = v49;
      TTRLocalizedString(_:comment:)(v95, v96);
      sub_100003540(0, &qword_10076BA60, UIAction_ptr);
      v97 = swift_allocObject();
      swift_weakInit();
      v98 = v155;
      v44(v155, v160, v45);
      v99 = v159;
      v100 = (*(v159 + 80) + 24) & ~*(v159 + 80);
      v101 = swift_allocObject();
      *(v101 + 16) = v97;
      (*(v99 + 32))(v101 + v100, v98, v45);
      v102 = v163;
      v103 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      sub_100003540(0, &unk_10076B890, UIMenu_ptr);
      sub_100058000(&qword_10076B780, &qword_10062D7C0);
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_10062D420;
      *(v104 + 32) = v103;
      v105 = v103;
      v106._countAndFlagsBits = 0;
      v106._object = 0xE000000000000000;
      v165.value.super.isa = 0;
      v165.is_nil = 0;
      v107 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v106, 0, v165, 1, 0xFFFFFFFFFFFFFFFFLL, v104, v141).super.super.isa;

      swift_unknownObjectRelease();
      (*(v99 + 8))(v160, v45);
      return v107;
    }

    if (v46 == enum case for TTRRemindersListLayout.columns(_:))
    {
      v49 = 0xEF736E6D756C6F43;
      v48 = static TTRCommonAsset.Image.columnsIcon.getter();
      goto LABEL_51;
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001FE94C(uint64_t a1, unsigned __int8 a2, void *a3, __n128 a4)
{
  v50 = a3;
  v6 = a2;
  v7 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchAssignParams();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchFlagParams();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  __chkstk_darwin(v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams();
  v44 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&qword_100775920, &qword_100635F60);
  v19 = __chkstk_darwin(v17 - 8);
  v20 = &v43 - v18;
  v21 = v6 >= 2;
  v22 = a1;
  if (!v21)
  {
    return v22;
  }

  v23 = *(v4 + 104);
  if (v22 <= 3)
  {
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        sub_100241BB8(v50);
      }

      else
      {
        sub_10024D72C(v50, v19);
      }
    }

    else if (v22)
    {
      if (sub_10024DEE4(v50))
      {
      }
    }

    else
    {
      sub_10025B7B4(v50, &v43 - v18);
      v24 = sub_100058000(&qword_100775928, &qword_100635F68);
      (*(*(v24 - 8) + 48))(v20, 1, v24);
      sub_1000079B4(v20, &qword_100775920, &qword_100635F60);
    }

    return v22;
  }

  if (v22 > 5)
  {
    if (v22 != 6)
    {
      v31 = *(v23 + 72);
      ObjectType = swift_getObjectType();
      (*(v31 + 16))(ObjectType, v31);
      LODWORD(v31) = v13[*(v11 + 44)];
      sub_10022E05C(v13, type metadata accessor for TTRRemindersListEditingInteractionOptions);
      if (v31 == 1)
      {
        (*(v48 + 104))(v46, enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.disallowed(_:), v49);
      }

      else
      {
        v38 = v46;
        TTRRemindersListPresenterCapabilityCore.paramsForBatchAssign(_:pendingMoveTargetListForHostingReminder:)();
        v40 = v48;
        v39 = v49;
        v41 = (*(v48 + 88))(v38, v49);
        if (v41 != enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.allowed(_:))
        {
          goto LABEL_32;
        }

        (*(v40 + 8))(v38, v39);
      }

      return v22;
    }

    v25 = *(v23 + 72);
    v26 = swift_getObjectType();
    (*(v25 + 16))(v26, v25);
    LODWORD(v25) = v13[*(v11 + 44)];
    sub_10022E05C(v13, type metadata accessor for TTRRemindersListEditingInteractionOptions);
    if (v25 == 1)
    {
      (*(v45 + 104))(v10, enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.disallowed(_:), v47);
      return v22;
    }

    TTRRemindersListPresenterCapabilityCore.paramsForBatchFlag(_:)();
    v33 = v45;
    v34 = v47;
    v35 = (*(v45 + 88))(v10, v47);
    if (v35 == enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.allowed(_:))
    {
      (*(v33 + 96))(v10, v34);
      return v22;
    }

    if (v35 == enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.disallowed(_:))
    {
      return v22;
    }
  }

  else
  {
    if (v22 == 4)
    {
      sub_10024D72C(v50, v19);
      return v22;
    }

    v27 = v22;
    v28 = *(*(v4 + 104) + 72);
    v29 = swift_getObjectType();
    (*(v28 + 16))(v29, v28);
    v30 = v13[*(v11 + 44)];
    sub_10022E05C(v13, type metadata accessor for TTRRemindersListEditingInteractionOptions);
    if (v30 == 1)
    {
      (*(v44 + 104))(v16, enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:), v14);
      return v27;
    }

    TTRRemindersListPresenterCapabilityCore.paramsForBatchAddHashtag(_:fetchAllHashtagLabels:)();
    v36 = v44;
    v37 = (*(v44 + 88))(v16, v14);
    if (v37 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.allowed(_:))
    {
      (*(v36 + 8))(v16, v14);
      return v27;
    }

    v22 = v27;
    if (v37 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:))
    {
      return v22;
    }
  }

  do
  {
    v41 = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_32:
    ;
  }

  while (v41 != enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.disallowed(_:));
  return v22;
}

void sub_1001FF034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - v7;
  if (*(a1 + 16))
  {
    v26[1] = a2;
    v9 = *(v3 + 144);
    ObjectType = swift_getObjectType();
    (*(v9 + 152))(ObjectType, v9);
    v11 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      sub_1000079B4(v8, &unk_10078A380, &qword_10062DE60);
    }

    else
    {
      TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
      (*(v12 + 8))(v8, v11);
    }

    static TTRLocalizableStrings.RemindersList.deleteRemindersConfirmationMessage(withCount:isForGroceries:)();
    v13 = String._bridgeToObjectiveC()();

    v14 = [objc_opt_self() alertControllerWithTitle:0 message:v13 preferredStyle:0];

    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    v15 = String._bridgeToObjectiveC()();

    v31 = sub_1002128A8;
    v32 = 0;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1001762CC;
    v30 = &unk_10071C1D8;
    v16 = _Block_copy(&aBlock);

    v17 = objc_opt_self();
    v18 = [v17 actionWithTitle:v15 style:1 handler:v16];
    _Block_release(v16);

    static TTRLocalizableStrings.RemindersList.deleteRemindersConfirmationText(withCount:isForGroceries:)();
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a1;

    v21 = String._bridgeToObjectiveC()();

    v31 = sub_100235D4C;
    v32 = v20;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1001762CC;
    v30 = &unk_10071C228;
    v22 = _Block_copy(&aBlock);

    v23 = [v17 actionWithTitle:v21 style:2 handler:v22];
    _Block_release(v22);

    [v14 addAction:v23];
    [v14 addAction:v18];
    UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      [Strong presentViewController:v14 animated:1 completion:0];
    }
  }
}

uint64_t sub_1001FF444(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v70 = a4;
  v72 = a1;
  v7 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v7 - 8);
  v77 = &v62 - v8;
  v9 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  v66 = *(v9 - 8);
  v67 = *(v66 + 64);
  __chkstk_darwin(v9 - 8);
  v68 = &v62 - v10;
  v11 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v69 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListPostponeType();
  v78 = *(v14 - 8);
  __chkstk_darwin(v14);
  v82 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v80 = &v62 - v17;
  v18 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v4 + 144);
  v71 = v4;
  ObjectType = swift_getObjectType();
  (*(v22 + 16))(ObjectType, v22);
  LOBYTE(v19) = v21[*(v19 + 52)];
  sub_10022E05C(v21, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  result = 0;
  if (v19)
  {
    return result;
  }

  v62 = v12;
  v63 = v11;
  v64 = a2;
  v65 = a3;
  v25 = static TTRRemindersListPostponeType.allCases.getter();
  v76 = *(v25 + 16);
  if (!v76)
  {
LABEL_23:

    v56 = swift_allocObject();
    swift_weakInit();
    v57 = v68;
    sub_10000794C(v70, v68, &unk_10076FCD0, &unk_1006304D0);
    v58 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v56;
    *(v59 + 24) = v72;
    sub_100016588(v57, v59 + v58, &unk_10076FCD0, &unk_1006304D0);

    v60 = v69;
    TTRIRemindersListContextualMenuAssembly.DueDateContextMenuConfiguration.init(showsMenuTitle:showsNoneOption:showsIcons:menuStateByPostponeType:handleSelection:)();
    v61 = static TTRIRemindersListContextualMenuAssembly.makeDueDateContextMenu(configuration:)();
    (*(v62 + 8))(v60, v63);
    return v61;
  }

  v26 = 0;
  v79 = *(v71 + 104);
  v27 = v77;
  v75 = v25 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
  v81 = v78 + 16;
  v28 = &_swiftEmptyDictionarySingleton;
  v73 = v25;
  v74 = (v78 + 8);
  v29 = v80;
  while (v26 < *(v25 + 16))
  {
    v31 = *(v78 + 72);
    v32 = *(v78 + 16);
    v32(v29, v75 + v31 * v26, v14);
    v33 = *(v79 + 72);
    v34 = swift_getObjectType();
    (*(v33 + 152))(v34, v33);
    v35 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v27, 1, v35) == 1)
    {
      sub_1000079B4(v27, &unk_10078A380, &qword_10062DE60);
    }

    else
    {
      v37 = TTRRemindersListViewModel.ListInfo.isRecentlyDeletedList.getter();
      (*(v36 + 8))(v27, v35);
      if (v37)
      {
        v38 = 0;
        v39 = v80;
        goto LABEL_12;
      }
    }

    v39 = v80;
    TTRRemindersListPresenterCapabilityCore.optionsForPostponing(items:to:)();
    v38 = v40;
LABEL_12:
    v41 = v82;
    v32(v82, v39, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v28;
    v44 = sub_1003AB490(v41);
    v45 = v28[2];
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      goto LABEL_26;
    }

    v48 = v43;
    if (v28[3] >= v47)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v28 = v83;
        if (v43)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1003AEA2C();
        v28 = v83;
        if (v48)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_10054A0E8(v47, isUniquelyReferenced_nonNull_native);
      v49 = sub_1003AB490(v82);
      if ((v48 & 1) != (v50 & 1))
      {
        goto LABEL_28;
      }

      v44 = v49;
      v28 = v83;
      if (v48)
      {
LABEL_4:
        *(v28[7] + 8 * v44) = v38;
        v30 = *v74;
        (*v74)(v82, v14);
        v29 = v80;
        v30(v80, v14);
        goto LABEL_5;
      }
    }

    v28[(v44 >> 6) + 8] |= 1 << v44;
    v51 = v82;
    v32((v28[6] + v44 * v31), v82, v14);
    *(v28[7] + 8 * v44) = v38;
    v52 = *v74;
    (*v74)(v51, v14);
    v29 = v80;
    v52(v80, v14);
    v53 = v28[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_27;
    }

    v28[2] = v55;
LABEL_5:
    ++v26;
    v27 = v77;
    v25 = v73;
    if (v76 == v26)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001FFB64(void *a1, __n128 a2)
{
  v3 = sub_10024D72C(a1, a2);
  if ((v3 & 0xFF00) == 0x200)
  {
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_1007741F0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Items selected don't qualify for batch completion", v7, 2u);
    }

    return 0;
  }

  else
  {
    v9 = HIBYTE(v3) & 1;
    if ((v3 & 0x100) != 0)
    {
      v11 = 0x8000000100678450;
      v12 = 0xD000000000000025;
      v13 = 0x8000000100678470;
      v10 = 0xD000000000000011;
    }

    else
    {
      v10 = 0xD000000000000012;
      v11 = 0x8000000100678400;
      v12 = 0xD000000000000026;
      v13 = 0x8000000100678420;
    }

    TTRLocalizedString(_:comment:)(*&v10, *&v12);
    v14 = String._bridgeToObjectiveC()();
    v15 = [objc_opt_self() _systemImageNamed:v14];

    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v9;
    *(v17 + 32) = a1;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }
}

uint64_t sub_1001FFE04(uint64_t a1, int a2)
{
  v23[1] = a2;
  v26 = a1;
  v3 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.FlagContextMenuActionConfiguration();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchFlagParams();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v2 + 104) + 72);
  ObjectType = swift_getObjectType();
  (*(v14 + 16))(ObjectType, v14);
  v16 = v9[*(v7 + 52)];
  sub_10022E05C(v9, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v16 == 1)
  {
    (*(v11 + 104))(v13, enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.disallowed(_:), v10);
  }

  else
  {
    v17 = v26;
    TTRRemindersListPresenterCapabilityCore.paramsForBatchFlag(_:)();
    v18 = (*(v11 + 88))(v13, v10);
    if (v18 == enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.allowed(_:))
    {
      (*(v11 + 96))(v13, v10);
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = v17;

      TTRIRemindersListContextualMenuAssembly.FlagContextMenuActionConfiguration.init(flaggedState:shouldUseFilledIcon:handleSelection:)();
      v21 = static TTRIRemindersListContextualMenuAssembly.makeFlagContextMenuAction(configuration:)();
      (*(v24 + 8))(v5, v25);
      return v21;
    }

    if (v18 != enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.disallowed(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }
  }

  return 0;
}

uint64_t sub_100200130(uint64_t a1)
{
  v25 = a1;
  v2 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.PriorityContextMenuConfiguration();
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v1 + 104) + 72);
  ObjectType = swift_getObjectType();
  (*(v13 + 16))(ObjectType, v13);
  v15 = v8[*(v6 + 52)];
  sub_10022E05C(v8, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v15 == 1)
  {
    (*(v10 + 104))(v12, enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.disallowed(_:), v9);
  }

  else
  {
    v16 = v25;
    TTRRemindersListPresenterCapabilityCore.paramsForBatchSetPriorityLevel(for:)();
    v17 = (*(v10 + 88))(v12, v9);
    if (v17 == enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.allowed(_:))
    {
      (*(v10 + 96))(v12, v9);
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v16;

      TTRIRemindersListContextualMenuAssembly.PriorityContextMenuConfiguration.init(alreadySetPriorityLevels:handleSelection:)();
      v20 = static TTRIRemindersListContextualMenuAssembly.makePriorityContextMenu(configuration:)();
      (*(v23 + 8))(v4, v24);
      return v20;
    }

    if (v17 != enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.disallowed(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }
  }

  return 0;
}

uint64_t sub_100200450(uint64_t a1)
{
  v2 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v1 + 24);
    v9 = swift_getObjectType();
    (*(v8 + 16))(v9, v8);
    swift_unknownObjectRelease();
  }

  sub_100461124(_swiftEmptyArrayStorage);

  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();

  TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration.init(assigneeCandidates:viewScale:isRTL:showsMenuTitle:showsNoneOption:itemCountByAssigneeID:updateAssigneeCandidateAvatarImages:handleSelection:)();
  v10 = static TTRIRemindersListContextualMenuAssembly.makeAssignContextMenu(configuration:)();
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_100200688(uint64_t a1, int a2)
{
  v74 = a2;
  v4 = type metadata accessor for TTRAssigneeCandidateData();
  v5 = *(v4 - 8);
  v77 = v4;
  v78 = v5;
  __chkstk_darwin(v4);
  v76 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_100775910, &unk_100635F20);
  __chkstk_darwin(v7 - 8);
  v9 = &v68 - v8;
  v73 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  v82 = v11;
  v83 = v12;
  __chkstk_darwin(v11);
  v81 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchAssignParams();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v2;
  v22 = *(v2 + 104);
  v23 = *(v22 + 72);
  ObjectType = swift_getObjectType();
  (*(v23 + 16))(ObjectType, v23);
  v25 = v17[*(v15 + 52)];
  sub_10022E05C(v17, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v25 == 1)
  {
    (*(v19 + 104))(v21, enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.disallowed(_:), v18);
    return 0;
  }

  TTRRemindersListPresenterCapabilityCore.paramsForBatchAssign(_:pendingMoveTargetListForHostingReminder:)();
  v27 = (*(v19 + 88))(v21, v18);
  if (v27 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.allowed(_:))
  {
    v28 = v22;
    (*(v19 + 96))(v21, v18);
    v29 = *v21;

    v30 = *(a1 + 16);
    v68 = v29;
    v69 = a1;
    if (!v30)
    {
LABEL_25:
      v57 = v72;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v58 = *(v57 + 24);
        v59 = swift_getObjectType();
        (*(v58 + 8))(v59, v58);
        swift_unknownObjectRelease();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      v61 = v69;
      if (Strong)
      {
        v62 = *(v57 + 24);
        v63 = swift_getObjectType();
        (*(v62 + 16))(v63, v62);
        swift_unknownObjectRelease();
      }

      swift_allocObject();
      swift_weakInit();
      v64 = swift_allocObject();
      swift_weakInit();
      v65 = swift_allocObject();
      *(v65 + 16) = v64;
      *(v65 + 24) = v61;

      v66 = v70;
      TTRIRemindersListContextualMenuAssembly.AssignContextMenuConfiguration.init(assigneeCandidates:viewScale:isRTL:showsMenuTitle:showsNoneOption:itemCountByAssigneeID:updateAssigneeCandidateAvatarImages:handleSelection:)();
      v67 = static TTRIRemindersListContextualMenuAssembly.makeAssignContextMenu(configuration:)();
      (*(v71 + 8))(v66, v73);
      return v67;
    }

    v31 = v82;
    v32 = *(v83 + 16);
    v33 = a1 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v79 = *(v83 + 72);
    v80 = v32;
    v75 = v78 + 1;
    v34 = &_swiftEmptyDictionarySingleton;
    v83 += 16;
    v78 = (v83 - 8);
    v35 = v81;
    while (1)
    {
      v80(v35, v33, v31);
      v36 = v28;
      TTRRemindersListPresenterCapabilityCore.assignment(for:pendingMoveTargetListForHostingReminder:)();
      v37 = type metadata accessor for TTRAssignment();
      v38 = *(v37 - 8);
      if ((*(v38 + 48))(v9, 1, v37) == 1)
      {
        sub_1000079B4(v9, &unk_100775910, &unk_100635F20);
        v39 = 0;
      }

      else
      {
        v40 = v76;
        TTRAssignment.assignee.getter();
        (*(v38 + 8))(v9, v37);
        v39 = TTRAssigneeCandidateData.id.getter();
        (*v75)(v40, v77);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v34;
      v43 = sub_1003AB564(v39);
      v44 = v34[2];
      v45 = (v42 & 1) == 0;
      v46 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        sub_100058000(&qword_10076DB18, &unk_10063E2D0);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_34:
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v47 = v42;
      if (v34[3] >= v46)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v42)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_1003AEC9C();
          v34 = v84;
          if (v47)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        sub_10054A4A8(v46, isUniquelyReferenced_nonNull_native);
        v34 = v84;
        v48 = sub_1003AB564(v39);
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_33;
        }

        v43 = v48;
        if (v47)
        {
          goto LABEL_18;
        }
      }

      v34[(v43 >> 6) + 8] |= 1 << v43;
      *(v34[6] + 8 * v43) = v39;
      *(v34[7] + 8 * v43) = 0;
      v50 = v34[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_32;
      }

      v34[2] = v52;
      v53 = v39;
LABEL_18:
      v54 = v34[7];
      v55 = *(v54 + 8 * v43);
      v51 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v51)
      {
        goto LABEL_31;
      }

      *(v54 + 8 * v43) = v56;

      v35 = v81;
      v31 = v82;
      (*v78)(v81, v82);
      v33 += v79;
      --v30;
      v28 = v36;
      if (!v30)
      {
        goto LABEL_25;
      }
    }
  }

  if (v27 != enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.disallowed(_:))
  {
    goto LABEL_34;
  }

  return 0;
}

uint64_t sub_100200EA8(uint64_t a1, int a2, uint64_t a3)
{
  v66 = a3;
  v71 = a2;
  v5 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  v64 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v65 = v59 - v6;
  v7 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.CustomTagsOption();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v72 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = v3;
  v18 = *(*(v3 + 104) + 72);
  ObjectType = swift_getObjectType();
  (*(v18 + 16))(ObjectType, v18);
  v20 = v13[*(v11 + 52)];
  sub_10022E05C(v13, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v20 == 1)
  {
    (*(v15 + 104))(v17, enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:), v14);
    return 0;
  }

  TTRRemindersListPresenterCapabilityCore.paramsForBatchAddHashtag(_:fetchAllHashtagLabels:)();
  v22 = (*(v15 + 88))(v17, v14);
  if (v22 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.allowed(_:))
  {
    v61 = a1;
    (*(v15 + 96))(v17, v14);
    v23 = *v17;
    v24 = v17[1];
    sub_100058000(&qword_1007758E8, &unk_100635F10);
    v25 = static _DictionaryStorage.copy(original:)();
    v26 = v25;
    v27 = 0;
    v28 = 1 << *(v23 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v23 + 64);
    v31 = (v28 + 63) >> 6;
    v32 = v25 + 64;
    if (v30)
    {
      while (1)
      {
        v33 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
LABEL_13:
        v36 = v33 | (v27 << 6);
        v37 = (*(v23 + 48) + 16 * v36);
        v39 = *v37;
        v38 = v37[1];
        v40 = *(*(*(v23 + 56) + 8 * v36) + 16);
        *(v32 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
        v41 = (v26[6] + 16 * v36);
        *v41 = v39;
        v41[1] = v38;
        *(v26[7] + 8 * v36) = v40;
        v42 = v26[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          break;
        }

        v26[2] = v44;

        if (!v30)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v34 = v27;
      while (1)
      {
        v27 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v27 >= v31)
        {

          v60 = v24;
          v45 = [v24 hashtags];
          sub_100003540(0, &unk_1007758F0, REMHashtag_ptr);
          sub_1000072CC(&qword_100770920, &unk_1007758F0, REMHashtag_ptr, &protocol conformance descriptor for NSObject);
          v46 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v73 = v46;
          sub_100058000(&qword_100775900, &unk_100632FF0);
          sub_10000E188(&qword_100775908, &qword_100775900, &unk_100632FF0, &protocol conformance descriptor for Set<A>);
          LOBYTE(v45) = Collection<>.contains(hashtagOfType:)();

          v48 = v61;
          v47 = v62;
          v59[1] = *(v61 + 16);
          *v72 = v45 & 1;
          (*(v47 + 104))();
          v63 = swift_allocObject();
          swift_weakInit();
          v49 = swift_allocObject();
          swift_weakInit();
          v50 = v65;
          sub_10000794C(v66, v65, &unk_10076FCD0, &unk_1006304D0);
          v51 = (*(v64 + 80) + 32) & ~*(v64 + 80);
          v52 = swift_allocObject();
          *(v52 + 16) = v49;
          *(v52 + 24) = v48;
          sub_100016588(v50, v52 + v51, &unk_10076FCD0, &unk_1006304D0);
          v53 = swift_allocObject();
          swift_weakInit();
          v54 = swift_allocObject();
          *(v54 + 16) = v53;
          *(v54 + 24) = v48;
          v55 = swift_allocObject();
          swift_weakInit();
          v56 = swift_allocObject();
          *(v56 + 16) = v55;
          *(v56 + 24) = v48;
          swift_bridgeObjectRetain_n();
          v57 = v67;
          TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.init(showsMenuTitle:itemCount:customTagsOption:itemCountByHashtagLabel:fetchAllHashtagLabels:handleCustomTags:handleTagSelection:handleClearTags:)();
          v58 = static TTRIRemindersListContextualMenuAssembly.createHashtagsContextMenu(configuration:)();

          (*(v68 + 8))(v57, v70);
          return v58;
        }

        v35 = *(v23 + 64 + 8 * v27);
        ++v34;
        if (v35)
        {
          v33 = __clz(__rbit64(v35));
          v30 = (v35 - 1) & v35;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else if (v22 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:))
  {
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

Class sub_100201678(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_1007758D0, &unk_100634F80);
  __chkstk_darwin(v4 - 8);
  v6 = &v123 - v5;
  v156 = sub_100058000(&qword_1007758D8, &qword_100635F08);
  __chkstk_darwin(v156);
  v155 = (&v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v154 = &v123 - v9;
  v148 = type metadata accessor for TTRRemindersListLayout();
  v10 = *(v148 - 8);
  __chkstk_darwin(v148);
  v137 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v123 - v13;
  v142 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  __chkstk_darwin(v143);
  v17 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = (&v123 - v19);
  v21 = type metadata accessor for TTRSectionID();
  v159 = *(v21 - 8);
  __chkstk_darwin(v21);
  v134 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v135 = &v123 - v24;
  __chkstk_darwin(v25);
  v153 = &v123 - v26;
  __chkstk_darwin(v27);
  v152 = &v123 - v28;
  __chkstk_darwin(v29);
  v163 = &v123 - v30;
  __chkstk_darwin(v31);
  v165 = &v123 - v32;
  v151 = type metadata accessor for TTRSectionLite();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v157 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v158 = &v123 - v35;
  v139 = *(v1 + 104);
  result = sub_100243BE4(a1);
  v164 = v37;
  v160 = v38;
  if (result)
  {
    v39 = result;
    v144 = v14;
    v128 = v6;
    v136 = v17;
    v145 = v10;
    v133 = a1;
    *&v166 = a1;
    sub_100058000(&qword_10076E0B0, &unk_100631BD0);
    sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
    sub_10000E188(&unk_100784560, &qword_10076E0B0, &unk_100631BD0, &protocol conformance descriptor for [A]);
    Sequence.firstMap<A>(_:)();
    v40 = v168[0];
    if (v168[0])
    {
      v41 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_userDefaults;
      swift_beginAccess();
      sub_10000794C(v2 + v41, &v166, &qword_1007755C8, &qword_100635CF8);
      if (v167)
      {
        sub_100005FD0(&v166, v168);
        v125 = v40;
        v127 = [v40 list];
        v42 = [v127 groceryContext];
        v126 = v20;
        if (v42 && (v43 = v42, v44 = [v42 shouldCategorizeGroceryItems], v43, v44) && (sub_10000C36C(v168, v168[3]), v45 = objc_msgSend(v127, "objectID"), v46 = dispatch thunk of TTRListEditorGroceryListUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)(), v45, (v46 & 1) != 0))
        {
          v132 = *(v39 + 16);
          if (v132)
          {
            v47 = 0;
            v129 = v150 + 16;
            v161 = v159 + 16;
            v162 = v164 + 56;
            v48 = (v159 + 8);
            v124 = (v150 + 8);
            v149 = _swiftEmptyArrayStorage;
            v138 = (v150 + 32);
            v49 = v151;
            v130 = v2;
            v131 = v39;
            while (v47 < *(v39 + 16))
            {
              v147 = (*(v150 + 80) + 32) & ~*(v150 + 80);
              v146 = *(v150 + 72);
              (*(v150 + 16))(v158, v39 + v147 + v146 * v47, v49);
              TTRSectionLite.sectionID.getter();
              if (*(v164 + 16) && (v60 = v164, sub_10022DFF4(&qword_1007758E0, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID), v61 = dispatch thunk of Hashable._rawHashValue(seed:)(), v62 = -1 << *(v60 + 32), v63 = v61 & ~v62, ((*(v162 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) != 0))
              {
                v64 = ~v62;
                v65 = *(v159 + 72);
                v66 = *(v159 + 16);
                while (1)
                {
                  v67 = v163;
                  v66(v163, *(v164 + 48) + v65 * v63, v21);
                  sub_10022DFF4(&qword_10076BE70, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
                  v68 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v69 = *v48;
                  (*v48)(v67, v21);
                  if (v68)
                  {
                    break;
                  }

                  v63 = (v63 + 1) & v64;
                  if (((*(v162 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
                  {
                    goto LABEL_21;
                  }
                }

                v69(v165, v21);
                v49 = v151;
                (*v124)(v158, v151);
              }

              else
              {
LABEL_21:
                (*v48)(v165, v21);
                v70 = *v138;
                v49 = v151;
                (*v138)(v157, v158, v151);
                v71 = v149;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v166 = v71;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1004A1AE0(0, v71[2] + 1, 1);
                  v71 = v166;
                }

                v74 = v71[2];
                v73 = v71[3];
                if (v74 >= v73 >> 1)
                {
                  sub_1004A1AE0((v73 > 1), v74 + 1, 1);
                  v71 = v166;
                }

                v71[2] = v74 + 1;
                v149 = v71;
                v70(v71 + v147 + v74 * v146, v157, v49);
              }

              v39 = v131;
              ++v47;
              v2 = v130;
              if (v47 == v132)
              {
                goto LABEL_53;
              }
            }

LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          v149 = _swiftEmptyArrayStorage;
LABEL_53:

          v50 = v142;
          v51 = v141;
          v52 = v140;
          v39 = v149;
        }

        else
        {

          v50 = v142;
          v51 = v141;
          v52 = v140;
        }

        v53 = *(v139 + 72);
        ObjectType = swift_getObjectType();
        (*(v53 + 192))(ObjectType, v53);
        LODWORD(v53) = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
        (*(v51 + 8))(v52, v50);
        v55 = *(v2 + 144);
        v56 = swift_getObjectType();
        v57 = (*(v55 + 112))(v56, v55);
        v149 = v39;
        LODWORD(v165) = v53;
        if (v57)
        {
          swift_getObjectType();
          v58 = v137;
          dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
          swift_unknownObjectRelease();
          v59 = v148;
          (*(v145 + 32))(v144, v58, v148);
        }

        else
        {
          v59 = v148;
          (*(v145 + 104))(v144, enum case for TTRRemindersListLayout.list(_:), v148);
        }

        v75 = v133;
        v164 = *(v133 + 16);
        v76 = swift_allocObject();
        swift_weakInit();
        v77 = swift_allocObject();
        *(v77 + 2) = v76;
        *(v77 + 3) = v75;
        v78 = v160;
        *(v77 + 4) = v160;
        v79 = swift_allocObject();
        swift_weakInit();
        v80 = swift_allocObject();
        *(v80 + 2) = v79;
        *(v80 + 3) = v75;
        *(v80 + 4) = v78;
        v81 = v136;
        *v136 = v149;
        v81[1] = _swiftEmptyArrayStorage;
        *(v81 + 25) = 0;
        *(v81 + 26) = v165 & 1;
        v82 = v143;
        (*(v145 + 16))(v81 + *(v143 + 36), v144, v59);
        *(v81 + v82[10]) = v164;
        v83 = (v81 + v82[11]);
        *v83 = sub_100235768;
        v83[1] = v77;
        v84 = (v81 + v82[12]);
        *v84 = sub_100235774;
        v84[1] = v80;
        v85 = (v81 + v82[13]);
        *v85 = 0;
        v85[1] = 0;
        v86 = *(v78 + 64);
        v158 = (v78 + 64);
        v87 = 1 << *(v78 + 32);
        v88 = -1;
        if (v87 < 64)
        {
          v88 = ~(-1 << v87);
        }

        v89 = v88 & v86;
        *&v166 = &_swiftEmptySetSingleton;
        v157 = ((v87 + 63) >> 6);
        v161 = v159 + 32;
        v162 = v159 + 16;
        v164 = v159 + 8;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v151 = v76;

        v150 = v79;

        v90 = 0;
        v165 = v21;
        v91 = v154;
        while (v89)
        {
          v92 = v90;
          v93 = v159;
LABEL_38:
          v94 = __clz(__rbit64(v89));
          v89 &= v89 - 1;
          v95 = v94 | (v92 << 6);
          v96 = *(*(v160 + 48) + 8 * v95);
          v97 = v156;
          v98 = *(v93 + 16);
          v99 = v93;
          v98(&v91[*(v156 + 48)], *(v160 + 56) + *(v93 + 72) * v95, v21);
          *v91 = v96;
          v100 = v155;
          sub_10000794C(v91, v155, &qword_1007758D8, &qword_100635F08);
          v101 = *v100;
          v102 = v96;

          v103 = v100 + *(v97 + 48);
          v21 = v165;
          v104 = v163;
          (*(v99 + 32))(v163, v103, v165);
          v105 = v153;
          v98(v153, v104, v21);
          v106 = v152;
          sub_10058B9BC(v152, v105);
          v107 = *(v99 + 8);
          v107(v106, v21);
          v107(v104, v21);
          sub_1000079B4(v91, &qword_1007758D8, &qword_100635F08);
        }

        v93 = v159;
        while (1)
        {
          v92 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            __break(1u);
            goto LABEL_55;
          }

          if (v92 >= v157)
          {
            break;
          }

          v89 = *&v158[8 * v92];
          ++v90;
          if (v89)
          {
            v90 = v92;
            goto LABEL_38;
          }
        }

        v108 = v166;
        if (*(v166 + 16) != 1)
        {
          (*(v145 + 8))(v144, v148);
          v112 = v126;
LABEL_44:
          v114 = 1;
LABEL_45:
          v115 = v136;
LABEL_46:
          v116 = v125;
          *(v115 + 16) = v108;
          *(v115 + 24) = v114;
          sub_10023409C(v115, v112, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);

          v117 = sub_10048A46C(v112);

          sub_10022E05C(v112, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);
          sub_100004758(v168);
          return v117;
        }

        v109 = v128;
        sub_1000A97CC(v166, v128);
        v110 = v165;
        v111 = (*(v93 + 48))(v109, 1, v165);
        v112 = v126;
        v113 = v148;
        if (v111 == 1)
        {
          (*(v145 + 8))(v144, v148);
          sub_1000079B4(v109, &qword_1007758D0, &unk_100634F80);
          goto LABEL_44;
        }

        v118 = v135;
        (*(v93 + 32))();
        v119 = v134;
        (*(v93 + 16))(v134, v118, v110);
        v120 = (*(v93 + 88))(v119, v110);
        if (v120 == enum case for TTRSectionID.sectioned(_:))
        {
          (*(v93 + 8))(v118, v110);
          (*(v145 + 8))(v144, v113);
          (*(v93 + 96))(v119, v110);
          v114 = 0;
          v108 = *v119;
          goto LABEL_45;
        }

        v121 = v136;
        v122 = v144;
        if (v120 == enum case for TTRSectionID.sectionless(_:))
        {
          (*v164)(v135, v165);
          (*(v145 + 8))(v122, v113);
          v108 = 0;
          v114 = 2;
          v115 = v121;
          goto LABEL_46;
        }

LABEL_56:
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      sub_1000079B4(&v166, &qword_1007755C8, &qword_100635CF8);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void *sub_1002028E4(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for TTRRemindersListLayout();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v42 - v8;
  v9 = type metadata accessor for TTRSectionID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v59 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v57 = &v42 - v13;
  v58 = type metadata accessor for TTRSectionLite();
  v14 = *(v58 - 8);
  __chkstk_darwin(v58);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + 136);
  v18 = *(v2 + 144);
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 104);
  v46 = ObjectType;
  v47 = v17;
  v48 = v18;
  result = v20(ObjectType, v18);
  if (result)
  {
    v42 = v6;
    v43 = v4;
    v44 = v3;
    v45 = v2;
    v50 = result;
    result = sub_1002E2EA8(v22);
    v23 = 0;
    v60 = result;
    v24 = result[2];
    v55 = v14 + 16;
    v56 = v24;
    v54 = enum case for TTRSectionID.sectionless(_:);
    v25 = (v10 + 8);
    v52 = v14 + 8;
    v53 = (v10 + 104);
    v26 = v58;
    while (v56 != v23)
    {
      if (v23 >= v60[2])
      {
        __break(1u);
        return result;
      }

      (*(v14 + 16))(v16, v60 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v23++, v26);
      v27 = v57;
      TTRSectionLite.sectionID.getter();
      v28 = v59;
      (*v53)(v59, v54, v9);
      sub_10022DFF4(&qword_10076BE70, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *v25;
      (*v25)(v28, v9);
      v30(v27, v9);
      result = (*(v14 + 8))(v16, v26);
      if ((v29 & 1) == 0)
      {
        swift_unknownObjectRelease();

        return 0;
      }
    }

    v31 = v51;
    v32 = sub_10024BAEC(v51);
    if (!v32)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v33 = v32;
    if ((*(v48 + 112))(v46))
    {
      swift_getObjectType();
      v34 = v42;
      dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
      swift_unknownObjectRelease();
      v35 = v43;
      v36 = v49;
      v37 = v34;
      v38 = v44;
      (*(v43 + 32))(v49, v37, v44);
    }

    else
    {
      v35 = v43;
      v38 = v44;
      v36 = v49;
      (*(v43 + 104))(v49, enum case for TTRRemindersListLayout.list(_:), v44);
    }

    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    static TTRLocalizableStrings.Sections.newSectionWithSelectionText(withSelectedRemindersCount:listLayout:)();
    (*(v35 + 8))(v36, v38);
    static TTRCommonAsset.Image.addSectionIcon.getter();
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = v31;
    v40[4] = v33;

    v41 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

    swift_unknownObjectRelease();
    return v41;
  }

  return result;
}

uint64_t sub_100202E7C(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() generalPasteboard];
  type metadata accessor for TTRIRemindersListPasteRequest();
  v10 = *(v2 + 136);
  v11 = *(v2 + 72);
  inited = swift_initStackObject();
  *(inited + 16) = v4;
  *(inited + 24) = v10;
  *(inited + 40) = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(v4) = sub_10031F0B8(a1);
  swift_setDeallocating();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = 0;
  if (v4)
  {
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a1;

    v9 = static TTRIRemindersListContextualMenuAssembly.makePasteContextMenuAction(handler:)();

    return v9;
  }

  return result;
}

unint64_t sub_100202FD4(uint64_t a1)
{
  v3 = type metadata accessor for TTRReminderListPickerViewModel.CustomSmartListPredicate();
  __chkstk_darwin(v3 - 8);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for REMListPickerDataView.PickerMode();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingOption();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration();
  v29 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10024DEE4(a1);
  if (result)
  {
    v15 = result;
    v16 = v14;
    if ((v14 & 0x100) != 0)
    {

      return 0;
    }

    else
    {
      v31 = result;
      v24 = a1;
      v22[3] = sub_100058000(&qword_10076BB08, &unk_10062FDB0);
      v22[4] = v1;
      v22[5] = v5;
      v22[2] = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      v22[1] = sub_10000E188(&unk_1007758B0, &qword_10076BB08, &unk_10062FDB0, &protocol conformance descriptor for [A]);
      v22[0] = sub_1000072CC(&qword_10076D1D0, &qword_10076BA50, REMObjectID_ptr, &protocol conformance descriptor for NSObject);
      v31 = Sequence.mapToSet<A>(_:)();
      v23 = v10;
      sub_100058000(&qword_100775570, &unk_1006470E0);
      sub_10000E188(&unk_1007758C0, &qword_100775570, &unk_1006470E0, &protocol conformance descriptor for Set<A>);
      Collection.single.getter();

      v17 = v30;
      v31 = v15;
      Sequence.mapToSet<A>(_:)();

      v18 = &enum case for REMListPickerDataView.PickerMode.allAccounts(_:);
      if (v16)
      {
        v18 = &enum case for REMListPickerDataView.PickerMode.cloudKitOnlyAccounts(_:);
      }

      (*(v26 + 104))(v7, *v18, v28);
      swift_unknownObjectRetain();
      TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingParams.init(listPickerInteractor:mode:)();
      (*(v25 + 104))(v9, enum case for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingOption.fetch(_:), v27);
      static TTRReminderListPickerViewModel.CustomSmartListPredicate.fromSpecificAccountOrExcludeAll(accountID:)();
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = v24;

      TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.init(accountFetchingOption:selectedListIDs:customSmartListPredicate:showsMenuTitleAndIcon:handleSelection:)();
      v21 = static TTRIListPickerContextualMenuAssembly.makeListPickerContextMenu(configuration:)();

      (*(v29 + 8))(v12, v23);
      return v21;
    }
  }

  return result;
}

Class sub_1002034D0(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v88 = a3;
  v7 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v85 - v8;
  v10 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v10 - 8);
  v12 = &v85 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  v14 = *(v3 + 144);
  ObjectType = swift_getObjectType();
  (*(v14 + 152))(ObjectType, v14);
  v16 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) == 1)
  {
    sub_1000079B4(v12, &unk_10078A380, &qword_10062DE60);
  }

  else
  {
    v18 = TTRRemindersListViewModel.ListInfo.isRecentlyDeletedList.getter();
    (*(v17 + 8))(v12, v16);
    if (v18)
    {
      sub_100058000(&qword_100775868, &qword_10063BA50);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10062D3F0;
      v20 = sub_10024DEE4(a1);
      if (v20)
      {
        v22 = v21;

        if ((v22 & 0x100) != 0)
        {
          v88 = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
          static TTRLocalizableStrings.Common.moveButton.getter();
          v72 = String._bridgeToObjectiveC()();
          v73 = [objc_opt_self() _systemImageNamed:v72];

          v74 = swift_allocObject();
          swift_weakInit();
          v75 = swift_allocObject();
          *(v75 + 16) = v74;
          *(v75 + 24) = a1;

          v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        }

        else
        {
          v20 = 0;
        }
      }

      *(v19 + 32) = v20;
      v76 = swift_allocObject();
      swift_weakInit();
      v77 = swift_allocObject();
      *(v77 + 16) = v76;
      *(v77 + 24) = a1;

      v78 = static TTRIRemindersListContextualMenuAssembly.makeDeleteContextMenuAction(shouldUseFilledIcon:handler:)();

      *(v19 + 40) = v78;
      v79._rawValue = v19;
      sub_100215410(v79, v13);

      sub_100003540(0, &unk_10076B890, UIMenu_ptr);
      goto LABEL_30;
    }
  }

  v87 = (v13 + 16);
  sub_100058000(&qword_100775868, &qword_10063BA50);
  v23 = swift_allocObject();
  v85 = xmmword_10062D3F0;
  *(v23 + 16) = xmmword_10062D3F0;
  *(v23 + 32) = sub_1001FFB64(a1, xmmword_10062D3F0);
  v24 = v88;
  sub_100215000(a1, v4, v88, v9);
  v25 = sub_1001FF444(a1, 1, 1, v9);
  sub_1000079B4(v9, &unk_10076FCD0, &unk_1006304D0);
  *(v23 + 40) = v25;
  v26 = swift_allocObject();
  v86 = xmmword_10062F800;
  *(v26 + 16) = xmmword_10062F800;
  *(v26 + 32) = sub_100202FD4(a1);
  *(v26 + 40) = sub_100201678(a1);
  *(v26 + 48) = sub_1002028E4(a1);
  v89 = v26;
  if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0)
  {
    *(v13 + 16) = a2;

    v50._rawValue = v23;
    sub_100215410(v50, v13);

    v51 = swift_allocObject();
    v86 = xmmword_10062D400;
    *(v51 + 16) = xmmword_10062D400;
    *(v51 + 32) = sub_10023166C(a1);
    v52._rawValue = v51;
    sub_100215410(v52, v13);

    v53 = swift_allocObject();
    *(v53 + 16) = v86;
    *(v53 + 32) = sub_100200688(a1, 1);
    v54._rawValue = v53;
    sub_100215410(v54, v13);

    v55 = swift_allocObject();
    *(v55 + 16) = v85;
    *(v55 + 32) = sub_1001FFE04(a1, 0);
    *(v55 + 40) = sub_100200130(a1);
    v56._rawValue = v55;
    sub_100215410(v56, v13);

    v57._rawValue = v26;
    sub_100215410(v57, v13);

    v58 = swift_allocObject();
    *(v58 + 16) = v86;
    sub_100215000(a1, v4, v24, v9);
    v59 = sub_100200EA8(a1, 1, v9);
    sub_1000079B4(v9, &unk_10076FCD0, &unk_1006304D0);
    *(v58 + 32) = v59;
    v60._rawValue = v58;
    sub_100215410(v60, v13);

    v61 = swift_allocObject();
    *(v61 + 16) = v86;
    v62 = swift_allocObject();
    swift_weakInit();
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = a1;

    v64 = static TTRIRemindersListContextualMenuAssembly.makeDeleteContextMenuAction(shouldUseFilledIcon:handler:)();

    *(v61 + 32) = v64;
    v65._rawValue = v61;
    sub_100215410(v65, v13);

    sub_100003540(0, &unk_10076B890, UIMenu_ptr);
LABEL_30:
    swift_beginAccess();

    v80._countAndFlagsBits = 0;
    v80._object = 0xE000000000000000;
    v91.value.super.isa = 0;
    v91.is_nil = 0;
    v71.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v80, 0, v91, 0, 0xFFFFFFFFFFFFFFFFLL, v83, v84).super.super.isa;

    return v71.super.super.isa;
  }

  *&v85 = *(v4 + 104);
  if (sub_100245568(a1))
  {
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = a1;
    v28[4] = v24;

    v29 = v24;
    v30 = static TTRIRemindersListContextualMenuAssembly.makeDetailsContextMenuAction(handler:)();

    v31 = v30;
    v32 = v87;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v33 = sub_1001FFE04(a1, 1);
  v34 = v87;
  if (v33)
  {
    v35 = v33;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = a1;

  static TTRIRemindersListContextualMenuAssembly.makeDeleteContextMenuAction(shouldUseFilledIcon:handler:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v38._rawValue = v23;
  sub_100215410(v38, v13);

  sub_100215000(a1, v4, v88, v9);
  v39 = sub_100200EA8(a1, 1, v9);
  sub_1000079B4(v9, &unk_10076FCD0, &unk_1006304D0);
  v40 = v39;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v89[2] >= v89[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v41._rawValue = v89;
  sub_100215410(v41, v13);

  v42 = swift_allocObject();
  *(v42 + 16) = v86;
  *(v42 + 32) = sub_10023166C(a1);
  *(v42 + 40) = sub_100200688(a1, 1);
  *(v42 + 48) = sub_100200130(a1);
  v43._rawValue = v42;
  sub_100215410(v43, v13);

  v44 = swift_allocObject();
  v45 = v86;
  *(v44 + 16) = v86;
  if (sub_100248A8C(a1, v45) < 1)
  {
    v49 = 0;
  }

  else
  {
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    *(v48 + 24) = a1;

    v49 = static TTRIRemindersListContextualMenuAssembly.makeCutContextMenuAction(handler:)();
  }

  *(v44 + 32) = v49;
  if (sub_100248EAC(a1, v46) < 1)
  {
    v68 = 0;
  }

  else
  {
    v66 = swift_allocObject();
    swift_weakInit();
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = a1;

    v68 = static TTRIRemindersListContextualMenuAssembly.makeCopyContextMenuAction(handler:)();
  }

  *(v44 + 40) = v68;
  *(v44 + 48) = sub_100202E7C(a1);
  v69._rawValue = v44;
  sub_100215410(v69, v13);

  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  swift_beginAccess();

  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  v90.value.super.isa = 0;
  v90.is_nil = 0;
  v71.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v70, 0, v90, 0, 1uLL, v82, v84).super.super.isa;

  return v71.super.super.isa;
}

id sub_1002041A8(uint64_t (*a1)(uint64_t a1), uint64_t a2, void *a3)
{
  v181 = a3;
  v223 = a1;
  v195 = type metadata accessor for TTRRemindersListViewModel.Item();
  v197 = *(v195 - 8);
  __chkstk_darwin(v195);
  v180 = v5;
  v194 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v174 = &v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v175 = &v167 - v8;
  v206 = type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action(0);
  v204 = *(v206 - 8);
  __chkstk_darwin(v206);
  v192 = &v167 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = v9;
  __chkstk_darwin(v10);
  v201 = &v167 - v11;
  v187 = type metadata accessor for UTType();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v185 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v205 = *(v13 - 8);
  __chkstk_darwin(v13);
  v196 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v216 = &v167 - v16;
  v178 = v17;
  __chkstk_darwin(v18);
  v215 = (&v167 - v19);
  v222 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment();
  v209 = *(v222 - 1);
  __chkstk_darwin(v222);
  v190 = &v167 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v173 = &v167 - v22;
  __chkstk_darwin(v23);
  v25 = &v167 - v24;
  v26 = sub_100058000(&unk_100775660, &qword_10062F6B0);
  __chkstk_darwin(v26 - 8);
  v191 = &v167 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v182 = &v167 - v29;
  __chkstk_darwin(v30);
  v189 = &v167 - v31;
  __chkstk_darwin(v32);
  v34 = &v167 - v33;
  __chkstk_darwin(v35);
  v37 = &v167 - v36;
  v38 = sub_100058000(&unk_100775800, &unk_100635E70);
  __chkstk_darwin(v38 - 8);
  v200 = &v167 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v199 = &v167 - v41;
  __chkstk_darwin(v42);
  v188 = (&v167 - v43);
  __chkstk_darwin(v44);
  v46 = &v167 - v45;
  v47 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v47 - 8);
  v49 = &v167 - v48;
  v50 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v53 = &v167 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = a2;
  v54 = a2;
  v56 = v55;
  sub_1001EFE14(v54, v49);
  if ((*(v51 + 48))(v49, 1, v56) == 1)
  {
    sub_1000079B4(v49, &qword_100772738, &unk_10063D2B0);
    return 0;
  }

  v167 = v3;
  v218 = v51;
  v57 = *(v51 + 32);
  v172 = v56;
  v57(v53, v49, v56);
  v58 = *(v204 + 56);
  v203 = v46;
  v171 = v204 + 56;
  v170 = v58;
  v58(v46, 1, 1, v206);
  v59 = v205;
  v60 = *(v205 + 56);
  v202 = v37;
  v169 = v205 + 56;
  v168 = v60;
  v60(v37, 1, 1, v13);
  v184 = swift_allocObject();
  *(v184 + 16) = 0;
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  v183 = v61;
  v198 = v53;
  v62 = TTRRemindersListViewModel.Reminder.imageAttachments.getter();
  v63 = _swiftEmptyArrayStorage;
  if (v62)
  {
    v64 = v62;
  }

  else
  {
    v64 = _swiftEmptyArrayStorage;
  }

  v227 = _swiftEmptyArrayStorage;
  v65 = v64[2];
  v217 = v13;
  v208 = v64;
  v207 = v65;
  if (v65)
  {
    v66 = v13;
    v67 = v59;
    v221 = *(v209 + 16);
    v68 = v64 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
    v69 = *(v209 + 72);
    v219 = (v67 + 48);
    v220 = v69;
    v212 = (v67 + 32);
    v211 = (v67 + 16);
    v210 = (v67 + 8);
    v70 = (v209 + 8);
    v214 = v34;
    v213 = (v209 + 16);
    v71 = v222;
    v221(v25, v68, v222);
    while (1)
    {
      TTRRemindersListViewModel.ImageAttachment.fileURL.getter();
      if ((*v219)(v34, 1, v66) == 1)
      {
        (*v70)(v25, v71);
        sub_1000079B4(v34, &unk_100775660, &qword_10062F6B0);
      }

      else
      {
        v72 = v34;
        v73 = v215;
        (*v212)(v215, v72, v66);
        TTRRemindersListViewModel.ImageAttachment.attachmentID.getter();
        (*v211)(v216, v73, v66);
        v74 = objc_allocWithZone(type metadata accessor for TTRIQuickLookImageAttachmentPreviewItem());
        TTRIQuickLookImageAttachmentPreviewItem.init(attachmentID:fileURL:)();
        (*v210)(v73, v66);
        (*v70)(v25, v71);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v227 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v227 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v63 = v227;
        v66 = v217;
        v34 = v214;
      }

      v68 += v220;
      if (!--v65)
      {
        break;
      }

      v221(v25, v68, v71);
    }
  }

  v220 = v63 >> 62;
  v75 = v63 & 0xFFFFFFFFFFFFFF8;
  if (v63 >> 62)
  {
LABEL_59:
    v221 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v221 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = v218;
  v77 = 0;
  v78 = v63 & 0xC000000000000001;
  while (1)
  {
    if (v221 == v77)
    {

      v85 = v204;
      v86 = v203;
      goto LABEL_42;
    }

    v79 = v63 + 8 * v77;
    if (v78)
    {
      v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v77 >= *(v75 + 16))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v80 = *(v79 + 32);
    }

    v81 = v80;
    sub_100003540(0, &qword_100775690, NSObject_ptr);
    v82 = TTRIQuickLookImageAttachmentPreviewItem.attachmentID.getter();
    v83 = static NSObject.== infix(_:_:)();

    if (v83)
    {
      break;
    }

    v84 = __OFADD__(v77++, 1);
    v76 = v218;
    if (v84)
    {
      goto LABEL_57;
    }
  }

  v76 = v218;
  if (v220)
  {

    sub_100058000(&unk_100775810, &qword_100635E80);
    v87 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v87 = v63;
  }

  v88 = v203;
  sub_1000079B4(v203, &unk_100775800, &unk_100635E70);
  v89 = v188;
  *v188 = v87;
  *(v89 + 8) = v77;
  v90 = v206;
  swift_storeEnumTagMultiPayload();
  v170(v89, 0, 1, v90);
  sub_100016588(v89, v88, &unk_100775800, &unk_100635E70);
  if (v78)
  {
    v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v91 = *(v79 + 32);
  }

  v92 = v91;
  v93 = v222;
  v94 = v189;

  TTRIQuickLookImageAttachmentPreviewItem.fileURL.getter();

  v95 = v202;
  sub_1000079B4(v202, &unk_100775660, &qword_10062F6B0);
  v168(v94, 0, 1, v217);
  sub_100016588(v94, v95, &unk_100775660, &qword_10062F6B0);
  v75 = v190;
  if (v207)
  {
    v96 = 0;
    v63 = v209 + 16;
    v97 = (v209 + 8);
    while (v96 < v208[2])
    {
      (*(v209 + 16))(v75, v208 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v96, v93);
      v98 = TTRRemindersListViewModel.ImageAttachment.attachmentID.getter();
      v99 = static NSObject.== infix(_:_:)();

      if (v99)
      {

        v101 = v209 + 32;
        v102 = v173;
        (*(v209 + 32))(v173, v75, v93);
        v100 = TTRRemindersListViewModel.ImageAttachment.image.getter();
        (*(v101 - 24))(v102, v93);
        goto LABEL_41;
      }

      ++v96;
      (*v97)(v75, v93);
      if (v207 == v96)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_58;
  }

LABEL_39:

  v100 = 0;
LABEL_41:
  v103 = *(v184 + 16);
  *(v184 + 16) = v100;

  v104 = v185;
  static UTType.image.getter();
  v105 = UTType.identifier.getter();
  v107 = v106;
  (*(v186 + 8))(v104, v187);
  v108 = v183;
  *(v183 + 16) = v105;
  *(v108 + 24) = v107;
  v86 = v203;
  v85 = v204;
LABEL_42:

  v109 = v199;
  sub_10000794C(v86, v199, &unk_100775800, &unk_100635E70);
  v110 = *(v85 + 48);
  v111 = v110(v109, 1, v206);
  sub_1000079B4(v109, &unk_100775800, &unk_100635E70);
  v112 = v111 == 1;
  v113 = v198;
  if (v112)
  {
    v114 = TTRRemindersListViewModel.Reminder.linkAttachments.getter();
    if (v114)
    {
      v227 = v114;
      __chkstk_darwin(v114);
      *(&v167 - 2) = v223;
      sub_100058000(&qword_100775820, &qword_100635E88);
      sub_10000E188(&qword_100775828, &qword_100775820, &qword_100635E88, &protocol conformance descriptor for [A]);
      v115 = v182;
      v116 = v217;
      Sequence.firstMap<A>(_:)();

      v117 = v205;
      if ((*(v205 + 48))(v115, 1, v116) == 1)
      {
        sub_1000079B4(v115, &unk_100775660, &qword_10062F6B0);
        v86 = v203;
      }

      else
      {
        v118 = v202;
        sub_1000079B4(v202, &unk_100775660, &qword_10062F6B0);
        v86 = v203;
        sub_1000079B4(v203, &unk_100775800, &unk_100635E70);
        (*(v117 + 32))(v118, v115, v116);
        (*(v117 + 16))(v86, v118, v116);
        v119 = v206;
        swift_storeEnumTagMultiPayload();
        v170(v86, 0, 1, v119);
        v168(v118, 0, 1, v116);
      }

      v113 = v198;
    }
  }

  v120 = v200;
  sub_10000794C(v86, v200, &unk_100775800, &unk_100635E70);
  v121 = v110(v120, 1, v206);
  v122 = v202;
  if (v121 == 1)
  {
    sub_1000079B4(v202, &unk_100775660, &qword_10062F6B0);
    v123 = &unk_100775800;
    v124 = v120;
    v125 = &unk_100635E70;
    sub_1000079B4(v86, &unk_100775800, &unk_100635E70);
    (*(v76 + 8))(v113, v172);
    v126 = v124;
LABEL_53:
    sub_1000079B4(v126, v123, v125);

    return 0;
  }

  v127 = v201;
  sub_10023409C(v120, v201, type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action);
  v128 = v191;
  sub_10000794C(v122, v191, &unk_100775660, &qword_10062F6B0);
  v129 = v205;
  v130 = v217;
  if ((*(v205 + 48))(v128, 1, v217) == 1)
  {
    sub_10022E05C(v127, type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action);
    v123 = &unk_100775660;
    v125 = &qword_10062F6B0;
    sub_1000079B4(v202, &unk_100775660, &qword_10062F6B0);
    sub_1000079B4(v203, &unk_100775800, &unk_100635E70);
    (*(v76 + 8))(v198, v172);
    v126 = v128;
    goto LABEL_53;
  }

  LODWORD(v220) = v221 != v77;
  v132 = *(v129 + 32);
  v221 = (v129 + 32);
  v222 = v132;
  (v132)(v196, v128, v130);
  v133 = v175;
  v134 = v193;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v135 = v176;
  v136 = v177;
  (*(v176 + 16))(v174, v133, v177);
  sub_10022DFF4(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  AnyHashable.init<A>(_:)();
  (*(v135 + 8))(v133, v136);
  v137 = *(v197 + 16);
  v138 = v194;
  v139 = v195;
  v137(v194, v134, v195);
  v213 = v137;
  v140 = v192;
  v212 = type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action;
  sub_100233874(v127, v192, type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action);
  v141 = type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier(0);
  v142 = objc_allocWithZone(v141);
  v137(&v142[OBJC_IVAR____TtCC9Reminders28TTRIRemindersCommonPresenterP33_5CD98EDF15D0ED6BAC909BA9376202F921ContextMenuIdentifier_item], v138, v139);
  v143 = v223;
  *&v142[OBJC_IVAR____TtCC9Reminders28TTRIRemindersCommonPresenterP33_5CD98EDF15D0ED6BAC909BA9376202F921ContextMenuIdentifier_attachmentID] = v223;
  sub_100233874(v140, &v142[OBJC_IVAR____TtCC9Reminders28TTRIRemindersCommonPresenterP33_5CD98EDF15D0ED6BAC909BA9376202F921ContextMenuIdentifier_action], type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action);
  v225.receiver = v142;
  v225.super_class = v141;
  v215 = v143;
  v144 = objc_msgSendSuper2(&v225, "init");
  v223 = type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action;
  v145 = v140;
  sub_10022E05C(v140, type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action);
  v146 = v197;
  (*(v197 + 8))(v138, v139);
  v226[3] = v141;
  v226[0] = v144;
  v147 = type metadata accessor for TTRITreeViewContextMenuItemIdentifier();
  v148 = objc_allocWithZone(v147);
  sub_1001D3A20(&v227, v148 + OBJC_IVAR____TtC9Reminders37TTRITreeViewContextMenuItemIdentifier_itemID);
  sub_10000794C(v226, v148 + OBJC_IVAR____TtC9Reminders37TTRITreeViewContextMenuItemIdentifier_userInfo, &qword_10076AE40, &qword_10062EE50);
  v224.receiver = v148;
  v224.super_class = v147;
  v219 = objc_msgSendSuper2(&v224, "init");
  sub_100077654(&v227);
  sub_1000079B4(v226, &qword_10076AE40, &qword_10062EE50);
  v149 = v196;
  v220 = sub_10011B7B8(v196, v220);
  v214 = v150;
  v213(v138, v193, v139);
  sub_100233874(v201, v145, v212);
  v151 = v205;
  v152 = v216;
  (*(v205 + 16))(v216, v149, v217);
  v153 = (*(v146 + 80) + 24) & ~*(v146 + 80);
  v154 = (v180 + *(v204 + 80) + v153) & ~*(v204 + 80);
  v155 = (v179 + *(v151 + 80) + v154) & ~*(v151 + 80);
  v156 = (v178 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
  v157 = (v156 + 15) & 0xFFFFFFFFFFFFFFF8;
  v158 = (v157 + 15) & 0xFFFFFFFFFFFFFFF8;
  v159 = swift_allocObject();
  v160 = v215;
  *(v159 + 16) = v215;
  (*(v197 + 32))(v159 + v153, v194, v195);
  sub_10023409C(v192, v159 + v154, type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action);
  v161 = v152;
  v162 = v217;
  (v222)(v159 + v155, v161, v217);
  *(v159 + v156) = v167;
  *(v159 + v157) = v183;
  *(v159 + v158) = v184;
  v163 = v181;
  *(v159 + ((v158 + 15) & 0xFFFFFFFFFFFFFFF8)) = v181;
  sub_100003540(0, &unk_1007755D0, UIContextMenuConfiguration_ptr);
  v164 = v160;

  v165 = v163;
  v166 = sub_100423588(v219, v220, v214, sub_100234E38, v159);
  (*(v205 + 8))(v196, v162);
  sub_10022E05C(v201, v223);
  sub_1000079B4(v202, &unk_100775660, &qword_10062F6B0);
  sub_1000079B4(v203, &unk_100775800, &unk_100635E70);
  (*(v218 + 8))(v198, v172);

  return v166;
}

void sub_100205A84(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v89 = a2;
  v83 = type metadata accessor for TTRIPopoverAnchor();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v7 - 8);
  v85 = v79 - v8;
  v92 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v10 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v79 - v12;
  v14 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  v86 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v88 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v84 = v79 - v17;
  __chkstk_darwin(v18);
  v20 = v79 - v19;
  v87 = v21;
  __chkstk_darwin(v22);
  v94 = v79 - v23;
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v28 = sub_100003E30(v24, qword_1007741F0);
  v29 = *(v25 + 16);
  v93 = v28;
  v29(v27);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x6168547265646C6FLL;
  *(inited + 40) = 0xEF7368746E6F4D6ELL;
  v90 = a1;
  v31 = TTRRemindersListViewModel.DeleteCompletedMenuItem.olderThanMonths.getter();
  v95 = v4;
  if (v32)
  {
    v33 = (inited + 48);
    *(inited + 72) = &type metadata for String;
  }

  else
  {
    aBlock = v31;
    sub_100234DC8();
    v34 = BinaryInteger.description.getter();
    v33 = (inited + 48);
    *(inited + 72) = &type metadata for String;
    if (v35)
    {
      *v33 = v34;
      goto LABEL_8;
    }
  }

  *v33 = 7104878;
  v35 = 0xE300000000000000;
LABEL_8:
  *(inited + 56) = v35;
  v36 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminder list request delete completed reminders {olderThanMonths: %@}", 70, 2, v36);

  (*(v25 + 8))(v27, v24);
  v37 = v95;
  v38 = *(v95 + 144);
  ObjectType = swift_getObjectType();
  if ((*(v38 + 56))(ObjectType, v38))
  {
    v80 = ObjectType;
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceDeleteCompletedContextType.listForBatchDelete.getter();
    swift_unknownObjectRelease();
    v40 = v91;
    v41 = v92;
    (*(v91 + 32))(v13, v10, v92);
    TTRRemindersListViewModel.DeleteCompletedMenuItem.completeBeforeDateFromNow()();
    sub_100016588(v20, v94, &qword_1007757F0, &unk_10062DE70);
    swift_getObjectType();
    v90 = dispatch thunk of TTRRemindersListInteractorType.fetchCompletedRemindersToBeDeleted(in:completedBefore:)();
    v79[3] = v42;
    (*(v40 + 8))(v13, v41);
    v43 = *(v37 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v43, v44);
    v45 = v84;
    sub_10000794C(v94, v84, &qword_1007757F0, &unk_10062DE70);
    v46 = type metadata accessor for Date();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v45, 1, v46) == 1)
    {
      v48 = 7104878;
      sub_1000079B4(v45, &qword_1007757F0, &unk_10062DE70);
      v49 = 0xE300000000000000;
    }

    else
    {
      v48 = Date.description.getter();
      v51 = v50;
      (*(v47 + 8))(v45, v46);
      v49 = v51;
    }

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();

    v54 = os_log_type_enabled(v52, v53);
    v91 = v49;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock = v56;
      *v55 = 136315394;
      *(v55 + 4) = sub_100004060(v48, v49, &aBlock);
      *(v55 + 12) = 2048;
      *(v55 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v52, v53, "Presenting confirmation alert for batch delete {olderThanDate: %s, reminderCountToBeDeleted: %ld}", v55, 0x16u);
      sub_100004758(v56);
    }

    v57 = v85;
    (*(v38 + 152))(v80, v38);
    v58 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v59 = *(v58 - 8);
    v60 = (*(v59 + 48))(v57, 1, v58);
    v92 = v48;
    if (v60 == 1)
    {
      sub_1000079B4(v57, &unk_10078A380, &qword_10062DE60);
    }

    else
    {
      TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
      (*(v59 + 8))(v57, v58);
    }

    static TTRLocalizableStrings.RemindersList.deleteCompletedRemindersConfirmationText(withCount:isForGroceries:supportRecentlyDeletedList:)();
    v61 = String._bridgeToObjectiveC()();

    v62 = [objc_opt_self() alertControllerWithTitle:v61 message:0 preferredStyle:0];

    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    v63 = String._bridgeToObjectiveC()();

    v100 = sub_1002177F8;
    v101 = 0;
    aBlock = _NSConcreteStackBlock;
    v97 = 1107296256;
    v93 = &v98;
    v98 = sub_1001762CC;
    v99 = &unk_10071BB70;
    v64 = _Block_copy(&aBlock);

    v65 = objc_opt_self();
    v85 = [v65 actionWithTitle:v63 style:1 handler:v64];
    _Block_release(v64);

    static TTRLocalizableStrings.RemindersList.deleteRemindersConfirmationText(withCount:isForGroceries:)();
    v66 = swift_allocObject();
    swift_weakInit();
    v67 = v88;
    sub_10000794C(v94, v88, &qword_1007757F0, &unk_10062DE70);
    v68 = (*(v86 + 80) + 40) & ~*(v86 + 80);
    v69 = swift_allocObject();
    v70 = v91;
    v69[2] = v92;
    v69[3] = v70;
    v69[4] = v66;
    sub_100016588(v67, v69 + v68, &qword_1007757F0, &unk_10062DE70);

    v71 = String._bridgeToObjectiveC()();

    v100 = sub_100234D44;
    v101 = v69;
    aBlock = _NSConcreteStackBlock;
    v97 = 1107296256;
    v98 = sub_1001762CC;
    v99 = &unk_10071BBC0;
    v72 = _Block_copy(&aBlock);

    v73 = v65;
    v74 = v85;
    v75 = [v73 actionWithTitle:v71 style:2 handler:v72];
    _Block_release(v72);

    [v62 addAction:v75];
    [v62 addAction:v74];
    if (v89)
    {
      swift_unknownObjectRetain();
      v76 = v81;
      static TTRIPopoverAnchor.sourceItem(_:permittedArrowDirections:)();
      UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
      swift_unknownObjectRelease();
      (*(v82 + 8))(v76, v83);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v78 = Strong;
      [Strong presentViewController:v62 animated:1 completion:0];

      v62 = v78;
    }

    sub_1000079B4(v94, &qword_1007757F0, &unk_10062DE70);
  }
}

uint64_t sub_100206860(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100206948, 0, 0);
}

uint64_t sub_100206948()
{
  REMList.ttrGroceryContext.getter();
  v1 = v0[5];
  if (v1)
  {
    sub_10000C36C(v0 + 2, v0[5]);
    LOBYTE(v1) = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter();
    sub_100004758(v0 + 2);
  }

  else
  {
    sub_1000079B4((v0 + 2), &qword_1007757E0, &qword_100636780);
  }

  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_100206A44;

  return sub_100206D2C(v1 & 1);
}

uint64_t sub_100206A44(char a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_100206B44, 0, 0);
}

uint64_t sub_100206B44()
{
  if (*(v0 + 112) - 2 >= 2)
  {
    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 80);
    swift_getObjectType();
    dispatch thunk of TTRRemindersListInteractorType.updateAutoCategorization(for:shouldAutoCategorizeItems:deleteExistingSections:)();
    type metadata accessor for TTRUserDefaults();
    v4 = static TTRUserDefaults.appUserDefaults.getter();
    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();
    v5 = sub_100058000(&qword_1007757E8, &unk_100635E60);
    v6 = (v1 + *(v5 + 48));
    v7 = (v1 + *(v5 + 80));
    v8 = enum case for REMUserOperation.autoCategorizeDisable(_:);
    v9 = type metadata accessor for REMUserOperation();
    (*(*(v9 - 8) + 104))(v1, v8, v9);
    *v6 = TTRUserDefaults.activitySessionId.getter();
    v6[1] = v10;
    TTRUserDefaults.activitySessionBeginTime.getter();
    *v7 = _typeName(_:qualified:)();
    v7[1] = v11;
    (*(v2 + 104))(v1, enum case for REMAnalyticsEvent.userOperation(_:), v3);
    REMAnalyticsManager.post(event:)();

    (*(v2 + 8))(v1, v3);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100206D2C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 115) = a1;
  v3 = type metadata accessor for TTRRemindersListLayout();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 64) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 72) = v5;
  *(v2 + 80) = v4;

  return _swift_task_switch(sub_100206E3C, v5, v4);
}

uint64_t sub_100206E3C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = enum case for TTRRemindersListLayout.list(_:);
  v6 = *(v4 + 104);
  v6(v1, enum case for TTRRemindersListLayout.list(_:), v3);
  (*(v4 + 16))(v2, v1, v3);
  v7 = (*(v4 + 88))(v2, v3);
  if (v7 == v5)
  {
    v29 = v6;
    v8 = 0xD000000000000097;
    v9 = "List Detail Done {objectID: %@}";
    v10 = 0x636553207065654BLL;
    v11 = 0xEE003F736E6F6974;
LABEL_5:
    v12 = *(v0 + 56);
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);
    v15 = *(v0 + 24);
    v28 = *(v0 + 115);
    v16 = v9 | 0x8000000000000000;
    TTRLocalizedString(_:comment:)(*&v10, *&v8);
    v17 = *(v14 + 8);
    v17(v12, v15);
    v29(v13, v5, v15);
    _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO031ConvertGroceryOrAutoCategorizede9ToRegularE5AlertO38keepExistingSectionConfirmationMessage10listLayout20shouldUseItemWordingSSAA012TTRReminderseU0O_SbtFZ_0(v13, v28);
    v17(v13, v15);
    v18 = String._bridgeToObjectiveC()();

    v19 = String._bridgeToObjectiveC()();

    v20 = [objc_opt_self() alertControllerWithTitle:v18 message:v19 preferredStyle:1];
    *(v0 + 88) = v20;

    sub_100058000(&qword_1007757D0, &qword_100635E48);
    sub_100058000(&qword_1007757D8, &unk_100635E50);
    v21 = swift_allocObject();
    *(v0 + 96) = v21;
    *(v21 + 16) = xmmword_10062F800;
    v22._object = 0x8000000100672C50;
    v23._countAndFlagsBits = 1885693259;
    v23._object = 0xE400000000000000;
    v22._countAndFlagsBits = 0xD000000000000084;
    TTRLocalizedString(_:comment:)(v23, v22);
    *(v0 + 112) = 0;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    v24._countAndFlagsBits = 0x65766F6D6552;
    v25._object = 0x8000000100672C50;
    v24._object = 0xE600000000000000;
    v25._countAndFlagsBits = 0xD000000000000084;
    TTRLocalizedString(_:comment:)(v24, v25);
    *(v0 + 113) = 1;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    *(v0 + 114) = 2;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    v26 = swift_task_alloc();
    *(v0 + 104) = v26;
    *v26 = v0;
    v26[1] = sub_100207280;

    return sub_1001DFC8C(v20, v21);
  }

  if (v7 == enum case for TTRRemindersListLayout.columns(_:))
  {
    v29 = v6;
    v9 = "st to a regular list";
    v8 = 0xD000000000000096;
    v10 = 0x6C6F43207065654BLL;
    v11 = 0xED00003F736E6D75;
    goto LABEL_5;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_100207280(char a1)
{
  v2 = *v1;
  *(*v1 + 116) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_1002073CC, v4, v3);
}

uint64_t sub_1002073CC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 116);

  return v1(v2);
}

void sub_100207460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getObjectType();
  v8 = dispatch thunk of TTRIReminderDetailModuleInterface.reminderChangeItem.getter();
  v9 = [v8 objectID];

  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = v9;
  v12[4] = a3;
  v12[5] = a4;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100234D38;
  *(v13 + 24) = v12;
  v16[4] = sub_100068444;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100026440;
  v16[3] = &unk_10071BB48;
  v14 = _Block_copy(v16);

  v15 = v9;
  swift_unknownObjectRetain();

  [v10 withActionName:v11 block:v14];

  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }
}

uint64_t sub_100207648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v22 = a6;
  v23 = a8;
  v15 = type metadata accessor for TTRIReminderDetailStyle();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, enum case for TTRIReminderDetailStyle.full(_:), v15, v17);
  v24 = a2;
  v25 = a1;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = v19;
  v30 = 1;
  v31 = 1;
  v32 = a7;
  v33 = v23;
  v34 = v22;
  v35 = 256;
  v20 = firstly<A>(closure:)();
  (*(v16 + 8))(v19, v15);
  return v20;
}

uint64_t sub_1002077C0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007741F0);
  v1 = sub_100003E30(v0, qword_1007741F0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_1002078AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001F8E54(0x6843656C61636F6CLL, 0xED00006465676E61);
  }

  return result;
}

double sub_100207924(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001F8E54(0xD000000000000017, 0x8000000100677960);
  }

  return result;
}

void sub_100207994(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 24);

    if (v5)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 176))(a1, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100207A38(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    TTRRemindersListAutoCategorizationActivityMonitor.autoCategorizationInProgressReminderIDsForCurrentList.getter();
    v3 = *(v2 + 144);
    ObjectType = swift_getObjectType();
    (*(v3 + 208))(ObjectType, v3);
    swift_getObjectType();
    sub_100058000(&qword_100775570, &unk_1006470E0);
    sub_10000E188(&unk_100775578, &qword_100775570, &unk_1006470E0, &protocol conformance descriptor for Set<A>);
    v5 = dispatch thunk of TTRRemindersListTreeContentsQueryable.reminderItemsToUpdate<A>(forUpdated:)();

    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v2 + 24);
      v7 = swift_getObjectType();
      (*(v6 + 184))(v5, v7, v6);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100207BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 96) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = type metadata accessor for TTRTipKitDataModelSourceContextKeyCondition();
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 56) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 64) = v9;
  *(v6 + 72) = v8;

  return _swift_task_switch(sub_100207CB8, v9, v8);
}

uint64_t sub_100207CB8()
{
  v1 = *(v0 + 24);
  sub_100058000(&qword_100772150, &unk_100635D00);
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v0 + 80) = v5;
  *(v5 + 16) = xmmword_10062D400;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_100207E20;
  v7 = *(v0 + 96);

  return sub_1002401A8(v7, v5, 0);
}

uint64_t sub_100207E20(char a1)
{
  v2 = *v1;
  *(*v1 + 97) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_100207F6C, v4, v3);
}

uint64_t sub_100207F6C()
{
  v1 = *(v0 + 97);
  v2 = *(v0 + 96);

  if (v1 == 1 && v2 != 0)
  {
    v4 = *(*(v0 + 16) + 144);
    ObjectType = swift_getObjectType();
    if ((*(v4 + 64))(ObjectType, v4))
    {
      v7 = *(v0 + 40);
      v6 = *(v0 + 48);
      v8 = *(v0 + 32);
      swift_getObjectType();
      (*(v7 + 104))(v6, enum case for TTRTipKitDataModelSourceContextKeyCondition.conditionMet(_:), v8);
      dispatch thunk of TTRRemindersListDataModelSourceTipKitContextType.thisListHasCompletedReminders.setter();
      swift_unknownObjectRelease();
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100208078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for MainActor();
  v7[6] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[7] = v9;
  v7[8] = v8;

  return _swift_task_switch(sub_100208114, v9, v8);
}

uint64_t sub_100208114()
{
  v1 = v0[3];
  sub_100058000(&qword_100772150, &unk_100635D00);
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[9] = v5;
  *(v5 + 16) = xmmword_10062D400;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_100208274;

  return sub_100241DC4(v5, 0);
}

uint64_t sub_100208274(char a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_1002083C0, v4, v3);
}

uint64_t sub_1002083C0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);

  v2(v1);
  v3 = *(v0 + 8);

  return v3();
}

double sub_10020843C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = a3;
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100775740, &qword_10063D870);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_locationTriggerCancellable) = 0;
    v17 = Strong;

    v18 = type metadata accessor for TaskPriority();
    v19 = *(*(v18 - 8) + 56);
    v25 = v14;
    v19(v14, 1, 1, v18);
    (*(v8 + 16))(v11, v26, v7);
    (*(v4 + 16))(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v3);
    type metadata accessor for MainActor();

    v20 = static MainActor.shared.getter();
    v21 = *(v8 + 80);
    v27 = v3;
    v22 = (v21 + 40) & ~v21;
    v23 = (v9 + *(v4 + 80) + v22) & ~*(v4 + 80);
    v24 = swift_allocObject();
    *(v24 + 2) = v20;
    *(v24 + 3) = &protocol witness table for MainActor;
    *(v24 + 4) = v17;
    (*(v8 + 32))(&v24[v22], v11, v7);
    (*(v4 + 32))(&v24[v23], v6, v27);
    sub_10009E31C(0, 0, v25, &unk_1006360D0, v24);
  }

  return result;
}

uint64_t sub_100208774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_100058000(&qword_100775740, &qword_10063D870);
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[10] = v9;
  v6[11] = v8;

  return _swift_task_switch(sub_100208878, v9, v8);
}

uint64_t sub_100208878()
{
  v0[2] = *(v0[3] + 128);
  v1 = swift_task_alloc();
  v0[12] = v1;
  v2 = type metadata accessor for TTRIPrivacyChecker();
  *v1 = v0;
  v1[1] = sub_10020892C;

  return TTRPrivacyChecker.checkAndPromptLocationAccess()(v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_10020892C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_100208A4C, v3, v2);
}

void sub_100208A4C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v2 + 16))(v1, v0[4], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for Either.left<A, B>(_:))
  {
    v5 = v0[8];
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[5];

    (*(v7 + 96))(v5, v6);
    v9 = *v5;
    sub_100058000(&qword_100772150, &unk_100635D00);
    v10 = type metadata accessor for TTRRemindersListViewModel.Item();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10062D400;
    (*(v11 + 16))(v13 + v12, v8, v10);
    v14 = v9;
    sub_100242E78(v9, v13);
LABEL_5:

    v24 = v0[1];

    v24();
    return;
  }

  if (v4 == enum case for Either.right<A, B>(_:))
  {
    v15 = v0[8];
    v16 = v0[6];
    v17 = v0[7];
    v18 = v0[5];

    (*(v17 + 96))(v15, v16);
    v19 = *v15;
    sub_100058000(&qword_100772150, &unk_100635D00);
    v20 = type metadata accessor for TTRRemindersListViewModel.Item();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10062D400;
    (*(v21 + 16))(v23 + v22, v18, v20);
    v14 = v19;
    sub_100243084(v19, v23);
    goto LABEL_5;
  }

  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100003E30(v25, qword_1007741F0);
  v26 = sub_100008E04(_swiftEmptyArrayStorage);
  v27 = sub_100008E04(_swiftEmptyArrayStorage);

  sub_1003F9818("Unsupported location quick pick item", 36, 2uLL, v26, v27);
}

uint64_t sub_100208E64(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[23] = a8;
  v9[24] = a9;
  v9[21] = a6;
  v9[22] = a7;
  v9[20] = a5;
  v10 = type metadata accessor for TTRIPopoverAnchor();
  v9[25] = v10;
  v9[26] = *(v10 - 8);
  v9[27] = swift_task_alloc();
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9[28] = v11;
  v12 = *(v11 - 8);
  v9[29] = v12;
  v9[30] = *(v12 + 64);
  v9[31] = swift_task_alloc();
  sub_100058000(&unk_100775910, &unk_100635F20);
  v9[32] = swift_task_alloc();
  v13 = type metadata accessor for TTRAssignment();
  v9[33] = v13;
  v14 = *(v13 - 8);
  v9[34] = v14;
  v9[35] = *(v14 + 64);
  v9[36] = swift_task_alloc();
  v9[37] = swift_task_alloc();
  v9[38] = type metadata accessor for MainActor();
  v9[39] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v9[40] = v16;
  v9[41] = v15;

  return _swift_task_switch(sub_100209070, v16, v15);
}

uint64_t sub_100209070(__n128 a1)
{
  v2 = sub_1004EDBEC(v1[21], a1);
  v1[42] = v2;
  if (v2)
  {
    v1[43] = *(v1[20] + 104);
    v3 = v2;
    v1[44] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v1[45] = v5;
    v1[46] = v4;

    return _swift_task_switch(sub_10020919C, v5, v4);
  }

  else
  {

    v6 = v1[1];

    return v6();
  }
}

uint64_t sub_10020919C()
{
  v1 = swift_task_alloc();
  v0[47] = v1;
  *v1 = v0;
  v1[1] = sub_100209244;
  v2 = v0[32];
  v3 = v0[21];

  return TTRRemindersListPresenterCapabilityCore.loadAssignment(for:pendingMoveTargetListForHostingReminder:)(v2, v3, 0);
}

uint64_t sub_100209244()
{
  v1 = *v0;

  v2 = *(v1 + 368);
  v3 = *(v1 + 360);

  return _swift_task_switch(sub_100209364, v3, v2);
}

uint64_t sub_100209364()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_1002093C8, v1, v2);
}

uint64_t sub_1002093C8()
{
  object = v0[16]._object;
  countAndFlagsBits = v0[17]._countAndFlagsBits;
  v3 = v0[16]._countAndFlagsBits;

  if ((*(countAndFlagsBits + 48))(v3, 1, object) == 1)
  {
    v4 = v0[21]._countAndFlagsBits;
    v5 = v0[16]._countAndFlagsBits;

    sub_1000079B4(v5, &unk_100775910, &unk_100635F20);
  }

  else
  {
    v6 = v0[11]._object;
    v7 = *(v0[17]._countAndFlagsBits + 32);
    v7(v0[18]._object, v0[16]._countAndFlagsBits, v0[16]._object);
    if (v6)
    {
      String.append(_:)(v0[11]);

      v8._countAndFlagsBits = 34;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);

      TTRAssignment.assignmentString.getter();
      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      TTRAssignment.assignmentString.getter();
      v9 = 0;
    }

    v10 = String._bridgeToObjectiveC()();

    v65 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:0];

    if ((TTRAssignment.isSelfAssigned.getter() & 1) == 0)
    {
      v61 = v7;
      v11 = v0[18]._countAndFlagsBits;
      v12 = v0[18]._object;
      v13 = v0[17]._countAndFlagsBits;
      v14 = v0[16]._object;
      v15._countAndFlagsBits = 0x6E6F432077656956;
      v15._object = 0xEC00000074636174;
      v16._countAndFlagsBits = 0xD000000000000033;
      v16._object = 0x8000000100678DC0;
      TTRLocalizedString(_:comment:)(v15, v16);
      v17 = swift_allocObject();
      swift_weakInit();
      (*(v13 + 16))(v11, v12, v14);
      v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      v61(v19 + v18, v11, v14);

      v20 = String._bridgeToObjectiveC()();

      v0[3]._countAndFlagsBits = sub_100236EF0;
      v0[3]._object = v19;
      v0[1]._countAndFlagsBits = _NSConcreteStackBlock;
      v0[1]._object = 1107296256;
      v0[2]._countAndFlagsBits = sub_1001762CC;
      v0[2]._object = &unk_10071C868;
      v21 = _Block_copy(&v0[1]);

      v22 = [objc_opt_self() actionWithTitle:v20 style:0 handler:v21];
      _Block_release(v21);

      [v65 addAction:v22];
    }

    v23 = v0[21]._countAndFlagsBits;
    v24 = v0[15]._object;
    v58 = v0[15]._countAndFlagsBits;
    v25 = v0[14]._countAndFlagsBits;
    v26 = v0[14]._object;
    v60 = v0[13]._object;
    v62 = v0[13]._countAndFlagsBits;
    aBlock = v0[12]._object;
    v27 = v0[10]._object;
    v59 = v0[12]._countAndFlagsBits;
    v28._countAndFlagsBits = 0x6E67697373616552;
    v29._countAndFlagsBits = 0xD00000000000002FLL;
    v29._object = 0x8000000100678E00;
    v28._object = 0xE800000000000000;
    TTRLocalizedString(_:comment:)(v28, v29);
    v30 = swift_allocObject();
    swift_weakInit();
    v26[2](v24, v27, v25);
    v31 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v23;
    v26[4]((v32 + v31), v24, v25);
    *(v32 + ((v58 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v59;
    v33 = v23;

    v59;
    v34 = String._bridgeToObjectiveC()();

    v0[6]._countAndFlagsBits = sub_100236FA8;
    v0[6]._object = v32;
    v0[4]._countAndFlagsBits = _NSConcreteStackBlock;
    v0[4]._object = 1107296256;
    v0[5]._countAndFlagsBits = sub_1001762CC;
    v0[5]._object = &unk_10071C8B8;
    v35 = _Block_copy(&v0[4]);

    v36 = objc_opt_self();
    v37 = [v36 actionWithTitle:v34 style:0 handler:v35];
    _Block_release(v35);

    v64 = v37;
    [v65 addAction:v37];
    v38._object = 0x8000000100678E30;
    v39._countAndFlagsBits = 0xD000000000000038;
    v39._object = 0x8000000100678E50;
    v38._countAndFlagsBits = 0xD000000000000011;
    TTRLocalizedString(_:comment:)(v38, v39);
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = v33;
    v42 = v33;

    v43 = String._bridgeToObjectiveC()();

    v0[9]._countAndFlagsBits = sub_100237088;
    v0[9]._object = v41;
    v0[7]._countAndFlagsBits = _NSConcreteStackBlock;
    v0[7]._object = 1107296256;
    v0[8]._countAndFlagsBits = sub_1001762CC;
    v0[8]._object = &unk_10071C908;
    v44 = _Block_copy(&v0[7]);

    v45 = [v36 actionWithTitle:v43 style:2 handler:v44];
    _Block_release(v44);

    [v65 addAction:v45];
    v46._countAndFlagsBits = 0x6C65636E6143;
    v47._countAndFlagsBits = 0xD000000000000020;
    v47._object = 0x8000000100678E90;
    v46._object = 0xE600000000000000;
    TTRLocalizedString(_:comment:)(v46, v47);
    v48 = String._bridgeToObjectiveC()();

    v49 = [v36 actionWithTitle:v48 style:1 handler:0];

    [v65 addAction:v49];
    static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
    UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
    (*(v62 + 8))(v60, aBlock);
    Strong = swift_unknownObjectWeakLoadStrong();
    v51 = v0[21]._countAndFlagsBits;
    v52 = v0[18]._object;
    v54 = v0[16]._object;
    v53 = v0[17]._countAndFlagsBits;
    if (Strong)
    {
      v55 = Strong;
      [Strong presentViewController:v65 animated:1 completion:0];
    }

    (*(v53 + 8))(v52, v54);
  }

  v56 = v0->_object;

  return v56();
}

void sub_100209C48(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for TTRAssigneeCandidateData();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100775AC8, &qword_1006360C0);
  __chkstk_darwin(v6 - 8);
  v8 = &aBlock[-1] - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (TTRAssignment.isAssignedToMe.getter())
    {
      TTRAssignment.originator.getter();
      if ((*(v3 + 48))(v8, 1, v2) == 1)
      {
        sub_1000079B4(v8, &qword_100775AC8, &qword_1006360C0);
LABEL_10:

        return;
      }
    }

    else
    {
      TTRAssignment.assignee.getter();
      v8 = v5;
    }

    v11 = TTRAssigneeCandidateData.contact.getter();
    (*(v3 + 8))(v8, v2);
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = [objc_opt_self() viewControllerForContact:v11];
    v13 = objc_allocWithZone(UINavigationController);
    v14 = v12;
    v15 = [v13 initWithRootViewController:v14];
    v16 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v10 action:"dismissViewContact:"];
    v17 = [v14 navigationItem];

    [v17 setLeftBarButtonItem:v16];
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = [v18 presentedViewController];
      if (v20)
      {
        v21 = v20;
        v22 = swift_allocObject();
        *(v22 + 16) = v19;
        *(v22 + 24) = v15;
        *(v22 + 32) = 1;
        aBlock[4] = sub_10023A490;
        aBlock[5] = v22;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10001047C;
        aBlock[3] = &unk_10071C958;
        v23 = _Block_copy(aBlock);
        v24 = v19;
        v25 = v15;

        [v21 dismissViewControllerAnimated:1 completion:v23];

        _Block_release(v23);

        return;
      }

      [v19 presentViewController:v15 animated:1 completion:0];
    }
  }
}

double sub_10020A01C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v57 = a4;
  v5 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - v6;
  v8 = sub_100058000(&qword_10076DF38, &qword_100631A08);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  v64 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRIReminderDetailStyle();
  v62 = *(v14 - 8);
  __chkstk_darwin(v14);
  v60 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TTRReminderDetailSubject();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v50 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v55 = v10;
    v56 = v7;
    v25 = Strong;
    swift_getObjectType();
    v54 = dispatch thunk of TTRRemindersListInteractorType.reminderChangeItem(forEditing:)();
    sub_100058000(&qword_100772150, &unk_100635D00);
    v26 = type metadata accessor for TTRRemindersListViewModel.Item();
    v27 = *(v26 - 8);
    v28 = *(v27 + 80);
    v63 = v11;
    v29 = (v28 + 32) & ~v28;
    v30 = swift_allocObject();
    v53 = v13;
    *(v30 + 16) = xmmword_10062D400;
    (*(v27 + 16))(v30 + v29, v57, v26);
    static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
    v31 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v31 - 8) + 56))(v22, 0, 1, v31);
    sub_10000794C(v22, v19, &unk_10076FCD0, &unk_1006304D0);
    v32 = v14;
    v51 = v14;
    v33 = type metadata accessor for TTRIRemindersListDetailPopoverAnchorProvider();
    swift_allocObject();

    v34 = TTRIRemindersListDetailPopoverAnchorProvider.init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)();
    TTRIRemindersListDetailPopoverAnchorProvider.temporarilyAssertCellInfoButtonVisibility()();
    sub_1000079B4(v22, &unk_10076FCD0, &unk_1006304D0);
    type metadata accessor for ReminderDetailModuleDelegate();
    v35 = swift_allocObject();
    swift_weakInit();
    *(v35 + 24) = 0;
    *(v35 + 32) = 0;
    v52 = v25;
    swift_weakAssign();
    v36 = *(v35 + 24);
    v37 = *(v35 + 32);
    *(v35 + 24) = 0;
    *(v35 + 32) = 0;
    sub_1000301AC(v36, v37);
    v38 = sub_10022DFF4(&qword_100775658, type metadata accessor for ReminderDetailModuleDelegate, &unk_100635C00);
    v39 = (v25 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler);
    *v39 = v35;
    v39[1] = v38;

    swift_unknownObjectRelease();
    v50 = *(v25 + 88);
    v65[3] = v33;
    v65[4] = &protocol witness table for TTRIRemindersListDetailPopoverAnchorProvider;
    v65[0] = v34;

    v57 = v54;
    v40 = v58;
    TTRReminderDetailSubject.init(reminderChangeItem:)();
    v41 = v62;
    v42 = v60;
    (*(v62 + 104))(v60, enum case for TTRIReminderDetailStyle.assignmentPicker(_:), v32);
    v43 = v53;
    (*(v64 + 104))(v53, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection.assignments(_:), v63);
    v44 = type metadata accessor for TTRSectionLite();
    v45 = v55;
    (*(*(v44 - 8) + 56))(v55, 1, 1, v44);
    v46 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
    v47 = v56;
    v48 = (*(*(v46 - 8) + 56))(v56, 1, 1, v46);
    __chkstk_darwin(v48);
    v49 = v50;
    *(&v50 - 12) = v40;
    *(&v50 - 11) = v49;
    *(&v50 - 10) = v43;
    *(&v50 - 9) = v35;
    *(&v50 - 8) = v38;
    *(&v50 - 7) = v42;
    *(&v50 - 48) = 1;
    *(&v50 - 5) = 1;
    *(&v50 - 4) = v45;
    *(&v50 - 3) = v47;
    *(&v50 - 2) = v65;
    *(&v50 - 4) = 1;
    firstly<A>(closure:)();

    sub_1000079B4(v47, &qword_10076DF30, &qword_100631A00);
    sub_1000079B4(v45, &qword_10076DF38, &qword_100631A08);
    (*(v64 + 8))(v43, v63);
    (*(v41 + 8))(v42, v51);
    (*(v59 + 8))(v40, v61);
    sub_100004758(v65);
  }

  return result;
}

uint64_t sub_10020A7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of TTRRemindersListInteractorType.removeAllAssignments(from:)();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10020A844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget(0);
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_100775720, &unk_100635D90);
  __chkstk_darwin(v14 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v42 = v11;
    v20 = a5;
    sub_10000794C(a1, v19, &qword_100775720, &unk_100635D90);
    v21 = type metadata accessor for TTRLocationQuickPickItem();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v19, 1, v21) == 1 || ((sub_10000794C(v19, v16, &qword_100775720, &unk_100635D90), v23 = (*(v22 + 88))(v16, v21), v23 != enum case for TTRLocationQuickPickItem.current(_:)) ? (v24 = v23 == enum case for TTRLocationQuickPickItem.home(_:)) : (v24 = 1), !v24 ? (v25 = v23 == enum case for TTRLocationQuickPickItem.work(_:)) : (v25 = 1), !v25 ? (v26 = v23 == enum case for TTRLocationQuickPickItem.gettingInCar(_:)) : (v26 = 1), !v26 ? (v27 = v23 == enum case for TTRLocationQuickPickItem.gettingOutOfCar(_:)) : (v27 = 1), v27))
    {
      sub_1000079B4(v19, &qword_100775720, &unk_100635D90);
      sub_1001E6FE0(a1, a4);
    }

    else if (v23 == enum case for TTRLocationQuickPickItem.custom(_:))
    {
      v41 = v20;
      if (qword_100767008 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      v40 = sub_100003E30(v28, qword_1007741F0);
      sub_100058000(&unk_100775610, &unk_1006323A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = 1835365481;
      *(inited + 40) = 0xE400000000000000;
      v30 = type metadata accessor for TTRRemindersListViewModel.Item();
      sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v31 = a4;
      v32 = TTRTreeStorageItem.treeItemDescription.getter();
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v32;
      *(inited + 56) = v33;
      v34 = sub_100008E04(inited);
      swift_setDeallocating();
      sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
      sub_10000FD44("Reminders List Show Location Picker {item: %@}", 46, 2, v34);

      (*(*(v30 - 8) + 16))(v13, v31, v30);
      swift_storeEnumTagMultiPayload();
      v35 = type metadata accessor for TTRIPopoverAnchor();
      v36 = *(v35 - 8);
      (*(v36 + 16))(v10, v41, v35);
      (*(v36 + 56))(v10, 0, 1, v35);
      sub_10020AE28(v13, v10, TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:), 0);

      sub_1000079B4(v10, &unk_10076FCD0, &unk_1006304D0);
      sub_10022E05C(v13, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
      sub_1000079B4(v19, &qword_100775720, &unk_100635D90);
    }

    else
    {
      (*(v22 + 8))(v16, v21);
      if (qword_100767008 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100003E30(v37, qword_1007741F0);
      v38 = sub_100008E04(_swiftEmptyArrayStorage);
      v39 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("unknown location quick pick item", 32, 2uLL, v38, v39);
      __break(1u);
    }
  }
}

uint64_t sub_10020AE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a4;
  v44 = a3;
  v8 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v8 - 8);
  v46 = &v43 - v9;
  v10 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget(0);
  __chkstk_darwin(v20);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100233874(a1, v22, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    sub_10000794C(a2, v12, &unk_10076FCD0, &unk_1006304D0);
    v24 = type metadata accessor for TTRIPopoverAnchor();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (v26(v12, 1, v24) == 1)
    {
      if ([v23 presentationSourceItem])
      {
        swift_unknownObjectRetain();
        static TTRIPopoverAnchor.sourceItem(_:permittedArrowDirections:)();
        swift_unknownObjectRelease_n();
        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      (*(v25 + 56))(v15, v27, 1, v24);
      if (v26(v12, 1, v24) != 1)
      {
        sub_1000079B4(v12, &unk_10076FCD0, &unk_1006304D0);
      }
    }

    else
    {
      (*(v25 + 32))(v15, v12, v24);
      (*(v25 + 56))(v15, 0, 1, v24);
    }

    sub_100227684(v15, &v51);

    sub_1000079B4(v15, &unk_10076FCD0, &unk_1006304D0);
    v34 = v51;
    if (v51)
    {
      v47 = v52;
      v48 = v53;
      *v49 = v54[0];
      *&v49[9] = *(v54 + 9);
      type metadata accessor for NavigationBarReminderCreationLocationPickerModuleDelegate();
      v31 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      *(v31 + 24) = v34;
      v32 = sub_10022DFF4(&qword_100775750, type metadata accessor for NavigationBarReminderCreationLocationPickerModuleDelegate, &unk_1006359E8);
      v35 = (v5 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentLocationPickerModuleDelegate);
      *v35 = v31;
      v35[1] = v32;
      v29 = v34;
      goto LABEL_14;
    }
  }

  else
  {
    (*(v17 + 32))(v19, v22, v16);
    v28 = sub_1002111BC(v19, a2, v44, v45, &v51);
    v29 = v51;
    if (v51)
    {
      v47 = v52;
      v48 = v53;
      *v49 = v54[0];
      *&v49[9] = *(v54 + 9);
      v30 = [v51 objectID];
      (*(v17 + 8))(v19, v16);
      type metadata accessor for LocationPickerModuleDelegate();
      v31 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      *(v31 + 24) = v30;
      v32 = sub_10022DFF4(&qword_100775758, type metadata accessor for LocationPickerModuleDelegate, &unk_100635A10);
      v33 = (v5 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentLocationPickerModuleDelegate);
      *v33 = v31;
      v33[1] = v32;
LABEL_14:

      swift_unknownObjectRelease();
      v51 = v29;
      v52 = v47;
      v53 = v48;
      v54[0] = *v49;
      *(v54 + 9) = *&v49[9];

      v36 = type metadata accessor for TaskPriority();
      v37 = v46;
      (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
      sub_100233AF0(&v51, &v47);
      type metadata accessor for MainActor();

      v38 = static MainActor.shared.getter();
      v39 = swift_allocObject();
      v40 = v47;
      *(v39 + 56) = v48;
      v41 = *&v49[16];
      *(v39 + 72) = *v49;
      *(v39 + 88) = v41;
      *(v39 + 16) = v38;
      *(v39 + 24) = &protocol witness table for MainActor;
      *(v39 + 32) = v5;
      *(v39 + 104) = v50;
      *(v39 + 40) = v40;
      *(v39 + 112) = v31;
      *(v39 + 120) = v32;
      sub_10009E31C(0, 0, v37, &unk_100635DD0, v39);
      swift_unknownObjectRelease();

      return sub_100233BFC(&v51);
    }

    (*(v17 + 8))(v19, v16, v28);
  }

  return sub_1000079B4(&v51, &qword_100775748, &qword_100635DC0);
}

void sub_10020B500(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getObjectType();
    type metadata accessor for RDIDispatchQueue();
    swift_unknownObjectRetain();
    v7 = static RDIDispatchQueue.storeUserInteractiveQueue.getter();
    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    v8 = static OS_dispatch_queue.main.getter();
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a1;
    v9[4] = a2;

    dispatch thunk of TTRRemindersListInteractorType.fetchAllHashtagLabels(backgroundQueue:callbackQueue:completion:)();

    swift_unknownObjectRelease();
  }

  else
  {
    a1(_swiftEmptyArrayStorage);
  }
}

void sub_10020B660(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  v5 = sub_1004B61FC(v4);

  sub_10057D3E0(v6, v5);
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = a3;
    v11 = sub_1003AC440(v9, 0);
    v12 = sub_1003B2F84(&v14, v11 + 4, v9, v8);
    v13 = v14;

    sub_10008BA48(v13);
    if (v12 != v9)
    {
      __break(1u);

      __break(1u);
      return;
    }

    a3 = v10;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11;
  sub_10022C868(&v14);

  a3(v14);
}

double sub_10020B7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 24);
      ObjectType = swift_getObjectType();
      (*(v7 + 208))(a3, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10020B854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a3 == 2)
    {
      goto LABEL_6;
    }

    if (a3 == 1)
    {
      sub_100058000(&qword_100772150, &unk_100635D00);
      v9 = type metadata accessor for TTRRemindersListViewModel.Item();
      v10 = *(v9 - 8);
      v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_10062D400;
      (*(v10 + 16))(v12 + v11, a5, v9);

      sub_100243240(a1, a2, v12);

      return;
    }

    if (a3)
    {
      if (qword_100767008 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100003E30(v17, qword_1007741F0);
      v18 = sub_100008E04(_swiftEmptyArrayStorage);
      v19 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("unknown menu item state", 23, 2uLL, v18, v19);
      __break(1u);
    }

    else
    {
LABEL_6:
      sub_100058000(&qword_100772150, &unk_100635D00);
      v13 = type metadata accessor for TTRRemindersListViewModel.Item();
      v14 = *(v13 - 8);
      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10062D400;
      (*(v14 + 16))(v16 + v15, a5, v13);

      sub_100243264(a1, a2, v16);
    }
  }
}

uint64_t sub_10020BB44(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = [a1 presentationSourceItem];
    sub_100205A84(a3, v6, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_10020BBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v9, v10);

    sub_100243ECC(a3, a1, a4);
  }

  return result;
}

double sub_10020BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter;
    v13 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v13, v14);
    if (a2)
    {
      v15 = *(v11 + v12);
      if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
      {
        swift_getObjectType();
        dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
        swift_unknownObjectRelease();
      }

      sub_1004EF1A4(v15, v16);
      sub_10024F488(a4, a1, a2, a5, 0, 0, 1, 0, 0);
    }

    else
    {
      v17 = *(v11 + v12);
      if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
      {
        swift_getObjectType();
        dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
        swift_unknownObjectRelease();
      }

      sub_1004EF1A4(v17, v18);
      sub_10024F488(a4, 0, 0xE000000000000000, a5, 0, 1, 1, 0, 0);
    }
  }

  return result;
}

double sub_10020BE2C(void (*a1)(void *), uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [a4 list];
    v13 = [v12 groceryContext];

    if (v13)
    {
      v14 = [v13 groceryLocaleID];
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = type metadata accessor for TaskPriority();
        (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
        type metadata accessor for MainActor();

        v20 = static MainActor.shared.getter();
        v21 = swift_allocObject();
        v21[2] = v20;
        v21[3] = &protocol witness table for MainActor;
        v21[4] = v11;
        v21[5] = v16;
        v21[6] = v18;
        v21[7] = a1;
        v21[8] = a2;
        sub_10009E31C(0, 0, v9, &unk_100636060, v21);

        return result;
      }
    }

    a1(_swiftEmptyArrayStorage);
  }

  else
  {
    a1(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_10020C058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[8] = v10;
  v8[9] = v9;

  return _swift_task_switch(sub_10020C0F8, v10, v9);
}

uint64_t sub_10020C0F8()
{
  v1 = *(v0[2] + 80);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_10020C1B4;
  v5 = v0[3];
  v4 = v0[4];

  return dispatch thunk of TTRRemindersListInteractorType.fetchGrocerySuggestedSectionName(with:)(v5, v4, ObjectType, v1);
}

uint64_t sub_10020C1B4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_10020C2DC, v4, v3);
}

uint64_t sub_10020C2DC()
{
  v1 = v0[11];
  v2 = v0[5];

  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10020C360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 64) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  type metadata accessor for MainActor();
  *(v6 + 32) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_10020C3FC, v8, v7);
}

uint64_t sub_10020C3FC()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10020C4A0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 64);

  return sub_1002401A8(v3, v2, 1);
}

uint64_t sub_10020C4A0()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10020C5C0, v3, v2);
}

uint64_t sub_10020C5C0()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
    swift_unknownObjectRelease();
  }

  sub_1004EF1A4(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

void *sub_10020C668(uint64_t a1)
{
  v23 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v24 = _swiftEmptyArrayStorage;
  sub_1004A1CD0(0, v5, 0);
  v6 = v24;
  if (v5)
  {
    v8 = *(v2 + 16);
    v7 = v2 + 16;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v21 = *(v7 + 56);
    v22 = v8;
    v20 = (v7 - 8);
    do
    {
      v10 = v23;
      v11 = v7;
      v22(v4, v9, v23);
      sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v12 = TTRTreeStorageItem.treeItemDescription.getter();
      v14 = v13;
      (*v20)(v4, v10);
      v24 = v6;
      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        sub_1004A1CD0((v15 > 1), v16 + 1, 1);
        v6 = v24;
      }

      v6[2] = v16 + 1;
      v17 = &v6[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      v9 += v21;
      --v5;
      v7 = v11;
    }

    while (v5);
  }

  return v6;
}

uint64_t sub_10020C85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10020C8F4, v7, v6);
}

uint64_t sub_10020C8F4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10020C994;
  v2 = *(v0 + 24);

  return sub_100241DC4(v2, 1);
}

uint64_t sub_10020C994()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10023A48C, v3, v2);
}

uint64_t sub_10020CAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_10020CB4C, v6, v5);
}

uint64_t sub_10020CB4C()
{
  v0[2] = *(v0[3] + 128);
  v1 = swift_task_alloc();
  v0[7] = v1;
  v2 = type metadata accessor for TTRIPrivacyChecker();
  *v1 = v0;
  v1[1] = sub_10020C994;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v2, &protocol witness table for TTRIPrivacyChecker);
}

void sub_10020CC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a3;
  v77 = a4;
  v78 = a2;
  v73 = a1;
  v60 = type metadata accessor for TTRRemindersListPostponeType();
  v5 = *(v60 - 8);
  v75 = *(v5 + 64);
  __chkstk_darwin(v60);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  static TTRLocalizableStrings.Alerts.updateRecurringReminderConfirmationTitle(isUpdatingMoreThanOneReminder:)();
  v10 = String._bridgeToObjectiveC()();

  v76 = [objc_opt_self() alertControllerWithTitle:v10 message:0 preferredStyle:1];

  v62 = static TTRLocalizableStrings.Alerts.updateRecurringReminderThisInstanceButton(isUpdatingMoreThanOneReminder:)();
  v61 = v11;
  v12 = swift_allocObject();
  swift_weakInit();
  v72 = *(v8 + 16);
  v74 = v8 + 16;
  v13 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v13;
  v14 = v7;
  v59 = v7;
  v72(v13, a1, v7);
  v15 = v5;
  v70 = *(v5 + 16);
  v71 = v5 + 16;
  v16 = v57;
  v17 = v60;
  v70(v57, v78, v60);
  v18 = *(v8 + 80);
  v19 = (v18 + 24) & ~v18;
  v20 = *(v15 + 80);
  v66 = v19;
  v69 = v18 | v20;
  v21 = (v9 + v20 + v19) & ~v20;
  v63 = v21;
  v56 = (v75 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  v23 = *(v8 + 32);
  v67 = v8 + 32;
  v68 = v23;
  v23(v22 + v19, v13, v14);
  v24 = *(v15 + 32);
  v64 = v15 + 32;
  v65 = v24;
  v25 = v22 + v21;
  v26 = v16;
  v27 = v17;
  v24(v25, v16, v17);
  v28 = v56;
  v29 = (v22 + v56);
  v30 = v77;
  *v29 = v79;
  v29[1] = v30;

  v31 = String._bridgeToObjectiveC()();

  v84 = sub_1002363C8;
  v85 = v22;
  aBlock = _NSConcreteStackBlock;
  v81 = 1107296256;
  v62 = &v82;
  v82 = sub_1001762CC;
  v83 = &unk_10071C520;
  v32 = _Block_copy(&aBlock);

  v61 = objc_opt_self();
  v75 = [v61 actionWithTitle:v31 style:0 handler:v32];
  _Block_release(v32);

  static TTRLocalizableStrings.Alerts.updateRecurringReminderAllFutureInstancesButton.getter();
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = v58;
  v35 = v59;
  v72(v58, v73, v59);
  v36 = v26;
  v37 = v26;
  v38 = v27;
  v70(v37, v78, v27);
  v39 = swift_allocObject();
  *(v39 + 16) = v33;
  v68(v39 + v66, v34, v35);
  v65(v39 + v63, v36, v38);
  v40 = (v39 + v28);
  v41 = v79;
  v42 = v77;
  *v40 = v79;
  v40[1] = v42;

  v43 = String._bridgeToObjectiveC()();

  v84 = sub_100236548;
  v85 = v39;
  aBlock = _NSConcreteStackBlock;
  v81 = 1107296256;
  v82 = sub_1001762CC;
  v83 = &unk_10071C570;
  v44 = _Block_copy(&aBlock);

  v45 = v61;
  v46 = [v61 actionWithTitle:v43 style:0 handler:v44];
  _Block_release(v44);

  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  v47 = swift_allocObject();
  *(v47 + 16) = v41;
  *(v47 + 24) = v42;

  v48 = String._bridgeToObjectiveC()();

  v84 = sub_10023666C;
  v85 = v47;
  aBlock = _NSConcreteStackBlock;
  v81 = 1107296256;
  v82 = sub_1001762CC;
  v83 = &unk_10071C5C0;
  v49 = _Block_copy(&aBlock);

  v50 = v76;
  v51 = [v45 actionWithTitle:v48 style:1 handler:v49];
  v52 = v49;
  v53 = v75;
  _Block_release(v52);

  [v50 addAction:v53];
  [v50 addAction:v46];
  [v50 addAction:v51];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = Strong;
    [Strong presentViewController:v50 animated:1 completion:0];
  }
}

double sub_10020D374(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v22 = a1;
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    v21 = sub_100003E30(v10, qword_1007741F0);
    sub_100058000(&unk_100775610, &unk_1006323A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D3F0;
    *(inited + 32) = 6581359;
    *(inited + 40) = 0xE300000000000000;
    v12 = *(v9 + 144);
    ObjectType = swift_getObjectType();
    (*(v12 + 576))(ObjectType, v12);
    sub_10022DFF4(&qword_100775A00, &type metadata accessor for REMRemindersListDataView.SortingStyle, &protocol conformance descriptor for REMRemindersListDataView.SortingStyle);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    *(inited + 48) = v14;
    *(inited + 56) = v16;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 7824750;
    *(inited + 88) = 0xE300000000000000;
    v17 = v22;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = v18;
    *(inited + 104) = v19;
    v20 = sub_100008E04(inited);
    swift_setDeallocating();
    sub_100058000(&unk_10076BA70, &qword_10062FD60);
    swift_arrayDestroy();
    sub_10000FD44("Reminder list changed sorting style {old: %@, new: %@}", 54, 2, v20);

    (*(v4 + 16))(v6, v17, v3);
    sub_1001F7B6C(v6);
  }

  return result;
}

uint64_t sub_10020D648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v93 = a4;
  v78 = a2;
  v11 = sub_100058000(&qword_100775608, &qword_1006367C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = &v72 - v14;
  v16 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v16 - 8);
  v87 = &v72 - v17;
  v18 = type metadata accessor for TTRIPopoverAnchor();
  v80 = *(v18 - 8);
  v81 = v18;
  __chkstk_darwin(v18);
  v73 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v20 - 8);
  v79 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v77 = &v72 - v23;
  v24 = sub_100058000(&qword_100775878, &qword_100635EE0);
  __chkstk_darwin(v24 - 8);
  v76 = &v72 - v25;
  v26 = sub_100058000(&unk_100775880, &qword_100635EE8);
  __chkstk_darwin(v26 - 8);
  v75 = &v72 - v27;
  v28 = type metadata accessor for AlertStyleBuilder();
  v82 = *(v28 - 8);
  __chkstk_darwin(v28);
  v94 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v6;
  v30 = sub_1002521EC(a1);
  type metadata accessor for TTRListEditor();
  v92 = v30;
  v31 = static TTRListEditor.filterOutSubtasksWithParents(in:)();
  v32 = v31;
  v89 = a5;
  v90 = a6;
  v88 = v15;
  v85 = v12;
  v86 = v13;
  v83 = v28;
  v84 = a3;
  v72 = v31 >> 62;
  if (!(v31 >> 62))
  {
    v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_3;
    }

LABEL_21:

    if (v92 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    v39 = v77;
    static TTRLocalizableStrings.Alerts.deleteReminderConfirmationTitle(isDeletingMoreThanOneReminder:)();
    static TTRLocalizableStrings.RecentlyDeletedList.permanentlyDeleteReminderConfirmationMessage(withCount:discardRemindersCountIfNeeded:)();
    static TTRLocalizableStrings.RecentlyDeletedList.permanentlyDeleteReminderConfirmationMessage(withCount:discardRemindersCountIfNeeded:)();
    goto LABEL_24;
  }

LABEL_20:
  v33 = _CocoaArrayWrapper.endIndex.getter();
  if (!v33)
  {
    goto LABEL_21;
  }

LABEL_3:
  swift_getObjectType();
  v74 = 0;
  v34 = 0;
  v95 = v32 & 0xFFFFFFFFFFFFFF8;
  do
  {
    while (1)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v34 >= *(v95 + 16))
        {
          goto LABEL_19;
        }

        v35 = *(v32 + 8 * v34 + 32);
      }

      v36 = v35;
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v38 = dispatch thunk of TTRDeleteRemindersInteractorCapability.fetchSubtasksMasks(_:includingConcealed:)();

      if (!v38)
      {
        break;
      }

      v74 = 1;
      ++v34;
      if (v37 == v33)
      {
        goto LABEL_15;
      }
    }

    ++v34;
  }

  while (v37 != v33);
  if ((v74 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v72)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v39 = v77;

  static TTRLocalizableStrings.RecentlyDeletedList.permanentlyDeletedReminderWithSubtasksConfirmationAlertMessage(isDeletingMoreThanOneReminder:)();
  static TTRLocalizableStrings.Alerts.deleteReminderWithSubtasksConfirmationTitle(isDeletingMoreThanOneReminder:)();

LABEL_24:
  v40 = v84;
  static TTRLocalizableStrings.Common.deleteButton.getter();
  v41 = v75;
  AlertStyleBuilder.AlertInfo.init(alertTitle:alertMessage:alertPrimaryButtonTitle:)();
  v42 = type metadata accessor for AlertStyleBuilder.AlertInfo();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  static TTRLocalizableStrings.Common.deleteButton.getter();
  v43 = v76;
  AlertStyleBuilder.ActionSheetInfo.init(actionSheetTitle:actionSheetMessage:actionSheetPrimaryButtonTitle:)();
  v44 = type metadata accessor for AlertStyleBuilder.ActionSheetInfo();
  (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  sub_10000794C(v93, v39, &unk_10076FCD0, &unk_1006304D0);
  AlertStyleBuilder.init(alertInfo:actionSheetInfo:alertPreferredStyle:popoverAnchor:)();
  AlertStyleBuilder.title.getter();
  v46 = v45;
  AlertStyleBuilder.message.getter();
  v48 = v47;
  v49 = AlertStyleBuilder.alertStyle.getter();
  if (v46)
  {
    v50 = String._bridgeToObjectiveC()();
  }

  else
  {
    v50 = 0;
  }

  v51 = v89;
  v53 = v80;
  v52 = v81;
  if (v48)
  {
    v54 = String._bridgeToObjectiveC()();
  }

  else
  {
    v54 = 0;
  }

  v55 = [objc_opt_self() alertControllerWithTitle:v50 message:v54 preferredStyle:v49];

  sub_100058000(&qword_10076B260, &unk_10062F6F0);
  sub_100058000(&unk_100775890, &qword_10063B690);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_10062D3F0;
  AlertStyleBuilder.primaryButtonTitle.getter();
  v97 = 1;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  v96 = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  v57 = v79;
  sub_10000794C(v93, v79, &unk_10076FCD0, &unk_1006304D0);
  if ((*(v53 + 48))(v57, 1, v52) == 1)
  {
    sub_1000079B4(v57, &unk_10076FCD0, &unk_1006304D0);
  }

  else
  {
    v58 = v73;
    (*(v53 + 32))(v73, v57, v52);
    UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
    (*(v53 + 8))(v58, v52);
  }

  v59 = type metadata accessor for TaskPriority();
  v60 = v87;
  (*(*(v59 - 8) + 56))(v87, 1, 1, v59);
  v61 = v40;
  v62 = v88;
  sub_10000794C(v61, v88, &qword_100775608, &qword_1006367C0);
  type metadata accessor for MainActor();
  v63 = v91;

  v64 = v55;
  v65 = v90;
  sub_10003BE34(v51, v90);
  v66 = static MainActor.shared.getter();
  v67 = v51;
  v68 = (*(v85 + 80) + 80) & ~*(v85 + 80);
  v69 = swift_allocObject();
  v69[2] = v66;
  v69[3] = &protocol witness table for MainActor;
  v69[4] = v63;
  v69[5] = v64;
  v69[6] = v56;
  v69[7] = v67;
  v70 = v92;
  v69[8] = v65;
  v69[9] = v70;
  sub_100016588(v62, v69 + v68, &qword_100775608, &qword_1006367C0);
  sub_10009E31C(0, 0, v60, &unk_100635EF8, v69);

  return (*(v82 + 8))(v94, v83);
}

double sub_10020E048(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_1007741F0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "TTRIRemindersCommonPresenter: reloading reminders list", v7, 2u);
    }

    v8 = *(v3 + 144);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 216))(ObjectType, v8);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v3 + 24);
      v12 = swift_getObjectType();
      (*(v11 + 120))(v10, v12, v11);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

Class sub_10020E1DC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v7 = sub_1002034D0(a3, a1, a4);

  return v7;
}

id sub_10020E268()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v7 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  result = 0;
  if ((v7 & 1) == 0)
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v1 + 16))(v3, v6, v0);
    sub_10022DFF4(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
    AnyHashable.init<A>(_:)();
    v8(v6, v0);
    v10 = type metadata accessor for TTRITreeViewContextMenuItemIdentifier();
    memset(v14, 0, sizeof(v14));
    v11 = objc_allocWithZone(v10);
    sub_1001D3A20(v15, v11 + OBJC_IVAR____TtC9Reminders37TTRITreeViewContextMenuItemIdentifier_itemID);
    sub_10000794C(v14, v11 + OBJC_IVAR____TtC9Reminders37TTRITreeViewContextMenuItemIdentifier_userInfo, &qword_10076AE40, &qword_10062EE50);
    v13.receiver = v11;
    v13.super_class = v10;
    v12 = objc_msgSendSuper2(&v13, "init");
    sub_1000079B4(v14, &qword_10076AE40, &qword_10062EE50);
    sub_100077654(v15);
    return v12;
  }

  return result;
}

double sub_10020E4C0@<D0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  if (a1())
  {
    type metadata accessor for TTRITreeViewContextMenuItemIdentifier();
    sub_10022DFF4(&qword_1007759F8, type metadata accessor for TTRITreeViewContextMenuItemIdentifier, &protocol conformance descriptor for NSObject);
    AnyHashable.init<A>(_:)();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *sub_10020E568(uint64_t a1)
{
  sub_1000046FC(a1, v3);
  type metadata accessor for TTRITreeViewContextMenuItemIdentifier();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v1 = v4;
  sub_10000794C(v4 + OBJC_IVAR____TtC9Reminders37TTRITreeViewContextMenuItemIdentifier_userInfo, v3, &qword_10076AE40, &qword_10062EE50);

  sub_100058000(&qword_10076AE40, &qword_10062EE50);
  type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier(0);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10020E644(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action(0);
  __chkstk_darwin(v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100233874(a1 + OBJC_IVAR____TtCC9Reminders28TTRIRemindersCommonPresenterP33_5CD98EDF15D0ED6BAC909BA9376202F921ContextMenuIdentifier_action, v8, type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = sub_10022DFF4(&qword_1007759F0, type metadata accessor for TTRIRemindersListRouter, &unk_1006319D0);
    v10 = *(v9 + 280);
    v11 = type metadata accessor for TTRIRemindersListRouter();
    v10(v5, v11, v9);
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_100133418(*v8, v8[1], 0, 0);
  }
}

UIMenu sub_10020E844(UIMenuElementSize a1)
{
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);

  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v2, 0, v5, 0, 0xFFFFFFFFFFFFFFFFLL, a1, v4);
}

void sub_10020E8B8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_activeTemplateSavingDismissAnimationCoordinator);
    *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_activeTemplateSavingDismissAnimationCoordinator) = 0;
  }
}

uint64_t sub_10020E918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10001EFA4;

  return sub_100206860(a5);
}

void sub_10020E9D4()
{
  static TTRLocalizableStrings.RemindersList.autoCategorizationModelsDownloadMessage.getter();
  static TTRLocalizableStrings.RemindersList.autoCategorizationTitle.getter();
  v0 = String._bridgeToObjectiveC()();

  v1 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertOKButton.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [objc_opt_self() actionWithTitle:v2 style:1 handler:0];

  [v6 addAction:v3];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong presentViewController:v6 animated:1 completion:0];
  }
}

uint64_t sub_10020EB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_10020EBC0, v6, v5);
}

uint64_t sub_10020EBC0(uint64_t a1)
{
  v1[7] = *(v1[2] + 88);
  v1[8] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_10020EC54, v3, v2);
}

uint64_t sub_10020EC54()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_10020ED3C;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {

    v3 = v0[5];
    v4 = v0[6];

    return _swift_task_switch(sub_10023A48C, v3, v4);
  }
}

uint64_t sub_10020ED3C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return _swift_task_switch(sub_10020EE7C, v4, v3);
}

uint64_t sub_10020EE7C()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_10023A48C, v1, v2);
}

double sub_10020EFA8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100058000(&qword_100772150, &unk_100635D00);
    v8 = type metadata accessor for TTRRemindersListViewModel.Item();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D400;
    (*(v9 + 16))(v11 + v10, a2, v8);
    static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
    sub_1004F1000(v6, v11);
    swift_setDeallocating();
    (*(v9 + 8))(v11 + v10, v8);
    swift_deallocClassInstance();
    (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_10020F1B8(uint64_t a1)
{
  v52 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo.Status();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.SharingStatus();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100775700, &unk_10062E390);
  __chkstk_darwin(v6 - 8);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v42 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_100780980, &unk_100631DD0);
  __chkstk_darwin(v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_100058000(&qword_100775708, &qword_100635D80);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v42 - v19;
  v21 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_sharingInfo;
  swift_beginAccess();
  v22 = *(v18 + 56);
  v51 = v1;
  sub_10000794C(v1 + v21, v20, &unk_100780980, &unk_100631DD0);
  sub_10000794C(v52, &v20[v22], &unk_100780980, &unk_100631DD0);
  v23 = *(v11 + 48);
  if (v23(v20, 1, v10) == 1)
  {
    if (v23(&v20[v22], 1, v10) == 1)
    {
      v24 = &unk_100780980;
      v25 = &unk_100631DD0;
      v26 = v20;
      return sub_1000079B4(v26, v24, v25);
    }

    goto LABEL_6;
  }

  sub_10000794C(v20, v16, &unk_100780980, &unk_100631DD0);
  if (v23(&v20[v22], 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
LABEL_6:
    sub_1000079B4(v20, &qword_100775708, &qword_100635D80);
LABEL_7:
    v27 = type metadata accessor for TTRSharedWithYouHighlight();
    v28 = v50;
    (*(*(v27 - 8) + 56))(v50, 1, 1, v27);
    v29 = v51;
    if (!v23((v51 + v21), 1, v10))
    {
      (*(v11 + 16))(v13, v29 + v21, v10);
      v30 = v47;
      TTRRemindersListViewModel.ListSharingInfo.status.getter();
      (*(v11 + 8))(v13, v10);
      v32 = v48;
      v31 = v49;
      if ((*(v48 + 88))(v30, v49) == enum case for TTRRemindersListViewModel.ListSharingInfo.Status.shared(_:))
      {
        (*(v32 + 96))(v30, v31);
        v34 = v44;
        v33 = v45;
        v35 = v46;
        (*(v45 + 32))(v44, v30, v46);
        v36 = swift_allocObject();
        swift_weakInit();

        v37 = v43;
        sub_10024CEB8(sub_10023384C, v36, v43);

        (*(v33 + 8))(v34, v35);
        sub_1000079B4(v28, &qword_100775700, &unk_10062E390);

        sub_100016588(v37, v28, &qword_100775700, &unk_10062E390);
      }

      else
      {
        (*(v32 + 8))(v30, v31);
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v40 = *(v29 + 24);
      ObjectType = swift_getObjectType();
      (*(v40 + 168))(v28, ObjectType, v40);
      swift_unknownObjectRelease();
    }

    v24 = &qword_100775700;
    v25 = &unk_10062E390;
    v26 = v28;
    return sub_1000079B4(v26, v24, v25);
  }

  (*(v11 + 32))(v13, &v20[v22], v10);
  sub_10022DFF4(&qword_100775710, &type metadata accessor for TTRRemindersListViewModel.ListSharingInfo, &protocol conformance descriptor for TTRRemindersListViewModel.ListSharingInfo);
  LODWORD(v52) = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v11 + 8);
  v38(v13, v10);
  v38(v16, v10);
  result = sub_1000079B4(v20, &unk_100780980, &unk_100631DD0);
  if ((v52 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_10020F8A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 24);

    if (v5)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 168))(a1, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

double sub_10020F94C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100058000(&qword_100772150, &unk_100635D00);
    v8 = type metadata accessor for TTRRemindersListViewModel.Item();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D400;
    (*(v9 + 16))(v11 + v10, a1, v8);
    static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
    sub_1004F1000(v6, v11);
    swift_setDeallocating();
    (*(v9 + 8))(v11 + v10, v8);
    swift_deallocClassInstance();
    (*(v4 + 8))(v6, v3);
  }

  return result;
}

void *sub_10020FB5C(void *a1, void *a2, int a3)
{
  LODWORD(v46) = a3;
  v5 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[18];
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 248);
  v15 = v12;
  v16 = v8;
  v17 = v9;
  v14(a2, ObjectType, v15);
  if ((*(v9 + 48))(v7, 1, v16) == 1)
  {
    sub_1000079B4(v7, &qword_100772140, &qword_10062D9F0);
    [objc_opt_self() noSuchObjectErrorWithObjectID:a2];
    swift_willThrow();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v16);
    v18 = v11;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = a1[3];
      v20 = swift_getObjectType();
      a1 = (*(v19 + 240))(v11, 0, v46 & 1, v20, v19);
      swift_unknownObjectRelease();
      (*(v9 + 8))(v11, v16);
    }

    else
    {
      if (qword_100767008 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100003E30(v21, qword_1007741F0);

      v22 = a2;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v45 = v17;
        v46 = v11;
        v27 = v16;
        v28 = v26;
        v44 = swift_slowAlloc();
        v47[0] = v44;
        *v25 = 136315394;
        v48 = a1;
        type metadata accessor for TTRIRemindersCommonPresenter(0);

        v29 = String.init<A>(describing:)();
        v31 = sub_100004060(v29, v30, v47);

        *(v25 + 4) = v31;
        *(v25 + 12) = 2112;
        *(v25 + 14) = v22;
        *v28 = v22;
        v32 = v22;
        _os_log_impl(&_mh_execute_header, v23, v24, "RemindersListPresenter.delegate is nil. Cannot navigate to reminder {presenter: %s, reminder: %@}", v25, 0x16u);
        sub_1000079B4(v28, &unk_10076DF80, &qword_10062F730);
        v16 = v27;
        v17 = v45;
        v18 = v46;

        sub_100004758(v44);
      }

      v33 = objc_opt_self();
      v47[0] = 0;
      v47[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(97);
      v34._object = 0x8000000100677E40;
      v34._countAndFlagsBits = 0xD000000000000050;
      String.append(_:)(v34);
      v48 = a1;
      type metadata accessor for TTRIRemindersCommonPresenter(0);
      _print_unlocked<A, B>(_:_:)();
      v35._countAndFlagsBits = 0x646E696D6572202CLL;
      v35._object = 0xEC000000203A7265;
      String.append(_:)(v35);
      v36 = [v22 description];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40._countAndFlagsBits = v37;
      v40._object = v39;
      String.append(_:)(v40);

      v41._countAndFlagsBits = 125;
      v41._object = 0xE100000000000000;
      String.append(_:)(v41);
      a1 = String._bridgeToObjectiveC()();

      [v33 internalErrorWithDebugDescription:a1];

      swift_willThrow();
      (*(v17 + 8))(v18, v16);
    }
  }

  return a1;
}

uint64_t sub_1002100A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v20 = a3;
  v19[1] = a4;
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v19 - v14;
  v16 = *(a1 + 144);
  ObjectType = swift_getObjectType();
  (*(v16 + 248))(a2, ObjectType, v16);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
    [objc_opt_self() noSuchObjectErrorWithObjectID:a2];
    return swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    TTRRemindersListHighlightTarget.init(item:includesChildren:)();
    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_1002102F4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a3;
  v52 = a2;
  v4 = type metadata accessor for TTRTreeContentsUnknownIndexPathTreatment();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v46 = *(v9 - 8);
  __chkstk_darwin(v9);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    v49 = a1 & 0xFFFFFFFFFFFFFF8;
    v50 = a1 & 0xC000000000000001;
    v47 = (v46 + 32);
    v48 = (v46 + 48);
    v53 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v50)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v49 + 16))
        {
          goto LABEL_18;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = a1;
      v17 = v9;
      v18 = *(v52 + 144);
      ObjectType = swift_getObjectType();
      v20 = *(v18 + 248);
      v21 = v18;
      v9 = v17;
      v20(v14, ObjectType, v21);

      if ((*v48)(v8, 1, v17) == 1)
      {
        sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
      }

      else
      {
        v22 = *v47;
        (*v47)(v51, v8, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_100547094(0, v53[2] + 1, 1, v53);
        }

        v24 = v53[2];
        v23 = v53[3];
        if (v24 >= v23 >> 1)
        {
          v53 = sub_100547094((v23 > 1), v24 + 1, 1, v53);
        }

        v25 = v53;
        v53[2] = v24 + 1;
        v26 = v25 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v24;
        v9 = v17;
        v22(v26, v51, v17);
      }

      a1 = v16;
      ++v12;
      if (v15 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v53 = _swiftEmptyArrayStorage;
LABEL_21:
  v27 = *(v52 + 144);
  v28 = swift_getObjectType();
  (*(v27 + 208))(v28, v27);
  swift_getObjectType();
  v29 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v54 = v29;
  v31 = v43;
  v30 = v44;
  v32 = v45;
  (*(v44 + 104))(v43, enum case for TTRTreeContentsUnknownIndexPathTreatment.dropItem(_:), v45);
  v33 = TTRTreeContentsQueryable.sortByIndexPath(_:unknownIndexPathTreatment:)();

  (*(v30 + 8))(v31, v32);
  swift_unknownObjectRelease();
  v34 = v33;
  if (*(v33 + 16))
  {
    v35 = v42;
    *v42 = v34;
    v36 = enum case for TTRRemindersListHighlightTarget.items(_:);
    v37 = type metadata accessor for TTRRemindersListHighlightTarget();
    return (*(*(v37 - 8) + 104))(v35, v36, v37);
  }

  else
  {

    v39 = objc_opt_self();
    v40 = String._bridgeToObjectiveC()();
    [v39 internalErrorWithDebugDescription:v40];

    return swift_willThrow();
  }
}

uint64_t sub_100210828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v20 = a3;
  v19[1] = a4;
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v19 - v14;
  v16 = *(a1 + 144);
  ObjectType = swift_getObjectType();
  (*(v16 + 272))(a2, ObjectType, v16);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
    [objc_opt_self() noSuchObjectErrorWithObjectID:a2];
    return swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    TTRRemindersListHighlightTarget.init(item:includesChildren:)();
    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_100210A78@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v29 = a3;
  v26[1] = a4;
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v26 - v14;
  v16 = *(a1 + 144);
  ObjectType = swift_getObjectType();
  (*(v16 + 280))(a2, ObjectType, v16);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
    v18 = objc_opt_self();
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v27 = 0xD00000000000001FLL;
    v28 = 0x8000000100677F10;
    v19 = [a2 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24 = String._bridgeToObjectiveC()();

    [v18 internalErrorWithDebugDescription:v24];

    return swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    TTRRemindersListHighlightTarget.init(item:includesChildren:)();
    return (*(v10 + 8))(v15, v9);
  }
}

NSString sub_100210D68(uint64_t a1, void (*a2)(void), NSString a3, char a4)
{
  v9 = type metadata accessor for TTRRemindersListHighlightTarget();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(a1 + 24);
    a2();
    if (v4)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      ObjectType = swift_getObjectType();
      a3 = (*(v13 + 232))(v12, a4 & 1, ObjectType, v13);
      swift_unknownObjectRelease();
      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_1007741F0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "RemindersListPresenter.delegate is nil. Cannot navigate to item(s)", v17, 2u);
    }

    v18 = objc_opt_self();
    a3 = String._bridgeToObjectiveC()();
    [v18 internalErrorWithDebugDescription:a3];

    swift_willThrow();
  }

  return a3;
}

void sub_100210FDC(uint64_t *a4@<X8>)
{
  swift_getObjectType();
  type metadata accessor for RDIDispatchQueue();
  v5 = static RDIDispatchQueue.utilityQueue.getter();
  v6 = dispatch thunk of TTRRemindersListInteractorType.fetchReminderAsync(withID:on:)();

  *a4 = v6;
}

void sub_100211064(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v3 = dispatch thunk of TTRRemindersListInteractorType.reminderChangeItem(forEditing:)();
  CurrentValueSubject.send(_:)();
}

id sub_1002110D0(uint64_t a1)
{
  result = sub_100252AB8(a1);
  if (!result)
  {
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003E30(v2, qword_1007741F0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Items selected don't qualify for batch date editing", v5, 2u);
    }

    return 0;
  }

  return result;
}

double sub_1002111BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v52 = a3;
  v53 = a1;
  v10 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v10 - 8);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  sub_10000794C(a2, v14, &unk_10076FCD0, &unk_1006304D0);
  v18 = type metadata accessor for TTRIPopoverAnchor();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v14, 1, v18) == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v6 + 24);
      ObjectType = swift_getObjectType();
      (*(v21 + 224))(v53, ObjectType, v21);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v19 + 56))(v17, 1, 1, v18);
    }

    if (v20(v14, 1, v18) != 1)
    {
      sub_1000079B4(v14, &unk_10076FCD0, &unk_1006304D0);
    }
  }

  else
  {
    (*(v19 + 32))(v17, v14, v18);
    (*(v19 + 56))(v17, 0, 1, v18);
  }

  v24 = v53;
  v25 = sub_1004EDBEC(v53, v23);
  if (v25)
  {
    v26 = v25;
    v50 = a4;
    swift_getObjectType();
    v49 = dispatch thunk of TTRRemindersListInteractorType.reminderChangeItem(forEditing:)();
    v27 = &unk_10062D000;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v6 + 24);
      v48 = swift_getObjectType();
      sub_100058000(&qword_100772150, &unk_100635D00);
      v29 = type metadata accessor for TTRRemindersListViewModel.Item();
      v30 = *(v29 - 8);
      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_10062D400;
      (*(v30 + 16))(v32 + v31, v53, v29);
      (*(v28 + 216))(v32, v48, v28);
      swift_unknownObjectRelease();
      swift_setDeallocating();
      v33 = v32 + v31;
      v24 = v53;
      (*(v30 + 8))(v33, v29);
      v27 = &unk_10062D000;
      swift_deallocClassInstance();
    }

    sub_100058000(&qword_100772150, &unk_100635D00);
    v34 = type metadata accessor for TTRRemindersListViewModel.Item();
    v35 = *(v34 - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v27[64];
    (*(v35 + 16))(v37 + v36, v24, v34);
    sub_10000794C(v17, v51, &unk_10076FCD0, &unk_1006304D0);
    v38 = type metadata accessor for TTRIRemindersListDetailPopoverAnchorProvider();
    swift_allocObject();

    v39 = TTRIRemindersListDetailPopoverAnchorProvider.init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)();
    TTRIRemindersListDetailPopoverAnchorProvider.temporarilyAssertCellInfoButtonVisibility()();
    v55 = v38;
    v56 = &protocol witness table for TTRIRemindersListDetailPopoverAnchorProvider;

    *&v54 = v39;
    sub_1000079B4(v17, &unk_10076FCD0, &unk_1006304D0);
    type metadata accessor for ReminderDetailModuleDelegate();
    v40 = swift_allocObject();
    swift_weakInit();
    *(v40 + 24) = 0;
    *(v40 + 32) = 0;
    swift_weakAssign();
    v41 = *(v40 + 24);
    v42 = *(v40 + 32);
    v43 = v52;
    v44 = v50;
    *(v40 + 24) = v52;
    *(v40 + 32) = v44;
    sub_10003BE34(v43, v44);
    sub_1000301AC(v41, v42);
    v45 = sub_10022DFF4(&qword_100775658, type metadata accessor for ReminderDetailModuleDelegate, &unk_100635C00);
    *a5 = v49;
    sub_100005FD0(&v54, a5 + 8);
    *(a5 + 48) = v40;
    *(a5 + 56) = v45;
    *(a5 + 64) = 1;
  }

  else
  {
    sub_1000079B4(v17, &unk_10076FCD0, &unk_1006304D0);
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0;
  }

  return result;
}

double sub_100211798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001F90B0(a3);
  }

  return result;
}

double sub_1002117F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_1007741F0);
    v6 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("Reminders List select reminders", 31, 2, v6);

    sub_1004EF1AC(*(v4 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter), v7);
    v8 = *(v4 + 144);
    ObjectType = swift_getObjectType();
    (*(v8 + 664))(1, ObjectType, v8);
  }

  return result;
}

uint64_t sub_100211908(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = static TTRITipKitSignalContext.RemindersList.MoreMenu.showCompleted.getter();
    sub_1001F6788(v3, v4);
  }

  return result;
}

uint64_t sub_100211970(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    sub_1004E89D4();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002119E4(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for TTRListOrCustomSmartList();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if ((a1 & 1) == 0)
    {
      swift_unknownObjectRetain();
      sub_1004E89D4();
      swift_unknownObjectRelease();
LABEL_19:

      return;
    }

    TTRRemindersListSectionMenuCapabilities.listOrCustomSmartList.getter();
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_1000079B4(v8, &unk_10076DF20, &unk_10063BD50);
      return;
    }

    (*(v10 + 32))(v15, v8, v9);
    swift_getObjectType();
    v18 = dispatch thunk of TTRRemindersListInteractorType.store.getter();
    v19 = swift_unknownObjectWeakLoadStrong();

    if (!v19 || (v20 = [v19 navigationController], v19, !v20))
    {
      v21 = swift_unknownObjectWeakLoadStrong();
      if (!v21)
      {

LABEL_18:
        (*(v10 + 8))(v15, v9);
        goto LABEL_19;
      }

      v20 = v21;
    }

    (*(v10 + 16))(v12, v15, v9);
    v22 = (*(v10 + 88))(v12, v9);
    if (v22 != enum case for TTRListOrCustomSmartList.list(_:) && v22 != enum case for TTRListOrCustomSmartList.customSmartList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    (*(v10 + 96))(v12, v9);
    v23 = *v12;
    v24 = [v23 sectionContext];

    if (v24)
    {

      v25 = sub_10056EC00(v15, v18, a4, v17, &off_10071A8D8);
      v26 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v25];
      [v26 setModalPresentationStyle:2];

      v27 = swift_unknownObjectWeakLoadStrong();
      if (v27)
      {
        v28 = v27;
        UIViewController.endFirstResponderEditing()();
      }

      [v20 presentViewController:v26 animated:1 completion:0];
    }

    else
    {
    }

    goto LABEL_18;
  }
}

double sub_100211E24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3();
  }

  return result;
}

void sub_100211E84(uint64_t a1, uint64_t a2, char a3, void *a4, void (*a5)(void **, uint64_t), void *a6)
{
  v60 = a5;
  v61 = a6;
  v9 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v9 - 8);
  v11 = &v57 - v10;
  v64 = type metadata accessor for TTRListOrCustomSmartList();
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v64);
  __chkstk_darwin(v14);
  v16 = (&v57 - v15);
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v59 = a4;
  v62 = Strong;
  v63 = v12;
  v21 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
    swift_unknownObjectRelease();
  }

  sub_1004EF1A4(v21, v22);
  sub_10000794C(a1, v11, &unk_10076DF20, &unk_10063BD50);
  v24 = v63;
  v23 = v64;
  if ((*(v63 + 48))(v11, 1, v64) == 1)
  {
    sub_1000079B4(v11, &unk_10076DF20, &unk_10063BD50);
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100003E30(v25, qword_1007741F0);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Reminders List failed to move reminders to another list due to invalid target list.", v28, 2u);
    }

    return;
  }

  v29 = *(v24 + 32);
  v30 = v29(v19, v11, v23);
  if (a3)
  {
    (*(v24 + 16))(v16, v19, v23);
    v31 = (*(v24 + 88))(v16, v23);
    if (v31 == enum case for TTRListOrCustomSmartList.list(_:))
    {
      (*(v24 + 96))(v16, v23);
      v32 = v23;
      v33 = *v16;

      v34 = v33;
      sub_10024E244(v59, v33, v60);

      (*(v24 + 8))(v19, v32);
      return;
    }

    if (v31 != enum case for TTRListOrCustomSmartList.customSmartList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    v51 = *(v24 + 8);
    v51(v16, v23);
    if (qword_100767008 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  __chkstk_darwin(v30);
  *(&v57 - 2) = v19;
  v35 = v61;

  v36 = sub_1004B6818(sub_100231108, &v57 - 4, v35);
  v37 = v36;
  v38 = v19;
  if (v36 >> 62)
  {
    v56 = _CocoaArrayWrapper.endIndex.getter();
    v39 = v59;
    if (v56)
    {
      goto LABEL_15;
    }

LABEL_23:

    (*(v63 + 8))(v38, v64);
    return;
  }

  v39 = v59;
  if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v40 = v62;

  v59 = sub_10024EC18(v39);

  static TTRLocalizableStrings.UndoAction.moveReminders.getter();
  v61 = objc_opt_self();
  v60 = String._bridgeToObjectiveC()();

  v41 = v38;
  v43 = v63;
  v42 = v64;
  v45 = v63 + 16;
  v44 = *(v63 + 16);
  v58 = v41;
  v44(&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = (*(v45 + 64) + 40) & ~*(v45 + 64);
  v47 = swift_allocObject();
  *(v47 + 2) = v59;
  *(v47 + 3) = v40;
  *(v47 + 4) = v37;
  v48 = v42;
  v29(&v47[v46], &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
  v49 = swift_allocObject();
  *(v49 + 16) = sub_100231128;
  *(v49 + 24) = v47;
  aBlock[4] = sub_100026410;
  v66 = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10071B0D0;
  v50 = _Block_copy(aBlock);
  v19 = v66;

  v51 = v60;
  [v61 withActionName:v60 block:v50];

  _Block_release(v50);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if ((v40 & 1) == 0)
  {
    (*(v43 + 8))(v58, v48);

    return;
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_19:
  v52 = type metadata accessor for Logger();
  sub_100003E30(v52, qword_1007741F0);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Reminders List failed to move reminders to another list due to Recently Deleted List don't support move to CSL.", v55, 2u);
  }

  v51(v19, v64);
}

BOOL sub_100212624(id *a1)
{
  v1 = [*a1 list];
  v2 = [v1 objectID];

  v3 = TTRListOrCustomSmartList.objectID.getter();
  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  v4 = static NSObject.== infix(_:_:)();

  return (v4 & 1) == 0;
}

uint64_t sub_1002126D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  v18 = a4;
  v6 = sub_100058000(&unk_100775620, &unk_1006305B0);
  __chkstk_darwin(v6);
  v9 = (&v17 - v8);
  v10 = *(a1 + 16);
  if (v10)
  {
    v21 = enum case for TTRRelativeInsertionPosition.after<A>(_:);
    v19 = (v7 + 8);
    v20 = (v7 + 104);
    v11 = a1 + 16 * v10 + 24;
    do
    {
      --v10;
      v12 = *(v11 - 8);
      v22 = *(a2 + 80);
      swift_getObjectType();
      v13 = v12;

      v14 = [v13 list];
      *v9 = v13;
      (*v20)(v9, v21, v6);
      v15 = v13;
      TTRRemindersListInteractorType.move(reminders:to:position:)();

      (*v19)(v9, v6);
      v11 -= 16;
    }

    while (v10);
  }

  swift_getObjectType();
  return dispatch thunk of TTRRemindersListInteractorType.move(topLevelReminders:to:)();
}

double sub_1002128B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    type metadata accessor for MainActor();

    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v9;
    v12[5] = a3;
    sub_10009E31C(0, 0, v6, &unk_100635F58, v12);
  }

  return result;
}

uint64_t sub_100212A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100212AB0, v7, v6);
}

uint64_t sub_100212AB0()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100212B50;
  v2 = *(v0 + 24);

  return sub_100241DC4(v2, 0);
}

uint64_t sub_100212B50(char a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return _swift_task_switch(sub_100212C78, v4, v3);
}

uint64_t sub_100212C78()
{
  v1 = *(v0 + 64);

  if (v1 == 1)
  {
    v2 = *(*(v0 + 16) + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v2, v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_100212D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28 = a4;
  v7 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for TTRRemindersListPostponeType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    (*(v15 + 16))(v17, a1, v14);
    v20 = (*(v15 + 88))(v17, v14);
    if (v20 == enum case for TTRRemindersListPostponeType.none(_:) || v20 == enum case for TTRRemindersListPostponeType.today(_:) || v20 == enum case for TTRRemindersListPostponeType.tomorrow(_:) || v20 == enum case for TTRRemindersListPostponeType.weekend(_:) || v20 == enum case for TTRRemindersListPostponeType.startOfWeekday(_:))
    {
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
      type metadata accessor for MainActor();

      v26 = static MainActor.shared.getter();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = &protocol witness table for MainActor;
      v27[4] = v19;
      sub_10009E31C(0, 0, v13, &unk_100635F48, v27);

      sub_100249E94(v28, a1);
    }

    else if (v20 == enum case for TTRRemindersListPostponeType.custom(_:))
    {
      (*(v8 + 104))(v10, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection.date(_:), v7);
      sub_1001FB6DC(v28, v10, a5, 0, 0);

      (*(v8 + 8))(v10, v7);
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }
}

double sub_1002130BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    type metadata accessor for MainActor();

    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = &protocol witness table for MainActor;
    *(v14 + 32) = v11;
    *(v14 + 40) = a3 & 1;
    *(v14 + 48) = a4;
    sub_10009E61C(0, 0, v8, &unk_100635F38, v14);
  }

  return result;
}

uint64_t sub_100213234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  *(v6 + 72) = a5;
  *(v6 + 16) = a1;
  type metadata accessor for MainActor();
  *(v6 + 40) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 48) = v8;
  *(v6 + 56) = v7;

  return _swift_task_switch(sub_1002132D4, v8, v7);
}

uint64_t sub_1002132D4()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100213378;
  v2 = *(v0 + 32);
  v3 = *(v0 + 72);

  return sub_1002401A8(v3, v2, 1);
}

uint64_t sub_100213378(char a1)
{
  v2 = *v1;
  *(*v1 + 73) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1002134A0, v4, v3);
}

uint64_t sub_1002134A0()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

double sub_10021350C(char a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v6._rawValue = a3;
    sub_100242CC8(a1 & 1, v6);
  }

  return result;
}

double sub_100213594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_10024A9F4(a1, a3);
  }

  return result;
}

double sub_10021361C(char a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      sub_1001F3968(a3);
    }

    else
    {
      sub_1001F3B98(a3);
    }
  }

  return result;
}

double sub_100213694(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRAssigneeCandidate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v8 = swift_allocObject();
    (*(v4 + 32))(v8 + v7, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    sub_100213A1C(sub_100235940, v8);
  }

  return result;
}

void sub_100213800(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRAssigneeCandidateData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAssigneeCandidate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a2, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for TTRAssigneeCandidate.participant(_:))
  {
    (*(v8 + 96))(v11, v7);
    (*(v4 + 32))(v6, v11, v3);
    v13 = TTRAssigneeCandidateData.id.getter();
    TTRReminderEditor.addAssignment(assigneeID:originatorID:)();

    (*(v4 + 8))(v6, v3);
  }

  else if (v12 == enum case for TTRAssigneeCandidate.noOne(_:))
  {
    TTRReminderEditor.removeAllAssignments()();
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

void sub_100213A1C(void (*a1)(void), uint64_t a2)
{
  v5 = sub_100058000(&qword_100775698, &unk_100635D50);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  v13 = OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
  swift_beginAccess();
  sub_100233874(v12 + v13, v11, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  LOBYTE(v9) = v11[*(v9 + 28)];
  sub_10022E05C(v11, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  if (v9 & 1) != 0 || swift_unknownObjectWeakLoadStrong() && (v14 = *(v2 + 24), ObjectType = swift_getObjectType(), LOBYTE(v14) = (*(v14 + 64))(ObjectType, v14), swift_unknownObjectRelease(), (v14))
  {
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_1007741F0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "TTRIRemindersCommonPresenter: cannot perform createNewReminderInDefaultSectionForNavigationbar", v19, 2u);
    }
  }

  else
  {
    sub_1004E8E18(8uLL, a1, a2, v7);
    sub_1000079B4(v7, &qword_100775698, &unk_100635D50);
  }
}

void sub_100213C8C(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    TTRRemindersListPresenterCapabilityCore.updateAssigneeCandidateAvatarImages(for:configuration:completion:)();
  }

  else
  {
    a3(_swiftEmptyArrayStorage);
  }
}

double sub_100213D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_10024F250(a1, a3);
  }

  return result;
}

double sub_100213DD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_1007741F0);
  v7 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Reminders List Set Custom Tags", 30, 2, v7);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001FC3E0(a3, a4, v8);
  }

  return v8.n128_f64[0];
}

void sub_100213EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    switch(a3)
    {
      case 2:
        goto LABEL_6;
      case 1:

        sub_100243240(a1, a2, a5);

LABEL_7:

        return;
      case 0:
LABEL_6:

        sub_100243264(a1, a2, a5);

        goto LABEL_7;
    }

    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003E30(v9, qword_1007741F0);
    v10 = sub_100008E04(_swiftEmptyArrayStorage);
    v11 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("unknown menu item state", 23, 2uLL, v10, v11);
    __break(1u);
  }
}

double sub_100214028(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_10024343C(&_swiftEmptySetSingleton, a2);
  }

  return result;
}

double sub_1002140AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_100243ECC(a3, a1, a4);
  }

  return result;
}

double sub_100214144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v11 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
      if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
      {
        swift_getObjectType();
        dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
        swift_unknownObjectRelease();
      }

      sub_1004EF1A4(v11, v12);
      sub_10024F488(a4, a1, a2, a5, 0, 0, 1, 0, 0);
    }

    else
    {
      v13 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
      if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
      {
        swift_getObjectType();
        dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
        swift_unknownObjectRelease();
      }

      sub_1004EF1A4(v13, v14);
      sub_10024F488(a4, 0, 0xE000000000000000, a5, 0, 1, 1, 0, 0);
    }
  }

  return result;
}

double sub_100214288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v8, v9);
    sub_10024F488(a3, 0, 0xE000000000000000, a4, 0, 1, 1, 0, 0);
  }

  return result;
}

double sub_10021435C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    type metadata accessor for MainActor();

    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v8;
    v11[5] = a2;
    sub_10009E31C(0, 0, v5, &unk_100635ED8, v11);
  }

  return result;
}

uint64_t sub_1002144BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  v5[4] = swift_task_alloc();
  sub_100058000(&qword_100775608, &qword_1006367C0);
  v5[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_1002145C4, v7, v6);
}

uint64_t sub_1002145C4(__n128 a1)
{
  if (sub_100241BB8(v1[3]))
  {
    v2 = swift_task_alloc();
    v1[9] = v2;
    *v2 = v1;
    v2[1] = sub_1002147FC;
    v3 = v1[3];

    return sub_100241DC4(v3, 0);
  }

  else
  {
    v5 = v1[3];

    if (sub_100250F84(v5, v6))
    {
      v8 = v1[4];
      v7 = v1[5];
      v9 = v1[3];
      v10 = enum case for REMRDLUserOperationDetail.rdl_displayMenuToDelete(_:);
      v11 = type metadata accessor for REMRDLUserOperationDetail();
      v12 = *(v11 - 8);
      (*(v12 + 104))(v7, v10, v11);
      (*(v12 + 56))(v7, 0, 1, v11);
      v13 = type metadata accessor for TTRIPopoverAnchor();
      (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
      sub_10020D648(v9, 1, v7, v8, 0, 0);
      sub_1000079B4(v8, &unk_10076FCD0, &unk_1006304D0);
      sub_1000079B4(v7, &qword_100775608, &qword_1006367C0);
    }

    v14 = v1[1];

    return v14();
  }
}

uint64_t sub_1002147FC()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10021491C, v3, v2);
}

uint64_t sub_10021491C()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_10021498C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (*(a2 + 16))
    {
      v6 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
      sub_1001F960C((a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80))), a3, 0, 0);
    }
  }

  return result;
}

double sub_100214A48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001F2F44(a2);
  }

  return result;
}

void sub_100214AA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = sub_100249258(a2);
    v4 = [objc_opt_self() generalPasteboard];
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10062D420;
    *(v5 + 32) = v3;
    v6 = v3;
    sub_100058000(&qword_100775870, &qword_100635EC8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setObjects:isa];
  }
}

double sub_100214BCC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [objc_opt_self() generalPasteboard];
    type metadata accessor for TTRIRemindersListPasteRequest();
    v7 = swift_allocObject();
    v8 = *(v5 + 136);
    v9 = *(v5 + 72);
    *(v7 + 16) = v6;
    *(v7 + 24) = v8;
    *(v7 + 40) = v9;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_10031F238(a2);
  }

  return result;
}

id sub_100214CA8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accountID];
  *a2 = result;
  return result;
}

void sub_100214CEC(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 list];
  v4 = [v3 objectID];

  *a2 = v4;
}

double sub_100214D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_100251370(a1, a4);
  }

  return result;
}

uint64_t sub_100214DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_100058000(&qword_100775608, &qword_1006367C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = enum case for REMRDLUserOperationDetail.rdl_displayMenuToRecover(_:);
    v12 = type metadata accessor for REMRDLUserOperationDetail();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v9, v11, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    v14 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    sub_10022F72C(a3, v9, v6);

    sub_1000079B4(v6, &unk_10076FCD0, &unk_1006304D0);
    return sub_1000079B4(v9, &qword_100775608, &qword_1006367C0);
  }

  return result;
}

uint64_t sub_100215000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27[1] = a3;
  v7 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v7 - 8);
  v28 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v27 - v10;
  __chkstk_darwin(v12);
  v14 = v27 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRIPopoverAnchor();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v29 = v19;
  v27[0] = v21;
  v21(a4, 1, 1);
  if (*(a1 + 16) == 1)
  {
    (*(v16 + 16))(v18, a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v15);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      (*(v22 + 224))(v18, ObjectType, v22);
      swift_unknownObjectRelease();
      (*(v16 + 8))(v18, v15);
      sub_1000079B4(a4, &unk_10076FCD0, &unk_1006304D0);
    }

    else
    {
      (*(v16 + 8))(v18, v15);
      sub_1000079B4(a4, &unk_10076FCD0, &unk_1006304D0);
      (v27[0])(v14, 1, 1, v29);
    }

    sub_100016588(v14, a4, &unk_10076FCD0, &unk_1006304D0);
  }

  sub_10000794C(a4, v11, &unk_10076FCD0, &unk_1006304D0);
  v24 = (*(v20 + 48))(v11, 1, v29);
  result = sub_1000079B4(v11, &unk_10076FCD0, &unk_1006304D0);
  if (v24 == 1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v26 = v28;
      static TTRIPopoverAnchor.trailingPortion(in:permittedArrowDirections:)();
      sub_1000079B4(a4, &unk_10076FCD0, &unk_1006304D0);
    }

    else
    {
      v26 = v28;
      static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
      sub_1000079B4(a4, &unk_10076FCD0, &unk_1006304D0);
      (v27[0])(v26, 0, 1, v29);
    }

    return sub_100016588(v26, a4, &unk_10076FCD0, &unk_1006304D0);
  }

  return result;
}

void sub_100215410(Swift::OpaquePointer children, uint64_t a2)
{
  sub_100058000(&unk_10077FBC0, &qword_100635F00);
  sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
  sub_10000E188(&qword_1007758A0, &unk_10077FBC0, &qword_100635F00, &protocol conformance descriptor for [A]);
  v3 = Sequence.removingNils<A>()();
  preferredElementSize = v3;
  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_7:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v5, 0, v9, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
  swift_beginAccess();
  v7 = isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t sub_1002155C0@<X0>(uint64_t a2@<X8>)
{
  sub_100003540(0, &qword_100775690, NSObject_ptr);
  v3 = TTRRemindersListViewModel.LinkAttachment.attachmentID.getter();
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    TTRRemindersListViewModel.LinkAttachment.url.getter();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  return (*(*(v6 - 8) + 56))(a2, v5, 1, v6);
}

Class sub_1002156A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v108 = a7;
  v109 = a8;
  v124 = a6;
  v115 = a5;
  v126 = a4;
  v118 = a3;
  v110 = a2;
  v107 = a9;
  v112 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0) - 8;
  __chkstk_darwin(v112);
  v111 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for URL();
  v120 = *(v114 - 8);
  v116 = v120[8];
  __chkstk_darwin(v114);
  v12 = (&v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = v12;
  v13 = type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action(0);
  v121 = *(v13 - 8);
  v14 = *(v121 + 64);
  __chkstk_darwin(v13 - 8);
  v101 = (&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v96 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  v19._countAndFlagsBits = 0xD000000000000018;
  v19._object = 0x80000001006781D0;
  v20._countAndFlagsBits = 2037411651;
  v20._object = 0xE400000000000000;
  v21 = TTRLocalizedString(_:comment:)(v20, v19);
  countAndFlagsBits = v21._countAndFlagsBits;
  object = v21._object;
  v22 = String._bridgeToObjectiveC()();
  v122 = objc_opt_self();
  v97 = [v122 _systemImageNamed:v22];

  v23 = *(v16 + 16);
  v123 = v16 + 16;
  v119 = v23;
  v23(v18, a3, v15);
  sub_100233874(v126, &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action);
  v24 = v120;
  v25 = v120[2];
  v104 = (v120 + 2);
  v105 = v25;
  v26 = v12;
  v27 = v114;
  v25(v26, v115, v114);
  v28 = *(v16 + 80);
  v29 = (v28 + 24) & ~v28;
  v117 = v29 + v17;
  v125 = v29;
  v106 = v28 | 7;
  v30 = (v29 + v17 + *(v121 + 80)) & ~*(v121 + 80);
  v31 = *(v24 + 80);
  v32 = (v14 + v31 + v30) & ~v31;
  v103 = v28 | 7 | v31;
  v33 = swift_allocObject();
  v34 = v110;
  *(v33 + 16) = v110;
  v121 = *(v16 + 32);
  v126 = v16 + 32;
  v35 = v33 + v29;
  v36 = v96;
  (v121)(v35, v18, v96);
  sub_10023409C(v101, v33 + v30, type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action);
  v37 = v24[4];
  v120 = v24 + 4;
  v101 = v37;
  v38 = v33 + v32;
  v39 = v113;
  v40 = v27;
  (v37)(v38, v113, v27);
  v98 = v34;
  v110 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v41._countAndFlagsBits = 0x6572616853;
  v42._countAndFlagsBits = 0xD000000000000019;
  v42._object = 0x80000001006781F0;
  v41._object = 0xE500000000000000;
  v43 = TTRLocalizedString(_:comment:)(v41, v42);
  countAndFlagsBits = v43._countAndFlagsBits;
  object = v43._object;
  v44 = String._bridgeToObjectiveC()();
  v97 = [v122 _systemImageNamed:v44];

  v45 = swift_allocObject();
  swift_weakInit();
  v46 = v18;
  v102 = v18;
  v47 = v36;
  v119(v18, v118, v36);
  v105(v39, v115, v40);
  v48 = (v117 + v31) & ~v31;
  v49 = (v116 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v98;
  *(v52 + 16) = v98;
  (v121)(v52 + v125, v46, v47);
  (v101)(v52 + v48, v113, v114);
  v54 = v109;
  *(v52 + v49) = v108;
  *(v52 + v50) = v54;
  *(v52 + v51) = v45;
  v55 = v107;
  *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v107;
  v120 = v53;

  v56 = v55;
  v57 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v58 = *(v124 + 144);
  v115 = *(v124 + 136);
  v116 = v57;
  ObjectType = swift_getObjectType();
  v113 = v58;
  v114 = ObjectType;
  v60 = (v58[20])(ObjectType, v58);
  v61 = "context menu action share";
  if (v60)
  {
    v61 = "Large Thumbnail Toggle string";
    v62 = "Small Thumbnails";
  }

  else
  {
    v62 = "Large Thumbnails";
  }

  v63._object = (v61 | 0x8000000000000000);
  v64._countAndFlagsBits = 0xD00000000000001DLL;
  v64._object = (v62 | 0x8000000000000000);
  v63._countAndFlagsBits = 0xD000000000000010;
  v109 = TTRLocalizedString(_:comment:)(v63, v64)._object;
  v65 = String._bridgeToObjectiveC()();
  v108 = [v122 _systemImageNamed:v65];

  v66 = swift_allocObject();
  swift_weakInit();
  v67 = v102;
  v69 = v118;
  v68 = v119;
  v70 = v47;
  v119(v102, v118, v47);
  v71 = (v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v74 = v120;
  v73 = v121;
  *(v72 + 16) = v120;
  v73(v72 + v125, v67, v70);
  *(v72 + v71) = v66;
  v75 = v74;
  v120 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v117 = static TTRLocalizableStrings.Common.deleteButton.getter();
  v109 = v76;
  v77 = String._bridgeToObjectiveC()();
  v78 = [v122 _systemImageNamed:v77];

  v79 = swift_allocObject();
  swift_weakInit();
  v68(v67, v69, v70);
  v80 = swift_allocObject();
  *(v80 + 16) = v75;
  (v121)(v80 + v125, v67, v70);
  *(v80 + v71) = v79;
  v81 = v75;
  v82 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v83 = v111;
  v113[2](v114);
  v84 = *(v83 + *(v112 + 56));
  sub_10022E05C(v83, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  v128 = _swiftEmptyArrayStorage;
  v85 = v110;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v86 = v116;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v87 = v120;
  if ((v84 & 1) == 0)
  {
    v88 = v120;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v89 = v82;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v90 = v128;
  if (v128 >> 62)
  {
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);

    v91 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
    v91 = v90;
  }

  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v92._countAndFlagsBits = 0;
  v92._object = 0xE000000000000000;
  v129.value.super.isa = 0;
  v129.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v92, 0, v129, 0, 0xFFFFFFFFFFFFFFFFLL, v91, v95).super.super.isa;

  return isa;
}

void sub_1002162EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a5;
  v50 = a4;
  v52 = type metadata accessor for URL();
  v6 = *(v52 - 8);
  __chkstk_darwin(v52);
  v44 = v7;
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for URLResourceValues();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_100775840, &unk_100635EA0);
  __chkstk_darwin(v9 - 8);
  v48 = &v44 - v10;
  v11 = type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action(0);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x656D686361747441;
  *(inited + 40) = 0xEA0000000000746ELL;
  v16 = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = a2;
  *(inited + 72) = v16;
  *(inited + 80) = 1835365449;
  *(inited + 88) = 0xE400000000000000;
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v17 = a2;
  v18 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v18;
  *(inited + 104) = v19;
  v20 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminders List Copy {Attachment: %@} from {Item: %@)", 52, 2, v20);

  sub_100233874(v50, v13, type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10022E05C(v13, type metadata accessor for TTRIRemindersCommonPresenter.ContextMenuIdentifier.Action);
  v22 = v51;
  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_6;
  }

  sub_100058000(&unk_100775858, qword_100635EB0);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_10062D400;
  *(v23 + 32) = NSURLContentTypeKey;
  v24 = NSURLContentTypeKey;
  sub_1004052B0(v23);
  swift_setDeallocating();
  sub_10022E05C(v23 + 32, type metadata accessor for URLResourceKey);
  v25 = v49;
  URL.resourceValues(forKeys:)();

  v26 = v48;
  URLResourceValues.contentType.getter();
  (*(v46 + 8))(v25, v47);
  v27 = type metadata accessor for UTType();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_1000079B4(v26, &unk_100775840, &unk_100635EA0);
LABEL_6:
    v29 = [objc_opt_self() generalPasteboard];
    sub_100058000(&qword_100777790, &qword_100630978);
    v30 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10062D400;
    (*(v6 + 16))(v31 + v30, v22, v52);
    sub_10022DFF4(&qword_100775850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    UIPasteboard.setObjects<A>(_:)();

    return;
  }

  UTType.identifier.getter();
  (*(v28 + 8))(v26, v27);
  v32 = [objc_allocWithZone(NSItemProvider) init];
  v33 = String._bridgeToObjectiveC()();

  v34 = v45;
  v35 = v22;
  v36 = v52;
  (*(v6 + 16))(v45, v35, v52);
  v37 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v38 = swift_allocObject();
  (*(v6 + 32))(v38 + v37, v34, v36);
  aBlock[4] = sub_100235448;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100216C30;
  aBlock[3] = &unk_10071BD28;
  v39 = _Block_copy(aBlock);

  [v32 registerDataRepresentationForTypeIdentifier:v33 visibility:0 loadHandler:v39];
  _Block_release(v39);

  v40 = [objc_opt_self() generalPasteboard];
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10062D420;
  *(v41 + 32) = v32;
  sub_100003540(0, &unk_10076C570, NSItemProvider_ptr);
  v42 = v32;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v40 setItemProviders:isa];
}

uint64_t sub_100216B58(void (*a1)(uint64_t, unint64_t, void), uint64_t a2, uint64_t a3)
{
  URL.startAccessingSecurityScopedResource()();
  v4 = Data.init(contentsOf:options:)();
  v6 = v5;
  sub_1002354D0(v4, v5);
  a1(v4, v6, 0);
  sub_100139D84(v4, v6);
  sub_100139D84(v4, v6);
  URL.stopAccessingSecurityScopedResource()();
  return 0;
}

id sub_100216C30(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_1002354C8, v4);

  return v5;
}

void sub_100216CD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_100216D68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a8;
  v39 = a7;
  v36 = a6;
  v35 = a5;
  v10 = type metadata accessor for TTRIRemindersListRouterShareSheetItem(0);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x656D686361747441;
  *(inited + 40) = 0xEA0000000000746ELL;
  v15 = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = a2;
  *(inited + 72) = v15;
  *(inited + 80) = 1835365449;
  *(inited + 88) = 0xE400000000000000;
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v16 = a2;
  v17 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v17;
  *(inited + 104) = v18;
  v19 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminders List Share {Attachment: %@} from {Item: %@)", 53, 2, v19);

  if (URL.isFileURL.getter())
  {
    v20 = sub_100058000(&qword_10076DE60, &qword_100631918);
    v21 = &v12[*(v20 + 48)];
    v22 = *(v20 + 64);
    v23 = type metadata accessor for URL();
    (*(*(v23 - 8) + 16))(v12, a4, v23);
    v24 = v35;
    swift_beginAccess();
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
    *v21 = v25;
    *(v21 + 1) = v26;
    v27 = v36;
    swift_beginAccess();
    v28 = *(v27 + 16);
    *&v12[v22] = v28;
    swift_storeEnumTagMultiPayload();
    v29 = v28;
  }

  else
  {
    v30 = type metadata accessor for URL();
    (*(*(v30 - 8) + 16))(v12, a4, v30);
    swift_storeEnumTagMultiPayload();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    sub_100058000(&unk_100775830, &unk_100635E90);
    v31 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10062D400;
    sub_100233874(v12, v32 + v31, type metadata accessor for TTRIRemindersListRouterShareSheetItem);
    sub_1001337DC(v32, v38);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    sub_10022E05C(v32 + v31, type metadata accessor for TTRIRemindersListRouterShareSheetItem);
    swift_deallocClassInstance();
  }

  return sub_10022E05C(v12, type metadata accessor for TTRIRemindersListRouterShareSheetItem);
}

double sub_100217208(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x656D686361747441;
  *(inited + 40) = 0xEA0000000000746ELL;
  v7 = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = a2;
  *(inited + 72) = v7;
  *(inited + 80) = 1835365449;
  *(inited + 88) = 0xE400000000000000;
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v8 = a2;
  v9 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v9;
  *(inited + 104) = v10;
  v11 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminders List Toggle Size {Attachment: %@} from {Item: %@)", 59, 2, v11);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(Strong + 144);
    ObjectType = swift_getObjectType();
    v17 = (*(v15 + 160))(ObjectType, v15);
    (*(v15 + 168))((v17 & 1) == 0, ObjectType, v15);
    v18 = *(v14 + 144);
    v19 = swift_getObjectType();
    v20 = (*(v18 + 216))(v19, v18);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v14 + 24);
      v22 = swift_getObjectType();
      (*(v21 + 120))(v20, v22, v21);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1002174CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x656D686361747441;
  *(inited + 40) = 0xEA0000000000746ELL;
  v8 = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = a2;
  *(inited + 72) = v8;
  *(inited + 80) = 1835365449;
  *(inited + 88) = 0xE400000000000000;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  a2;
  v10 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v10;
  *(inited + 104) = v11;
  v12 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminders List Delete {Attachment: %@} from {Item: %@)", 54, 2, v12);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_100058000(&qword_100772150, &unk_100635D00);
    v14 = *(v9 - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10062D400;
    v17 = (*(v14 + 16))(v16 + v15, a3, v9);
    __chkstk_darwin(v17);
    dispatch thunk of TTRRemindersListPresenterCapabilityCoreEditingPresenterType.edit(_:with:)();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100217808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_1007741F0);
  v6 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44(a2, a3, 2, v6);
}

double sub_1002178B8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v8 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_1007741F0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  strcpy((inited + 32), "olderThanDate");
  *(inited + 72) = &type metadata for String;
  *(inited + 46) = -4864;
  *(inited + 48) = a3;
  *(inited + 56) = a4;

  v17 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("User confirmed deleting completed reminders {olderThanDate: %@}", 63, 2, v17);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(Strong + 144);
    ObjectType = swift_getObjectType();
    if ((*(v20 + 56))(ObjectType, v20))
    {
      swift_getObjectType();
      dispatch thunk of TTRRemindersListDataModelSourceDeleteCompletedContextType.listForBatchDelete.getter();
      swift_unknownObjectRelease();
      (*(v9 + 32))(v14, v11, v8);
      swift_getObjectType();
      sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
      v22 = static OS_dispatch_queue.main.getter();

      dispatch thunk of TTRRemindersListInteractorType.deleteCompletedReminders(in:completedBefore:callbackQueue:completion:)();

      (*(v9 + 8))(v14, v8);
    }
  }

  return result;
}

void sub_100217BD4(uint64_t a1, Swift::OpaquePointer a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003E30(v6, qword_1007741F0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_100234E28(a1, a2._rawValue, 1);
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.rem_errorDescription.getter();
      v12 = sub_100004060(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Reminder list failed to delete completed reminders {error: %s}", v8, 0xCu);
      sub_100004758(v9);
    }

    else
    {
    }
  }

  else
  {
    if (a1 > 0)
    {
      v18 = *(a4 + 128);
      type metadata accessor for TTRIPrivacyChecker();

      TTRPrivacyChecker.showReminderDeletePrivacyWarningIfNeeded(for:)(a2);
    }

    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_1007741F0);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a1;
      sub_100234E28(a1, a2._rawValue, 0);
      _os_log_impl(&_mh_execute_header, v14, v15, "Reminder list deleted completed reminders {count: %ld}", v16, 0xCu);
    }

    else
    {
      sub_100234E28(a1, a2._rawValue, 0);
    }
  }
}

uint64_t sub_100217EB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TTRUndoNavigationEditingTarget();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10062D420;
  *(v9 + 32) = a2;
  v10 = a2;
  TTRUndoNavigationEditingTarget.init(reminderIDs:)();
  swift_getObjectType();
  v11 = dispatch thunk of TTRIReminderDetailModuleInterface.undoManager.getter();
  dispatch thunk of TTRRemindersListInteractorType.registerUndo(forEditing:byDraining:)();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100218014()
{
  sub_1001E6A30();

  return swift_deallocClassInstance();
}

void sub_100218094(uint64_t a1)
{
  sub_100218244(319, &qword_1007742F8, &type metadata accessor for TTRRemindersListViewModel.ListSharingInfo);
  if (v1 <= 0x3F)
  {
    sub_100218244(319, &qword_100774300, &type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100218244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}