uint64_t TTRRemindersListViewModel.Reminder.identifier.getter()
{
  v1 = [*(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 20)) stringRepresentation];
  v2 = sub_21DBFA16C();

  return v2;
}

uint64_t static TTRRemindersListViewModel.Reminder.displayDate(from:dateHidden:)@<X0>(void *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v6 = sub_21DBF563C();
  v111 = *(v6 - 8);
  v112 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v108 = v97 - v10;
  v11 = sub_21DBF604C();
  v106 = *(v11 - 1);
  v107 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF5C4C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v104 = v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v103 = v97 - v18;
  MEMORY[0x28223BE20](v19);
  v109 = v97 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v21 - 8);
  v113 = v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v101 = v97 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = v97 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = (*(v29 + 104))(v28, v29);
  if (v30)
  {
    v31 = v30;
    v102 = v15;
    v34 = *(v15 + 56);
    v32 = v15 + 56;
    v33 = v34;
    v105 = v27;
    v34(v27, 1, 1, v14);
    v35 = [v31 isAllDay];
    v36 = v14;
    if (a2)
    {
      if (v35)
      {
        LODWORD(v108) = 0;
        v104 = 0;
        v37 = 0;
        v106 = 0;
        v107 = 0;
        goto LABEL_42;
      }

      v42 = [v31 isAllDay];
      v97[0] = v33;
      if (v42)
      {
        if (qword_27CE57140 != -1)
        {
          swift_once();
        }

        v41 = &qword_27CE66818;
      }

      else
      {
        if (qword_280D14230 != -1)
        {
          swift_once();
        }

        v41 = &qword_280D14238;
      }
    }

    else
    {
      v97[0] = v33;
      if (v35)
      {
        if (qword_27CE57138 != -1)
        {
          swift_once();
        }

        v41 = &qword_27CE66810;
      }

      else
      {
        if (qword_280D194D8 != -1)
        {
          swift_once();
        }

        v41 = &qword_280D194E0;
      }
    }

    v43 = *v41;
    v44 = [v31 isAllDay];
    v99 = v8;
    v97[1] = v32;
    if (a2)
    {
      if (v44)
      {
        if (qword_27CE57140 != -1)
        {
          swift_once();
        }

        v45 = &qword_27CE66818;
      }

      else
      {
        if (qword_280D14230 != -1)
        {
          swift_once();
        }

        v45 = &qword_280D14238;
      }
    }

    else if (v44)
    {
      if (qword_27CE57158 != -1)
      {
        swift_once();
      }

      v45 = &qword_27CE66828;
    }

    else
    {
      if (qword_280D14220 != -1)
      {
        swift_once();
      }

      v45 = &qword_280D14228;
    }

    v46 = *v45;
    v47 = objc_opt_self();
    v98 = v46;
    v48 = [v47 defaultTimeZone];
    v49 = v109;
    sub_21DBF5C2C();

    v51 = v106;
    v50 = v107;
    (*(v106 + 104))(v13, *MEMORY[0x277D44DC0], v107);
    LOBYTE(v48) = sub_21DBF603C();
    (*(v51 + 8))(v13, v50);
    v52 = v102;
    v100 = v36;
    if (v48)
    {
      v53 = [v31 timeZone];
      if (v53)
      {
        v107 = v43;
        LODWORD(v106) = a2;
        v54 = v104;
        v55 = v53;
        sub_21DBF5C2C();

        v56 = v103;
        (*(v52 + 32))(v103, v54, v36);
        v57 = v108;
        _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
        v58 = sub_21DBF5BFC();
        v59 = *(v111 + 8);
        v60 = v112;
        v59(v57, v112);
        _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
        v61 = sub_21DBF5BFC();
        v59(v57, v60);
        if (v58 != v61)
        {
          v87 = v52;
          v75 = v105;
          sub_21D0CF7E0(v105, &unk_27CE60DB0, qword_21DC0BF70);
          v88 = v56;
          v89 = v100;
          (*(v87 + 16))(v75, v88, v100);
          (v97[0])(v75, 0, 1, v89);
          v90 = v101;
          sub_21D0D3954(v75, v101, &unk_27CE60DB0, qword_21DC0BF70);
          if ((*(v87 + 48))(v90, 1, v89) == 1)
          {
            v91 = 0;
          }

          else
          {
            v91 = sub_21DBF5C0C();
            (*(v87 + 8))(v90, v89);
          }

          v8 = v99;
          v92 = v107;
          [v107 setTimeZone_];

          v93 = v98;
          v94 = v98;
          v95 = v109;
          sub_21DB13AA8(v31, v109, v106 & 1, v92, v93, v114);
          v106 = v114[1];
          v107 = v114[0];
          v37 = v114[3];
          v104 = v114[2];
          LODWORD(v108) = v115;

          v96 = *(v87 + 8);
          v96(v103, v89);
          v96(v95, v89);
          goto LABEL_43;
        }

        (*(v52 + 8))(v56, v100);
        v49 = v109;
        v43 = v107;
      }
    }

    v62 = sub_21DBF5C0C();
    [v43 setTimeZone_];

    v63 = sub_21DBF5C0C();
    v64 = v98;
    [v98 setTimeZone_];

    v65 = [v31 dateByAdjustingFloatingDateForDefaultTimeZone];
    v66 = v108;
    sub_21DBF55FC();

    v67 = sub_21DBF55BC();
    v68 = v43;
    v69 = [v43 stringFromDate_];

    v70 = sub_21DBFA16C();
    v106 = v71;
    v107 = v70;

    v72 = sub_21DBF55BC();
    v73 = [v64 stringFromDate_];

    v104 = sub_21DBFA16C();
    v37 = v74;

    (*(v111 + 8))(v66, v112);
    (*(v52 + 8))(v49, v100);
    LODWORD(v108) = 0;
    v8 = v99;
LABEL_42:
    v75 = v105;
LABEL_43:
    v76 = [v31 date];
    v77 = v8;
    sub_21DBF55FC();

    sub_21D0D3954(v75, v113, &unk_27CE60DB0, qword_21DC0BF70);
    v78 = [v31 isAllDay];
    v79 = v110;
    v80 = v110[3];
    v81 = v110[4];
    __swift_project_boxed_opaque_existential_1(v110, v80);
    if ((*(v81 + 64))(v80, v81))
    {
      sub_21D0CF7E0(v75, &unk_27CE60DB0, qword_21DC0BF70);

      v82 = 0;
    }

    else
    {
      v83 = v79[3];
      v84 = v79[4];
      __swift_project_boxed_opaque_existential_1(v79, v83);
      v82 = (*(v84 + 112))(v83, v84);

      sub_21D0CF7E0(v75, &unk_27CE60DB0, qword_21DC0BF70);
    }

    v85 = v106;
    *a3 = v107;
    *(a3 + 1) = v85;
    *(a3 + 2) = v104;
    *(a3 + 3) = v37;
    v86 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
    (*(v111 + 32))(&a3[v86[6]], v77, v112);
    sub_21D0D523C(v113, &a3[v86[7]], &unk_27CE60DB0, qword_21DC0BF70);
    a3[v86[8]] = v78;
    a3[v86[9]] = v82 & 1;
    a3[v86[10]] = v108;
    return (*(*(v86 - 1) + 56))(a3, 0, 1, v86);
  }

  v38 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v39 = *(*(v38 - 8) + 56);

  return v39(a3, 1, 1, v38);
}

uint64_t TTRReminderTitleWithHarvestedAttributes.init(title:highlightedRanges:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t TTRRemindersListViewModel.AssignmentData.assignmentString.getter()
{
  if ((*(v0 + 224) & 2) == 0)
  {
    return 0;
  }

  v1 = *(v0 + 176);
  v26 = *(v0 + 160);
  v27 = v1;
  v2 = *(v0 + 208);
  v28 = *(v0 + 192);
  v29 = v2;
  v3 = *(v0 + 112);
  v22 = *(v0 + 96);
  v23 = v3;
  v4 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = v4;
  v5 = *(v0 + 48);
  v21[2] = *(v0 + 32);
  v21[3] = v5;
  v6 = *(v0 + 80);
  v21[4] = *(v0 + 64);
  v21[5] = v6;
  v7 = *(v0 + 16);
  v21[0] = *v0;
  v21[1] = v7;
  if (sub_21D157494(v21) == 1)
  {
    return 0;
  }

  v20[3] = v27;
  v20[4] = v28;
  v20[5] = v29;
  v19[5] = v23;
  v20[0] = v24;
  v20[1] = v25;
  v20[2] = v26;
  v9 = v23;
  if (v23)
  {
    v16 = v26;
    v17 = v27;
    v18 = v28;
    v14 = v24;
    v15 = v25;
    sub_21D1D9B34(v20, v19);
    v10 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(1);
    countAndFlagsBits = v10._countAndFlagsBits;
    object = v10._object;
    v19[2] = v16;
    v19[3] = v17;
    v19[4] = v18;
    v19[0] = v14;
    v19[1] = v15;
    sub_21D1D9B90(v19);
    v9 = v29;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  v13 = sub_21DACF058(v22, v9 & 1, countAndFlagsBits, object);

  return v13;
}

void static TTRRemindersListViewModel.reminderDescription(baseAttributes:dateAttributes:listNameToShow:dateString:recurrenceString:urgentIconString:assignmentString:ttrAccessibilityOverdueIconString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = MEMORY[0x277D84F90];
  v68 = MEMORY[0x277D84F90];
  if (!a4)
  {
    v22 = 0x277CCA000uLL;
    if (!a6)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21DB15960(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
  v19 = sub_21DBF9E5C();
  v20 = [v17 initWithString:v18 attributes:v19];

  swift_beginAccess();
  v21 = v20;
  MEMORY[0x223D42D80]();
  if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21DBFA63C();
  }

  sub_21DBFA6CC();
  v16 = v68;
  swift_endAccess();

  v22 = 0x277CCA000;
  if (a6)
  {
LABEL_7:
    v23 = v22;
    v24 = objc_allocWithZone(*(v22 + 2200));
    swift_bridgeObjectRetain_n();
    v25 = sub_21DBFA12C();
    type metadata accessor for Key(0);
    sub_21DB15960(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
    v26 = sub_21DBF9E5C();
    v27 = [v24 &selRef:v25 constraintEqualToAnchor:v26];

    v28 = sub_21DB0D414(v27, a13, a14);
    swift_beginAccess();
    v29 = v28;
    MEMORY[0x223D42D80]();
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v16 = v68;
    swift_endAccess();

    swift_bridgeObjectRelease_n();
    v22 = v23;
  }

LABEL_10:
  if (a8)
  {
    v30 = objc_allocWithZone(*(v22 + 2200));
    v31 = sub_21DBFA12C();
    type metadata accessor for Key(0);
    sub_21DB15960(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
    v32 = sub_21DBF9E5C();
    v33 = [v30 &selRef:v31 constraintEqualToAnchor:v32];

    swift_beginAccess();
    v34 = v33;
    MEMORY[0x223D42D80]();
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v16 = v68;
    swift_endAccess();
  }

  if (a10)
  {
    v35 = objc_allocWithZone(*(v22 + 2200));
    v36 = sub_21DBFA12C();
    type metadata accessor for Key(0);
    sub_21DB15960(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
    v37 = sub_21DBF9E5C();
    v38 = [v35 &selRef:v36 constraintEqualToAnchor:v37];

    swift_beginAccess();
    v39 = v38;
    MEMORY[0x223D42D80]();
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v16 = v68;
    swift_endAccess();
  }

  if (a12)
  {
    v40 = objc_allocWithZone(*(v22 + 2200));
    v41 = sub_21DBFA12C();
    type metadata accessor for Key(0);
    sub_21DB15960(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
    v42 = sub_21DBF9E5C();
    v43 = [v40 &selRef:v41 constraintEqualToAnchor:v42];

    swift_beginAccess();
    v44 = v43;
    MEMORY[0x223D42D80]();
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v16 = v68;
    swift_endAccess();
  }

  v45 = v16 >> 62;
  if (v16 >> 62)
  {
    if (!sub_21DBFBD7C())
    {
      goto LABEL_51;
    }

    if (sub_21DBFBD7C() == 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v46 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v46)
    {
      goto LABEL_51;
    }

    if (v46 == 1)
    {
LABEL_25:
      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D44740](0, v16);
        goto LABEL_51;
      }

      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        *(v16 + 32);
LABEL_51:

        return;
      }

      goto LABEL_59;
    }
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v47 = objc_allocWithZone(*(v22 + 2200));
  v48 = sub_21DBFA12C();

  type metadata accessor for Key(0);
  sub_21DB15960(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
  v49 = sub_21DBF9E5C();
  v50 = [v47 &selRef:v48 constraintEqualToAnchor:{v49, 0x800000021DC4CFE0}];

  if ((v16 & 0xC000000000000001) != 0)
  {
    v51 = MEMORY[0x223D44740](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v51 = *(v16 + 32);
  }

  v52 = v51;
  v53 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

  if (!v45)
  {
    v54 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v55 = v54 != 0;
    if (v54 >= v55)
    {
LABEL_37:
      if ((v16 & 0xC000000000000001) != 0 && v54 > 1)
      {
        sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
        sub_21DBF8E0C();
        v56 = v55;
        do
        {
          v57 = v56 + 1;
          sub_21DBFBF6C();
          v56 = v57;
        }

        while (v54 != v57);
        if (!v45)
        {
LABEL_42:
          v58 = (v16 & 0xFFFFFFFFFFFFFF8) + 32;
          v59 = __OFSUB__(v54, v55);
          v61 = v54 - v55;
          v60 = (v61 < 0) ^ v59 | (v61 == 0);
          if (!v61)
          {
            goto LABEL_50;
          }

LABEL_47:
          if (v60)
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          v64 = (v58 + 8 * v55);
          do
          {
            v65 = *v64++;
            v66 = v65;
            [v53 appendAttributedString_];
            [v53 appendAttributedString_];

            --v61;
          }

          while (v61);
LABEL_50:

          swift_unknownObjectRelease();
          goto LABEL_51;
        }
      }

      else
      {
        sub_21DBF8E0C();
        if (!v45)
        {
          goto LABEL_42;
        }
      }

      sub_21DBFC3BC();
      v55 = v62;
      v61 = (v63 >> 1) - v62;
      v60 = (v63 >> 1) <= v62;
      if (v63 >> 1 == v62)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    goto LABEL_58;
  }

  v67 = sub_21DBFBD7C();
  if ((v67 & 0x8000000000000000) == 0)
  {
    v54 = v67;
    v55 = v67 != 0;
    if (sub_21DBFBD7C() >= v55)
    {
      if (sub_21DBFBD7C() >= v54)
      {
        goto LABEL_37;
      }

      __break(1u);
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_62:
  __break(1u);
}

__n128 TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_21DAF98D8(a1, a9, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v18 = a9 + v17[5];
  v19 = *(a2 + 80);
  *(v18 + 64) = *(a2 + 64);
  *(v18 + 80) = v19;
  *(v18 + 96) = *(a2 + 96);
  *(v18 + 106) = *(a2 + 106);
  v20 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v20;
  result = *(a2 + 32);
  v22 = *(a2 + 48);
  *(v18 + 32) = result;
  *(v18 + 48) = v22;
  *(a9 + v17[6]) = a3;
  *(a9 + v17[7]) = a4;
  *(a9 + v17[8]) = a5;
  *(a9 + v17[9]) = a6;
  *(a9 + v17[10]) = a7;
  *(a9 + v17[11]) = a8;
  return result;
}

uint64_t TTRRemindersListViewModel.ItemID.init(data:)(uint64_t a1, unint64_t a2)
{
  sub_21DBF521C();
  swift_allocObject();
  sub_21DBF520C();
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  sub_21DB15960(&qword_280D14270, type metadata accessor for TTRRemindersListViewModel.ItemID, protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  sub_21DBF51EC();

  return sub_21D17B8A8(a1, a2);
}

uint64_t TTRRemindersListViewModel.ItemID.dataRepresentation()()
{
  sub_21DBF525C();
  swift_allocObject();
  sub_21DBF524C();
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  sub_21DB15960(&qword_280D14278, type metadata accessor for TTRRemindersListViewModel.ItemID, protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  v0 = sub_21DBF522C();

  return v0;
}

uint64_t TTRRemindersListViewModel.LocationData.title.getter()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC08D00;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_21D17A884();
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  sub_21DBF8E0C();

  return sub_21DBFA17C();
}

uint64_t TTRRemindersListViewModel.ImageAttachment.init(attachmentID:fileURL:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v8 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment(0);
  result = sub_21D0D523C(a2, a4 + *(v8 + 20), &qword_27CE5EA20, &qword_21DC0D4A0);
  *(a4 + *(v8 + 24)) = a3;
  return result;
}

uint64_t TTRRemindersListViewModel.LinkAttachment.init(attachmentID:url:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v8 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0);
  v9 = *(v8 + 20);
  v10 = sub_21DBF54CC();
  result = (*(*(v10 - 8) + 32))(&a4[v9], a2, v10);
  *&a4[*(v8 + 24)] = a3;
  return result;
}

uint64_t TTRRemindersListViewModel.PersonData.init(name:contact:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

RemindersUICore::TTRRemindersListViewModel::AppLink __swiftcall TTRRemindersListViewModel.AppLink.init(icon:name:)(UIImage icon, Swift::String_optional name)
{
  *v2 = icon;
  *(v2 + 8) = name;
  result.name = name;
  result.icon = icon;
  return result;
}

__n128 TTRRemindersListViewModel.AssignmentData.init(assignment:visibleElements:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a1 + 176);
  *(a3 + 160) = *(a1 + 160);
  *(a3 + 176) = v4;
  v5 = *(a1 + 208);
  *(a3 + 192) = *(a1 + 192);
  *(a3 + 208) = v5;
  v6 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v6;
  v7 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v7;
  v8 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v8;
  v9 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v9;
  result = *a1;
  v11 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v11;
  *(a3 + 224) = v3;
  return result;
}

id TTRRemindersListViewModel.Item.reminderObjectID.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D1055C4(v1, v4, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if ((EnumCaseMultiPayload - 5) < 4)
  {
LABEL_6:
    sub_21D107038(v4, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 9) < 2)
  {
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return 0;
  }

LABEL_10:
  sub_21DAF98D8(v4, v7, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  if (swift_getEnumCaseMultiPayload() < 3)
  {
    sub_21DAF98D8(v7, v10, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v13 = *v10;
    sub_21D107038(v10, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    return v13;
  }

  return 0;
}

void TTRRemindersListViewModel.Reminder.init(item:objectID:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
  MEMORY[0x28223BE20](v6 - 8);
  v101 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v73 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a1;
  sub_21D0D3954(a1, v10, &unk_27CE5CD80, &qword_21DC0CE80);
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    (*(*(v17 - 8) + 56))(&v14[v16], 1, 1, v17);
    *v14 = a2;
    swift_storeEnumTagMultiPayload();
    v18 = v15(v10, 1, v11);
    v19 = a2;
    if (v18 != 1)
    {
      sub_21D0CF7E0(v10, &unk_27CE5CD80, &qword_21DC0CE80);
    }
  }

  else
  {
    sub_21DAF98D8(v10, v14, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  v100 = a2;
  if (qword_280D15938 != -1)
  {
    swift_once();
  }

  v99 = v14;
  v92 = HIBYTE(word_280D15940);
  v93 = word_280D15940;
  v91 = byte_280D15942;
  v20 = qword_280D15950;
  v90 = qword_280D15948;
  v88 = HIBYTE(word_280D15958);
  v89 = word_280D15958;
  v21 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v101, 1, 1, v21);
  v23 = qword_280D1BAC0;
  v94 = v20;
  sub_21DBF8E0C();
  if (v23 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v106 = xmmword_280D1BAC8;
  v107 = xmmword_280D1BAD8;
  v108 = xmmword_280D1BAE8;
  v109 = byte_280D1BAF8;
  v87 = TTRListColors.Color.nativeColor.getter();
  v102 = xmmword_280D1BAC8;
  v103 = xmmword_280D1BAD8;
  v104 = xmmword_280D1BAE8;
  v105 = byte_280D1BAF8;
  v86 = TTRListColors.Color.nativeColor.getter();
  v84 = [objc_opt_self() secondaryLabelColor];
  sub_21D639910(&v110);
  if (qword_280D15470 != -1)
  {
    swift_once();
  }

  v98 = byte_280D15478;
  v95 = unk_280D15488;
  v96 = qword_280D15480;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D0CF7E0(v97, &unk_27CE5CD80, &qword_21DC0CE80);
  v24 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v25 = v24[7];
  v26 = v24[10];
  v74 = (a3 + v24[9]);
  v75 = (a3 + v26);
  v76 = v25;
  v77 = v24[11];
  v22(a3 + v77, 1, 1, v21);
  v27 = v24[13];
  v73 = (a3 + v24[12]);
  v28 = a3 + v27;
  *(v28 + 48) = 0;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  v29 = v24[15];
  v79 = v24[16];
  v80 = v29;
  v78 = v24[17];
  v30 = v24[23];
  *(a3 + v24[24]) = 2;
  v81 = (a3 + v30);
  v31 = v24[31];
  v82 = (a3 + v24[30]);
  v32 = a3 + v31;
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  v33 = a3 + v24[32];
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  v34 = a3 + v24[34];
  v35 = v123;
  *(v34 + 192) = v122;
  *(v34 + 208) = v35;
  *(v34 + 224) = v124;
  v36 = v119;
  *(v34 + 128) = v118;
  *(v34 + 144) = v36;
  v37 = v121;
  *(v34 + 160) = v120;
  *(v34 + 176) = v37;
  v38 = v115;
  *(v34 + 64) = v114;
  *(v34 + 80) = v38;
  v39 = v117;
  *(v34 + 96) = v116;
  *(v34 + 112) = v39;
  v40 = v111;
  *v34 = v110;
  *(v34 + 16) = v40;
  v41 = v113;
  *(v34 + 32) = v112;
  *(v34 + 48) = v41;
  v42 = (a3 + v24[37]);
  v83 = xmmword_21DC19C40;
  *v42 = xmmword_21DC19C40;
  v42[2] = 0;
  v42[3] = 0;
  v43 = a3 + v24[38];
  *v43 = 0;
  *(v43 + 8) = 0;
  *(v43 + 16) = 0;
  v44 = v24[40];
  v85 = (a3 + v24[39]);
  *(a3 + v44) = 2;
  v45 = v24[42];
  v97 = v24[41];
  *(a3 + v45) = 0;
  sub_21DAF98D8(v99, a3, type metadata accessor for TTRRemindersListViewModel.Item);
  *(a3 + v24[5]) = v100;
  v46 = a3 + v24[6];
  v47 = v92;
  *v46 = v93;
  *(v46 + 1) = v47;
  *(v46 + 2) = v91;
  v48 = v94;
  *(v46 + 8) = v90;
  *(v46 + 16) = v48;
  LOBYTE(v48) = v88;
  *(v46 + 24) = v89;
  *(v46 + 25) = v48;
  *(a3 + v76) = 0;
  *(a3 + v24[8]) = 0;
  v50 = v74;
  v49 = v75;
  *v74 = 0;
  v50[1] = 0;
  *v49 = 0;
  v49[1] = 0;
  sub_21D0F02F4(v101, a3 + v77, &unk_27CE5F2B0, &unk_21DC14C00);
  v51 = v73;
  *v73 = 0;
  v51[1] = 0;
  sub_21D4B94BC(*v28, *(v28 + 8), *(v28 + 16), *(v28 + 24));
  *(v28 + 48) = 0;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  *(a3 + v24[14]) = 0;
  v52 = v79;
  *(a3 + v80) = 0;
  *(a3 + v52) = 0;
  *(a3 + v78) = 0;
  *(a3 + v24[18]) = 0;
  *(a3 + v24[19]) = 0;
  v53 = v86;
  *(a3 + v24[20]) = v87;
  *(a3 + v24[21]) = v53;
  *(a3 + v24[22]) = v84;
  v54 = v81;
  *v81 = 0;
  *(v54 + 8) = 1;
  *(a3 + v24[25]) = 0;
  *(a3 + v24[26]) = 2;
  *(a3 + v24[27]) = 0;
  *(a3 + v24[28]) = 0;
  *(a3 + v24[29]) = 0;
  v55 = v82;
  *v82 = 0;
  v55[1] = 0;

  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  sub_21D1576C8(*v33, *(v33 + 8), *(v33 + 16));
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  *(a3 + v24[33]) = 0;
  v56 = *(v34 + 208);
  v125[12] = *(v34 + 192);
  v125[13] = v56;
  v126 = *(v34 + 224);
  v57 = *(v34 + 144);
  v125[8] = *(v34 + 128);
  v125[9] = v57;
  v58 = *(v34 + 176);
  v125[10] = *(v34 + 160);
  v125[11] = v58;
  v59 = *(v34 + 80);
  v125[4] = *(v34 + 64);
  v125[5] = v59;
  v60 = *(v34 + 112);
  v125[6] = *(v34 + 96);
  v125[7] = v60;
  v61 = *(v34 + 16);
  v125[0] = *v34;
  v125[1] = v61;
  v62 = *(v34 + 48);
  v125[2] = *(v34 + 32);
  v125[3] = v62;
  sub_21D0CF7E0(v125, &unk_27CE5FB50, &qword_21DC1FAE0);
  v63 = v123;
  *(v34 + 192) = v122;
  *(v34 + 208) = v63;
  *(v34 + 224) = v124;
  v64 = v119;
  *(v34 + 128) = v118;
  *(v34 + 144) = v64;
  v65 = v121;
  *(v34 + 160) = v120;
  *(v34 + 176) = v65;
  v66 = v115;
  *(v34 + 64) = v114;
  *(v34 + 80) = v66;
  v67 = v117;
  *(v34 + 96) = v116;
  *(v34 + 112) = v67;
  v68 = v111;
  *v34 = v110;
  *(v34 + 16) = v68;
  v69 = v113;
  *(v34 + 32) = v112;
  *(v34 + 48) = v69;
  v70 = a3 + v24[35];
  *v70 = v98;
  v71 = v95;
  *(v70 + 8) = v96;
  *(v70 + 16) = v71;
  *(a3 + v24[36]) = 0;
  sub_21DB159C8(*v42, v42[1]);
  *v42 = v83;
  v42[2] = 0;
  v42[3] = 0;
  sub_21D6388A4(*v43);
  *v43 = 0;
  *(v43 + 8) = 0;
  *(v43 + 16) = 0;
  v72 = v85;
  *v85 = 0;
  v72[1] = 0;
  *(a3 + v97) = 1;
  *(a3 + v24[43]) = 0;
  *(a3 + v24[45]) = 0;
}

uint64_t TTRRemindersListViewModel.Reminder.notes.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 60));
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 string];
  v3 = sub_21DBFA16C();

  return v3;
}

double sub_21DAFD730@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v8 = *(v3 + 1);
  v7 = *(v3 + 2);
  v9 = v3[24];
  LOBYTE(v3) = v3[25];
  *a2 = v4;
  *(a2 + 1) = v5;
  *(a2 + 2) = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 25) = v3;
  sub_21DBF8E0C();
  return result;
}

double TTRRemindersListViewModel.Reminder.style.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v8 = *(v3 + 1);
  v7 = *(v3 + 2);
  v9 = v3[24];
  LOBYTE(v3) = v3[25];
  *a1 = v4;
  *(a1 + 1) = v5;
  *(a1 + 2) = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 25) = v3;

  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21DAFD7DC(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 20)) stringRepresentation];
  v3 = sub_21DBFA16C();

  return v3;
}

void *sub_21DAFD838(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = v2;
  return v2;
}

void *TTRRemindersListViewModel.Reminder.attributedTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 28));
  v2 = v1;
  return v1;
}

uint64_t sub_21DAFD8C8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  sub_21DBF8E0C();
  return v2;
}

