void sub_218DE5CEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v63 = a5;
  v61 = a4;
  v62 = a3;
  v58 = a2;
  v6 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v59);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEF8A4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00(0);
  v17 = v16;
  sub_219BE6934();
  v18 = sub_2193B4730();

  if (!v18)
  {
    v23 = a1;
    v24 = v70;
    goto LABEL_8;
  }

  v19 = [v18 identifier];
  swift_unknownObjectRelease();
  v56 = sub_219BF5414();
  v60 = v20;

  v57 = v17;
  v21 = a1;
  sub_219BE6934();
  if (((v68 >> 58) & 0x3C | (v68 >> 1) & 3) == 1)
  {
    v22 = swift_projectBox();
    sub_218853560(v22, v11, type metadata accessor for CuratedTodayFeedGroup);
    (*(v13 + 16))(v15, &v11[*(v59 + 28)], v12);
    sub_2188536F8(v11, type metadata accessor for CuratedTodayFeedGroup);
  }

  else
  {
    (*(v13 + 104))(v15, *MEMORY[0x277D32768], v12);
  }

  v24 = v70;

  v25 = sub_219BEF894();
  (*(v13 + 8))(v15, v12);
  v23 = v21;
  v17 = v57;
  if ((v25 & 1) == 0)
  {
    v37 = *(v64 + 40);
    v38 = [v37 mutedTagIDs];
    if (v38)
    {
      v39 = v38;
      v40 = sub_219BF5D44();

      v41 = v56;
      v42 = v60;
      LOBYTE(v39) = sub_2188537B8(v56, v60, v40);

      if (v39)
      {
        type metadata accessor for TodaySectionFactoryError(0);
        sub_2186EF9CC(&qword_27CC12258, type metadata accessor for TodaySectionFactoryError, &unk_219C3A0D4);
        swift_allocError();
        *v43 = v41;
        v43[1] = v42;
LABEL_27:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return;
      }

      v51 = [v37 ignoredTagIDs];
      v24 = v70;
      if (v51)
      {
        v52 = v51;
        v53 = sub_219BF5D44();

        v54 = v60;
        LOBYTE(v52) = sub_2188537B8(v56, v60, v53);

        if (v52)
        {
          type metadata accessor for TodaySectionFactoryError(0);
          sub_2186EF9CC(&qword_27CC12258, type metadata accessor for TodaySectionFactoryError, &unk_219C3A0D4);
          swift_allocError();
          *v55 = v56;
          v55[1] = v54;
          goto LABEL_27;
        }

        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_7:

LABEL_8:
  sub_219BE6934();
  v26 = v65;
  if (((v68 >> 58) & 0x3C | (v68 >> 1) & 3) == 0x16)
  {
    v27 = swift_projectBox();
    sub_218853560(v27, v24, type metadata accessor for ShortcutsTodayFeedGroup);

    if (v61)
    {
      v68 = sub_2188538B0(MEMORY[0x277D84F90]);
      v28 = v62;
      sub_218DDE044(v62, &v68);
      sub_219BE6934();
      sub_218DE14BC(v66, v24, v58, v28, v68, v63);

      sub_2188536F8(v24, type metadata accessor for ShortcutsTodayFeedGroup);

      return;
    }

    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v44 = qword_280F616D8;
    v45 = sub_219BF61F4();
    sub_2186E7F54(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_219C09BA0;
    v68 = 0;
    v69 = 0xE000000000000000;
    v66 = v62;
    v67 = 0;
    sub_219BF7484();
    v47 = v68;
    v48 = v69;
    *(v46 + 56) = MEMORY[0x277D837D0];
    *(v46 + 64) = sub_2186FC3BC();
    *(v46 + 32) = v47;
    *(v46 + 40) = v48;
    sub_219BE5314("TodaySectionFactory unable to reload section shortcut, invalid TodayRebuildRequest: %@. Will return unchanged section before rebuild call", 137, 2, &dword_2186C1000, v44, v45, v46);

    v35 = type metadata accessor for ShortcutsTodayFeedGroup;
    v36 = v24;
    goto LABEL_22;
  }

  sub_219BE6934();
  if (((v68 >> 58) & 0x3C | (v68 >> 1) & 3) != 0x18)
  {

    type metadata accessor for TodaySectionFactoryError(0);
    sub_2186EF9CC(&qword_27CC12258, type metadata accessor for TodaySectionFactoryError, &unk_219C3A0D4);
    swift_allocError();
    v50 = v49;
    sub_219BE6934();
    *v50 = v68;
    goto LABEL_27;
  }

  v29 = swift_projectBox();
  sub_218853560(v29, v26, type metadata accessor for SavedStoriesTodayFeedGroup);

  if (v61)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v30 = qword_280F616D8;
    v31 = sub_219BF61F4();
    sub_2186E7F54(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_219C09BA0;
    v68 = 0;
    v69 = 0xE000000000000000;
    v66 = v62;
    v67 = 1;
    sub_219BF7484();
    v33 = v68;
    v34 = v69;
    *(v32 + 56) = MEMORY[0x277D837D0];
    *(v32 + 64) = sub_2186FC3BC();
    *(v32 + 32) = v33;
    *(v32 + 40) = v34;
    sub_219BE5314("TodaySectionFactory unable to reload section shortcut, invalid TodayRebuildRequest: %@. Will return unchanged section before rebuild call", 137, 2, &dword_2186C1000, v30, v31, v32);

    v35 = type metadata accessor for SavedStoriesTodayFeedGroup;
    v36 = v65;
LABEL_22:
    sub_2188536F8(v36, v35);
    (*(*(v17 - 8) + 16))(v63, v23, v17);
    return;
  }

  sub_219BE6934();
  sub_218DE2454(v68, v26, v58, v62, v63);

  sub_2188536F8(v26, type metadata accessor for SavedStoriesTodayFeedGroup);
}

uint64_t sub_218DE66E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v88 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v88);
  v87 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_2186E7F54(0, &qword_280EE6510, MEMORY[0x277D318F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v83 = &v66 - v8;
  v76 = sub_219BDBD64();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE35B4();
  MEMORY[0x28223BE20](v10 - 8);
  v79 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEEC14();
  v85 = *(v12 - 8);
  v86 = v12;
  MEMORY[0x28223BE20](v12);
  v84 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E7F54(0, &unk_280EE6610, MEMORY[0x277D31680], v6);
  MEMORY[0x28223BE20](v14 - 8);
  v70 = &v66 - v15;
  v92 = sub_219BE3794();
  v82 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v72 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v89 = &v66 - v18;
  sub_2186E7F54(0, &qword_280EE65C0, MEMORY[0x277D31758], v6);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v66 - v20;
  v22 = sub_219BE38C4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v71 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v91 = &v66 - v26;
  sub_2186E7F54(0, &unk_280EE6660, MEMORY[0x277D31550], v6);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v66 - v28;
  v30 = sub_219BE3514();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v69 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v66 - v34;
  sub_2186F687C(0);
  v68 = v36;
  v78 = a1;
  sub_219BEDD14();

  sub_219BE34E4();
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_218DE75EC(v29, &unk_280EE6660, MEMORY[0x277D31550]);
    sub_218853400(0);
    v38 = v37;
    v39 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
    v40 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
    return MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v38, v39, v40);
  }

  else
  {
    v42 = *(v31 + 32);
    v77 = v30;
    v42(v35, v29, v30);
    __swift_project_boxed_opaque_existential_1(a2 + 6, a2[9]);
    sub_219BE3AC4();
    v43 = *(v23 + 48);
    v44 = v43(v21, 1, v22);
    v80 = v23;
    v81 = v22;
    if (v44 == 1)
    {
      (*(v23 + 104))(v91, *MEMORY[0x277D31738], v22);
      v45 = v43(v21, 1, v22);
      v46 = v82;
      if (v45 != 1)
      {
        sub_218DE75EC(v21, &qword_280EE65C0, MEMORY[0x277D31758]);
      }
    }

    else
    {
      (*(v23 + 32))(v91, v21, v22);
      v46 = v82;
    }

    __swift_project_boxed_opaque_existential_1(a2 + 6, a2[9]);
    v47 = v70;
    v48 = v35;
    sub_219BE3AD4();
    v49 = *(v46 + 48);
    v50 = v92;
    v51 = v49(v47, 1, v92);
    v75 = v31;
    if (v51 == 1)
    {
      (*(v46 + 104))(v89, *MEMORY[0x277D31670], v50);
      v52 = v46;
      if (v49(v47, 1, v50) != 1)
      {
        sub_218DE75EC(v47, &unk_280EE6610, MEMORY[0x277D31680]);
      }
    }

    else
    {
      (*(v46 + 32))(v89, v47, v50);
      v52 = v46;
    }

    __swift_project_boxed_opaque_existential_1(a2 + 6, a2[9]);
    v82 = sub_219BE3AE4();
    v70 = v53;
    sub_219BEDD14();

    __swift_project_boxed_opaque_existential_1(a2 + 6, a2[9]);
    sub_219BE3A74();
    v67 = v48;
    v78 = sub_219BE34F4();
    v68 = v54;
    v55 = v73;
    sub_219BDBD54();
    sub_219BDBD44();
    (*(v74 + 8))(v55, v76);
    (*(v75 + 16))(v69, v48, v77);
    (*(v80 + 16))(v71, v91, v81);
    v56 = v89;
    (*(v52 + 16))(v72, v89, v92);
    v57 = sub_219BE3C04();
    (*(*(v57 - 8) + 56))(v83, 1, 1, v57);
    sub_219BE3544();
    v58 = v84;
    sub_219BEEBD4();
    sub_2186E7F54(0, &qword_280E8BFF0, sub_218853400, MEMORY[0x277D84560]);
    sub_218853400(0);
    v60 = v59;
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_219C09BA0;
    v63 = v85;
    v62 = v86;
    (*(v85 + 16))(v87, v58, v86);
    swift_storeEnumTagMultiPayload();
    sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    sub_219BE5FB4();
    v64 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
    v65 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9150](v61, v60, v64, v65);
    (*(v63 + 8))(v58, v62);
    (*(v52 + 8))(v56, v92);
    (*(v80 + 8))(v91, v81);
    return (*(v75 + 8))(v67, v77);
  }
}