uint64_t TTRRemindersListViewModel.Reminder.completionDateString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 36));
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21DAFD940(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  sub_21DBF8E0C();
  return v2;
}

uint64_t TTRRemindersListViewModel.Reminder.accessibleCompletionDateString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 40));
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21DAFDA34(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_21D0D3954(v1 + *(a1 + 44), &v9 - v4, &unk_27CE5F2B0, &unk_21DC14C00);
  v6 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_21D0CF7E0(v5, &unk_27CE5F2B0, &unk_21DC14C00);
    return 0;
  }

  else
  {
    v7 = v5[*(v6 + 36)];
    sub_21D107038(v5, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  }

  return v7;
}

uint64_t TTRRemindersListViewModel.Reminder.showsAsOverdue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  sub_21D0D3954(v0 + *(v4 + 44), v3, &unk_27CE5F2B0, &unk_21DC14C00);
  v5 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_21D0CF7E0(v3, &unk_27CE5F2B0, &unk_21DC14C00);
    return 0;
  }

  else
  {
    v6 = v3[*(v5 + 36)];
    sub_21D107038(v3, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  }

  return v6;
}

uint64_t sub_21DAFDC90(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));
  sub_21DBF8E0C();
  return v2;
}

uint64_t TTRRemindersListViewModel.Reminder.urgentIconString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 48));
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21DAFDD08(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 120));
  sub_21DBF8E0C();
  return v2;
}

uint64_t TTRRemindersListViewModel.Reminder.recurrenceDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 120));
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21DAFDD80(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_21D0D3954(v1 + *(a1 + 44), &v9 - v4, &unk_27CE5F2B0, &unk_21DC14C00);
  v6 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_21D0CF7E0(v5, &unk_27CE5F2B0, &unk_21DC14C00);
    return 0;
  }

  else
  {
    v7 = v5[*(v6 + 40)];
    sub_21D107038(v5, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  }

  return v7;
}

uint64_t TTRRemindersListViewModel.Reminder.hasTimeZoneDifferentDayString.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0, &unk_21DC14C00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  sub_21D0D3954(v0 + *(v4 + 44), v3, &unk_27CE5F2B0, &unk_21DC14C00);
  v5 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_21D0CF7E0(v3, &unk_27CE5F2B0, &unk_21DC14C00);
    return 0;
  }

  else
  {
    v6 = v3[*(v5 + 40)];
    sub_21D107038(v3, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  }

  return v6;
}

id sub_21DAFDFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 52);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = *(v3 + 48);
  return sub_21DB159EC(v4, v5, v6, v7, v8, v9);
}

id TTRRemindersListViewModel.Reminder.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 52);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(v3 + 48);

  return sub_21DB159EC(v4, v5, v6, v7, v8, v9);
}

void *sub_21DAFE068(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));
  v3 = v2;
  return v2;
}

void *TTRRemindersListViewModel.Reminder.attributedNotes.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 60));
  v2 = v1;
  return v1;
}

double TTRRemindersListViewModel.Reminder.linkAttachments.getter()
{
  type metadata accessor for TTRRemindersListViewModel.Reminder(0);

  sub_21DBF8E0C();
  return result;
}

double TTRRemindersListViewModel.Reminder.imageAttachments.getter()
{
  type metadata accessor for TTRRemindersListViewModel.Reminder(0);

  sub_21DBF8E0C();
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.flaggedState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *a1 = *(v1 + *(result + 104));
  return result;
}

uint64_t sub_21DAFE22C(uint64_t a1)
{
  if (*(v1 + *(a1 + 92) + 8))
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = sub_21DBFABEC();
  v5 = [v3 localizedStringFromNumber:v4 numberStyle:1];

  v6 = sub_21DBFA16C();
  return v6;
}

uint64_t TTRRemindersListViewModel.Reminder.subtaskCountString.getter()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  result = 0;
  if ((*(v0 + *(v1 + 92) + 8) & 1) == 0)
  {
    v3 = objc_opt_self();
    v4 = sub_21DBFABEC();
    v5 = [v3 localizedStringFromNumber:v4 numberStyle:1];

    v6 = sub_21DBFA16C();
    return v6;
  }

  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.subtaskCountDisplayStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *a1 = *(v1 + *(result + 96));
  return result;
}

id TTRRemindersListViewModel.Reminder.color.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 80));

  return v1;
}

id TTRRemindersListViewModel.Reminder.controlColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 84));

  return v1;
}

id TTRRemindersListViewModel.Reminder.completedStateTextColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 88));

  return v1;
}

double sub_21DAFE510@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 124));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  sub_21DBF8E0C();
  return result;
}

double TTRRemindersListViewModel.Reminder.listNameData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 124));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;

  sub_21DBF8E0C();
  return result;
}

id sub_21DAFE57C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2 + *(a1 + 152);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_21DB15A4C(v4, v5, v6);
}

id TTRRemindersListViewModel.Reminder.appLink.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 152);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_21DB15A4C(v4, v5, v6);
}

double sub_21DAFE5E8@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 128));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_21D157724(v4, v5, v6);
}

double TTRRemindersListViewModel.Reminder.person.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 128));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_21D157724(v4, v5, v6);
}

uint64_t sub_21DAFE684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 136));
  v4 = v3[11];
  v5 = v3[13];
  v37 = v3[12];
  v38 = v5;
  v6 = v3[7];
  v7 = v3[9];
  v33 = v3[8];
  v8 = v33;
  v34 = v7;
  v9 = v3[9];
  v10 = v3[11];
  v35 = v3[10];
  v11 = v35;
  v36 = v10;
  v12 = v3[3];
  v13 = v3[5];
  v29 = v3[4];
  v14 = v29;
  v30 = v13;
  v15 = v3[5];
  v16 = v3[7];
  v31 = v3[6];
  v17 = v31;
  v32 = v16;
  v18 = v3[1];
  v26[0] = *v3;
  v26[1] = v18;
  v19 = v3[3];
  v21 = *v3;
  v20 = v3[1];
  v27 = v3[2];
  v22 = v27;
  v28 = v19;
  v23 = v3[13];
  *(a2 + 192) = v37;
  *(a2 + 208) = v23;
  *(a2 + 128) = v8;
  *(a2 + 144) = v9;
  *(a2 + 160) = v11;
  *(a2 + 176) = v4;
  *(a2 + 64) = v14;
  *(a2 + 80) = v15;
  *(a2 + 96) = v17;
  *(a2 + 112) = v6;
  *a2 = v21;
  *(a2 + 16) = v20;
  v39 = *(v3 + 28);
  *(a2 + 224) = *(v3 + 28);
  *(a2 + 32) = v22;
  *(a2 + 48) = v12;
  return sub_21D0D3954(v26, v25, &unk_27CE5FB50, &qword_21DC1FAE0);
}

uint64_t TTRRemindersListViewModel.Reminder.assignmentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 136));
  v4 = v3[11];
  v5 = v3[13];
  v37 = v3[12];
  v38 = v5;
  v6 = v3[7];
  v7 = v3[9];
  v33 = v3[8];
  v8 = v33;
  v34 = v7;
  v9 = v3[9];
  v10 = v3[11];
  v35 = v3[10];
  v11 = v35;
  v36 = v10;
  v12 = v3[3];
  v13 = v3[5];
  v29 = v3[4];
  v14 = v29;
  v30 = v13;
  v15 = v3[5];
  v16 = v3[7];
  v31 = v3[6];
  v17 = v31;
  v32 = v16;
  v18 = v3[1];
  v26[0] = *v3;
  v26[1] = v18;
  v19 = v3[3];
  v21 = *v3;
  v20 = v3[1];
  v27 = v3[2];
  v22 = v27;
  v28 = v19;
  v23 = v3[13];
  *(a1 + 192) = v37;
  *(a1 + 208) = v23;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 160) = v11;
  *(a1 + 176) = v4;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  *(a1 + 96) = v17;
  *(a1 + 112) = v6;
  *a1 = v21;
  *(a1 + 16) = v20;
  v39 = *(v3 + 28);
  *(a1 + 224) = *(v3 + 28);
  *(a1 + 32) = v22;
  *(a1 + 48) = v12;
  return sub_21D0D3954(v26, v25, &unk_27CE5FB50, &qword_21DC1FAE0);
}

double sub_21DAFE838@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 140);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  sub_21DBF8E0C();

  sub_21DBF8E0C();
  return result;
}

double TTRRemindersListViewModel.Reminder.hashtagData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 140);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_21DBF8E0C();

  sub_21DBF8E0C();
  return result;
}

double sub_21DAFE90C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 148));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_21DB15A90(v4, v5, v6, v7);
}

double TTRRemindersListViewModel.Reminder.suggestedSectionDisplayStyle.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 148));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_21DB15A90(v4, v5, v6, v7);
}

void *sub_21DAFE978(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 168));
  v3 = v2;
  return v2;
}

void *TTRRemindersListViewModel.Reminder.listObjectID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 168));
  v2 = v1;
  return v1;
}

void TTRRemindersListViewModel.Reminder.priorityLevelDisplayString.getter()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v2 = *(v1 + 112);
  v3 = *(v0 + *(v1 + 108));
  if (*(v0 + v2) < v3)
  {
    if (v3 > 1)
    {
      if (v3 == 2 || v3 == 3)
      {
        return;
      }
    }

    else if (v3 <= 1)
    {
      return;
    }

    if (qword_27CE56D68 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE62E48);
    v5 = MEMORY[0x277D84F90];
    v6 = sub_21D17716C(MEMORY[0x277D84F90]);
    v7 = sub_21D17716C(v5);
    sub_21DAEAB00("unknown priority level", 22, 2, v6, v7);
    __break(1u);
  }
}

uint64_t sub_21DAFEAF0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 156));
  sub_21DBF8E0C();
  return v2;
}

uint64_t TTRRemindersListViewModel.Reminder.siriFoundInAppsDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 156));
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersListViewModel.Reminder.ttrAccessibilitySectionHeaderType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *a1 = *(v1 + *(result + 160));
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.iOS.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *a1 = *(v1 + *(result + 172));
  return result;
}

uint64_t sub_21DAFEBF0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE667F0);
  v1 = __swift_project_value_buffer(v0, qword_27CE667F0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderSuggestedLocation.identifier.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

void *TTRReminderSuggestedLocation.image.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t TTRReminderSuggestedLocation.subtitle.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderSuggestedLocation.init(identifier:image:title:subtitle:defaultProximity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t TTRReminderSuggestedLocation.ttrAccessibilityLabel.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D20;
  sub_21DBF8E0C();
  v5 = [v1 string];
  v6 = sub_21DBFA16C();
  v8 = v7;

  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
  v9 = sub_21DBFA07C();

  return v9;
}

uint64_t sub_21DAFEECC()
{
  result = sub_21DBFA12C();
  qword_280D177A0 = result;
  return result;
}

uint64_t sub_21DAFEF28()
{
  result = sub_21DBFA12C();
  qword_27CE66808 = result;
  return result;
}

uint64_t static TTRReminderTitleWithHarvestedAttributes.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  return sub_21D321D9C(v2, v3);
}

uint64_t sub_21DAFF000(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  return sub_21D321D9C(v2, v3);
}

id TTRRemindersListSectionMenuCapabilities.listOrCustomSmartList.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_21D1B1ED4(v2, v3);
}

id TTRRemindersListSectionMenuCapabilities.canSupportEditSections.getter()
{
  v1 = *(v0 + 8);
  if (v1 == 255)
  {
    return 0;
  }

  v2 = *v0;
  v3 = v2;
  if (v1)
  {
    v4 = [v3 accountCapabilities];
  }

  else
  {
    v6 = [v3 account];
    v4 = [v6 capabilities];
  }

  v5 = [v4 supportsSections];
  sub_21D157864(v2, v1);

  return v5;
}

uint64_t TTRRemindersListSectionMenuCapabilities.init(listOrCustomSmartList:canSupportAddSection:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 9) = a2;
  return result;
}

void *TTRRemindersListSubtaskDisplayStyle.resolvedStyle(for:)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    result = v3(&v5);
    LOBYTE(v3) = v5;
  }

  *a1 = v3 & 1;
  return result;
}

RemindersUICore::TTRRemindersListViewModel::SectionID::NamedID_optional __swiftcall TTRRemindersListViewModel.SectionID.NamedID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter()
{
  result = 0x5364656767616C66;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6553646567676174;
      break;
    case 5:
      result = 0x6365537961646F74;
      break;
    case 6:
    case 7:
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 8:
    case 0xA:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
      result = 0xD000000000000016;
      break;
    case 0xE:
      result = 0xD00000000000001DLL;
      break;
    case 0xF:
      result = 0xD00000000000001ELL;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_21DAFF3F0()
{
  v0 = TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
  v2 = v1;
  if (v0 == TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21DBFC64C();
  }

  return v5 & 1;
}

uint64_t sub_21DAFF48C()
{
  sub_21DBFC7DC();
  TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

double sub_21DAFF4F4(uint64_t a1)
{
  TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
  sub_21DBFA27C();

  return result;
}

uint64_t sub_21DAFF558(uint64_t a1)
{
  sub_21DBFC7DC();
  TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

unint64_t sub_21DAFF5C8@<X0>(unint64_t *a1@<X8>)
{
  result = TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TTRRemindersListViewModel.SectionID.EraAndYear.init(dateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF4F2C();
  v6 = v5;
  v7 = sub_21DBF4F7C();
  v9 = v8;
  v10 = sub_21DBF509C();
  result = (*(*(v10 - 8) + 8))(a1, v10);
  *a2 = v4;
  *(a2 + 8) = v6 & 1;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9 & 1;
  return result;
}

RemindersUICore::TTRRemindersListViewModel::SectionID::EraAndYear __swiftcall TTRRemindersListViewModel.SectionID.EraAndYear.init(era:year:)(Swift::Int_optional era, Swift::Int_optional year)
{
  *v2 = era.value;
  *(v2 + 8) = era.is_nil;
  *(v2 + 16) = year.value;
  *(v2 + 24) = year.is_nil;
  result.year = year;
  result.era = era;
  return result;
}

uint64_t TTRRemindersListViewModel.SectionID.EraAndYear.makeDateComponents()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0, &unk_21DC18C20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_21DBF5A2C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_21DBF5C4C();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_21DBF504C();
}

double TTRRemindersListViewModel.SectionID.EraAndYear.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (*(v0 + 8) == 1)
  {
    sub_21DBFC7FC();
    if (!v2)
    {
LABEL_3:
      sub_21DBFC7FC();
      MEMORY[0x223D44FA0](v1);
      return result;
    }
  }

  else
  {
    v4 = *v0;
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](v4);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  sub_21DBFC7FC();
  return result;
}

uint64_t TTRRemindersListViewModel.SectionID.EraAndYear.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_21DBFC7DC();
  if (v2 != 1)
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](v1);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21DBFC7FC();
    return sub_21DBFC82C();
  }

  sub_21DBFC7FC();
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_21DBFC7FC();
  MEMORY[0x223D44FA0](v3);
  return sub_21DBFC82C();
}

double sub_21DAFF9DC()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (*(v0 + 8) == 1)
  {
    sub_21DBFC7FC();
    if (!v2)
    {
LABEL_3:
      sub_21DBFC7FC();
      MEMORY[0x223D44FA0](v1);
      return result;
    }
  }

  else
  {
    v4 = *v0;
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](v4);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  sub_21DBFC7FC();
  return result;
}

uint64_t sub_21DAFFA5C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  v5 = *(v1 + 24);
  sub_21DBFC7DC();
  if (v3 != 1)
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](v2);
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21DBFC7FC();
    return sub_21DBFC82C();
  }

  sub_21DBFC7FC();
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_21DBFC7FC();
  MEMORY[0x223D44FA0](v4);
  return sub_21DBFC82C();
}

double TTRRemindersListViewModel.SectionID.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D1055C4(v2, v9, type metadata accessor for TTRRemindersListViewModel.SectionID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        (*(v4 + 32))(v6, v9, v3);
        v11 = 2;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        (*(v4 + 32))(v6, v9, v3);
        v11 = 3;
      }

      else
      {
        (*(v4 + 32))(v6, v9, v3);
        v11 = 4;
      }

LABEL_23:
      MEMORY[0x223D44FA0](v11);
      sub_21DB15960(&unk_280D171A8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_21DBFA00C();
      (*(v4 + 8))(v6, v3);
      return result;
    }

    if (!EnumCaseMultiPayload)
    {
      v14 = *v9;
      MEMORY[0x223D44FA0](0);
      v20[15] = v14;
      TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
      sub_21DBFA27C();

      return result;
    }

    v12 = *v9;
    v13 = 1;
LABEL_21:
    MEMORY[0x223D44FA0](v13);
    sub_21DBFB64C();

    return result;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      (*(v4 + 32))(v6, v9, v3);
      v11 = 5;
    }

    else
    {
      (*(v4 + 32))(v6, v9, v3);
      v11 = 6;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 7)
  {
    v12 = *v9;
    if (EnumCaseMultiPayload == 8)
    {
      v13 = 8;
    }

    else
    {
      v13 = 9;
    }

    goto LABEL_21;
  }

  v16 = *v9;
  v17 = v9[8];
  v18 = *(v9 + 2);
  v19 = v9[24];
  MEMORY[0x223D44FA0](7);
  if (v17 == 1)
  {
    sub_21DBFC7FC();
    if (!v19)
    {
LABEL_17:
      sub_21DBFC7FC();
      MEMORY[0x223D44FA0](v18);
      return result;
    }
  }

  else
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](v16);
    if (!v19)
    {
      goto LABEL_17;
    }
  }

  sub_21DBFC7FC();
  return result;
}

uint64_t TTRRemindersListViewModel.SectionHeader.title.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.SectionHeader(0) + 20));
  v4 = v3[5];
  v6 = v3[3];
  v19 = v3[4];
  v5 = v19;
  v20 = v4;
  v7 = v3[5];
  v21[0] = v3[6];
  *(v21 + 10) = *(v3 + 106);
  v8 = v3[3];
  v10 = v3[1];
  v17 = v3[2];
  v9 = v17;
  v18 = v8;
  v11 = v3[1];
  v16[0] = *v3;
  v12 = v16[0];
  v16[1] = v11;
  *(a1 + 106) = *(v3 + 106);
  v13 = v3[6];
  a1[5] = v7;
  a1[6] = v13;
  a1[3] = v6;
  a1[4] = v5;
  a1[1] = v10;
  a1[2] = v9;
  *a1 = v12;
  return sub_21D0D3954(v16, &v15, &qword_27CE5B090, &qword_21DC3CC30);
}

void *TTRRemindersListViewModel.SectionHeader.listObjectID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.SectionHeader(0) + 44));
  v2 = v1;
  return v1;
}

uint64_t (*static TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidthOrHiddenForFirstSection.getter())@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v0 = sub_21DBF604C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D44DA0], v0, v2);
  v5 = sub_21DBF603C();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    return sub_21D3BD28C;
  }

  else
  {
    return sub_21DB001CC;
  }
}

uint64_t sub_21DB001CC@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

BOOL static TTRRemindersListViewModel.SectionHeaderTitle.Separator.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t TTRRemindersListViewModel.SectionHeaderTitle.text.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

double TTRRemindersListViewModel.SectionHeaderTitle.textStyle.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 64);
  *(a1 + 48) = v8;
  return sub_21D2A7DB4(v2, v3, v4, v5, v6, v7, v8);
}

double TTRRemindersListViewModel.SectionHeaderTitle.disclosureColor.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 120);
  *(a1 + 48) = v8;
  return sub_21DB15AE4(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t TTRRemindersListViewModel.ListNameData.name.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

RemindersUICore::TTRRemindersListViewModel::ListNameData __swiftcall TTRRemindersListViewModel.ListNameData.init(name:isVisible:)(Swift::String name, Swift::Bool isVisible)
{
  *v2 = name;
  *(v2 + 16) = isVisible;
  result.name = name;
  result.isVisible = isVisible;
  return result;
}

uint64_t static TTRRemindersListViewModel.ListNameData.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_21DBFC64C();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t TTRRemindersListViewModel.AppLink.name.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t static TTRRemindersListViewModel.AppLink.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if (sub_21DBFB63C())
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_21DBFC64C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_21DB00478(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if (sub_21DBFB63C())
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_21DBFC64C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t TTRRemindersListViewModel.AssignmentData.assignment.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[9];
  v33 = v1[10];
  v34 = v2;
  v4 = v1[11];
  v5 = v1[13];
  v35 = v1[12];
  v6 = v35;
  v36 = v5;
  v7 = v1[7];
  v9 = v1[5];
  v29 = v1[6];
  v8 = v29;
  v30 = v7;
  v10 = v1[7];
  v11 = v1[9];
  v31 = v1[8];
  v12 = v31;
  v32 = v11;
  v13 = v1[3];
  v15 = v1[1];
  v25 = v1[2];
  v14 = v25;
  v26 = v13;
  v16 = v1[3];
  v17 = v1[5];
  v27 = v1[4];
  v18 = v27;
  v28 = v17;
  v19 = v1[1];
  v24[0] = *v1;
  v20 = v24[0];
  v24[1] = v19;
  a1[10] = v33;
  a1[11] = v4;
  v21 = v1[13];
  a1[12] = v6;
  a1[13] = v21;
  a1[6] = v8;
  a1[7] = v10;
  a1[8] = v12;
  a1[9] = v3;
  a1[2] = v14;
  a1[3] = v16;
  a1[4] = v18;
  a1[5] = v9;
  *a1 = v20;
  a1[1] = v15;
  return sub_21D0D3954(v24, &v23, &qword_27CE608E0, &qword_21DC25DE8);
}

id TTRRemindersListViewModel.Reminder.objectID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 20));

  return v1;
}

void TTRRemindersListViewModel.Reminder.style.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = a1[24];
  v8 = a1[25];
  v9 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 24);

  *v9 = v2;
  *(v9 + 1) = v3;
  *(v9 + 2) = v4;
  *(v9 + 8) = v5;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  *(v9 + 25) = v8;
}

void TTRRemindersListViewModel.Reminder.attributedTitle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t TTRRemindersListViewModel.Reminder.isCompleted.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

void TTRRemindersListViewModel.Reminder.completionDateString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

void TTRRemindersListViewModel.Reminder.accessibleCompletionDateString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 40));

  *v5 = a1;
  v5[1] = a2;
}

void TTRRemindersListViewModel.Reminder.urgentIconString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 48));

  *v5 = a1;
  v5[1] = a2;
}

__n128 TTRRemindersListViewModel.Reminder.location.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 52);
  sub_21D4B94BC(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
  result = *a1;
  v8 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v8;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.supportsLocation.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

void TTRRemindersListViewModel.Reminder.attributedNotes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 60);

  *(v1 + v3) = a1;
}

void TTRRemindersListViewModel.Reminder.linkAttachments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 64);

  *(v1 + v3) = a1;
}

void TTRRemindersListViewModel.Reminder.imageAttachments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 68);

  *(v1 + v3) = a1;
}

uint64_t TTRRemindersListViewModel.Reminder.showingLargeAttachments.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.totalImageCount.setter(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

void TTRRemindersListViewModel.Reminder.color.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 80);

  *(v1 + v3) = a1;
}

void TTRRemindersListViewModel.Reminder.controlColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 84);

  *(v1 + v3) = a1;
}

void TTRRemindersListViewModel.Reminder.completedStateTextColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 88);

  *(v1 + v3) = a1;
}

uint64_t TTRRemindersListViewModel.Reminder.subtaskCount.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v6 = v2 + *(result + 92);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.subtaskCountDisplayStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 96)) = v2;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.isSubtask.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.flaggedState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 104)) = v2;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.priorityLevel.setter(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.defaultPriorityLevel.setter(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.isRecurrent.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 116)) = a1;
  return result;
}

void TTRRemindersListViewModel.Reminder.recurrenceDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 120));

  *v5 = a1;
  v5[1] = a2;
}

void TTRRemindersListViewModel.Reminder.listNameData.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 124);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

__n128 TTRRemindersListViewModel.Reminder.person.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 128);
  sub_21D1576C8(*v3, *(v3 + 8), *(v3 + 16));
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.supportsAssignment.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 132)) = a1;
  return result;
}

__n128 TTRRemindersListViewModel.Reminder.assignmentData.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 136);
  v4 = *(v3 + 208);
  v18[12] = *(v3 + 192);
  v18[13] = v4;
  v19 = *(v3 + 224);
  v5 = *(v3 + 144);
  v18[8] = *(v3 + 128);
  v18[9] = v5;
  v6 = *(v3 + 176);
  v18[10] = *(v3 + 160);
  v18[11] = v6;
  v7 = *(v3 + 80);
  v18[4] = *(v3 + 64);
  v18[5] = v7;
  v8 = *(v3 + 112);
  v18[6] = *(v3 + 96);
  v18[7] = v8;
  v9 = *(v3 + 16);
  v18[0] = *v3;
  v18[1] = v9;
  v10 = *(v3 + 48);
  v18[2] = *(v3 + 32);
  v18[3] = v10;
  sub_21D0CF7E0(v18, &unk_27CE5FB50, &qword_21DC1FAE0);
  v11 = *(a1 + 208);
  *(v3 + 192) = *(a1 + 192);
  *(v3 + 208) = v11;
  *(v3 + 224) = *(a1 + 224);
  v12 = *(a1 + 144);
  *(v3 + 128) = *(a1 + 128);
  *(v3 + 144) = v12;
  v13 = *(a1 + 176);
  *(v3 + 160) = *(a1 + 160);
  *(v3 + 176) = v13;
  v14 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v14;
  v15 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v15;
  v16 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v16;
  result = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = result;
  return result;
}

void TTRRemindersListViewModel.Reminder.hashtagData.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 140);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t TTRRemindersListViewModel.Reminder.supportsStylingInNote.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 144)) = a1;
  return result;
}

__n128 TTRRemindersListViewModel.Reminder.suggestedSectionDisplayStyle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 148);
  sub_21DB159C8(*v3, *(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  return result;
}

__n128 TTRRemindersListViewModel.Reminder.appLink.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 152);
  sub_21D6388A4(*v3);
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

void TTRRemindersListViewModel.Reminder.siriFoundInAppsDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 156));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t TTRRemindersListViewModel.Reminder.ttrAccessibilitySectionHeaderType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 160)) = v2;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.hasShowInfoButton.setter(char a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 164)) = a1;
  return result;
}

void TTRRemindersListViewModel.Reminder.listObjectID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 168);

  *(v1 + v3) = a1;
}

uint64_t TTRRemindersListViewModel.Reminder.iOS.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 172)) = v2;
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.watchOS.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *a1 = *(v1 + *(result + 180));
  return result;
}

uint64_t TTRRemindersListViewModel.Reminder.watchOS.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(v1 + *(result + 180)) = v2;
  return result;
}

__n128 TTRRemindersListViewModel.Reminder.init(item:objectID:style:attributedTitle:isCompleted:completionDateString:accessibleCompletionDateString:displayDate:urgentIconString:location:supportsLocation:attributedNotes:linkAttachments:imageAttachments:showingLargeAttachments:totalImageCount:color:controlColor:completedStateTextColor:subtaskCount:subtaskCountDisplayStyle:isSubtask:flaggedState:priorityLevel:defaultPriorityLevel:isRecurrent:recurrenceDescription:listNameData:person:supportsAssignment:assignmentData:hashtagData:supportsStylingInNote:suggestedSectionDisplayStyle:appLink:siriFoundInAppsDescription:hasShowInfoButton:iOS:macOS:watchOS:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, char *a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t *a34, __int128 *a35, char a36, uint64_t a37, char *a38, char a39, __int128 *a40, __n128 *a41, uint64_t a42, uint64_t a43, char a44, uint64_t *a45, uint64_t a46, char *a47)
{
  v102 = *a3;
  v101 = a3[1];
  v100 = a3[2];
  v99 = *(a3 + 1);
  v98 = *(a3 + 2);
  v97 = a3[24];
  v96 = a3[25];
  v107 = *a28;
  v114 = a34[1];
  v115 = *a34;
  v113 = *(a34 + 16);
  v117 = *a35;
  v116 = *(a35 + 2);
  v122 = *a38;
  v121 = *(a38 + 1);
  v120 = *(a38 + 2);
  v124 = *a41;
  v123 = a41[1].n128_u64[0];
  v125 = *a45;
  v126 = *a47;
  v94 = *(a14 + 5);
  v95 = *(a14 + 4);
  v93 = *(a14 + 48);
  v48 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v83 = (a9 + v48[9]);
  v84 = (a9 + v48[10]);
  v85 = v48[7];
  v49 = v48[11];
  v82 = v49;
  v50 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v118 = a40[1];
  v119 = *a40;
  v92 = *a14;
  v90 = a14[1];
  (*(*(v50 - 8) + 56))(a9 + v49, 1, 1, v50);
  v81 = (a9 + v48[12]);
  v51 = a9 + v48[13];
  *(v51 + 48) = 0;
  *(v51 + 16) = 0u;
  *(v51 + 32) = 0u;
  *v51 = 0u;
  v87 = v48[16];
  v88 = v48[15];
  v86 = v48[17];
  v89 = a9 + v48[23];
  *(a9 + v48[24]) = 2;
  v91 = (a9 + v48[30]);
  v52 = a9 + v48[31];
  *v52 = 0;
  *(v52 + 8) = 0;
  *(v52 + 16) = 0;
  v53 = a9 + v48[32];
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 16) = 0;
  v54 = a9 + v48[34];
  sub_21D639910(v127);
  v55 = v127[13];
  *(v54 + 192) = v127[12];
  *(v54 + 208) = v55;
  *(v54 + 224) = v128;
  v56 = v127[9];
  *(v54 + 128) = v127[8];
  *(v54 + 144) = v56;
  v57 = v127[11];
  *(v54 + 160) = v127[10];
  *(v54 + 176) = v57;
  v58 = v127[5];
  *(v54 + 64) = v127[4];
  *(v54 + 80) = v58;
  v59 = v127[7];
  *(v54 + 96) = v127[6];
  *(v54 + 112) = v59;
  v60 = v127[1];
  *v54 = v127[0];
  *(v54 + 16) = v60;
  v61 = v127[3];
  *(v54 + 32) = v127[2];
  *(v54 + 48) = v61;
  v62 = (a9 + v48[37]);
  *v62 = xmmword_21DC19C40;
  v62[2] = 0;
  v62[3] = 0;
  v63 = a9 + v48[38];
  *v63 = 0;
  *(v63 + 8) = 0;
  *(v63 + 16) = 0;
  v103 = (a9 + v48[39]);
  *(a9 + v48[40]) = 2;
  v104 = v48[41];
  *(a9 + v48[42]) = 0;
  sub_21DAF98D8(a1, a9, type metadata accessor for TTRRemindersListViewModel.Item);
  *(a9 + v48[5]) = a2;
  v64 = a9 + v48[6];
  *v64 = v102;
  *(v64 + 1) = v101;
  *(v64 + 2) = v100;
  *(v64 + 8) = v99;
  *(v64 + 16) = v98;
  *(v64 + 24) = v97;
  *(v64 + 25) = v96;
  *(a9 + v85) = a4;
  *(a9 + v48[8]) = a5;
  *v83 = a6;
  v83[1] = a7;
  *v84 = a8;
  v84[1] = a10;
  sub_21D0F02F4(a11, a9 + v82, &unk_27CE5F2B0, &unk_21DC14C00);
  *v81 = a12;
  v81[1] = a13;
  sub_21D4B94BC(*v51, *(v51 + 8), *(v51 + 16), *(v51 + 24));
  *v51 = v92;
  *(v51 + 16) = v90;
  *(v51 + 32) = v95;
  *(v51 + 40) = v94;
  *(v51 + 48) = v93;
  *(a9 + v48[14]) = a15;
  *(a9 + v88) = a16;
  *(a9 + v87) = a17;
  *(a9 + v86) = a18;
  *(a9 + v48[18]) = a19;
  *(a9 + v48[19]) = a20;
  *(a9 + v48[20]) = a21;
  *(a9 + v48[21]) = a22;
  *(a9 + v48[22]) = a23;
  *v89 = a24;
  *(v89 + 8) = a25 & 1;
  *(a9 + v48[25]) = a27;
  *(a9 + v48[26]) = v107;
  *(a9 + v48[27]) = a29;
  *(a9 + v48[28]) = a30;
  *(a9 + v48[29]) = a31;
  *v91 = a32;
  v91[1] = a33;

  *v52 = v115;
  *(v52 + 8) = v114;
  *(v52 + 16) = v113;
  sub_21D1576C8(*v53, *(v53 + 8), *(v53 + 16));
  *v53 = v117;
  *(v53 + 16) = v116;
  *(a9 + v48[33]) = a36;
  v65 = *(v54 + 208);
  v129[12] = *(v54 + 192);
  v129[13] = v65;
  v130 = *(v54 + 224);
  v66 = *(v54 + 144);
  v129[8] = *(v54 + 128);
  v129[9] = v66;
  v67 = *(v54 + 176);
  v129[10] = *(v54 + 160);
  v129[11] = v67;
  v68 = *(v54 + 80);
  v129[4] = *(v54 + 64);
  v129[5] = v68;
  v69 = *(v54 + 112);
  v129[6] = *(v54 + 96);
  v129[7] = v69;
  v70 = *(v54 + 16);
  v129[0] = *v54;
  v129[1] = v70;
  v71 = *(v54 + 48);
  v129[2] = *(v54 + 32);
  v129[3] = v71;
  sub_21D0CF7E0(v129, &unk_27CE5FB50, &qword_21DC1FAE0);
  v72 = *(a37 + 208);
  *(v54 + 192) = *(a37 + 192);
  *(v54 + 208) = v72;
  *(v54 + 224) = *(a37 + 224);
  v73 = *(a37 + 144);
  *(v54 + 128) = *(a37 + 128);
  *(v54 + 144) = v73;
  v74 = *(a37 + 176);
  *(v54 + 160) = *(a37 + 160);
  *(v54 + 176) = v74;
  v75 = *(a37 + 80);
  *(v54 + 64) = *(a37 + 64);
  *(v54 + 80) = v75;
  v76 = *(a37 + 112);
  *(v54 + 96) = *(a37 + 96);
  *(v54 + 112) = v76;
  v77 = *(a37 + 16);
  *v54 = *a37;
  *(v54 + 16) = v77;
  v78 = *(a37 + 48);
  *(v54 + 32) = *(a37 + 32);
  *(v54 + 48) = v78;
  v79 = a9 + v48[35];
  *v79 = v122;
  *(v79 + 8) = v121;
  *(v79 + 16) = v120;
  *(a9 + v48[36]) = a39;
  sub_21DB159C8(*v62, v62[1]);
  *v62 = v119;
  *(v62 + 1) = v118;
  sub_21D6388A4(*v63);
  result = v124;
  *v63 = v124;
  *(v63 + 16) = v123;
  *v103 = a42;
  v103[1] = a43;
  *(a9 + v104) = a44;
  *(a9 + v48[43]) = v125;
  *(a9 + v48[45]) = v126;
  return result;
}

uint64_t TTRRemindersListViewModel.DisplayDate.string.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersListViewModel.DisplayDate.accessiblitySpeakableString.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersListViewModel.DisplayDate.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.DisplayDate(0) + 24);
  v4 = sub_21DBF563C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRRemindersListViewModel.DisplayDate.init(string:accessiblitySpeakableString:date:timeZone:allDay:showsAsOverdue:hasTimeZoneDifferentDayString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>, char a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v15 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v16 = v15[6];
  v17 = sub_21DBF563C();
  (*(*(v17 - 8) + 32))(&a9[v16], a5, v17);
  result = sub_21D0D523C(a6, &a9[v15[7]], &unk_27CE60DB0, qword_21DC0BF70);
  a9[v15[8]] = a7;
  a9[v15[9]] = a8;
  a9[v15[10]] = a10;
  return result;
}

id TTRRemindersListViewModel.LocationData.image.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *TTRRemindersListViewModel.LocationData.imageBackgroundColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t TTRRemindersListViewModel.LocationData.localizedLabelFormatString.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersListViewModel.LocationData.locationName.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersListViewModel.LocationData.init(image:imageBackgroundColor:localizedLabelFormatString:locationName:hasStrikethroughStyling:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t TTRRemindersListViewModel.LocationData.ttrAccessibilityTitle.getter()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v6 = sub_21D17A884();
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  sub_21DBF8E0C();
  result = sub_21DBFA17C();
  if (v3 == 1)
  {

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF516C();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_21DC08D20;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21DC08D00;
    *(v12 + 56) = v5;
    *(v12 + 64) = v6;
    *(v12 + 32) = v2;
    *(v12 + 40) = v1;
    sub_21DBF8E0C();
    *(v11 + 32) = sub_21DBFA17C();
    *(v11 + 40) = v13;
    *(v11 + 48) = v8;
    *(v11 + 56) = v10;
    if (qword_280D1B938 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
    v14 = sub_21DBFA07C();

    return v14;
  }

  return result;
}

uint64_t TTRRemindersListViewModel.PersonData.name.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

void *TTRRemindersListViewModel.PersonData.contact.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *TTRRemindersListViewModel.LinkAttachment.metadata.getter(__n128 a1)
{
  v2 = *(v1 + *(type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0) + 24));
  v3 = v2;
  return v2;
}

void *TTRRemindersListViewModel.ImageAttachment.image.getter(__n128 a1)
{
  v2 = *(v1 + *(type metadata accessor for TTRRemindersListViewModel.ImageAttachment(0) + 24));
  v3 = v2;
  return v2;
}

void TTRRemindersListViewModel.ReminderID.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_21DBFB64C();
  v10 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  sub_21D0D3954(v1 + *(v10 + 20), v9, &unk_27CE5CD70, &unk_21DC09230);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    sub_21DAF98D8(v9, v6, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21DBFC7FC();
    TTRRemindersListViewModel.SectionID.hash(into:)(a1);
    sub_21D107038(v6, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }
}

uint64_t TTRRemindersListViewModel.ReminderID.hashValue.getter()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11[-1] - v6;
  sub_21DBFC7DC();
  sub_21DBFB64C();
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  sub_21D0D3954(v0 + *(v8 + 20), v7, &unk_27CE5CD70, &unk_21DC09230);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    sub_21DAF98D8(v7, v4, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21DBFC7FC();
    TTRRemindersListViewModel.SectionID.hash(into:)(v11);
    sub_21D107038(v4, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }

  return sub_21DBFC82C();
}

void sub_21DB02F58(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v12 - v10;
  sub_21DBFB64C();
  sub_21D0D3954(v2 + *(a2 + 20), v11, &unk_27CE5CD70, &unk_21DC09230);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    sub_21DAF98D8(v11, v8, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21DBFC7FC();
    TTRRemindersListViewModel.SectionID.hash(into:)(a1);
    sub_21D107038(v8, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }
}

uint64_t sub_21DB0311C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13[-1] - v9;
  sub_21DBFC7DC();
  sub_21DBFB64C();
  sub_21D0D3954(v2 + *(a2 + 20), v10, &unk_27CE5CD70, &unk_21DC09230);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    sub_21DAF98D8(v10, v7, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21DBFC7FC();
    TTRRemindersListViewModel.SectionID.hash(into:)(v13);
    sub_21D107038(v7, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }

  return sub_21DBFC82C();
}

id TTRRemindersListViewModel.SharingStatus.highlightToShow.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t TTRRemindersListViewModel.CompletedRemindersState.countText.getter()
{
  v1 = *v0;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = v1;
  v5 = sub_21DBFA13C();

  return v5;
}

RemindersUICore::TTRRemindersListViewModel::CompletedRemindersState __swiftcall TTRRemindersListViewModel.CompletedRemindersState.init(count:shown:canToggleVisibility:canClear:listColor:)(RemindersUICore::TTRRemindersListViewModel::CompletedRemindersState count, Swift::Bool shown, Swift::Bool canToggleVisibility, Swift::Bool canClear, UIColor listColor)
{
  *v5 = count.count;
  *(v5 + 8) = shown;
  *(v5 + 9) = canToggleVisibility;
  *(v5 + 10) = canClear;
  *(v5 + 16) = listColor;
  LOBYTE(count.listColor.super.isa) = canToggleVisibility;
  count.shown = shown;
  return count;
}

RemindersUICore::TTRRemindersListViewModel::CompletedRemindersState __swiftcall TTRRemindersListViewModel.CompletedRemindersState.init()()
{
  v1 = v0;
  v2 = [objc_opt_self() blackColor];
  *v1 = 0;
  *(v1 + 7) = 0;
  *(v1 + 16) = v2;
  result.listColor.super.isa = v4;
  result.count = v2;
  result.shown = v3;
  result.canToggleVisibility = BYTE1(v3);
  result.canClear = BYTE2(v3);
  return result;
}

uint64_t sub_21DB035DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t TTRRemindersListViewModel.HashtagLabelSelectorState.init(labels:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0) + 20);
  v6 = sub_21DBF6C1C();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t static TTRRemindersListViewModel.HashtagLabelSelectorState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (sub_21D1D57A4(*a1, *a2))
  {
    type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);

    JUMPOUT(0x223D3F370);
  }

  return 0;
}

uint64_t sub_21DB03754(uint64_t *a1, uint64_t *a2)
{
  if (sub_21D1D57A4(*a1, *a2))
  {

    JUMPOUT(0x223D3F370);
  }

  return 0;
}

uint64_t TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.description.getter()
{
  if (*v0)
  {
    return 7105633;
  }

  else
  {
    return 7958113;
  }
}

uint64_t TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.localizedOptionString.getter()
{
  if (*v0)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

RemindersUICore::TTRRemindersListViewModel::HashtagsState::FilterOperatorOptions_optional __swiftcall TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21DB039CC()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

double sub_21DB03A34(uint64_t a1)
{
  sub_21DBFA27C();

  return result;
}

uint64_t sub_21DB03A80(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

void sub_21DB03AE4(char *a2@<X8>)
{
  v3 = sub_21DBFC45C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21DB03B44(uint64_t *a1@<X8>)
{
  v2 = 7958113;
  if (*v1)
  {
    v2 = 7105633;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_21DB03B6C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7105633;
  }

  else
  {
    v2 = 7958113;
  }

  if (*a2)
  {
    v3 = 7105633;
  }

  else
  {
    v3 = 7958113;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_21DBFC64C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_21DB03BE4()
{
  if (*v0)
  {
    return 7105633;
  }

  else
  {
    return 7958113;
  }
}

double TTRRemindersListViewModel.HashtagsState.selectionDescription.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_21D157724(v4, v5, v6);
}

uint64_t TTRRemindersListViewModel.HashtagsState.selectedFilterOperator.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F780, &qword_21DC36500);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  sub_21D0D3954(v1, v5, &qword_27CE5A440, &unk_21DC16170);
  v9 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE5A440, &unk_21DC16170);
    v10 = sub_21DBF6C1C();
    result = (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
LABEL_11:
    v17 = 2;
    goto LABEL_12;
  }

  v12 = *(v9 + 20);
  v13 = sub_21DBF6C1C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8, &v5[v12], v13);
  sub_21D107038(v5, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
  (*(v14 + 56))(v8, 0, 1, v13);
  result = (*(v14 + 88))(v8, v13);
  if (result == *MEMORY[0x277D45378])
  {
    (*(v14 + 96))(v8, v13);

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50, &unk_21DC11830) + 64);
    v16 = sub_21DBF6C0C();
    result = (*(*(v16 - 8) + 88))(&v8[v15], v16);
    if (result == *MEMORY[0x277D45388])
    {
      v17 = 0;
LABEL_12:
      *a1 = v17;
      return result;
    }

    if (result == *MEMORY[0x277D45390])
    {
      v17 = 1;
      goto LABEL_12;
    }
  }

  else if (result == *MEMORY[0x277D45398] || result == *MEMORY[0x277D45380])
  {
    goto LABEL_11;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

__n128 TTRRemindersListViewModel.HashtagsState.init(selectorState:selectionDescription:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a2;
  v4 = a2[1].n128_u64[0];
  sub_21D0D523C(a1, a3, &qword_27CE5A440, &unk_21DC16170);
  v5 = (a3 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
  result = v7;
  *v5 = v7;
  v5[1].n128_u64[0] = v4;
  return result;
}

unint64_t TTRRemindersListViewModel.HashtagsState.description.getter()
{
  v1 = 0xD000000000000011;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0D3954(v0, v4, &qword_27CE5A440, &unk_21DC16170);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE5A440, &unk_21DC16170);
  }

  else
  {
    sub_21DAF98D8(v4, v8, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
    v17 = *v8;
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
    v9 = sub_21DBFA07C();
    v11 = v10;

    v17 = 0;
    v18 = 0xE000000000000000;
    sub_21DBFBEEC();

    v17 = 0x203A736C6562616CLL;
    v18 = 0xE90000000000005BLL;
    MEMORY[0x223D42AA0](v9, v11);

    MEMORY[0x223D42AA0](0x7463656C6573205DLL, 0xED0000203A6E6F69);
    sub_21DBF6C1C();
    sub_21DB15960(&qword_27CE5F788, MEMORY[0x277D453A0], MEMORY[0x277D453B8]);
    v12 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v12);

    MEMORY[0x223D42AA0](0xD000000000000011, 0x800000021DC77D20);
    TTRRemindersListViewModel.HashtagsState.selectedFilterOperator.getter(&v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66840, &qword_21DC3D2C0);
    v13 = sub_21DBFBA5C();
    MEMORY[0x223D42AA0](v13);

    v1 = v17;
    sub_21D107038(v8, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
  }

  return v1;
}

RemindersUICore::TTRRemindersListViewModel::ItemID::NamedID_optional __swiftcall TTRRemindersListViewModel.ItemID.NamedID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TTRRemindersListViewModel.ItemID.NamedID.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6574656C706D6F63;
  v3 = 0xD00000000000001FLL;
  v4 = 0xD00000000000001DLL;
  if (v1 == 4)
  {
    v4 = 0x6D657449706974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7367617468736168;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

double sub_21DB04534(uint64_t a1)
{
  sub_21DBFA27C();

  return result;
}

void sub_21DB0465C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006D65744964;
  v4 = 0x6574656C706D6F63;
  v5 = 0x800000021DC43E00;
  v6 = 0xD00000000000001FLL;
  v7 = 0xE700000000000000;
  v8 = 0xD00000000000001DLL;
  if (v2 == 4)
  {
    v8 = 0x6D657449706974;
  }

  else
  {
    v7 = 0x800000021DC43E30;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC0000006D657449;
  v10 = 0x7367617468736168;
  if (v2 != 1)
  {
    v10 = 0xD000000000000012;
    v9 = 0x800000021DC43DE0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

double TTRRemindersListViewModel.ItemID.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D1055C4(v1, v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v18 = *v15;
      MEMORY[0x223D44FA0](2);
      sub_21DBFB64C();
    }

    else
    {
      MEMORY[0x223D44FA0](3);
      sub_21DBFA27C();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_21DAF98D8(v15, v8, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    MEMORY[0x223D44FA0](1);
    sub_21DBFB64C();
    sub_21D0D3954(&v8[*(v6 + 20)], v5, &unk_27CE5CD70, &unk_21DC09230);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      sub_21DBFC7FC();
    }

    else
    {
      sub_21DAF98D8(v5, v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21DBFC7FC();
      TTRRemindersListViewModel.SectionID.hash(into:)(a1);
      sub_21D107038(v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
    }

    sub_21D107038(v8, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  }

  else
  {
    sub_21DAF98D8(v15, v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
    MEMORY[0x223D44FA0](0);
    TTRRemindersListViewModel.SectionID.hash(into:)(a1);
    sub_21D107038(v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }

  return result;
}

uint64_t sub_21DB04BB4(uint64_t (*a1)(void *))
{
  sub_21DBFC7DC();
  a1(v3);
  return sub_21DBFC82C();
}

uint64_t sub_21DB04C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_21DBFC7DC();
  a3(v5);
  return sub_21DBFC82C();
}

uint64_t sub_21DB04C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_21DBFC7DC();
  a4(v6);
  return sub_21DBFC82C();
}

Swift::String __swiftcall TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.text(withTextFormat:)(RemindersUICore::TTRRemindersListViewModel::EmptyListMessagingType::TextFormat withTextFormat)
{
  if (*v1 <= 1u)
  {
    if (!*v1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    v2 = qword_280D1BAA8;
    if ((*withTextFormat & 1) == 0)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (*v1 == 2)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v2 = qword_280D1BAA8;
  if (*withTextFormat)
  {
LABEL_12:
    if (v2 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_16:
    swift_once();
  }

LABEL_15:
  v3 = sub_21DBF516C();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.secondaryText(currentLayout:)(RemindersUICore::TTRRemindersListLayout currentLayout)
{
  if (*v1 >= 2u)
  {
    if (*currentLayout == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_7;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_7:
      v2 = sub_21DBF516C();
      goto LABEL_10;
    }

    swift_once();
    goto LABEL_7;
  }

  v2 = 0;
  v3 = 0;
LABEL_10:
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

BOOL static TTRRemindersListViewModel.EmptyListMessagingType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 0x3F) == 0;
      }
    }

    else if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

BOOL sub_21DB052F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 0x3F) == 0;
      }
    }

    else if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

uint64_t TTRRemindersListViewModel.ListInfo.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.ListInfo(0) + 20));
  sub_21DBF8E0C();
  return v1;
}

id TTRRemindersListViewModel.ListInfo.color.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.ListInfo(0) + 24));

  return v1;
}