uint64_t sub_218DE7384@<X0>(uint64_t a4@<X8>)
{
  v11[1] = a4;
  v4 = MEMORY[0x277D32F30];
  sub_2186E7F54(0, &qword_280E90EB0, MEMORY[0x277D32F30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v8);
  v9 = sub_219BF0744();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_219BEE194();
  sub_218DE75EC(v7, &qword_280E90EB0, v4);
  swift_storeEnumTagMultiPayload();
  sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
  return sub_219BE5FB4();
}

uint64_t type metadata accessor for TodaySectionFactoryError(uint64_t a1)
{
  result = qword_27CC12298;
  if (!qword_27CC12298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218DE75EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186E7F54(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218DE76AC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  v5 = v2[33];
  v6 = v2[34];
  __swift_project_boxed_opaque_existential_1(v2 + 30, v5);
  return (*(v6 + 48))(v3, v4, v5, v6) & 1;
}

uint64_t sub_218DE7728(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2186E7F54(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218DE778C(uint64_t a1)
{
  result = type metadata accessor for MagazineFeedGroup(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218DE7808(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_218DE7850(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SystemNotificationsRouteModel.identifier.getter()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    v4 = v0[1];
    sub_219BF7314();

    strcpy(v6, "channel(tagID:");
    HIBYTE(v6[1]) = -18;
    MEMORY[0x21CECC330](v1, v4);
LABEL_11:
    MEMORY[0x21CECC330](41, 0xE100000000000000);
    return v6[0];
  }

  if (*(v0 + 16) == 1)
  {
    sub_219BF7314();

    v6[0] = 0xD000000000000012;
    v6[1] = 0x8000000219CF9170;
    if (v1)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    MEMORY[0x21CECC330](v2, v3);

    goto LABEL_11;
  }

  return 0x746C7561666564;
}

uint64_t SystemNotificationsRouteModel.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    v4 = v0[1];
    sub_219BF7314();

    strcpy(v6, "channel(tagID:");
    HIBYTE(v6[1]) = -18;
    MEMORY[0x21CECC330](v1, v4);
LABEL_11:
    MEMORY[0x21CECC330](41, 0xE100000000000000);
    return v6[0];
  }

  if (*(v0 + 16) == 1)
  {
    sub_219BF7314();

    v6[0] = 0xD000000000000012;
    v6[1] = 0x8000000219CF9170;
    if (v1)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    MEMORY[0x21CECC330](v2, v3);

    goto LABEL_11;
  }

  return 0x746C7561666564;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI229SystemNotificationsRouteModelO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t type metadata accessor for MagazineTodayFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EB0108;
  if (!qword_280EB0108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218DE7C34(uint64_t a1)
{
  sub_218D61A68(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MagazineTodayFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186FEBD4(319);
      if (v3 <= 0x3F)
      {
        sub_2186CFDE4(319, qword_280E9C090, &protocol descriptor for TodayFeedEngagementEventHandlerType);
        if (v4 <= 0x3F)
        {
          sub_218735F3C();
          if (v5 <= 0x3F)
          {
            sub_2186CFDE4(319, qword_280ED3940, &protocol descriptor for HistoryServiceType);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_218DE7D38()
{
  sub_218D61A68(0);
  sub_219BEDD14();
  if (v5 != 255)
  {
    if (v5)
    {
      v0 = sub_219151874(v4);
      v1 = sub_2196887D0(v0);
      MEMORY[0x21CECC330](v1);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      sub_218D61D2C(v4, v5);
    }

    else
    {
      v2 = sub_2196887D0(v4);
      MEMORY[0x21CECC330](v2);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
    }
  }

  return 0x656E697A6167614DLL;
}

uint64_t sub_218DE7E24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v26 = a1;
  v27 = a2;
  v4 = type metadata accessor for MagazineTodayFeedGroupEmitter(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DEC39C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = *(sub_218DE8130() + 2);

  if (v12)
  {
    v13 = __swift_project_boxed_opaque_existential_1((v3 + *(v4 + 28)), *(v3 + *(v4 + 28) + 24));
    v14 = sub_218DE8130();
    v15 = *v13;
    v16 = swift_allocObject();
    v25 = v3;
    *(v16 + 16) = v15;
    *(v16 + 24) = v14;

    sub_219BE3494();
    v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v3 = v25;
  }

  (*(v10 + 16))(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v9);
  sub_218DEC298(v3, v7, type metadata accessor for MagazineTodayFeedGroupEmitter);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = (v11 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  (*(v10 + 32))(v19 + v17, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  sub_218DEC430(v7, v19 + v18, type metadata accessor for MagazineTodayFeedGroupEmitter);
  sub_2186D8A50(0, &unk_280E92768, type metadata accessor for MagazineTodayFeedGroupEmitterCursor, MEMORY[0x277D31B60]);
  v21 = v20;
  swift_allocObject();
  result = sub_219BED434();
  v23 = v27;
  v27[3] = v21;
  *v23 = result;
  return result;
}

char *sub_218DE8130()
{
  sub_218D45728(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v29[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_219BE3514();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218B8773C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218D61A68(0);
  sub_219BEDD14();
  v14 = v40;
  if (v40 == 255 || (v40 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = v39;
  if (v39 >> 60 != 5)
  {
    v28 = v39;
LABEL_18:
    sub_218D61D2C(v28, v14);
    return MEMORY[0x277D84F90];
  }

  v16 = swift_projectBox();
  (*(v11 + 16))(v13, v16, v10);
  v34 = v15;
  sub_219BEDD14();
  v17 = *&v8[*(v6 + 36)];

  result = sub_218DEC010(v8, type metadata accessor for MyMagazinesMagazineFeedGroupConfigData);
  if (!v17)
  {
    (*(v11 + 8))(v13, v10);
    v28 = v34;
    goto LABEL_18;
  }

  v30 = v14;
  v31 = v13;
  v32 = v11;
  v33 = v10;
  v37 = *(v17 + 16);
  if (!v37)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_22:
    sub_218D61D2C(v34, v30);

    (*(v32 + 8))(v31, v33);
    return v24;
  }

  v19 = 0;
  v20 = (v4 + 48);
  v36 = v4;
  v21 = (v4 + 32);
  v22 = v17;
  v23 = v17 + 40;
  v24 = MEMORY[0x277D84F90];
  v35 = v22;
  while (v19 < *(v22 + 16))
  {

    sub_219BE34E4();
    if ((*v20)(v2, 1, v3) == 1)
    {
      result = sub_218DEC010(v2, sub_218D45728);
    }

    else
    {
      v25 = *v21;
      (*v21)(v38, v2, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_2191F7D30(0, *(v24 + 2) + 1, 1, v24);
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_2191F7D30((v26 > 1), v27 + 1, 1, v24);
      }

      *(v24 + 2) = v27 + 1;
      result = v25(&v24[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v27], v38, v3);
      v22 = v35;
    }

    ++v19;
    v23 += 16;
    if (v37 == v19)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218DE8580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineTodayFeedGroupEmitter(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DEC39C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_2186D8A50(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_219BF5BF4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v10 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  sub_218DEC298(a2, v7, type metadata accessor for MagazineTodayFeedGroupEmitter);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = (v11 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v10 + 32))(v18 + v16, &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  sub_218DEC430(v7, v18 + v17, type metadata accessor for MagazineTodayFeedGroupEmitter);
  return sub_2195E76AC(0, 0, v14, &unk_219C3A470, v18);
}

uint64_t sub_218DE8840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  sub_2186EBE2C(0);
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218DE8904, 0, 0);
}

uint64_t sub_218DE8904()
{
  sub_218DEC39C(0);
  sub_219BED964();

  sub_219BE2CF4();

  v0[24] = v0[16];
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_218DE8A40;

  return MEMORY[0x2821D23D8](v0 + 14);
}

uint64_t sub_218DE8A40()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_218DE8E8C;
  }

  else
  {

    v2 = sub_218DE8B5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218DE8B5C()
{
  v1 = *(v0 + 112);
  sub_218D61A68(0);
  sub_219BEDD14();
  v2 = *(v0 + 104);
  if (v2 == 255)
  {
  }

  else
  {
    v3 = *(v0 + 96);
    sub_219349614(v1, v3, v2 & 1);
    v1 = v4;
    sub_218D61D2C(v3, v2);
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 160);
  v24 = *(v0 + 184);
  v25 = *(v0 + 168);
  v26 = *(v0 + 144);
  *(v0 + 136) = v1;
  type metadata accessor for MagazineFeedServiceConfig(0);
  sub_2186D5BCC(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
  sub_219BF0F44();

  v7 = type metadata accessor for MagazineTodayFeedGroupEmitter(0);
  v8 = *(v6 + *(v7 + 32));
  sub_218718690(v6 + *(v7 + 36), v0 + 16);
  v9 = *(v0 + 40);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v9);
  v11 = *(v9 - 8);
  v12 = swift_task_alloc();
  (*(v11 + 16))(v12, v10, v9);
  v13 = *v12;
  v14 = type metadata accessor for HistoryService();
  *(v0 + 80) = v14;
  *(v0 + 88) = &off_282A6F3B0;
  *(v0 + 56) = v13;
  type metadata accessor for MagazineTodayFeedGroupEmitterCursor(0);
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v14);
  v17 = *(v14 - 8);
  v18 = swift_task_alloc();
  (*(v17 + 16))(v18, v16, v14);
  v19 = *v18;
  v20 = (v15 + OBJC_IVAR____TtC7NewsUI235MagazineTodayFeedGroupEmitterCursor_historyService);
  v20[3] = v14;
  v20[4] = &off_282A6F3B0;
  *v20 = v19;
  (*(v5 + 32))(v15 + OBJC_IVAR____TtC7NewsUI235MagazineTodayFeedGroupEmitterCursor_location, v24, v25);
  *(v15 + OBJC_IVAR____TtC7NewsUI235MagazineTodayFeedGroupEmitterCursor_cloudContext) = v8;
  v21 = v8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  *v26 = v15;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_218DE8E8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218DE8EF8(uint64_t a1)
{
  type metadata accessor for MagazineTodayFeedGroupEmitter(0);
  sub_2189AE994(0);
  v1 = sub_219BEE964();
  sub_2186D8A50(0, &unk_280E8B8C0, sub_218D907D4, MEMORY[0x277D84560]);
  sub_218D907D4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  v7 = swift_allocObject();
  sub_218D90870(0);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  swift_allocObject();
  *(v6 + v5) = sub_219BEFB94();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D32308], v3);
  sub_2191EE478(v6);
  return v1;
}

uint64_t sub_218DE90CC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_218DE90F0, 0, 0);
}

uint64_t sub_218DE90F0()
{
  sub_2186D8A50(0, &unk_280E92768, type metadata accessor for MagazineTodayFeedGroupEmitterCursor, MEMORY[0x277D31B60]);
  sub_219BEF064();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_218DE9220;

  return MEMORY[0x28218F9E8](v0 + 3);
}

uint64_t sub_218DE9220()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218DE952C, 0, 0);
  }

  else
  {
    v3 = v2[3];
    v2[10] = v3;
    v4 = swift_task_alloc();
    v2[11] = v4;
    *v4 = v2;
    v4[1] = sub_218DE93AC;
    v5 = v2[5];
    v6 = v2[4];

    return sub_218DE9600(v6, v5, v3);
  }
}

uint64_t sub_218DE93AC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_218DE9590;
  }

  else
  {

    v2 = sub_218DE94C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218DE94C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218DE952C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218DE9590()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218DE9600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  sub_218DEC070(0);
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  type metadata accessor for MagazineFeedGroup(0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  sub_2186EBE2C(0);
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218DE977C, 0, 0);
}

uint64_t sub_218DE977C()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[16];
  v5 = v0[15];
  v0[29] = type metadata accessor for MagazineTodayFeedGroupEmitter(0);
  sub_218DEC104(0);
  v7 = v6;
  v8 = swift_allocBox();
  v10 = (v9 + *(v7 + 48));
  (*(v2 + 16))(v9, v4 + OBJC_IVAR____TtC7NewsUI235MagazineTodayFeedGroupEmitterCursor_location, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v4;
  *v10 = sub_218DEC178;
  v10[1] = v11;
  *v1 = v8;
  (*(v2 + 104))(v1, *MEMORY[0x277D33080], v3);

  v0[30] = sub_219BF0CE4();
  (*(v2 + 8))(v1, v3);
  v12 = swift_task_alloc();
  v0[31] = v12;
  *v12 = v0;
  v12[1] = sub_218DE9924;

  return MEMORY[0x2821D23D8](v0 + 12);
}

uint64_t sub_218DE9924()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_218DEB1EC;
  }

  else
  {

    v2 = sub_218DE9A40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218DE9A40()
{
  v1 = v0[12];
  v0[33] = v1;
  v2 = v1 >> 61;
  if ((v1 >> 61) > 1)
  {
    if (v2 == 2)
    {
      v41 = v0[24];
      v42 = v0[19];
      sub_218DEC320(0, &qword_280ED5D10, type metadata accessor for MagazineFeedGroup, sub_218D52304);
      v44 = v43;
      v45 = swift_projectBox();
      v46 = *(v45 + *(v44 + 48));
      sub_218DEC298(v45, v41, type metadata accessor for MagazineFeedGroup);
      v148 = v46;

      result = sub_219BEF074();
      v47 = result;
      v48 = 0;
      v152 = *(result + 16);
      v49 = (v42 + 8);
      while (v152 != v48)
      {
        if (v48 >= *(v47 + 16))
        {
          __break(1u);
          goto LABEL_73;
        }

        (*(v42 + 16))(v0[21], v47 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v48, v0[18]);
        v50 = sub_219BEDC34();
        v52 = v51;
        v53 = sub_218CD68A4();
        v55 = v0[21];
        v56 = v0[18];
        if (v50 == v53 && v52 == v54)
        {

          (*v49)(v55, v56);
LABEL_46:
          v88 = v0[24];
          v89 = v0[14];

          sub_218DEC180(0);
          v91 = (v89 + *(v90 + 48));
          v92 = 0x8000000219CF92A0;
          v93 = 0xD000000000000038;
LABEL_55:
          *v89 = v93;
          v89[1] = v92;
          v111 = *MEMORY[0x277D32B80];
          sub_218DEC204(0);
          (*(*(v112 - 8) + 104))(v89, v111, v112);
          sub_218D52304(0);
          v91[3] = v113;
          v91[4] = sub_2186D5BCC(&qword_280E91B08, sub_218D52304, MEMORY[0x277D32180]);
          *v91 = v148;
          sub_218B8B124(0);
          swift_storeEnumTagMultiPayload();
          sub_218DEC010(v88, type metadata accessor for MagazineFeedGroup);
          goto LABEL_56;
        }

        ++v48;
        v58 = sub_219BF78F4();

        result = (*v49)(v55, v56);
        if (v58)
        {
          goto LABEL_46;
        }
      }

      result = sub_219BEF0A4();
      v66 = result;
      v67 = 0;
      v153 = *(result + 16);
      while (v153 != v67)
      {
        if (v67 >= *(v66 + 16))
        {
          goto LABEL_74;
        }

        (*(v42 + 16))(v0[20], v66 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v67, v0[18]);
        v68 = sub_219BEDC34();
        v70 = v69;
        v71 = sub_218CD68A4();
        v73 = v0[20];
        v74 = v0[18];
        if (v68 == v71 && v70 == v72)
        {

          (*v49)(v73, v74);
LABEL_54:
          v88 = v0[24];
          v89 = v0[14];

          sub_218DEC180(0);
          v91 = (v89 + *(v110 + 48));
          v92 = 0x8000000219CF92E0;
          v93 = 0xD000000000000036;
          goto LABEL_55;
        }

        ++v67;
        v76 = sub_219BF78F4();

        result = (*v49)(v73, v74);
        if (v76)
        {
          goto LABEL_54;
        }
      }

      v96 = v0[24];

      v97 = sub_219BEF0D4();
      v98 = swift_task_alloc();
      *(v98 + 16) = v96;
      LOBYTE(v96) = sub_218FAE424(sub_218DEC6EC, v98, v97);

      v99 = v0[24];
      if (v96)
      {
        v100 = v0[14];
        sub_218DEC180(0);
        v102 = (v100 + *(v101 + 48));
        *v100 = 0xD000000000000041;
        v100[1] = 0x8000000219CF9360;
        v103 = *MEMORY[0x277D32B80];
        sub_218DEC204(0);
        (*(*(v104 - 8) + 104))(v100, v103, v104);
        sub_218D52304(0);
        v102[3] = v105;
        v102[4] = sub_2186D5BCC(&qword_280E91B08, sub_218D52304, MEMORY[0x277D32180]);
        *v102 = v148;
        sub_218B8B124(0);
        swift_storeEnumTagMultiPayload();
        v106 = v99;
      }

      else
      {
        v117 = v0[14];
        v118 = sub_219BEF0E4();
        v119 = swift_task_alloc();
        *(v119 + 16) = v99;
        v120 = sub_218FAE424(sub_218DEC6EC, v119, v118);

        sub_218DEC180(0);
        v122 = (v117 + *(v121 + 48));
        v123 = v0[24];
        v124 = v0[14];
        if (v120)
        {
          *v124 = 0xD00000000000003FLL;
          v124[1] = 0x8000000219CF9320;
          v125 = MEMORY[0x277D32B80];
        }

        else
        {
          sub_218DEC298(v0[24], v0[14], type metadata accessor for MagazineFeedGroup);
          type metadata accessor for TodayFeedGroup(0);
          swift_storeEnumTagMultiPayload();
          v125 = MEMORY[0x277D32B70];
        }

        v130 = *v125;
        sub_218DEC204(0);
        (*(*(v131 - 8) + 104))(v124, v130, v131);
        sub_218D52304(0);
        v122[3] = v132;
        v122[4] = sub_2186D5BCC(&qword_280E91B08, sub_218D52304, MEMORY[0x277D32180]);
        *v122 = v148;
        sub_218B8B124(0);
        swift_storeEnumTagMultiPayload();
        v106 = v123;
      }

      sub_218DEC010(v106, type metadata accessor for MagazineFeedGroup);
      goto LABEL_56;
    }

    if (v2 != 3)
    {
      v59 = v0[14];
      v60 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_218DEC180(0);
      v62 = (v59 + *(v61 + 48));
      *v59 = 0xD000000000000036;
      v59[1] = 0x8000000219CF91C0;
      v63 = *MEMORY[0x277D32B80];
      sub_218DEC204(0);
      (*(*(v64 - 8) + 104))(v59, v63, v64);
      sub_218D52304(0);
      v62[3] = v65;
      v62[4] = sub_2186D5BCC(&qword_280E91B08, sub_218D52304, MEMORY[0x277D32180]);
      *v62 = v60;
      sub_218B8B124(0);
      swift_storeEnumTagMultiPayload();

LABEL_56:

      v114 = v0[1];

      return v114();
    }

    v3 = v0[14];
    v4 = "Got last groups from the magazine feed service which is not expected";
LABEL_26:
    *v3 = 0xD000000000000044;
    v3[1] = (v4 - 32) | 0x8000000000000000;
    sub_218B8B124(0);
    swift_storeEnumTagMultiPayload();
    goto LABEL_56;
  }

  if (v2)
  {
    v3 = v0[14];
    v4 = "Got next groups from the magazine feed service which is not expected";
    goto LABEL_26;
  }

  v5 = v0[29];
  v6 = v0[27];
  v146 = v0[28];
  v149 = v0[26];
  v7 = v0[25];
  v8 = v0[17];
  v154 = v0[19];
  sub_218DEC320(0, &qword_280ED5D10, type metadata accessor for MagazineFeedGroup, sub_218D52304);
  v10 = v9;
  v11 = swift_projectBox();
  v12 = *(v11 + *(v10 + 48));
  v0[34] = v12;
  sub_218DEC298(v11, v7, type metadata accessor for MagazineFeedGroup);
  type metadata accessor for MagazineFeedServiceConfig(0);
  sub_2186D5BCC(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);

  v145 = v12;
  sub_219BF0F84();
  v13 = *(v5 + 36);
  v14 = *(v8 + *(v5 + 32));
  sub_218718690(v8 + v13, (v0 + 2));
  v15 = v0[5];
  v16 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v15);
  v17 = *(v15 - 8);
  v18 = swift_task_alloc();
  (*(v17 + 16))(v18, v16, v15);
  v19 = *v18;
  v20 = type metadata accessor for HistoryService();
  v0[7] = v19;
  v0[10] = v20;
  v0[11] = &off_282A6F3B0;
  type metadata accessor for MagazineTodayFeedGroupEmitterCursor(0);
  v21 = swift_allocObject();
  v0[35] = v21;
  v22 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v20);
  v23 = *(v20 - 8);
  v24 = swift_task_alloc();
  (*(v23 + 16))(v24, v22, v20);
  v25 = *v24;
  v26 = (v21 + OBJC_IVAR____TtC7NewsUI235MagazineTodayFeedGroupEmitterCursor_historyService);
  v26[3] = v20;
  v26[4] = &off_282A6F3B0;
  *v26 = v25;
  (*(v6 + 32))(v21 + OBJC_IVAR____TtC7NewsUI235MagazineTodayFeedGroupEmitterCursor_location, v146, v149);
  v147 = v21;
  *(v21 + OBJC_IVAR____TtC7NewsUI235MagazineTodayFeedGroupEmitterCursor_cloudContext) = v14;
  v27 = v14;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  result = sub_219BEF074();
  v29 = result;
  v30 = 0;
  v150 = *(result + 16);
  v31 = (v154 + 8);
  while (1)
  {
    if (v150 == v30)
    {

      result = sub_219BEF0A4();
      v77 = result;
      v78 = 0;
      v151 = *(result + 16);
      while (v151 != v78)
      {
        if (v78 >= *(v77 + 16))
        {
          goto LABEL_75;
        }

        (*(v154 + 16))(v0[22], v77 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v78, v0[18]);
        v79 = sub_219BEDC34();
        v81 = v80;
        v82 = sub_218CD68A4();
        v84 = v0[22];
        v85 = v0[18];
        if (v79 == v82 && v81 == v83)
        {

          (*v31)(v84, v85);
LABEL_60:

          v94 = swift_task_alloc();
          v0[38] = v94;
          *v94 = v0;
          v95 = sub_218DEADB8;
          goto LABEL_61;
        }

        ++v78;
        v87 = sub_219BF78F4();

        result = (*v31)(v84, v85);
        if (v87)
        {
          goto LABEL_60;
        }
      }

      v107 = v0[25];

      v108 = sub_219BEF0D4();
      v109 = swift_task_alloc();
      *(v109 + 16) = v107;
      LOBYTE(v107) = sub_218FAE424(sub_218DEC300, v109, v108);

      if (v107)
      {
        v94 = swift_task_alloc();
        v0[42] = v94;
        *v94 = v0;
        v95 = sub_218DEAFE0;
        goto LABEL_61;
      }

      v126 = v0[25];
      v127 = sub_219BEF0E4();
      v128 = swift_task_alloc();
      *(v128 + 16) = v126;
      v129 = sub_218FAE424(sub_218DEC6EC, v128, v127);

      if ((v129 & 1) == 0)
      {
        v133 = v0[25];
        v134 = v0[14];
        sub_218DEC180(0);
        v136 = (v134 + *(v135 + 48));
        sub_218DEC320(0, qword_280EDB680, type metadata accessor for TodayFeedGroup, sub_21880702C);
        v138 = (v134 + *(v137 + 48));
        sub_218DEC298(v133, v134, type metadata accessor for MagazineFeedGroup);
        type metadata accessor for TodayFeedGroup(0);
        swift_storeEnumTagMultiPayload();
        v0[13] = v147;
        sub_2186D8A50(0, &unk_280E92768, type metadata accessor for MagazineTodayFeedGroupEmitterCursor, MEMORY[0x277D31B60]);
        v140 = v139;
        swift_allocObject();

        v141 = sub_219BED444();
        v138[3] = v140;
        *v138 = v141;
        v142 = *MEMORY[0x277D32B78];
        sub_218DEC204(0);
        (*(*(v143 - 8) + 104))(v134, v142, v143);
        sub_218D52304(0);
        v136[3] = v144;
        v136[4] = sub_2186D5BCC(&qword_280E91B08, sub_218D52304, MEMORY[0x277D32180]);

        *v136 = v145;
        sub_218B8B124(0);
        swift_storeEnumTagMultiPayload();
        sub_218DEC010(v133, type metadata accessor for MagazineFeedGroup);
        goto LABEL_56;
      }

      v94 = swift_task_alloc();
      v0[40] = v94;
      *v94 = v0;
      v95 = sub_218DEAECC;
      goto LABEL_61;
    }

    if (v30 >= *(v29 + 16))
    {
      break;
    }

    (*(v154 + 16))(v0[23], v29 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v30, v0[18]);
    v32 = sub_219BEDC34();
    v34 = v33;
    v35 = sub_218CD68A4();
    v37 = v0[23];
    v38 = v0[18];
    if (v32 == v35 && v34 == v36)
    {

      (*v31)(v37, v38);
LABEL_48:

      v94 = swift_task_alloc();
      v0[36] = v94;
      *v94 = v0;
      v95 = sub_218DEACA4;
LABEL_61:
      v94[1] = v95;
      v115 = v0[14];
      v116 = v0[15];

      return sub_218DE9600(v115, v116, v147);
    }

    ++v30;
    v40 = sub_219BF78F4();

    result = (*v31)(v37, v38);
    if (v40)
    {
      goto LABEL_48;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_218DEACA4()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_218DEB2AC;
  }

  else
  {
    v2 = sub_218DEB0F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218DEADB8()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_218DEB3A0;
  }

  else
  {
    v2 = sub_218DEC6E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218DEAECC()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_218DEB588;
  }

  else
  {
    v2 = sub_218DEC6E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218DEAFE0()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_218DEB494;
  }

  else
  {
    v2 = sub_218DEC6E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218DEB0F4()
{
  v1 = *(v0 + 200);

  sub_218DEC010(v1, type metadata accessor for MagazineFeedGroup);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_218DEB1EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218DEB2AC()
{
  v1 = *(v0 + 200);

  sub_218DEC010(v1, type metadata accessor for MagazineFeedGroup);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_218DEB3A0()
{
  v1 = *(v0 + 200);

  sub_218DEC010(v1, type metadata accessor for MagazineFeedGroup);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_218DEB494()
{
  v1 = *(v0 + 200);

  sub_218DEC010(v1, type metadata accessor for MagazineFeedGroup);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_218DEB588()
{
  v1 = *(v0 + 200);

  sub_218DEC010(v1, type metadata accessor for MagazineFeedGroup);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_218DEB67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_218D3BC60(0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218DEB76C, 0, 0);
}

uint64_t sub_218DEB76C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_218D3BC94(0);
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_218DEC010(*(v0 + 48), sub_218D3BC60);
  }

  else
  {
    sub_218DEC430(*(v0 + 48), *(v0 + 72), type metadata accessor for TodayFeedGroup);
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_218DEC010(v8, type metadata accessor for TodayFeedGroup);
    if (v10)
    {
      sub_218DEC298(*(v0 + 40), *(v0 + 24), sub_218D3BC94);
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 1;
LABEL_4:
  (*(*(v5 - 8) + 56))(*(v0 + 24), v6, 1, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_218DEB95C()
{
  v0 = sub_219BEE3A4();
  v2 = v1;
  if (v0 == sub_218CD68A4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_219BF78F4();
  }

  return v5 & 1;
}

uint64_t sub_218DEB9F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DE90CC(a1, a2);
}

uint64_t sub_218DEBAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_218DEB67C(a1, a2, a3);
}

uint64_t sub_218DEBB54@<X0>(uint64_t a1@<X8>)
{
  sub_218D61A68(0);
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for TodayFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218DEBBD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for MagazineTodayFeedGroupKnobs(0);
  a2[4] = sub_2186D5BCC(&qword_280EB82F8, type metadata accessor for MagazineTodayFeedGroupKnobs, &unk_219C2E6C4);
  a2[5] = sub_2186D5BCC(&qword_280EB8300, type metadata accessor for MagazineTodayFeedGroupKnobs, &unk_219C2E6EC);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218DEC298(v2 + v4, boxed_opaque_existential_1, type metadata accessor for MagazineTodayFeedGroupKnobs);
}

uint64_t sub_218DEBC9C()
{
  sub_218D61A68(0);

  return sub_219BEDCA4();
}

uint64_t sub_218DEBCC8@<X0>(uint64_t *a2@<X8>)
{
  sub_218DE7D38();
  sub_2186D8A50(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218D61A68(0);
  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218DEC010(inited + 32, sub_2188317B0);
  sub_218DEC6B4(0);
  a2[3] = v6;
  a2[4] = sub_2186D5BCC(&unk_280EE7908, sub_218DEC6B4, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_218DEBE3C(uint64_t a1)
{
  sub_2186D5BCC(&qword_280EB0120, type metadata accessor for MagazineTodayFeedGroupEmitter, &unk_219C3A328);

  return sub_219BE2324();
}

uint64_t sub_218DEC010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218DEC070(uint64_t a1)
{
  if (!qword_280E924A0)
  {
    type metadata accessor for TodayFeedServiceConfig(255);
    sub_2186D5BCC(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v1 = sub_219BEDC64();
    if (!v2)
    {
      atomic_store(v1, &qword_280E924A0);
    }
  }
}

void sub_218DEC104(uint64_t a1)
{
  if (!qword_280E909E8)
  {
    sub_2186EBE2C(255);
    sub_218788800();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E909E8);
    }
  }
}

void sub_218DEC180(uint64_t a1)
{
  if (!qword_280E910C8)
  {
    sub_218DEC204(255);
    sub_2186CFDE4(255, &qword_280E918B0, MEMORY[0x277D322B0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E910C8);
    }
  }
}

void sub_218DEC204(uint64_t a1)
{
  if (!qword_280E910D0)
  {
    type metadata accessor for TodayFeedGroup(255);
    sub_2186D5BCC(&qword_280EDB780, type metadata accessor for TodayFeedGroup, &unk_219C0DEC8);
    v1 = sub_219BEFFB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E910D0);
    }
  }
}

uint64_t sub_218DEC298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218DEC320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_218DEC39C(uint64_t a1)
{
  if (!qword_280E92610)
  {
    type metadata accessor for TodayFeedServiceConfig(255);
    sub_2186D5BCC(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v1 = sub_219BED974();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92610);
    }
  }
}

uint64_t sub_218DEC430(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218DEC498()
{
  sub_218DEC39C(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(type metadata accessor for MagazineTodayFeedGroupEmitter(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_218DE8580(v0 + v2, v5);
}

uint64_t sub_218DEC564(uint64_t a1)
{
  v3 = v2;
  sub_218DEC39C(0);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for MagazineTodayFeedGroupEmitter(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2187608D4;

  return sub_218DE8840(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t type metadata accessor for ArticleListSharedWithYouFeedGroup(uint64_t a1)
{
  result = qword_27CC122A8;
  if (!qword_27CC122A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218DEC780()
{
  v1 = *(v0 + *(type metadata accessor for ArticleListSharedWithYouFeedGroup(0) + 24));
  if (v1 >> 62)
  {
    sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);

    v4 = sub_219BF7534();

    return v4;
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v2 = sub_218CFA4E0(v1 & 0xFFFFFFFFFFFFFF8);

    if (v2)
    {
      return v1;
    }

    else
    {
      return v1 & 0xFFFFFFFFFFFFFF8 | 1;
    }
  }
}

void sub_218DEC854(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_218CFCB64(0);
  v30 = v3;
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED8D4();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DED4C8(0, &qword_27CC122F0, MEMORY[0x277D844C8]);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for ArticleListSharedWithYouFeedGroup(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DED410();
  v34 = v10;
  v14 = v35;
  sub_219BF7B34();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = v7;
    v26 = v13;
    v16 = v31;
    v17 = v5;
    v39 = 0;
    v18 = sub_219BF76F4();
    v20 = v19;
    v21 = v26;
    *v26 = v18;
    v21[1] = v19;
    v38 = 1;
    sub_218DED1C8(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    v35 = v20;
    (*(v16 + 32))(v26 + *(v11 + 20), v15, v17);
    v37 = 2;
    sub_218DED1C8(&unk_280EE67D8, sub_218CFCB64, MEMORY[0x277D6CF98]);
    v23 = v29;
    v22 = v30;
    v25 = 0;
    sub_219BF7734();
    sub_219BE3384();
    (*(v27 + 8))(v23, v22);
    (*(v32 + 8))(v34, v33);
    v24 = v26;
    *(v26 + *(v11 + 24)) = v36;
    sub_218DED464(v24, v28);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_218C61024(v24);
  }
}

uint64_t sub_218DECD28(void *a1)
{
  v2 = v1;
  sub_218CFCB64(0);
  v5 = v4;
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DED4C8(0, &unk_27CC12300, MEMORY[0x277D84538]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DED410();
  sub_219BF7B44();
  v24 = 0;
  v13 = v20;
  sub_219BF77F4();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v20 = v10;
  v18 = v7;
  v15 = type metadata accessor for ArticleListSharedWithYouFeedGroup(0);
  v23 = 1;
  sub_219BED8D4();
  sub_218DED1C8(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  v21 = *(v2 + *(v15 + 24));
  sub_2187E7248(0);
  sub_218DED1C8(&qword_280E8EBF0, sub_2187E7248, MEMORY[0x277D83970]);

  v16 = v18;
  sub_219BE33C4();
  v22 = 2;
  sub_218DED1C8(&qword_280EE67E8, sub_218CFCB64, MEMORY[0x277D6CF90]);
  sub_219BF7834();
  v17 = v20;
  (*(v19 + 8))(v16, v5);
  return (*(v17 + 8))(v12, v9);
}

uint64_t sub_218DED0B0(uint64_t a1)
{
  v2 = sub_218DED1C8(&qword_27CC122B8, type metadata accessor for ArticleListSharedWithYouFeedGroup, &unk_219C3A5B4);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218DED11C(void *a1)
{
  a1[1] = sub_218DED1C8(&qword_27CC122B8, type metadata accessor for ArticleListSharedWithYouFeedGroup, &unk_219C3A5B4);
  a1[2] = sub_218DED1C8(&qword_27CC122C0, type metadata accessor for ArticleListSharedWithYouFeedGroup, &unk_219C3A570);
  result = sub_218DED1C8(&qword_27CC122C8, type metadata accessor for ArticleListSharedWithYouFeedGroup, &unk_219C3A548);
  a1[3] = result;
  return result;
}

uint64_t sub_218DED1C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218DED2E8(uint64_t a1)
{
  result = sub_218DED1C8(&qword_27CC122E8, type metadata accessor for ArticleListSharedWithYouFeedGroup, &unk_219C3A598);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_218DED340@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218DED644(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_218DED370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218DED644(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218DED398(uint64_t a1)
{
  v2 = sub_218DED410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218DED3D4(uint64_t a1)
{
  v2 = sub_218DED410();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218DED410()
{
  result = qword_27CC122F8;
  if (!qword_27CC122F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC122F8);
  }

  return result;
}

uint64_t sub_218DED464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListSharedWithYouFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218DED4C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218DED410();
    v7 = a3(a1, &type metadata for ArticleListSharedWithYouFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218DED540()
{
  result = qword_27CC12310;
  if (!qword_27CC12310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12310);
  }

  return result;
}

unint64_t sub_218DED598()
{
  result = qword_27CC12318;
  if (!qword_27CC12318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12318);
  }

  return result;
}

unint64_t sub_218DED5F0()
{
  result = qword_27CC12320;
  if (!qword_27CC12320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12320);
  }

  return result;
}

unint64_t sub_218DED644(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t get_enum_tag_for_layout_string_7NewsUI230TagFeedLayoutSectionDescriptorO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_218DED6BC()
{
  if (*(v0 + 24) - 1 < 2 || *(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 8);
  v2 = sub_218DEDF5C(*v0, type metadata accessor for TagFeedLayoutSectionDescriptor.Header, type metadata accessor for TagFeedLayoutSectionDescriptor.Header);
  v3 = sub_218DEDF5C(v1, type metadata accessor for TagFeedLayoutSectionDescriptor.Footer, type metadata accessor for TagFeedLayoutSectionDescriptor.Footer);
  sub_2191ED57C(v3);
  return v2;
}

uint64_t sub_218DED770(uint64_t a1)
{
  v2 = sub_218DEE6C8();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_218DED7AC(uint64_t a1)
{
  v2 = sub_218DED7F0();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_218DED7F0()
{
  result = qword_280EAA8E0;
  if (!qword_280EAA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAA8E0);
  }

  return result;
}

uint64_t sub_218DED844()
{
  if (*(v0 + 24) - 1 >= 2 && *(v0 + 24))
  {
    return 0;
  }

  else
  {
    return sub_218DEE204(*(v0 + 16));
  }
}

uint64_t sub_218DED880(uint64_t a1)
{
  v2 = type metadata accessor for TagFeedLayoutSectionDescriptor.Decoration(0);
  v68 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFeedLayoutSectionDescriptor.Footer(0);
  v59 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TagFeedLayoutSectionDescriptor.Header(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE9834();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *MEMORY[0x277D6E758];
  v61 = *(v13 + 104);
  v62 = v13 + 104;
  v61(v16, v17, v12, v14);
  v18 = sub_219BEE054();
  v20 = *(v13 + 8);
  v19 = v13 + 8;
  v63 = v16;
  v60 = v20;
  v20(v16, v12);
  v21 = *(v18 + 16);
  v22 = MEMORY[0x277D84F90];
  v64 = v4;
  v65 = a1;
  if (v21)
  {
    v56 = v19;
    v57 = v12;
    v58 = v7;
    v69 = MEMORY[0x277D84F90];
    sub_218C35C08(0, v21, 0);
    v23 = v18;
    v24 = v69;
    v67 = sub_219BF00D4();
    v25 = *(v67 - 8);
    v66 = *(v25 + 16);
    v26 = v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v27 = *(v25 + 72);
    do
    {
      v66(v11, v26, v67);
      v69 = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_218C35C08((v28 > 1), v29 + 1, 1);
        v24 = v69;
      }

      *(v24 + 16) = v29 + 1;
      sub_218DEE598(v11, v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v29, type metadata accessor for TagFeedLayoutSectionDescriptor.Header);
      v26 += v27;
      --v21;
    }

    while (v21);

    v4 = v64;
    a1 = v65;
    v12 = v57;
    v7 = v58;
    v22 = MEMORY[0x277D84F90];
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v30 = v63;
  (v61)(v63, *MEMORY[0x277D6E750], v12);
  v31 = sub_219BEE054();
  v32 = v30;
  v33 = v31;
  v60(v32, v12);
  v34 = *(v33 + 16);
  if (v34)
  {
    v69 = v22;
    sub_218C35BB8(0, v34, 0);
    v35 = v69;
    v67 = sub_219BF00D4();
    v36 = *(v67 - 8);
    v66 = *(v36 + 16);
    v37 = *(v36 + 80);
    v63 = v33;
    v38 = v33 + ((v37 + 32) & ~v37);
    v39 = *(v36 + 72);
    v40 = v59;
    do
    {
      v66(v7, v38, v67);
      v69 = v35;
      v41 = v7;
      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_218C35BB8((v42 > 1), v43 + 1, 1);
        v40 = v59;
        v35 = v69;
      }

      *(v35 + 16) = v43 + 1;
      sub_218DEE598(v41, v35 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v43, type metadata accessor for TagFeedLayoutSectionDescriptor.Footer);
      v38 += v39;
      --v34;
      v7 = v41;
    }

    while (v34);

    v4 = v64;
    a1 = v65;
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v44 = sub_219BEE044();
  v45 = *(v44 + 16);
  if (v45)
  {
    v69 = v22;
    sub_218C35B68(0, v45, 0);
    v46 = v69;
    v67 = sub_219BEE914();
    v47 = *(v67 - 8);
    v66 = *(v47 + 16);
    v48 = *(v47 + 80);
    v63 = v44;
    v49 = v44 + ((v48 + 32) & ~v48);
    v50 = *(v47 + 72);
    do
    {
      v66(v4, v49, v67);
      v69 = v46;
      v52 = *(v46 + 16);
      v51 = *(v46 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_218C35B68((v51 > 1), v52 + 1, 1);
        v46 = v69;
      }

      *(v46 + 16) = v52 + 1;
      sub_218DEE598(v4, v46 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v52, type metadata accessor for TagFeedLayoutSectionDescriptor.Decoration);
      v49 += v50;
      --v45;
    }

    while (v45);
    v53 = sub_219BEE074();
    (*(*(v53 - 8) + 8))(v65, v53);
  }

  else
  {

    v54 = sub_219BEE074();
    (*(*(v54 - 8) + 8))(a1, v54);
  }

  return v24;
}

uint64_t sub_218DEDF5C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v29 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_219BF00D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v33 = MEMORY[0x277D84F90];
    sub_218C34270(0, v14, 0);
    v15 = v33;
    v16 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    v26 = (v11 + 32);
    v27 = v17;
    v18 = (v11 + 16);
    v19 = (v11 + 8);
    do
    {
      v20 = v29;
      sub_218DEE600(v16, v9, v29);
      v21 = v28;
      sub_218DEE600(v9, v28, v20);
      (*v26)(v13, v21, v10);
      sub_218DEE668(v9, v20);
      v33 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_218C34270((v22 > 1), v23 + 1, 1);
      }

      v31 = v10;
      v32 = sub_21897FB18();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
      (*v18)(boxed_opaque_existential_1, v13, v10);
      v15 = v33;
      *(v33 + 16) = v23 + 1;
      sub_2186CB1F0(&v30, v15 + 40 * v23 + 32);
      (*v19)(v13, v10);
      v16 += v27;
      --v14;
    }

    while (v14);
  }

  return v15;
}

uint64_t sub_218DEE204(uint64_t a1)
{
  v32 = sub_219BEE914();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFeedLayoutSectionDescriptor.Decoration(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v36 = MEMORY[0x277D84F90];
    sub_218C35B30(0, v11, 0);
    v12 = v36;
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v29 = (v2 + 32);
    v30 = v14;
    v15 = (v2 + 8);
    do
    {
      sub_218DEE600(v13, v10, type metadata accessor for TagFeedLayoutSectionDescriptor.Decoration);
      v16 = v31;
      sub_218DEE600(v10, v31, type metadata accessor for TagFeedLayoutSectionDescriptor.Decoration);
      v17 = v16;
      v18 = v32;
      (*v29)(v4, v17, v32);
      sub_219BEE8F4();
      (*v15)(v4, v18);
      sub_218DEE668(v10, type metadata accessor for TagFeedLayoutSectionDescriptor.Decoration);
      v36 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_218C35B30((v19 > 1), v20 + 1, 1);
      }

      v21 = v34;
      v22 = v35;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      v24 = MEMORY[0x28223BE20](v23);
      v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26, v24);
      sub_218DD76AC(v20, v26, &v36, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v12 = v36;
      v13 += v30;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_218DEE598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218DEE600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218DEE668(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218DEE6C8()
{
  result = qword_27CC12330;
  if (!qword_27CC12330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12330);
  }

  return result;
}

uint64_t sub_218DEE72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a3;
  v70 = a4;
  v71 = a1;
  v5 = type metadata accessor for ChannelIssuesModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v56 - v8;
  MEMORY[0x28223BE20](v9);
  v65 = &v56 - v10;
  v11 = sub_219BEF2A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v18 = sub_219BEF974();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ChannelIssuesLayoutModel(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3FE38(0);
  sub_219BE75E4();
  (*(v19 + 32))(v21, v24, v18);
  v68 = v4;
  swift_getObjectType();
  sub_219BEED04();
  (*(v12 + 16))(v14, v17, v11);
  if ((*(v12 + 88))(v14, v11) == *MEMORY[0x277D32528])
  {
    v61 = v21;
    v62 = v17;
    v63 = v19;
    v64 = v18;
    v69 = v12;
    v70 = v11;
    (*(v12 + 96))(v14, v11);
    v60 = *v14;
    v59 = sub_219BE7314();
    v25 = *(v68 + 40);
    ObjectType = swift_getObjectType();
    sub_218953748(0);
    v58 = v26;
    v27 = v65;
    sub_219BE5FC4();
    v28 = v66;
    sub_218DEF0E4(v27, v66);
    v29 = *v28;
    v30 = *(v28 + 16);
    sub_2189C026C(0);
    v32 = *(v31 + 48);
    v33 = [v29 identifier];
    v34 = sub_219BF5414();
    v36 = v35;

    sub_218DEF148(v27);
    v37 = sub_219BF0744();
    (*(*(v37 - 8) + 8))(v28 + v32, v37);
    (*(v25 + 32))(v34, v36, ObjectType, v25);

    sub_218DEF1AC(qword_280EDE170, type metadata accessor for IssueDownload, &protocol conformance descriptor for IssueDownload);
    v38 = v59;
    sub_219BF19C4();

    v39 = v67;
    sub_219BE5FC4();
    v40 = sub_219A36F8C();
    sub_218DEF148(v39);
    v41 = v60;
    v42 = sub_219BE7314();
    v43 = sub_219BF19B4();

    if (v40)
    {
      [v43 setShowsMenuAsPrimaryAction_];

      v44 = sub_219BE7314();
      v45 = sub_219BF19B4();

      sub_21897C0DC();
      v46 = sub_219BF6BF4();
      [v45 setMenu_];

      v47 = sub_219BE7314();
      v48 = sub_219BF19B4();

      v49 = sub_219BE5984();
      [v48 setActivityItemsConfiguration_];

      v50 = sub_219BE7314();
      v51 = sub_219BF19B4();

      v52 = swift_allocObject();
      swift_weakInit();
      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      *(v53 + 24) = v40;

      sub_219BF2CC4();

      (*(v69 + 8))(v62, v70);
      (*(v63 + 8))(v61, v64);
    }

    else
    {
      [v43 setHidden_];

      (*(v69 + 8))(v62, v70);
      (*(v63 + 8))(v61, v64);
    }
  }

  else
  {
    v41 = sub_219BEF294();
    v54 = *(v12 + 8);
    v54(v17, v11);
    (*(v19 + 8))(v21, v18);
    v54(v14, v11);
  }

  return v41;
}

uint64_t sub_218DEEE10(void *a1, uint64_t a2)
{
  v3 = sub_219BE89F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = Strong;
  (*(v4 + 104))(v6, *MEMORY[0x277D6E0F8], v3);
  v9 = *(v8 + 64);
  v13[3] = sub_219BDD274();
  v13[4] = sub_218DEF1AC(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v13[0] = v9;
  v14 = 0u;
  v15 = 0u;
  v16 = 1;
  sub_219BE8314();
  swift_allocObject();

  v10 = a1;
  sub_219BE82F4();
  swift_unknownObjectRetain();
  v11 = sub_219BE5994();

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_218DEF0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_218DEE72C(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_218DEF0E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelIssuesModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DEF148(uint64_t a1)
{
  v2 = type metadata accessor for ChannelIssuesModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218DEF1AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218DEF1F4()
{
  sub_21896FA3C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = *(v0 + 24);
  v9 = sub_219BDFA44();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = v8;
  sub_2187B14CC(v28, &v23, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v24 + 1))
  {
    sub_21875F93C(&v23, v25);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_2187448D0(&v23, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
  }

  v22[1] = 0xF000000000000010;
  v24 = 0u;
  v23 = 0u;
  sub_2189B4E2C(v7, v4);
  sub_2187B14CC(v30, v25, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  sub_2189B4EAC(v4, v16 + v13);
  v17 = v16 + v14;
  v18 = v25[1];
  *v17 = v25[0];
  *(v17 + 16) = v18;
  *(v17 + 32) = v26;
  v19 = (v16 + v15);
  v20 = (v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = 0;
  v19[1] = 0;
  *v20 = v11;
  v20[1] = v10;
  v20[2] = v12;

  sub_2188202A8(v10);
  sub_2186CF94C(0);
  sub_218DEF818(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v10, v12);
  sub_2187448D0(v28, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v30, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v7);
  sub_2187448D0(&v23, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  return 1;
}

uint64_t sub_218DEF818(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_218DEF860@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for NewspaperTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v4);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v53 - v8;
  sub_2186DE858(0);
  v11 = v10;
  *a2 = sub_219BEDCA4();
  a2[1] = v12;
  sub_219BEDD14();
  v13 = v4[5];
  v58 = type metadata accessor for NewspaperGroupConfig(0);
  sub_218DF042C(&v9[v13], a2 + *(v58 + 20), &unk_280E8FD50, sub_2186DEE0C);
  sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  sub_219BEDD14();
  v14 = *&v6[v4[7]];

  sub_218DF05B8(v6, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v15 = *(v14 + 16);
  if (v15)
  {
    v54 = v11;
    v55 = v4;
    v56 = a1;
    v57 = a2;
    v59 = MEMORY[0x277D84F90];
    sub_218C35860(0, v15, 0);
    v16 = v59;
    v53[1] = v14;
    v17 = (v14 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v59 = v16;
      v20 = *(v16 + 16);
      v21 = *(v16 + 24);

      if (v20 >= v21 >> 1)
      {
        sub_218C35860((v21 > 1), v20 + 1, 1);
        v16 = v59;
      }

      *(v16 + 16) = v20 + 1;
      v22 = v16 + 16 * v20;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      v17 += 2;
      --v15;
    }

    while (v15);

    a1 = v56;
    a2 = v57;
    v11 = v54;
    v4 = v55;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v23 = v58;
  *(a2 + *(v58 + 24)) = v16;
  sub_219BEDD14();
  v24 = &v9[v4[9]];
  v25 = *v24;
  v26 = *(v24 + 1);

  sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v27 = (a2 + v23[7]);
  *v27 = v25;
  v27[1] = v26;
  sub_219BEDD14();
  sub_218DF042C(&v9[v4[10]], a2 + v23[8], &qword_280E903B0, MEMORY[0x277D339D0]);
  sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v28 = sub_219BEDCB4();
  v29 = (a2 + v23[9]);
  *v29 = v28;
  v29[1] = v30;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_219BEDD14();
  LOBYTE(v25) = v9[v4[11]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  *(a2 + v23[12]) = v25;
  sub_219BEDD14();
  LOBYTE(v25) = v9[v4[12]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  *(a2 + v23[13]) = v25;
  sub_219BEDD14();
  v31 = *&v9[v4[13]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  *(a2 + v23[14]) = v31;
  sub_219BEDD14();
  v32 = *&v9[v4[14]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  *(a2 + v23[15]) = v32;
  sub_219BEDD14();
  v33 = *&v9[v4[15]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  *(a2 + v23[16]) = v33;
  sub_219BEDD14();
  v34 = *&v9[v4[16]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  *(a2 + v23[17]) = v34;
  sub_219BEDD14();
  v35 = *&v9[v4[17]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  *(a2 + v23[18]) = v35;
  sub_219BEDD14();
  v36 = *&v9[v4[18]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  *(a2 + v23[19]) = v36;
  sub_219BEDD14();
  v37 = &v9[v4[19]];
  v38 = *v37;
  LOBYTE(v26) = v37[8];
  sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v39 = a2 + v23[20];
  *v39 = v38;
  v39[8] = v26;
  sub_219BEDD14();
  v40 = &v9[v4[20]];
  v41 = *v40;
  LOBYTE(v26) = v40[8];
  sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v42 = a2 + v23[21];
  *v42 = v41;
  v42[8] = v26;
  sub_219BEDD14();
  v43 = &v9[v4[21]];
  v44 = *v43;
  LOBYTE(v26) = v43[8];
  sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v45 = a2 + v23[22];
  *v45 = v44;
  v45[8] = v26;
  sub_219BEDD14();
  v46 = &v9[v4[22]];
  v47 = *v46;
  LOBYTE(v26) = v46[8];
  sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v48 = a2 + v23[23];
  *v48 = v47;
  v48[8] = v26;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v49 = qword_280F616D8;
  *(a2 + v23[24]) = qword_280F616D8;
  v50 = v49;
  sub_219BEDD14();
  (*(*(v11 - 8) + 8))(a1, v11);
  v51 = *&v9[v4[23]];

  result = sub_218DF05B8(v9, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  *(a2 + v23[25]) = v51;
  return result;
}

uint64_t type metadata accessor for NewspaperGroupConfig(uint64_t a1)
{
  result = qword_280ECE390;
  if (!qword_280ECE390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218DEFE6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for NewspaperMagazineFeedGroupConfigData(0);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - v8;
  sub_218DF04EC(0);
  v11 = v10;
  *a2 = sub_219BEDCA4();
  *(a2 + 1) = v12;
  v55 = type metadata accessor for NewspaperGroupConfig(0);
  v13 = *(v55 + 20);
  sub_219BEDD14();
  v14 = *(v4 + 20);
  sub_2186DEE0C(0);
  v16 = v15;
  v17 = *(v15 - 8);
  (*(v17 + 16))(&a2[v13], &v9[v14], v15);
  sub_218DF05B8(v9, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
  (*(v17 + 56))(&a2[v13], 0, 1, v16);
  v56 = v11;
  sub_219BEDD14();
  v18 = *&v6[v57[6]];

  sub_218DF05B8(v6, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
  v19 = *(v18 + 16);
  if (v19)
  {
    v54 = a1;
    v58 = MEMORY[0x277D84F90];
    sub_218C35860(0, v19, 0);
    v20 = v58;
    v53 = v18;
    v21 = (v18 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v58 = v20;
      v24 = *(v20 + 16);
      v25 = *(v20 + 24);

      if (v24 >= v25 >> 1)
      {
        sub_218C35860((v25 > 1), v24 + 1, 1);
        v20 = v58;
      }

      *(v20 + 16) = v24 + 1;
      v26 = v20 + 16 * v24;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      v21 += 2;
      --v19;
    }

    while (v19);

    a1 = v54;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v28 = v55;
  v27 = v56;
  *&a2[*(v55 + 24)] = v20;
  sub_219BEDD14();
  v29 = v57;
  v30 = &v9[v57[7]];
  v32 = *v30;
  v31 = *(v30 + 1);

  sub_218DF05B8(v9, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
  v33 = &a2[v28[7]];
  *v33 = v32;
  *(v33 + 1) = v31;
  sub_219BEDD14();
  sub_218DF042C(&v9[v29[8]], &a2[v28[8]], &qword_280E903B0, MEMORY[0x277D339D0]);
  sub_218DF05B8(v9, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
  v34 = sub_219BEDCB4();
  v35 = &a2[v28[9]];
  *v35 = v34;
  *(v35 + 1) = v36;
  sub_219BEDCC4();
  sub_219BEDD14();
  v37 = v29[11];
  v38 = v28[11];
  v39 = sub_219BEF554();
  (*(*(v39 - 8) + 16))(&a2[v38], &v9[v37], v39);
  sub_218DF05B8(v9, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
  sub_219BEDD14();
  LOBYTE(v37) = v9[v29[12]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
  a2[v28[12]] = v37;
  sub_219BEDD14();
  LOBYTE(v37) = v9[v29[13]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
  a2[v28[13]] = v37;
  sub_219BEDD14();
  v40 = *&v9[v29[15]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
  *&a2[v28[14]] = v40;
  sub_219BEDD14();
  v41 = *&v9[v29[16]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
  *&a2[v28[15]] = v41;
  sub_219BEDD14();
  v42 = *&v9[v29[17]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
  *&a2[v28[16]] = v42;
  sub_219BEDD14();
  v43 = *&v9[v29[18]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
  *&a2[v28[17]] = v43;
  sub_219BEDD14();
  v44 = *&v9[v29[19]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
  *&a2[v28[18]] = v44;
  sub_219BEDD14();
  v45 = *&v9[v29[20]];
  sub_218DF05B8(v9, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
  *&a2[v28[19]] = v45;
  v46 = &a2[v28[20]];
  *v46 = 0;
  v46[8] = 1;
  v47 = &a2[v28[21]];
  *v47 = 0;
  v47[8] = 1;
  v48 = &a2[v28[22]];
  *v48 = 0;
  v48[8] = 1;
  v49 = &a2[v28[23]];
  *v49 = 0;
  v49[8] = 1;
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v50 = *(*(v27 - 8) + 8);
  v51 = qword_280F617C8;
  result = v50(a1, v27);
  *&a2[v28[24]] = v51;
  *&a2[v28[25]] = 0;
  return result;
}

uint64_t sub_218DF042C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218DF0498(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_218DF0498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218DF04EC(uint64_t a1)
{
  if (!qword_280E921F0)
  {
    type metadata accessor for NewspaperMagazineFeedGroupConfigData(255);
    sub_2186DF34C(&unk_280E9AE60, type metadata accessor for NewspaperMagazineFeedGroupConfigData, &unk_219C3F618);
    sub_2186DF34C(&qword_280E9AE70, type metadata accessor for NewspaperMagazineFeedGroupConfigData, &unk_219C3F5F0);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E921F0);
    }
  }
}

uint64_t sub_218DF05B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218DF0650(uint64_t a1)
{
  sub_218DF0498(319, &unk_280E8FD50, sub_2186DEE0C);
  if (v1 <= 0x3F)
  {
    sub_2187AC848(319, &qword_280E8F260, &type metadata for NewspaperGroupConfig.Channel, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2187AC848(319, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_218DF0498(319, &qword_280E903B0, MEMORY[0x277D339D0]);
        if (v4 <= 0x3F)
        {
          sub_219BEF554();
          if (v5 <= 0x3F)
          {
            sub_2187AC848(319, &qword_280E8E900, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_2186C66AC();
              if (v7 <= 0x3F)
              {
                sub_2186D0AF8(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_218DF0858()
{
  result = qword_27CC12338;
  if (!qword_27CC12338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12338);
  }

  return result;
}

uint64_t sub_218DF08AC(void *a1, uint64_t a2)
{
  v4 = sub_219BDCB34();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 userInterfaceIdiom];
  v10 = v9 + 1;
  if (v9 + 1 > 6)
  {
    goto LABEL_12;
  }

  if (((1 << v10) & 0x1B) != 0)
  {
LABEL_3:
    v11 = sub_219BDCAA4();
    (*(*(v11 - 8) + 8))(a2, v11);

    return 0;
  }

  if (((1 << v10) & 0x44) == 0)
  {
    goto LABEL_12;
  }

  sub_219BDCA84();
  v13 = (*(v5 + 88))(v8, v4);
  if (v13 == *MEMORY[0x277D6D1B0])
  {
    goto LABEL_3;
  }

  if (v13 != *MEMORY[0x277D6D1B8] && v13 != *MEMORY[0x277D6D1C0])
  {
LABEL_12:
    while (1)
    {
      sub_219BF7514();
      __break(1u);
    }
  }

  v15 = sub_219BDCAA4();
  (*(*(v15 - 8) + 8))(a2, v15);

  return 1;
}

uint64_t sub_218DF0B00(void *a1, unsigned __int8 a2)
{
  sub_218DF14E4(0, &qword_280E8C510, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DF143C();
  sub_219BF7B44();
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v14 = 2;
      v13 = 0;
    }

    else
    {
      v16 = 3;
      v15 = 0;
    }
  }

  else if (a2)
  {
    v12 = 1;
    v11 = 0;
  }

  else
  {
    v10[4] = 0;
  }

  sub_218DF1548();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

void sub_218DF0CE8(char *a2@<X8>)
{
  v3 = sub_219BF7614();

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

void sub_218DF0D48(char *a3@<X8>)
{
  v4 = sub_219BF7614();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_218DF0DAC(uint64_t a1)
{
  v2 = sub_218DF143C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218DF0DE8(uint64_t a1)
{
  v2 = sub_218DF143C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218DF0E30()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_218DF0EF8(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_218DF0FAC(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_218DF1070@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218DF1770(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_218DF10A0(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x756F59726F66;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000012;
    v2 = 0x8000000219CD73A0;
  }

  v4 = 0x8000000219CD7360;
  v5 = 0xD000000000000010;
  if (*v1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000219CD7380;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void *sub_218DF11D4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_218DF129C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_218DF121C()
{
  v1 = 0x756F59726F66;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000012;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

void *sub_218DF129C(void *a1)
{
  sub_218DF14E4(0, &qword_280E8CD48, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DF143C();
  sub_219BF7B34();
  if (!v1)
  {
    v10[14] = 0;
    sub_218DF1490();
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
    v8 = v10[15];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_218DF143C()
{
  result = qword_280EBCE20;
  if (!qword_280EBCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCE20);
  }

  return result;
}

unint64_t sub_218DF1490()
{
  result = qword_280EBCDF8;
  if (!qword_280EBCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDF8);
  }

  return result;
}

void sub_218DF14E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218DF143C();
    v7 = a3(a1, &type metadata for SportsSectionHeroStrategy.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218DF1548()
{
  result = qword_280EBCE08;
  if (!qword_280EBCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCE08);
  }

  return result;
}

unint64_t sub_218DF15C0()
{
  result = qword_27CC12340;
  if (!qword_27CC12340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12340);
  }

  return result;
}

unint64_t sub_218DF1618()
{
  result = qword_27CC12348;
  if (!qword_27CC12348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12348);
  }

  return result;
}

unint64_t sub_218DF1670()
{
  result = qword_280EBCE10;
  if (!qword_280EBCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCE10);
  }

  return result;
}

unint64_t sub_218DF16C8()
{
  result = qword_280EBCE18;
  if (!qword_280EBCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCE18);
  }

  return result;
}

unint64_t sub_218DF171C()
{
  result = qword_280EBCE00;
  if (!qword_280EBCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCE00);
  }

  return result;
}

unint64_t sub_218DF1770(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

id sub_218DF17C4()
{
  ObjectType = swift_getObjectType();
  sub_218718690(v0 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_sportsOnboardingManager, v7);
  v2 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v3 = *(v2 + 56);
  v4 = v0;
  v3();

  __swift_destroy_boxed_opaque_existential_1(v7);
  v6.receiver = v4;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_218DF1A90()
{
  v1 = v0;
  sub_219274EBC(v0, *(v0 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_subscriptionService));
  v2 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_shortcutService), *(v0 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_shortcutService + 24));
  sub_2193EADBC(v0, *v2);
  v3 = *(v0 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_sportsOnboardingManager + 24);
  v4 = *(v0 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_sportsOnboardingManager + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_sportsOnboardingManager), v3);
  (*(v4 + 48))(v0, &off_282A49350, v3, v4);
  v5 = v0 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_editorialService;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(v7 + 16);
  v9 = swift_unknownObjectRetain();
  v8(v9, &off_282A49388, v6, v7);
  swift_endAccess();
  v10 = v1 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_followingBadgingCoordinator;
  swift_beginAccess();
  v11 = *(v10 + 24);
  v12 = *(v10 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  v13 = *(v12 + 16);
  v14 = swift_unknownObjectRetain();
  v13(v14, &off_282A49370, v11, v12);
  swift_endAccess();
  v15 = v1 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_magazinesBadgingCoordinator;
  swift_beginAccess();
  v16 = *(v15 + 24);
  v17 = *(v15 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  v18 = *(v17 + 16);
  v19 = swift_unknownObjectRetain();
  v18(v19, &off_282A49360, v16, v17);
  swift_endAccess();
  swift_getObjectType();
  sub_218749180(qword_280ECEC40, v20, type metadata accessor for FollowingDataManager, &unk_219C3AFB8);
  swift_unknownObjectRetain();
  sub_219BF42F4();
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_puzzleBadgingCoordinator), *(v1 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_puzzleBadgingCoordinator + 24));
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_219BE20F4();

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

void sub_218DF1D68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      swift_getObjectType();
      v6 = *(v5 + 64);
      v7 = v3;
      v6();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

BOOL sub_218DF1E40(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_purchaseController);
  v4 = sub_219BF53D4();
  v5 = [v3 purchaseLookUpEntryForTagID_];

  if (!v5)
  {
    return 0;
  }

  if ([v5 purchaseType] != 1)
  {

    return 0;
  }

  if ([v5 purchaseValidationState] == 1)
  {

    return 1;
  }

  else
  {
    v7 = [v5 purchaseValidationState];

    return v7 == 3;
  }
}

BOOL sub_218DF1EFC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_purchaseController);
  v4 = sub_219BF53D4();
  v5 = [v3 purchaseLookUpEntryForTagID_];

  if (!v5)
  {
    return 0;
  }

  if ([v5 purchaseType] != 2)
  {

    return 0;
  }

  if ([v5 purchaseValidationState] == 1)
  {

    return 1;
  }

  else
  {
    v7 = [v5 purchaseValidationState];

    return v7 == 3;
  }
}

uint64_t sub_218DF1FB8()
{
  v41 = sub_219BF2CB4();
  v1 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v3 = (&v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_219BF2634();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218748D40(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E93D80();
  v12 = v11;
  if (!(v11 >> 62))
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_11:

    v24 = MEMORY[0x277D84F90];
LABEL_12:
    v25 = type metadata accessor for FollowingTagModel();
    v26 = sub_218749180(&unk_280ED6630, 255, type metadata accessor for FollowingTagModel, &protocol conformance descriptor for FollowingTagModel);
    v27 = sub_218749180(&qword_280ED6640, 255, type metadata accessor for FollowingTagModel, &protocol conformance descriptor for FollowingTagModel);
    MEMORY[0x21CEB9170](v24, v25, v26, v27);
    v28 = sub_219BE23E4();
    (*(v8 + 8))(v10, v7);
    return v28;
  }

  v13 = sub_219BF7214();
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_3:
  v42 = MEMORY[0x277D84F90];
  result = sub_219BF73F4();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = v8;
    v32 = v7;
    v15 = v4;
    v16 = 0;
    v17 = (v0 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_contentAvailabilityValidator);
    v36 = v12 & 0xC000000000000001;
    v37 = v13;
    v35 = *MEMORY[0x277D33B98];
    v33 = (v1 + 8);
    v34 = (v1 + 104);
    v18 = (v15 + 8);
    v38 = v12;
    do
    {
      if (v36)
      {
        v19 = MEMORY[0x21CECE0F0](v16, v12);
      }

      else
      {
        v19 = *(v12 + 8 * v16 + 32);
      }

      ++v16;
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      *v3 = *(v19 + 16);
      v20 = v41;
      (*v34)(v3, v35, v41);
      swift_unknownObjectRetain();
      v21 = v39;
      sub_219BF4794();
      (*v33)(v3, v20);
      v22 = sub_219BF2614();
      (*v18)(v21, v40);
      type metadata accessor for FollowingTagModel();
      v23 = swift_allocObject();
      *(v23 + 16) = 2;
      *(v23 + 24) = v19;
      *(v23 + 32) = v22 & 1;
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v12 = v38;
    }

    while (v37 != v16);

    v24 = v42;
    v8 = v31;
    v7 = v32;
    v10 = v30;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_218DF2428()
{
  v1 = v0;
  v45 = sub_219BF2CB4();
  v2 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_219BF2634();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218748D40(0);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_218845E04();
  v9 = v8;
  v46 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
LABEL_29:
    v10 = sub_219BF7214();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v39 = v4;
    v40 = v2;
    v41 = v1;
    v12 = 0;
    v2 = v9 & 0xC000000000000001;
    v1 = &selRef_boldSystemFontOfSize_;
    while (1)
    {
      if (v2)
      {
        v4 = MEMORY[0x21CECE0F0](v12, v9);
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v14 = v46;
          v2 = v40;
          v1 = v41;
          v4 = v39;
          v11 = MEMORY[0x277D84F90];
          goto LABEL_18;
        }
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_29;
        }

        v4 = *(v9 + 8 * v12 + 32);

        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_15;
        }
      }

      if ([*(v4 + 16) tagType] == 2 && *(v4 + 25))
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
      }

      ++v12;
      if (v13 == v10)
      {
        goto LABEL_16;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:

  if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
  {
    v15 = v14[2];
    if (v15)
    {
      goto LABEL_21;
    }

LABEL_31:

    v26 = MEMORY[0x277D84F90];
LABEL_32:
    v27 = type metadata accessor for FollowingTagModel();
    v28 = sub_218749180(&unk_280ED6630, 255, type metadata accessor for FollowingTagModel, &protocol conformance descriptor for FollowingTagModel);
    v29 = sub_218749180(&qword_280ED6640, 255, type metadata accessor for FollowingTagModel, &protocol conformance descriptor for FollowingTagModel);
    v30 = v33;
    MEMORY[0x21CEB9170](v26, v27, v28, v29);
    v31 = v35;
    v32 = sub_219BE23E4();
    (*(v34 + 8))(v30, v31);
    return v32;
  }

  v15 = sub_219BF7214();
  if (!v15)
  {
    goto LABEL_31;
  }

LABEL_21:
  v46 = v11;
  result = sub_219BF73F4();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v18 = (v1 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_contentAvailabilityValidator);
    v39 = v14 & 0xC000000000000001;
    v40 = v15;
    v38 = *MEMORY[0x277D33B98];
    v36 = (v2 + 8);
    v37 = (v2 + 104);
    v19 = (v4 + 8);
    v41 = v14;
    do
    {
      if (v39)
      {
        v20 = MEMORY[0x21CECE0F0](v17, v14);
      }

      else
      {
        v20 = v14[v17 + 4];
      }

      ++v17;
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      v22 = v44;
      v21 = v45;
      *v44 = *(v20 + 16);
      (*v37)(v22, v38, v21);
      swift_unknownObjectRetain();
      v23 = v42;
      sub_219BF4794();
      (*v36)(v22, v21);
      v24 = sub_219BF2614();
      (*v19)(v23, v43);
      type metadata accessor for FollowingTagModel();
      v25 = swift_allocObject();
      *(v25 + 16) = 2;
      *(v25 + 24) = v20;
      *(v25 + 32) = v24 & 1;
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v14 = v41;
    }

    while (v40 != v17);

    v26 = v46;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

double sub_218DF29D4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return result;
}

uint64_t sub_218DF2A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v5, &off_282A493C8, a3, a4, a5, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218DF2B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(v4, &off_282A493C8, a2, a3, a4, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218DF2C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 72))(v3, &off_282A493C8, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218DF2D3C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 80))(v2, &off_282A493C8, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_218DF2E0C()
{
  result = qword_280ED2FE0;
  if (!qword_280ED2FE0)
  {
    type metadata accessor for RootPathURLHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2FE0);
  }

  return result;
}

uint64_t sub_218DF2E60()
{
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2187484A4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  sub_219BEB354();
  sub_2187484A4(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v4 = v3;
  v5 = *(v3 - 8);
  if ((*(v5 + 48))(v2, 1, v3) == 1)
  {
    sub_218B062D0(v2);
LABEL_7:
    v6 = 0;
    return v6 & 1;
  }

  sub_219BE6934();
  v14[3] = v11;
  v14[4] = v12;
  v15 = v13;
  v14[0] = *&v8[8];
  v14[1] = v9;
  v14[2] = v10;
  (*(v5 + 8))(v2, v4);
  if (v15 != 1)
  {
    sub_2189C3F04(v14);
    goto LABEL_7;
  }

  if (v14[0] == __PAIR128__(0xEB00000000726564, 0x6C6F686563616C70))
  {
    sub_2189C3F04(v14);
    v6 = 1;
  }

  else
  {
    v6 = sub_219BF78F4();
    sub_2189C3F04(v14);
  }

  return v6 & 1;
}

uint64_t sub_218DF3124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_219BF0634();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_219BEF6B4();
  v5[10] = swift_task_alloc();
  v7 = sub_219BEF594();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  sub_219BEF5B4();
  v5[14] = swift_task_alloc();
  sub_219BEF644();
  v5[15] = swift_task_alloc();
  sub_219BEF664();
  v5[16] = swift_task_alloc();
  v8 = sub_219BEF694();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  sub_218DF512C(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[20] = swift_task_alloc();
  sub_218DF512C(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[21] = swift_task_alloc();
  sub_219BEF604();
  v5[22] = swift_task_alloc();
  v9 = sub_219BEF6C4();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  v10 = sub_219BDCAB4();
  v5[26] = v10;
  v5[27] = *(v10 - 8);
  v5[28] = swift_task_alloc();
  sub_218DF512C(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[29] = swift_task_alloc();
  sub_219BDCAF4();
  v5[30] = swift_task_alloc();
  v11 = sub_219BDCAE4();
  v5[31] = v11;
  v5[32] = *(v11 - 8);
  v5[33] = swift_task_alloc();
  sub_218DF512C(0, &qword_280EE3CD8, MEMORY[0x277D6E920]);
  v5[34] = swift_task_alloc();
  sub_219BE6814();
  v5[35] = swift_task_alloc();
  sub_218DF512C(0, &qword_27CC104C8, MEMORY[0x277D6DDD0]);
  v5[36] = swift_task_alloc();
  sub_219BE80A4();
  v5[37] = swift_task_alloc();
  sub_219BE8F94();
  v5[38] = swift_task_alloc();
  v12 = sub_219BE8164();
  v5[39] = v12;
  v5[40] = *(v12 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218DF3714, 0, 0);
}

uint64_t sub_218DF3714()
{
  v1 = v0[42];
  v31 = v0[40];
  v32 = v0[39];
  v33 = v0[41];
  v2 = v0[34];
  v34 = v0[32];
  v35 = v0[29];
  v14 = v0[28];
  v37 = v0[27];
  v36 = v0[26];
  v28 = v0[25];
  v29 = v0[24];
  v30 = v0[23];
  v15 = v0[21];
  v16 = v0[20];
  v17 = v0[18];
  v18 = v0[19];
  v19 = v0[17];
  v22 = v0[13];
  v20 = v0[12];
  v24 = v0[11];
  v27 = v0[9];
  v25 = v0[8];
  v26 = v0[7];
  v38 = v0[6];
  sub_218DF41C0();
  sub_219BE8134();
  sub_219BE8114();
  sub_219BE8054();
  sub_219BE8154();
  sub_219BE7FD4();
  sub_219BE80B4();
  sub_219BE8094();
  sub_219BE7FE4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE8074();
  sub_219BE8144();
  sub_219BE8084();
  sub_219BE7FF4();
  sub_219BF6024();
  sub_219BE7F94();
  sub_219BE8024();
  sub_219BE8014();
  sub_219BE80F4();
  sub_219BE7FC4();
  sub_219BE7FB4();
  v3 = sub_219BE9F64();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_219BE8124();
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  sub_219BDCAC4();
  v4 = sub_219BF0BD4();
  (*(*(v4 - 8) + 56))(v35, 1, 1, v4);
  (*(v37 + 104))(v14, *MEMORY[0x277D6D178], v36);
  sub_219BEF5F4();
  v5 = sub_219BEF624();
  (*(*(v5 - 8) + 56))(v15, 1, 1, v5);
  v6 = sub_219BEF684();
  (*(*(v6 - 8) + 56))(v16, 1, 1, v6);
  (*(v17 + 104))(v18, *MEMORY[0x277D326B0], v19);
  sub_219BEF654();
  sub_219BEF5F4();
  (*(v20 + 104))(v22, *MEMORY[0x277D32680], v24);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  (*(v25 + 104))(v27, *MEMORY[0x277D32EC8], v26);
  v7 = sub_219BEE0E4();
  (*(v25 + 8))(v27, v26);
  (*(v29 + 8))(v28, v30);
  (*(v37 + 8))(v14, v36);
  sub_218864C28(v35, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v31 + 16))(v33, v1, v32);
  v8 = swift_task_alloc();
  v8[2] = v38;
  v8[3] = v1;
  v8[4] = v7;
  sub_218947BA4(sub_218DF4C0C, v8);
  v9 = v0[42];
  v10 = v0[40];
  v11 = v0[33];
  v21 = v0[31];
  v23 = v0[39];

  type metadata accessor for MagazineGridLayoutModel(0);
  sub_218951758();
  sub_218DF4DAC(&unk_27CC0AE80, type metadata accessor for MagazineGridLayoutModel, &unk_219C42DE8);
  sub_219BE6514();
  sub_219BEE0C4();

  (*(v34 + 8))(v11, v21);
  (*(v10 + 8))(v9, v23);

  v12 = v0[1];

  return v12();
}

double sub_218DF41C0()
{
  sub_218DF512C(0, &qword_27CC0C618, sub_218951594);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  sub_218C87978(&v13 - v1);
  sub_218951594(0);
  v4 = v3;
  v5 = *(v3 - 8);
  if ((*(v5 + 48))(v2, 1, v3) == 1)
  {
    sub_218864C28(v2, &qword_27CC0C618, sub_218951594);
    v6 = 0;
  }

  else
  {
    sub_219BE6934();
    (*(v5 + 8))(v2, v4);
    v17[0] = v14;
    v17[1] = v15;
    v18 = v16;
    v6 = sub_21906DAA8();
    sub_218CB8324(v17);
  }

  *&v14 = v6;
  sub_218DF512C(0, &qword_280E8EDB0, sub_2186D0BA8);
  v7 = sub_219BF6F94();

  if ((v7 & 1) == 0 || (v8 = sub_219BE8034(), v9 = [v8 userInterfaceIdiom], v8, v10 = v9 + 1, v9 + 1 > 7) || ((1 << v10) & 0x59) != 0)
  {
LABEL_7:
    sub_219BE7FF4();
    return v11;
  }

  result = 30.0;
  if (((1 << v10) & 0x84) == 0)
  {
    if (!v9)
    {
      return 20.0;
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_218DF43EC@<X0>(uint64_t a2@<X2>, void (*a3)(char *, char *, uint64_t)@<X3>, int64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v37 = a4;
  v38 = a3;
  v34 = a5;
  v44 = type metadata accessor for MagazineGridLayoutModel(0);
  MEMORY[0x28223BE20](v44);
  v42 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_219BEF974();
  v45 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897BF58(0);
  v39 = v8;
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v33 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BEE074();
  v10 = *(v36 - 1);
  MEMORY[0x28223BE20](v36);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE9FA4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951594(0);
  sub_219BE6934();
  if (v64 <= 1u)
  {
    if (v64)
    {
      sub_218DF4DF4(a2, v63, &v46);
      sub_218CB8324(v63);
      v61 = v52;
      v62[0] = v53;
      *&v62[1] = v54;
      v57 = v48;
      v58 = v49;
      v59 = v50;
      v60 = v51;
      v55 = v46;
      v56 = v47;
      sub_218DF5058(&v55);
    }

    else
    {
      sub_218DF4DF4(a2, v63, &v46);
      sub_218CB8324(v63);
      v61 = v52;
      v62[0] = v53;
      *&v62[1] = v54;
      v57 = v48;
      v58 = v49;
      v59 = v50;
      v60 = v51;
      v55 = v46;
      v56 = v47;
      sub_218DF5064(&v55);
    }
  }

  else if (v64 == 2)
  {
    sub_218DF4DF4(a2, v63, &v55);
    sub_218DF504C(&v55);
  }

  else
  {
    if (v64 != 3)
    {
      sub_218CB8324(v63);
      sub_218DF4C30(&v65);
      goto LABEL_11;
    }

    sub_218DF4DF4(a2, v63, &v46);
    sub_218CB8324(v63);
    v61 = v52;
    v62[0] = v53;
    *&v62[1] = v54;
    v57 = v48;
    v58 = v49;
    v59 = v50;
    v60 = v51;
    v55 = v46;
    v56 = v47;
    sub_218DF5040(&v55);
  }

  v71 = v61;
  v72[0] = v62[0];
  *(v72 + 9) = *(v62 + 9);
  v67 = v57;
  v68 = v58;
  v69 = v59;
  v70 = v60;
  v65 = v55;
  v66 = v56;
LABEL_11:
  v61 = v71;
  v62[0] = v72[0];
  *(v62 + 9) = *(v72 + 9);
  v57 = v67;
  v58 = v68;
  v59 = v69;
  v60 = v70;
  v55 = v65;
  v56 = v66;
  (*(v14 + 104))(v16, *MEMORY[0x277D6E9B0], v13);
  sub_218DF4C54();
  v46 = 0u;
  v47 = 0u;
  *&v48 = 0;
  v17 = v73;
  sub_219BEE0A4();
  if (v17)
  {
    sub_218864C28(&v46, &qword_280E91020, sub_2189BD704);
    result = (*(v14 + 8))(v16, v13);
    *v37 = v17;
  }

  else
  {
    sub_218864C28(&v46, &qword_280E91020, sub_2189BD704);
    v19 = sub_219BEE004();
    (*(v10 + 8))(v12, v36);
    v20 = *(v19 + 16);
    if (v20)
    {
      v32[1] = 0;
      v32[2] = v16;
      *&v46 = MEMORY[0x277D84F90];
      sub_218C35CA8(0, v20, 0);
      v21 = v46;
      v22 = *(v45 + 16);
      v23 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v32[0] = v19;
      v24 = (v19 + v23);
      v37 = *(v45 + 72);
      v38 = v22;
      v45 += 16;
      v35 = v43 + 32;
      v36 = (v45 - 8);
      v25 = v33;
      do
      {
        v73 = v20;
        v26 = v40;
        v27 = v41;
        v28 = v21;
        v29 = v38;
        v38(v40, v24, v41);
        v29(v42, v26, v27);
        v21 = v28;
        sub_218DF4DAC(&unk_27CC0AE80, type metadata accessor for MagazineGridLayoutModel, &unk_219C42DE8);
        sub_219BE75D4();
        (*v36)(v26, v27);
        *&v46 = v28;
        v31 = *(v28 + 16);
        v30 = *(v28 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_218C35CA8((v30 > 1), v31 + 1, 1);
          v21 = v46;
        }

        *(v21 + 16) = v31 + 1;
        (*(v43 + 32))(v21 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v31, v25, v39);
        v24 = v37 + v24;
        v20 = v73 - 1;
      }

      while (v73 != 1);
    }

    sub_218DF4D58();
    sub_218DF4DAC(&qword_27CC14E90, type metadata accessor for MagazineGridLayoutModel, &unk_219C42E20);
    return sub_219BE81A4();
  }

  return result;
}

uint64_t sub_218DF4B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_218DF3124(a1, a2, a3, a4);
}

double sub_218DF4C30(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = 4;
  return result;
}

unint64_t sub_218DF4C54()
{
  result = qword_27CC123E0;
  if (!qword_27CC123E0)
  {
    sub_218951594(255);
    sub_218DF4D04();
    sub_218DF4DAC(&qword_27CC123F0, type metadata accessor for MagazineGridItemModel, &unk_219C46260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC123E0);
  }

  return result;
}

unint64_t sub_218DF4D04()
{
  result = qword_27CC123E8;
  if (!qword_27CC123E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC123E8);
  }

  return result;
}

unint64_t sub_218DF4D58()
{
  result = qword_27CC123F8;
  if (!qword_27CC123F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC123F8);
  }

  return result;
}

uint64_t sub_218DF4DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_218DF4DF4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_219BE8164();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MagazineGridSectionHeaderViewLayoutOptions(0);
  MEMORY[0x28223BE20](v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v30 - v15;
  (*(v7 + 16))(v9, a1, v6, v14);
  v17 = sub_219BE8034();
  v18 = [v17 horizontalSizeClass];

  if (v18 == 2)
  {
    sub_219BE7FF4();
    v20 = 9.0;
  }

  else
  {
    v20 = 4.0;
    v19 = 16.0;
  }

  *&v12[v10[8]] = v19;
  *&v12[v10[7]] = 0x403E000000000000;
  sub_219BE7FF4();
  v22 = v21;
  sub_219BE7FF4();
  v24 = v23;
  (*(v7 + 32))(v12, v9, v6);
  v25 = &v12[v10[5]];
  *v25 = v20;
  *(v25 + 1) = v22;
  v25[2] = 16.0;
  *(v25 + 3) = v24;
  *&v12[v10[6]] = 0x404C000000000000;
  sub_218DF506C(v12, v16);
  sub_2191B3814(a2, v16, v30);
  sub_218DF50D0(v16);
  v26 = v30[7];
  *(a3 + 96) = v30[6];
  *(a3 + 112) = v26;
  *(a3 + 128) = v31;
  v27 = v30[3];
  *(a3 + 32) = v30[2];
  *(a3 + 48) = v27;
  v28 = v30[5];
  *(a3 + 64) = v30[4];
  *(a3 + 80) = v28;
  result = v30[1];
  *a3 = v30[0];
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_218DF506C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineGridSectionHeaderViewLayoutOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DF50D0(uint64_t a1)
{
  v2 = type metadata accessor for MagazineGridSectionHeaderViewLayoutOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218DF512C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218DF5180@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 88) possiblyUnfetchedAppConfiguration];
  if (([v3 respondsToSelector_] & 1) != 0 && (v4 = objc_msgSend(v3, sel_sportsFavoritesSyncModalConfig), v5 = objc_msgSend(v4, sel_titleText), v4, v5))
  {
    v6 = sub_219BF5414();
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_219BDB5E4();
  }

  v36 = v7;
  v37 = v6;

  if (([v3 respondsToSelector_] & 1) != 0 && (v9 = objc_msgSend(v3, sel_sportsFavoritesSyncModalConfig), v10 = objc_msgSend(v9, sel_bodyText), v9, v10))
  {
    v11 = sub_219BF5414();
    v34 = v12;
    v35 = v11;
    v13 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  }

  else
  {
    type metadata accessor for Localized();
    v14 = swift_getObjCClassFromMetadata();
    v13 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v10 = [objc_opt_self() bundleForClass_];
    v15 = sub_219BDB5E4();
    v34 = v16;
    v35 = v15;
  }

  v17 = sub_218DF5704();
  v19 = v18;
  v33 = v17;
  type metadata accessor for Localized();
  v20 = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = [v21 v13[346]];
  v23 = sub_219BDB5E4();
  v25 = v24;

  v26 = [v21 v13 + 1083];
  v27 = sub_219BDB5E4();
  v29 = v28;

  v31 = *(v1 + 72);
  v30 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v1 + 48), v31);
  (*(v30 + 24))(v31, v30);
  result = swift_unknownObjectRelease();
  *a1 = v37;
  a1[1] = v36;
  a1[2] = v35;
  a1[3] = v34;
  a1[4] = v33;
  a1[5] = v19;
  a1[6] = 0xD00000000000001DLL;
  a1[7] = 0x8000000219CD6720;
  a1[8] = v23;
  a1[9] = v25;
  a1[10] = v27;
  a1[11] = v29;
  return result;
}

double sub_218DF5548(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = *(v3 + 32);
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);

      sub_218DF5B38(v7, v8);
      sub_218DF5A0C(v7, v8, v5);

      swift_unknownObjectRelease();
      return sub_218DF5B4C(v7, v8);
    }

    else
    {
    }
  }

  return result;
}

double sub_218DF5604(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;

      sub_218DF5A0C(0, 0, v3);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_218DF5690()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218DF5704()
{
  v0 = [objc_opt_self() sharedAccount];
  v1 = [v0 contentStoreFrontID];

  if (!v1)
  {
    sub_219BF5414();
    goto LABEL_15;
  }

  v2 = sub_219BF5414();
  v4 = v3;

  v5 = sub_219BF5414();
  if (!v4)
  {
LABEL_15:

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();

    sub_219BF5414();
    goto LABEL_22;
  }

  if (v5 == v2 && v4 == v6)
  {
    goto LABEL_17;
  }

  v8 = sub_219BF78F4();

  if (v8)
  {
    goto LABEL_22;
  }

  if (sub_219BF5414() == v2 && v4 == v9)
  {
    goto LABEL_21;
  }

  v11 = sub_219BF78F4();

  if (v11)
  {
    goto LABEL_22;
  }

  if (sub_219BF5414() == v2 && v4 == v12)
  {
LABEL_21:

LABEL_22:

    return 0x676F6C2D636E7973;
  }

  v14 = sub_219BF78F4();

  if (v14)
  {
    goto LABEL_22;
  }

  if (sub_219BF5414() == v2 && v4 == v15)
  {
LABEL_17:

    goto LABEL_22;
  }

  v16 = sub_219BF78F4();

  if (v16)
  {
    goto LABEL_22;
  }

  if (sub_219BF5414() == v2 && v4 == v17)
  {
  }

  else
  {
    sub_219BF78F4();
  }

  return 0x676F6C2D636E7973;
}

void sub_218DF5A0C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a3 + 48), *(a3 + 72));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v5;
    v10[4] = sub_218DF5B2C;
    v10[5] = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_218793E0C;
    v10[3] = &block_descriptor_60;
    v9 = _Block_copy(v10);
    sub_218DF5B38(a1, a2);

    [v7 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
  }
}

double sub_218DF5B38(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

double sub_218DF5B4C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_218DF5B60(unint64_t result, unint64_t a2)
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
        result = sub_219BF73B4();
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

  sub_218C8BAF0(result, a2, 10);
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

uint64_t sub_218DF5E60(__int128 *a1)
{
  v1 = MEMORY[0x277D84560];
  sub_218DF8658(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v2 = sub_219BE2644();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09EC0;
  v7 = (v6 + v5);
  *v7 = 0x6569766572706461;
  *(v7 + 1) = 0xEB00000000646977;
  v8 = *(v3 + 104);
  (v8)(v6 + v5, *MEMORY[0x277D6CC80], v2);
  strcpy(&v7[v4], "adpreviewlimit");
  v7[v4 + 15] = -18;
  v8();
  sub_218DF8658(0, &unk_280E8B6F0, sub_218A38BBC, v1);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  *(inited + 32) = 0x49656C6369747261;
  *(inited + 40) = 0xE900000000000044;
  sub_218DF8658(0, &unk_280E8C0A0, MEMORY[0x277D6CCB8], v1);
  v10 = sub_219BE26C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09EC0;
  v15 = (v14 + v13);
  *v15 = 65;
  v15[1] = 0xE100000000000000;
  v16 = *(v11 + 104);
  v23 = *MEMORY[0x277D6CCA8];
  result = v16(v14 + v13);
  v18 = *MEMORY[0x277D30A00];
  if ((*MEMORY[0x277D30A00] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v15 + v12) = v18;
    v22 = *MEMORY[0x277D6CCB0];
    v16(v15 + v12);
    *(inited + 48) = v14;
    *(inited + 56) = 0x4449676174;
    *(inited + 64) = 0xE500000000000000;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_219C09EC0;
    v20 = (v19 + v13);
    *v20 = 84;
    v20[1] = 0xE100000000000000;
    (v16)(v20, v23, v10);
    *(v20 + v12) = v18;
    (v16)(v20 + v12, v22, v10);
    *(inited + 72) = v19;
    sub_2194AE704(inited);
    swift_setDeallocating();
    sub_218A38BBC(0);
    swift_arrayDestroy();
    v21 = sub_219BE2684();

    *(v25 + 16) = v21;
    sub_2186CB1F0(a1, v25 + 24);
    return v25;
  }

  return result;
}

uint64_t sub_218DF6248(uint64_t a1)
{
  v2 = sub_219BE26D4();
  v82 = *(v2 - 8);
  v83 = v2;
  MEMORY[0x28223BE20](v2);
  v81 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEC544();
  v90 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v98 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE22B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v79 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v86 = &v78 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v78 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v78 - v15;
  v17 = sub_219BE22F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v78 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v80 = &v78 - v21;
  MEMORY[0x28223BE20](v22);
  v85 = &v78 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v78 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v78 - v28;
  sub_218DF8658(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v93 = v30;
  v89 = a1;
  sub_219BE2594();
  sub_219BE22D4();
  v31 = *(v18 + 8);
  v94 = v17;
  v92 = v31;
  v31(v29, v17);
  v32 = sub_219BE22C4();
  v34 = v33;
  v35 = *(v7 + 8);
  v95 = v6;
  v96 = v35;
  v91 = v7 + 8;
  result = (v35)(v16, v6);
  if (v34)
  {
    v87 = v4;
    if (qword_27CC08528 != -1)
    {
      swift_once();
    }

    v37 = qword_27CCD89F0;
    sub_218DF8658(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_219C09BA0;
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 64) = sub_2186FC3BC();
    *(v38 + 32) = v32;
    *(v38 + 40) = v34;

    v39 = sub_219BF6214();
    sub_219BE5314("Processing URL with ad preview, identifier=%{public}@", 53, 2, &dword_2186C1000, v37, v39, v38);

    sub_219BEC524();
    v97 = sub_218DF71AC();
    sub_219BE2594();
    sub_219BE22D4();
    v40 = v94;
    v41 = v92;
    v92(v26, v94);
    v42 = sub_219BE22C4();
    v44 = v43;
    v45 = v95;
    v96(v13, v95);
    if (v44)
    {
      v46 = v88;
      v48 = v88[6];
      v47 = v88[7];
      v84 = v42;
      v95 = v47;
      v96 = __swift_project_boxed_opaque_existential_1(v88 + 3, v48);
      sub_219BEBC24();
      v49 = swift_allocObject();
      *(v49 + 16) = v42;
      *(v49 + 24) = v44;
      sub_219BEC2C4();
      sub_219BEC314();
      sub_219BEC394();
      sub_218DF8610(&unk_280EE3370, 255, MEMORY[0x277D2D600], MEMORY[0x277D2D5F8]);

      sub_219BEC014();

      v96 = __swift_project_boxed_opaque_existential_1(v46 + 3, v46[6]);
      sub_219BEBC14();
      v50 = swift_allocObject();
      *(v50 + 16) = v84;
      *(v50 + 24) = v44;
      sub_219BEC304();
      sub_219BEBF94();
      sub_219BEC084();
      sub_218DF8610(&unk_280EE3360, 255, MEMORY[0x277D2D618], MEMORY[0x277D2D610]);

      v51 = v98;
      sub_219BEC014();

      __swift_project_boxed_opaque_existential_1(v46 + 3, v46[6]);
      sub_219BEBC34();
      sub_219BEBC04();
      v52 = swift_allocObject();
      *(v52 + 16) = v84;
      *(v52 + 24) = v44;
      sub_219BEBEA4();
      sub_219BEBF24();
      sub_219BEBF84();
      sub_218DF8610(&unk_280EE3440, 255, MEMORY[0x277D2D440], MEMORY[0x277D2D438]);
      sub_219BEC014();

      v53 = v51;
LABEL_9:

      v64 = v87;
      return (*(v90 + 8))(v53, v64);
    }

    v54 = v85;
    sub_219BE2594();
    v55 = v86;
    sub_219BE22D4();
    v41(v54, v40);
    v56 = sub_219BE22C4();
    v58 = v57;
    v96(v55, v45);
    if (v58)
    {
      v59 = v88;
      v61 = v88[6];
      v60 = v88[7];
      v85 = v56;
      v95 = v60;
      v96 = __swift_project_boxed_opaque_existential_1(v88 + 3, v61);
      sub_219BEBBE4();
      v62 = swift_allocObject();
      *(v62 + 16) = v56;
      *(v62 + 24) = v58;
      sub_219BEC0C4();
      sub_219BEC164();
      sub_219BEC234();
      sub_218DF8610(&unk_280EE33C0, 255, MEMORY[0x277D2D560], MEMORY[0x277D2D558]);

      v53 = v98;
      sub_219BEC014();

      __swift_project_boxed_opaque_existential_1(v59 + 3, v59[6]);
      sub_219BEBC34();
      sub_219BEBC04();
      v63 = swift_allocObject();
      *(v63 + 16) = v85;
      *(v63 + 24) = v58;
      sub_219BEBEA4();
      sub_219BEBF24();
      sub_219BEBF84();
      sub_218DF8610(&unk_280EE3440, 255, MEMORY[0x277D2D440], MEMORY[0x277D2D438]);
      sub_219BEC014();
LABEL_8:

      goto LABEL_9;
    }

    v65 = v80;
    sub_219BE2594();
    v66 = v81;
    sub_219BE22E4();
    v41(v65, v40);
    v67 = sub_219BE2634();
    v69 = v68;
    (*(v82 + 8))(v66, v83);
    v53 = v98;
    if (v69)
    {
      if (v67 == 0x756F79726F662FLL && v69 == 0xE700000000000000)
      {

LABEL_17:
        v71 = v88;
        __swift_project_boxed_opaque_existential_1(v88 + 3, v88[6]);
        sub_219BEBBE4();
        sub_219BEC0C4();
        sub_219BEC164();
        sub_219BEC234();
        sub_218DF8610(&unk_280EE33C0, 255, MEMORY[0x277D2D560], MEMORY[0x277D2D558]);
        sub_219BEC014();

        __swift_project_boxed_opaque_existential_1(v71 + 3, v71[6]);
        sub_219BEBC34();
        sub_219BEBC04();
        sub_219BEBEA4();
        sub_219BEBF24();
        sub_219BEBF84();
        sub_218DF8610(&unk_280EE3440, 255, MEMORY[0x277D2D440], MEMORY[0x277D2D438]);
        sub_219BEC014();
        goto LABEL_9;
      }

      v70 = sub_219BF78F4();

      if (v70)
      {
        goto LABEL_17;
      }
    }

    v72 = v78;
    sub_219BE2594();
    v73 = v79;
    sub_219BE22D4();
    v92(v72, v94);
    v74 = sub_219BE22C4();
    v76 = v75;
    v96(v73, v95);
    v64 = v87;
    if (!v76)
    {
      return (*(v90 + 8))(v53, v64);
    }

    __swift_project_boxed_opaque_existential_1(v88 + 3, v88[6]);
    sub_219BEBC24();
    v77 = swift_allocObject();
    *(v77 + 16) = v74;
    *(v77 + 24) = v76;
    sub_219BEC2C4();
    sub_219BEC314();
    sub_219BEC394();
    sub_218DF8610(&unk_280EE3370, 255, MEMORY[0x277D2D600], MEMORY[0x277D2D5F8]);
    sub_219BEC014();
    goto LABEL_8;
  }

  return result;
}

unint64_t sub_218DF71AC()
{
  v0 = sub_219BE22B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v38[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE22F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF8658(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22D4();
  (*(v5 + 8))(v7, v4);
  v8 = sub_219BE22C4();
  v10 = v9;
  result = (*(v1 + 8))(v3, v0);
  if (!v10)
  {
    return 1;
  }

  v12 = HIBYTE(v10) & 0xF;
  v13 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v14 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    return 1;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    sub_218C8BAF0(v8, v10, 10);
    v16 = v35;
    v34 = v36;
LABEL_64:

    if ((v34 & 1) == 0)
    {
      return v16;
    }

    return 1;
  }

  if ((v10 & 0x2000000000000000) == 0)
  {
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_219BF73B4();
    }

    v15 = *result;
    if (v15 == 43)
    {
      if (v13 >= 1)
      {
        v12 = v13 - 1;
        if (v13 != 1)
        {
          v16 = 0;
          if (result)
          {
            v23 = (result + 1);
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                goto LABEL_62;
              }

              v25 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_62;
              }

              v16 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_62;
              }

              ++v23;
              if (!--v12)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_54;
        }

        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v15 != 45)
    {
      if (v13)
      {
        v16 = 0;
        if (result)
        {
          while (1)
          {
            v29 = *result - 48;
            if (v29 > 9)
            {
              goto LABEL_62;
            }

            v30 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_62;
            }

            v16 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v13)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_54;
      }

LABEL_62:
      v16 = 0;
      LOBYTE(v12) = 1;
      goto LABEL_63;
    }

    if (v13 >= 1)
    {
      v12 = v13 - 1;
      if (v13 != 1)
      {
        v16 = 0;
        if (result)
        {
          v17 = (result + 1);
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_62;
            }

            v19 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_62;
            }

            v16 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              goto LABEL_62;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_54:
        LOBYTE(v12) = 0;
LABEL_63:
        v39 = v12;
        v34 = v12;
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v38[0] = v8;
  v38[1] = v10 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v12)
      {
        v16 = 0;
        v31 = v38;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v12)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    if (v12)
    {
      if (--v12)
      {
        v16 = 0;
        v20 = v38 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v12)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_71;
  }

  if (v12)
  {
    if (--v12)
    {
      v16 = 0;
      v26 = v38 + 1;
      while (1)
      {
        v27 = *v26 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v16;
        if ((v16 * 10) >> 64 != (10 * v16) >> 63)
        {
          break;
        }

        v16 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v26;
        if (!--v12)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_218DF7654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218DF8658(0, &qword_27CC12400, MEMORY[0x277D2D170], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  sub_219BEBE84();
  v8 = sub_219BEBD84();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_218DF841C(v7, &qword_27CC12400, MEMORY[0x277D2D170]);
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v10 = sub_219BEBD74();
    v11 = v12;
    (*(v9 + 8))(v7, v8);
  }

  if (v10 == a2 && v11 == a3)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_219BF78F4();
  }

  return v14 & 1;
}

uint64_t sub_218DF7800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(__n128), uint64_t (*a6)(uint64_t))
{
  v10 = a4(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = a5(v12);
  v16 = a6(v15);
  v18 = v17;
  (*(v11 + 8))(v14, v10);
  if (v16 == a2 && v18 == a3)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_219BF78F4();
  }

  return v20 & 1;
}

uint64_t sub_218DF7938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218DF8658(0, &qword_27CC12408, MEMORY[0x277D2D120], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  sub_219BEBE94();
  v8 = sub_219BEBC84();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_218DF841C(v7, &qword_27CC12408, MEMORY[0x277D2D120]);
    v10 = 0;
  }

  else
  {
    v11 = sub_219BEBC54();
    v13 = v12;
    (*(v9 + 8))(v7, v8);
    if (v11 == a2 && v13 == a3)
    {

      v10 = 1;
    }

    else
    {
      v10 = sub_219BF78F4();
    }
  }

  return v10 & 1;
}

uint64_t sub_218DF7AE8()
{
  v0 = sub_219BEBC84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEC0B4();
  if (qword_280EE34E8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_280F62398);
  v5 = MEMORY[0x21CEC2A10](v3, v4);
  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_218DF7C00()
{
  v0 = sub_219BEBC84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF848C(0);
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF8658(0, &qword_27CC12408, MEMORY[0x277D2D120], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  sub_219BEBE94();
  if (qword_280EE34E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v0, qword_280F62398);
  (*(v1 + 16))(v12, v16, v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v17 = *(v4 + 48);
  sub_218DF8520(v15, v6);
  sub_218DF8520(v12, &v6[v17]);
  v18 = *(v1 + 48);
  if (v18(v6, 1, v0) != 1)
  {
    v21 = v9;
    sub_218DF8520(v6, v9);
    if (v18(&v6[v17], 1, v0) != 1)
    {
      v24 = v30;
      (*(v1 + 32))(v30, &v6[v17], v0);
      sub_218DF8610(&qword_27CC12418, 255, MEMORY[0x277D2D120], MEMORY[0x277D2D128]);
      v25 = v21;
      v20 = sub_219BF53A4();
      v26 = *(v1 + 8);
      v26(v24, v0);
      v27 = MEMORY[0x277D2D120];
      sub_218DF841C(v12, &qword_27CC12408, MEMORY[0x277D2D120]);
      sub_218DF841C(v15, &qword_27CC12408, v27);
      v26(v25, v0);
      sub_218DF841C(v6, &qword_27CC12408, v27);
      return v20 & 1;
    }

    v22 = v9;
    v23 = MEMORY[0x277D2D120];
    sub_218DF841C(v12, &qword_27CC12408, MEMORY[0x277D2D120]);
    sub_218DF841C(v15, &qword_27CC12408, v23);
    (*(v1 + 8))(v22, v0);
    goto LABEL_8;
  }

  v19 = MEMORY[0x277D2D120];
  sub_218DF841C(v12, &qword_27CC12408, MEMORY[0x277D2D120]);
  sub_218DF841C(v15, &qword_27CC12408, v19);
  if (v18(&v6[v17], 1, v0) != 1)
  {
LABEL_8:
    sub_218DF85B4(v6);
    v20 = 0;
    return v20 & 1;
  }

  sub_218DF841C(v6, &qword_27CC12408, MEMORY[0x277D2D120]);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_218DF80B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218DF8658(0, &qword_27CC12420, MEMORY[0x277D2D158], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  sub_219BEC2B4();
  v8 = sub_219BEBD64();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_218DF841C(v7, &qword_27CC12420, MEMORY[0x277D2D158]);
    v10 = 0;
  }

  else
  {
    v11 = sub_219BEBD54();
    v13 = v12;
    (*(v9 + 8))(v7, v8);
    if (v11 == a2 && v13 == a3)
    {

      v10 = 1;
    }

    else
    {
      v10 = sub_219BF78F4();
    }
  }

  return v10 & 1;
}

uint64_t sub_218DF841C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218DF8658(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_218DF848C(uint64_t a1)
{
  if (!qword_27CC12410)
  {
    sub_218DF8658(255, &qword_27CC12408, MEMORY[0x277D2D120], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC12410);
    }
  }
}

uint64_t sub_218DF8520(uint64_t a1, uint64_t a2)
{
  sub_218DF8658(0, &qword_27CC12408, MEMORY[0x277D2D120], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DF85B4(uint64_t a1)
{
  sub_218DF848C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218DF8610(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_218DF8658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218DF86BC()
{
  sub_218DF8804(v0 + OBJC_IVAR____TtC7NewsUI214WebEmbedStyler_resource);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WebEmbedStyler(uint64_t a1)
{
  result = qword_27CC12430;
  if (!qword_27CC12430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218DF8774(uint64_t a1)
{
  result = type metadata accessor for WebEmbedResource(319);
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

uint64_t sub_218DF8804(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedResource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218DF8860(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for MiniMastheadModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1((a2 + 144), *(a2 + 168));
  sub_218E3AC84(v7);
  sub_219BE1BA4();
  sub_2188033F4(v7, type metadata accessor for MiniMastheadModel);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_219BE1B94();
}

void *TodayModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  return v0;
}

uint64_t type metadata accessor for SportsScheduleTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EA7F48;
  if (!qword_280EA7F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218DF8A98(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    sub_218DF8B4C(319);
    if (v2 <= 0x3F)
    {
      sub_218D528A0(319);
      if (v3 <= 0x3F)
      {
        sub_2186F9548();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_218DF8B4C(uint64_t a1)
{
  if (!qword_280E914E8)
  {
    sub_218DF8BD0();
    sub_218DF8C24();
    sub_218DF8C78();
    v1 = sub_219BEF544();
    if (!v2)
    {
      atomic_store(v1, &qword_280E914E8);
    }
  }
}

unint64_t sub_218DF8BD0()
{
  result = qword_280EC6A50;
  if (!qword_280EC6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6A50);
  }

  return result;
}

unint64_t sub_218DF8C24()
{
  result = qword_280EC6A60;
  if (!qword_280EC6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6A60);
  }

  return result;
}

unint64_t sub_218DF8C78()
{
  result = qword_280EC6A58;
  if (!qword_280EC6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6A58);
  }

  return result;
}

uint64_t sub_218DF8CDC()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_218DF8D74(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_218DF8DF8(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_218DF8E8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218DFA084(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_218DF8EBC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x65756761656CLL;
  if (v2 != 1)
  {
    v5 = 0x676E696D6F637075;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7954788;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_218DF8FC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x65756761656CLL;
  if (v2 != 1)
  {
    v4 = 0x676E696D6F637075;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7954788;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x65756761656CLL;
  if (*a2 != 1)
  {
    v8 = 0x676E696D6F637075;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7954788;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_218DF90B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a3;
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v11);
  v17 = *(v14 + 48);
  if (v17(v11, 1, v13) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    v22 = a5;
    sub_21877C870(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    a5 = v22;
    sub_219BEE974();
    if (v17(v11, 1, v13) != 1)
    {
      sub_2189ADEC8(v11);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v11, v13);
  }

  (*(v14 + 32))(a5, v16, v13);
  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v26 = 0;
    sub_218DF8B4C(0);
    swift_allocObject();
    v18 = sub_219BEF534();
  }

  v19 = type metadata accessor for SportsScheduleTagFeedGroupKnobs(0);
  *(a5 + v19[5]) = v18;
  v20 = v23;
  if (v23)
  {
  }

  else
  {
    v25 = 1;
    sub_218D528A0(0);
    swift_allocObject();

    v20 = sub_219BEF534();
  }

  *(a5 + v19[6]) = v20;
  if (!a4)
  {
    v24 = 14;
    sub_2186F9548();
    swift_allocObject();
    a4 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a5 + v19[7]) = a4;
  return result;
}

uint64_t sub_218DF9414@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_2189AD5C8(0);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsScheduleTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = v43 - v11;
  sub_218DFA020(0, &qword_27CC12448, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v43 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DF9F68();
  v17 = v57;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = 0;
  v48 = v14;
  v46 = a1;
  v49 = v7;
  LOBYTE(v61) = 0;
  sub_21877C870(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
  v19 = v55;
  v20 = v52;
  sub_219BF7674();
  sub_218DF8B4C(0);
  v22 = v21;
  LOBYTE(v60) = 1;
  v23 = MEMORY[0x277D32620];
  sub_21877C870(&qword_27CC12458, sub_218DF8B4C, MEMORY[0x277D32620]);
  v43[1] = v22;
  sub_219BF7674();
  v57 = v61;
  sub_218D528A0(0);
  v25 = v24;
  LOBYTE(v59) = 2;
  sub_21877C870(&qword_280E914A8, sub_218D528A0, v23);
  v43[2] = v25;
  sub_219BF7674();
  v44 = v60;
  sub_2186F9548();
  v27 = v26;
  LOBYTE(v58) = 3;
  sub_21877C870(&qword_280E913B8, sub_2186F9548, v23);
  v45 = v13;
  v43[3] = v27;
  sub_219BF7674();
  v50 = v59;
  v28 = v56;
  sub_2189ADE64(v19, v56);
  v29 = v51;
  v30 = *(v51 + 48);
  if (v30(v28, 1, v20) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877C870(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v31 = v53;
    sub_219BEE974();
    v32 = v30(v56, 1, v20);
    v33 = v31;
    v34 = v46;
    if (v32 != 1)
    {
      sub_2189ADEC8(v56);
    }
  }

  else
  {
    v33 = v53;
    (*(v29 + 32))(v53, v56, v20);
    v34 = v46;
  }

  v35 = v49;
  (*(v29 + 32))(v49, v33, v20);
  v37 = v44;
  v36 = v45;
  if (v57)
  {
    v38 = v57;
  }

  else
  {
    LOBYTE(v58) = 0;
    swift_allocObject();
    v38 = sub_219BEF534();
  }

  v39 = v54;
  v40 = v48;
  *(v35 + v5[5]) = v38;
  v41 = v50;
  if (v37)
  {
  }

  else
  {
    LOBYTE(v58) = 1;
    swift_allocObject();

    v42 = sub_219BEF534();
    v41 = v50;
    v37 = v42;
  }

  *(v35 + v5[6]) = v37;
  if (!v41)
  {
    v58 = 14;
    swift_allocObject();
    v41 = sub_219BEF534();
  }

  sub_2189ADEC8(v55);
  (*(v40 + 8))(v16, v36);
  *(v35 + v5[7]) = v41;
  sub_218DF9FBC(v35, v39);
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_218DF9AB4(void *a1)
{
  v3 = v1;
  sub_218DFA020(0, &qword_27CC12460, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DF9F68();
  sub_219BF7B44();
  LOBYTE(v13) = 0;
  sub_2189AD5C8(0);
  sub_21877C870(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SportsScheduleTagFeedGroupKnobs(0);
    v13 = *(v3 + v10[5]);
    HIBYTE(v12) = 1;
    sub_218DF8B4C(0);
    sub_21877C870(&qword_27CC12468, sub_218DF8B4C, MEMORY[0x277D32610]);
    sub_219BF7834();
    v13 = *(v3 + v10[6]);
    HIBYTE(v12) = 2;
    sub_218D528A0(0);
    sub_21877C870(&qword_280E914B0, sub_218D528A0, MEMORY[0x277D32610]);
    sub_219BF7834();
    v13 = *(v3 + v10[7]);
    HIBYTE(v12) = 3;
    sub_2186F9548();
    sub_21877C870(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_218DF9DC8()
{
  v1 = 0x73656C7572;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0x676E6970756F7267;
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

uint64_t sub_218DF9E44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_218DFA1E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_218DF9E6C(uint64_t a1)
{
  v2 = sub_218DF9F68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218DF9EA8(uint64_t a1)
{
  v2 = sub_218DF9F68();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218DF9F14()
{
  result = qword_27CC12440;
  if (!qword_27CC12440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12440);
  }

  return result;
}

unint64_t sub_218DF9F68()
{
  result = qword_27CC12450;
  if (!qword_27CC12450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12450);
  }

  return result;
}

uint64_t sub_218DF9FBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsScheduleTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218DFA020(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218DF9F68();
    v7 = a3(a1, &type metadata for SportsScheduleTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218DFA084(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_218DFA0E4()
{
  result = qword_27CC12470;
  if (!qword_27CC12470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12470);
  }

  return result;
}

unint64_t sub_218DFA13C()
{
  result = qword_27CC12478;
  if (!qword_27CC12478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12478);
  }

  return result;
}

unint64_t sub_218DFA194()
{
  result = qword_27CC12480;
  if (!qword_27CC12480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12480);
  }

  return result;
}

uint64_t sub_218DFA1E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6970756F7267 && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CF4FA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000219CF9890 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_218DFA354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v4 = type metadata accessor for AudioFeedLayoutSectionDescriptor.Footer(0);
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v42 - v7;
  v8 = sub_219BF00D4();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AudioFeedLayoutSectionDescriptor.Header(0);
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = sub_219BE9834();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3E74C(0);
  sub_219BE8184();
  v20 = v57;
  if (v57 < 2)
  {
    goto LABEL_17;
  }

  v21 = v58;
  v47 = v59;
  sub_219BE95F4();
  v22 = (*(v17 + 88))(v19, v16);
  if (v22 == *MEMORY[0x277D6E758])
  {
    v23 = sub_219BE9604();
    if ((v23 & 0x8000000000000000) == 0)
    {
      if (v23 < *(v20 + 16))
      {
        sub_218DFAD04(v20 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v23, v15, type metadata accessor for AudioFeedLayoutSectionDescriptor.Header);
        sub_218DFAD04(v15, v12, type metadata accessor for AudioFeedLayoutSectionDescriptor.Header);
        v45 = v21;
        v25 = v50;
        v24 = v51;
        v26 = v46;
        (*(v50 + 32))(v46, v12, v51);
        __swift_project_boxed_opaque_existential_1((v48 + 16), *(v48 + 40));
        v27 = sub_219BF0234();

        (*(v25 + 8))(v26, v24);
        v28 = v15;
        v29 = type metadata accessor for AudioFeedLayoutSectionDescriptor.Header;
LABEL_11:
        sub_218DFAD6C(v28, v29);
        return v27;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v22 == *MEMORY[0x277D6E750])
  {
    v30 = sub_219BE9604();
    v31 = *(v20 + 16);
    v32 = __OFSUB__(v30, v31);
    v33 = v30 - v31;
    if (!v32)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        if (v33 < *(v21 + 16))
        {
          v34 = v44;
          sub_218DFAD04(v21 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v33, v44, type metadata accessor for AudioFeedLayoutSectionDescriptor.Footer);
          v35 = v43;
          sub_218DFAD04(v34, v43, type metadata accessor for AudioFeedLayoutSectionDescriptor.Footer);
          v37 = v50;
          v36 = v51;
          v38 = v46;
          (*(v50 + 32))(v46, v35, v51);
          __swift_project_boxed_opaque_existential_1((v48 + 16), *(v48 + 40));
          v27 = sub_219BF0234();

          (*(v37 + 8))(v38, v36);
          v28 = v34;
          v29 = type metadata accessor for AudioFeedLayoutSectionDescriptor.Footer;
          goto LABEL_11;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v57 = 0;
      v58 = 0xE000000000000000;
      sub_219BF7314();
      v55 = v57;
      v56 = v58;
      sub_219BE8184();
      v40 = v57;
      v52 = v57;
      v53 = v58;
      v54 = v59;
      sub_219BF7484();
      v41 = sub_218DFACB4(v40);
      MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219CE1A00, v41);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

LABEL_18:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_218DFAA9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218DFAB0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudioFeedLayoutModel(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  sub_218C3E858(0);
  sub_219BE75E4();
  (*(v6 + 32))(v8, v11, v5);
  __swift_project_boxed_opaque_existential_1((v12 + 16), *(v12 + 40));
  v13 = sub_219BF0224();
  (*(v6 + 8))(v8, v5);
  return v13;
}

double sub_218DFACB4(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  return result;
}

uint64_t sub_218DFAD04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218DFAD6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_218DFADF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    sub_218BBF5C0(0);

    v7 = sub_219BE5F84();
    v9 = v8;
    v10 = 2;
  }

  else
  {
    a2 = 0;
    v7 = 0;
    v9 = 0;
    v10 = -1;
  }

  __swift_project_boxed_opaque_existential_1((v4 + 48), *(v4 + 72));
  sub_218D07090();

  return sub_218DFAEC4(a2, a3, v7, v9, v10);
}

double sub_218DFAEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_21896FC30(a1, a2, a3, a4, a5);
  }

  return result;
}

void sub_218DFAEEC(uint64_t *a1)
{
  v47 = sub_219BDD594();
  MEMORY[0x28223BE20](v47);
  v53 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDD5C4();
  MEMORY[0x28223BE20](v4 - 8);
  v51 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_218DFB9F0(0, &qword_280EE8E58, MEMORY[0x277D2FA08], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v46 - v8;
  sub_218DFB9F0(0, &unk_280EE8E18, MEMORY[0x277D2FB28], v6);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v46 - v11);
  v13 = sub_219BDD574();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_219BDD5D4();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v48 = v16;
  v49 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v54 = v1;
  v55 = v46 - v18;
  v19 = *a1;
  v20 = a1[1];
  v21 = a1[2];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v56[0] = v19;
  v56[1] = v20;
  v56[2] = v21;
  v22 = sub_2195687A0(v56);
  if (v24 != 0xFF)
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
    sub_2198DFBBC(v22, v23, v24);
    sub_2198E020C(v25, v26, v27);
    sub_2198E08C4(v25, v26, v27, v12);
    sub_2198E1358(v25, v26, v27, v9);
    v46[1] = v15;
    sub_219BDD564();
    if (v27 >= 6u)
    {
      v28 = v52;
      v29 = v50;
      v30 = v55;
      if (v27 != 6 && (v25 > 1 || !(v25 | v26)))
      {
        sub_219BDD5B4();
        goto LABEL_5;
      }
    }

    else
    {
      v28 = v52;
      v29 = v50;
      v30 = v55;
    }

    sub_219BDD5B4();
    if (((1 << v27) & 0xDB) == 0)
    {
      sub_219BDD584();
LABEL_16:
      sub_219BDD5A4();
      v39 = v54[5];
      v53 = v54[6];
      v54 = __swift_project_boxed_opaque_existential_1(v54 + 2, v39);
      sub_219BDDA94();
      v40 = v49;
      (*(v29 + 16))(v49, v30, v28);
      v41 = v29;
      v42 = (*(v29 + 80) + 33) & ~*(v29 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v25;
      *(v43 + 24) = v26;
      *(v43 + 32) = v27;
      (*(v41 + 32))(v43 + v42, v40, v28);
      sub_218DFBB54(v25, v26, v27);
      v44 = sub_219BE1E04();

      if (v44)
      {
        (*(v41 + 8))(v55, v28);
        sub_218CF5D64(v25, v26, v27);
      }

      else
      {
        __break(1u);
      }

      return;
    }

LABEL_5:
    v56[0] = MEMORY[0x277D84F90];
    sub_218DFB998();
    sub_218DFB9F0(0, &unk_280E8F630, MEMORY[0x277D2FA10], MEMORY[0x277D83940]);
    sub_218DFBA54();
    sub_219BF7164();
    goto LABEL_16;
  }

  if (qword_280EE5F90 != -1)
  {
    swift_once();
  }

  v31 = sub_219BE5434();
  __swift_project_value_buffer(v31, qword_280F625F8);
  sub_218DFB8E8(v19, v20, v21);
  v32 = sub_219BE5414();
  v33 = sub_219BF6214();
  sub_218DFB934(v19, v20, v21);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v56[0] = v35;
    *v34 = 136315138;
    v36 = v20 >> 61;
    if ((v20 >> 61) > 3)
    {
      if (v36 > 5)
      {
        if (v36 == 6)
        {
          v37 = 0xEF736569726F7453;
          v38 = 0x73756C507377656ELL;
        }

        else
        {
          v37 = 0xEC000000656D6F72;
          v38 = 0x6843657069636572;
        }
      }

      else if (v36 == 4)
      {
        v37 = 0x8000000219CF99A0;
        v38 = 0xD000000000000016;
      }

      else
      {
        v38 = 0xD000000000000015;
        v37 = 0x8000000219CF9980;
      }
    }

    else if (v36 > 1)
    {
      if (v36 == 2)
      {
        v37 = 0xEB0000000065726FLL;
        v38 = 0x63537374726F7073;
      }

      else
      {
        v37 = 0xED00006F666E4962;
        v38 = 0x7548656C7A7A7570;
      }
    }

    else if (v36)
    {
      v37 = 0xE900000000000073;
      v38 = 0x74756374726F6873;
    }

    else
    {
      v37 = 0xE800000000000000;
      v38 = 0x6465776F6C6C6F66;
    }

    v45 = sub_2186D1058(v38, v37, v56);

    *(v34 + 4) = v45;
    _os_log_impl(&dword_2186C1000, v32, v33, "Unable to present tip, reason=no model for tip=%s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x21CECF960](v35, -1, -1);
    MEMORY[0x21CECF960](v34, -1, -1);
  }
}

void sub_218DFB6E0(uint64_t *a1@<X8>)
{
  sub_218DFBBF4();
  v2 = sub_219BF61C4();
  if (!v2 || (v3 = v2, v8 = [v2 traitCollection], v3, (v4 = v8) == 0))
  {
    v4 = [objc_opt_self() currentTraitCollection];
  }

  v9 = v4;
  v5 = [v4 horizontalSizeClass];
  v6 = sub_219BDDF44();
  v7 = MEMORY[0x277D2FDF8];
  a1[3] = v6;
  a1[4] = v7;
  __swift_allocate_boxed_opaque_existential_1(a1);
  if (v5 == 1)
  {
    sub_219BDDF24();
  }

  else
  {
    sub_219BDDF34();
  }
}

uint64_t sub_218DFB7C4(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10[0] = a2;
  v10[1] = a3;
  v11 = a4;
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD5D4();
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DFB6E0(v10);
  sub_218DFBB90();
  sub_219BE1BA4();
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_218DFB8E8(uint64_t a1, unint64_t a2, void *a3)
{
  if (!(a2 >> 61))
  {
    v4 = a3;

    v3 = vars8;
  }
}

void sub_218DFB934(uint64_t a1, unint64_t a2, void *a3)
{

  if (!(a2 >> 61))
  {
  }
}

unint64_t sub_218DFB998()
{
  result = qword_280EE8E50;
  if (!qword_280EE8E50)
  {
    sub_219BDD594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE8E50);
  }

  return result;
}

void sub_218DFB9F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218DFBA54()
{
  result = qword_280E8F628;
  if (!qword_280E8F628)
  {
    sub_218DFB9F0(255, &unk_280E8F630, MEMORY[0x277D2FA10], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F628);
  }

  return result;
}

uint64_t sub_218DFBADC(void *a1)
{
  v3 = *(sub_219BDD5D4() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v3 + 80) + 33) & ~*(v3 + 80));

  return sub_218DFB7C4(a1, v4, v5, v6, v7);
}

id sub_218DFBB54(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  if (a3 == 2 || a3 == 3 || a3 == 5)
  {
    return result;
  }

  return result;
}

unint64_t sub_218DFBB90()
{
  result = qword_280EE8BC0;
  if (!qword_280EE8BC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE8BC0);
  }

  return result;
}

unint64_t sub_218DFBBF4()
{
  result = qword_280E8E700;
  if (!qword_280E8E700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E700);
  }

  return result;
}

void sub_218DFBC54(uint64_t a1)
{
  if (!qword_27CC18CE0)
  {
    type metadata accessor for ShortcutsCustomizeAffordance(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC18CE0);
    }
  }
}

uint64_t type metadata accessor for ShortcutsUpdateAllRequest(uint64_t a1)
{
  result = qword_27CC12488;
  if (!qword_27CC12488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218DFBD0C(uint64_t a1)
{
  sub_218DFBC54(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void *sub_218DFBD88()
{
  v1 = type metadata accessor for Shortcut(0);
  v34[0] = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ShortcutsModel(0);
  MEMORY[0x28223BE20](v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189534EC(0);
  v36 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v34 - v11;
  sub_218DFBC54(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ShortcutsCustomizeAffordance(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x277D84F90];
  updated = type metadata accessor for ShortcutsUpdateAllRequest(0);
  sub_218DFC370(v0 + *(updated + 20), v15, sub_218DFBC54);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v21 = v3;
    sub_218DFC3D8(v15, sub_218DFBC54);
  }

  else
  {
    v22 = v9;
    sub_218DFC30C(v15, v19);
    sub_218DFC370(v19, v5, type metadata accessor for ShortcutsCustomizeAffordance);
    swift_storeEnumTagMultiPayload();
    sub_218DFC2B4();
    v21 = v3;
    sub_219BE5FB4();
    v23 = sub_2191F8F28(0, 1, 1, MEMORY[0x277D84F90]);
    v25 = v23[2];
    v24 = v23[3];
    if (v25 >= v24 >> 1)
    {
      v23 = sub_2191F8F28((v24 > 1), v25 + 1, 1, v23);
    }

    sub_218DFC3D8(v19, type metadata accessor for ShortcutsCustomizeAffordance);
    v23[2] = v25 + 1;
    (*(v7 + 32))(v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, v12, v36);
    v38 = v23;
    v9 = v22;
  }

  v26 = *v0;
  v27 = *(*v0 + 16);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v34[1] = v21;
    v37 = MEMORY[0x277D84F90];
    sub_218C35CF8(0, v27, 0);
    v28 = v37;
    v29 = v26 + ((*(v34[0] + 80) + 32) & ~*(v34[0] + 80));
    v34[0] = *(v34[0] + 72);
    do
    {
      v30 = v35;
      sub_218DFC370(v29, v35, type metadata accessor for Shortcut);
      sub_218DFC370(v30, v5, type metadata accessor for Shortcut);
      swift_storeEnumTagMultiPayload();
      sub_218DFC2B4();
      sub_219BE5FB4();
      sub_218DFC3D8(v30, type metadata accessor for Shortcut);
      v37 = v28;
      v32 = *(v28 + 16);
      v31 = *(v28 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_218C35CF8((v31 > 1), v32 + 1, 1);
        v28 = v37;
      }

      *(v28 + 16) = v32 + 1;
      (*(v7 + 32))(v28 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v32, v9, v36);
      v29 += v34[0];
      --v27;
    }

    while (v27);
  }

  sub_2191EE948(v28);
  return v38;
}

unint64_t sub_218DFC2B4()
{
  result = qword_27CC0B0E0;
  if (!qword_27CC0B0E0)
  {
    type metadata accessor for ShortcutsModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B0E0);
  }

  return result;
}

uint64_t sub_218DFC30C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsCustomizeAffordance(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DFC370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218DFC3D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218DFC468()
{
  result = qword_27CC12498;
  if (!qword_27CC12498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12498);
  }

  return result;
}

uint64_t sub_218DFC4DC(uint64_t a1, uint64_t a2)
{
  sub_218B7E1D0(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218DFC548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218B7E1D0(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for MyMagazinesModel(uint64_t a1)
{
  result = qword_27CC124A0;
  if (!qword_27CC124A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218DFC610(uint64_t a1)
{
  sub_218B7E1D0(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_219BF0744();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

uint64_t sub_218DFC6E4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1 - 8);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218DFDABC(v1, v3);
  v4 = *v3;
  v5 = v3[2];
  sub_218B7E1D0(0);
  v7 = *(v6 + 48);
  v8 = [v4 identifier];
  v9 = sub_219BF5414();

  v10 = sub_219BF0744();
  (*(*(v10 - 8) + 8))(v3 + v7, v10);
  return v9;
}

uint64_t sub_218DFC7EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_218DFE1EC(&qword_27CC124C8, type metadata accessor for MyMagazinesModel, &unk_219C3BA00);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_218DFCA14@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218DFDABC(v4, v9);
  v10 = *v9;

  sub_218B7E1D0(0);
  v12 = *(v11 + 48);
  v13 = *a2;
  v14 = a3(0);
  (*(*(v14 - 8) + 104))(a4, v13, v14);
  v15 = sub_219BF0744();
  return (*(*(v15 - 8) + 8))(v9 + v12, v15);
}

uint64_t sub_218DFCB30@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v83 = sub_219BF0534();
  v81 = *(v83 - 1);
  MEMORY[0x28223BE20](v83);
  v78 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BF06A4();
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x28223BE20](v3);
  v82 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v65 - v6;
  v7 = sub_219BF19D4();
  v8 = *(v7 - 8);
  v91 = v7;
  v92 = v8;
  MEMORY[0x28223BE20](v7);
  v79 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v65 - v11;
  v89 = sub_219BF0574();
  v12 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v77 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v88 = &v65 - v15;
  sub_218DFE0E0(0, &qword_280E90EA8, MEMORY[0x277D32F60], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v76 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v65 - v19;
  v87 = &v65 - v19;
  v21 = sub_219BF0744();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v75 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v65 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v65 - v28;
  v30 = type metadata accessor for MyMagazinesModel(0);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = (&v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v35 = (&v65 - v34);
  sub_218DFDABC(v1, &v65 - v34);
  *v93 = *v35;
  *&v93[9] = *(v35 + 9);
  sub_218B7E1D0(0);
  v37 = v36;
  v38 = v22[4];
  v39 = v35 + *(v36 + 48);
  v72 = v29;
  v38(v29, v39, v21);
  sub_218DFDABC(v1, v32);
  *v94 = *v32;
  *&v94[9] = *(v32 + 9);
  v40 = *(v37 + 48);
  v41 = [*v94 identifier];
  v71 = sub_219BF5414();
  v70 = v42;

  sub_218950D08(v94);
  v43 = v22[1];
  v73 = v22 + 1;
  v74 = v43;
  v44 = v32 + v40;
  v45 = v21;
  v43(v44, v21);
  v69 = v22[2];
  v67 = v21;
  v69(v26, v29, v21);
  v46 = sub_219BF0794();
  (*(*(v46 - 8) + 56))(v20, 1, 1, v46);
  v47 = *MEMORY[0x277D32D70];
  v66 = v12;
  v49 = v88;
  v48 = v89;
  (*(v12 + 104))(v88, v47, v89);
  v50 = 256;
  if (!v93[9])
  {
    v50 = 0;
  }

  if (v93[12])
  {
    v51 = MEMORY[0x277D32D48];
  }

  else
  {
    v51 = MEMORY[0x277D32D40];
  }

  v52 = v90;
  v68 = v26;
  sub_2198D47EC(*v93, v50 | v93[8], v90);
  (*(v81 + 104))(v78, *v51, v83);
  v53 = v80;
  sub_219BF0694();
  v83 = *v93;
  (*(v92 + 16))(v79, v52, v91);
  v69(v75, v26, v45);
  (*(v12 + 16))(v77, v49, v48);
  sub_218DFDB20(v87, v76);
  v54 = *&v93[16];
  v56 = v84;
  v55 = v85;
  (*(v84 + 16))(v82, v53, v85);
  v57 = v83;
  v58 = v54;
  v59 = v86;
  sub_219BF0654();
  sub_218950D08(v93);
  (*(v56 + 8))(v53, v55);
  (*(v92 + 8))(v90, v91);
  (*(v66 + 8))(v88, v89);
  sub_218DFDBB4(v87);
  v60 = v67;
  v61 = v74;
  v74(v68, v67);
  v61(v72, v60);
  v62 = *MEMORY[0x277D32DD8];
  v63 = sub_219BF0614();
  return (*(*(v63 - 8) + 104))(v59, v62, v63);
}

uint64_t sub_218DFD3E8()
{
  v1 = sub_219BF0614();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218DFDABC(v0, v7);
  v8 = *v7;

  sub_218B7E1D0(0);
  v10 = *(v9 + 48);
  sub_218DFCB30(v4);
  v11 = sub_219BF05A4();
  (*(v2 + 8))(v4, v1);
  v12 = sub_219BF0744();
  (*(*(v12 - 8) + 8))(v7 + v10, v12);
  return v11;
}

uint64_t sub_218DFD570(uint64_t a1)
{
  MEMORY[0x28223BE20](a1 - 8);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218DFDABC(v1, v3);
  v4 = *v3;

  sub_218B7E1D0(0);
  v6 = *(v5 + 48);
  v7 = sub_219BF0744();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  return 1;
}

uint64_t sub_218DFD630()
{
  v1 = sub_219BE59F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for MyMagazinesModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DFDABC(v0, v7);
  v8 = *v7;
  v36 = v7[8];
  v35 = v7[9];
  v34 = v7[10];
  v33 = v7[11];
  v32 = v7[12];
  v9 = *(v7 + 2);
  v28 = v8;
  v29 = v9;
  v31 = v7[24];
  sub_218B7E1D0(0);
  v30 = *(v10 + 48);
  v11 = MEMORY[0x277D84560];
  sub_218DFE0E0(0, &unk_280E8C008, MEMORY[0x277D31AD0], MEMORY[0x277D84560]);
  v12 = sub_219BE5A04();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v27 = xmmword_219C09BA0;
  *(v15 + 16) = xmmword_219C09BA0;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x277D31A98], v12);
  v16 = sub_218C3D46C(v15);
  swift_setDeallocating();
  (*(v13 + 8))(v15 + v14, v12);
  swift_deallocClassInstance();
  sub_219BE5A14();
  sub_218DFE0E0(0, &unk_280E8BD80, MEMORY[0x277D31B20], v11);
  v17 = sub_219BEAAD4();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v27;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x277D31B18], v17);
  v21 = v28;
  *v4 = v28;
  v4[1] = v20;
  v4[2] = 0;
  (*(v2 + 104))(v4, *MEMORY[0x277D31A28], v1);
  v22 = v21;
  v28 = MEMORY[0x21CEBC780](v4, v16);

  (*(v2 + 8))(v4, v1);
  LOBYTE(v4) = v36;
  LOBYTE(v16) = v35;
  LOBYTE(v18) = v34;
  LOBYTE(v2) = v33;
  LOBYTE(v19) = v32;
  LOBYTE(v21) = v31;
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v4;
  *(v23 + 25) = v16;
  *(v23 + 26) = v18;
  *(v23 + 27) = v2;
  *(v23 + 28) = v19;
  *(v23 + 32) = v29;
  *(v23 + 40) = v21;
  swift_allocObject();
  v24 = sub_219BE59B4();
  v25 = sub_219BF0744();
  (*(*(v25 - 8) + 8))(&v7[v30], v25);
  return v24;
}

uint64_t sub_218DFDABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DFDB20(uint64_t a1, uint64_t a2)
{
  sub_218DFE0E0(0, &qword_280E90EA8, MEMORY[0x277D32F60], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DFDBB4(uint64_t a1)
{
  sub_218DFE0E0(0, &qword_280E90EA8, MEMORY[0x277D32F60], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_218DFDC40(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v53 = a2;
  v55 = sub_219BF0614();
  v59 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MyMagazinesModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_219BF0744();
  v51 = *(v58 - 8);
  v8 = v51;
  MEMORY[0x28223BE20](v58);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  sub_218DFE188(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v16 + *(v17 + 56);
  sub_218DFDABC(a1, v16);
  sub_218DFDABC(a2, v18);
  v19 = *v16;

  sub_218B7E1D0(0);
  v21 = v20;
  v22 = *(v20 + 48);
  v23 = *v18;

  v24 = *(v21 + 48);
  v25 = *(v8 + 32);
  v57 = v13;
  v26 = v13;
  v27 = v58;
  v25(v26, v16 + v22, v58);
  v28 = (v18 + v24);
  v56 = v10;
  v29 = v27;
  v25(v10, v28, v27);
  sub_218DFDABC(v52, v7);
  v30 = *v7;

  v31 = *(v21 + 48);
  v32 = v54;
  sub_218DFCB30(v54);
  v52 = sub_219BF05A4();
  v50 = v33;
  v34 = *(v59 + 8);
  v59 += 8;
  v35 = v55;
  v34(v32, v55);
  v36 = *(v51 + 8);
  v36(v7 + v31, v29);
  sub_218DFDABC(v53, v7);
  v37 = *v7;

  v38 = *(v21 + 48);
  sub_218DFCB30(v32);
  v39 = sub_219BF05A4();
  v41 = v40;
  v42 = v32;
  v43 = v58;
  v44 = v35;
  v45 = v50;
  v34(v42, v44);
  v36(v7 + v38, v43);
  if (v52 == v39 && v45 == v41)
  {

LABEL_5:
    sub_218DFE1EC(&qword_27CC0EA10, MEMORY[0x277D32F30], MEMORY[0x277D32F40]);
    v47 = v57;
    sub_219BF5874();
    v48 = v56;
    sub_219BF5874();
    v36(v48, v43);
    v36(v47, v43);
    return v61 == v60;
  }

  v46 = sub_219BF78F4();

  if (v46)
  {
    goto LABEL_5;
  }

  v36(v56, v43);
  v36(v57, v43);
  return 0;
}

void sub_218DFE0E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218DFE144()
{
  v1 = *(v0 + 16);
  sub_219BF4504();
  v2 = v1;
  return sub_219BF44F4();
}

void sub_218DFE188(uint64_t a1)
{
  if (!qword_27CC124D8)
  {
    type metadata accessor for MyMagazinesModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC124D8);
    }
  }
}

uint64_t sub_218DFE1EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218DFE234(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v47 = a4;
  v48 = a5;
  v45 = a2;
  v46 = a3;
  v52 = sub_219BF2094();
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF2D74();
  if (*(a1 + 16))
  {
    v13 = sub_21870F700(v11, v12);
    v15 = v14;

    if (v15)
    {
      v16 = *(*(a1 + 56) + 8 * v13);
      sub_218DFFC3C(0, &unk_280E8BC90, type metadata accessor for TagFeedModel, MEMORY[0x277D84560]);
      v17 = *(type metadata accessor for TagFeedModel(0) - 8);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_219C09BA0;
      *(v19 + v18) = v16;
      swift_storeEnumTagMultiPayload();
      *a6 = v19;

      return;
    }
  }

  else
  {
  }

  v44 = a6;
  v20 = sub_219BF2D94();
  v21 = *(v20 + 16);
  if (!v21)
  {

    v27 = MEMORY[0x277D84F90];
LABEL_24:
    MEMORY[0x28223BE20](v39);
    v40 = v46;
    *(&v43 - 4) = v45;
    *(&v43 - 3) = v40;
    v41 = v48;
    *(&v43 - 2) = v47;
    *(&v43 - 1) = v41;
    v42 = sub_218F8DB48(sub_218DFFBC0, (&v43 - 6), v27);

    *v44 = v42;
    return;
  }

  v23 = *(v8 + 16);
  v22 = v8 + 16;
  v24 = *(v22 + 64);
  v43 = v20;
  v25 = v20 + ((v24 + 32) & ~v24);
  v49 = *(v22 + 56);
  v50 = v23;
  v51 = v22;
  v26 = (v22 - 8);
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v52;
    v50(v10, v25, v52);
    v29 = sub_219BF2084();
    (*v26)(v10, v28);
    v30 = *(v29 + 16);
    v31 = v27[2];
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v32 <= v27[3] >> 1)
    {
      if (*(v29 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v31 <= v32)
      {
        v34 = v31 + v30;
      }

      else
      {
        v34 = v31;
      }

      v27 = sub_218855C7C(isUniquelyReferenced_nonNull_native, v34, 1, v27);
      if (*(v29 + 16))
      {
LABEL_18:
        v35 = (v27[3] >> 1) - v27[2];
        sub_219BF3C84();
        if (v35 < v30)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v36 = v27[2];
          v37 = __OFADD__(v36, v30);
          v38 = v36 + v30;
          if (v37)
          {
            goto LABEL_29;
          }

          v27[2] = v38;
        }

        goto LABEL_8;
      }
    }

    if (v30)
    {
      goto LABEL_27;
    }

LABEL_8:
    v25 += v49;
    if (!--v21)
    {

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_218DFE648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v113 = a5;
  v125 = a4;
  v126 = a3;
  v124 = a2;
  v9 = type metadata accessor for TagFeedModelPlaceholder(0);
  v109 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v110 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v106 - v12;
  MEMORY[0x28223BE20](v13);
  v111 = &v106 - v14;
  v116 = sub_219BF2164();
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BF1D54();
  v121 = *(v16 - 8);
  v122 = v16;
  MEMORY[0x28223BE20](v16);
  v120 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BF1DF4();
  v118 = *(v18 - 8);
  v119 = v18;
  MEMORY[0x28223BE20](v18);
  v117 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x277D83D88];
  sub_218DFFC3C(0, &qword_280E90EB0, MEMORY[0x277D32F30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v106 - v22;
  v24 = sub_219BF1AD4();
  v123 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DFFC3C(0, &unk_280EE34A0, MEMORY[0x277D2D148], v20);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v106 - v28;
  v30 = sub_219BF3C84();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = (&v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v31 + 16);
  v112 = a1;
  v35(v34, a1, v30, v32);
  v36 = (*(v31 + 88))(v34, v30);
  if (v36 != *MEMORY[0x277D34128])
  {
    v107 = a6;
    if (v36 == *MEMORY[0x277D34108])
    {
      (*(v31 + 96))(v34, v30);
      v44 = *v34;
      v127 = *(v6 + 24);
      v45 = v127;
      v46 = sub_219BF0744();
      (*(*(v46 - 8) + 56))(v23, 1, 1, v46);
      sub_2186FAF08();
      sub_218DFFAAC(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
      v47 = v45;
      v48 = v107;
      sub_219BEE1A4();

      sub_218DFFB50(v23, &qword_280E90EB0, MEMORY[0x277D32F30], v49);
      v41 = type metadata accessor for TagFeedModel(0);
    }

    else if (v36 == *MEMORY[0x277D34100])
    {
      (*(v31 + 96))(v34, v30);
      v127 = *(v6 + 24);
      v50 = v127;
      sub_2186FAF08();
      sub_218DFFAAC(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
      v51 = v50;
      v48 = v107;
      sub_219BEE164();

      swift_unknownObjectRelease();
      v41 = type metadata accessor for TagFeedModel(0);
    }

    else
    {
      if (v36 != *MEMORY[0x277D34130])
      {
        if (v36 == *MEMORY[0x277D34118])
        {
          (*(v31 + 96))(v34, v30);
          v56 = [*v34 puzzleType];
          swift_getObjectType();
          v57 = sub_219BF68F4();
          swift_unknownObjectRelease();
          if (v57)
          {
            v127 = *(v6 + 24);
            v58 = v127;
            sub_2186FAF08();
            sub_218DFFAAC(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
            v59 = v58;
            v48 = v107;
            sub_219BEE1B4();

            swift_unknownObjectRelease();
            v41 = type metadata accessor for TagFeedModel(0);
            goto LABEL_10;
          }
        }

        else
        {
          if (v36 != *MEMORY[0x277D340E8])
          {
            if (v36 == *MEMORY[0x277D340F8])
            {
              (*(v31 + 96))(v34, v30);
              v64 = v120;
              v63 = v121;
              v65 = v122;
              (*(v121 + 32))(v120, v34, v122);
              v127 = *(v6 + 24);
              v66 = v127;
              sub_2186FAF08();
              sub_218DFFAAC(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
              v67 = v66;
              v68 = v107;
              sub_219BEE144();
              (*(v63 + 8))(v64, v65);

              v41 = type metadata accessor for TagFeedModel(0);
            }

            else
            {
              if (v36 == *MEMORY[0x277D34120])
              {
                (*(v31 + 96))(v34, v30);
                v69 = *v34;
                v127 = *(v6 + 24);
                v70 = v127;
                sub_2186FAF08();
                sub_218DFFAAC(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
                v71 = v70;
                v48 = v107;
                sub_219BEE1D4();

                v41 = type metadata accessor for TagFeedModel(0);
                goto LABEL_10;
              }

              if (v36 != *MEMORY[0x277D34110])
              {
                if (v36 != *MEMORY[0x277D340F0])
                {
                  sub_218DFFC3C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
                  v101 = swift_allocObject();
                  *(v101 + 16) = xmmword_219C09BA0;
                  v127 = 0;
                  v128 = 0xE000000000000000;
                  sub_219BF7484();
                  v102 = v127;
                  v103 = v128;
                  *(v101 + 56) = MEMORY[0x277D837D0];
                  *(v101 + 64) = sub_2186FC3BC();
                  *(v101 + 32) = v102;
                  *(v101 + 40) = v103;
                  MEMORY[0x21CEB8D80]("Unknown format item %{public}@ encountered. Please update this switch statement to handle the new case.", 103, 2, v101);

                  v104 = type metadata accessor for TagFeedModel(0);
                  (*(*(v104 - 8) + 56))(v107, 1, 1, v104);
                  return (*(v31 + 8))(v34, v30);
                }

                v78 = v125;
                v123 = v6;
                (*(v31 + 96))(v34, v30);
                v79 = v114;
                v80 = v115;
                v81 = v116;
                (*(v114 + 32))(v115, v34, v116);
                v82 = sub_219BF2154();
                v84 = v113;
                a6 = v107;
                if (*(v113 + 16))
                {
                  v85 = sub_21870F700(v82, v83);
                  v87 = v86;

                  if (v87)
                  {
                    v88 = *(v84 + 56) + *(v109 + 72) * v85;
                    v89 = v108;
                    sub_218DFF9E4(v88, v108);
                    v90 = v89;
                    v91 = v111;
                    sub_218DFFA48(v90, v111);
                    v92 = v91;
                    v93 = v110;
                    sub_218DFF9E4(v92, v110);
                    v94 = v120;
                    v95 = v121;
                    (*(v121 + 32))(v120, v93, v122);
                    sub_21871D24C();
                    v96 = swift_allocObject();
                    *(v96 + 16) = xmmword_219C09EC0;
                    *(v96 + 32) = v126;
                    *(v96 + 40) = v78;

                    *(v96 + 48) = sub_219BF2154();
                    *(v96 + 56) = v97;
                    v126 = MEMORY[0x21CEC80A0](v96);

                    v98 = v79;
                    v127 = *(v123 + 24);
                    v99 = v127;
                    sub_2186FAF08();
                    sub_218DFFAAC(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
                    v100 = v99;
                    sub_219BEE144();

                    (*(v95 + 8))(v94, v122);
                    sub_218DFFAF4(v111);
                    (*(v98 + 8))(v115, v116);

                    v41 = type metadata accessor for TagFeedModel(0);
                    goto LABEL_3;
                  }
                }

                else
                {
                }

                (*(v79 + 8))(v80, v81);
                v105 = type metadata accessor for TagFeedModel(0);
                return (*(*(v105 - 8) + 56))(a6, 1, 1, v105);
              }

              (*(v31 + 96))(v34, v30);
              v72 = v117;
              v73 = v118;
              v74 = v34;
              v75 = v119;
              (*(v118 + 32))(v117, v74, v119);
              v76 = *(v6 + 24);
              v123 = *(v6 + 16);
              v127 = v76;
              sub_2186FAF08();
              sub_218DFFAAC(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
              v77 = v76;
              v68 = v107;
              sub_219BEE104();
              (*(v73 + 8))(v72, v75);

              v41 = type metadata accessor for TagFeedModel(0);
            }

            swift_storeEnumTagMultiPayload();
            v42 = *(*(v41 - 8) + 56);
            v43 = v68;
            return v42(v43, 0, 1, v41);
          }

          (*(v31 + 96))(v34, v30);
          swift_getObjectType();
          if (sub_219BF68F4())
          {
            v127 = *(v6 + 24);
            v60 = v127;
            sub_2186FAF08();
            sub_218DFFAAC(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
            v61 = v60;
            v48 = v107;
            sub_219BEE124();

            swift_unknownObjectRelease();
            v41 = type metadata accessor for TagFeedModel(0);
            goto LABEL_10;
          }
        }

        v62 = type metadata accessor for TagFeedModel(0);
        (*(*(v62 - 8) + 56))(v107, 1, 1, v62);
        return swift_unknownObjectRelease();
      }

      (*(v31 + 96))(v34, v30);
      v52 = v123;
      (*(v123 + 32))(v26, v34, v24);
      v127 = *(v6 + 24);
      v53 = v127;
      sub_2186FAF08();
      sub_218DFFAAC(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
      v54 = v53;
      v48 = v107;
      sub_219BEE224();
      (*(v52 + 8))(v26, v24);

      v41 = type metadata accessor for TagFeedModel(0);
    }

LABEL_10:
    swift_storeEnumTagMultiPayload();
    v42 = *(*(v41 - 8) + 56);
    v43 = v48;
    return v42(v43, 0, 1, v41);
  }

  (*(v31 + 96))(v34, v30);
  v37 = sub_219BEBD44();
  (*(*(v37 - 8) + 56))(v29, 1, 1, v37);
  v127 = *(v6 + 24);
  v38 = v127;
  sub_2186FAF08();
  sub_218DFFAAC(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
  v39 = v38;
  sub_219BEE214();
  swift_unknownObjectRelease();
  sub_218DFFB50(v29, &unk_280EE34A0, MEMORY[0x277D2D148], v40);

  v41 = type metadata accessor for TagFeedModel(0);
LABEL_3:
  swift_storeEnumTagMultiPayload();
  v42 = *(*(v41 - 8) + 56);
  v43 = a6;
  return v42(v43, 0, 1, v41);
}

double sub_218DFF90C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_2194AE960(MEMORY[0x277D84F90]);
  sub_218DFE648(a1, a2, a3, a4, v10, a5);

  return result;
}

uint64_t type metadata accessor for TagFeedModelPlaceholder(uint64_t a1)
{
  result = qword_280EC3098;
  if (!qword_280EC3098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218DFF9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedModelPlaceholder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DFFA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedModelPlaceholder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DFFAAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218DFFAF4(uint64_t a1)
{
  v2 = type metadata accessor for TagFeedModelPlaceholder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218DFFB50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  sub_218DFFC3C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double sub_218DFFBC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = sub_2194424B0(v6);
  sub_218DFE648(a1, v5, v8, v9, v7, a2);

  return result;
}

void sub_218DFFC3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218DFFCA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1D54();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218DFFD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BF1D54();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_218DFFD88(uint64_t a1)
{
  result = sub_219BF1D54();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_218DFFE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D83D88];
  sub_2187380F0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  sub_2187380F0(0, qword_280ECC670, type metadata accessor for TodayFeedGroupConfig, v4);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for TodayFeedGroupConfig(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TodayFeedConfig(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  sub_218FBEE20(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_218E01BB4(v10, qword_280ECC670, type metadata accessor for TodayFeedGroupConfig);
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_218E01D20(v10, v14, type metadata accessor for TodayFeedGroupConfig);
    sub_2187380F0(0, &unk_280E8BAF8, type metadata accessor for TodayFeedGroupConfig, MEMORY[0x277D84560]);
    v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C09BA0;
    sub_218E01D20(v14, v21 + v22, type metadata accessor for TodayFeedGroupConfig);
  }

  v23 = MEMORY[0x277CC9578];
  sub_218E02004(a1, v7, &qword_280EE9C40, MEMORY[0x277CC9578]);
  sub_218E02004(a1 + *(v15 + 24), &v20[*(v15 + 24)], &qword_280E91B80, MEMORY[0x277D32028]);
  sub_218E02004(v7, v20, &qword_280EE9C40, v23);
  sub_218E01BB4(v7, &qword_280EE9C40, v23);
  *&v20[*(v15 + 20)] = v21;
  sub_218E01C24(v20, v17, type metadata accessor for TodayFeedConfig);
  v24 = type metadata accessor for TodayConfig(0);
  v25 = (a1 + *(v24 + 20));
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  sub_218E01C24(v17, a2, type metadata accessor for TodayFeedConfig);

  sub_218E01D88(v17, type metadata accessor for TodayFeedConfig);
  v29 = (a2 + *(v24 + 20));
  *v29 = v26;
  v29[1] = v27;
  v29[2] = v28;
  return sub_218E01D88(v20, type metadata accessor for TodayFeedConfig);
}

uint64_t sub_218E00234()
{
  v1 = v0;
  v2 = type metadata accessor for TodayFeedServiceContext(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v24[-v7];
  v9 = CACurrentMediaTime();
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v10 = sub_219BE5434();
  __swift_project_value_buffer(v10, qword_280F626B8);
  v11 = sub_219BE5414();
  v12 = sub_219BF6214();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2186C1000, v11, v12, "Will micro-update offline feed", v13, 2u);
    MEMORY[0x21CECF960](v13, -1, -1);
  }

  v25 = 1;
  v14 = sub_2187B7F10(&v25, v8);
  MEMORY[0x28223BE20](v14);
  *&v24[-16] = v1;
  *&v24[-8] = v8;
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_219BE3204();
  v15 = sub_219BE2E54();
  sub_2187DD658(0);
  sub_219BE2F84();

  v16 = sub_219BE2E54();
  sub_218E01E08(0, &qword_27CC124E0, sub_2187DD658, type metadata accessor for OfflineFeedManifest);
  sub_219BE2F84();

  sub_218E01C24(v8, v5, type metadata accessor for TodayFeedServiceContext);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  sub_218E01D20(v5, v18 + v17, type metadata accessor for TodayFeedServiceContext);
  v19 = sub_219BE2E54();
  type metadata accessor for OfflineFeedManifest(0);
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v9;
  v20 = sub_219BE2E54();
  sub_219BE2F74();

  v21 = sub_219BE2E54();
  v22 = sub_219BE2FD4();

  sub_218E01D88(v8, type metadata accessor for TodayFeedServiceContext);
  return v22;
}

uint64_t sub_218E00698(uint64_t *a1, uint64_t a2)
{
  sub_2186EA98C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v12[3] = *(a2 + 16);
  v12[1] = v9;
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2186DFB00(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);

  sub_219BF0F44();
  sub_2186F7F18(0);
  sub_2186DFB00(&qword_280E90B58, sub_2186F7F18, MEMORY[0x277D33018]);
  v10 = sub_219BEDF24();
  (*(v6 + 8))(v8, v5);

  return v10;
}

uint64_t sub_218E00848(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  v5 = __swift_project_value_buffer(v4, qword_280F626B8);
  v6 = sub_219BE5414();
  v7 = sub_219BF6214();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2186C1000, v6, v7, "Will process micro-updated groups", v8, 2u);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  v9 = *(a2 + 40);
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2186DFB00(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);

  v10 = sub_219BEF3B4();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_218B18AD0(v9);
  v12 = type metadata accessor for OfflineFeedManifest(0);
  v13 = swift_allocBox();
  v15 = v14;
  if (qword_280ED0C20 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_280ED0C30);
  sub_218E01C24(v16, v15, type metadata accessor for OfflineFeedManifest);
  sub_218B19BB8(v11, v13, v10, v5);

  *(swift_allocObject() + 16) = v3;

  v17 = sub_219BE2E54();
  sub_218E01E08(0, &qword_27CC124E0, sub_2187DD658, type metadata accessor for OfflineFeedManifest);
  v18 = sub_219BE2F74();

  return v18;
}

uint64_t sub_218E00B10(uint64_t a1, uint64_t a2, char *a3)
{
  v48 = a2;
  v49 = a3;
  sub_2187380F0(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v51 = type metadata accessor for TodayFeedGroup(0);
  v7 = *(v51 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v42 - v10;
  sub_218E01E08(0, &qword_27CC124E0, sub_2187DD658, type metadata accessor for OfflineFeedManifest);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = (&v42 - v13);
  v52 = type metadata accessor for OfflineFeedManifest(0);
  v46 = *(v52 - 8);
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v52);
  v53 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  sub_218E01C8C(a1, v14);
  v19 = *v14;
  sub_218E01D20(v14 + *(v12 + 56), v18, type metadata accessor for OfflineFeedManifest);
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v20 = sub_219BE5434();
  __swift_project_value_buffer(v20, qword_280F626B8);
  v21 = sub_219BE5414();
  v22 = sub_219BF6214();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2186C1000, v21, v22, "Did process micro-updated groups", v23, 2u);
    MEMORY[0x21CECF960](v23, -1, -1);
  }

  v24 = v19;
  sub_21960B408(v6);
  v25 = v7;
  if ((*(v7 + 48))(v6, 1, v51) == 1)
  {
    sub_218E01BB4(v6, qword_280EDB700, type metadata accessor for TodayFeedGroup);
    if (qword_280ED0C20 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v52, qword_280ED0C30);
    sub_218E01C24(v26, v53, type metadata accessor for OfflineFeedManifest);
    sub_2187380F0(0, &qword_27CC20CF0, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v27 = sub_219BE3014();

    v28 = v18;
    v29 = type metadata accessor for OfflineFeedManifest;
  }

  else
  {
    v43 = type metadata accessor for TodayFeedGroup;
    v30 = v47;
    sub_218E01D20(v6, v47, type metadata accessor for TodayFeedGroup);
    v32 = v48;
    v31 = v49;
    v42 = v25;
    v44 = sub_219BF0D14();
    v45 = v24;
    MEMORY[0x28223BE20](v44);
    *(&v42 - 4) = v32;
    *(&v42 - 3) = v30;
    *(&v42 - 2) = v31;
    *(&v42 - 1) = v33;
    sub_219BE3204();
    v51 = type metadata accessor for OfflineFeedManifest;
    v34 = v53;
    sub_218E01C24(v18, v53, type metadata accessor for OfflineFeedManifest);
    v35 = v50;
    sub_218E01C24(v30, v50, type metadata accessor for TodayFeedGroup);
    v36 = *(v46 + 80);
    v49 = v18;
    v37 = (v36 + 16) & ~v36;
    v38 = (v15 + *(v42 + 80) + v37) & ~*(v42 + 80);
    v39 = swift_allocObject();
    sub_218E01D20(v34, v39 + v37, type metadata accessor for OfflineFeedManifest);
    sub_218E01D20(v35, v39 + v38, v43);
    v40 = sub_219BE2E54();
    v27 = sub_219BE2F74();

    sub_218E01D88(v49, v51);
    v28 = v30;
    v29 = type metadata accessor for TodayFeedGroup;
  }

  sub_218E01D88(v28, v29);
  return v27;
}

uint64_t sub_218E01164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2186E1EB4(0);
  sub_2186DFB00(&unk_280E90A80, sub_2186E1EB4, MEMORY[0x277D33048]);

  v4 = sub_219BEDF64();

  return v4;
}

double sub_218E01234@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v51 = a2;
  v54 = a1;
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v47 - v6;
  v7 = MEMORY[0x277D83D88];
  sub_2187380F0(0, &qword_280E90840, MEMORY[0x277D33470], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - v9;
  sub_2187380F0(0, &qword_280EE9C40, MEMORY[0x277CC9578], v7);
  MEMORY[0x28223BE20](v11 - 8);
  v49 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v48 = &v47 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  v50 = v3;
  v22 = *(v3 + 56);
  v22(&v47 - v20, 1, 1, v2, v19);
  sub_21882D12C(v10);
  v23 = sub_219BF1904();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v10, 1, v23) == 1)
  {
    sub_218E01BB4(v10, &qword_280E90840, MEMORY[0x277D33470]);
    v25 = 1;
  }

  else
  {
    sub_219BF17F4();
    (*(v24 + 8))(v10, v23);
    v25 = 0;
  }

  (v22)(v17, v25, 1, v2);
  v26 = v21;
  v27 = v48;
  sub_218A5DD60(v26, v48);
  v28 = v50;
  v29 = *(v50 + 48);
  v30 = v29(v27, 1, v2);
  v31 = v53;
  if (v30 == 1)
  {
    (*(v28 + 16))(v52, v54, v2);
    if (v29(v27, 1, v2) != 1)
    {
      sub_218E01BB4(v27, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v28 + 32))(v52, v27, v2);
  }

  v32 = v17;
  v33 = v49;
  sub_218A5DD60(v32, v49);
  v34 = v29(v33, 1, v2);
  v47 = v2;
  if (v34 == 1)
  {
    v35 = type metadata accessor for OfflineFeedManifest(0);
    (*(v28 + 16))(v31, v54 + *(v35 + 20), v2);
    if (v29(v33, 1, v2) != 1)
    {
      sub_218E01BB4(v33, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v28 + 32))(v31, v33, v2);
  }

  v36 = type metadata accessor for OfflineFeedManifest(0);
  v37 = *(v54 + v36[6]);
  v38 = *(v54 + v36[7]);
  v39 = *(v54 + v36[8]);
  v40 = *(v54 + v36[9]);
  v41 = *(v54 + v36[10]);
  v49 = *(v54 + v36[11]);
  v50 = v40;
  v54 = *(v54 + v36[12]);
  v42 = *(v28 + 32);
  v43 = v51;
  v44 = v47;
  v42(v51, v52, v47);
  v42(v43 + v36[5], v53, v44);
  *(v43 + v36[6]) = v37;
  *(v43 + v36[7]) = v38;
  *(v43 + v36[8]) = v39;
  v45 = v49;
  *(v43 + v36[9]) = v50;
  *(v43 + v36[10]) = v41;
  *(v43 + v36[11]) = v45;
  *(v43 + v36[12]) = v54;

  return result;
}

void sub_218E017E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v5 = sub_219BE5434();
  __swift_project_value_buffer(v5, qword_280F626B8);
  v6 = sub_219BE5414();
  v7 = sub_219BF6214();
  if (!os_log_type_enabled(v6, v7))
  {
    goto LABEL_8;
  }

  v8 = swift_slowAlloc();
  *v8 = 134349056;
  sub_219BF5CD4();
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 < 9.22337204e18)
  {
    *(v8 + 4) = v9;
    _os_log_impl(&dword_2186C1000, v6, v7, "Did micro-update offline feed, time=%{public}lldms", v8, 0xCu);
    MEMORY[0x21CECF960](v8, -1, -1);
LABEL_8:

    sub_218E01C24(a1, a2, type metadata accessor for OfflineFeedManifest);
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_218E01960(void *a1)
{
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F626B8);
  v3 = a1;
  oslog = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2186C1000, oslog, v4, "Failed to micro-update offline feed, error=%{public}@", v5, 0xCu);
    sub_218E01BB4(v6, &qword_280E8D9F0, sub_2189666A0);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }
}

uint64_t sub_218E01BB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2187380F0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218E01C24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E01C8C(uint64_t a1, uint64_t a2)
{
  sub_218E01E08(0, &qword_27CC124E0, sub_2187DD658, type metadata accessor for OfflineFeedManifest);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218E01D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E01D88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218E01E08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

double sub_218E01E84@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OfflineFeedManifest(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for TodayFeedGroup(0);
  return sub_218E01234(v1 + v4, a1);
}

uint64_t sub_218E01F64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_218E01E08(0, &qword_27CC124E0, sub_2187DD658, type metadata accessor for OfflineFeedManifest);
  v7 = *(v6 + 48);
  *a2 = v5;
  sub_218E01C24(a1, a2 + v7, type metadata accessor for OfflineFeedManifest);
}

uint64_t sub_218E02004(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2187380F0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for ShortcutsRefreshBlueprintModifier(uint64_t a1)
{
  result = qword_27CC124E8;
  if (!qword_27CC124E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218E020F8(uint64_t a1)
{
  result = type metadata accessor for ShortcutsUpdateAllRequest(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218E02174(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v39 = a3;
  v40 = a2;
  v38 = a1;
  v3 = sub_219BE6DF4();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E02898(0, &qword_27CC12500, MEMORY[0x277D6DF88]);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v32 = &v27 - v6;
  sub_218E027CC(0);
  MEMORY[0x28223BE20](v7 - 8);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E02958(0);
  MEMORY[0x28223BE20](v9 - 8);
  sub_218E02898(0, &qword_27CC0B100, MEMORY[0x277D6EC60]);
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  sub_218E02A24(0);
  sub_21895321C(0);
  v28 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09BA0;
  type metadata accessor for ShortcutsRefreshBlueprintModifier(0);
  sub_218DFBD88();
  sub_2189534EC(0);
  v16 = v15;
  type metadata accessor for ShortcutsModel(0);
  sub_218E02A7C(&qword_27CC12540, type metadata accessor for ShortcutsModel, &unk_219CCD890);
  v17 = sub_219BF5964();

  v18 = sub_218E02A7C(&qword_27CC12528, sub_2189534EC, MEMORY[0x277D6D408]);
  v19 = sub_218E02A7C(&qword_27CC12530, sub_2189534EC, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v17, v16, v18, v19);
  sub_2189532D4();
  sub_218E02A7C(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel, &unk_219CCD6D8);
  sub_219BE6924();
  v20 = sub_218E02A7C(&qword_27CC12510, sub_21895321C, MEMORY[0x277D6D720]);
  v21 = sub_218E02A7C(&qword_27CC12518, sub_21895321C, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9150](v14, v28, v20, v21);
  sub_219BEB2D4();
  v23 = v33;
  v22 = v34;
  v24 = v35;
  (*(v34 + 104))(v33, *MEMORY[0x277D6D868], v35);
  sub_218E02AC4();
  v25 = v32;
  sub_219BE85E4();
  (*(v22 + 8))(v23, v24);
  v40(v25);
  (*(v36 + 8))(v25, v37);
  return (*(v30 + 8))(v12, v31);
}

void sub_218E027CC(uint64_t a1)
{
  if (!qword_27CC12508)
  {
    sub_21895321C(255);
    sub_218E02A7C(&qword_27CC12510, sub_21895321C, MEMORY[0x277D6D720]);
    sub_218E02A7C(&qword_27CC12518, sub_21895321C, MEMORY[0x277D6D718]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC12508);
    }
  }
}

void sub_218E02898(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ShortcutsSectionDescriptor;
    v8[1] = type metadata accessor for ShortcutsModel(255);
    v8[2] = sub_2189532D4();
    v8[3] = sub_218E02A7C(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel, &unk_219CCD6D8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218E02958(uint64_t a1)
{
  if (!qword_27CC12520)
  {
    sub_2189534EC(255);
    sub_218E02A7C(&qword_27CC12528, sub_2189534EC, MEMORY[0x277D6D408]);
    sub_218E02A7C(&qword_27CC12530, sub_2189534EC, MEMORY[0x277D6D3F8]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC12520);
    }
  }
}

void sub_218E02A24(uint64_t a1)
{
  if (!qword_27CC12538)
  {
    sub_21895321C(255);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC12538);
    }
  }
}