uint64_t TTRRemindersListViewModel.ListInfo.listLayout.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t TTRRemindersListViewModel.ListInfo.listLayout.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

void TTRRemindersListViewModel.ListInfo.sharingInfo.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListViewModel.ListInfo(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  sub_21DB15B5C(v4, v5);
}

uint64_t TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t TTRRemindersListViewModel.ListInfo.collapsedStatesAutosaveName.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRRemindersListViewModel.ListInfo(0) + 88));
  sub_21DBF8E0C();
  return v1;
}

RemindersUICore::TTRRemindersListViewModel::ListInfo::IOS __swiftcall TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)(Swift::Bool showsActionMenuButton, Swift::Bool hasBottomInsetForPencilInput, Swift::Bool usesFlatDiffableSnapshot_workaroundRdar135908527)
{
  *v3 = showsActionMenuButton;
  v3[1] = hasBottomInsetForPencilInput;
  v3[2] = usesFlatDiffableSnapshot_workaroundRdar135908527;
  result.showsActionMenuButton = showsActionMenuButton;
  return result;
}

uint64_t TTRRemindersListViewModel.ListInfo.iOS.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  v4 = (v1 + *(result + 124));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = v4[2];
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v4;
  return result;
}

uint64_t TTRRemindersListViewModel.ListInfo.macOS.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  *a1 = *(v1 + *(result + 128));
  return result;
}

uint64_t TTRRemindersListViewModel.ListInfo.isSharedCalDAV.getter()
{
  v1 = (v0 + *(type metadata accessor for TTRRemindersListViewModel.ListInfo(0) + 36));
  v2 = v1[1] == 3;
  v3 = (*v1 >> 8) & 1;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, char a13, char *a14, char a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, char a26, char a27, char a28, char a29, char *a30, char *a31)
{
  v34 = *a7;
  v35 = a7[1];
  v50 = *a14;
  v53 = a30[1];
  v54 = *a30;
  v52 = a30[2];
  v55 = *a31;
  v36 = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  v37 = v36[10];
  v38 = type metadata accessor for TTRRemindersListTip(0);
  v39 = *(*(v38 - 8) + 56);
  v39(a9 + v37, 1, 1, v38);
  sub_21D0D523C(a1, a9, &qword_27CE650E0, &unk_21DC1BD10);
  v40 = (a9 + v36[5]);
  *v40 = a2;
  v40[1] = a3;
  *(a9 + v36[6]) = a4;
  v41 = a9 + v36[7];
  *v41 = a5;
  *(v41 + 8) = a6 & 1;
  *(a9 + v36[8]) = 0;
  v42 = (a9 + v36[9]);
  *v42 = v34;
  v42[1] = v35;
  sub_21D0CF7E0(a9 + v37, &qword_27CE64AA0, &unk_21DC36080);
  v39(a9 + v37, 1, 1, v38);
  *(a9 + v36[11]) = a8;
  *(a9 + v36[12]) = a10;
  *(a9 + v36[13]) = a11;
  *(a9 + v36[14]) = a12;
  *(a9 + v36[15]) = a13;
  *(a9 + v36[16]) = v50;
  *(a9 + v36[17]) = a15;
  *(a9 + v36[18]) = a16;
  *(a9 + v36[19]) = a17;
  *(a9 + v36[20]) = a18;
  *(a9 + v36[21]) = a19;
  v43 = (a9 + v36[22]);
  *v43 = a20;
  v43[1] = a21;
  *(a9 + v36[23]) = a22;
  sub_21D0D523C(a23, a9 + v36[24], &qword_27CE66848, &qword_21DC3D2C8);
  result = sub_21D0D523C(a24, a9 + v36[25], &qword_27CE66850, &unk_21DC3D2D0);
  *(a9 + v36[26]) = a25;
  *(a9 + v36[27]) = a26;
  *(a9 + v36[28]) = a27;
  *(a9 + v36[29]) = a28;
  *(a9 + v36[30]) = a29;
  v45 = (a9 + v36[31]);
  *v45 = v54;
  v45[1] = v53;
  v45[2] = v52;
  *(a9 + v36[32]) = v55;
  return result;
}

uint64_t TTRRemindersListViewModel.ListInfo.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  v3 = v2[10];
  v4 = type metadata accessor for TTRRemindersListTip(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v6 = type metadata accessor for TTRListType(0);
  (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  v7 = (a1 + v2[5]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(a1 + v2[6]) = [objc_opt_self() blackColor];
  v8 = a1 + v2[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a1 + v2[8]) = 0;
  *(a1 + v2[9]) = xmmword_21DC2B090;
  sub_21D0CF7E0(a1 + v3, &qword_27CE64AA0, &unk_21DC36080);
  v5(a1 + v3, 1, 1, v4);
  *(a1 + v2[11]) = 0;
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = 0;
  *(a1 + v2[14]) = 0;
  *(a1 + v2[15]) = 0;
  *(a1 + v2[16]) = 0;
  *(a1 + v2[17]) = 0;
  *(a1 + v2[18]) = 0;
  *(a1 + v2[19]) = 1;
  *(a1 + v2[20]) = 0;
  *(a1 + v2[21]) = 0;
  v9 = (a1 + v2[22]);
  *v9 = 0;
  v9[1] = 0;
  *(a1 + v2[23]) = 0;
  v10 = v2[24];
  v11 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = v2[25];
  v13 = type metadata accessor for TTRTemplatePublicLinkData(0);
  result = (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  *(a1 + v2[26]) = 0;
  *(a1 + v2[27]) = 0;
  *(a1 + v2[28]) = 0;
  *(a1 + v2[29]) = 0;
  *(a1 + v2[30]) = 0;
  v15 = a1 + v2[31];
  *v15 = 1;
  *(v15 + 2) = 0;
  *(a1 + v2[32]) = 0;
  return result;
}

id TTRRemindersListViewModel.ListSharingInfo.status.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_21DB15B70(v2);
}

uint64_t TTRRemindersListViewModel.DeleteCompletedMenuItem.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

RemindersUICore::TTRRemindersListViewModel::DeleteCompletedMenuItem __swiftcall TTRRemindersListViewModel.DeleteCompletedMenuItem.init(title:olderThanMonths:)(Swift::String title, Swift::Int_optional olderThanMonths)
{
  *v2 = title;
  *(v2 + 16) = olderThanMonths.value;
  *(v2 + 24) = olderThanMonths.is_nil;
  result.title = title;
  result.olderThanMonths = olderThanMonths;
  return result;
}

uint64_t TTRRemindersListViewModel.DeleteCompletedMenuItem.completeBeforeDateFromNow()@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_21DBF563C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF5A0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21DBF5A2C();
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  if (*(v26 + 24))
  {
    return (*(v2 + 56))(v25, 1, 1, v1, v13);
  }

  v23 = v1;
  v17 = *(v26 + 16);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  result = (*(v6 + 104))(v8, *MEMORY[0x277CC9998], v5);
  if (__OFSUB__(0, v17))
  {
    __break(1u);
  }

  else
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    sub_21DBF599C();
    v18 = v23;
    (*(v2 + 8))(v4, v23);
    (*(v6 + 8))(v8, v5);
    (*(v9 + 8))(v11, v24);
    if ((*(v2 + 48))(v15, 1, v18) == 1)
    {
      sub_21D0CF7E0(v15, &qword_27CE58D68, &unk_21DC0C060);
      v19 = objc_opt_self();
      v20 = sub_21DBFA12C();
      [v19 internalErrorWithDebugDescription_];

      return swift_willThrow();
    }

    else
    {
      v21 = v25;
      (*(v2 + 32))(v25, v15, v18);
      return (*(v2 + 56))(v21, 0, 1, v18, v22);
    }
  }

  return result;
}

id sub_21DB06570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3 == 255)
  {
    goto LABEL_12;
  }

  v4 = *a1;
  if (v3)
  {
    REMAlarmVehicleTriggerEvent.localizedDescription.getter([*a1 event]);
    v7 = v6;
    v8 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = v5;
      if (qword_280D1AC40 != -1)
      {
        swift_once();
      }

      v10 = qword_280D1AC48;
      v11 = objc_opt_self();
      v12 = v10;
      result = [v11 systemBlueColor];
      v14 = 0xE200000000000000;
      v15 = 16421;
      goto LABEL_17;
    }

LABEL_12:
    v10 = 0;
    result = 0;
    v15 = 0;
    v14 = 0;
    v9 = 0;
    v7 = 0;
    goto LABEL_17;
  }

  REMAlarmProximity.localizedLabelFormatString.getter([*a1 proximity]);
  v15 = v16;
  v14 = v17;
  v18 = [v4 structuredLocation];
  v19 = [v18 displayName];

  if (v19)
  {
    v9 = sub_21DBFA16C();
    v7 = v20;
  }

  else
  {
    v9 = 0;
    v7 = 0xE000000000000000;
  }

  if (qword_280D1AC58 != -1)
  {
    swift_once();
  }

  v10 = qword_280D1AC60;
  v21 = objc_opt_self();
  v22 = v10;
  result = [v21 systemRedColor];
LABEL_17:
  *a2 = v10;
  *(a2 + 8) = result;
  *(a2 + 16) = v15;
  *(a2 + 24) = v14;
  *(a2 + 32) = v9;
  *(a2 + 40) = v7;
  *(a2 + 48) = 0;
  return result;
}

void sub_21DB0676C(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Reminder.Override(0);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      sub_21D1055C4(v8, v6, type metadata accessor for TTRRemindersListViewModel.Reminder.Override);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload <= 6)
        {
          v16 = *v6;
          if (EnumCaseMultiPayload == 5)
          {
            v17 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 84);
          }

          else
          {
            v17 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 88);
          }

          goto LABEL_24;
        }

        if (EnumCaseMultiPayload == 7)
        {
          v10 = *v6;
          v11 = *(v6 + 1);
          v12 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 36);
        }

        else
        {
          if (EnumCaseMultiPayload != 8)
          {
            v22 = *v6;
            v23 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 92);
            *v23 = v22;
            *(v23 + 8) = 0;
            goto LABEL_5;
          }

          v10 = *v6;
          v11 = *(v6 + 1);
          v12 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 40);
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v24 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
            sub_21D0F02F4(v6, v1 + *(v24 + 44), &unk_27CE5F2B0, &unk_21DC14C00);
          }

          else
          {
            v15 = *v6;
            *(v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 32)) = v15;
          }

          goto LABEL_5;
        }

        if (EnumCaseMultiPayload == 2)
        {
          v18 = *v6;
          v19 = *(v6 + 1);
          v20 = v6[16];
          v21 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 124);

          *v21 = v18;
          *(v21 + 8) = v19;
          *(v21 + 16) = v20;
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload != 3)
        {
          v16 = *v6;
          v17 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 80);
LABEL_24:

          *(v1 + v17) = v16;
          goto LABEL_5;
        }

        v10 = *v6;
        v11 = *(v6 + 1);
        v12 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 120);
      }

      v13 = (v1 + v12);

      *v13 = v10;
      v13[1] = v11;
LABEL_5:
      v8 += v9;
      --v7;
    }

    while (v7);
  }
}

uint64_t TTRRemindersListViewModel.Reminder.init(_:overrides:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v91 = v5[7];
  v6 = (a3 + v5[9]);
  v7 = (a3 + v5[10]);
  v8 = v5[11];
  v95 = v8;
  v9 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v93 = (a3 + v5[12]);
  v10 = a3 + v5[13];
  *(v10 + 48) = 0;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  v97 = v5[15];
  v98 = v5[16];
  v101 = v5[24];
  v99 = v5[17];
  v100 = a3 + v5[23];
  *(a3 + v101) = 2;
  v102 = (a3 + v5[30]);
  v104 = a3 + v5[31];
  *v104 = 0;
  *(v104 + 8) = 0;
  *(v104 + 16) = 0;
  v106 = (a3 + v5[32]);
  *v106 = 0;
  v106[1] = 0;
  v106[2] = 0;
  v11 = a3 + v5[34];
  sub_21D639910(v110);
  v12 = v110[13];
  *(v11 + 192) = v110[12];
  *(v11 + 208) = v12;
  *(v11 + 224) = v111;
  v13 = v110[9];
  *(v11 + 128) = v110[8];
  *(v11 + 144) = v13;
  v14 = v110[11];
  *(v11 + 160) = v110[10];
  *(v11 + 176) = v14;
  v15 = v110[5];
  *(v11 + 64) = v110[4];
  *(v11 + 80) = v15;
  v16 = v110[7];
  *(v11 + 96) = v110[6];
  *(v11 + 112) = v16;
  v17 = v110[1];
  *v11 = v110[0];
  *(v11 + 16) = v17;
  v18 = v110[3];
  *(v11 + 32) = v110[2];
  *(v11 + 48) = v18;
  v105 = (a3 + v5[37]);
  *v105 = xmmword_21DC19C40;
  v105[2] = 0;
  v105[3] = 0;
  v108 = (a3 + v5[38]);
  *v108 = 0;
  v108[1] = 0;
  v108[2] = 0;
  v19 = (a3 + v5[39]);
  *v19 = 0;
  v19[1] = 0;
  *(a3 + v5[40]) = 2;
  *(a3 + v5[41]) = 1;
  *(a3 + v5[42]) = 0;
  sub_21D1055C4(a1, a3, type metadata accessor for TTRRemindersListViewModel.Item);
  v20 = v5[5];
  v21 = *(a1 + v20);
  *(a3 + v20) = v21;
  v22 = v5[6];
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 1);
  v25 = *(a1 + v22 + 2);
  v26 = *(a1 + v22 + 8);
  v27 = *(a1 + v22 + 16);
  v28 = *(a1 + v22 + 24);
  v29 = *(a1 + v22 + 25);
  v30 = a3 + v22;
  *v30 = v23;
  *(v30 + 1) = v24;
  *(v30 + 2) = v25;
  *(v30 + 8) = v26;
  *(v30 + 16) = v27;
  *(v30 + 24) = v28;
  *(v30 + 25) = v29;
  v31 = *(a1 + v5[7]);
  *(a3 + v91) = v31;
  *(a3 + v5[8]) = *(a1 + v5[8]);
  v32 = (a1 + v5[9]);
  v33 = v32[1];
  *v6 = *v32;
  v6[1] = v33;
  v34 = (a1 + v5[10]);
  v35 = v34[1];
  *v7 = *v34;
  v7[1] = v35;
  v36 = v5[11];
  sub_21DBF8E0C();
  v37 = v21;
  sub_21DBF8E0C();
  v38 = v31;
  sub_21DBF8E0C();
  sub_21DB130E8(a1 + v36, a3 + v95);
  v39 = (a1 + v5[12]);
  v40 = v39[1];
  *v93 = *v39;
  v93[1] = v40;
  v41 = a1 + v5[13];
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = *(v41 + 24);
  v88 = *(v41 + 16);
  v89 = *v41;
  v46 = *(v41 + 32);
  v45 = *(v41 + 40);
  v94 = *(v10 + 8);
  v96 = *v10;
  v90 = *(v10 + 24);
  v92 = *(v10 + 16);
  LOBYTE(v31) = *(v41 + 48);
  sub_21DBF8E0C();
  sub_21DB159EC(v42, v43, v88, v44, v46, v45);
  sub_21D4B94BC(v96, v94, v92, v90);
  *v10 = v89;
  *(v10 + 8) = v43;
  *(v10 + 16) = v88;
  *(v10 + 24) = v44;
  *(v10 + 32) = v46;
  *(v10 + 40) = v45;
  *(v10 + 48) = v31;
  *(a3 + v5[14]) = *(a1 + v5[14]);
  v47 = *(a1 + v5[15]);
  *(a3 + v97) = v47;
  *(a3 + v98) = *(a1 + v5[16]);
  *(a3 + v99) = *(a1 + v5[17]);
  *(a3 + v5[18]) = *(a1 + v5[18]);
  *(a3 + v5[19]) = *(a1 + v5[19]);
  v48 = v5[20];
  v49 = *(a1 + v48);
  *(a3 + v48) = v49;
  v50 = v5[21];
  v51 = *(a1 + v50);
  *(a3 + v50) = v51;
  v52 = v5[22];
  v53 = *(a1 + v52);
  *(a3 + v52) = v53;
  v54 = (a1 + v5[23]);
  v55 = *v54;
  LOBYTE(v54) = *(v54 + 8);
  *v100 = v55;
  *(v100 + 8) = v54;
  *(a3 + v101) = *(a1 + v5[24]);
  *(a3 + v5[25]) = *(a1 + v5[25]);
  *(a3 + v5[26]) = *(a1 + v5[26]);
  *(a3 + v5[27]) = *(a1 + v5[27]);
  *(a3 + v5[28]) = *(a1 + v5[28]);
  *(a3 + v5[29]) = *(a1 + v5[29]);
  v56 = (a1 + v5[30]);
  v57 = v56[1];
  *v102 = *v56;
  v102[1] = v57;
  v58 = (a1 + v5[31]);
  v59 = v58[1];
  v103 = *v58;
  LOBYTE(v101) = *(v58 + 16);
  v60 = v47;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v61 = v49;
  v62 = v51;
  v63 = v53;
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  *v104 = v103;
  *(v104 + 8) = v59;
  *(v104 + 16) = v101;
  v64 = (a1 + v5[32]);
  v65 = *v64;
  v66 = v64[1];
  v67 = v64[2];
  v69 = *v106;
  v68 = v106[1];
  v70 = v106[2];
  sub_21D157724(*v64, v66, v67);
  sub_21D1576C8(v69, v68, v70);
  *v106 = v65;
  v106[1] = v66;
  v106[2] = v67;
  *(a3 + v5[33]) = *(a1 + v5[33]);
  v71 = v5[35];
  v72 = *(a1 + v71);
  v73 = *(a1 + v71 + 8);
  v74 = *(a1 + v71 + 16);
  v75 = a3 + v71;
  *v75 = v72;
  *(v75 + 8) = v73;
  *(v75 + 16) = v74;
  *(a3 + v5[36]) = *(a1 + v5[36]);
  v76 = (a1 + v5[37]);
  v77 = *v76;
  v78 = v76[1];
  v80 = v76[2];
  v79 = v76[3];
  v81 = v105[1];
  v107 = *v105;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DB15A90(v77, v78, v80, v79);
  sub_21DB159C8(v107, v81);
  *v105 = v77;
  v105[1] = v78;
  v105[2] = v80;
  v105[3] = v79;
  v82 = a1 + v5[38];
  v83 = *v82;
  v84 = *(v82 + 8);
  v85 = *(v82 + 16);
  v86 = *v108;
  sub_21DB15A4C(*v82, v84, v85);
  sub_21D6388A4(v86);
  *v108 = v83;
  v108[1] = v84;
  v108[2] = v85;
  *(a3 + v5[43]) = *(a1 + v5[43]);
  *(a3 + v5[45]) = *(a1 + v5[45]);
  sub_21DB0676C(a2);

  return sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.Reminder);
}

id sub_21DB070A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v7 setDoesRelativeDateFormatting_];
  [v7 setDateStyle_];
  result = [v7 setTimeStyle_];
  *a4 = v7;
  return result;
}

id static TTRRemindersListViewModel.Reminder.reminderDateFormatter(dateHidden:isAllDay:)(char a1, char a2)
{
  if (a1)
  {
    if (a2)
    {
      if (qword_27CE57140 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CE66818;
    }

    else
    {
      if (qword_280D14230 != -1)
      {
        swift_once();
      }

      v2 = &qword_280D14238;
    }
  }

  else if (a2)
  {
    if (qword_27CE57138 != -1)
    {
      swift_once();
    }

    v2 = &qword_27CE66810;
  }

  else
  {
    if (qword_280D194D8 != -1)
    {
      swift_once();
    }

    v2 = &qword_280D194E0;
  }

  v3 = *v2;

  return v3;
}

id static TTRRemindersListViewModel.Reminder.accessibilitySpeakableReminderDateFormatter(dateHidden:isAllDay:)(char a1, char a2)
{
  if (a1)
  {
    if (a2)
    {
      if (qword_27CE57140 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CE66818;
    }

    else
    {
      if (qword_280D14230 != -1)
      {
        swift_once();
      }

      v2 = &qword_280D14238;
    }
  }

  else if (a2)
  {
    if (qword_27CE57158 != -1)
    {
      swift_once();
    }

    v2 = &qword_27CE66828;
  }

  else
  {
    if (qword_280D14220 != -1)
    {
      swift_once();
    }

    v2 = &qword_280D14228;
  }

  v3 = *v2;

  return v3;
}

double static TTRRemindersListViewModel.Reminder.displayDateWithTimeZoneString(_:currentTimeZone:dateHidden:dateFormatter:accessibilitySpeakableDateFormatter:)@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  sub_21DB13AA8(a1, a2, a3, a4, a5, v10);
  v7 = v11;
  result = *v10;
  v9 = v10[1];
  *a6 = v10[0];
  *(a6 + 16) = v9;
  *(a6 + 32) = v7;
  return result;
}

uint64_t static TTRRemindersListViewModel.Reminder.completionDateString(from:completionHidden:forAccessibility:)(void *a1, char a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_21DBF563C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return 0;
  }

  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if (((*(v14 + 64))(v13, v14) & 1) == 0)
  {
    return 0;
  }

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 72))(v15, v16);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE58D68, &unk_21DC0C060);
    return 0;
  }

  (*(v10 + 32))(v12, v8, v9);
  if (a3)
  {
    if (qword_27CE57160 != -1)
    {
      swift_once();
    }

    v18 = &qword_27CE66830;
  }

  else
  {
    if (qword_27CE57148 != -1)
    {
      swift_once();
    }

    v18 = &qword_27CE66820;
  }

  v19 = *v18;
  v20 = sub_21DBF55BC();
  v21 = [v19 stringFromDate_];

  v22 = sub_21DBFA16C();
  (*(v10 + 8))(v12, v9);
  return v22;
}

id static TTRRemindersListViewModel.makeListSharingInfo(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 isShared])
  {
    if ([a1 isShared])
    {
      v4 = a1;
      v5 = a1;
    }

    else
    {
      v5 = 0;
    }
  }

  else if ([a1 sharingStatus] == 3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if ([a1 isShared])
  {
    v6 = [a1 account];
    v7 = [v6 accountTypeHost];

    v8 = [v7 isCalDav];
  }

  else
  {
    v8 = 0;
  }

  result = [a1 canBeShared];
  *a2 = result;
  *(a2 + 1) = v8;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21DB07790()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(&v8 - v4);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  v6 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v5, v2);
  sub_21D107038(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D107038(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return v6 & 1;
}

uint64_t TTRRemindersListViewModel.Item.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v4);
  TTRRemindersListViewModel.ItemID.hash(into:)(a1);
  return sub_21D107038(v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
}

uint64_t TTRRemindersListViewModel.Item.hashValue.getter()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFC7DC();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  TTRRemindersListViewModel.ItemID.hash(into:)(v5);
  sub_21D107038(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return sub_21DBFC82C();
}

uint64_t sub_21DB079CC()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFC7DC();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  TTRRemindersListViewModel.ItemID.hash(into:)(v5);
  sub_21D107038(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return sub_21DBFC82C();
}

uint64_t sub_21DB07A78(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v4);
  TTRRemindersListViewModel.ItemID.hash(into:)(a1);
  return sub_21D107038(v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
}

uint64_t sub_21DB07B18(uint64_t a1)
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFC7DC();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v3);
  TTRRemindersListViewModel.ItemID.hash(into:)(v6);
  sub_21D107038(v3, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return sub_21DBFC82C();
}

unint64_t TTRRemindersListViewModel.Item.debugDescription.getter()
{
  v0 = type metadata accessor for TTRRemindersListTip(0);
  MEMORY[0x28223BE20](v0 - 8);
  v80 = &v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TTRTemplatePublicLinkData(0);
  MEMORY[0x28223BE20](v78);
  v81 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v76 - v8;
  MEMORY[0x28223BE20](v9);
  v76 = &v76 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v76 - v18;
  v20 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v25 = (&v76 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = &v76 - v27;
  v29 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D1055C4(v85, v34, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v80 = v19;
    v81 = v16;
    v40 = v28;
    v85 = v13;
    v42 = v83;
    v41 = v84;
    v43 = v82;
    if (EnumCaseMultiPayload > 1)
    {
      v44 = v20;
      if (EnumCaseMultiPayload == 2)
      {
        v52 = v40;
        sub_21DAF98D8(v34, v40, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v88 = 0x7265646E696D6572;
        v89 = 0xE900000000000028;
        v53 = [*v52 description];
        v54 = sub_21DBFA16C();
        v56 = v55;

        v86 = v54;
        v87 = v56;
        v57 = v76;
        sub_21D0D3954(v52 + *(v44 + 20), v76, &unk_27CE5CD70, &unk_21DC09230);
        if ((*(v43 + 48))(v57, 1, v42) == 1)
        {
          sub_21D0CF7E0(v57, &unk_27CE5CD70, &unk_21DC09230);
        }

        else
        {
          v68 = v57;
          v69 = v80;
          sub_21DAF98D8(v68, v80, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v70 = TTRRemindersListViewModel.SectionID.description.getter();
          MEMORY[0x223D42AA0](v70);

          sub_21D107038(v69, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v54 = v86;
          v56 = v87;
        }

        MEMORY[0x223D42AA0](v54, v56);

        MEMORY[0x223D42AA0](41, 0xE100000000000000);
        v38 = v88;
        v66 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
        v67 = v52;
      }

      else
      {
        v45 = v82;
        if (EnumCaseMultiPayload == 3)
        {
          v46 = v34;
          v47 = v25;
          sub_21DAF98D8(v46, v25, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          v88 = 0;
          v89 = 0xE000000000000000;
          sub_21DBFBEEC();

          v88 = 0xD000000000000014;
          v89 = 0x800000021DC715E0;
          v48 = [*v25 description];
          v49 = sub_21DBFA16C();
          v51 = v50;

          v86 = v49;
          v87 = v51;
          sub_21D0D3954(v25 + *(v44 + 20), v41, &unk_27CE5CD70, &unk_21DC09230);
          if ((*(v45 + 48))(v41, 1, v42) == 1)
          {
            sub_21D0CF7E0(v41, &unk_27CE5CD70, &unk_21DC09230);
          }

          else
          {
            v71 = v81;
            sub_21DAF98D8(v41, v81, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v72 = TTRRemindersListViewModel.SectionID.description.getter();
            MEMORY[0x223D42AA0](v72);

            sub_21D107038(v71, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v49 = v86;
            v51 = v87;
          }

          MEMORY[0x223D42AA0](v49, v51);
        }

        else
        {
          v59 = v34;
          v47 = v22;
          sub_21DAF98D8(v59, v22, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          v88 = 0;
          v89 = 0xE000000000000000;
          sub_21DBFBEEC();

          v88 = 0xD000000000000014;
          v89 = 0x800000021DC715C0;
          v60 = [*v22 description];
          v61 = sub_21DBFA16C();
          v63 = v62;

          v86 = v61;
          v87 = v63;
          v64 = v79;
          sub_21D0D3954(v47 + *(v44 + 20), v79, &unk_27CE5CD70, &unk_21DC09230);
          if ((*(v45 + 48))(v64, 1, v42) == 1)
          {
            sub_21D0CF7E0(v64, &unk_27CE5CD70, &unk_21DC09230);
          }

          else
          {
            v73 = v85;
            sub_21DAF98D8(v64, v85, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v74 = TTRRemindersListViewModel.SectionID.description.getter();
            MEMORY[0x223D42AA0](v74);

            sub_21D107038(v73, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v61 = v86;
            v63 = v87;
          }

          MEMORY[0x223D42AA0](v61, v63);
        }

        MEMORY[0x223D42AA0](41, 0xE100000000000000);
        v38 = v88;
        v66 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
        v67 = v47;
      }

      goto LABEL_34;
    }

    v36 = v31;
    if (EnumCaseMultiPayload)
    {
      sub_21DAF98D8(v34, v31, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v88 = 0x286E6F6974636573;
      v89 = 0xE800000000000000;
    }

    else
    {
      sub_21DAF98D8(v34, v31, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_21DBFBEEC();

      v88 = 0xD000000000000012;
      v89 = 0x800000021DC77DC0;
    }

    v65 = TTRRemindersListViewModel.SectionID.description.getter();
    MEMORY[0x223D42AA0](v65);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v38 = v88;
    v39 = type metadata accessor for TTRRemindersListViewModel.SectionHeader;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        return 0xD00000000000001BLL;
      }

      else
      {
        return 0xD000000000000019;
      }
    }

    v36 = v80;
    sub_21DAF98D8(v34, v80, type metadata accessor for TTRRemindersListTip);
    v88 = 678455668;
    v89 = 0xE400000000000000;
    v58 = TTRRemindersListTip.description.getter();
    MEMORY[0x223D42AA0](v58);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v38 = v88;
    v39 = type metadata accessor for TTRRemindersListTip;
LABEL_25:
    v66 = v39;
    v67 = v36;
LABEL_34:
    sub_21D107038(v67, v66);
    return v38;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v36 = v77;
      sub_21DAF98D8(v34, v77, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
      v88 = 0x7367617468736168;
      v89 = 0xE900000000000028;
      v37 = TTRRemindersListViewModel.HashtagsState.description.getter();
      MEMORY[0x223D42AA0](v37);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      v38 = v88;
      v39 = type metadata accessor for TTRRemindersListViewModel.HashtagsState;
    }

    else
    {
      v36 = v81;
      sub_21DAF98D8(v34, v81, type metadata accessor for TTRTemplatePublicLinkData);
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_21DBFBEEC();
      MEMORY[0x223D42AA0](0x6574616C706D6574, 0xEF28737574617453);
      sub_21DBFC14C();
      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      v38 = v88;
      v39 = type metadata accessor for TTRTemplatePublicLinkData;
    }

    goto LABEL_25;
  }

  sub_21D107038(v34, type metadata accessor for TTRRemindersListViewModel.Item);
  return 0x6574656C706D6F63;
}

id TTRRemindersListViewModel.Item.objectIDForDebugMenuCopying.getter()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload > 1)
  {
    result = 0;
    if (v10 == 2)
    {
      return *v8;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_21DAF98D8(v8, v5, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v13 = *v5;
      sub_21D107038(v5, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      return v13;
    }

    sub_21DAF98D8(v8, v2, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v11 = swift_getEnumCaseMultiPayload();
    result = 0;
    if (v11 > 4)
    {
      if (v11 > 7)
      {
        return *v2;
      }

      if (v11 == 5 || v11 == 6)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v11 > 1)
      {
LABEL_12:
        sub_21D107038(v2, type metadata accessor for TTRRemindersListViewModel.SectionID);
        return 0;
      }

      if (v11)
      {
        return *v2;
      }
    }
  }

  return result;
}

uint64_t TTRRemindersListViewModel.ReminderID.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v16 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*v0 description];
  v10 = sub_21DBFA16C();
  v12 = v11;

  v16[0] = v10;
  v16[1] = v12;
  v13 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  sub_21D0D3954(v0 + *(v13 + 20), v3, &unk_27CE5CD70, &unk_21DC09230);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21D0CF7E0(v3, &unk_27CE5CD70, &unk_21DC09230);
  }

  else
  {
    sub_21DAF98D8(v3, v8, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v14 = TTRRemindersListViewModel.SectionID.description.getter();
    MEMORY[0x223D42AA0](v14);

    sub_21D107038(v8, type metadata accessor for TTRRemindersListViewModel.SectionID);
    return v16[0];
  }

  return v10;
}

unint64_t sub_21DB08BB4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x706D6F4365746164;
    v6 = 0x6C6E6F6974636573;
    if (a1 != 8)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x68746E6F6DLL;
    if (a1 != 5)
    {
      v7 = 1918985593;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x64656D616ELL;
    v2 = 0xD000000000000010;
    v3 = 1702125924;
    if (a1 != 3)
    {
      v3 = 7954788;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x44497463656A626FLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21DB08D00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DB34118(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DB08D34(uint64_t a1)
{
  v2 = sub_21DB1616C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DB08D70(uint64_t a1)
{
  v2 = sub_21DB1616C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTRRemindersListViewModel.SectionID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v3 - 8);
  v92 = v80 - v4;
  v91 = sub_21DBF509C();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v86 = v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v8 - 8);
  v88 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = v80 - v11;
  MEMORY[0x28223BE20](v12);
  v94 = v80 - v13;
  MEMORY[0x28223BE20](v14);
  v98 = v80 - v15;
  v16 = sub_21DBF563C();
  v95 = *(v16 - 8);
  v96 = v16;
  MEMORY[0x28223BE20](v16);
  v85 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v90 = v80 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v80 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v80 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66858, &qword_21DC3D2E0);
  v99 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = v80 - v27;
  v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v29);
  v31 = v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[3];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_21DB1616C();
  v33 = v100;
  sub_21DBFC87C();
  if (!v33)
  {
    v83 = v22;
    v84 = v25;
    v34 = v98;
    v100 = v31;
    LOBYTE(v102) = 0;
    v35 = sub_21DBFC46C();
    v36 = v28;
    v38 = v37;
    if (v37)
    {
      v39 = v35;
      sub_21DBF8E0C();
      v40._countAndFlagsBits = v39;
      v40._object = v38;
      TTRRemindersListViewModel.SectionID.NamedID.init(rawValue:)(v40);
      v41 = v102;
      if (v102 == 16)
      {
        v42 = objc_opt_self();
        v102 = 0;
        v103 = 0xE000000000000000;
        sub_21DBFBEEC();

        v102 = 0xD00000000000001ALL;
        v103 = 0x800000021DC77DE0;
        MEMORY[0x223D42AA0](v39, v38);

        MEMORY[0x223D42AA0](39, 0xE100000000000000);
        v43 = sub_21DBFA12C();

        [v42 internalErrorWithDebugDescription_];

        swift_willThrow();
        (*(v99 + 8))(v36, v26);
        return __swift_destroy_boxed_opaque_existential_0(v101);
      }

      (*(v99 + 8))(v36, v26);

      v46 = v100;
      *v100 = v41;
      goto LABEL_7;
    }

    v44 = sub_21DBF634C();
    v104 = 1;
    v45 = sub_21DB15960(&qword_280D0C810, MEMORY[0x277D44FB0], MEMORY[0x277D44FC0]);
    sub_21DBFC49C();
    v82 = v45;
    v48 = v102;
    if (v102)
    {
      (*(v99 + 8))(v36, v26);
      v46 = v100;
      *v100 = v48;
    }

    else
    {
      v102 = 3;
      sub_21DB15960(&qword_280D17198, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
      v50 = v96;
      sub_21DBFC49C();
      v80[1] = v44;
      v51 = v95;
      v52 = (v95 + 48);
      v81 = *(v95 + 48);
      if (v81(v34, 1, v50) == 1)
      {
        v84 = v52;
        sub_21D0CF7E0(v34, &qword_27CE58D68, &unk_21DC0C060);
        LOBYTE(v102) = 4;
        v53 = v94;
        sub_21DBFC49C();
        v98 = 0;
        v56 = v81(v53, 1, v50);
        v57 = v53;
        v58 = v99;
        if (v56 != 1)
        {
          (*(v99 + 8))(v36, v26);
          v61 = *(v95 + 32);
          v62 = v83;
          v61(v83, v57, v50);
          v46 = v100;
          v61(v100, v62, v50);
          v47 = v97;
          goto LABEL_11;
        }

        sub_21D0CF7E0(v57, &qword_27CE58D68, &unk_21DC0C060);
        LOBYTE(v102) = 5;
        v59 = v93;
        v60 = v98;
        sub_21DBFC49C();
        if (v60)
        {
          (*(v58 + 8))(v36, v26);
          return __swift_destroy_boxed_opaque_existential_0(v101);
        }

        if (v81(v59, 1, v50) != 1)
        {
          (*(v58 + 8))(v36, v26);
          v63 = v96;
          v64 = *(v95 + 32);
          v65 = v90;
          v64(v90, v59, v96);
          v46 = v100;
          v64(v100, v65, v63);
          v47 = v97;
          goto LABEL_11;
        }

        sub_21D0CF7E0(v59, &qword_27CE58D68, &unk_21DC0C060);
        LOBYTE(v102) = 7;
        sub_21DB15960(&qword_280D171E8, MEMORY[0x277CC8990], MEMORY[0x277CC89B0]);
        v98 = v26;
        sub_21DBFC49C();
        if ((*(v89 + 48))(v92, 1, v91) == 1)
        {
          sub_21D0CF7E0(v92, &qword_27CE58D60, &unk_21DC0A690);
          LOBYTE(v102) = 6;
          sub_21DBFC49C();
          if (v81(v88, 1, v96) == 1)
          {
            sub_21D0CF7E0(v88, &qword_27CE58D68, &unk_21DC0C060);
            v104 = 9;
            sub_21DBFC49C();
            v78 = v102;
            if (v102)
            {
              (*(v99 + 8))(v36, v98);
              v46 = v100;
              *v100 = v78;
            }

            else
            {
              v104 = 8;
              v79 = v98;
              sub_21DBFC4EC();
              (*(v99 + 8))(v36, v79);
              v46 = v100;
              *v100 = v102;
            }

            goto LABEL_10;
          }

          (*(v99 + 8))(v36, v98);
          v75 = v96;
          v76 = *(v95 + 32);
          v77 = v85;
          v76(v85, v88, v96);
          v46 = v100;
          v76(v100, v77, v75);
        }

        else
        {
          v66 = v89;
          v67 = v86;
          v68 = v91;
          (*(v89 + 32))(v86, v92, v91);
          v69 = v87;
          (*(v66 + 16))(v87, v67, v68);
          v70 = sub_21DBF4F2C();
          LOBYTE(v102) = v71 & 1;
          v96 = sub_21DBF4F7C();
          LODWORD(v95) = v72;
          v73 = *(v66 + 8);
          v73(v69, v68);
          v73(v67, v68);
          (*(v99 + 8))(v36, v98);
          v74 = v102;
          v46 = v100;
          *v100 = v70;
          *(v46 + 8) = v74;
          *(v46 + 16) = v96;
          *(v46 + 24) = v95 & 1;
        }

LABEL_7:
        v47 = v97;
LABEL_11:
        swift_storeEnumTagMultiPayload();
        sub_21DAF98D8(v46, v47, type metadata accessor for TTRRemindersListViewModel.SectionID);
        return __swift_destroy_boxed_opaque_existential_0(v101);
      }

      (*(v99 + 8))(v36, v26);
      v54 = *(v51 + 32);
      v55 = v84;
      v54(v84, v34, v50);
      v46 = v100;
      v54(v100, v55, v50);
    }

LABEL_10:
    v47 = v97;
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_0(v101);
}

void TTRRemindersListViewModel.SectionID.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v56 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0, &unk_21DC18C20);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v56 - v5;
  v6 = sub_21DBF509C();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  v64 = v8;
  v65 = v9;
  MEMORY[0x28223BE20](v8);
  v58 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v56 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - v20;
  v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66860, &qword_21DC3D2E8);
  v26 = *(v25 - 8);
  v68 = v25;
  v69 = v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v56 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DB1616C();
  v67 = v28;
  sub_21DBFC88C();
  sub_21D1055C4(v66, v24, type metadata accessor for TTRRemindersListViewModel.SectionID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v30 = v65;
        if (EnumCaseMultiPayload == 3)
        {
          v31 = v64;
          (*(v65 + 32))(v18, v24, v64);
          LOBYTE(v71) = 3;
          sub_21DB15960(&qword_27CE65138, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
          v33 = v67;
          v32 = v68;
          sub_21DBFC56C();
          v34 = *(v30 + 8);
          v35 = v18;
LABEL_22:
          v34(v35, v31);
          goto LABEL_23;
        }

        v31 = v64;
        (*(v65 + 32))(v15, v24, v64);
        v53 = 4;
LABEL_21:
        LOBYTE(v71) = v53;
        sub_21DB15960(&qword_27CE65138, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
        v33 = v67;
        v32 = v68;
        sub_21DBFC56C();
        v34 = *(v30 + 8);
        v35 = v15;
        goto LABEL_22;
      }

      v48 = v64;
      v47 = v65;
      (*(v65 + 32))(v21, v24, v64);
      LOBYTE(v71) = 2;
      sub_21DB15960(&qword_27CE65138, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
      v33 = v67;
      v32 = v68;
      sub_21DBFC56C();
      (*(v47 + 8))(v21, v48);
LABEL_23:
      v45 = *(v69 + 8);
      v46 = v33;
      goto LABEL_24;
    }

    if (!EnumCaseMultiPayload)
    {
      LOBYTE(v71) = *v24;
      TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
      v70 = 0;
      v40 = v67;
      v39 = v68;
      sub_21DBFC51C();
      (*(v69 + 8))(v40, v39);

      return;
    }

    v36 = *v24;
    v37 = sub_21DBFADFC();
    v71 = v37;
    v38 = 1;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v49 = sub_21DBF5A2C();
      (*(*(v49 - 8) + 56))(v59, 1, 1, v49);
      v50 = sub_21DBF5C4C();
      (*(*(v50 - 8) + 56))(v60, 1, 1, v50);
      v51 = v61;
      sub_21DBF504C();
      LOBYTE(v71) = 7;
      sub_21DB15960(&qword_27CE66868, MEMORY[0x277CC8990], MEMORY[0x277CC8998]);
      v33 = v67;
      v32 = v68;
      v52 = v63;
      sub_21DBFC56C();
      (*(v62 + 8))(v51, v52);
      goto LABEL_23;
    }

    v36 = *v24;
    if (EnumCaseMultiPayload == 8)
    {
      v37 = sub_21DBFADFC();
      v71 = v37;
      v38 = 8;
    }

    else
    {
      v37 = sub_21DBFADFC();
      v71 = v37;
      v38 = 9;
    }

LABEL_19:
    v70 = v38;
    sub_21DBF634C();
    sub_21DB15960(&qword_280D0C818, MEMORY[0x277D44FB0], MEMORY[0x277D44FB8]);
    v55 = v67;
    v54 = v68;
    sub_21DBFC56C();

    (*(v69 + 8))(v55, v54);
    return;
  }

  if (EnumCaseMultiPayload != 5)
  {
    v31 = v64;
    v30 = v65;
    v15 = v58;
    (*(v65 + 32))(v58, v24, v64);
    v53 = 6;
    goto LABEL_21;
  }

  v42 = v64;
  v41 = v65;
  v43 = v57;
  (*(v65 + 32))(v57, v24, v64);
  LOBYTE(v71) = 5;
  sub_21DB15960(&qword_27CE65138, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v44 = v67;
  v32 = v68;
  sub_21DBFC56C();
  (*(v41 + 8))(v43, v42);
  v45 = *(v69 + 8);
  v46 = v44;
LABEL_24:
  v45(v46, v32);
}

unint64_t TTRRemindersListViewModel.SectionID.description.getter()
{
  v1 = v0;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D1055C4(v1, v8, type metadata accessor for TTRRemindersListViewModel.SectionID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        (*(v3 + 32))(v5, v8, v2);
        v12 = 0x2068746E6F6DLL;
        v13 = 0xE600000000000000;
      }

      else
      {
        (*(v3 + 32))(v5, v8, v2);
        v12 = 0x2072616579;
        v13 = 0xE500000000000000;
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v14 = *v8;
      v15 = v8[8];
      v16 = *(v8 + 2);
      v17 = v8[24];
      v28 = 0;
      v29 = 0xE000000000000000;
      MEMORY[0x223D42AA0](0x6559646E41617265, 0xEB00000000207261);
      v26[0] = v14;
      LOBYTE(v26[1]) = v15;
      v26[2] = v16;
      v27 = v17;
      sub_21DBFC14C();
      return v28;
    }

    else
    {
      v11 = *v8;
      if (EnumCaseMultiPayload == 8)
      {
        strcpy(v26, "sectionless ");
        BYTE5(v26[1]) = 0;
        HIWORD(v26[1]) = -5120;
      }

      else
      {
        v26[0] = 0;
        v26[1] = 0xE000000000000000;
        sub_21DBFBEEC();

        v26[0] = 0xD00000000000001ALL;
        v26[1] = 0x800000021DC77E00;
      }

      v18 = [v11 description];
      v19 = sub_21DBFA16C();
      v21 = v20;

      MEMORY[0x223D42AA0](v19, v21);

      return v26[0];
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
      {
        (*(v3 + 32))(v5, v8, v2);
        v10 = sub_21DBF555C();
LABEL_21:
        (*(v3 + 8))(v5, v2);
        return v10;
      }

      (*(v3 + 32))(v5, v8, v2);
      v12 = 544825700;
      v13 = 0xE400000000000000;
LABEL_20:
      v26[0] = v12;
      v26[1] = v13;
      v24 = sub_21DBF555C();
      MEMORY[0x223D42AA0](v24);

      v10 = v26[0];
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload)
    {
      v22 = *v8;
      v23 = [*v8 description];
      v10 = sub_21DBFA16C();
    }

    else
    {
      LOBYTE(v26[0]) = *v8;
      return TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
    }
  }

  return v10;
}

RemindersUICore::TTRRemindersListViewModel::ReminderID::CodingKeys_optional __swiftcall TTRRemindersListViewModel.ReminderID.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x44497463656A626FLL && stringValue._object == 0xE800000000000000;
  if (v5 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x444970756F7267 && object == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21DBFC64C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t TTRRemindersListViewModel.ReminderID.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x444970756F7267;
  }

  else
  {
    return 0x44497463656A626FLL;
  }
}

uint64_t sub_21DB0A9A8()
{
  if (*v0)
  {
    return 0x444970756F7267;
  }

  else
  {
    return 0x44497463656A626FLL;
  }
}

uint64_t sub_21DB0A9E8(uint64_t a1)
{
  v2 = sub_21DB161C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DB0AA24(uint64_t a1)
{
  v2 = sub_21DB161C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTRRemindersListViewModel.ReminderID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66870, &qword_21DC3D2F0);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DB161C0();
  sub_21DBFC87C();
  if (!v2)
  {
    v19 = v10;
    v20 = v12;
    v13 = v22;
    sub_21DBF634C();
    v25 = 0;
    sub_21DB15960(&qword_280D0C810, MEMORY[0x277D44FB0], MEMORY[0x277D44FC0]);
    v14 = v23;
    sub_21DBFC4EC();
    v15 = v26;
    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v24 = 1;
    sub_21DB15960(&qword_280D140F8, type metadata accessor for TTRRemindersListViewModel.SectionID, protocol conformance descriptor for TTRRemindersListViewModel.SectionID);
    sub_21DBFC49C();
    (*(v13 + 8))(v9, v14);
    v16 = v19;
    v17 = v20;
    *v20 = v15;
    sub_21D0D523C(v6, v17 + *(v16 + 20), &unk_27CE5CD70, &unk_21DC09230);
    sub_21DAF98D8(v17, v21, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t TTRRemindersListViewModel.ReminderID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66878, &qword_21DC3D2F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DB161C0();
  sub_21DBFC88C();
  v7 = sub_21DBFADFC();
  v10 = v7;
  v9[7] = 0;
  sub_21DBF634C();
  sub_21DB15960(&qword_280D0C818, MEMORY[0x277D44FB0], MEMORY[0x277D44FB8]);
  sub_21DBFC56C();

  if (!v1)
  {
    type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
    v9[6] = 1;
    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    sub_21DB15960(&qword_280D14100, type metadata accessor for TTRRemindersListViewModel.SectionID, "Ż_dp\x1B\a");
    sub_21DBFC50C();
  }

  return (*(v4 + 8))(v6, v3);
}

RemindersUICore::TTRRemindersListViewModel::ItemID::CodingKeys_optional __swiftcall TTRRemindersListViewModel.ItemID.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x496E6F6974636573 && stringValue._object == 0xE900000000000044;
  if (v5 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x7265646E696D6572 && object == 0xEA00000000004449 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x44497463656A626FLL && object == 0xE800000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x64656D616ELL && object == 0xE500000000000000)
  {

    v7 = 3;
  }

  else
  {
    v8 = sub_21DBFC64C();

    if (v8)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t TTRRemindersListViewModel.ItemID.CodingKeys.stringValue.getter()
{
  v1 = 0x496E6F6974636573;
  v2 = 0x44497463656A626FLL;
  if (*v0 != 2)
  {
    v2 = 0x64656D616ELL;
  }

  if (*v0)
  {
    v1 = 0x7265646E696D6572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DB0B1E8()
{
  v1 = 0x496E6F6974636573;
  v2 = 0x44497463656A626FLL;
  if (*v0 != 2)
  {
    v2 = 0x64656D616ELL;
  }

  if (*v0)
  {
    v1 = 0x7265646E696D6572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DB0B26C(uint64_t a1)
{
  v2 = sub_21DB16214();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DB0B2A8(uint64_t a1)
{
  v2 = sub_21DB16214();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTRRemindersListViewModel.ItemID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66880, &qword_21DC3D300);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v37 - v4;
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v37 - v8;
  v47 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66888, &qword_21DC3D308);
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DB16214();
  v17 = v48;
  sub_21DBFC87C();
  if (!v17)
  {
    v38 = v16;
    v48 = v14;
    v19 = v44;
    v18 = v45;
    LOBYTE(v49) = 0;
    sub_21DB15960(&qword_280D140F8, type metadata accessor for TTRRemindersListViewModel.SectionID, protocol conformance descriptor for TTRRemindersListViewModel.SectionID);
    v20 = v46;
    sub_21DBFC49C();
    if ((*(v18 + 48))(v20, 1, v47) == 1)
    {
      sub_21D0CF7E0(v20, &unk_27CE5CD70, &unk_21DC09230);
      LOBYTE(v49) = 1;
      sub_21DB15960(&qword_280D14978, type metadata accessor for TTRRemindersListViewModel.ReminderID, protocol conformance descriptor for TTRRemindersListViewModel.ReminderID);
      v22 = v41;
      v21 = v42;
      sub_21DBFC49C();
      v23 = v19;
      if ((*(v40 + 48))(v21, 1, v22) == 1)
      {
        sub_21D0CF7E0(v21, &qword_27CE66880, &qword_21DC3D300);
        sub_21DBF634C();
        v51 = 2;
        sub_21DB15960(&qword_280D0C810, MEMORY[0x277D44FB0], MEMORY[0x277D44FC0]);
        sub_21DBFC49C();
        v27 = v49;
        if (v49)
        {
          (*(v19 + 8))(v13, v11);
          v24 = v38;
          *v38 = v27;
          v25 = v43;
        }

        else
        {
          v49 = 3;
          v30 = sub_21DBFC4AC();
          v32 = v31;
          sub_21DBF8E0C();
          v33._countAndFlagsBits = v30;
          v33._object = v32;
          TTRRemindersListViewModel.ItemID.NamedID.init(rawValue:)(v33);
          v34 = v49;
          v25 = v43;
          if (v49 == 6)
          {
            v35 = objc_opt_self();
            v49 = 0;
            v50 = 0xE000000000000000;
            sub_21DBFBEEC();

            v49 = 0xD000000000000017;
            v50 = 0x800000021DC77E20;
            MEMORY[0x223D42AA0](v30, v32);

            MEMORY[0x223D42AA0](39, 0xE100000000000000);
            v36 = sub_21DBFA12C();

            [v35 internalErrorWithDebugDescription_];

            swift_willThrow();
            (*(v23 + 8))(v13, v11);
            return __swift_destroy_boxed_opaque_existential_0(a1);
          }

          (*(v23 + 8))(v13, v11);

          v24 = v38;
          *v38 = v34;
        }

        goto LABEL_6;
      }

      (*(v19 + 8))(v13, v11);
      v28 = v39;
      sub_21DAF98D8(v21, v39, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v29 = v28;
      v24 = v38;
      sub_21DAF98D8(v29, v38, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    }

    else
    {
      (*(v19 + 8))(v13, v11);
      sub_21DAF98D8(v20, v10, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v24 = v38;
      sub_21DAF98D8(v10, v38, type metadata accessor for TTRRemindersListViewModel.SectionID);
    }

    v25 = v43;
LABEL_6:
    swift_storeEnumTagMultiPayload();
    sub_21DAF98D8(v24, v25, type metadata accessor for TTRRemindersListViewModel.ItemID);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

double TTRRemindersListViewModel.ItemID.encode(to:)(void *a1)
{
  v2 = v1;
  v23 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v22);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66890, &qword_21DC3D310);
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v22 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DB16214();
  sub_21DBFC88C();
  sub_21D1055C4(v2, v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = *v10;
      v18 = sub_21DBFADFC();
      v26 = v18;
      v29 = 2;
      sub_21DBF634C();
      sub_21DB15960(&qword_280D0C818, MEMORY[0x277D44FB0], MEMORY[0x277D44FB8]);
      v19 = v25;
      sub_21DBFC56C();

      (*(v24 + 8))(v12, v19);
    }

    else
    {
      v21 = v25;
      v30 = 3;
      sub_21DBFC51C();
      (*(v24 + 8))(v12, v21);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_21DAF98D8(v10, v5, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v28 = 1;
      sub_21DB15960(&qword_280D14980, type metadata accessor for TTRRemindersListViewModel.ReminderID, protocol conformance descriptor for TTRRemindersListViewModel.ReminderID);
      v14 = v25;
      sub_21DBFC56C();
      v15 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      v16 = v5;
    }

    else
    {
      sub_21DAF98D8(v10, v7, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v27 = 0;
      sub_21DB15960(&qword_280D14100, type metadata accessor for TTRRemindersListViewModel.SectionID, "Ż_dp\x1B\a");
      v14 = v25;
      sub_21DBFC56C();
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID;
      v16 = v7;
    }

    sub_21D107038(v16, v15);
    (*(v24 + 8))(v12, v14);
  }

  return result;
}

uint64_t TTRRemindersListViewModel.ItemID.init(base64EncodedString:)()
{
  v1 = sub_21DBF54EC();
  v3 = v2;

  if (v3 >> 60 == 15)
  {
    v4 = objc_opt_self();
    v5 = sub_21DBFA12C();
    [v4 internalErrorWithDebugDescription_];

    return swift_willThrow();
  }

  else
  {
    sub_21DBF521C();
    swift_allocObject();
    sub_21DBF520C();
    type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    sub_21DB15960(&qword_280D14270, type metadata accessor for TTRRemindersListViewModel.ItemID, protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
    sub_21DBF51EC();

    return sub_21D1BAF38(v1, v3);
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRRemindersListViewModel.ItemID.base64EncodedString()()
{
  sub_21DBF525C();
  swift_allocObject();
  sub_21DBF524C();
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  sub_21DB15960(&qword_280D14278, type metadata accessor for TTRRemindersListViewModel.ItemID, protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  v1 = sub_21DBF522C();
  v3 = v2;

  if (!v0)
  {
    v6 = sub_21DBF550C();
    v8 = v7;
    sub_21D17B8A8(v1, v3);
    v4 = v6;
    v5 = v8;
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t TTRRemindersListViewModel.ItemID.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D1055C4(v1, v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = *v17;
      v37 = 0x44497463656A626FLL;
      v38 = 0xE900000000000028;
      v22 = [v21 description];
      v23 = sub_21DBFA16C();
      v25 = v24;

      MEMORY[0x223D42AA0](v23, v25);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
    }

    else
    {
      v30 = *v17;
      v37 = 0x2864656D616ELL;
      v38 = 0xE600000000000000;
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          v31 = 0x800000021DC43E00;
          v32 = 0xD00000000000001FLL;
        }

        else if (v30 == 4)
        {
          v31 = 0xE700000000000000;
          v32 = 0x6D657449706974;
        }

        else
        {
          v31 = 0x800000021DC43E30;
          v32 = 0xD00000000000001DLL;
        }
      }

      else if (v30)
      {
        if (v30 == 1)
        {
          v31 = 0xEC0000006D657449;
          v32 = 0x7367617468736168;
        }

        else
        {
          v32 = 0xD000000000000012;
          v31 = 0x800000021DC43DE0;
        }
      }

      else
      {
        v31 = 0xED00006D65744964;
        v32 = 0x6574656C706D6F63;
      }

      MEMORY[0x223D42AA0](v32, v31);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
    }

    return v37;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_21DAF98D8(v17, v7, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v37 = 0x7265646E696D6572;
    v38 = 0xEB00000000284449;
    v26 = [*v7 description];
    v27 = sub_21DBFA16C();
    v29 = v28;

    v35 = v27;
    v36 = v29;
    sub_21D0D3954(v7 + *(v5 + 20), v4, &unk_27CE5CD70, &unk_21DC09230);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {
      sub_21D0CF7E0(v4, &unk_27CE5CD70, &unk_21DC09230);
    }

    else
    {
      sub_21DAF98D8(v4, v11, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v33 = TTRRemindersListViewModel.SectionID.description.getter();
      MEMORY[0x223D42AA0](v33);

      sub_21D107038(v11, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v27 = v35;
      v29 = v36;
    }

    MEMORY[0x223D42AA0](v27, v29);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v20 = v37;
    sub_21D107038(v7, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  }

  else
  {
    sub_21DAF98D8(v17, v14, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v37 = 0x496E6F6974636573;
    v38 = 0xEA00000000002844;
    v19 = TTRRemindersListViewModel.SectionID.description.getter();
    MEMORY[0x223D42AA0](v19);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v20 = v37;
    sub_21D107038(v14, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }

  return v20;
}

id TTRRemindersListViewModel.SectionHeaderTitle.attributedTitleText(baseAttributes:secondaryTextAttributes:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  v3 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v10 = v2[6];
  v9 = v2[7];
  v11 = *(v2 + 64);
  v12 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v30 = v5;
  v31 = v7;
  v29 = v8;
  sub_21D2A7DB4(v6, v5, v7, v8, v10, v9, v11);
  v28 = v4;
  v13 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21DB15960(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
  v14 = sub_21DBF9E5C();
  v15 = [v12 initWithString:v13 attributes:v14];

  v16 = v11 >> 6;
  if (v11 >> 6 > 1)
  {
    if (v16 == 2)
    {
      v19 = v6;
      v20 = v5;
      v21 = v31;
      v23 = v10;
      v22 = v29;
      goto LABEL_6;
    }
  }

  else
  {
    if (!v16)
    {
      v17 = *MEMORY[0x277D740C0];
      v18 = TTRListColors.Color.nativeColor.getter();
      [v15 addAttribute:v17 value:v18 range:{0, MEMORY[0x223D42B30](v28, v3)}];

      v19 = v6;
      v20 = v30;
      v21 = v31;
      v22 = v29;
      v23 = v10;
LABEL_6:
      sub_21D179EF0(v19, v20, v21, v22, v23, v9, v11);
      goto LABEL_7;
    }

    if ((v31 & 1) == 0)
    {
      a2();
      v26 = sub_21DBF9E5C();

      [v15 addAttributes:v26 range:{v6, v30}];
    }
  }

LABEL_7:
  v24 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

  return v24;
}

id TTRRemindersListViewModel.SectionHeaderTitle.attributedSubtitleText(baseAttributes:secondaryTextAttributes:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  if ((*(v3 + 64) & 0xC0) != 0x80)
  {
    return 0;
  }

  v13 = *(v3 + 40);
  v14 = *(v3 + 32);
  v5 = *(v3 + 48);
  a1();
  v6 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v7 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21DB15960(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
  v8 = sub_21DBF9E5C();

  v9 = [v6 initWithString:v7 attributes:v8];

  if ((v5 & 1) == 0)
  {
    a3();
    v10 = sub_21DBF9E5C();

    [v9 addAttributes:v10 range:{v14, v13}];
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

  return v11;
}

RemindersUICore::TTRRemindersListViewModel::CompletedRemindersState __swiftcall TTRRemindersListViewModel.ListInfo.completedRemindersState(completedRowHasShowHide:)(Swift::Bool completedRowHasShowHide)
{
  v4 = v1;
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  v6 = *(v2 + v5[20]);
  v7 = *(v2 + v5[18]);
  v8 = *(v2 + v5[12]) & completedRowHasShowHide;
  v9 = *(v2 + v5[14]);
  v10 = *(v2 + v5[6]);
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 9) = v8 & 1;
  *(v4 + 10) = v9;
  *(v4 + 16) = v10;

  v11 = v10;
  result.listColor.super.isa = v13;
  result.count = v11;
  result.shown = v12;
  result.canToggleVisibility = BYTE1(v12);
  result.canClear = BYTE2(v12);
  return result;
}

uint64_t TTRRemindersListViewModel.EmptyListMessagingType.init(completedCount:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if (result <= 0)
  {
    v3 = 64;
  }

  else
  {
    v3 = 65;
  }

  if (a2)
  {
    v4 = 64;
  }

  else
  {
    v4 = v3;
  }

  *a3 = v4;
  return result;
}

uint64_t TTRRemindersListViewModel.EmptyListMessagingType.init(hasIncompleteOrCompletedReminders:shouldCategorizeGroceryItems:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if (a2)
  {
    v3 = 66;
  }

  else
  {
    v3 = 64;
  }

  if (a2)
  {
    v4 = 67;
  }

  else
  {
    v4 = 65;
  }

  if (result)
  {
    v3 = v4;
  }

  *a3 = v3;
  return result;
}

Swift::String_optional __swiftcall TTRRemindersListViewModel.EmptyListMessagingType.localizedTitle(withTextFormat:)(RemindersUICore::TTRRemindersListViewModel::EmptyListMessagingType::TextFormat withTextFormat)
{
  v2 = *withTextFormat;
  v3 = *v1;
  if (!(v3 >> 6))
  {
    if (v3)
    {
      if (*withTextFormat)
      {
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_12;
        }
      }

      else if (qword_280D1BAA8 == -1)
      {
LABEL_12:
        countAndFlagsBits = sub_21DBF516C();
        goto LABEL_14;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      goto LABEL_12;
    }

    swift_once();
    goto LABEL_12;
  }

  if (v3 >> 6 == 1)
  {
    v8[1] = v3 & 0x3F;
    v8[0] = v2;
    v6 = TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.text(withTextFormat:)(v8);
    object = v6._object;
    countAndFlagsBits = v6._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

LABEL_14:
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

NSAttributedString_optional __swiftcall TTRRemindersListViewModel.EmptyListMessagingType.localizedSubtitle(currentLayout:)(RemindersUICore::TTRRemindersListLayout currentLayout)
{
  v2 = *v1;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1 && (v2 & 0x3E) != 0)
    {
      if (*currentLayout)
      {
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        v17 = 0x800000021DC4CCF0;
      }

      else
      {
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        v17 = 0x800000021DC4CC00;
      }

      sub_21DBF516C();
      v14 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v15 = sub_21DBFA12C();

      v3 = [v14 initWithString_];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    sub_21DBF516C();
    v4 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v5 = sub_21DBFA12C();
    v3 = [v4 initWithString_];

    v6 = sub_21DBFA12C();

    v7 = sub_21DBFA12C();

    v8 = [v6 rangeOfString_];
    v10 = v9;

    if (v8 != sub_21DBF4B4C())
    {
      v12 = *MEMORY[0x277D740E8];
      v13 = sub_21DBFA12C();
      [v3 addAttribute:v12 value:v13 range:{v8, v10}];
    }
  }

  v16 = v3;
  result.value.super.isa = v16;
  result.is_nil = v11;
  return result;
}

uint64_t TTRRemindersListViewModel.EmptyListMessagingType.imageSystemName.getter()
{
  if ((*v0 & 0x3E) != 0 && (*v0 & 0xC0) == 64)
  {
    return 0x662E746F72726163;
  }

  else
  {
    return 0;
  }
}

double TTRRemindersListViewModel.EmptyListMessagingType.helpAnchor.getter@<D0>(uint64_t a1@<X8>)
{
  if (*v1 >= 0x40u)
  {
    result = 0.0;
    *a1 = xmmword_21DC19C40;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  else
  {
    if (qword_27CE56E10 != -1)
    {
      swift_once();
    }

    v4 = qword_27CE63818;
    v3 = unk_27CE63820;
    sub_21DBF8E0C();
    sub_21D4F432C(0, 0);
    sub_21D8DA944(0, 0);
    *a1 = 0xD000000000000014;
    *(a1 + 8) = 0x800000021DC77F90;
    *(a1 + 16) = v4;
    *(a1 + 24) = v3;
    result = 1.82753616e184;
    *(a1 + 32) = xmmword_21DC3D290;
    *(a1 + 48) = xmmword_21DC3D2A0;
    *(a1 + 64) = 0xD000000000000018;
    *(a1 + 72) = 0x800000021DC6FA20;
  }

  return result;
}

id sub_21DB0D414(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v5 = sub_21DBFA12C();
    v6 = [v4 initWithString_];

    v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v8 = sub_21DBFA12C();
    v9 = [v7 initWithString_];

    [v6 appendAttributedString_];
    v10 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
    [v6 appendAttributedString_];

    return v6;
  }

  else
  {

    return a1;
  }
}

id TTRRemindersListViewModel.HashtagSelectionDescription.attributedPreferredDescription(baseAttributes:emphasizedAttributes:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v10 = v5;
  v11 = sub_21D47A9D8(v10, a1, a2, a3, a4);

  return v11;
}

void sub_21DB0D59C(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  a2();
  type metadata accessor for Key(0);
  sub_21DB15960(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
  v5 = sub_21DBF9E5C();

  v6 = [a1 string];
  v7 = sub_21DBFA16C();
  v9 = v8;

  v10 = MEMORY[0x223D42B30](v7, v9);

  [a1 addAttributes:v5 range:{0, v10}];

  if (qword_27CE57130 != -1)
  {
    swift_once();
  }

  v11 = qword_27CE66808;
  v29 = MEMORY[0x277D84F90];
  v12 = [a1 string];
  v13 = sub_21DBFA16C();
  v15 = v14;

  v16 = MEMORY[0x223D42B30](v13, v15);

  v17 = swift_allocObject();
  v17[2] = sub_21D13C354;
  v17[3] = 0;
  v17[4] = &v29;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_21D1A6510;
  *(v18 + 24) = v17;
  aBlock[4] = sub_21D24B3B4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1A6068;
  aBlock[3] = &block_descriptor_149;
  v19 = _Block_copy(aBlock);

  [a1 enumerateAttribute:v11 inRange:0 options:v16 usingBlock:{0, v19}];
  _Block_release(v19);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v20 = v29;

    v22 = *(v20 + 16);
    if (v22)
    {
      a4(v21);
      v23 = (v20 + 40);
      do
      {
        v24 = *(v23 - 1);
        v25 = *v23;
        v26 = sub_21DBF9E5C();
        [a1 addAttributes:v26 range:{v24, v25}];

        v23 += 2;
        --v22;
      }

      while (v22);
    }
  }
}

uint64_t sub_21DB0D920(uint64_t result, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= result)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  v3 = sub_21DBFBD7C();
  result = v2;
  if (v3 < v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void sub_21DB0D98C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_4;
  }

  if (a2 < a1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a1 != a2)
  {
    if (a1 >= a2)
    {
LABEL_14:
      __break(1u);
      return;
    }

    sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
    sub_21DBF8E0C();
    v6 = a1;
    do
    {
      v7 = v6 + 1;
      sub_21DBFBF6C();
      v6 = v7;
    }

    while (a2 != v7);
  }

  else
  {
LABEL_4:
    sub_21DBF8E0C();
  }

  if (a3 >> 62)
  {

    sub_21DBFC3BC();
    return;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v91 = a1;
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  v89 = v3;
  v90 = v4;
  MEMORY[0x28223BE20](v3);
  v83 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v79 - v7;
  MEMORY[0x28223BE20](v8);
  v81 = &v79 - v9;
  MEMORY[0x28223BE20](v10);
  v80 = &v79 - v11;
  MEMORY[0x28223BE20](v12);
  v79 = &v79 - v13;
  v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v14);
  v85 = (&v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v84 = (&v79 - v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - v19;
  MEMORY[0x28223BE20](v21);
  v88 = &v79 - v22;
  MEMORY[0x28223BE20](v23);
  v87 = &v79 - v24;
  MEMORY[0x28223BE20](v25);
  v86 = &v79 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v79 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v79 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = (&v79 - v34);
  MEMORY[0x28223BE20](v36);
  v38 = &v79 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66978, &qword_21DC3F218);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v79 - v40;
  v43 = &v79 + *(v42 + 56) - v40;
  sub_21D1055C4(v91, &v79 - v40, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v44 = a2;
  v45 = v43;
  sub_21D1055C4(v44, v43, type metadata accessor for TTRRemindersListViewModel.SectionID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v29 = v87;
        sub_21D1055C4(v41, v87, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v61 = v43;
        if (swift_getEnumCaseMultiPayload() != 5)
        {
          goto LABEL_38;
        }

        v47 = v90;
        v48 = *(v90 + 32);
        v49 = v82;
      }

      else
      {
        v29 = v88;
        sub_21D1055C4(v41, v88, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v61 = v43;
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_38;
        }

        v47 = v90;
        v48 = *(v90 + 32);
        v49 = v83;
      }

      v50 = v49;
      v51 = v61;
      goto LABEL_36;
    }

    if (EnumCaseMultiPayload == 7)
    {
      sub_21D1055C4(v41, v20, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v67 = *v20;
      v68 = *(v20 + 2);
      v69 = v20[24];
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v70 = v43[8];
        v71 = v43[24];
        if (v20[8])
        {
          if (!v43[8])
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v67 != *v43)
          {
            v70 = 1;
          }

          if (v70)
          {
            goto LABEL_48;
          }
        }

        if (v69)
        {
          if (v43[24])
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v68 != *(v43 + 2))
          {
            v71 = 1;
          }

          if ((v71 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

LABEL_48:
        sub_21D107038(v41, type metadata accessor for TTRRemindersListViewModel.SectionID);
        goto LABEL_40;
      }

LABEL_39:
      sub_21D0CF7E0(v41, &qword_27CE66978, &qword_21DC3F218);
LABEL_40:
      v55 = 0;
      return v55 & 1;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v52 = v84;
      sub_21D1055C4(v41, v84, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v53 = *v52;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v74 = v85;
      sub_21D1055C4(v41, v85, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v53 = *v74;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_21D1055C4(v41, v32, type metadata accessor for TTRRemindersListViewModel.SectionID);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          (*(v90 + 8))(v32, v89);
          goto LABEL_39;
        }

        v63 = v89;
        v62 = v90;
        v64 = v79;
        (*(v90 + 32))(v79, v45, v89);
        v55 = sub_21DBF55EC();
        v65 = *(v62 + 8);
        v65(v64, v63);
        v66 = v32;
        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 3)
      {
        sub_21D1055C4(v41, v29, type metadata accessor for TTRRemindersListViewModel.SectionID);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v47 = v90;
          v48 = *(v90 + 32);
          v49 = v80;
          v50 = v80;
          v51 = v43;
LABEL_36:
          v75 = v89;
          v48(v50, v51, v89);
          v55 = sub_21DBF55EC();
          v76 = *(v47 + 8);
          v76(v49, v75);
          v76(v29, v75);
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      v29 = v86;
      sub_21D1055C4(v41, v86, type metadata accessor for TTRRemindersListViewModel.SectionID);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v63 = v89;
        v72 = v90;
        v73 = v81;
        (*(v90 + 32))(v81, v43, v89);
        v55 = sub_21DBF55EC();
        v65 = *(v72 + 8);
        v65(v73, v63);
        v66 = v29;
LABEL_28:
        v65(v66, v63);
        goto LABEL_37;
      }

LABEL_38:
      (*(v90 + 8))(v29, v89);
      goto LABEL_39;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_21D1055C4(v41, v38, type metadata accessor for TTRRemindersListViewModel.SectionID);
      if (!swift_getEnumCaseMultiPayload())
      {
        v56 = *v43;
        v93 = *v38;
        v92 = v56;
        v57 = TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
        v59 = v58;
        if (v57 == TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter() && v59 == v60)
        {

LABEL_50:
          sub_21D107038(v41, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v55 = 1;
          return v55 & 1;
        }

        v78 = sub_21DBFC64C();

        if (v78)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      goto LABEL_39;
    }

    sub_21D1055C4(v41, v35, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v53 = *v35;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
LABEL_30:

      goto LABEL_39;
    }
  }

  v54 = *v43;
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v55 = sub_21DBFB63C();

LABEL_37:
  sub_21D107038(v41, type metadata accessor for TTRRemindersListViewModel.SectionID);
  return v55 & 1;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC10ReminderIDV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388, &unk_21DC0F470);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  v21 = v7;
  v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v15 = *(v11 + 48);
  sub_21D0D3954(a1 + v14, v13, &unk_27CE5CD70, &unk_21DC09230);
  sub_21D0D3954(a2 + v14, &v13[v15], &unk_27CE5CD70, &unk_21DC09230);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_21D0CF7E0(v13, &unk_27CE5CD70, &unk_21DC09230);
      return 1;
    }

    goto LABEL_7;
  }

  sub_21D0D3954(v13, v10, &unk_27CE5CD70, &unk_21DC09230);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_21D107038(v10, type metadata accessor for TTRRemindersListViewModel.SectionID);
LABEL_7:
    sub_21D0CF7E0(v13, &qword_27CE58388, &unk_21DC0F470);
    return 0;
  }

  v18 = v21;
  sub_21DAF98D8(&v13[v15], v21, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v19 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v10, v18);
  sub_21D107038(v18, type metadata accessor for TTRRemindersListViewModel.SectionID);
  sub_21D107038(v10, type metadata accessor for TTRRemindersListViewModel.SectionID);
  sub_21D0CF7E0(v13, &unk_27CE5CD70, &unk_21DC09230);
  return (v19 & 1) != 0;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v38 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v38 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0, &qword_21DC0A050);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v38 - v21;
  v24 = *(v23 + 56);
  sub_21D1055C4(a1, &v38 - v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D1055C4(a2, &v22[v24], type metadata accessor for TTRRemindersListViewModel.ItemID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21D1055C4(v22, v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v26 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
        v27 = v16;
        goto LABEL_14;
      }

      v31 = &v22[v24];
      v32 = v39;
      sub_21DAF98D8(v31, v39, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v30 = _s15RemindersUICore25TTRRemindersListViewModelC10ReminderIDV2eeoiySbAE_AEtFZ_0(v16, v32);
      v33 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      sub_21D107038(v32, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v34 = v16;
    }

    else
    {
      sub_21D1055C4(v22, v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload())
      {
        v26 = type metadata accessor for TTRRemindersListViewModel.SectionID;
        v27 = v19;
LABEL_14:
        sub_21D107038(v27, v26);
        goto LABEL_15;
      }

      v35 = &v22[v24];
      v36 = v38;
      sub_21DAF98D8(v35, v38, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v30 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v19, v36);
      v33 = type metadata accessor for TTRRemindersListViewModel.SectionID;
      sub_21D107038(v36, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v34 = v19;
    }

    sub_21D107038(v34, v33);
LABEL_18:
    sub_21D107038(v22, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return v30 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_21D1055C4(v22, v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v28 = *v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v29 = *&v22[v24];
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v30 = sub_21DBFB63C();

      goto LABEL_18;
    }
  }

  else
  {
    sub_21D1055C4(v22, v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v30 = sub_21D25BF78(*v10, v22[v24]);
      goto LABEL_18;
    }
  }

LABEL_15:
  sub_21D0CF7E0(v22, &qword_27CE58AD0, &qword_21DC0A050);
  v30 = 0;
  return v30 & 1;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC09CompletedA5StateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || ((*(a1 + 8) ^ *(a2 + 8)) & 1) != 0 || ((*(a1 + 9) ^ *(a2 + 9)) & 1) != 0 || ((*(a1 + 10) ^ *(a2 + 10)) & 1) != 0)
  {
    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  return sub_21DBFB63C() & 1;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC13SharingStatusV2eeoiySbAE_AEtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      return 1;
    }

    v10 = 0;
    v2 = *a2;
    goto LABEL_9;
  }

  if (!v3)
  {
    v10 = *a1;
LABEL_9:
    v12 = v2;

    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v4 = v2;
  v5 = v3;
  v6 = v4;
  v7 = [v6 remObjectID];
  v8 = [v5 remObjectID];
  v9 = sub_21DBFB63C();

  return (v9 & 1) != 0;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC0D11SharingInfoV6StatusO2eeoiySbAG_AGtFZ_0(void **a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 != 2)
  {
    if (v2 == 1)
    {
      if (v3 == 1)
      {
        v4 = 1;
        sub_21DB34454(1);
        v5 = 1;
LABEL_10:
        sub_21DB34454(v5);
        return v4;
      }
    }

    else if ((v3 - 1) >= 2)
    {
      v7 = *a2;
      v8 = v2;
      sub_21DB15B70(v3);
      sub_21DB15B70(v2);
      sub_21DB15B70(v3);
      sub_21DB15B70(v2);
      v4 = _s15RemindersUICore25TTRRemindersListViewModelC13SharingStatusV2eeoiySbAE_AEtFZ_0(&v8, &v7);
      sub_21DB34454(v2);
      sub_21DB34454(v3);
      sub_21DB34454(v3);
      v5 = v2;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
LABEL_8:
    sub_21DB15B70(*a2);
    sub_21DB15B70(v2);
    sub_21DB34454(v2);
    sub_21DB34454(v3);
    return 0;
  }

  sub_21DB34454(2);
  sub_21DB34454(2);
  return 1;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC0D11SharingInfoV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v3 = *(a1 + 1);
    v5 = *(a2 + 1);
    v6 = v3;
    sub_21DB15B70(v3);
    sub_21DB15B70(v5);
    v2 = _s15RemindersUICore25TTRRemindersListViewModelC0D11SharingInfoV6StatusO2eeoiySbAG_AGtFZ_0(&v6, &v5);
    sub_21DB34454(v5);
    sub_21DB34454(v6);
  }

  return v2;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC13HashtagsStateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v32 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66950, &qword_21DC3F1E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v32 - v12;
  v15 = *(v14 + 56);
  sub_21D0D3954(a1, v32 - v12, &qword_27CE5A440, &unk_21DC16170);
  sub_21D0D3954(a2, &v13[v15], &qword_27CE5A440, &unk_21DC16170);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21D0D3954(v13, v10, &qword_27CE5A440, &unk_21DC16170);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_21DAF98D8(&v13[v15], v7, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
      if (sub_21D1D57A4(*v10, *v7))
      {
        v31 = MEMORY[0x223D3F370](v10 + *(v4 + 20), v7 + *(v4 + 20));
        sub_21D107038(v7, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
        sub_21D107038(v10, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
        sub_21D0CF7E0(v13, &qword_27CE5A440, &unk_21DC16170);
        if ((v31 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_4;
      }

      sub_21D107038(v7, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
      sub_21D107038(v10, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
      v29 = &qword_27CE5A440;
      v30 = &unk_21DC16170;
LABEL_11:
      sub_21D0CF7E0(v13, v29, v30);
      return 0;
    }

    sub_21D107038(v10, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
LABEL_10:
    v29 = &qword_27CE66950;
    v30 = &qword_21DC3F1E0;
    goto LABEL_11;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_21D0CF7E0(v13, &qword_27CE5A440, &unk_21DC16170);
LABEL_4:
  v17 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = *(a1 + v17 + 16);
  v21 = (a2 + v17);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  if (v19)
  {
    v34[0] = v18;
    v34[1] = v19;
    v35 = v20;
    if (v23)
    {
      v32[0] = v22;
      v32[1] = v23;
      v33 = v24;
      sub_21D157724(v18, v19, v20);
      sub_21D157724(v22, v23, v24);
      sub_21D157724(v18, v19, v20);
      v25 = sub_21DB10404(v34, v32, &qword_280D177E0, 0x277CCA898);
      v26 = v33;

      v27 = v35;

      sub_21D1576C8(v18, v19, v20);
      return (v25 & 1) != 0;
    }

    sub_21D157724(v18, v19, v20);
    sub_21D157724(v22, 0, v24);
    sub_21D157724(v18, v19, v20);
  }

  else
  {
    sub_21D157724(v18, 0, v20);
    if (!v23)
    {
      sub_21D157724(v22, 0, v24);
      sub_21D1576C8(v18, 0, v20);
      return 1;
    }

    sub_21D157724(v22, v23, v24);
  }

  sub_21D1576C8(v18, v19, v20);
  sub_21D1576C8(v22, v23, v24);
  return 0;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC0D4InfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v109 = type metadata accessor for TTRTemplatePublicLinkData(0);
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v104 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66850, &unk_21DC3D2D0);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = &v103 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66938, &qword_21DC3F1B8);
  MEMORY[0x28223BE20](v106);
  v113 = &v103 - v7;
  v114 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  v111 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v105 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66848, &qword_21DC3D2C8);
  MEMORY[0x28223BE20](v9 - 8);
  v112 = &v103 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66940, &unk_21DC3F1C0);
  MEMORY[0x28223BE20](v110);
  v115 = &v103 - v11;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8, &qword_21DC36220);
  MEMORY[0x28223BE20](v117);
  v118 = &v103 - v12;
  v13 = type metadata accessor for TTRRemindersListTip(0);
  v121 = *(v13 - 8);
  v122 = v13;
  MEMORY[0x28223BE20](v13);
  v116 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0, &unk_21DC36080);
  MEMORY[0x28223BE20](v15 - 8);
  v119 = &v103 - v16;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AB0, &qword_21DC3F1D0);
  MEMORY[0x28223BE20](v120);
  v123 = &v103 - v17;
  v18 = type metadata accessor for TTRListType(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v103 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66948, &qword_21DC3F1D8);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v103 - v26;
  v29 = *(v28 + 56);
  v124 = a1;
  sub_21D0D3954(a1, &v103 - v26, &qword_27CE650E0, &unk_21DC1BD10);
  v125 = a2;
  sub_21D0D3954(a2, &v27[v29], &qword_27CE650E0, &unk_21DC1BD10);
  v30 = *(v19 + 48);
  if (v30(v27, 1, v18) == 1)
  {
    if (v30(&v27[v29], 1, v18) == 1)
    {
      sub_21D0CF7E0(v27, &qword_27CE650E0, &unk_21DC1BD10);
      goto LABEL_9;
    }

LABEL_6:
    v31 = &qword_27CE66948;
    v32 = &qword_21DC3F1D8;
    v33 = v27;
LABEL_7:
    sub_21D0CF7E0(v33, v31, v32);
    goto LABEL_42;
  }

  sub_21D0D3954(v27, v24, &qword_27CE650E0, &unk_21DC1BD10);
  if (v30(&v27[v29], 1, v18) == 1)
  {
    sub_21D107038(v24, type metadata accessor for TTRListType);
    goto LABEL_6;
  }

  sub_21DAF98D8(&v27[v29], v21, type metadata accessor for TTRListType);
  v34 = _s15RemindersUICore11TTRListTypeO2eeoiySbAC_ACtFZ_0(v24, v21);
  sub_21D107038(v21, type metadata accessor for TTRListType);
  sub_21D107038(v24, type metadata accessor for TTRListType);
  sub_21D0CF7E0(v27, &qword_27CE650E0, &unk_21DC1BD10);
  if ((v34 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_9:
  v35 = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  v36 = v35[5];
  v38 = v124;
  v37 = v125;
  v39 = *(v124 + v36);
  v40 = *(v124 + v36 + 8);
  v41 = (v125 + v36);
  if ((v39 != *v41 || v40 != v41[1]) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    goto LABEL_42;
  }

  v42 = v35[7];
  v43 = (v38 + v42);
  v44 = *(v38 + v42 + 8);
  v45 = (v37 + v42);
  v46 = *(v37 + v42 + 8);
  if (v44)
  {
    if (!v46)
    {
      return v46 & 1;
    }
  }

  else
  {
    if (*v43 != *v45)
    {
      LOBYTE(v46) = 1;
    }

    if (v46)
    {
      goto LABEL_42;
    }
  }

  v47 = v35[8];
  v48 = *(v38 + v47);
  v49 = *(v37 + v47);
  if (v48)
  {
    v50 = 0x736E6D756C6F63;
  }

  else
  {
    v50 = 1953720684;
  }

  if (v48)
  {
    v51 = 0xE700000000000000;
  }

  else
  {
    v51 = 0xE400000000000000;
  }

  if (v49)
  {
    v52 = 0x736E6D756C6F63;
  }

  else
  {
    v52 = 1953720684;
  }

  if (v49)
  {
    v53 = 0xE700000000000000;
  }

  else
  {
    v53 = 0xE400000000000000;
  }

  if (v50 == v52 && v51 == v53)
  {
  }

  else
  {
    v54 = sub_21DBFC64C();

    if ((v54 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  v55 = v35[9];
  v56 = *(v38 + v55);
  v57 = *(v38 + v55 + 8);
  v58 = (v37 + v55);
  v59 = *v58;
  v60 = v58[1];
  if (v57 == 3)
  {
    sub_21DB15B5C(v56, 3);
    if (v60 == 3)
    {
      sub_21DB15B5C(v59, 3);
      sub_21DB34468(v56, 3);
      goto LABEL_45;
    }

    sub_21DB15B5C(v59, v60);
LABEL_41:
    sub_21DB34468(v56, v57);
    sub_21DB34468(v59, v60);
    goto LABEL_42;
  }

  v128 = v56;
  v129 = v57;
  if (v60 == 3)
  {
    sub_21DB15B5C(v56, v57);
    sub_21DB15B5C(v59, 3);
    sub_21DB15B5C(v56, v57);
    sub_21DB34454(v57);
    goto LABEL_41;
  }

  v126 = v59 & 0x101;
  v127 = v60;
  sub_21DB15B5C(v56, v57);
  sub_21DB15B5C(v59, v60);
  sub_21DB15B5C(v56, v57);
  v62 = _s15RemindersUICore25TTRRemindersListViewModelC0D11SharingInfoV2eeoiySbAE_AEtFZ_0(&v128, &v126);
  sub_21DB34454(v127);
  sub_21DB34454(v129);
  sub_21DB34468(v56, v57);
  if (!v62)
  {
    goto LABEL_42;
  }

LABEL_45:
  v63 = v35[10];
  v64 = *(v120 + 48);
  v65 = v123;
  sub_21D0D3954(v38 + v63, v123, &qword_27CE64AA0, &unk_21DC36080);
  sub_21D0D3954(v37 + v63, v65 + v64, &qword_27CE64AA0, &unk_21DC36080);
  v66 = v122;
  v67 = *(v121 + 48);
  if (v67(v65, 1, v122) == 1)
  {
    if (v67(v65 + v64, 1, v66) == 1)
    {
      sub_21D0CF7E0(v65, &qword_27CE64AA0, &unk_21DC36080);
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v68 = v119;
  sub_21D0D3954(v65, v119, &qword_27CE64AA0, &unk_21DC36080);
  if (v67(v65 + v64, 1, v66) == 1)
  {
    sub_21D107038(v68, type metadata accessor for TTRRemindersListTip);
LABEL_50:
    v31 = &qword_27CE64AB0;
    v32 = &qword_21DC3F1D0;
    v33 = v65;
    goto LABEL_7;
  }

  v69 = v65 + v64;
  v70 = v116;
  sub_21DAF98D8(v69, v116, type metadata accessor for TTRRemindersListTip);
  v71 = v118;
  v72 = *(v117 + 48);
  sub_21D1055C4(v68, v118, type metadata accessor for TTRRemindersListTip);
  sub_21DAF98D8(v70, &v71[v72], type metadata accessor for TTRRemindersListTip);
  LODWORD(v70) = *v71;
  v73 = v71[v72];
  sub_21D107038(&v71[v72], type metadata accessor for TTRRemindersListTips);
  sub_21D107038(v71, type metadata accessor for TTRRemindersListTips);
  sub_21D107038(v68, type metadata accessor for TTRRemindersListTip);
  sub_21D0CF7E0(v65, &qword_27CE64AA0, &unk_21DC36080);
  if (v70 != v73)
  {
    goto LABEL_42;
  }

LABEL_52:
  if (*(v38 + v35[11]) != *(v37 + v35[11]) || *(v38 + v35[12]) != *(v37 + v35[12]) || *(v38 + v35[13]) != *(v37 + v35[13]) || *(v38 + v35[14]) != *(v37 + v35[14]) || *(v38 + v35[15]) != *(v37 + v35[15]) || *(v38 + v35[16]) != *(v37 + v35[16]) || *(v38 + v35[17]) != *(v37 + v35[17]) || *(v38 + v35[18]) != *(v37 + v35[18]) || *(v124 + v35[19]) != *(v125 + v35[19]) || *(v124 + v35[20]) != *(v125 + v35[20]) || *(v124 + v35[21]) != *(v125 + v35[21]))
  {
    goto LABEL_42;
  }

  v74 = v35[22];
  v75 = (v124 + v74);
  v76 = *(v124 + v74 + 8);
  v77 = (v125 + v74);
  v78 = v77[1];
  if (v76)
  {
    if (!v78 || (*v75 != *v77 || v76 != v78) && (sub_21DBFC64C() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v78)
  {
    goto LABEL_42;
  }

  if (*(v124 + v35[23]) != *(v125 + v35[23]))
  {
    goto LABEL_42;
  }

  v79 = v35[24];
  v80 = *(v110 + 48);
  v81 = v115;
  sub_21D0D3954(v124 + v79, v115, &qword_27CE66848, &qword_21DC3D2C8);
  sub_21D0D3954(v125 + v79, v81 + v80, &qword_27CE66848, &qword_21DC3D2C8);
  v82 = *(v111 + 48);
  if (v82(v81, 1, v114) == 1)
  {
    if (v82(v115 + v80, 1, v114) == 1)
    {
      sub_21D0CF7E0(v115, &qword_27CE66848, &qword_21DC3D2C8);
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  v83 = v115;
  sub_21D0D3954(v115, v112, &qword_27CE66848, &qword_21DC3D2C8);
  if (v82(v83 + v80, 1, v114) == 1)
  {
    sub_21D107038(v112, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
LABEL_76:
    v31 = &qword_27CE66940;
    v32 = &unk_21DC3F1C0;
    v33 = v115;
    goto LABEL_7;
  }

  v84 = v115;
  v85 = v115 + v80;
  v86 = v105;
  sub_21DAF98D8(v85, v105, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
  v87 = v112;
  v88 = _s15RemindersUICore25TTRRemindersListViewModelC13HashtagsStateV2eeoiySbAE_AEtFZ_0(v112, v86);
  sub_21D107038(v86, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
  sub_21D107038(v87, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
  sub_21D0CF7E0(v84, &qword_27CE66848, &qword_21DC3D2C8);
  if (!v88)
  {
    goto LABEL_42;
  }

LABEL_78:
  v89 = v35[25];
  v90 = *(v106 + 48);
  v91 = v113;
  sub_21D0D3954(v124 + v89, v113, &qword_27CE66850, &unk_21DC3D2D0);
  sub_21D0D3954(v125 + v89, v91 + v90, &qword_27CE66850, &unk_21DC3D2D0);
  v92 = *(v107 + 48);
  if (v92(v91, 1, v109) != 1)
  {
    v97 = v113;
    sub_21D0D3954(v113, v108, &qword_27CE66850, &unk_21DC3D2D0);
    if (v92(v97 + v90, 1, v109) != 1)
    {
      v98 = v104;
      sub_21DAF98D8(v113 + v90, v104, type metadata accessor for TTRTemplatePublicLinkData);
      if (_s15RemindersUICore25TTRTemplatePublicLinkDataV14StateToDisplayO2eeoiySbAE_AEtFZ_0(v108, v98))
      {
        v99 = *(v109 + 20);
        v100 = v108;
        v101 = *(v108 + v99);
        v102 = *(v104 + v99);
        sub_21D107038(v104, type metadata accessor for TTRTemplatePublicLinkData);
        sub_21D107038(v100, type metadata accessor for TTRTemplatePublicLinkData);
        sub_21D0CF7E0(v113, &qword_27CE66850, &unk_21DC3D2D0);
        if (v101 == v102)
        {
          goto LABEL_81;
        }

LABEL_42:
        LOBYTE(v46) = 0;
        return v46 & 1;
      }

      sub_21D107038(v104, type metadata accessor for TTRTemplatePublicLinkData);
      sub_21D107038(v108, type metadata accessor for TTRTemplatePublicLinkData);
      v31 = &qword_27CE66850;
      v32 = &unk_21DC3D2D0;
      goto LABEL_93;
    }

    sub_21D107038(v108, type metadata accessor for TTRTemplatePublicLinkData);
LABEL_92:
    v31 = &qword_27CE66938;
    v32 = &qword_21DC3F1B8;
LABEL_93:
    v33 = v113;
    goto LABEL_7;
  }

  if (v92(v113 + v90, 1, v109) != 1)
  {
    goto LABEL_92;
  }

  sub_21D0CF7E0(v113, &qword_27CE66850, &unk_21DC3D2D0);
LABEL_81:
  if (*(v124 + v35[26]) != *(v125 + v35[26]) || *(v124 + v35[27]) != *(v125 + v35[27]) || *(v124 + v35[28]) != *(v125 + v35[28]) || *(v124 + v35[29]) != *(v125 + v35[29]) || *(v124 + v35[30]) != *(v125 + v35[30]))
  {
    goto LABEL_42;
  }

  LOBYTE(v46) = 0;
  v93 = v35[31];
  v94 = v124 + v93;
  v95 = *(v124 + v93);
  v96 = (v125 + v93);
  if (v95 == *v96 && ((*(v94 + 1) ^ v96[1]) & 1) == 0 && ((*(v94 + 2) ^ v96[2]) & 1) == 0)
  {
    LOBYTE(v46) = *(v124 + v35[32]) ^ *(v125 + v35[32]) ^ 1;
  }

  return v46 & 1;
}

uint64_t sub_21DB10404(uint64_t *a1, void *a2, unint64_t *a3, void *a4)
{
  v6 = a1[2];
  v7 = a2[2];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (v9 = sub_21DBFC64C(), result = 0, (v9 & 1) != 0))
  {
    if (v6)
    {
      if (v7)
      {
        sub_21D0D8CF0(0, a3, a4);
        v11 = v7;
        v12 = v6;
        v13 = sub_21DBFB63C();

        if (v13)
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC12LocationDataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v20 = *(a2 + 40);
    v21 = *(a1 + 40);
    v22 = *(a1 + 32);
    v18 = *(a2 + 48);
    v19 = *(a1 + 48);
    sub_21D0D8CF0(0, &qword_280D17688, 0x277D755B8);
    v11 = v7;
    v12 = v3;
    v13 = sub_21DBFB63C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v20 = *(a2 + 40);
    v21 = *(a1 + 40);
    v22 = *(a1 + 32);
    v18 = *(a2 + 48);
    v19 = *(a1 + 48);
    if (v7)
    {
      return 0;
    }
  }

  if (v2)
  {
    if (!v6)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
    v14 = v6;
    v15 = v2;
    v16 = sub_21DBFB63C();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4 == v8 && v5 == v9 || (sub_21DBFC64C()) && (v22 == v10 && v21 == v20 || (sub_21DBFC64C()))
  {
    return v19 ^ v18 ^ 1u;
  }

  return 0;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC18SectionHeaderTitleV9TextStyleO2eeoiySbAG_AGtFZ_0(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  LODWORD(v15) = *(a2 + 48);
  v16 = v8 >> 6;
  v68 = v5;
  if (v8 >> 6 > 1)
  {
    v65 = *(a1 + 48);
    if (v16 != 2)
    {
      v34 = *(a1 + 40);
      v66 = *(a1 + 8);
      v67 = *a1;
      v35 = *(a1 + 32);
      v36 = *(a1 + 24);
      if (v15 >= 0xC0 && !(v9 | v10 | v12 | v11 | v14 | v13) && v15 == 192)
      {
        sub_21D179EF0(v3, v2, v68, v4, v6, v7, v65);
        sub_21D179EF0(0, 0, v12, v11, v14, v13, 0xC0u);
        return 1;
      }

      goto LABEL_20;
    }

    if ((v15 & 0xC0) != 0x80)
    {
      v34 = *(a1 + 40);
      v66 = *(a1 + 8);
      v67 = *a1;
      v35 = *(a1 + 32);
      v36 = *(a1 + 24);
      v40 = *(a2 + 48);
      v15 = a2[1];
      sub_21DBF8E0C();
      goto LABEL_19;
    }

    v58 = *(a1 + 40);
    v60 = a2[5];
    v29 = *(a1 + 32);
    v62 = *(a1 + 24);
    if (__PAIR128__(v2, v3) == __PAIR128__(v9, v10))
    {
      v54 = a2[4];
      v30 = *(a1 + 8);
      sub_21D2A7DB4(v3, v2, v12, v11, v14, a2[5], v15);
      v31 = v29;
      sub_21D2A7DB4(v3, v30, v5, v62, v29, v58, v65);
      sub_21D179EF0(v3, v30, v5, v62, v29, v58, v65);
      v32 = v11;
      v33 = v54;
      sub_21D179EF0(v3, v30, v12, v11, v54, v60, v15);
    }

    else
    {
      v45 = a2[2];
      v56 = a2[1];
      v46 = *a2;
      v47 = a2[3];
      v64 = v47;
      v48 = a2[4];
      v49 = a2[5];
      v50 = *(a1 + 8);
      v51 = sub_21DBFC64C();
      sub_21D2A7DB4(v46, v56, v45, v47, v48, v49, v15);
      v31 = v29;
      sub_21D2A7DB4(v3, v50, v68, v62, v29, v58, v65);
      sub_21D179EF0(v3, v50, v68, v62, v29, v58, v65);
      v12 = v45;
      v32 = v64;
      v33 = v48;
      sub_21D179EF0(v46, v56, v45, v64, v48, v60, v15);
      v28 = 0;
      if ((v51 & 1) == 0)
      {
        return v28;
      }
    }

    if (v31)
    {
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v33 & 1) != 0 || v68 != v12 || v62 != v32)
    {
      return 0;
    }

    return 1;
  }

  v66 = *(a1 + 8);
  v67 = *a1;
  if (v16)
  {
    v65 = *(a1 + 48);
    v34 = *(a1 + 40);
    v35 = *(a1 + 32);
    v36 = *(a1 + 24);
    if ((v15 & 0xC0) != 0x40)
    {
LABEL_20:
      v41 = v15;
      v42 = v15;
      v43 = v9;
      sub_21D2A7DB4(v10, v9, v12, v11, v14, v13, v41);
      sub_21D179EF0(v67, v66, v68, v36, v35, v34, v65);
      sub_21D179EF0(v10, v43, v12, v11, v14, v13, v42);
      return 0;
    }

    v37 = a2[5];
    v38 = a2[1];
    sub_21D179EF0(v3, v2, v68, v4, v6, v7, v65);
    sub_21D179EF0(v10, v38, v12, v11, v14, v37, v15);
    if (v68)
    {
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v12 & 1) != 0 || v3 != v10 || v66 != v38)
    {
      return 0;
    }

    return 1;
  }

  if (v15 >= 0x40)
  {
    v65 = *(a1 + 48);
    v39 = v8 & 1;
    v36 = *(a1 + 24);
    v35 = *(a1 + 32);
    v34 = *(a1 + 40);
    v40 = *(a2 + 48);
    v15 = a2[1];
    sub_21D0FB960(*a1, v2, *(a1 + 16), v4, v6, v7, v39);
LABEL_19:
    v9 = v15;
    LOBYTE(v15) = v40;
    goto LABEL_20;
  }

  v71[0] = *a1;
  v71[1] = v2;
  v71[2] = v5;
  v71[3] = v4;
  v71[4] = v6;
  v71[5] = v7;
  v72 = v8 & 1;
  v69[0] = v10;
  v69[1] = v9;
  v69[2] = v12;
  v69[3] = v11;
  v69[4] = v14;
  v69[5] = v13;
  v70 = v15 & 1;
  v17 = v10;
  v18 = v12;
  v19 = v10;
  v52 = v10;
  v53 = v14;
  v55 = v9;
  v61 = v4;
  v63 = v11;
  v20 = v11;
  v21 = v14;
  v22 = v6;
  v23 = v13;
  v59 = v13;
  v24 = v7;
  v25 = v2;
  v26 = v9;
  sub_21D2A7DB4(v17, v9, v18, v20, v21, v23, v15);
  sub_21D2A7DB4(v3, v25, v5, v61, v22, v24, v8);
  sub_21D2A7DB4(v19, v26, v18, v63, v53, v59, v15);
  v27 = v24;
  v57 = v24;
  sub_21D2A7DB4(v3, v25, v68, v61, v22, v24, v8);
  v28 = _s15RemindersUICore24TTRCrossDeviceIdentifierO2eeoiySbAC_ACtFZ_0(v71, v69);
  sub_21D179EF0(v3, v25, v68, v61, v22, v27, v8);
  sub_21D179EF0(v52, v55, v18, v63, v53, v59, v15);
  sub_21D179EF0(v52, v55, v18, v63, v53, v59, v15);
  sub_21D179EF0(v3, v66, v68, v61, v22, v57, v8);
  return v28;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC18SectionHeaderTitleV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a1[7];
  v8 = *(a1 + 64);
  v67 = *(a1 + 65);
  v65 = *(a1 + 66);
  v60 = *(a1 + 67);
  v48 = *(a1 + 68);
  v52 = a1[9];
  v53 = a1[10];
  v54 = a1[11];
  v55 = a1[12];
  v56 = a1[13];
  v63 = a1[14];
  v51 = *(a1 + 120);
  v45 = *(a1 + 121);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a2 + 64);
  v66 = *(a2 + 65);
  v64 = *(a2 + 66);
  v59 = *(a2 + 67);
  v57 = *(a2 + 72);
  v58 = *(a2 + 80);
  v49 = *(a2 + 96);
  v50 = *(a2 + 104);
  v61 = *(a2 + 88);
  v62 = *(a2 + 112);
  v46 = *(a2 + 120);
  v47 = *(a2 + 68);
  v44 = *(a2 + 121);
  if (*a1 != *a2 || a1[1] != *(a2 + 8))
  {
    v43 = *(a2 + 48);
    v16 = a1[6];
    v42 = *(a2 + 64);
    v40 = *(a2 + 40);
    v41 = *(a2 + 24);
    v17 = a1[5];
    v18 = *(a2 + 56);
    v19 = a1[7];
    v20 = *(a2 + 32);
    v21 = *(a2 + 16);
    v22 = *(a1 + 64);
    v23 = sub_21DBFC64C();
    v8 = v22;
    v10 = v21;
    v11 = v20;
    v7 = v19;
    v14 = v18;
    v5 = v16;
    v13 = v43;
    v6 = v17;
    v12 = v40;
    v9 = v41;
    v15 = v42;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v75 = v2;
  v76 = v3;
  v77 = v4;
  v78 = v6;
  v79 = v5;
  v80 = v7;
  v81 = v8;
  v68 = v10;
  v69 = v9;
  v70 = v11;
  v71 = v12;
  v72 = v13;
  v73 = v14;
  v74 = v15;
  sub_21D2A7DB4(v2, v3, v4, v6, v5, v7, v8);
  sub_21D2A7DB4(v10, v9, v11, v12, v13, v14, v15);
  v24 = _s15RemindersUICore25TTRRemindersListViewModelC18SectionHeaderTitleV9TextStyleO2eeoiySbAG_AGtFZ_0(&v75, &v68);
  sub_21D179EF0(v68, v69, v70, v71, v72, v73, v74);
  sub_21D179EF0(v75, v76, v77, v78, v79, v80, v81);
  result = 0;
  if (v24 && v67 == v66 && v65 == v64 && ((v60 ^ v59) & 1) == 0)
  {
    if (v48 == 2)
    {
      v27 = v62;
      v26 = v63;
      v29 = v55;
      v28 = v56;
      v31 = v53;
      v30 = v54;
      v32 = v52;
      v33 = v51;
      v35 = v49;
      v34 = v50;
      v36 = v61;
      v38 = v57;
      v37 = v58;
      if (v47 != 2)
      {
        return 0;
      }
    }

    else
    {
      v27 = v62;
      v26 = v63;
      v29 = v55;
      v28 = v56;
      v31 = v53;
      v30 = v54;
      v32 = v52;
      v33 = v51;
      v35 = v49;
      v34 = v50;
      v36 = v61;
      v38 = v57;
      v37 = v58;
      if (v48 == 3)
      {
        if (v47 != 3)
        {
          return 0;
        }
      }

      else if (v47 & 0xFE) == 2 || ((v47 ^ v48))
      {
        return 0;
      }
    }

    if (v33 == 255)
    {
      sub_21DB15AE4(v32, v31, v30, v29, v28, v26, 255);
      if (v46 == 255)
      {
        sub_21DB15AE4(v38, v37, v61, v35, v34, v62, 255);
        sub_21D66A604(v32, v31, v30, v29, v28, v63, 255);
        return v45 ^ v44 ^ 1u;
      }

      sub_21DB15AE4(v38, v37, v61, v35, v34, v62, v46);
    }

    else
    {
      v75 = v32;
      v76 = v31;
      v77 = v30;
      v78 = v29;
      v79 = v28;
      v80 = v26;
      v81 = v33;
      if (v46 != 255)
      {
        v68 = v38;
        v69 = v58;
        v70 = v36;
        v71 = v35;
        v72 = v34;
        v73 = v27;
        v74 = v46 & 1;
        sub_21DB15AE4(v32, v31, v30, v29, v28, v26, v33);
        sub_21DB15AE4(v57, v58, v61, v35, v34, v62, v46);
        sub_21DB15AE4(v32, v31, v30, v29, v28, v63, v33);
        v39 = _s15RemindersUICore24TTRCrossDeviceIdentifierO2eeoiySbAC_ACtFZ_0(&v75, &v68);
        sub_21D1078C0(v68, v69, v70, v71, v72, v73, v74);
        sub_21D1078C0(v75, v76, v77, v78, v79, v80, v81);
        sub_21D66A604(v32, v31, v30, v29, v28, v63, v33);
        if (!v39)
        {
          return 0;
        }

        return v45 ^ v44 ^ 1u;
      }

      sub_21DB15AE4(v32, v31, v30, v29, v28, v26, v33);
      v37 = v58;
      sub_21DB15AE4(v38, v58, v61, v35, v34, v62, 255);
      sub_21DB15AE4(v32, v31, v30, v29, v28, v63, v33);
      sub_21D1078C0(v32, v31, v30, v29, v28, v63, v33 & 1);
    }

    sub_21D66A604(v32, v31, v30, v29, v28, v63, v33);
    sub_21D66A604(v38, v37, v61, v35, v34, v62, v46);
    return 0;
  }

  return result;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC13SectionHeaderV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v5 = (a1 + v4[5]);
  v6 = v5[3];
  v7 = v5[5];
  v91 = v5[4];
  v92 = v7;
  v8 = v5[5];
  v93[0] = v5[6];
  *(v93 + 10) = *(v5 + 106);
  v9 = v5[1];
  v10 = v5[3];
  v89 = v5[2];
  v90 = v10;
  v11 = *v5;
  v12 = *v5;
  v88[1] = v5[1];
  v88[0] = v11;
  v13 = (a2 + v4[5]);
  v15 = v13[1];
  v14 = v13[2];
  v16 = v14;
  v94[3] = v13[3];
  v94[2] = v14;
  *(v95 + 10) = *(v13 + 106);
  v17 = v13[5];
  v95[0] = v13[6];
  v19 = v13[3];
  v18 = v13[4];
  v20 = v18;
  v94[5] = v13[5];
  v94[4] = v18;
  v21 = *v13;
  v22 = *v13;
  v94[1] = v13[1];
  v94[0] = v21;
  v23 = v5[5];
  v78 = v5[4];
  v79 = v23;
  *v80 = v5[6];
  *&v80[10] = *(v5 + 106);
  v24 = v5[1];
  v74 = *v5;
  v75 = v24;
  v25 = v5[3];
  v76 = v5[2];
  v77 = v25;
  v83 = v16;
  v82 = v15;
  v81 = v22;
  *(v87 + 10) = *(v13 + 106);
  v87[0] = v13[6];
  v86 = v17;
  v84 = v19;
  v85 = v20;
  v96[2] = v89;
  v96[3] = v6;
  v96[0] = v12;
  v96[1] = v9;
  v26 = v5[6];
  *&v97[10] = *(v5 + 106);
  v96[5] = v8;
  *v97 = v26;
  v96[4] = v91;
  if (sub_21D1D9A6C(v96) != 1)
  {
    v71 = v78;
    v72 = v79;
    v73[0] = *v80;
    *(v73 + 10) = *&v80[10];
    v67 = v74;
    v68 = v75;
    v69 = v76;
    v70 = v77;
    v48 = v76;
    v49 = v77;
    v46 = v74;
    v47 = v75;
    *(v52 + 10) = *&v80[10];
    v51 = v79;
    v52[0] = *v80;
    v50 = v78;
    v55 = v83;
    v56 = v84;
    v53 = v81;
    v54 = v82;
    *&v59[10] = *(v87 + 10);
    v58 = v86;
    *v59 = v87[0];
    v57 = v85;
    if (sub_21D1D9A6C(&v53) != 1)
    {
      v43 = v85;
      v44 = v86;
      v45[0] = v87[0];
      *(v45 + 10) = *(v87 + 10);
      v39 = v81;
      v40 = v82;
      v41 = v83;
      v42 = v84;
      sub_21D0D3954(v88, v37, &qword_27CE5B090, &qword_21DC3CC30);
      sub_21D0D3954(v94, v37, &qword_27CE5B090, &qword_21DC3CC30);
      sub_21D0D3954(&v67, v37, &qword_27CE5B090, &qword_21DC3CC30);
      v27 = _s15RemindersUICore25TTRRemindersListViewModelC18SectionHeaderTitleV2eeoiySbAE_AEtFZ_0(&v46, &v39);
      v35[4] = v43;
      v35[5] = v44;
      v36[0] = v45[0];
      *(v36 + 10) = *(v45 + 10);
      v35[0] = v39;
      v35[1] = v40;
      v35[2] = v41;
      v35[3] = v42;
      sub_21D179E9C(v35);
      v37[4] = v50;
      v37[5] = v51;
      v38[0] = v52[0];
      *(v38 + 10) = *(v52 + 10);
      v37[0] = v46;
      v37[1] = v47;
      v37[2] = v48;
      v37[3] = v49;
      sub_21D179E9C(v37);
      v43 = v78;
      v44 = v79;
      v45[0] = *v80;
      *(v45 + 10) = *&v80[10];
      v39 = v74;
      v40 = v75;
      v41 = v76;
      v42 = v77;
      sub_21D0CF7E0(&v39, &qword_27CE5B090, &qword_21DC3CC30);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    v43 = v78;
    v44 = v79;
    v45[0] = *v80;
    *(v45 + 10) = *&v80[10];
    v39 = v74;
    v40 = v75;
    v41 = v76;
    v42 = v77;
    sub_21D0D3954(v88, v37, &qword_27CE5B090, &qword_21DC3CC30);
    sub_21D0D3954(v94, v37, &qword_27CE5B090, &qword_21DC3CC30);
    sub_21D0D3954(&v67, v37, &qword_27CE5B090, &qword_21DC3CC30);
    sub_21D179E9C(&v39);
LABEL_8:
    v64 = v85;
    v65 = v86;
    v66[0] = v87[0];
    *(v66 + 10) = *(v87 + 10);
    v60 = v81;
    v61 = v82;
    v62 = v83;
    v63 = v84;
    v57 = v78;
    v58 = v79;
    *v59 = *v80;
    *&v59[16] = *&v80[16];
    v53 = v74;
    v54 = v75;
    v55 = v76;
    v56 = v77;
    sub_21D0CF7E0(&v53, &qword_27CE66970, &unk_21DC3F208);
    return 0;
  }

  v57 = v85;
  v58 = v86;
  *v59 = v87[0];
  *&v59[10] = *(v87 + 10);
  v53 = v81;
  v54 = v82;
  v55 = v83;
  v56 = v84;
  if (sub_21D1D9A6C(&v53) != 1)
  {
    sub_21D0D3954(v88, &v67, &qword_27CE5B090, &qword_21DC3CC30);
    sub_21D0D3954(v94, &v67, &qword_27CE5B090, &qword_21DC3CC30);
    goto LABEL_8;
  }

  v71 = v78;
  v72 = v79;
  v73[0] = *v80;
  *(v73 + 10) = *&v80[10];
  v67 = v74;
  v68 = v75;
  v69 = v76;
  v70 = v77;
  sub_21D0D3954(v88, &v46, &qword_27CE5B090, &qword_21DC3CC30);
  sub_21D0D3954(v94, &v46, &qword_27CE5B090, &qword_21DC3CC30);
  sub_21D0CF7E0(&v67, &qword_27CE5B090, &qword_21DC3CC30);
LABEL_10:
  if (*(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]) || *(a1 + v4[9]) != *(a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]))
  {
    return 0;
  }

  v29 = v4[11];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30)
  {
    if (v31)
    {
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v32 = v31;
      v33 = v30;
      v34 = sub_21DBFB63C();

      if (v34)
      {
        return 1;
      }
    }
  }

  else if (!v31)
  {
    return 1;
  }

  return 0;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC14AssignmentDataV2eeoiySbAE_AEtFZ_0(__int128 *a1, uint64_t a2)
{
  v4 = a1[11];
  v5 = a1[9];
  v154 = a1[10];
  v155 = v4;
  v6 = a1[11];
  v7 = a1[13];
  v156 = a1[12];
  v157 = v7;
  v8 = a1[7];
  v9 = a1[5];
  v150 = a1[6];
  v151 = v8;
  v10 = a1[7];
  v11 = a1[9];
  v152 = a1[8];
  v153 = v11;
  v12 = a1[3];
  v13 = a1[1];
  v146 = a1[2];
  v147 = v12;
  v14 = a1[3];
  v15 = a1[5];
  v148 = a1[4];
  v149 = v15;
  v16 = a1[1];
  v145[0] = *a1;
  v145[1] = v16;
  v17 = *(a2 + 176);
  v18 = *(a2 + 144);
  v167 = *(a2 + 160);
  v168 = v17;
  v19 = *(a2 + 176);
  v20 = *(a2 + 208);
  v169 = *(a2 + 192);
  v170 = v20;
  v21 = *(a2 + 112);
  v22 = *(a2 + 80);
  v163 = *(a2 + 96);
  v164 = v21;
  v23 = *(a2 + 112);
  v24 = *(a2 + 144);
  v165 = *(a2 + 128);
  v166 = v24;
  v25 = *(a2 + 48);
  v26 = *(a2 + 16);
  v159 = *(a2 + 32);
  v160 = v25;
  v27 = *(a2 + 48);
  v28 = *(a2 + 80);
  v161 = *(a2 + 64);
  v162 = v28;
  v29 = *(a2 + 16);
  v158[0] = *a2;
  v158[1] = v29;
  v30 = a1[11];
  __src[10] = a1[10];
  __src[11] = v30;
  v31 = a1[13];
  __src[12] = a1[12];
  __src[13] = v31;
  v32 = a1[7];
  __src[6] = a1[6];
  __src[7] = v32;
  v33 = a1[9];
  __src[8] = a1[8];
  __src[9] = v33;
  v34 = a1[3];
  __src[2] = a1[2];
  __src[3] = v34;
  v35 = a1[5];
  __src[4] = a1[4];
  __src[5] = v35;
  v36 = a1[1];
  __src[0] = *a1;
  __src[1] = v36;
  __src[24] = v167;
  __src[25] = v19;
  v37 = *(a2 + 208);
  __src[26] = v169;
  __src[27] = v37;
  __src[20] = v163;
  __src[21] = v23;
  __src[22] = v165;
  __src[23] = v18;
  __src[16] = v159;
  __src[17] = v27;
  __src[18] = v161;
  __src[19] = v22;
  __src[14] = v158[0];
  __src[15] = v26;
  v171[10] = v154;
  v171[11] = v6;
  v38 = a1[13];
  v171[12] = v156;
  v171[13] = v38;
  v171[6] = v150;
  v171[7] = v10;
  v171[8] = v152;
  v171[9] = v5;
  v171[2] = v146;
  v171[3] = v14;
  v171[4] = v148;
  v171[5] = v9;
  v39 = *(a1 + 28);
  v40 = *(a2 + 224);
  v171[0] = v145[0];
  v171[1] = v13;
  if (sub_21D157494(v171) != 1)
  {
    v55 = a1[11];
    v56 = a1[9];
    v140 = a1[10];
    v141 = v55;
    v57 = a1[11];
    v58 = a1[13];
    v142 = a1[12];
    v143 = v58;
    v59 = a1[7];
    v60 = a1[5];
    v136 = a1[6];
    v137 = v59;
    v61 = a1[7];
    v62 = a1[9];
    v138 = a1[8];
    v139 = v62;
    v63 = a1[3];
    v64 = a1[1];
    v132 = a1[2];
    v133 = v63;
    v65 = a1[3];
    v66 = a1[5];
    v134 = a1[4];
    v135 = v66;
    v67 = a1[1];
    v130 = *a1;
    v131 = v67;
    v125 = v140;
    v126 = v57;
    v68 = a1[13];
    v127 = v142;
    v128 = v68;
    v121 = v136;
    v122 = v61;
    v123 = v138;
    v124 = v56;
    v117 = v132;
    v118 = v65;
    v119 = v134;
    v120 = v60;
    v115 = v130;
    v116 = v64;
    v69 = *(a2 + 176);
    __dst[10] = *(a2 + 160);
    __dst[11] = v69;
    v70 = *(a2 + 208);
    __dst[12] = *(a2 + 192);
    __dst[13] = v70;
    v71 = *(a2 + 112);
    __dst[6] = *(a2 + 96);
    __dst[7] = v71;
    v72 = *(a2 + 144);
    __dst[8] = *(a2 + 128);
    __dst[9] = v72;
    v73 = *(a2 + 48);
    __dst[2] = *(a2 + 32);
    __dst[3] = v73;
    v74 = *(a2 + 80);
    __dst[4] = *(a2 + 64);
    __dst[5] = v74;
    v75 = *(a2 + 16);
    __dst[0] = *a2;
    __dst[1] = v75;
    if (sub_21D157494(__dst) != 1)
    {
      v84 = *(a2 + 176);
      v111 = *(a2 + 160);
      v112 = v84;
      v85 = *(a2 + 208);
      v113 = *(a2 + 192);
      v114 = v85;
      v86 = *(a2 + 112);
      v107 = *(a2 + 96);
      v108 = v86;
      v87 = *(a2 + 144);
      v109 = *(a2 + 128);
      v110 = v87;
      v88 = *(a2 + 48);
      v103 = *(a2 + 32);
      v104 = v88;
      v89 = *(a2 + 80);
      v105 = *(a2 + 64);
      v106 = v89;
      v90 = *(a2 + 16);
      v101 = *a2;
      v102 = v90;
      sub_21D0D3954(v145, v100, &qword_27CE608E0, &qword_21DC25DE8);
      sub_21D0D3954(v158, v100, &qword_27CE608E0, &qword_21DC25DE8);
      sub_21D0D3954(&v130, v100, &qword_27CE608E0, &qword_21DC25DE8);
      v91 = _s15RemindersUICore13TTRAssignmentV2eeoiySbAC_ACtFZ_0(&v115, &v101);
      v99[10] = v111;
      v99[11] = v112;
      v99[12] = v113;
      v99[13] = v114;
      v99[6] = v107;
      v99[7] = v108;
      v99[8] = v109;
      v99[9] = v110;
      v99[2] = v103;
      v99[3] = v104;
      v99[4] = v105;
      v99[5] = v106;
      v99[0] = v101;
      v99[1] = v102;
      sub_21D30DA58(v99);
      v100[10] = v125;
      v100[11] = v126;
      v100[12] = v127;
      v100[13] = v128;
      v100[6] = v121;
      v100[7] = v122;
      v100[8] = v123;
      v100[9] = v124;
      v100[2] = v117;
      v100[3] = v118;
      v100[4] = v119;
      v100[5] = v120;
      v100[0] = v115;
      v100[1] = v116;
      sub_21D30DA58(v100);
      v92 = a1[11];
      v111 = a1[10];
      v112 = v92;
      v93 = a1[13];
      v113 = a1[12];
      v114 = v93;
      v94 = a1[7];
      v107 = a1[6];
      v108 = v94;
      v95 = a1[9];
      v109 = a1[8];
      v110 = v95;
      v96 = a1[3];
      v103 = a1[2];
      v104 = v96;
      v97 = a1[5];
      v105 = a1[4];
      v106 = v97;
      v98 = a1[1];
      v101 = *a1;
      v102 = v98;
      sub_21D0CF7E0(&v101, &qword_27CE608E0, &qword_21DC25DE8);
      if (v91)
      {
        return v39 == v40;
      }

      return 0;
    }

    v76 = a1[11];
    v111 = a1[10];
    v112 = v76;
    v77 = a1[13];
    v113 = a1[12];
    v114 = v77;
    v78 = a1[7];
    v107 = a1[6];
    v108 = v78;
    v79 = a1[9];
    v109 = a1[8];
    v110 = v79;
    v80 = a1[3];
    v103 = a1[2];
    v104 = v80;
    v81 = a1[5];
    v105 = a1[4];
    v106 = v81;
    v82 = a1[1];
    v101 = *a1;
    v102 = v82;
    sub_21D0D3954(v145, v100, &qword_27CE608E0, &qword_21DC25DE8);
    sub_21D0D3954(v158, v100, &qword_27CE608E0, &qword_21DC25DE8);
    sub_21D0D3954(&v130, v100, &qword_27CE608E0, &qword_21DC25DE8);
    sub_21D30DA58(&v101);
LABEL_7:
    memcpy(__dst, __src, sizeof(__dst));
    sub_21D0CF7E0(__dst, &qword_27CE66968, &qword_21DC3F200);
    return 0;
  }

  v41 = *(a2 + 176);
  __dst[10] = *(a2 + 160);
  __dst[11] = v41;
  v42 = *(a2 + 208);
  __dst[12] = *(a2 + 192);
  __dst[13] = v42;
  v43 = *(a2 + 112);
  __dst[6] = *(a2 + 96);
  __dst[7] = v43;
  v44 = *(a2 + 144);
  __dst[8] = *(a2 + 128);
  __dst[9] = v44;
  v45 = *(a2 + 48);
  __dst[2] = *(a2 + 32);
  __dst[3] = v45;
  v46 = *(a2 + 80);
  __dst[4] = *(a2 + 64);
  __dst[5] = v46;
  v47 = *(a2 + 16);
  __dst[0] = *a2;
  __dst[1] = v47;
  if (sub_21D157494(__dst) != 1)
  {
    sub_21D0D3954(v145, &v130, &qword_27CE608E0, &qword_21DC25DE8);
    sub_21D0D3954(v158, &v130, &qword_27CE608E0, &qword_21DC25DE8);
    goto LABEL_7;
  }

  v48 = a1[11];
  v140 = a1[10];
  v141 = v48;
  v49 = a1[13];
  v142 = a1[12];
  v143 = v49;
  v50 = a1[7];
  v136 = a1[6];
  v137 = v50;
  v51 = a1[9];
  v138 = a1[8];
  v139 = v51;
  v52 = a1[3];
  v132 = a1[2];
  v133 = v52;
  v53 = a1[5];
  v134 = a1[4];
  v135 = v53;
  v54 = a1[1];
  v130 = *a1;
  v131 = v54;
  sub_21D0D3954(v145, &v115, &qword_27CE608E0, &qword_21DC25DE8);
  sub_21D0D3954(v158, &v115, &qword_27CE608E0, &qword_21DC25DE8);
  sub_21D0CF7E0(&v130, &qword_27CE608E0, &qword_21DC25DE8);
  return v39 == v40;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC14LinkAttachmentV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if (sub_21DBFB63C())
  {
    v4 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0);
    if (sub_21DBF544C())
    {
      v5 = *(v4 + 24);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);
      if (v6)
      {
        if (v7)
        {
          sub_21D0D8CF0(0, &qword_280D17838, 0x277CD46C8);
          v8 = v7;
          v9 = v6;
          v10 = sub_21DBFB63C();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}