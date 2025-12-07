uint64_t sub_21939F9D0()
{
  v0 = sub_219BE5394();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE5354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE5374();
  sub_219BE53A4();
  v9 = sub_219BF67D4();
  if (sub_219BF6F34())
  {

    sub_219BE53D4();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v10 = "";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_219BE5344();
    _os_signpost_emit_with_name_impl(&dword_2186C1000, v8, v9, v12, "News.TodayFeed.DataManager.Expand", v10, v11, 2u);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21939FC50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v6 = type metadata accessor for TodayExpandContext(0);
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for TodayFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_21881F258(0, &qword_280E91960, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32290]);
  sub_219BEEB04();
  v12 = sub_218829720();
  v14 = v13;
  sub_218820248(v10, type metadata accessor for TodayFeedGroup);
  v22 = v20;
  v23 = v11;
  v24 = a4;
  sub_21881F258(0, &unk_280E91318, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D326E0]);
  sub_219BE3204();
  sub_218820178(a4, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayExpandContext);
  v15 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v14;
  sub_2188201E0(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for TodayExpandContext);
  v17 = sub_219BE2E54();
  type metadata accessor for TodayExpandResult(0);
  v18 = sub_219BE2F74();

  return v18;
}

uint64_t sub_21939FF08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = type metadata accessor for TodayExpandContext(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = CACurrentMediaTime();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v10 = qword_280F616D8;
  v11 = sub_219BF6214();
  sub_219BE5314("TodayFeed will perform force-reload", 35, 2, &dword_2186C1000, v10, v11, MEMORY[0x277D84F90]);
  MEMORY[0x28223BE20](v12);
  *(&v21 - 2) = v3;
  sub_21881F258(0, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
  sub_219BE3204();
  sub_2187D9028();
  v13 = sub_219BF66A4();
  sub_218820178(a2, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayExpandContext);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_2188201E0(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for TodayExpandContext);
  type metadata accessor for TodayExpandResult(0);
  sub_219BE2F84();

  v16 = sub_219BE1C44();
  *(swift_allocObject() + 16) = v9;
  type metadata accessor for TodayPrewarmResult(0);
  sub_219BE2F94();

  v17 = sub_219BE1C44();
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = a1;

  v19 = sub_219BE2FE4();

  return v19;
}

uint64_t sub_2193A0294()
{
  v0 = type metadata accessor for TodayFeedServiceContext(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881F92C(v2);
  v3 = sub_21881FC0C(v2);
  sub_218820248(v2, type metadata accessor for TodayFeedServiceContext);
  return v3;
}

uint64_t sub_2193A0340(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TodayExpandContext(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *a1;
  v16 = a2;
  v17 = v9;
  v18 = a3;
  sub_21881F258(0, &unk_280E91318, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D326E0]);
  sub_219BE3204();
  sub_218820178(a3, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TodayExpandContext);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0x6C65526563726F66;
  *(v11 + 24) = 0xEB0000000064616FLL;
  sub_2188201E0(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for TodayExpandContext);
  v12 = sub_219BE2E54();
  type metadata accessor for TodayExpandResult(0);
  v13 = sub_219BE2F74();

  return v13;
}

void sub_2193A0554(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v6 = sub_219BF11C4();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF0644();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v39 = &v33 - v14;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v33 = v12;
  v35 = a3;
  v17 = MEMORY[0x277D84A90];
  *(v15 + 56) = MEMORY[0x277D84A28];
  *(v15 + 64) = v17;
  *(v15 + 32) = v16;
  sub_219BF6214();
  sub_219BE5314("TodayFeed successfully performed force-reload, time=%lldms", v33);

  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  sub_219BEF3D4();
  sub_219BEE844();

  v42 = *__swift_project_boxed_opaque_existential_1((v38 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures), *(v38 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures + 24));
  v18 = off_282A442B8;
  type metadata accessor for OfflineFeatures();
  v19 = v18(0);
  v34 = a1;
  if (v19 == 6)
  {
    v20 = sub_219BF1AE4();
    v21 = *(v10 + 104);
    if (v20)
    {
      v22 = MEMORY[0x277D32EF8];
    }

    else
    {
      v22 = MEMORY[0x277D32EF0];
    }

    v23 = *v22;
  }

  else
  {
    v23 = *MEMORY[0x277D32EF0];
    v21 = *(v10 + 104);
  }

  v24 = v33;
  v21(v33, v23, v9);
  sub_2187EA20C(&qword_280E90ED0, 255, MEMORY[0x277D32F00], MEMORY[0x277D32F18]);
  sub_219BF5874();
  sub_219BF5874();
  v25 = MEMORY[0x277D331F8];
  if ((v42 != v40 || v43 != v41) && (sub_219BF78F4() & 1) == 0)
  {
    v25 = MEMORY[0x277D331E0];
  }

  v26 = *(v10 + 8);
  v26(v24, v9);

  (*(v10 + 16))(v8, v39, v9);
  v28 = v36;
  v27 = v37;
  (*(v36 + 104))(v8, *v25, v37);
  v29 = v38;
  v30 = v38 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = *(v30 + 8);
    ObjectType = swift_getObjectType();
    (*(v31 + 96))(v29, &off_282A6CEF8, v8, ObjectType, v31);
    swift_unknownObjectRelease();
  }

  (*(v28 + 8))(v8, v27);
  v26(v39, v9);
  sub_218820178(v34, v35, type metadata accessor for TodayExpandResult);
}

void sub_2193A0A8C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = sub_219BF11C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v10 = qword_280F616D8;
  v11 = sub_219BF61F4();
  sub_2186F20D4(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v14 = MEMORY[0x277D84A90];
  *(v12 + 56) = MEMORY[0x277D84A28];
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  v21 = 0;
  v22 = 0xE000000000000000;
  v20[1] = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v15 = v21;
  v16 = v22;
  *(v12 + 96) = MEMORY[0x277D837D0];
  *(v12 + 104) = sub_2186FC3BC();
  *(v12 + 72) = v15;
  *(v12 + 80) = v16;
  sub_219BE5314("TodayFeed failed to perform force-reload, time=%lldms, error=%{public}@", 71, 2, &dword_2186C1000, v10, v11, v12);

  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  sub_219BEE844();
  (*(v7 + 104))(v9, *MEMORY[0x277D331E8], v6);
  v17 = a2 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 96))(a2, &off_282A6CEF8, v9, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  (*(v7 + 8))(v9, v6);
}

double sub_2193A0D7C(uint64_t a1)
{
  v2 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881F258(0, &qword_280EE5D30, type metadata accessor for TodayModel, sub_21880BAC8, MEMORY[0x277D6D3F0]);
  v6 = v5;
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v33 - v7;
  v8 = MEMORY[0x277D84310];
  sub_21881F258(0, &qword_280E8D4F8, sub_2187FAD00, sub_2193A5668, MEMORY[0x277D84310]);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  sub_2187FAD00(0);
  v13 = v12;
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v37 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881F258(0, &qword_280E8D4A0, sub_21880B928, sub_2193A56A0, v8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  v45[4] = MEMORY[0x277D84FA0];
  sub_21880B928(0);
  v20 = v19;
  (*(*(v19 - 8) + 16))(v18, a1, v19);
  v21 = *(v16 + 44);
  v22 = sub_2193A56A0();
  sub_219BF5DF4();
  sub_219BF5E84();
  if (*&v18[v21] != v45[0])
  {
    v24 = v21;
    v34 = (v43 + 1);
    v35 = v43 + 2;
    v42 = v20;
    v43 = (v39 + 16);
    v25 = (v39 + 8);
    v36 = v18;
    v40 = v22;
    v41 = v24;
    do
    {
      v39 = sub_219BF5EC4();
      v26 = *v35;
      v27 = v37;
      (*v35)(v37);
      (v39)(v45, 0);
      sub_219BF5E94();
      (v26)(v11, v27, v13);
      v28 = *(v38 + 36);
      sub_2193A5668();
      sub_219BF5DF4();
      (*v34)(v27, v13);
      while (1)
      {
        sub_219BF5E84();
        if (*&v11[v28] == v45[0])
        {
          break;
        }

        v29 = sub_219BF5EC4();
        v30 = v44;
        (*v43)(v44);
        v29(v45, 0);
        sub_219BF5E94();
        sub_219BE5FC4();
        (*v25)(v30, v6);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v31 = sub_219BE5B24();
          sub_219497B60(v45, v31, v32);
        }

        else
        {
          sub_218820248(v4, type metadata accessor for TodayModel);
        }
      }

      sub_2193A56D8(v11, &qword_280E8D4F8, sub_2187FAD00, sub_2193A5668);
      v18 = v36;
      sub_219BF5E84();
    }

    while (*&v18[v41] != v45[0]);
  }

  sub_2193A56D8(v18, &qword_280E8D4A0, sub_21880B928, sub_2193A56A0);
  sub_219BE6074();

  return result;
}

uint64_t sub_2193A13E0(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v79 = a4;
  v77 = a1;
  sub_21882FE00(0, &qword_280E91B30, MEMORY[0x277D32150], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v78 = &v65 - v7;
  v75 = sub_219BEE714();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v76 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEE704();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v71 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF0644();
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_219BEE754();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v81 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for TodayFeedServiceContext(0);
  MEMORY[0x28223BE20](v68);
  v80 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193A505C(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B9E0(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a2;
  sub_219BF1B74();
  v23 = &v19[*(v17 + 56)];
  sub_218820178(a3, v19, sub_21880B9E0);
  v83 = v22;
  sub_218820178(v22, v23, sub_21880B9E0);
  v24 = sub_219BF1584();
  v25 = *(*(v24 - 8) + 48);
  LODWORD(a3) = v25(v19, 1, v24);
  v26 = v25(v23, 1, v24);
  if (a3 != 1)
  {
    if (v26 != 1)
    {
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v46 = qword_280F616D8;
      v47 = sub_219BF6214();
      v48 = sub_219BE5314("TodayFeed prewarm failed readAndFetch offline, will retry with cached contents of default database", 98, 2, &dword_2186C1000, v46, v47, MEMORY[0x277D84F90]);
      (*(v66 + 104))(v13, *MEMORY[0x277D32EF0], v67, v48);
      (*(v69 + 104))(v71, *MEMORY[0x277D32120], v70);
      (*(v73 + 104))(v76, *MEMORY[0x277D32130], v75);
      v49 = sub_219BEE734();
      (*(*(v49 - 8) + 56))(v78, 1, 1, v49);
      v50 = v81;
      sub_219BEE744();
      v51 = v80;
      LODWORD(v78) = *v79;
      v52 = *(v79 + 3);
      v53 = *(v79 + 4);
      v54 = *(v79 + 1);
      v55 = *(v79 + 2);
      v56 = v72;
      v57 = v50;
      v58 = v74;
      (*(v72 + 16))(v80 + *(v68 + 36), v57, v74);
      *v51 = v78;
      *(v51 + 8) = v54;
      *(v51 + 16) = v55;
      *(v51 + 24) = v52;
      *(v51 + 32) = v53;
      v79 = *(v56 + 8);

      v59 = v55;
      v60 = v54;
      (v79)(v81, v58);
      v33 = sub_21881FC0C(v51);
      sub_218820248(v51, type metadata accessor for TodayFeedServiceContext);
      sub_218820248(v83, sub_21880B9E0);
      v35 = v23;
      v34 = sub_21880B9E0;
      goto LABEL_15;
    }

    v23 = v19;
LABEL_9:
    sub_218820248(v23, sub_21880B9E0);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v36 = qword_280F616D8;
    sub_2186F20D4(0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_219C09EC0;
    v38 = sub_219BF1B24();
    v40 = v39;
    v41 = MEMORY[0x277D837D0];
    *(v37 + 56) = MEMORY[0x277D837D0];
    v42 = sub_2186FC3BC();
    *(v37 + 64) = v42;
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    v19 = v83;
    v43 = sub_219BF1B24();
    *(v37 + 96) = v41;
    *(v37 + 104) = v42;
    *(v37 + 72) = v43;
    *(v37 + 80) = v44;
    v45 = sub_219BF6214();
    sub_219BE5314("TodayFeed prewarm failed readAndFetch, will retry because network state changed from %{public}@ to %{public}@", 109, 2, &dword_2186C1000, v36, v45, v37);

    v33 = sub_21881F304();
    goto LABEL_16;
  }

  if (v26 != 1)
  {
    goto LABEL_9;
  }

  v27 = v77;
  v28 = sub_219BDB714();
  v29 = [v28 fc_isOfflineError];

  if (v29)
  {
    v19 = v83;
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v30 = qword_280F616D8;
    v31 = sub_219BF6214();
    sub_219BE5314("TodayFeed prewarm failed readAndFetch online due to offline error, will retry with offline database", 99, 2, &dword_2186C1000, v30, v31, MEMORY[0x277D84F90]);
    v84 = 2;
    v32 = v80;
    sub_2187B7F10(&v84, v80);
    v33 = sub_21881FC0C(v32);
    v34 = type metadata accessor for TodayFeedServiceContext;
    v35 = v32;
LABEL_15:
    sub_218820248(v35, v34);
LABEL_16:
    sub_218820248(v19, sub_21880B9E0);
    return v33;
  }

  v62 = v83;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v33 = qword_280F616D8;
  v63 = sub_219BF6214();
  sub_219BE5314("TodayFeed prewarm failed readAndFetch, will NOT retry", 53, 2, &dword_2186C1000, v33, v63, MEMORY[0x277D84F90]);
  swift_willThrow();
  sub_218820248(v62, sub_21880B9E0);
  v64 = v27;
  return v33;
}

uint64_t sub_2193A1D10(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeedPrimer);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v5 = xmmword_219C0A870;
  return sub_21895F754(&v5, v2, v3);
}

uint64_t sub_2193A1D80(uint64_t *a1)
{
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  return sub_219BF0F44();
}

uint64_t sub_2193A1DDC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  sub_219BEF3D4();
  v2 = sub_219BEE814();

  return v2;
}

uint64_t sub_2193A1E50(uint64_t *a1)
{
  sub_2186EA98C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *v6 = v8;
  (*(v4 + 104))(v6, *MEMORY[0x277D33070], v3);

  v9 = sub_219BED5C4();
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_2193A1F8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a2;
  v29 = a4;
  v30 = a7;
  v28 = a6;
  v11 = type metadata accessor for TodayExpandContext(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = *a1;
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  v15 = sub_219BEF3E4();
  v16 = sub_219BEF3E4();
  v32 = v15;
  sub_2191EFA08(v16);
  v17 = v32;
  v18 = sub_219BEF3D4();
  v19 = sub_2193A21F4(v14, v17, v18);

  sub_2187D9028();
  v20 = sub_219BF66A4();
  sub_218820178(v28, &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayExpandContext);
  v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v23 = v29;
  v22[2] = v19;
  v22[3] = v23;
  v22[4] = a5;
  sub_2188201E0(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for TodayExpandContext);
  v24 = (v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v30;
  v24[1] = a8;
  type metadata accessor for TodayExpandResult(0);
  type metadata accessor for TodayDataManager();

  v25 = sub_219BE31F4();

  return v25;
}

uint64_t sub_2193A21F4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 >> 61) >= 2)
  {
    if ((a1 >> 61) - 2 >= 2)
    {
      v23 = *(a2 + 16);
      if (v23 == 1)
      {
        sub_21936DB68(0);
        v27 = v26;
        v28 = swift_allocBox();
        v30 = v29;
        v31 = *(v27 + 48);
        v32 = *(type metadata accessor for TodayFeedGroup(0) - 8);
        sub_218820178(a2 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v30, type metadata accessor for TodayFeedGroup);
        *(v30 + v31) = a3;
        v14 = v28 | 0x4000000000000000;
        goto LABEL_15;
      }

      if (!v23)
      {
        v24 = swift_allocObject();
        *(v24 + 16) = a3;
        v14 = v24 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    else
    {
      v5 = *(a2 + 16);
      if (v5 < 2)
      {
        sub_21936DB68(0);
        v7 = v6;
        result = swift_allocBox();
        if (v5 == 1)
        {
          v10 = result;
          v11 = v9;
          v12 = *(v7 + 48);
          v13 = *(type metadata accessor for TodayFeedGroup(0) - 8);
          sub_218820178(a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v11, type metadata accessor for TodayFeedGroup);
          *(v11 + v12) = a3;
          v14 = v10 | 0x4000000000000000;
LABEL_15:

          return v14;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;
    v14 = v25 | 0x6000000000000000;
LABEL_14:

    goto LABEL_15;
  }

  v15 = *(a2 + 16);
  if (v15 >= 2)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    v14 = v16 | 0x2000000000000000;
    goto LABEL_14;
  }

  sub_21936DB68(0);
  v18 = v17;
  result = swift_allocBox();
  if (v15 == 1)
  {
    v14 = result;
    v20 = v19;
    v21 = *(v18 + 48);
    v22 = *(type metadata accessor for TodayFeedGroup(0) - 8);
    sub_218820178(a2 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v20, type metadata accessor for TodayFeedGroup);
    *(v20 + v21) = a3;
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2193A2480()
{
  v0 = type metadata accessor for TodayFeedServiceContext(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  sub_2187B7F10(&v6, v2);
  v3 = sub_2194CFA0C(v2);
  sub_218820248(v2, type metadata accessor for TodayFeedServiceContext);
  return v3;
}

void sub_2193A2554(uint64_t *a1@<X0>, char *a3@<X8>)
{
  v44 = a3;
  v4 = MEMORY[0x277CC9578];
  sub_21882FE00(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = sub_219BDBD34();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig;
  v17 = v4;
  v19 = v18;
  sub_21872ADC8(v15 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig, v10, &qword_280EE9C40, v17);
  if ((*(v12 + 48))(v10, 1, v19) == 1)
  {
    sub_218710864(v10, &qword_280EE9C40, MEMORY[0x277CC9578]);
LABEL_8:
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v31 = qword_280F616D8;
    sub_2186F20D4(0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_219C09EC0;
    sub_21872ADC8(v15 + v16, v7, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v33 = sub_219BF5484();
    v35 = v34;
    v36 = MEMORY[0x277D837D0];
    *(v32 + 56) = MEMORY[0x277D837D0];
    v37 = sub_2186FC3BC();
    *(v32 + 64) = v37;
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    sub_2187EA20C(&qword_280EE9C60, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v38 = sub_219BF7894();
    *(v32 + 96) = v36;
    *(v32 + 104) = v37;
    *(v32 + 72) = v38;
    *(v32 + 80) = v39;
    v40 = sub_219BF6214();
    sub_219BE5314("Auto-refresh rapid-refresh  failed because the feed config has a publishDate=%@ and the feed was last updatedDate=%@", 116, 2, &dword_2186C1000, v31, v40, v32);

    v30 = 0;
    goto LABEL_11;
  }

  (*(v12 + 32))(v14, v10, v19);
  if ((sub_219BDBC14() & 1) == 0)
  {
    (*(v12 + 8))(v14, v19);
    goto LABEL_8;
  }

  v42 = v19;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v41 = qword_280F616D8;
  sub_2186F20D4(0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C09EC0;
  sub_21872ADC8(v15 + v16, v7, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v21 = sub_219BF5484();
  v23 = v22;
  v24 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v25 = sub_2186FC3BC();
  *(v20 + 64) = v25;
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  sub_2187EA20C(&qword_280EE9C60, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v26 = v42;
  v27 = sub_219BF7894();
  *(v20 + 96) = v24;
  *(v20 + 104) = v25;
  *(v20 + 72) = v27;
  *(v20 + 80) = v28;
  v29 = sub_219BF6214();
  sub_219BE5314("Auto-refresh rapid-refresh  enabled because we have a config update, publishDate=%@, and the feed was last updatedDate=%@", 121, 2, &dword_2186C1000, v41, v29, v20);

  (*(v12 + 8))(v14, v26);
  v30 = 1;
LABEL_11:
  *v44 = v30;
}

uint64_t sub_2193A2C3C(uint64_t a1)
{
  swift_getObjectType();
  sub_21880B928(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 isRunningPerformanceTest];

  v15 = v1;
  sub_2193A493C(0);
  sub_219BE3204();
  (*(v5 + 16))(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  *(v10 + v9 + v6) = v8;
  v11 = sub_219BE2E54();
  v12 = sub_219BE2F84();

  return v12;
}

uint64_t sub_2193A2E2C(uint64_t a1)
{
  sub_21881F258(0, &qword_280E91290, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32858]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - v4;
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  sub_219BEE834();
  sub_219BEE374();

  sub_219BED5E4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2193A2F7C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v2, &off_282A6CEF8, a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2193A3030(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(v2, &off_282A6CEF8, a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2193A30E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 40))(v3, &off_282A6CEF8, a1, a2, a3, ObjectType, v9);
    swift_unknownObjectRelease();
    return v11;
  }

  return result;
}

void sub_2193A3308(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_sharedItemAdditions);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_sharedItemAdditions) = v4;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5 = sub_219BF2EE4();
    v6 = sub_218845F78(v5);

    v7 = v1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 16))(v1, &off_282A6CEF8, v6, 0, ObjectType, v8);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

double sub_2193A3410(uint64_t a1, uint64_t a2)
{

  v4 = sub_218845F78(a2);

  v5 = v2 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v2, &off_282A6CEF8, v4, 0, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

uint64_t sub_2193A3500(void *a1)
{
  v2 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2193A4518(v2, v1);
}

uint64_t sub_2193A35AC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v2, &off_282A6CEF8, a2, 0, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2193A3650(uint64_t a1, uint64_t a2)
{
  sub_21882FE00(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v36 - v4;
  v42 = sub_219BF24C4();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (!v7)
  {
    v10 = MEMORY[0x277D84F98];
LABEL_17:
    v31 = sub_219BF5BF4();
    v32 = v37;
    (*(*(v31 - 8) + 56))(v37, 1, 1, v31);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v34 = v38;
    v33[4] = v38;
    v33[5] = v10;

    v35 = v34;
    sub_218AB3D80(0, 0, v32, &unk_219C75C78, v33);

    return;
  }

  v8 = *(sub_219BF3C04() - 8);
  v9 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v40 = (v5 + 8);
  v39 = *(v8 + 72);
  v10 = MEMORY[0x277D84F98];
  while (1)
  {
    v11 = v41;
    sub_219BF3BF4();
    v12 = sub_219BF24B4();
    (*v40)(v11, v42);
    v13 = [v12 puzzleType];
    swift_unknownObjectRelease();
    v14 = [v13 identifier];
    v15 = sub_219BF5414();
    v17 = v16;

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v10;
    v20 = sub_21870F700(v15, v17);
    v21 = v10[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v10[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v19)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_21949570C();
        if (v24)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_219486388(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_21870F700(v15, v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_20;
      }

      v20 = v25;
      if (v24)
      {
LABEL_3:

        v10 = v43;
        *(v43[7] + 8 * v20) = v13;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_4;
      }
    }

    v10 = v43;
    v43[(v20 >> 6) + 8] |= 1 << v20;
    v27 = (v10[6] + 16 * v20);
    *v27 = v15;
    v27[1] = v17;
    *(v10[7] + 8 * v20) = v13;
    swift_unknownObjectRelease();
    v28 = v10[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_19;
    }

    v10[2] = v30;
LABEL_4:
    v9 += v39;
    if (!--v7)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_219BF79A4();
  __break(1u);
}

uint64_t sub_2193A3A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_219BF1D54();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2193A3B4C, 0, 0);
}

uint64_t sub_2193A3B4C()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC7NewsUI216TodayDataManager_puzzleStatsService;
  v0[9] = OBJC_IVAR____TtC7NewsUI216TodayDataManager_puzzleStatsService;
  v4 = *(v1 + v2 + 24);
  v3 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_2193A3C14;

  return MEMORY[0x282192A48](v4, v3);
}

uint64_t sub_2193A3C14()
{

  return MEMORY[0x2822009F8](sub_2193A3D10, 0, 0);
}

uint64_t sub_2193A3D10()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 32);
  *(v0 + 144) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 64);
  v6 = MEMORY[0x277D84F98];
  *(v0 + 88) = MEMORY[0x277D84F98];
  *(v0 + 96) = v6;

  if (v5)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 104) = v5;
    *(v0 + 112) = v8;
    v10 = (*(v0 + 24) + *(v0 + 72));
    v11 = *(*(v7 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    *(v0 + 120) = v11;
    v12 = v10[3];
    v13 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v12);
    swift_unknownObjectRetain();
    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    *v14 = v0;
    v14[1] = sub_2193A3F44;

    return MEMORY[0x282192A40](v11, v12, v13);
  }

  else
  {
    v9 = 0;
    while (((63 - v4) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v5 = *(v7 + 8 * v9++ + 72);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v15 = *(v0 + 24);

    v16 = v15 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v0 + 24);
      v18 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 16))(v17, &off_282A6CEF8, MEMORY[0x277D84F98], 2, ObjectType, v18);
      swift_unknownObjectRelease();
    }

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_2193A3F44(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return MEMORY[0x2822009F8](sub_2193A4044, 0, 0);
}

uint64_t sub_2193A4044(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 136);
  v50 = *(v4 + 16);
  if (v50)
  {
    v5 = 0;
    v6 = *(*(v3 + 48) + 80);
    v48 = *(v3 + 136);
    v49 = v4 + ((v6 + 32) & ~v6);
    v7 = *(v3 + 88);
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v12 = *(v3 + 56);
      v11 = *(v3 + 64);
      v14 = *(v3 + 40);
      v13 = *(v3 + 48);
      v52 = *(v13 + 72);
      (*(v13 + 16))(v11, v49 + v52 * v5, v14);
      v15 = sub_219BF1D24();
      v17 = v16;
      v51 = *(v13 + 32);
      v51(v12, v11, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 16) = v7;
      a1 = sub_21870F700(v15, v17);
      v19 = v7[2];
      v20 = (a2 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_36;
      }

      v23 = a2;
      if (v7[3] < v22)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v30 = a1;
      sub_219492A38();
      a1 = v30;
      v25 = *(v3 + 56);
      if (v23)
      {
LABEL_3:
        v9 = *(v3 + 40);
        v8 = *(v3 + 48);
        v10 = a1;

        v7 = *(v3 + 16);
        a1 = (*(v8 + 40))(v7[7] + v10 * v52, v25, v9);
        goto LABEL_4;
      }

LABEL_12:
      v26 = *(v3 + 40);
      v7 = *(v3 + 16);
      v7[(a1 >> 6) + 8] |= 1 << a1;
      v27 = (v7[6] + 16 * a1);
      *v27 = v15;
      v27[1] = v17;
      a1 = v51(v7[7] + a1 * v52, v25, v26);
      v28 = v7[2];
      v21 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v21)
      {
        goto LABEL_37;
      }

      v7[2] = v29;
LABEL_4:
      ++v5;
      v4 = v48;
      if (v50 == v5)
      {
        v31 = v7;
        goto LABEL_18;
      }
    }

    sub_219481C48(v22, isUniquelyReferenced_nonNull_native);
    a1 = sub_21870F700(v15, v17);
    if ((v23 & 1) != (v24 & 1))
    {

      return sub_219BF79A4();
    }

LABEL_11:
    v25 = *(v3 + 56);
    if (v23)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v7 = *(v3 + 88);
  v31 = *(v3 + 96);
LABEL_18:
  swift_unknownObjectRelease();

  v32 = *(v3 + 104);
  v33 = *(v3 + 112);
  *(v3 + 88) = v7;
  *(v3 + 96) = v31;
  v34 = (v32 - 1) & v32;
  if (v34)
  {
    a1 = *(v3 + 32);
LABEL_24:
    *(v3 + 104) = v34;
    *(v3 + 112) = v33;
    v36 = (*(v3 + 24) + *(v3 + 72));
    v37 = *(*(a1 + 56) + ((v33 << 9) | (8 * __clz(__rbit64(v34)))));
    *(v3 + 120) = v37;
    v38 = v36[3];
    v39 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v38);
    swift_unknownObjectRetain();
    v40 = swift_task_alloc();
    *(v3 + 128) = v40;
    *v40 = v3;
    v40[1] = sub_2193A3F44;
    a1 = v37;
    a2 = v38;
    a3 = v39;
  }

  else
  {
    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      a1 = *(v3 + 32);
      if (v35 >= (((1 << *(v3 + 144)) + 63) >> 6))
      {
        v42 = *(v3 + 24);

        v43 = v42 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v44 = *(v3 + 24);
          v45 = *(v43 + 8);
          ObjectType = swift_getObjectType();
          (*(v45 + 16))(v44, &off_282A6CEF8, v31, 2, ObjectType, v45);
          swift_unknownObjectRelease();
        }

        v47 = *(v3 + 8);

        return v47();
      }

      v34 = *(a1 + 8 * v35 + 64);
      ++v33;
      if (v34)
      {
        v33 = v35;
        goto LABEL_24;
      }
    }

LABEL_38:
    __break(1u);
  }

  return MEMORY[0x282192A40](a1, a2, a3);
}

uint64_t sub_2193A4518(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutService();
  v11[3] = v4;
  v11[4] = &off_282A3DCA0;
  v11[0] = a1;
  v5 = a2 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    __swift_project_boxed_opaque_existential_1(v11, v4);
    v8 = sub_218C54F50(a1);
    (*(v6 + 72))(a2, &off_282A6CEF8, v8, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = a1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

double sub_2193A460C(uint64_t a1, char a2)
{
  if (((1 << a2) & 0x15) != 0)
  {
    v3 = v2;
    v5 = *(a1 + 16);
    v6 = MEMORY[0x277D84F90];
    if (v5)
    {
      v22 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v5, 0);
      v6 = v22;
      v7 = a1 + 40;
      do
      {
        v8 = *(v7 - 8);
        v9 = *(v8 + 16);
        j__swift_retain();
        j__swift_retain();
        v10 = [v9 identifier];
        v11 = sub_219BF5414();
        v13 = v12;

        j__swift_release(v8);
        j__swift_release(v8);
        v15 = *(v22 + 16);
        v14 = *(v22 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_21870B65C((v14 > 1), v15 + 1, 1);
        }

        v7 += 16;
        *(v22 + 16) = v15 + 1;
        v16 = v22 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
        --v5;
      }

      while (v5);
    }

    v17 = sub_218845F78(v6);

    v18 = v3 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      (*(v19 + 16))(v3, &off_282A6CEF8, v17, 1, ObjectType, v19);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2193A4830(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v7 = [a1 allSortedArticleIDsInReadingList];
    v8 = sub_219BF5924();

    (*(v5 + 80))(v1, &off_282A6CEF8, v8, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2193A493C(uint64_t a1)
{
  if (!qword_280E8DEE0)
  {
    type metadata accessor for FCSportsOnboardingState(255);
    sub_2193A49AC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8DEE0);
    }
  }
}

id sub_2193A49E0(uint64_t a1, uint64_t a2)
{
  sub_21880B928(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  return sub_21939ACA4(a1, a2, v2 + v6, *(v2 + v6 + *(*(v5 - 8) + 64)));
}

uint64_t sub_2193A4AF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_21939A768(a1, v4);
}

uint64_t sub_2193A4B98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187608D4;

  return sub_2193A3A80(a1, v4, v5, v7, v6);
}

uint64_t sub_2193A4CC8(unint64_t *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TodayExpandContext(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_2193A1F8C(a1, a2, v2[2], v2[3], v2[4], v2 + v6, *v7, v7[1]);
}

uint64_t objectdestroy_60Tm_0()
{
  v1 = (type metadata accessor for TodayExpandContext(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);

  swift_unknownObjectRelease();
  v3 = v1[10];
  v4 = sub_219BE6DF4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_2193A4ED0()
{
  v1 = *(type metadata accessor for TodayExpandContext(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_21939BE90(v0[2], v0[3], v0[4], v0 + v2, *v3, v3[1]);
}

uint64_t sub_2193A4F7C(void *a1, uint64_t a2)
{
  sub_21880B9E0(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for TodayFeedServiceContext(0) - 8);
  return sub_2193A13E0(a1, a2, v2 + v6, (v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80))));
}

void sub_2193A505C(uint64_t a1)
{
  if (!qword_27CC197F0)
  {
    sub_21880B9E0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC197F0);
    }
  }
}

uint64_t objectdestroy_74Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_20Tm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_2193A542C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_219BEEAF4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_219BEE644() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  return sub_21939DDB8(a1, v2 + v6, v2 + v9, *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

void sub_2193A5538(uint64_t a1)
{
  if (!qword_280E90CD8)
  {
    MEMORY[0x28223BE20](a1);
    sub_2193A4C80(255);
    type metadata accessor for TodayFeedServiceConfig(255);
    sub_219BEEAF4();
    sub_219BEE644();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_280E90CD8);
    }
  }
}

uint64_t sub_2193A56D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  sub_21881F258(0, a2, a3, a4, MEMORY[0x277D84310]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2193A5748(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayGapLocation(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_21939EF04(a1, v1 + v4, *v5, v5[1]);
}

uint64_t sub_2193A5894()
{
  sub_219BE5384();

  return sub_21939F9D0();
}

char *sub_2193A59A4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI229MagazineGridSectionHeaderView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI229MagazineGridSectionHeaderView_sortByButton;
  *&v4[v11] = [objc_allocWithZone(sub_219BE7234()) initWithFrame_];
  v12 = OBJC_IVAR____TtC7NewsUI229MagazineGridSectionHeaderView_detailLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC7NewsUI229MagazineGridSectionHeaderView_titleLabel];
  v15 = v13;
  [v15 addSubview_];
  v16 = OBJC_IVAR____TtC7NewsUI229MagazineGridSectionHeaderView_sortByButton;
  [v15 addSubview_];
  [v15 addSubview_];
  v17 = *&v15[v16];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 mainBundle];
  sub_219BDB5E4();

  v21 = sub_219BF53D4();

  [v19 setAccessibilityLabel_];

  return v15;
}

void sub_2193A5C98()
{
  sub_2193A5D24(&unk_27CC10BD0, &unk_219C75D48);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_2193A5D24(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagazineGridSectionHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2193A5D64()
{
  v1 = OBJC_IVAR____TtC7NewsUI229MagazineGridSectionHeaderView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI229MagazineGridSectionHeaderView_sortByButton;
  *(v0 + v2) = [objc_allocWithZone(sub_219BE7234()) initWithFrame_];
  v3 = OBJC_IVAR____TtC7NewsUI229MagazineGridSectionHeaderView_detailLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_219BF7514();
  __break(1u);
}

uint64_t sub_2193A5E7C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2193A5ED8@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    result = sub_2193A6440(v4, *v5);
  }

  else
  {
    sub_218725F94();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_219C146A0;
    v8 = sub_218BE5604();
    result = v7;
    *(v7 + 32) = v8;
  }

  *a3 = result;
  return result;
}

double sub_2193A5F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_280E8D808 != -1)
    {
      swift_once();
    }

    v5 = qword_280F61710;
    v6 = sub_219BF6214();
    sub_219BE5314("AudioCPListSectionProvider: Processing playback state", 53, 2, &dword_2186C1000, v5, v6, MEMORY[0x277D84F90]);
    v7 = sub_219BE20E4();
    MEMORY[0x28223BE20](v7);
    v8[2] = a3;
    sub_219249504(sub_2193A61A4, v8, v8[6]);
  }

  return result;
}

double sub_2193A6080(id *a1, uint64_t a2)
{
  v3 = [*a1 items];
  sub_218BE5554();
  v4 = sub_219BF5924();

  v6[2] = a2;
  sub_219249308(sub_2193A61C0, v6, v4);

  return result;
}

void sub_2193A6124(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  swift_getObjectType();
  sub_2199704F0(v2, v3);
}

id sub_2193A61DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = type metadata accessor for AudioFeedTrack(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25[3] = v6;
  v25[4] = &off_282A93358;
  v25[0] = a4;
  v11 = *__swift_project_boxed_opaque_existential_1(v25, v6);
  v24[3] = v6;
  v24[4] = &off_282A93358;
  v24[0] = v11;
  sub_218718690(v24, v23);

  __swift_destroy_boxed_opaque_existential_1(v24);
  v12 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v22 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v14 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    do
    {
      sub_218C1620C(v14, v10);
      __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      sub_21996D3D0(v10);
      sub_218EB8BCC(v10);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v14 += v15;
      --v12;
    }

    while (v12);
    v13 = v22;
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  v16 = objc_allocWithZone(MEMORY[0x277CBB0E0]);
  sub_218BE4E38(v13, v17);

  v18 = sub_219BF5904();

  v19 = sub_219BF53D4();
  v20 = [v16 initWithItems:v18 header:v19 sectionIndexTitle:0];

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

uint64_t sub_2193A6440(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
LABEL_2:
  v8 = (a1 + 48 + 24 * v6);
  while (v4 != v6)
  {
    if (v6 >= v4)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_18;
    }

    v11 = *v8;
    v8 += 3;
    v10 = v11;
    ++v6;
    if (*(v11 + 16))
    {
      v13 = *(v8 - 5);
      v12 = *(v8 - 4);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_218C34FC0(0, v7[2] + 1, 1);
      }

      v15 = v7[2];
      v14 = v7[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_218C34FC0((v14 > 1), v15 + 1, 1);
      }

      v7[2] = v15 + 1;
      v16 = &v7[3 * v15];
      v16[4] = v13;
      v16[5] = v12;
      v16[6] = v10;
      v6 = v9;
      goto LABEL_2;
    }
  }

  v17 = v7[2];
  if (!v17)
  {
LABEL_16:

    sub_21901BAEC();
    v23 = sub_219BF5984();

    return v23;
  }

  result = sub_219BF73F4();
  v18 = 0;
  v19 = v7 + 6;
  while (v18 < v7[2])
  {
    ++v18;
    v20 = *(v19 - 2);
    v21 = *(v19 - 1);
    v22 = *v19;
    v19 += 3;

    sub_2193A61DC(v20, v21, v22, a2);

    sub_219BF73D4();
    sub_219BF7414();
    sub_219BF7424();
    result = sub_219BF73E4();
    if (v17 == v18)
    {
      goto LABEL_16;
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ForYouTodayFeedGroupClusteringKnobs(uint64_t a1)
{
  result = qword_280E9D7C0;
  if (!qword_280E9D7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2193A670C(uint64_t a1)
{
  result = sub_219BEF814();
  if (v2 <= 0x3F)
  {
    result = sub_219BEFF54();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2193A6790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_2193A79B8(0, &qword_280E90F70, MEMORY[0x277D32C58]);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v33 - v4;
  sub_2193A79B8(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v36 = &v33 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  sub_2193A79B8(0, &qword_280E91148, MEMORY[0x277D32A88]);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v33 - v19;
  sub_219BEF794();
  sub_219BEF524();

  v38 = v46;
  sub_219BEF784();
  sub_219BEF524();

  v37 = v45;
  sub_219BEF7A4();
  sub_219BEF524();

  v21 = sub_219BEFD84();
  v22 = *(*(v21 - 8) + 56);
  v40 = v20;
  v22(v20, 0, 1, v21);
  sub_219BEF774();
  v23 = sub_219BEF244();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v35 = v25(v17, 1, v23);
  v43 = a1;
  if (v35 == 1)
  {
    sub_2193A7A0C(v17, &qword_280E916D0, MEMORY[0x277D324F0]);
    v34 = 0;
  }

  else
  {
    sub_219BEF204();
    (*(v24 + 8))(v17, v23);
    sub_219BEF524();

    v34 = v44;
  }

  sub_219BEF774();
  v26 = v25(v14, 1, v23);
  v27 = v36;
  if (v26 == 1)
  {
    sub_2193A7A0C(v14, &qword_280E916D0, MEMORY[0x277D324F0]);
    v33 = 0;
  }

  else
  {
    sub_219BEF1E4();
    (*(v24 + 8))(v14, v23);
    sub_219BEF524();

    v33 = v44;
  }

  sub_219BEF774();
  if (v25(v11, 1, v23) == 1)
  {
    sub_2193A7A0C(v11, &qword_280E916D0, MEMORY[0x277D324F0]);
  }

  else
  {
    sub_219BEF1F4();
    (*(v24 + 8))(v11, v23);
    sub_219BEF524();
  }

  sub_219BEF774();
  if (v25(v27, 1, v23) == 1)
  {
    sub_2193A7A0C(v27, &qword_280E916D0, MEMORY[0x277D324F0]);
  }

  else
  {
    sub_219BEF1B4();
    (*(v24 + 8))(v27, v23);
    sub_219BEF524();
  }

  v28 = v39;
  sub_219BEF774();
  if (v25(v28, 1, v23) == 1)
  {
    sub_2193A7A0C(v28, &qword_280E916D0, MEMORY[0x277D324F0]);
    v29 = 1;
    v30 = v41;
  }

  else
  {
    sub_219BEF1D4();
    (*(v24 + 8))(v28, v23);
    v30 = v41;
    sub_219BEF524();

    v29 = 0;
  }

  v31 = sub_219BF0354();
  (*(*(v31 - 8) + 56))(v30, v29, 1, v31);
  return sub_219BF02D4();
}

void sub_2193A6E3C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000219D1B770 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_2193A6ED0(uint64_t a1)
{
  v2 = sub_2193A7A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193A6F0C(uint64_t a1)
{
  v2 = sub_2193A7A68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2193A6F48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_2193A79B8(0, &qword_280E910E8, MEMORY[0x277D32B30]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_219BEFF54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEF814();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218718690(a1, v24);
  sub_219BEF7C4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v7;
  sub_2193A7284(a1, v6);
  v22 = v8;
  v16 = v23;
  v21 = *(v8 + 48);
  if (v21(v6, 1, v23) == 1)
  {
    sub_219BEFE94();
    __swift_destroy_boxed_opaque_existential_1(a1);
    v17 = v21(v6, 1, v16);
    v18 = v22;
    if (v17 != 1)
    {
      sub_2193A7A0C(v6, &qword_280E910E8, MEMORY[0x277D32B30]);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v18 = v22;
    (*(v22 + 32))(v10, v6, v16);
  }

  v19 = v25;
  (*(v12 + 32))(v25, v14, v11);
  v20 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs(0);
  return (*(v18 + 32))(v19 + *(v20 + 20), v10, v16);
}

uint64_t sub_2193A7284@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_2193A7ABC(0, &qword_280E8C8C8, MEMORY[0x277D844C8]);
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = sub_219BF5474();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE1CC4();
  if (sub_219BE1CB4())
  {
    v13 = NewsCoreUserDefaults();
    v14 = [v13 stringForKey_];

    if (v14)
    {
      v38 = a2;
      v15 = sub_219BF5414();
      v17 = v16;

      sub_219BF5464();
      v37 = sub_219BF5424();
      v19 = v18;
      (*(v10 + 8))(v12, v9);
      if (v19 >> 60 == 15)
      {
      }

      else
      {
        if (qword_280E8D7A0 != -1)
        {
          swift_once();
        }

        v20 = qword_280F616D8;
        sub_2186F20D4(0);
        v21 = swift_allocObject();
        v34 = xmmword_219C09BA0;
        *(v21 + 16) = xmmword_219C09BA0;
        *(v21 + 56) = MEMORY[0x277D837D0];
        v35 = sub_2186FC3BC();
        *(v21 + 64) = v35;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v22 = sub_219BF6214();
        v36 = v20;
        sub_219BE5314("See For You local clustering knobs overridden with %{public}@", 61, 2, &dword_2186C1000, v20, v22, v21);

        sub_219BDAFF4();
        swift_allocObject();
        sub_219BDAFE4();
        v23 = sub_219BEFF54();
        sub_2193A7B20(&qword_280E910F0, MEMORY[0x277D32B40]);
        v24 = v37;
        v25 = v38;
        sub_219BDAFC4();
        if (!v2)
        {
          sub_218822A58(v24, v19);

          return (*(*(v23 - 8) + 56))(v25, 0, 1, v23);
        }

        v26 = sub_219BF61F4();
        v27 = swift_allocObject();
        *(v27 + 16) = v34;
        v41 = 0;
        v42 = 0xE000000000000000;
        v43 = v2;
        sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
        sub_219BF7484();
        v28 = v41;
        v29 = v42;
        v31 = v35;
        v30 = v36;
        *(v27 + 56) = MEMORY[0x277D837D0];
        *(v27 + 64) = v31;
        *(v27 + 32) = v28;
        *(v27 + 40) = v29;
        sub_219BE5314("ForYou knobs found local clustering knobs override but failed to decode, using configured knobs. Error=%{public}@", 113, 2, &dword_2186C1000, v30, v26, v27);

        sub_218822A58(v24, v19);
        v3 = 0;
      }
    }
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193A7A68();
  result = sub_219BF7B34();
  if (!v3)
  {
    sub_219BEFF54();
    sub_2193A7B20(&qword_280E910F0, MEMORY[0x277D32B40]);
    v33 = v40;
    sub_219BF76E4();
    return (*(v39 + 8))(v8, v33);
  }

  return result;
}

uint64_t sub_2193A77B8(void *a1, uint64_t a2)
{
  sub_2193A7ABC(0, &qword_280E8C288, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  result = sub_219BEF7F4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2193A7A68();
    sub_219BF7B44();
    sub_219BEFF54();
    sub_2193A7B20(&qword_280E910F8, MEMORY[0x277D32B38]);
    sub_219BF7834();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_2193A7950()
{
  if (MEMORY[0x21CEC6550]())
  {

    JUMPOUT(0x21CEC6CC0);
  }

  return 0;
}

void sub_2193A79B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2193A7A0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2193A79B8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2193A7A68()
{
  result = qword_280E9D7F0[0];
  if (!qword_280E9D7F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9D7F0);
  }

  return result;
}

void sub_2193A7ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2193A7A68();
    v7 = a3(a1, &type metadata for ForYouTodayFeedGroupClusteringKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2193A7B20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_219BEFF54();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2193A7B78()
{
  result = qword_27CC19880;
  if (!qword_27CC19880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19880);
  }

  return result;
}

unint64_t sub_2193A7BD0()
{
  result = qword_280E9D7E0;
  if (!qword_280E9D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D7E0);
  }

  return result;
}

unint64_t sub_2193A7C28()
{
  result = qword_280E9D7E8;
  if (!qword_280E9D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D7E8);
  }

  return result;
}

uint64_t sub_2193A7CA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193A848C(0, &qword_280E8CBD8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for BestOfBundleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193A83D4();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2193A84F0(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_2193A8428(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2193A7F50(uint64_t a1)
{
  v2 = sub_2193A83D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193A7F8C(uint64_t a1)
{
  v2 = sub_2193A83D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2193A7FE0(void *a1)
{
  sub_2193A848C(0, &qword_280E8C418, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193A83D4();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_2193A84F0(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2193A8168(uint64_t a1)
{
  v2 = sub_2193A84F0(&qword_280EB1320, type metadata accessor for BestOfBundleMagazineFeedGroup, &unk_219C761E4);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2193A81F8(void *a1)
{
  a1[1] = sub_2193A84F0(&qword_280EB1320, type metadata accessor for BestOfBundleMagazineFeedGroup, &unk_219C761E4);
  a1[2] = sub_2193A84F0(&qword_280EB12F8, type metadata accessor for BestOfBundleMagazineFeedGroup, &unk_219C761A0);
  result = sub_2193A84F0(&qword_280EB1308, type metadata accessor for BestOfBundleMagazineFeedGroup, &unk_219C76178);
  a1[3] = result;
  return result;
}

uint64_t sub_2193A837C(uint64_t a1)
{
  result = sub_2193A84F0(&qword_280EB12F0, type metadata accessor for BestOfBundleMagazineFeedGroup, &unk_219C761C8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2193A83D4()
{
  result = qword_280EB1338[0];
  if (!qword_280EB1338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB1338);
  }

  return result;
}

uint64_t sub_2193A8428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BestOfBundleMagazineFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2193A848C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2193A83D4();
    v7 = a3(a1, &type metadata for BestOfBundleMagazineFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2193A84F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2193A854C()
{
  result = qword_27CC19888;
  if (!qword_27CC19888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19888);
  }

  return result;
}

unint64_t sub_2193A85A4()
{
  result = qword_280EB1328;
  if (!qword_280EB1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1328);
  }

  return result;
}

unint64_t sub_2193A85FC()
{
  result = qword_280EB1330;
  if (!qword_280EB1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1330);
  }

  return result;
}

uint64_t sub_2193A8650()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2186DDC88(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14[-v6];
  v8 = OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_idledAt;
  swift_beginAccess();
  v9 = 1;
  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    (*(v2 + 16))(v4, v0 + v8, v1);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_paidBundleConfigManager), *(v0 + OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_paidBundleConfigManager + 24));
    v10 = v0;
    v11 = sub_219BF3CE4();
    [v11 audioCloseIdlePlayerAfterTime];

    sub_219BDBBF4();
    v0 = v10;
    (*(v2 + 8))(v4, v1);
    v9 = 0;
  }

  (*(v2 + 56))(v7, v9, 1, v1);
  v12 = OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_autoCloseAt;
  swift_beginAccess();
  sub_21923686C(v7, v0 + v12);
  swift_endAccess();
  sub_2193A88C8();
  return sub_2187108D4(v7, &qword_280EE9C40, MEMORY[0x277CC9578]);
}

void sub_2193A88C8()
{
  v1 = v0;
  sub_2186DDC88(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_autoCloseAt;
  swift_beginAccess();
  sub_2187D96F4(&v1[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2187108D4(v4, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v10 = OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_autoCloseTimer;
    if (*&v1[OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_autoCloseTimer])
    {
      sub_2186C66AC();
      v11 = sub_219BF6F74();
      v12 = sub_219BF6214();
      sub_219BE5314("AudioAutoClosePlayerHandler: invalidating auto-close timer", 58, 2, &dword_2186C1000, v11, v12, MEMORY[0x277D84F90]);

      v13 = *&v1[v10];
      if (v13)
      {
        [v13 invalidate];
        v14 = *&v1[v10];
      }

      else
      {
        v14 = 0;
      }

      *&v1[v10] = 0;
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_2186C66AC();
    v15 = sub_219BF6F74();
    sub_2186DDC88(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C09BA0;
    v17 = *&v1[OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_logDateFormatter];
    v18 = sub_219BDBC04();
    v19 = [v17 stringFromDate_];

    v20 = sub_219BF5414();
    v22 = v21;

    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_2186FC3BC();
    *(v16 + 32) = v20;
    *(v16 + 40) = v22;
    v23 = sub_219BF6214();
    sub_219BE5314("AudioAutoClosePlayerHandler: scheduling auto-close timer for %{public}@", 71, 2, &dword_2186C1000, v15, v23, v16);

    v24 = swift_allocObject();
    *(v24 + 16) = v1;
    v25 = objc_allocWithZone(MEMORY[0x277CBEBB8]);
    v26 = v1;
    v27 = sub_219BDBC04();
    aBlock[4] = sub_2193AA1B4;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218B66540;
    aBlock[3] = &block_descriptor_120;
    v28 = _Block_copy(aBlock);
    v29 = [v25 initWithFireDate:v27 interval:0 repeats:v28 block:0.0];
    _Block_release(v28);

    v30 = *&v26[OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_autoCloseTimer];
    *&v26[OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_autoCloseTimer] = v29;
    v31 = v29;

    if (v31)
    {
      v32 = [objc_opt_self() mainRunLoop];
      [v32 addTimer:v31 forMode:*MEMORY[0x277CBE738]];
    }

    (*(v6 + 8))(v8, v5);
  }
}

void sub_2193A8D80()
{
  v1 = v0;
  sub_218CFB62C(0);
  MEMORY[0x28223BE20](v2 - 8);
  v62 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF1324();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1C74();
  v56 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21875DFC4(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
  v61 = v10;
  v59 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v13 = sub_219BF2A04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  sub_2186DDC88(0, &unk_280EE3920, MEMORY[0x277D6EC00], MEMORY[0x277D83D88]);
  *&v21 = MEMORY[0x28223BE20](v20 - 8).n128_u64[0];
  v23 = &v49 - v22;
  v60 = v1;
  v24 = [*(v1 + OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_carSessionStatus) currentSession];
  if (v24)
  {

    sub_2186C66AC();
    v62 = sub_219BF6F74();
    v25 = sub_219BF6214();
    sub_219BE5314("AudioAutoClosePlayerHandler: not closing player because attached to CarPlay", 75, 2, &dword_2186C1000, v62, v25, MEMORY[0x277D84F90]);
    v26 = v62;
  }

  else
  {
    v49 = v16;
    v50 = v7;
    v51 = v9;
    v52 = v12;
    v53 = v19;
    v54 = v14;
    v55 = v13;
    sub_2186C66AC();
    v27 = sub_219BF6F74();
    v28 = sub_219BF6214();
    sub_219BE5314("AudioAutoClosePlayerHandler: closing player", 43, 2, &dword_2186C1000, v27, v28, MEMORY[0x277D84F90]);

    v29 = objc_opt_self();
    v30 = [v29 sharedApplication];
    v31 = [v30 applicationState];

    if (v31)
    {
      swift_getObjectType();
      sub_219BEA974();
      v32 = *MEMORY[0x277D6EBF0];
      v33 = sub_219BEA994();
      v34 = *(v33 - 8);
      (*(v34 + 104))(v23, v32, v33);
      (*(v34 + 56))(v23, 0, 1, v33);
      sub_219BE7094();
      v35 = v6;
      sub_2187108D4(v23, &unk_280EE3920, MEMORY[0x277D6EC00]);
    }

    else
    {
      v35 = v6;
    }

    v36 = v57;
    v37 = v51;
    v38 = [v29 sharedApplication];
    v39 = [v38 applicationState];

    v40 = v59;
    v41 = v50;
    if (v39 >= 3)
    {
      sub_219BF7514();
      __break(1u);
    }

    else
    {
      v42 = **(&unk_278242C50 + v39);
      v44 = v53;
      v43 = v54;
      v45 = v55;
      (*(v54 + 104))(v53, v42, v55);
      (*(v43 + 16))(v49, v44, v45);
      (*(v56 + 104))(v37, *MEMORY[0x277D33568], v41);
      v63 = 0u;
      v64 = 0u;
      (*(v36 + 104))(v35, *MEMORY[0x277D33290], v58);
      v46 = v52;
      sub_219BF2564();
      swift_getObjectType();
      sub_219BEABC4();
      v48 = v61;
      v47 = v62;
      (*(v40 + 16))(v62, v46, v61);
      (*(v40 + 56))(v47, 0, 1, v48);
      sub_219BE7094();

      sub_2193AA2A8(v62, sub_218CFB62C);
      (*(v40 + 8))(v46, v61);
      (*(v54 + 8))(v53, v55);
    }
  }
}

void sub_2193A9574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2193AA1E0(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v7[*(v8 + 56)];
  sub_2193AA244(a1, v7);
  sub_2193AA244(a2, v9);
  sub_21883F194(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v7;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2193AA2A8(v9, sub_21883F194);
      sub_2193AA2A8(v7, sub_21883F194);
      return;
    }

    v10 = v9;
    v9 = v7;
  }

  sub_218A6E554(0);
  v12 = *(v11 + 64);
  v13 = sub_219BDD9E4();
  (*(*(v13 - 8) + 8))(v10 + v12, v13);
  sub_2193AA2A8(v10, type metadata accessor for AudioFeedTrack);
  sub_2193AA2A8(v9, sub_21883F194);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_21883EDD0();
  }
}

void *sub_2193A9734(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    sub_219BEAF64();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_219BE20F4();

    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v4 = v3;
    sub_219BE1A04();

    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

void sub_2193A9838(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_21883EDD0();
  }
}

void sub_2193A988C(unsigned __int8 *a1, _BYTE *a2, uint64_t a3)
{
  sub_2186DDC88(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  if (*a2 != 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_idledAt;
      v16 = Strong;
      swift_beginAccess();
      sub_2187D96F4(v16 + v15, v7);

      v17 = sub_219BDBD34();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v7, 1, v17) != 1)
      {
        sub_2187108D4(v7, &qword_280EE9C40, MEMORY[0x277CC9578]);
        sub_2186C66AC();
        v19 = sub_219BF6F74();
        v20 = sub_219BF6214();
        sub_219BE5314("AudioAutoClosePlayerHandler: clearing idle date due to audio status change", 74, 2, &dword_2186C1000, v19, v20, MEMORY[0x277D84F90]);

        swift_beginAccess();
        v21 = swift_unknownObjectWeakLoadStrong();
        if (!v21)
        {
          return;
        }

        v22 = v21;
        (*(v18 + 56))(v10, 1, 1, v17);
        v23 = OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_idledAt;
        swift_beginAccess();
        sub_21923686C(v10, v22 + v23);
LABEL_12:
        swift_endAccess();
        sub_2193A8650();

        v27 = MEMORY[0x277CC9578];
        v28 = v10;
LABEL_15:
        sub_2187108D4(v28, &qword_280EE9C40, v27);
        return;
      }
    }

    else
    {
      v29 = sub_219BDBD34();
      (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
    }

    v27 = MEMORY[0x277CC9578];
    v28 = v7;
    goto LABEL_15;
  }

  v11 = *a1;
  sub_2186C66AC();
  v31 = sub_219BF6F74();
  v12 = sub_219BF6214();
  if (v11 != 1)
  {
    sub_219BE5314("AudioAutoClosePlayerHandler: saving idle date due to audio status change", 72, 2, &dword_2186C1000, v31, v12, MEMORY[0x277D84F90]);

    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (!v24)
    {
      return;
    }

    v22 = v24;
    sub_219BDBD24();
    v25 = sub_219BDBD34();
    (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
    v26 = OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_idledAt;
    swift_beginAccess();
    sub_21923686C(v10, v22 + v26);
    goto LABEL_12;
  }

  sub_219BE5314("AudioAutoClosePlayerHandler: ignoring audio status change because it remains idle", 81, 2, &dword_2186C1000, v31, v12, MEMORY[0x277D84F90]);
  v13 = v31;
}

void sub_2193A9E00(uint64_t a1)
{
  sub_2186DDC88(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_autoCloseAt;
  swift_beginAccess();
  sub_2187D96F4(a1 + v12, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2187108D4(v4, &qword_280EE9C40, MEMORY[0x277CC9578]);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    sub_219BDBD24();
    sub_218707960(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v13 = sub_219BF5334();
    v14 = *(v6 + 8);
    v14(v8, v5);
    v14(v11, v5);
    if ((v13 & 1) == 0)
    {
      sub_2186C66AC();
      v15 = sub_219BF6F74();
      v16 = sub_219BF6214();
      sub_219BE5314("AudioAutoClosePlayerHandler: closing player on CarPlay disconnect since the auto-close date has passed", 102, 2, &dword_2186C1000, v15, v16, MEMORY[0x277D84F90]);

      sub_2193A8D80();
    }
  }
}

void sub_2193AA1E0(uint64_t a1)
{
  if (!qword_280EE8D68)
  {
    sub_21883F194(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE8D68);
    }
  }
}

uint64_t sub_2193AA244(uint64_t a1, uint64_t a2)
{
  sub_21883F194(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2193AA2A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2193AA310(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_2193AA3D8(uint64_t a1, uint64_t a2)
{
  sub_219BE3204();
  sub_2187D9028();
  v4 = sub_219BF66A4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  sub_219BE2F94();

  return result;
}

void sub_2193AA4FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(*a2 + 88) + 40))(*a1, *(a2 + *(*a2 + 128)), *(*a2 + 80));
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_2192F78F4(0);
  sub_2193AABB4(&unk_27CC199A0, sub_2192F78F4, MEMORY[0x277D6D890]);

  sub_219BE6EF4();
}

id sub_2193AA664()
{
  sub_218972E2C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsFavoritesModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A407C(0);
  sub_219BE5FC4();
  (*(v3 + 32))(v5, v8, v2);
  v9 = *(v0 + *(*v0 + 120));
  sub_219BF07D4();
  v10 = v14[1];
  ObjectType = swift_getObjectType();
  v12 = sub_218E97A64(v10, *(v9 + 48), ObjectType);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v5, v2);
  return v12;
}

double sub_2193AA7F8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_219BE6F24();

  return result;
}

uint64_t *sub_2193AA87C()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2193AA974()
{
  sub_2193AA87C();

  return swift_deallocClassInstance();
}

double sub_2193AA9F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = swift_allocObject();
        *(v5 + 16) = v4;
        v6 = swift_allocObject();
        v6[2] = v4;
        v6[3] = sub_2193AAD94;
        v6[4] = v5;
        swift_unknownObjectRetain_n();

        sub_219BE3494();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2193AAB24()
{
  v0 = off_282A37BE8;
  type metadata accessor for SportsFavoritesDataManager();
  return v0();
}

uint64_t sub_2193AABB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2193AABFC(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  (*(v2 + 48))(a1, *(v1 + *(*v1 + 128)), v3, v2);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  sub_2192F78F4(0);
  sub_2193AABB4(&unk_27CC199A0, sub_2192F78F4, MEMORY[0x277D6D890]);

  sub_219BE6EF4();

  return result;
}

__n128 FeedRouteModel.init(feed:feedConfiguration:referralContext:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a3 + 32);
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 32) = v4;
  *(a4 + 40) = a2;
  result = *a3;
  v8 = *(a3 + 16);
  *(a4 + 48) = *a3;
  *(a4 + 64) = v8;
  *(a4 + 80) = v5;
  return result;
}

uint64_t sub_2193AADC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2193AAE0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void *sub_2193AAE88(uint64_t a1)
{
  v1 = sub_219BDDA74();
  v40 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDD434();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = &unk_282B817D8;
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v13 = result;
    v36 = v1;
    v37 = v5;
    v38 = v4;
    v39 = v7;
    __swift_project_boxed_opaque_existential_1((v41 + OBJC_IVAR____TtC7NewsUI221ActionPreviewActivity_router), *(v41 + OBJC_IVAR____TtC7NewsUI221ActionPreviewActivity_router + 24));
    swift_unknownObjectRetain();
    v14 = [v13 URL];
    sub_219BDB8B4();

    v15 = sub_219BDD974();
    v16 = *(v9 + 8);
    v16(v11, v8);
    if (!v15)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v35 = v15;
    v17 = (v41 + OBJC_IVAR____TtC7NewsUI221ActionPreviewActivity_handler);
    v18 = *(v41 + OBJC_IVAR____TtC7NewsUI221ActionPreviewActivity_handler + 24);
    v41 = *(v41 + OBJC_IVAR____TtC7NewsUI221ActionPreviewActivity_handler + 32);
    v19 = [v13 URL];
    sub_219BDB8B4();

    v42 = MEMORY[0x277D84F90];
    sub_2193AB774();
    sub_2193AB854(0, &qword_27CC19A30, MEMORY[0x277D2FBB0], MEMORY[0x277D83940]);
    sub_2193AB7CC();
    v20 = v36;
    sub_219BF7164();
    v21 = v39;
    sub_219BDD734();
    v22 = v21;
    (*(v40 + 8))(v3, v20);
    v16(v11, v8);
    v23 = v37;
    v24 = v21;
    v25 = v38;
    v26 = (*(v37 + 88))(v24, v38);
    if (v26 == *MEMORY[0x277D2F960])
    {
      (*(v23 + 96))(v22, v25);

      sub_218DB635C(0);
      v28 = *(v27 + 48);
    }

    else
    {
      if (v26 != *MEMORY[0x277D2F970])
      {
        if (v26 == *MEMORY[0x277D2F958])
        {
          (*(v23 + 8))(v22, v25);
        }

        else
        {
          if (v26 != *MEMORY[0x277D2F950])
          {
            swift_unknownObjectRelease();
            (*(v23 + 8))(v22, v25);
            return v35;
          }

          (*(v23 + 96))(v22, v25);

          sub_218DB60E0(0);
          sub_218838478(&v22[*(v33 + 48)]);
        }

        goto LABEL_9;
      }

      (*(v23 + 96))(v22, v25);

      sub_218DB62B4(0);
      v28 = *(v29 + 64);
    }

    v30 = sub_219BDE294();
    (*(*(v30 - 8) + 8))(&v22[v28], v30);
LABEL_9:
    v31 = objc_allocWithZone(sub_219BE7D34());
    v32 = sub_219BE7D24();
    swift_unknownObjectRelease();
    return v32;
  }

  return result;
}

void *sub_2193AB554(uint64_t a1)
{
  v2 = sub_219BDDB54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = &unk_282B817D8;
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v11 = result;
    v12 = *(v1 + OBJC_IVAR____TtC7NewsUI221ActionPreviewActivity_router + 24);
    v14[0] = *(v1 + OBJC_IVAR____TtC7NewsUI221ActionPreviewActivity_router + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI221ActionPreviewActivity_router), v12);
    swift_unknownObjectRetain();
    v13 = [v11 URL];
    sub_219BDB8B4();

    (*(v3 + 104))(v5, *MEMORY[0x277D2FC50], v2);
    sub_219BDD964();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

unint64_t sub_2193AB774()
{
  result = qword_27CC17BA8;
  if (!qword_27CC17BA8)
  {
    sub_219BDDA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17BA8);
  }

  return result;
}

unint64_t sub_2193AB7CC()
{
  result = qword_27CC19A38;
  if (!qword_27CC19A38)
  {
    sub_2193AB854(255, &qword_27CC19A30, MEMORY[0x277D2FBB0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19A38);
  }

  return result;
}

void sub_2193AB854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _s7ContextOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 49))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 48) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 48) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s7ContextOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_2193AB9B8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_219BE6E34();
  LOBYTE(a1) = sub_2190890C0(a1, v3);

  return a1 & 1;
}

BOOL sub_2193ABA30(uint64_t a1, uint64_t a2)
{
  sub_219BDC104();
  sub_2193ABFCC();
  return (sub_219BF53A4() & 1) == 0;
}

uint64_t sub_2193ABAC4(int64x2_t *a1, int64x2_t *a2)
{
  v2 = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) != 0 && a1[2].i64[0] == a2[2].i64[0])
  {
    v2 = a2[2].i8[8] ^ a1[2].i8[8] ^ 1;
  }

  return v2 & 1;
}

BOOL sub_2193ABB14(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  return a1[2] == a2[2] && a1[3] == a2[3];
}

uint64_t sub_2193ABB48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = *(a2 + 16);
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = (*a1 == *a2) & ~result;
    if (v5 == *(a2 + 8))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2193ABB78(int64x2_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = a1[2];
  v6 = a1[3].i8[0];
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_2193ABBD4(v5, v7) & 1;
}

uint64_t sub_2193ABBD4(int64x2_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3].u8[0];
  if (v4 >> 6)
  {
    v6 = a1[2].i64[0];
    v5 = a1[2].i64[1];
    if (v4 >> 6 == 1)
    {
      if ((*(a2 + 48) & 0xC0) == 0x40)
      {
        v7 = 0;
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v2, *a2), vceqq_s64(v3, *(a2 + 16))))) & 1) != 0 && v6 == *(a2 + 32))
        {
          return (v5 ^ *(a2 + 40) ^ 1) & 1;
        }

        return v7 & 1;
      }
    }

    else
    {
      v11 = *(a2 + 48);
      if ((v11 & 0xC0) == 0x80)
      {
        v12 = vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v2, *a2), vceqq_s64(v3, *(a2 + 16))))));
        v7 = (v12 ^ 1) & v11;
        if ((v12 & 1) == 0 && (v4 & 1) == 0)
        {
          v13 = (v6 == *(a2 + 32)) & ~v11;
          if (v5 == *(a2 + 40))
          {
            v7 = v13;
          }

          else
          {
            v7 = 0;
          }
        }

        return v7 & 1;
      }
    }
  }

  else if (*(a2 + 48) <= 0x3Fu)
  {
    v9 = v2.i64[0] == *a2;
    v10 = vmovn_s64(vceqq_s64(vextq_s8(v2, v3, 8uLL), *(a2 + 8)));
    return v9 & v10.i32[0] & v10.i32[1] & 1;
  }

  return 0;
}

uint64_t _s7ContextO6ErrorsOMa(uint64_t a1)
{
  result = qword_27CC19A70;
  if (!qword_27CC19A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2193ABD3C(uint64_t a1)
{
  sub_2193ABDA8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_2193ABDA8(uint64_t a1)
{
  if (!qword_27CC19A80)
  {
    sub_219BDC104();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC19A80);
    }
  }
}

uint64_t _s7ContextO11ReplacementOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7ContextO11ReplacementOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_2193ABE60(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2193ABE7C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_2193ABEBC(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2193ABF10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s7ContextO10RowContextVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7ContextO10RowContextVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_2193ABFCC()
{
  result = qword_280EE9BC0;
  if (!qword_280EE9BC0)
  {
    sub_219BDC104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE9BC0);
  }

  return result;
}

void sub_2193AC0A4(uint64_t a1)
{
  v2 = v1;
  v85 = sub_219BE9414();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE5F44();
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x28223BE20](v5);
  v77 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_219BDD804();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v74 = (&v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_219BDE294();
  v81 = *(v8 - 8);
  v82 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E58FC(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v72 - v12;
  v76 = sub_219BDEE04();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BF2484();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193AD408(0, &unk_280E8BCC0, &type metadata for NewsActivity2.Trait, MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  v80 = xmmword_219C09BA0;
  *(v20 + 16) = xmmword_219C09BA0;
  *(v20 + 32) = 0;
  (*(v17 + 16))(v19, a1, v16);
  v21 = (*(v17 + 88))(v19, v16);
  v22 = *MEMORY[0x277D33878];
  v86 = v2;
  if (v21 == v22)
  {
    (*(v17 + 96))(v19, v16);
    v23 = *v19;
    v24 = *v19;
    v25 = sub_2191F8570(1, 2, 1, v20);

    *(v25 + 2) = 2;
    v25[33] = 1;
    v26 = swift_allocObject();
    LOBYTE(v88[0]) = 0;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 32) = v23;
    *(v26 + 56) = 0;
    *(v26 + 63) = 0;
    *(v26 + 61) = 0;
    *(v26 + 57) = 0;
    v27 = v26 | 0x5000000000000000;
    *(v26 + 64) = v25;
  }

  else
  {
    v87 = v20;
    if (v21 == *MEMORY[0x277D33888])
    {
      (*(v17 + 96))(v19, v16);
      v25 = sub_2191F8570(1, 2, 1, v87);
      *(v25 + 2) = 2;
      v25[33] = 1;
      sub_2187B2C48(0);
      v29 = v28;
      v87 = swift_allocBox();
      v31 = v30;
      v32 = *(v29 + 48);
      sub_2187B2DA0(0);
      v34 = *(v33 + 48);
      swift_unknownObjectRetain();
      sub_219BDEDE4();
      v35 = sub_219BDB954();
      (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
      v37 = v81;
      v36 = v82;
      (*(v81 + 104))(v10, *MEMORY[0x277D2FF08], v82);
      sub_219BDD904();
      (*(v37 + 8))(v10, v36);
      sub_218838478(v13);
      (*(v75 + 8))(v15, v76);
      *(v31 + v34) = v25;

      swift_unknownObjectRelease();
      *(v31 + v32) = MEMORY[0x277D84F90];
      v2 = v86;
      v27 = v87 | 2;
    }

    else if (v21 == *MEMORY[0x277D33880])
    {
      (*(v17 + 96))(v19, v16);
      v38 = *v19;
      v39 = [*v19 identifier];
      sub_219BF5414();

      sub_2191B3054(0);
      v40 = v74;
      *v74 = v38;
      v41 = v38;
      sub_219BDDBE4();
      (*(v72 + 104))(v40, *MEMORY[0x277D2FAF8], v73);
      sub_2186E58FC(0, &qword_27CC17528, MEMORY[0x277D30090], MEMORY[0x277D84560]);
      v42 = sub_219BDE664();
      v43 = *(v42 - 8);
      v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = v80;
      (*(v43 + 104))(v45 + v44, *MEMORY[0x277D30088], v42);
      sub_219BDE674();
      swift_allocObject();
      v46 = sub_219BDE614();

      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      v27 = v47 | 0x7000000000000004;
      v2 = v86;
      v25 = v87;
    }

    else
    {
      v25 = v87;
      if (v21 != *MEMORY[0x277D33870])
      {
        v88[0] = 0;
        v88[1] = 0xE000000000000000;
        sub_219BF7314();
        MEMORY[0x21CECC330](0x206E776F6E6B6E55, 0xED00002065736163);
        sub_219BF7484();
        MEMORY[0x21CECC330](0xD000000000000049, 0x8000000219CF4D40);
        sub_219BF7514();
        __break(1u);
        return;
      }

      (*(v17 + 96))(v19, v16);
      v48 = *(v19 + 1);
      v49 = [*v19 identifier];
      v50 = sub_219BF5414();
      v52 = v51;

      v53 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
      swift_unknownObjectRelease();
      v54 = swift_allocObject();
      *(v54 + 16) = v50;
      *(v54 + 24) = v52;
      *(v54 + 32) = v53;
      *(v54 + 40) = v25;
      *(v54 + 48) = 1;
      *(v54 + 56) = v48;
      *(v54 + 64) = 0u;
      *(v54 + 80) = 0u;
      v27 = v54 | 0x2000000000000004;
      *(v54 + 96) = -1;

      v2 = v86;
    }
  }

  sub_218D4B004(v2 + 24, v88);
  v82 = v27;
  if (v89)
  {
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v55 = sub_219BE7154();
    __swift_destroy_boxed_opaque_existential_1(v88);
    if (v55)
    {
      v81 = v55;
      goto LABEL_14;
    }
  }

  else
  {
    sub_218D4B094(v88);
  }

  v81 = MEMORY[0x277D84F90];
LABEL_14:
  v56 = *(v25 + 2);
  v87 = v25;
  v57 = v25 + 32;
  while (1)
  {
    if (!v56)
    {

      v60 = v84;
      v59 = v85;
      v62 = v82;
      v61 = v83;
      v63 = v81;
      goto LABEL_28;
    }

    if (*v57 <= 1u && *v57)
    {
      break;
    }

    v58 = sub_219BF78F4();

    ++v57;
    --v56;
    if (v58)
    {
      goto LABEL_23;
    }
  }

LABEL_23:

  v65 = v77;
  v64 = v78;
  v66 = v79;
  (*(v78 + 104))(v77, *MEMORY[0x277D6D3C8], v79);
  v67 = v81;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v84;
  v59 = v85;
  v61 = v83;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v67 = sub_2191FAA58(0, v67[2] + 1, 1, v67);
  }

  v70 = v67[2];
  v69 = v67[3];
  v63 = v67;
  if (v70 >= v69 >> 1)
  {
    v63 = sub_2191FAA58((v69 > 1), v70 + 1, 1, v67);
  }

  v63[2] = v70 + 1;
  (*(v64 + 32))(v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v70, v65, v66);
  v62 = v82;
LABEL_28:
  v88[0] = v62;
  *v60 = v63;
  (*(v61 + 104))(v60, *MEMORY[0x277D6E588], v59);
  sub_2189EB264(v62);
  sub_219BE6474();
  v71 = sub_218932F9C(v62);
  (*(v61 + 8))(v60, v59, v71);
  sub_218932F9C(v88[0]);
}

uint64_t sub_2193ACE9C(uint64_t a1)
{
  v3 = sub_219BF2CB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_219BF2634();
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF2484();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x277D33878])
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
    *v6 = v16;
    v17 = MEMORY[0x277D33BA0];
LABEL_3:
    (*(v4 + 104))(v6, *v17, v3);
    v18 = v16;
    sub_219BF4794();
    (*(v4 + 8))(v6, v3);
    v19 = sub_219BF2614();

LABEL_11:
    (*(v7 + 8))(v9, v30);
    return v19 & 1;
  }

  if (v15 == *MEMORY[0x277D33888])
  {
    (*(v11 + 96))(v14, v10);
    v20 = *v14;
    __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
    *v6 = v20;
    (*(v4 + 104))(v6, *MEMORY[0x277D33BC0], v3);
    swift_unknownObjectRetain();
    sub_219BF4794();
    (*(v4 + 8))(v6, v3);
    v19 = sub_219BF2614();
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (v15 == *MEMORY[0x277D33880])
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
    *v6 = v16;
    v17 = MEMORY[0x277D33BB0];
    goto LABEL_3;
  }

  if (v15 == *MEMORY[0x277D33870])
  {
    (*(v11 + 96))(v14, v10);
    v22 = *v14;
    v21 = *(v14 + 1);
    v23 = v1[11];
    v29[1] = v1[12];
    v29[2] = v22;
    v24 = [v22 identifier];
    v25 = sub_219BF5414();
    v27 = v26;

    *v6 = v25;
    v6[1] = v27;
    v6[2] = v21;
    (*(v4 + 104))(v6, *MEMORY[0x277D33B88], v3);
    sub_219BF4794();
    (*(v4 + 8))(v6, v3);
    v19 = sub_219BF2614();
    goto LABEL_10;
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0x206E776F6E6B6E55, 0xED00002065736163);
  sub_219BF7484();
  MEMORY[0x21CECC330](0xD000000000000049, 0x8000000219CF4D40);
  result = sub_219BF7514();
  __break(1u);
  return result;
}

void sub_2193AD408(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2193AD458()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC7NewsUI232MySportsTopicTagFeedGroupSection_content;
  v2 = sub_219BF1934();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7NewsUI232MySportsTopicTagFeedGroupSection_nativeAdInsertionLocation;
  v4 = sub_219BF02C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_2193AD530()
{
  sub_2193AD458();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MySportsTopicTagFeedGroupSection(uint64_t a1)
{
  result = qword_280EA5CE8;
  if (!qword_280EA5CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2193AD5DC(uint64_t a1)
{
  result = sub_219BF1934();
  if (v2 <= 0x3F)
  {
    result = sub_219BF02C4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2193AD70C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AudioFeedTrack(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = type metadata accessor for AudioState(0);
  v8 = *(v1 + *(result + 20));
  v9 = *(v8 + 16);
  if (v9)
  {
    v15 = a1;
    v10 = 0;
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v10 < *(v8 + 16))
    {
      sub_218736218(v11 + *(v4 + 72) * v10, v6, type metadata accessor for AudioFeedTrack);
      v12 = *v6;
      if (([*v6 respondsToSelector_] & 1) != 0 && objc_msgSend(v12, sel_role) == 8)
      {
        a1 = v15;
        sub_21872D0AC(v6, v15, type metadata accessor for AudioFeedTrack);
        v13 = 0;
        return (*(v4 + 56))(a1, v13, 1, v3);
      }

      ++v10;
      result = sub_218736408(v6, type metadata accessor for AudioFeedTrack);
      if (v9 == v10)
      {
        v13 = 1;
        a1 = v15;
        return (*(v4 + 56))(a1, v13, 1, v3);
      }
    }

    __break(1u);
  }

  else
  {
    v13 = 1;
    return (*(v4 + 56))(a1, v13, 1, v3);
  }

  return result;
}

uint64_t sub_2193AD8EC@<X0>(uint64_t *a1@<X8>)
{
  v21 = a1;
  sub_2193ADE28(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729E44(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C12A40;
  strcpy((inited + 32), "topOfFeedTrack");
  *(inited + 47) = -18;
  sub_2187335C8(0);
  *(inited + 72) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_218736218(v1, boxed_opaque_existential_1, sub_2187335C8);
  *(inited + 80) = 0x636172546F726568;
  *(inited + 88) = 0xEA0000000000736BLL;
  v8 = type metadata accessor for AudioState(0);
  v9 = *(v1 + v8[5]);
  sub_218729E44(0, &qword_280E8F360, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83940]);
  v11 = v10;
  *(inited + 96) = v9;
  *(inited + 120) = v10;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x8000000219D1BDA0;
  v12 = v8[6];
  *(inited + 168) = type metadata accessor for AudioState.UpNextTrackData(0);
  v13 = __swift_allocate_boxed_opaque_existential_1((inited + 144));
  sub_218736218(v1 + v12, v13, type metadata accessor for AudioState.UpNextTrackData);
  *(inited + 176) = 0x6574736567677573;
  *(inited + 184) = 0xEF736B6361725464;
  *(inited + 192) = *(v1 + v8[7]);
  *(inited + 216) = v11;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = 0x8000000219D1BDC0;
  *(inited + 240) = *(v1 + v8[8]);
  *(inited + 264) = v11;
  strcpy((inited + 272), "expirationDate");
  *(inited + 287) = -18;

  sub_219BDBDF4();
  v14 = sub_219BDBE34();
  (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  v15 = sub_219BDBB94();
  v17 = v16;
  sub_218736408(v4, sub_2193ADE28);
  *(inited + 312) = MEMORY[0x277D837D0];
  *(inited + 288) = v15;
  *(inited + 296) = v17;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2188317B0();
  swift_arrayDestroy();
  sub_2193AE6C4(0);
  v18 = v21;
  v21[3] = v19;
  v18[4] = sub_2193ADDE0(&qword_280EE7A58, sub_2193AE6C4, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(v18);
  return sub_219BE2334();
}

uint64_t sub_2193ADCC8(uint64_t a1)
{
  sub_2193ADDE0(&qword_280EDFFA8, type metadata accessor for AudioState, &unk_219C76B34);

  return sub_219BE2324();
}

uint64_t sub_2193ADD7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedTrack(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2193ADDE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2193ADE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedTrack(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187335C8(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218EE3174(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_218736218(a1, v13, sub_2187335C8);
  sub_218736218(a2, &v13[v15], sub_2187335C8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_218736218(v13, v10, sub_2187335C8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v34 = a2;
      sub_21872D0AC(&v13[v15], v7, type metadata accessor for AudioFeedTrack);
      v18 = [*v10 identifier];
      v19 = sub_219BF5414();
      v21 = v20;

      v22 = [*v7 identifier];
      v23 = sub_219BF5414();
      v25 = v24;

      if (v19 == v23 && v21 == v25)
      {

        a2 = v34;
      }

      else
      {
        v27 = sub_219BF78F4();

        a2 = v34;
        if ((v27 & 1) == 0)
        {
          sub_218736408(v7, type metadata accessor for AudioFeedTrack);
          sub_218736408(v10, type metadata accessor for AudioFeedTrack);
          v17 = sub_2187335C8;
          goto LABEL_7;
        }
      }

      v29 = sub_2198DA058(v10 + *(v4 + 32), v7 + *(v4 + 32), v28);
      sub_218736408(v7, type metadata accessor for AudioFeedTrack);
      sub_218736408(v10, type metadata accessor for AudioFeedTrack);
      sub_218736408(v13, sub_2187335C8);
      if (v29)
      {
        goto LABEL_16;
      }

LABEL_22:
      v31 = 0;
      return v31 & 1;
    }

    sub_218736408(v10, type metadata accessor for AudioFeedTrack);
LABEL_6:
    v17 = sub_218EE3174;
LABEL_7:
    sub_218736408(v13, v17);
    goto LABEL_22;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_218736408(v13, sub_2187335C8);
LABEL_16:
  v30 = type metadata accessor for AudioState(0);
  if ((sub_21941AA94(*(a1 + v30[5]), *(a2 + v30[5])) & 1) == 0 || (sub_2193AE2B8(a1 + v30[6], a2 + v30[6]) & 1) == 0 || (sub_21941AA94(*(a1 + v30[7]), *(a2 + v30[7])) & 1) == 0 || (sub_21941AA94(*(a1 + v30[8]), *(a2 + v30[8])) & 1) == 0 || (sub_219BDBC94() & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_21931D8CC(*(a1 + v30[10]), *(a2 + v30[10]));
  return v31 & 1;
}

uint64_t sub_2193AE2B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  TrackData = type metadata accessor for AudioState.UpNextTrackData(0);
  MEMORY[0x28223BE20](TrackData);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v35 - v11);
  sub_2193AE6F8(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 56);
  sub_218736218(a1, v15, type metadata accessor for AudioState.UpNextTrackData);
  sub_218736218(a2, &v15[v17], type metadata accessor for AudioState.UpNextTrackData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218736218(v15, v9, type metadata accessor for AudioState.UpNextTrackData);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21872D0AC(&v15[v17], v6, type metadata accessor for AudioFeedTrack);
        v19 = [*v9 identifier];
        v20 = sub_219BF5414();
        v22 = v21;

        v23 = [*v6 identifier];
        v24 = sub_219BF5414();
        v26 = v25;

        if (v20 == v24 && v22 == v26)
        {
        }

        else
        {
          v28 = sub_219BF78F4();

          if ((v28 & 1) == 0)
          {
            sub_218736408(v6, type metadata accessor for AudioFeedTrack);
            sub_218736408(v9, type metadata accessor for AudioFeedTrack);
LABEL_20:
            v32 = 0;
            v31 = type metadata accessor for AudioState.UpNextTrackData;
            goto LABEL_21;
          }
        }

        v33 = sub_2198DB278((v9 + *(v4 + 32)), (v6 + *(v4 + 32)));
        sub_218736408(v6, type metadata accessor for AudioFeedTrack);
        sub_218736408(v9, type metadata accessor for AudioFeedTrack);
        v31 = type metadata accessor for AudioState.UpNextTrackData;
        if ((v33 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      sub_218736408(v9, type metadata accessor for AudioFeedTrack);
    }

    else
    {
      v30 = swift_getEnumCaseMultiPayload();
      v31 = type metadata accessor for AudioState.UpNextTrackData;
      if (v30 == 2)
      {
LABEL_19:
        v32 = 1;
        goto LABEL_21;
      }
    }
  }

  else
  {
    sub_218736218(v15, v12, type metadata accessor for AudioState.UpNextTrackData);
    v29 = *v12;
    if (!swift_getEnumCaseMultiPayload())
    {
      v32 = sub_21941AA94(v29, *&v15[v17]);

      v31 = type metadata accessor for AudioState.UpNextTrackData;
      goto LABEL_21;
    }
  }

  v32 = 0;
  v31 = sub_2193AE6F8;
LABEL_21:
  sub_218736408(v15, v31);
  return v32 & 1;
}

void sub_2193AE718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2193AE788@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_219BF1904();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NewspaperMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193B2A58(v2, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
      v14 = MEMORY[0x277D2E6B8];
      goto LABEL_7;
    case 4u:

      sub_2186F0110(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
      v25 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      goto LABEL_14;
    case 5u:
      v28 = *MEMORY[0x277D2E6A0];
      v29 = sub_219BE0674();
      (*(*(v29 - 8) + 104))(a1, v28, v29);
      v23 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      return sub_2193B4600(v13, v23);
    case 6u:
    case 8u:
    case 9u:
    case 0xBu:
      v14 = MEMORY[0x277D2E6A8];
      goto LABEL_7;
    case 7u:

      sub_2186F0110(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
      v17 = *(v16 + 48);
      v18 = *MEMORY[0x277D2E6B0];
      v19 = sub_219BE0674();
      (*(*(v19 - 8) + 104))(a1, v18, v19);
      return sub_2193B4600(&v13[v17], type metadata accessor for PaywallMagazineFeedGroup);
    case 0xAu:
      v14 = MEMORY[0x277D2E6B0];
LABEL_7:
      v21 = *v14;
      v22 = sub_219BE0674();
      (*(*(v22 - 8) + 104))(a1, v21, v22);
      v23 = type metadata accessor for MagazineFeedSectionDescriptor;
      return sub_2193B4600(v13, v23);
    case 0xCu:
      sub_2193B2ABC(v13, v10, type metadata accessor for NewspaperMagazineFeedGroup);
      sub_219BED874();
      v26 = sub_219BF1804();
      (*(v5 + 8))(v7, v4);
      if (v26)
      {
        v27 = [v26 subscriptionOrigin];

        sub_2193B4600(v10, type metadata accessor for NewspaperMagazineFeedGroup);
        if (!v27)
        {
          v15 = MEMORY[0x277D2E6A0];
          goto LABEL_19;
        }
      }

      else
      {
        sub_2193B4600(v10, type metadata accessor for NewspaperMagazineFeedGroup);
      }

      v15 = MEMORY[0x277D2E6A8];
LABEL_19:
      v30 = *v15;
      v31 = sub_219BE0674();
      return (*(*(v31 - 8) + 104))(a1, v30, v31);
    case 0xDu:
    case 0xEu:
      sub_2193B4600(v13, type metadata accessor for MagazineFeedSectionDescriptor);
      v15 = MEMORY[0x277D2E6B8];
      goto LABEL_19;
    case 0xFu:
      goto LABEL_15;
    default:

      sub_2186F0110(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
      v25 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_14:
      sub_2193B4600(&v13[*(v24 + 48)], v25);
LABEL_15:
      v15 = MEMORY[0x277D2E6C0];
      goto LABEL_19;
  }
}

uint64_t sub_2193AEC54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193B2A58(v2, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2193B2ABC(v6, a1, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v8 = type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_18;
    case 2u:
      sub_2193B2ABC(v6, a1, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v8 = type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_18;
    case 3u:
      sub_2193B2ABC(v6, a1, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v8 = type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_18;
    case 4u:

      sub_2186F0110(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
      sub_2193B2ABC(&v6[*(v9 + 48)], a1, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      v8 = type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_18;
    case 5u:
      sub_2193B2ABC(v6, a1, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v8 = type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_18;
    case 6u:
      sub_2193B2ABC(v6, a1, type metadata accessor for NewIssueMagazineFeedGroup);
      v8 = type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_18;
    case 7u:

      sub_2186F0110(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
      sub_2193B2ABC(&v6[*(v12 + 48)], a1, type metadata accessor for PaywallMagazineFeedGroup);
      v8 = type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_18;
    case 8u:
      sub_2193B2ABC(v6, a1, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v8 = type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_18;
    case 9u:
      sub_2193B2ABC(v6, a1, type metadata accessor for TopicMagazineFeedGroup);
      v8 = type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_18;
    case 0xAu:
      sub_2193B2ABC(v6, a1, type metadata accessor for TrendingMagazineFeedGroup);
      v8 = type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_18;
    case 0xBu:
      sub_2193B2ABC(v6, a1, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v8 = type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_18;
    case 0xCu:
      sub_2193B2ABC(v6, a1, type metadata accessor for NewspaperMagazineFeedGroup);
      v8 = type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_18;
    case 0xDu:
      v13 = type metadata accessor for MagazineFeedGroup(0);
      (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
      return sub_2193B4600(v6, type metadata accessor for MagazineFeedSectionDescriptor);
    case 0xEu:
      sub_2193B2ABC(v6, a1, type metadata accessor for CuratedMagazineFeedGroup);
      v8 = type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_18;
    case 0xFu:
      v10 = type metadata accessor for MagazineFeedGroup(0);
      return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    default:

      sub_2186F0110(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
      sub_2193B2ABC(&v6[*(v7 + 48)], a1, type metadata accessor for CategoriesMagazineFeedGroup);
      v8 = type metadata accessor for MagazineFeedGroup(0);
LABEL_18:
      swift_storeEnumTagMultiPayload();
      return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
  }
}

uint64_t sub_2193AF1CC()
{
  v57 = type metadata accessor for CuratedMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v57);
  v56 = &v47 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for NewspaperMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v1 - 8);
  v55 = (&v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_219BED8D4();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BestOfBundleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TrendingMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for TopicMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v49);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecommendedIssuesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v47 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = (&v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v27);
  v29 = (&v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2193B2A58(v58, v29);
  v30 = 7364967;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2193B2ABC(v29, v26, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v30 = sub_219BED784();
      v39 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      v40 = v26;
      goto LABEL_19;
    case 2u:
      sub_2193B2ABC(v29, v23, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v30 = sub_219BED784();
      v38 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_14;
    case 3u:
      sub_2193B2ABC(v29, v20, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v30 = sub_219BED784();
      v39 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      v40 = v20;
      goto LABEL_19;
    case 4u:
      v30 = *v29;
      sub_2186F0110(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
      v32 = *(v42 + 48);
      v33 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      goto LABEL_18;
    case 5u:
      sub_2193B2ABC(v29, v17, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v30 = *v17;

      v39 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      v40 = v17;
      goto LABEL_19;
    case 6u:
      sub_2193B2ABC(v29, v14, type metadata accessor for NewIssueMagazineFeedGroup);
      v30 = sub_219BED784();
      v39 = type metadata accessor for NewIssueMagazineFeedGroup;
      v40 = v14;
      goto LABEL_19;
    case 7u:
      v30 = *v29;
      sub_2186F0110(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
      v32 = *(v45 + 48);
      v33 = type metadata accessor for PaywallMagazineFeedGroup;
      goto LABEL_18;
    case 8u:
      v23 = v47;
      sub_2193B2ABC(v29, v47, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v30 = *v23;

      v38 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
      goto LABEL_14;
    case 9u:
      v43 = v29;
      v44 = v48;
      sub_2193B2ABC(v43, v48, type metadata accessor for TopicMagazineFeedGroup);
      v30 = sub_219BED784();
      v39 = type metadata accessor for TopicMagazineFeedGroup;
      v40 = v44;
      goto LABEL_19;
    case 0xAu:
      v23 = v50;
      sub_2193B2ABC(v29, v50, type metadata accessor for TrendingMagazineFeedGroup);
      v30 = sub_219BED784();
      v38 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_14;
    case 0xBu:
      v23 = v51;
      sub_2193B2ABC(v29, v51, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v30 = sub_219BED784();
      v38 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_14;
    case 0xCu:
      v23 = v55;
      sub_2193B2ABC(v29, v55, type metadata accessor for NewspaperMagazineFeedGroup);
      v30 = sub_219BED784();
      v38 = type metadata accessor for NewspaperMagazineFeedGroup;
LABEL_14:
      v39 = v38;
      v40 = v23;
      goto LABEL_19;
    case 0xDu:
      v34 = v52;
      v35 = v53;
      v36 = v29;
      v37 = v54;
      (*(v53 + 32))(v52, v36, v54);
      v30 = sub_219BED784();
      (*(v35 + 8))(v34, v37);
      return v30;
    case 0xEu:
      v41 = v56;
      sub_2193B2ABC(v29, v56, type metadata accessor for CuratedMagazineFeedGroup);
      v30 = sub_219BED784();
      sub_2193B4600(v41, type metadata accessor for CuratedMagazineFeedGroup);
      return v30;
    case 0xFu:
      return v30;
    default:
      v30 = *v29;
      sub_2186F0110(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
      v32 = *(v31 + 48);
      v33 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_18:
      v39 = v33;
      v40 = v29 + v32;
LABEL_19:
      sub_2193B4600(v40, v39);
      return v30;
  }
}

uint64_t sub_2193AFACC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for PaywallMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CategoriesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193B2A58(v2, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      v14 = type metadata accessor for MagazineFeedSectionDescriptor;
      goto LABEL_3;
    case 4u:

      sub_2186F0110(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
      v15 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      v16 = &v13[*(v30 + 48)];
      goto LABEL_4;
    case 5u:
      v14 = type metadata accessor for MyMagazinesMagazineFeedGroup;
LABEL_3:
      v15 = v14;
      v16 = v13;
LABEL_4:
      sub_2193B4600(v16, v15);
      goto LABEL_5;
    case 7u:

      sub_2186F0110(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
      v25 = v24;
      sub_2193B2ABC(&v13[*(v24 + 48)], v7, type metadata accessor for PaywallMagazineFeedGroup);
      v26 = *(v25 + 48);
      v27 = v7[1];
      v33 = *v7;
      v34 = v27;

      MEMORY[0x21CECC330](45, 0xE100000000000000);
      v32 = a1;
      v28 = sub_219BF7894();
      MEMORY[0x21CECC330](v28);

      v29 = v34;
      *a2 = v33;
      a2[1] = v29;
      sub_2193B2ABC(v7, a2 + v26, type metadata accessor for PaywallMagazineFeedGroup);
      return swift_storeEnumTagMultiPayload();
    case 0xFu:
LABEL_5:
      result = sub_2193B2A58(v2, a2);
      break;
    default:

      sub_2186F0110(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
      v19 = v18;
      sub_2193B2ABC(&v13[*(v18 + 48)], v10, type metadata accessor for CategoriesMagazineFeedGroup);
      v20 = *(v19 + 48);
      v21 = v10[1];
      v33 = *v10;
      v34 = v21;

      MEMORY[0x21CECC330](45, 0xE100000000000000);
      v32 = a1;
      v22 = sub_219BF7894();
      MEMORY[0x21CECC330](v22);

      v23 = v34;
      *a2 = v33;
      a2[1] = v23;
      sub_2193B2ABC(v10, a2 + v20, type metadata accessor for CategoriesMagazineFeedGroup);
      result = swift_storeEnumTagMultiPayload();
      break;
  }

  return result;
}

uint64_t sub_2193AFE70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193B2A58(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = MEMORY[0x277D31EA0];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 3:
    case 9:
    case 11:
      sub_2193B4600(v6, type metadata accessor for MagazineFeedSectionDescriptor);
      v8 = MEMORY[0x277D31E98];
      goto LABEL_11;
    case 2:
    case 6:
    case 8:
    case 10:
    case 12:
    case 13:
    case 14:
      v9 = type metadata accessor for MagazineFeedSectionDescriptor;
      goto LABEL_3;
    case 4:

      sub_2186F0110(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
      v13 = *(v15 + 48);
      v14 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      goto LABEL_9;
    case 5:
      v9 = type metadata accessor for MyMagazinesMagazineFeedGroup;
LABEL_3:
      v10 = v9;
      v11 = v6;
      goto LABEL_10;
    case 7:

      sub_2186F0110(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
      v13 = *(v16 + 48);
      v14 = type metadata accessor for PaywallMagazineFeedGroup;
      goto LABEL_9;
    case 15:
      goto LABEL_11;
    default:

      sub_2186F0110(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
      v13 = *(v12 + 48);
      v14 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_9:
      v10 = v14;
      v11 = &v6[v13];
LABEL_10:
      sub_2193B4600(v11, v10);
      v8 = MEMORY[0x277D31EA0];
LABEL_11:
      v17 = *v8;
      v18 = sub_219BEDDC4();
      return (*(*(v18 - 8) + 104))(a1, v17, v18);
  }
}

uint64_t sub_2193B00BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193B2A58(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_2186F0110(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
          v13 = *(v12 + 48);
          v14 = *MEMORY[0x277D33148];
          v15 = sub_219BF10E4();
          (*(*(v15 - 8) + 104))(a1, v14, v15);
          return sub_2193B4600(&v6[v13], type metadata accessor for InlineCategoriesMagazineFeedGroup);
        }

        v20 = type metadata accessor for MyMagazinesMagazineFeedGroup;
        v21 = v6;
        goto LABEL_16;
      }

      if (EnumCaseMultiPayload != 6)
      {

        sub_2186F0110(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
        v9 = *(v19 + 48);
        v10 = type metadata accessor for PaywallMagazineFeedGroup;
        goto LABEL_14;
      }
    }

    else if ((EnumCaseMultiPayload - 1) >= 3)
    {

      sub_2186F0110(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
      v9 = *(v8 + 48);
      v10 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_14:
      v20 = v10;
      v21 = &v6[v9];
LABEL_16:
      sub_2193B4600(v21, v20);
      v11 = MEMORY[0x277D33188];
      goto LABEL_18;
    }

    goto LABEL_6;
  }

  if ((EnumCaseMultiPayload - 9) < 6)
  {
LABEL_6:
    sub_2193B4600(v6, type metadata accessor for MagazineFeedSectionDescriptor);
    v11 = MEMORY[0x277D33190];
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v17 = *MEMORY[0x277D33170];
    v18 = sub_219BF10E4();
    (*(*(v18 - 8) + 104))(a1, v17, v18);
    return sub_2193B4600(v6, type metadata accessor for MagazineFeedSectionDescriptor);
  }

  v11 = MEMORY[0x277D33180];
LABEL_18:
  v22 = *v11;
  v23 = sub_219BF10E4();
  return (*(*(v23 - 8) + 104))(a1, v22, v23);
}

uint64_t sub_2193B03D8@<X0>(uint64_t *a1@<X8>)
{
  v76 = a1;
  v73 = type metadata accessor for CuratedMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v73);
  v74 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for NewspaperMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v71);
  v72 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BED8D4();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x28223BE20](v3);
  v68 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for BestOfBundleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v66);
  v67 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for TrendingMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v64);
  v65 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for TopicMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v62);
  v63 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for RecommendedIssuesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v59);
  v61 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for PaywallMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v58);
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v56);
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v53);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for InlineCategoriesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v52);
  v54 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CategoriesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193B2A58(v75, v27);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v34 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      sub_2193B2ABC(v27, v21, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v45 = v76;
      v76[3] = v19;
      v45[4] = sub_2193B2B24(&qword_280EA6AE0, type metadata accessor for FeaturedArticleMagazineFeedGroup, &unk_219CC5114);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
      v32 = v21;
      goto LABEL_19;
    case 2:
      v34 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      sub_2193B2ABC(v27, v18, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v41 = v76;
      v76[3] = v16;
      v41[4] = sub_2193B2B24(&qword_280EACF58, type metadata accessor for FeaturedIssueMagazineFeedGroup, &unk_219C25810);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
      v32 = v18;
      goto LABEL_19;
    case 3:
      v34 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      sub_2193B2ABC(v27, v15, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v43 = v76;
      v76[3] = v13;
      v43[4] = sub_2193B2B24(&qword_280E99A68, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup, &unk_219CC0DF8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
      v32 = v15;
      goto LABEL_19;
    case 4:

      sub_2186F0110(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
      v34 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      v35 = v54;
      sub_2193B2ABC(&v27[*(v40 + 48)], v54, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      v36 = v76;
      v76[3] = v52;
      v37 = &qword_280EA3558;
      v38 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      v39 = &unk_219CC1864;
      goto LABEL_18;
    case 5:
      v34 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      v35 = v55;
      sub_2193B2ABC(v27, v55, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v36 = v76;
      v76[3] = v53;
      v37 = &qword_27CC1FF80;
      v38 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      v39 = &unk_219CACEC8;
      goto LABEL_18;
    case 6:
      v34 = type metadata accessor for NewIssueMagazineFeedGroup;
      v35 = v57;
      sub_2193B2ABC(v27, v57, type metadata accessor for NewIssueMagazineFeedGroup);
      v36 = v76;
      v76[3] = v56;
      v37 = &qword_27CC10EC0;
      v38 = type metadata accessor for NewIssueMagazineFeedGroup;
      v39 = &unk_219C38AEC;
      goto LABEL_18;
    case 7:

      sub_2186F0110(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
      v34 = type metadata accessor for PaywallMagazineFeedGroup;
      v35 = v60;
      sub_2193B2ABC(&v27[*(v44 + 48)], v60, type metadata accessor for PaywallMagazineFeedGroup);
      v36 = v76;
      v76[3] = v58;
      v37 = &qword_280EC0D58;
      v38 = type metadata accessor for PaywallMagazineFeedGroup;
      v39 = &unk_219C7AA0C;
      goto LABEL_18;
    case 8:
      v34 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
      v35 = v61;
      sub_2193B2ABC(v27, v61, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v36 = v76;
      v76[3] = v59;
      v37 = &qword_280E9F628;
      v38 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
      v39 = &unk_219C8BD24;
      goto LABEL_18;
    case 9:
      v34 = type metadata accessor for TopicMagazineFeedGroup;
      v35 = v63;
      sub_2193B2ABC(v27, v63, type metadata accessor for TopicMagazineFeedGroup);
      v36 = v76;
      v76[3] = v62;
      v37 = &qword_280EC6338;
      v38 = type metadata accessor for TopicMagazineFeedGroup;
      v39 = &unk_219C9DE18;
      goto LABEL_18;
    case 10:
      v34 = type metadata accessor for TrendingMagazineFeedGroup;
      v35 = v65;
      sub_2193B2ABC(v27, v65, type metadata accessor for TrendingMagazineFeedGroup);
      v36 = v76;
      v76[3] = v64;
      v37 = &qword_280EBCA88;
      v38 = type metadata accessor for TrendingMagazineFeedGroup;
      v39 = &unk_219CBF8AC;
      goto LABEL_18;
    case 11:
      v34 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      v35 = v67;
      sub_2193B2ABC(v27, v67, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v36 = v76;
      v76[3] = v66;
      v37 = &qword_280EB1318;
      v38 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      v39 = &unk_219C760E0;
      goto LABEL_18;
    case 12:
      v34 = type metadata accessor for NewspaperMagazineFeedGroup;
      v35 = v72;
      sub_2193B2ABC(v27, v72, type metadata accessor for NewspaperMagazineFeedGroup);
      v36 = v76;
      v76[3] = v71;
      v37 = &unk_280EBB0C0;
      v38 = type metadata accessor for NewspaperMagazineFeedGroup;
      v39 = &unk_219CAE2D0;
      goto LABEL_18;
    case 13:
      v46 = v68;
      v47 = *(v69 + 32);
      v48 = v70;
      v47(v68, v27, v70);
      v49 = MEMORY[0x277D31C48];
      v50 = v76;
      v76[3] = v48;
      v50[4] = v49;
      v51 = __swift_allocate_boxed_opaque_existential_1(v50);
      return (v47)(v51, v46, v48);
    case 14:
      v34 = type metadata accessor for CuratedMagazineFeedGroup;
      v35 = v74;
      sub_2193B2ABC(v27, v74, type metadata accessor for CuratedMagazineFeedGroup);
      v36 = v76;
      v76[3] = v73;
      v37 = &unk_280EC24F0;
      v38 = type metadata accessor for CuratedMagazineFeedGroup;
      v39 = &unk_219CCF8DC;
LABEL_18:
      v36[4] = sub_2193B2B24(v37, v38, v39);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
      v32 = v35;
LABEL_19:
      v33 = v34;
      return sub_2193B2ABC(v32, boxed_opaque_existential_1, v33);
    case 15:
      v42 = v76;
      v76[4] = 0;
      *v42 = 0u;
      *(v42 + 1) = 0u;
      return result;
    default:

      sub_2186F0110(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
      sub_2193B2ABC(&v27[*(v29 + 48)], v24, type metadata accessor for CategoriesMagazineFeedGroup);
      v30 = v76;
      v76[3] = v22;
      v30[4] = sub_2193B2B24(&qword_27CC0F1A8, type metadata accessor for CategoriesMagazineFeedGroup, &unk_219C23CDC);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
      v32 = v24;
      v33 = type metadata accessor for CategoriesMagazineFeedGroup;
      return sub_2193B2ABC(v32, boxed_opaque_existential_1, v33);
  }
}

uint64_t sub_2193B1094()
{
  v1 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193B2A58(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
      v6 = type metadata accessor for MagazineFeedSectionDescriptor;
      goto LABEL_3;
    case 4:

      sub_2186F0110(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
      v10 = *(v13 + 48);
      v11 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      goto LABEL_10;
    case 5:
      v6 = type metadata accessor for MyMagazinesMagazineFeedGroup;
LABEL_3:
      v7 = v6;
      v8 = v3;
      goto LABEL_4;
    case 7:

      sub_2186F0110(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
      v7 = type metadata accessor for PaywallMagazineFeedGroup;
      v8 = &v3[*(v12 + 48)];
LABEL_4:
      sub_2193B4600(v8, v7);
      result = 1;
      break;
    case 15:
      return result;
    default:

      sub_2186F0110(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
      v10 = *(v9 + 48);
      v11 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_10:
      sub_2193B4600(&v3[v10], v11);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_2193B127C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193B2A58(v2, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = MEMORY[0x277D2F6E0];
      goto LABEL_18;
    case 2u:
      v8 = MEMORY[0x277D2F648];
      goto LABEL_18;
    case 3u:
      v8 = MEMORY[0x277D2F7A8];
      goto LABEL_18;
    case 4u:

      sub_2186F0110(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
      v10 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      goto LABEL_12;
    case 5u:
      v14 = *MEMORY[0x277D2F5E8];
      v15 = sub_219BE16E4();
      (*(*(v15 - 8) + 104))(a1, v14, v15);
      v16 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      goto LABEL_19;
    case 6u:
      v8 = MEMORY[0x277D2F840];
      goto LABEL_18;
    case 7u:

      sub_2186F0110(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
      v22 = *(v21 + 48);
      v23 = *MEMORY[0x277D2F808];
      v24 = sub_219BE16E4();
      (*(*(v24 - 8) + 104))(a1, v23, v24);
      v19 = type metadata accessor for PaywallMagazineFeedGroup;
      v20 = &v6[v22];
      return sub_2193B4600(v20, v19);
    case 8u:
      v8 = MEMORY[0x277D2F778];
      goto LABEL_18;
    case 9u:
      v8 = MEMORY[0x277D2F7E0];
      goto LABEL_18;
    case 0xAu:
      v8 = MEMORY[0x277D2F848];
      goto LABEL_18;
    case 0xBu:
      v8 = MEMORY[0x277D2F600];
      goto LABEL_18;
    case 0xCu:
      v8 = MEMORY[0x277D2F858];
LABEL_18:
      v17 = *v8;
      v18 = sub_219BE16E4();
      (*(*(v18 - 8) + 104))(a1, v17, v18);
      v16 = type metadata accessor for MagazineFeedSectionDescriptor;
LABEL_19:
      v19 = v16;
      v20 = v6;
      return sub_2193B4600(v20, v19);
    case 0xDu:
    case 0xEu:
      sub_2193B4600(v6, type metadata accessor for MagazineFeedSectionDescriptor);
      v7 = MEMORY[0x277D2F800];
      goto LABEL_14;
    case 0xFu:
      goto LABEL_13;
    default:

      sub_2186F0110(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
      v10 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_12:
      sub_2193B4600(&v6[*(v9 + 48)], v10);
LABEL_13:
      v7 = MEMORY[0x277D2F818];
LABEL_14:
      v11 = *v7;
      v12 = sub_219BE16E4();
      return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }
}

uint64_t sub_2193B1600()
{
  v38 = type metadata accessor for NewspaperMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v38);
  v37 = &v34 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v35);
  v36 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for CuratedMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED8D4();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF1904();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TopicMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193B2A58(v41, v19);
  v20 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 3u:
    case 8u:
    case 0xAu:
    case 0xBu:
      v21 = type metadata accessor for MagazineFeedSectionDescriptor;
      goto LABEL_3;
    case 2u:
      sub_2193B2ABC(v19, v10, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      sub_219BED874();
      v20 = sub_219BF1844();
      (*(v39 + 8))(v13, v40);
      v25 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_12;
    case 4u:

      sub_2186F0110(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
      v27 = *(v26 + 48);
      v28 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      goto LABEL_14;
    case 5u:
      v21 = type metadata accessor for MyMagazinesMagazineFeedGroup;
LABEL_3:
      v22 = v21;
      v23 = v19;
      goto LABEL_15;
    case 6u:
      v10 = v36;
      sub_2193B2ABC(v19, v36, type metadata accessor for NewIssueMagazineFeedGroup);
      sub_219BED874();
      v20 = sub_219BF1844();
      (*(v39 + 8))(v13, v40);
      v25 = type metadata accessor for NewIssueMagazineFeedGroup;
LABEL_12:
      sub_2193B4600(v10, v25);
      return v20;
    case 7u:

      sub_2186F0110(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
      v27 = *(v30 + 48);
      v28 = type metadata accessor for PaywallMagazineFeedGroup;
      goto LABEL_14;
    case 9u:
      sub_2193B2ABC(v19, v16, type metadata accessor for TopicMagazineFeedGroup);
      sub_219BED874();
      v20 = sub_219BF1844();
      (*(v39 + 8))(v13, v40);
      sub_2193B4600(v16, type metadata accessor for TopicMagazineFeedGroup);
      return v20;
    case 0xCu:
      v32 = v19;
      v33 = v37;
      sub_2193B2ABC(v32, v37, type metadata accessor for NewspaperMagazineFeedGroup);
      v20 = *(v33 + *(v38 + 20));
      swift_unknownObjectRetain();
      sub_2193B4600(v33, type metadata accessor for NewspaperMagazineFeedGroup);
      return v20;
    case 0xDu:
      v24 = v34;
      (*(v34 + 32))(v7, v19, v5);
      sub_219BED874();
      v20 = sub_219BF1844();
      (*(v39 + 8))(v13, v40);
      (*(v24 + 8))(v7, v5);
      return v20;
    case 0xEu:
      sub_2193B2ABC(v19, v4, type metadata accessor for CuratedMagazineFeedGroup);
      sub_219BED874();
      v20 = sub_219BF1844();
      (*(v39 + 8))(v13, v40);
      sub_2193B4600(v4, type metadata accessor for CuratedMagazineFeedGroup);
      return v20;
    case 0xFu:
      return v20;
    default:

      sub_2186F0110(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
      v27 = *(v29 + 48);
      v28 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_14:
      v22 = v28;
      v23 = &v19[v27];
LABEL_15:
      sub_2193B4600(v23, v22);
      return 0;
  }
}

uint64_t sub_2193B1CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratedMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193B2A58(v2, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
      v13 = type metadata accessor for MagazineFeedSectionDescriptor;
      v14 = v12;
      goto LABEL_8;
    case 4u:

      sub_2186F0110(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
      v16 = *(v18 + 48);
      v17 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      goto LABEL_7;
    case 5u:
      sub_2193B2ABC(v12, v6, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v19 = *(v4 + 64);
      v20 = sub_219BEF8A4();
      (*(*(v20 - 8) + 16))(a1, &v6[v19], v20);
      v21 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      v22 = v6;
      return sub_2193B4600(v22, v21);
    case 7u:

      sub_2186F0110(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
      v16 = *(v15 + 48);
      v17 = type metadata accessor for PaywallMagazineFeedGroup;
      goto LABEL_7;
    case 0xEu:
      sub_2193B2ABC(v12, v9, type metadata accessor for CuratedMagazineFeedGroup);
      v27 = *(v7 + 24);
      v28 = sub_219BEF8A4();
      (*(*(v28 - 8) + 16))(a1, &v9[v27], v28);
      v21 = type metadata accessor for CuratedMagazineFeedGroup;
      v22 = v9;
      return sub_2193B4600(v22, v21);
    case 0xFu:
      goto LABEL_9;
    default:

      sub_2186F0110(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
      v16 = *(v23 + 48);
      v17 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_7:
      v13 = v17;
      v14 = &v12[v16];
LABEL_8:
      sub_2193B4600(v14, v13);
LABEL_9:
      v24 = *MEMORY[0x277D32768];
      v25 = sub_219BEF8A4();
      return (*(*(v25 - 8) + 104))(a1, v24, v25);
  }
}

double sub_2193B209C@<D0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v1 = sub_219BED8D4();
  v69 = *(v1 - 8);
  v70 = v1;
  MEMORY[0x28223BE20](v1);
  v68 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for CuratedMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v66);
  v67 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for NewspaperMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v64);
  v65 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for BestOfBundleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v62);
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TrendingMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v60);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TopicMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v58);
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193B2A58(v71, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v33 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      sub_2193B2ABC(v22, v19, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v45 = v72;
      v72[3] = v17;
      v45[4] = sub_2193B2B24(&qword_280EA6AB8, type metadata accessor for FeaturedArticleMagazineFeedGroup, &unk_219CC51FC);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
      v42 = v19;
      goto LABEL_18;
    case 2u:
      sub_2193B2ABC(v22, v16, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v47 = v72;
      v72[3] = v14;
      v47[4] = sub_2193B2B24(&qword_27CC0FD88, type metadata accessor for FeaturedIssueMagazineFeedGroup, &unk_219C258A8);
      v48 = __swift_allocate_boxed_opaque_existential_1(v47);
      sub_2193B2ABC(v16, v48, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      return result;
    case 3u:
      v33 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      sub_2193B2ABC(v22, v13, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v40 = v72;
      v72[3] = v11;
      v40[4] = sub_2193B2B24(&qword_27CC10E88, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup, &unk_219CC0E90);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
      v42 = v13;
      goto LABEL_18;
    case 4u:

      sub_2186F0110(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
      v24 = *(v50 + 48);
      v25 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      goto LABEL_20;
    case 5u:
      v44 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      goto LABEL_15;
    case 6u:
      v33 = type metadata accessor for NewIssueMagazineFeedGroup;
      sub_2193B2ABC(v22, v10, type metadata accessor for NewIssueMagazineFeedGroup);
      v49 = v72;
      v72[3] = v8;
      v49[4] = sub_2193B2B24(&qword_27CC10E80, type metadata accessor for NewIssueMagazineFeedGroup, &unk_219C38BD4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
      v42 = v10;
      goto LABEL_18;
    case 7u:

      sub_2186F0110(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
      v24 = *(v55 + 48);
      v25 = type metadata accessor for PaywallMagazineFeedGroup;
      goto LABEL_20;
    case 8u:
      v44 = type metadata accessor for MagazineFeedSectionDescriptor;
LABEL_15:
      v52 = v44;
      v53 = v22;
      goto LABEL_21;
    case 9u:
      v33 = type metadata accessor for TopicMagazineFeedGroup;
      v54 = v22;
      v35 = v59;
      sub_2193B2ABC(v54, v59, type metadata accessor for TopicMagazineFeedGroup);
      v36 = v72;
      v72[3] = v58;
      v37 = &unk_27CC10E78;
      v38 = type metadata accessor for TopicMagazineFeedGroup;
      v39 = &unk_219C9DF00;
      goto LABEL_17;
    case 0xAu:
      v33 = type metadata accessor for TrendingMagazineFeedGroup;
      v34 = v22;
      v35 = v61;
      sub_2193B2ABC(v34, v61, type metadata accessor for TrendingMagazineFeedGroup);
      v36 = v72;
      v72[3] = v60;
      v37 = &qword_280EBCA60;
      v38 = type metadata accessor for TrendingMagazineFeedGroup;
      v39 = &unk_219CBF994;
      goto LABEL_17;
    case 0xBu:
      v33 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      v43 = v22;
      v35 = v63;
      sub_2193B2ABC(v43, v63, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v36 = v72;
      v72[3] = v62;
      v37 = &qword_280EB12F0;
      v38 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      v39 = &unk_219C761C8;
      goto LABEL_17;
    case 0xCu:
      v33 = type metadata accessor for NewspaperMagazineFeedGroup;
      v51 = v22;
      v35 = v65;
      sub_2193B2ABC(v51, v65, type metadata accessor for NewspaperMagazineFeedGroup);
      v36 = v72;
      v72[3] = v64;
      v37 = &unk_280EBB090;
      v38 = type metadata accessor for NewspaperMagazineFeedGroup;
      v39 = &unk_219CAE3B8;
      goto LABEL_17;
    case 0xDu:
      v26 = v68;
      v27 = *(v69 + 32);
      v28 = v22;
      v29 = v70;
      v27(v68, v28, v70);
      v30 = v72;
      v72[3] = v29;
      v30[4] = sub_2193B2B24(&qword_27CC19A88, MEMORY[0x277D31C50], &unk_219C39150);
      v31 = __swift_allocate_boxed_opaque_existential_1(v30);
      v27(v31, v26, v29);
      return result;
    case 0xEu:
      v33 = type metadata accessor for CuratedMagazineFeedGroup;
      v46 = v22;
      v35 = v67;
      sub_2193B2ABC(v46, v67, type metadata accessor for CuratedMagazineFeedGroup);
      v36 = v72;
      v72[3] = v66;
      v37 = &unk_280EC24C8;
      v38 = type metadata accessor for CuratedMagazineFeedGroup;
      v39 = &unk_219CCF9C4;
LABEL_17:
      v36[4] = sub_2193B2B24(v37, v38, v39);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
      v42 = v35;
LABEL_18:
      sub_2193B2ABC(v42, boxed_opaque_existential_1, v33);
      return result;
    case 0xFu:
      goto LABEL_22;
    default:

      sub_2186F0110(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
      v24 = *(v23 + 48);
      v25 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_20:
      v52 = v25;
      v53 = &v22[v24];
LABEL_21:
      sub_2193B4600(v53, v52);
LABEL_22:
      v56 = v72;
      v72[4] = 0;
      result = 0.0;
      *v56 = 0u;
      *(v56 + 1) = 0u;
      return result;
  }
}

uint64_t sub_2193B2A58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2193B2ABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2193B2B24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2193B2B6C(uint64_t *a1, uint64_t a2)
{
  v239 = a2;
  v240 = a1;
  v227 = type metadata accessor for CuratedMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v227);
  v228 = &v206 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BED8D4();
  v237 = *(v3 - 8);
  v238 = v3;
  MEMORY[0x28223BE20](v3);
  v225 = &v206 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NewspaperMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v222 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BestOfBundleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v226 = &v206 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TrendingMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v9 - 8);
  v224 = &v206 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for TopicMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v218);
  v220 = &v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecommendedIssuesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v12 - 8);
  v219 = (&v206 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for PaywallMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v14 - 8);
  v221 = (&v206 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v223 = (&v206 - v17);
  v213 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v213);
  v215 = &v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v19 - 8);
  v214 = (&v206 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for InlineCategoriesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v21 - 8);
  v216 = (&v206 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v217 = (&v206 - v24);
  v210 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v210);
  v212 = &v206 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v26 - 8);
  v211 = &v206 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v208);
  v209 = &v206 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for CategoriesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v29 - 8);
  v206 = (&v206 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v207 = (&v206 - v32);
  v33 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v33);
  v236 = (&v206 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35);
  v230 = &v206 - v36;
  MEMORY[0x28223BE20](v37);
  v229 = (&v206 - v38);
  MEMORY[0x28223BE20](v39);
  v235 = &v206 - v40;
  MEMORY[0x28223BE20](v41);
  v234 = &v206 - v42;
  MEMORY[0x28223BE20](v43);
  v233 = (&v206 - v44);
  MEMORY[0x28223BE20](v45);
  v232 = (&v206 - v46);
  MEMORY[0x28223BE20](v47);
  v49 = (&v206 - v48);
  MEMORY[0x28223BE20](v50);
  v231 = (&v206 - v51);
  MEMORY[0x28223BE20](v52);
  v54 = (&v206 - v53);
  MEMORY[0x28223BE20](v55);
  v57 = (&v206 - v56);
  MEMORY[0x28223BE20](v58);
  v60 = (&v206 - v59);
  MEMORY[0x28223BE20](v61);
  v63 = (&v206 - v62);
  MEMORY[0x28223BE20](v64);
  v66 = &v206 - v65;
  MEMORY[0x28223BE20](v67);
  v69 = (&v206 - v68);
  sub_2193B459C(0);
  MEMORY[0x28223BE20](v70 - 8);
  v72 = &v206 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = &v72[*(v73 + 56)];
  sub_2193B2A58(v240, v72);
  v240 = v74;
  sub_2193B2A58(v239, v74);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v80 = v72;
      sub_2193B2A58(v72, v66);
      v141 = v240;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v180 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
        v181 = v66;
        goto LABEL_81;
      }

      v142 = v209;
      sub_2193B2ABC(v141, v209, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v143 = sub_219BED784();
      v145 = v144;
      if (v143 == sub_219BED784() && v145 == v146)
      {

        v108 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
        sub_2193B4600(v142, type metadata accessor for FeaturedArticleMagazineFeedGroup);
        v131 = v66;
        goto LABEL_115;
      }

      v186 = sub_219BF78F4();

      v108 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      sub_2193B4600(v142, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v192 = v66;
      goto LABEL_104;
    case 2u:
      v80 = v72;
      sub_2193B2A58(v72, v63);
      v115 = v240;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v180 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
        v181 = v63;
        goto LABEL_81;
      }

      v116 = v211;
      sub_2193B2ABC(v115, v211, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v117 = sub_219BED784();
      v119 = v118;
      if (v117 == sub_219BED784() && v119 == v120)
      {

        v121 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
        v108 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
        v122 = v116;
        goto LABEL_114;
      }

      v188 = sub_219BF78F4();

      v108 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      sub_2193B4600(v116, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v191 = v63;
      goto LABEL_107;
    case 3u:
      v80 = v72;
      sub_2193B2A58(v72, v60);
      v125 = v240;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v179 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
        goto LABEL_80;
      }

      v126 = v212;
      sub_2193B2ABC(v125, v212, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v127 = sub_219BED784();
      v129 = v128;
      if (v127 == sub_219BED784() && v129 == v130)
      {

        v108 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
        sub_2193B4600(v126, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
        v131 = v60;
        goto LABEL_115;
      }

      v186 = sub_219BF78F4();

      v108 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      sub_2193B4600(v126, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v192 = v60;
      goto LABEL_104;
    case 4u:
      v80 = v72;
      sub_2193B2A58(v72, v57);
      v99 = *v57;
      v98 = v57[1];
      sub_2186F0110(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
      v101 = *(v100 + 48);
      v102 = v240;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v177 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
        v178 = v57 + v101;
        goto LABEL_71;
      }

      v104 = *v102;
      v103 = v102[1];
      v105 = v57 + v101;
      v81 = v217;
      sub_2193B2ABC(v105, v217, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      v106 = v102 + v101;
      v107 = v216;
      sub_2193B2ABC(v106, v216, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      if (v99 == v104 && v98 == v103)
      {
      }

      else
      {
        v190 = sub_219BF78F4();

        if ((v190 & 1) == 0)
        {
          v201 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
          sub_2193B4600(v107, type metadata accessor for InlineCategoriesMagazineFeedGroup);
          v202 = v81;
          goto LABEL_125;
        }
      }

      if (*v81 == *v107 && v81[1] == v107[1])
      {
        v88 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
        v108 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
        v164 = v107;
        goto LABEL_51;
      }

      v195 = sub_219BF78F4();
      v196 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      sub_2193B4600(v107, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      v197 = v81;
      goto LABEL_118;
    case 5u:
      v80 = v72;
      sub_2193B2A58(v72, v54);
      sub_2186EBC7C(0);
      v148 = *(v147 + 48);
      v149 = *(v54 + v148);
      v150 = v240;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v180 = type metadata accessor for MyMagazinesMagazineFeedGroup;
        v181 = v54;
        goto LABEL_81;
      }

      v151 = *(v150 + v148);
      v152 = v150;
      v153 = v214;
      sub_2193B2ABC(v152, v214, type metadata accessor for MyMagazinesMagazineFeedGroup);
      if (*v54 == *v153 && v54[1] == v153[1])
      {
        sub_2193B4600(v153, type metadata accessor for MyMagazinesMagazineFeedGroup);
        sub_2193B4600(v54, type metadata accessor for MyMagazinesMagazineFeedGroup);
LABEL_101:
        LOBYTE(v108) = v149 == v151;
        goto LABEL_127;
      }

      v194 = sub_219BF78F4();
      sub_2193B4600(v153, type metadata accessor for MyMagazinesMagazineFeedGroup);
      sub_2193B4600(v54, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v124 = type metadata accessor for MagazineFeedSectionDescriptor;
      if (v194)
      {
        goto LABEL_101;
      }

      LOBYTE(v108) = 0;
      goto LABEL_128;
    case 6u:
      v80 = v72;
      v81 = v231;
      sub_2193B2A58(v72, v231);
      v159 = v240;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v175 = type metadata accessor for NewIssueMagazineFeedGroup;
        goto LABEL_76;
      }

      v83 = v215;
      sub_2193B2ABC(v159, v215, type metadata accessor for NewIssueMagazineFeedGroup);
      v160 = sub_219BED784();
      v162 = v161;
      if (v160 == sub_219BED784() && v162 == v163)
      {

        v88 = type metadata accessor for NewIssueMagazineFeedGroup;
        goto LABEL_50;
      }

      v186 = sub_219BF78F4();

      v187 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_103;
    case 7u:
      v80 = v72;
      sub_2193B2A58(v72, v49);
      v133 = *v49;
      v132 = v49[1];
      sub_2186F0110(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
      v135 = *(v134 + 48);
      v136 = v240;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v177 = type metadata accessor for PaywallMagazineFeedGroup;
        v178 = v49 + v135;
LABEL_71:
        sub_2193B4600(v178, v177);

        goto LABEL_82;
      }

      v138 = *v136;
      v137 = v136[1];
      v63 = v223;
      sub_2193B2ABC(v49 + v135, v223, type metadata accessor for PaywallMagazineFeedGroup);
      v139 = v136 + v135;
      v140 = v221;
      sub_2193B2ABC(v139, v221, type metadata accessor for PaywallMagazineFeedGroup);
      if (v133 == v138 && v132 == v137)
      {
      }

      else
      {
        v193 = sub_219BF78F4();

        if ((v193 & 1) == 0)
        {
          v203 = type metadata accessor for PaywallMagazineFeedGroup;
          v201 = type metadata accessor for PaywallMagazineFeedGroup;
          v204 = v140;
          goto LABEL_124;
        }
      }

      if (*v63 == *v140 && v63[1] == v140[1])
      {
        v121 = type metadata accessor for PaywallMagazineFeedGroup;
        v108 = type metadata accessor for PaywallMagazineFeedGroup;
        v122 = v140;
        goto LABEL_114;
      }

      v195 = sub_219BF78F4();
      v198 = type metadata accessor for PaywallMagazineFeedGroup;
      v196 = type metadata accessor for PaywallMagazineFeedGroup;
      v199 = v140;
      goto LABEL_117;
    case 8u:
      v80 = v72;
      v60 = v232;
      sub_2193B2A58(v72, v232);
      v171 = v240;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v179 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
        goto LABEL_80;
      }

      v172 = v219;
      sub_2193B2ABC(v171, v219, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      if ((*v60 != *v172 || v60[1] != v172[1]) && (sub_219BF78F4() & 1) == 0)
      {
        v201 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
        sub_2193B4600(v172, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
        v202 = v60;
        goto LABEL_125;
      }

      sub_218C0FAB8(v172[8], v60[8]);
      v174 = v173;
      sub_2193B4600(v172, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      sub_2193B4600(v60, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v124 = type metadata accessor for MagazineFeedSectionDescriptor;
      if ((v174 & 1) == 0)
      {
        goto LABEL_126;
      }

LABEL_62:
      LOBYTE(v108) = 1;
      goto LABEL_128;
    case 9u:
      v80 = v72;
      v81 = v233;
      sub_2193B2A58(v72, v233);
      v110 = v240;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v175 = type metadata accessor for TopicMagazineFeedGroup;
        goto LABEL_76;
      }

      v83 = v220;
      sub_2193B2ABC(v110, v220, type metadata accessor for TopicMagazineFeedGroup);
      v111 = sub_219BED784();
      v113 = v112;
      if (v111 == sub_219BED784() && v113 == v114)
      {

        v88 = type metadata accessor for TopicMagazineFeedGroup;
        goto LABEL_50;
      }

      v186 = sub_219BF78F4();

      v187 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_103;
    case 0xAu:
      v80 = v72;
      v165 = v72;
      v90 = v234;
      sub_2193B2A58(v165, v234);
      v166 = v240;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v176 = type metadata accessor for TrendingMagazineFeedGroup;
        goto LABEL_78;
      }

      v92 = v224;
      sub_2193B2ABC(v166, v224, type metadata accessor for TrendingMagazineFeedGroup);
      v167 = sub_219BED784();
      v169 = v168;
      if (v167 == sub_219BED784() && v169 == v170)
      {

        v97 = type metadata accessor for TrendingMagazineFeedGroup;
        goto LABEL_56;
      }

      v188 = sub_219BF78F4();

      v189 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_106;
    case 0xBu:
      v80 = v72;
      v89 = v72;
      v90 = v235;
      sub_2193B2A58(v89, v235);
      v91 = v240;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        v176 = type metadata accessor for BestOfBundleMagazineFeedGroup;
LABEL_78:
        v180 = v176;
        v181 = v90;
        goto LABEL_81;
      }

      v92 = v226;
      sub_2193B2ABC(v91, v226, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v93 = sub_219BED784();
      v95 = v94;
      if (v93 == sub_219BED784() && v95 == v96)
      {

        v97 = type metadata accessor for BestOfBundleMagazineFeedGroup;
LABEL_56:
        v108 = v97;
        sub_2193B4600(v92, v97);
        v131 = v90;
        goto LABEL_115;
      }

      v188 = sub_219BF78F4();

      v189 = type metadata accessor for BestOfBundleMagazineFeedGroup;
LABEL_106:
      v108 = v189;
      sub_2193B4600(v92, v189);
      v191 = v90;
LABEL_107:
      sub_2193B4600(v191, v108);
      LODWORD(v108) = v188 << 31 >> 31;
      goto LABEL_127;
    case 0xCu:
      v80 = v72;
      v60 = v229;
      sub_2193B2A58(v72, v229);
      v108 = v240;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v109 = v222;
        sub_2193B2ABC(v108, v222, type metadata accessor for NewspaperMagazineFeedGroup);
        LOBYTE(v108) = sub_219BED814();
        sub_2193B4600(v109, type metadata accessor for NewspaperMagazineFeedGroup);
        sub_2193B4600(v60, type metadata accessor for NewspaperMagazineFeedGroup);
        goto LABEL_127;
      }

      v179 = type metadata accessor for NewspaperMagazineFeedGroup;
LABEL_80:
      v180 = v179;
      v181 = v60;
      goto LABEL_81;
    case 0xDu:
      v80 = v72;
      v154 = v230;
      sub_2193B2A58(v72, v230);
      v108 = v240;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v156 = v237;
        v155 = v238;
        v157 = v225;
        (*(v237 + 32))(v225, v108, v238);
        LOBYTE(v108) = sub_219BED814();
        v158 = *(v156 + 8);
        v158(v157, v155);
        v158(v154, v155);
        goto LABEL_127;
      }

      (*(v237 + 8))(v154, v238);
      goto LABEL_82;
    case 0xEu:
      v80 = v72;
      v81 = v236;
      sub_2193B2A58(v72, v236);
      v82 = v240;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v175 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_76:
        v180 = v175;
        v181 = v81;
LABEL_81:
        sub_2193B4600(v181, v180);
        goto LABEL_82;
      }

      v83 = v228;
      sub_2193B2ABC(v82, v228, type metadata accessor for CuratedMagazineFeedGroup);
      v84 = sub_219BED784();
      v86 = v85;
      if (v84 == sub_219BED784() && v86 == v87)
      {

        v88 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_50:
        v108 = v88;
        v164 = v83;
LABEL_51:
        sub_2193B4600(v164, v88);
        v131 = v81;
        goto LABEL_115;
      }

      v186 = sub_219BF78F4();

      v187 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_103:
      v108 = v187;
      sub_2193B4600(v83, v187);
      v192 = v81;
LABEL_104:
      sub_2193B4600(v192, v108);
      LODWORD(v108) = v186 << 31 >> 31;
      goto LABEL_127;
    case 0xFu:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v124 = type metadata accessor for MagazineFeedSectionDescriptor;
      v80 = v72;
      if (EnumCaseMultiPayload == 15)
      {
        goto LABEL_62;
      }

      goto LABEL_82;
    default:
      sub_2193B2A58(v72, v69);
      v76 = *v69;
      v75 = v69[1];
      sub_2186F0110(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
      v78 = *(v77 + 48);
      v79 = v240;
      if (!swift_getEnumCaseMultiPayload())
      {
        v183 = *v79;
        v182 = v79[1];
        v63 = v207;
        sub_2193B2ABC(v69 + v78, v207, type metadata accessor for CategoriesMagazineFeedGroup);
        v184 = v79 + v78;
        v185 = v206;
        sub_2193B2ABC(v184, v206, type metadata accessor for CategoriesMagazineFeedGroup);
        if (v76 == v183 && v75 == v182)
        {

          v80 = v72;
        }

        else
        {
          v200 = sub_219BF78F4();

          v80 = v72;
          if ((v200 & 1) == 0)
          {
            v203 = type metadata accessor for CategoriesMagazineFeedGroup;
            v201 = type metadata accessor for CategoriesMagazineFeedGroup;
            v204 = v185;
LABEL_124:
            sub_2193B4600(v204, v203);
            v202 = v63;
LABEL_125:
            sub_2193B4600(v202, v201);
LABEL_126:
            LOBYTE(v108) = 0;
LABEL_127:
            v124 = type metadata accessor for MagazineFeedSectionDescriptor;
            goto LABEL_128;
          }
        }

        if (*v63 == *v185 && v63[1] == v185[1])
        {
          v121 = type metadata accessor for CategoriesMagazineFeedGroup;
          v108 = type metadata accessor for CategoriesMagazineFeedGroup;
          v122 = v185;
LABEL_114:
          sub_2193B4600(v122, v121);
          v131 = v63;
LABEL_115:
          sub_2193B4600(v131, v108);
          LOBYTE(v108) = 1;
        }

        else
        {
          v195 = sub_219BF78F4();
          v198 = type metadata accessor for CategoriesMagazineFeedGroup;
          v196 = type metadata accessor for CategoriesMagazineFeedGroup;
          v199 = v185;
LABEL_117:
          sub_2193B4600(v199, v198);
          v197 = v63;
LABEL_118:
          sub_2193B4600(v197, v196);
          LODWORD(v108) = v195 << 31 >> 31;
        }

        goto LABEL_127;
      }

      sub_2193B4600(v69 + v78, type metadata accessor for CategoriesMagazineFeedGroup);

      v80 = v72;
LABEL_82:
      LOBYTE(v108) = 0;
      v124 = sub_2193B459C;
LABEL_128:
      sub_2193B4600(v80, v124);
      return v108 & 1;
  }
}

void sub_2193B459C(uint64_t a1)
{
  if (!qword_280EB0290[0])
  {
    type metadata accessor for MagazineFeedSectionDescriptor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280EB0290);
    }
  }
}

uint64_t sub_2193B4600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2193B4660(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x5E && *(a1 + 8))
  {
    return (*a1 + 94);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 1) & 0xFFFFFFBF | ((*a1 & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x5D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2193B46BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x5D)
  {
    *result = a2 - 94;
    if (a3 >= 0x5E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x5E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 6) & 1 | (2 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

id sub_2193B4730()
{
  v0 = type metadata accessor for FoodTodayFeedGroup(0);
  MEMORY[0x28223BE20](v0 - 8);
  v173 = &v141 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v2 - 8);
  v172 = &v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v171 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v170 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v169 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v168);
  v167 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v165);
  v166 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TrendingMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v12 - 8);
  v164 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BestOfBundleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v14 - 8);
  v163 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v16 - 8);
  v162 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v160);
  v161 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v158);
  v159 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v20 - 8);
  v157 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v22 - 8);
  v156 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v154);
  v155 = &v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v25 - 8);
  v153 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v27 - 8);
  v152 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v29 - 8);
  v151 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v31 - 8);
  v150 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TrendingTodayFeedGroup(0);
  MEMORY[0x28223BE20](v33 - 8);
  v149 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v35 - 8);
  v148 = &v141 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218855330(0);
  v147 = v37;
  v146 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v145 = &v141 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218855280(0);
  v144 = v39;
  v143 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = &v141 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v42 - 8);
  v142 = &v141 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SuggestionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v141 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v141 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v50 - 8);
  v52 = &v141 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v53 - 8);
  v55 = &v141 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v56);
  v58 = &v141 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v59);
  v61 = &v141 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_219BF1904();
  v63 = *(v62 - 8);
  v175 = v62;
  v176 = v63;
  MEMORY[0x28223BE20](v62);
  v174 = &v141 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v65 - 8);
  v67 = &v141 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  switch((v68 >> 58) & 0x3C | (v68 >> 1) & 3)
  {
    case 1uLL:
      v70 = swift_projectBox();
      sub_21885AC00(v70, v67, type metadata accessor for CuratedTodayFeedGroup);
      v71 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v71, v175);
      v73 = type metadata accessor for CuratedTodayFeedGroup;
      goto LABEL_34;
    case 2uLL:
      v92 = swift_projectBox();
      sub_21885AC00(v92, v61, type metadata accessor for NewspaperTodayFeedGroup);
      v93 = *&v61[*(v59 + 20)];
      swift_unknownObjectRetain();
      v94 = type metadata accessor for NewspaperTodayFeedGroup;
      v95 = v61;
      goto LABEL_13;
    case 3uLL:
      v102 = swift_projectBox();
      sub_21885AC00(v102, v58, type metadata accessor for LocalNewsTodayFeedGroup);
      v93 = *&v58[*(v56 + 20)];
      swift_unknownObjectRetain();
      v94 = type metadata accessor for LocalNewsTodayFeedGroup;
      v95 = v58;
LABEL_13:
      sub_21885ACD0(v95, v94);
      return v93;
    case 4uLL:
      v103 = swift_projectBox();
      v67 = v149;
      sub_21885AC00(v103, v149, type metadata accessor for TrendingTodayFeedGroup);
      v104 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v104, v175);
      v73 = type metadata accessor for TrendingTodayFeedGroup;
      goto LABEL_34;
    case 5uLL:
      v115 = swift_projectBox();
      v67 = v150;
      sub_21885AC00(v115, v150, type metadata accessor for ForYouTodayFeedGroup);
      v116 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v116, v175);
      v73 = type metadata accessor for ForYouTodayFeedGroup;
      goto LABEL_34;
    case 6uLL:
      v90 = swift_projectBox();
      v67 = v151;
      sub_21885AC00(v90, v151, type metadata accessor for MissedStoriesTodayFeedGroup);
      v91 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v91, v175);
      v73 = type metadata accessor for MissedStoriesTodayFeedGroup;
      goto LABEL_34;
    case 7uLL:
      v105 = swift_projectBox();
      v67 = v152;
      sub_21885AC00(v105, v152, type metadata accessor for LatestStoriesTodayFeedGroup);
      v106 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v106, v175);
      v73 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_34;
    case 8uLL:
      v111 = swift_projectBox();
      v67 = v153;
      sub_21885AC00(v111, v153, type metadata accessor for MoreForYouTodayFeedGroup);
      v112 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v112, v175);
      v73 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_34;
    case 9uLL:
      v129 = swift_projectBox();
      sub_21885AC00(v129, v55, type metadata accessor for TopicTodayFeedGroup);
      v130 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v130, v175);
      v79 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_28;
    case 0xAuLL:
      v96 = swift_projectBox();
      v97 = v146;
      v98 = v145;
      v99 = v147;
      (*(v146 + 16))(v145, v96, v147);
      v100 = v148;
      sub_219BEDE64();
      v101 = sub_218CDC10C();
      sub_21885ACD0(v100, type metadata accessor for MagazineFeedGroup);
      (*(v97 + 8))(v98, v99);
      return v101;
    case 0xBuLL:
      v117 = swift_projectBox();
      sub_21885AC00(v117, v52, type metadata accessor for NewFollowTodayFeedGroup);
      v118 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v118, v175);
      v88 = type metadata accessor for NewFollowTodayFeedGroup;
      v89 = v52;
      goto LABEL_35;
    case 0xCuLL:
      v86 = swift_projectBox();
      sub_21885AC00(v86, v49, type metadata accessor for SubscriptionTodayFeedGroup);
      v87 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v87, v175);
      v88 = type metadata accessor for SubscriptionTodayFeedGroup;
      v89 = v49;
      goto LABEL_35;
    case 0xEuLL:
      v127 = swift_projectBox();
      v67 = v142;
      sub_21885AC00(v127, v142, type metadata accessor for SpotlightTodayFeedGroup);
      v128 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v128, v175);
      v73 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_34;
    case 0xFuLL:
      v131 = swift_projectBox();
      sub_21885AC00(v131, v46, type metadata accessor for SuggestionTodayFeedGroup);
      v132 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v132, v175);
      v88 = type metadata accessor for SuggestionTodayFeedGroup;
      v89 = v46;
      goto LABEL_35;
    case 0x11uLL:
      v80 = swift_projectBox();
      v81 = v143;
      v82 = v144;
      (*(v143 + 16))(v41, v80, v144);
      sub_219BEE474();
      v83 = sub_2193B4730();

      (*(v81 + 8))(v41, v82);
      return v83;
    case 0x12uLL:
      v119 = swift_projectBox();
      v67 = v155;
      sub_21885AC00(v119, v155, type metadata accessor for SharedWithYouTodayFeedGroup);
      v120 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v120, v175);
      v73 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_34;
    case 0x14uLL:
      v121 = swift_projectBox();
      v67 = v156;
      sub_21885AC00(v121, v156, type metadata accessor for MySportsTodayFeedGroup);
      v122 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v122, v175);
      v73 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_34;
    case 0x15uLL:
      v133 = swift_projectBox();
      v67 = v157;
      sub_21885AC00(v133, v157, type metadata accessor for IntroToSportsTodayFeedGroup);
      v134 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v134, v175);
      v73 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_34;
    case 0x16uLL:
      v139 = swift_projectBox();
      v67 = v169;
      sub_21885AC00(v139, v169, type metadata accessor for ShortcutsTodayFeedGroup);
      v140 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v140, v175);
      v73 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_34;
    case 0x17uLL:
      v109 = swift_projectBox();
      v67 = v170;
      sub_21885AC00(v109, v170, type metadata accessor for ChannelTodayFeedGroup);
      v110 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v110, v175);
      v73 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_34;
    case 0x18uLL:
      v107 = swift_projectBox();
      v67 = v171;
      sub_21885AC00(v107, v171, type metadata accessor for SavedStoriesTodayFeedGroup);
      v108 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v108, v175);
      v73 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_34;
    case 0x19uLL:
      v74 = swift_projectBox();
      v67 = v172;
      sub_21885AC00(v74, v172, type metadata accessor for ChannelPickerTodayFeedGroup);
      v75 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v75, v175);
      v73 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_34;
    case 0x1AuLL:
      v76 = swift_projectBox();
      v67 = v173;
      sub_21885AC00(v76, v173, type metadata accessor for FoodTodayFeedGroup);
      v77 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v77, v175);
      v73 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_34;
    case 0x1BuLL:
      v135 = swift_projectBox();
      v67 = v159;
      sub_21885AC00(v135, v159, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v136 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v136, v175);
      v73 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      goto LABEL_34;
    case 0x1CuLL:
      v137 = swift_projectBox();
      v67 = v161;
      sub_21885AC00(v137, v161, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v138 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v138, v175);
      v73 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_34;
    case 0x1DuLL:
      v123 = swift_projectBox();
      v67 = v162;
      sub_21885AC00(v123, v162, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v124 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v124, v175);
      v73 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_34;
    case 0x1EuLL:
      v113 = swift_projectBox();
      v67 = v163;
      sub_21885AC00(v113, v163, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v114 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v114, v175);
      v73 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_34;
    case 0x1FuLL:
      v125 = swift_projectBox();
      v67 = v164;
      sub_21885AC00(v125, v164, type metadata accessor for TrendingMagazineFeedGroup);
      v126 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v126, v175);
      v73 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_34;
    case 0x20uLL:
      v84 = swift_projectBox();
      v67 = v166;
      sub_21885AC00(v84, v166, type metadata accessor for NewIssueMagazineFeedGroup);
      v85 = v174;
      sub_219BED874();
      v72 = sub_219BF1844();
      (*(v176 + 8))(v85, v175);
      v73 = type metadata accessor for NewIssueMagazineFeedGroup;
LABEL_34:
      v88 = v73;
      v89 = v67;
      goto LABEL_35;
    case 0x21uLL:
      sub_2186EBC7C(0);
      v78 = swift_projectBox();
      v55 = v167;
      sub_21885AC00(v78, v167, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v72 = *&v55[*(v168 + 56)];
      swift_unknownObjectRetain();
      v79 = type metadata accessor for MyMagazinesMagazineFeedGroup;
LABEL_28:
      v88 = v79;
      v89 = v55;
LABEL_35:
      sub_21885ACD0(v89, v88);
      result = v72;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2193B5F80@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218855280(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218855330(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
      type metadata accessor for CuratedTodayFeedGroup(0);
      v35 = swift_projectBox();
      sub_21885AC00(v35, a2, type metadata accessor for CuratedTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 2uLL:
      type metadata accessor for NewspaperTodayFeedGroup(0);
      v31 = swift_projectBox();
      sub_21885AC00(v31, a2, type metadata accessor for NewspaperTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 3uLL:
      type metadata accessor for LocalNewsTodayFeedGroup(0);
      v33 = swift_projectBox();
      sub_21885AC00(v33, a2, type metadata accessor for LocalNewsTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 4uLL:
      type metadata accessor for TrendingTodayFeedGroup(0);
      v26 = swift_projectBox();
      sub_21885AC00(v26, a2, type metadata accessor for TrendingTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 5uLL:
      type metadata accessor for ForYouTodayFeedGroup(0);
      v40 = swift_projectBox();
      sub_21885AC00(v40, a2, type metadata accessor for ForYouTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 6uLL:
      type metadata accessor for MissedStoriesTodayFeedGroup(0);
      v44 = swift_projectBox();
      sub_21885AC00(v44, a2, type metadata accessor for MissedStoriesTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 7uLL:
      type metadata accessor for LatestStoriesTodayFeedGroup(0);
      v34 = swift_projectBox();
      sub_21885AC00(v34, a2, type metadata accessor for LatestStoriesTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 8uLL:
      type metadata accessor for MoreForYouTodayFeedGroup(0);
      v49 = swift_projectBox();
      sub_21885AC00(v49, a2, type metadata accessor for MoreForYouTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 9uLL:
      type metadata accessor for TopicTodayFeedGroup(0);
      v28 = swift_projectBox();
      sub_21885AC00(v28, a2, type metadata accessor for TopicTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0xAuLL:
      v46 = v11;
      v47 = swift_projectBox();
      (*(v10 + 16))(v13, v47, v46);
      sub_219BEDE64();
      (*(v10 + 8))(v13, v46);
      v48 = type metadata accessor for TodayFeedGroup(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v48 - 8) + 56))(a2, 0, 1, v48);
    case 0xBuLL:
      type metadata accessor for NewFollowTodayFeedGroup(0);
      v25 = swift_projectBox();
      sub_21885AC00(v25, a2, type metadata accessor for NewFollowTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0xCuLL:
      type metadata accessor for SubscriptionTodayFeedGroup(0);
      v27 = swift_projectBox();
      sub_21885AC00(v27, a2, type metadata accessor for SubscriptionTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0xDuLL:
      v42 = sub_219BED544();
      v43 = swift_projectBox();
      (*(*(v42 - 8) + 16))(a2, v43, v42);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0xEuLL:
      type metadata accessor for SpotlightTodayFeedGroup(0);
      v23 = swift_projectBox();
      sub_21885AC00(v23, a2, type metadata accessor for SpotlightTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0xFuLL:
      type metadata accessor for SuggestionTodayFeedGroup(0);
      v32 = swift_projectBox();
      sub_21885AC00(v32, a2, type metadata accessor for SuggestionTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0x10uLL:
      type metadata accessor for SeenContentMarkTodayFeedGroup(0);
      v21 = swift_projectBox();
      sub_21885AC00(v21, a2, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0x11uLL:
      v37 = swift_projectBox();
      (*(v6 + 16))(v8, v37, v5);
      sub_219BEE474();
      sub_2193B5F80(v58[1], a2);

      return (*(v6 + 8))(v8, v5);
    case 0x12uLL:
      type metadata accessor for SharedWithYouTodayFeedGroup(0);
      v45 = swift_projectBox();
      sub_21885AC00(v45, a2, type metadata accessor for SharedWithYouTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0x13uLL:
      type metadata accessor for EngagementTodayFeedGroup(0);
      v53 = swift_projectBox();
      sub_21885AC00(v53, a2, type metadata accessor for EngagementTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0x14uLL:
      type metadata accessor for MySportsTodayFeedGroup(0);
      v39 = swift_projectBox();
      sub_21885AC00(v39, a2, type metadata accessor for MySportsTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0x15uLL:
      type metadata accessor for IntroToSportsTodayFeedGroup(0);
      v41 = swift_projectBox();
      sub_21885AC00(v41, a2, type metadata accessor for IntroToSportsTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0x16uLL:
      type metadata accessor for ShortcutsTodayFeedGroup(0);
      v52 = swift_projectBox();
      sub_21885AC00(v52, a2, type metadata accessor for ShortcutsTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0x17uLL:
      type metadata accessor for ChannelTodayFeedGroup(0);
      v54 = swift_projectBox();
      sub_21885AC00(v54, a2, type metadata accessor for ChannelTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0x18uLL:
      type metadata accessor for SavedStoriesTodayFeedGroup(0);
      v30 = swift_projectBox();
      sub_21885AC00(v30, a2, type metadata accessor for SavedStoriesTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0x19uLL:
      type metadata accessor for ChannelPickerTodayFeedGroup(0);
      v29 = swift_projectBox();
      sub_21885AC00(v29, a2, type metadata accessor for ChannelPickerTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0x1AuLL:
      type metadata accessor for FoodTodayFeedGroup(0);
      v57 = swift_projectBox();
      sub_21885AC00(v57, a2, type metadata accessor for FoodTodayFeedGroup);
      v22 = type metadata accessor for TodayFeedGroup(0);
      goto LABEL_38;
    case 0x1BuLL:
      type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
      v19 = swift_projectBox();
      sub_21885AC00(v19, a2, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_37;
    case 0x1CuLL:
      type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
      v55 = swift_projectBox();
      sub_21885AC00(v55, a2, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_37;
    case 0x1DuLL:
      type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
      v56 = swift_projectBox();
      sub_21885AC00(v56, a2, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_37;
    case 0x1EuLL:
      type metadata accessor for BestOfBundleMagazineFeedGroup(0);
      v50 = swift_projectBox();
      sub_21885AC00(v50, a2, type metadata accessor for BestOfBundleMagazineFeedGroup);
      type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_37;
    case 0x1FuLL:
      type metadata accessor for TrendingMagazineFeedGroup(0);
      v36 = swift_projectBox();
      sub_21885AC00(v36, a2, type metadata accessor for TrendingMagazineFeedGroup);
      type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_37;
    case 0x20uLL:
      type metadata accessor for NewIssueMagazineFeedGroup(0);
      v51 = swift_projectBox();
      sub_21885AC00(v51, a2, type metadata accessor for NewIssueMagazineFeedGroup);
      type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_37;
    case 0x21uLL:
      sub_2186EBC7C(0);
      v24 = swift_projectBox();
      sub_21885AC00(v24, a2, type metadata accessor for MyMagazinesMagazineFeedGroup);
      type metadata accessor for MagazineFeedGroup(0);
      goto LABEL_37;
    case 0x22uLL:
      type metadata accessor for RecommendedIssuesMagazineFeedGroup(0);
      v20 = swift_projectBox();
      sub_21885AC00(v20, a2, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      type metadata accessor for MagazineFeedGroup(0);
LABEL_37:
      swift_storeEnumTagMultiPayload();
      v22 = type metadata accessor for TodayFeedGroup(0);
LABEL_38:
      swift_storeEnumTagMultiPayload();
      v15 = *(*(v22 - 8) + 56);
      v17 = a2;
      v18 = 0;
      v16 = v22;
      break;
    default:
      v14 = type metadata accessor for TodayFeedGroup(0);
      v15 = *(*(v14 - 8) + 56);
      v16 = v14;
      v17 = a2;
      v18 = 1;
      break;
  }

  return v15(v17, v18, 1, v16);
}

uint64_t sub_2193B6C2C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF1904();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
    case 0xEuLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
      v20 = MEMORY[0x277D2E6B8];
      goto LABEL_7;
    case 2uLL:
      v34 = swift_projectBox();
      sub_21885AC00(v34, v19, type metadata accessor for NewspaperTodayFeedGroup);
      sub_219BED874();
      v35 = sub_219BF1804();
      (*(v14 + 8))(v16, v13);
      if (v35)
      {
        v27 = [v35 subscriptionOrigin];

        v28 = type metadata accessor for NewspaperTodayFeedGroup;
        v29 = v19;
        goto LABEL_18;
      }

      v37 = type metadata accessor for NewspaperTodayFeedGroup;
      v38 = v19;
      goto LABEL_24;
    case 3uLL:
      v32 = swift_projectBox();
      sub_21885AC00(v32, v12, type metadata accessor for LocalNewsTodayFeedGroup);
      sub_219BED874();
      v33 = sub_219BF1804();
      (*(v14 + 8))(v16, v13);
      if (v33)
      {
        v27 = [v33 subscriptionOrigin];

        v28 = type metadata accessor for LocalNewsTodayFeedGroup;
        v29 = v12;
        goto LABEL_18;
      }

      v37 = type metadata accessor for LocalNewsTodayFeedGroup;
      v38 = v12;
      goto LABEL_24;
    case 4uLL:
    case 0x12uLL:
    case 0x16uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1FuLL:
      v20 = MEMORY[0x277D2E6B0];
      goto LABEL_7;
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 0xFuLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x1EuLL:
    case 0x20uLL:
    case 0x22uLL:
      v20 = MEMORY[0x277D2E6A8];
      goto LABEL_7;
    case 9uLL:
      v30 = swift_projectBox();
      sub_21885AC00(v30, v9, type metadata accessor for TopicTodayFeedGroup);
      sub_219BED874();
      v31 = sub_219BF1804();
      (*(v14 + 8))(v16, v13);
      if (v31)
      {
        v27 = [v31 subscriptionOrigin];

        v28 = type metadata accessor for TopicTodayFeedGroup;
        v29 = v9;
        goto LABEL_18;
      }

      v37 = type metadata accessor for TopicTodayFeedGroup;
      v38 = v9;
      goto LABEL_24;
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0x21uLL:
      v20 = MEMORY[0x277D2E6A0];
      goto LABEL_7;
    case 0x17uLL:
      v25 = swift_projectBox();
      sub_21885AC00(v25, v6, type metadata accessor for ChannelTodayFeedGroup);
      sub_219BED874();
      v26 = sub_219BF1804();
      (*(v14 + 8))(v16, v13);
      if (v26)
      {
        v27 = [v26 subscriptionOrigin];

        v28 = type metadata accessor for ChannelTodayFeedGroup;
        v29 = v6;
LABEL_18:
        sub_21885ACD0(v29, v28);
        if (!v27)
        {
          v36 = MEMORY[0x277D2E6A0];
          goto LABEL_26;
        }
      }

      else
      {
        v37 = type metadata accessor for ChannelTodayFeedGroup;
        v38 = v6;
LABEL_24:
        sub_21885ACD0(v38, v37);
      }

      v36 = MEMORY[0x277D2E6A8];
LABEL_26:
      v39 = *v36;
      v40 = sub_219BE0674();
      return (*(*(v40 - 8) + 104))(a2, v39, v40);
    default:
      v20 = MEMORY[0x277D2E6C0];
LABEL_7:
      v21 = *v20;
      v22 = sub_219BE0674();
      v23 = *(*(v22 - 8) + 104);

      return v23(a2, v21, v22);
  }
}

void sub_2193B71D4(unint64_t a1)
{
  v134 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v134);
  v131 = &v123 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v130);
  v132 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v123 = &v123 - v5;
  v125 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v125);
  v126 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v124 = &v123 - v8;
  sub_218855330(0);
  v127 = v9;
  v129 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v128 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193BBC54(0, &unk_280EE6660, MEMORY[0x277D31550], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v136 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v123 - v17;
  MEMORY[0x28223BE20](v19);
  v133 = &v123 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v123 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v123 - v25;
  v27 = sub_219BE3514();
  v138 = *(v27 - 8);
  v139 = v27;
  MEMORY[0x28223BE20](v27);
  v137 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v123 - v30;
  MEMORY[0x28223BE20](v32);
  v135 = &v123 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v123 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v123 - v38;
  v40 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v40);
  v42 = &v123 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = 0;
  v43 = (a1 >> 58) & 0x3C | (a1 >> 1) & 3;
  if (v43 > 2)
  {
    if (v43 <= 0x22)
    {
      if (((1 << ((a1 >> 58) & 0x3C | (a1 >> 1) & 3)) & 0x5FFFFFBF0) != 0)
      {
        return;
      }

      if (v43 == 10)
      {
        v58 = swift_projectBox();
        v59 = v128;
        v60 = v129;
        v61 = v127;
        (*(v129 + 16))(v128, v58, v127);
        v62 = v124;
        sub_219BEDE64();
        v63 = v62;
        v64 = v126;
        sub_21885E5A0(v63, v126, type metadata accessor for MagazineFeedGroup);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v65 = v123;
          sub_21885E5A0(v64, v123, type metadata accessor for MyMagazinesMagazineFeedGroup);
          v66 = *(v65 + *(v130 + 72));

          sub_21885ACD0(v65, type metadata accessor for MyMagazinesMagazineFeedGroup);
          if (v66)
          {
            v67 = *(v66 + 16);
            if (v67)
            {
              v68 = 0;
              v69 = (v138 + 48);
              v70 = (v138 + 32);
              v71 = v66 + 40;
              v140 = MEMORY[0x277D84F90];
              v72 = v133;
              while (v68 < *(v66 + 16))
              {

                sub_219BE34E4();
                v73 = v139;
                if ((*v69)(v72, 1, v139) == 1)
                {
                  sub_218B8BA94(v72);
                }

                else
                {
                  v74 = *v70;
                  (*v70)(v135, v72, v73);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v140 = sub_2191F7D30(0, *(v140 + 2) + 1, 1, v140);
                  }

                  v76 = *(v140 + 2);
                  v75 = *(v140 + 3);
                  if (v76 >= v75 >> 1)
                  {
                    v140 = sub_2191F7D30((v75 > 1), v76 + 1, 1, v140);
                  }

                  v77 = v139;
                  v78 = v140;
                  *(v140 + 2) = v76 + 1;
                  v74(&v78[((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v76], v135, v77);
                  v72 = v133;
                }

                ++v68;
                v71 += 16;
                if (v67 == v68)
                {

                  (*(v129 + 8))(v128, v61);
                  return;
                }
              }

              goto LABEL_90;
            }

            (*(v60 + 8))(v59, v61);
          }

          else
          {
            (*(v60 + 8))(v59, v61);
          }

LABEL_79:
          v140 = 0;
          return;
        }

        (*(v60 + 8))(v59, v61);
        v121 = type metadata accessor for MagazineFeedGroup;
        v107 = v64;
LABEL_78:
        sub_21885ACD0(v107, v121);
        goto LABEL_79;
      }

      if (v43 == 33)
      {
        sub_2186EBC7C(0);
        v91 = swift_projectBox();
        v92 = v132;
        sub_21885AC00(v91, v132, type metadata accessor for MyMagazinesMagazineFeedGroup);
        v93 = *(v92 + *(v130 + 72));
        if (!v93 || (v94 = *(v93 + 16)) == 0)
        {
          v121 = type metadata accessor for MyMagazinesMagazineFeedGroup;
          v107 = v132;
          goto LABEL_78;
        }

        v95 = (v138 + 48);
        v96 = (v138 + 32);

        v97 = 0;
        v98 = v93 + 40;
        v140 = MEMORY[0x277D84F90];
        v99 = v136;
        while (v97 < *(v93 + 16))
        {

          sub_219BE34E4();
          v100 = v139;
          if ((*v95)(v99, 1, v139) == 1)
          {
            sub_218B8BA94(v99);
          }

          else
          {
            v101 = *v96;
            (*v96)(v137, v99, v100);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v140 = sub_2191F7D30(0, *(v140 + 2) + 1, 1, v140);
            }

            v103 = *(v140 + 2);
            v102 = *(v140 + 3);
            if (v103 >= v102 >> 1)
            {
              v140 = sub_2191F7D30((v102 > 1), v103 + 1, 1, v140);
            }

            v104 = v139;
            v105 = v140;
            *(v140 + 2) = v103 + 1;
            v101(&v105[((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v103], v137, v104);
            v99 = v136;
          }

          ++v97;
          v98 += 16;
          if (v94 == v97)
          {

            sub_21885ACD0(v132, type metadata accessor for MyMagazinesMagazineFeedGroup);
            return;
          }
        }

LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        return;
      }
    }

    v136 = v42;
    v106 = swift_projectBox();
    sub_21885AC00(v106, v136, type metadata accessor for LocalNewsTodayFeedGroup);
    v107 = v136;
    v108 = *&v136[*(v40 + 32)];
    if (!v108 || (v109 = *(v108 + 16)) == 0)
    {
      v121 = type metadata accessor for LocalNewsTodayFeedGroup;
      goto LABEL_78;
    }

    v110 = (v138 + 48);
    v111 = (v138 + 32);

    v112 = 0;
    v113 = v108 + 40;
    v140 = MEMORY[0x277D84F90];
    v137 = v109;
    while (v112 < *(v108 + 16))
    {

      sub_219BE34E4();
      v114 = v139;
      if ((*v110)(v26, 1, v139) == 1)
      {
        sub_218B8BA94(v26);
      }

      else
      {
        v115 = *v111;
        (*v111)(v39, v26, v114);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_2191F7D30(0, *(v140 + 2) + 1, 1, v140);
        }

        v117 = *(v140 + 2);
        v116 = *(v140 + 3);
        if (v117 >= v116 >> 1)
        {
          v140 = sub_2191F7D30((v116 > 1), v117 + 1, 1, v140);
        }

        v118 = v139;
        v119 = v140;
        *(v140 + 2) = v117 + 1;
        v115(&v119[((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v117], v39, v118);
        v109 = v137;
      }

      ++v112;
      v113 += 16;
      if (v109 == v112)
      {

        v122 = type metadata accessor for LocalNewsTodayFeedGroup;
        goto LABEL_81;
      }
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v44 = v134;
  v136 = v13;
  if (v43)
  {
    if (v43 == 1)
    {
      v45 = swift_projectBox();
      v46 = v131;
      sub_21885AC00(v45, v131, type metadata accessor for CuratedTodayFeedGroup);
      v47 = *(v46 + *(v44 + 24));
      v48 = v139;
      if (v47)
      {
        v137 = *(v47 + 16);
        if (v137)
        {
          v49 = (v138 + 48);
          v50 = (v138 + 32);

          v51 = 0;
          v52 = v47 + 40;
          v140 = MEMORY[0x277D84F90];
          while (v51 < *(v47 + 16))
          {

            sub_219BE34E4();
            if ((*v49)(v18, 1, v48) == 1)
            {
              sub_218B8BA94(v18);
            }

            else
            {
              v53 = *v50;
              (*v50)(v31, v18, v48);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v140 = sub_2191F7D30(0, *(v140 + 2) + 1, 1, v140);
              }

              v55 = *(v140 + 2);
              v54 = *(v140 + 3);
              if (v55 >= v54 >> 1)
              {
                v140 = sub_2191F7D30((v54 > 1), v55 + 1, 1, v140);
              }

              v56 = v140;
              *(v140 + 2) = v55 + 1;
              v57 = &v56[((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v55];
              v48 = v139;
              v53(v57, v31, v139);
            }

            ++v51;
            v52 += 16;
            if (v137 == v51)
            {

              sub_21885ACD0(v131, type metadata accessor for CuratedTodayFeedGroup);
              return;
            }
          }

          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }
      }

      v120 = type metadata accessor for CuratedTodayFeedGroup;
    }

    else
    {
      v79 = swift_projectBox();
      v46 = v136;
      sub_21885AC00(v79, v136, type metadata accessor for NewspaperTodayFeedGroup);
      v80 = *(v46 + *(v11 + 28));
      v81 = v139;
      if (v80)
      {
        v137 = *(v80 + 16);
        if (v137)
        {
          v82 = (v138 + 48);
          v83 = (v138 + 32);

          v84 = 0;
          v85 = v80 + 40;
          v140 = MEMORY[0x277D84F90];
          while (v84 < *(v80 + 16))
          {

            sub_219BE34E4();
            if ((*v82)(v23, 1, v81) == 1)
            {
              sub_218B8BA94(v23);
            }

            else
            {
              v86 = *v83;
              (*v83)(v36, v23, v81);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v140 = sub_2191F7D30(0, *(v140 + 2) + 1, 1, v140);
              }

              v88 = *(v140 + 2);
              v87 = *(v140 + 3);
              if (v88 >= v87 >> 1)
              {
                v140 = sub_2191F7D30((v87 > 1), v88 + 1, 1, v140);
              }

              v89 = v140;
              *(v140 + 2) = v88 + 1;
              v90 = &v89[((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v88];
              v81 = v139;
              v86(v90, v36, v139);
            }

            ++v84;
            v85 += 16;
            if (v137 == v84)
            {

              v122 = type metadata accessor for NewspaperTodayFeedGroup;
LABEL_81:
              sub_21885ACD0(v136, v122);
              return;
            }
          }

          goto LABEL_87;
        }
      }

      v120 = type metadata accessor for NewspaperTodayFeedGroup;
    }

    v121 = v120;
    v107 = v46;
    goto LABEL_78;
  }
}

uint64_t sub_2193B80FC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218855280(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x12uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
      v9 = MEMORY[0x277D33190];
      goto LABEL_3;
    case 0xAuLL:
    case 0x21uLL:
      v9 = MEMORY[0x277D33188];
      goto LABEL_3;
    case 0xDuLL:
      v9 = MEMORY[0x277D33178];
      goto LABEL_3;
    case 0x11uLL:
      v14 = v6;
      v15 = swift_projectBox();
      (*(v5 + 16))(v8, v15, v14);
      sub_219BEE474();
      sub_2193B80FC(v16[1], a2);

      return (*(v5 + 8))(v8, v14);
    case 0x13uLL:
      v9 = MEMORY[0x277D33150];
      goto LABEL_3;
    case 0x22uLL:
      v9 = MEMORY[0x277D33170];
      goto LABEL_3;
    default:
      v9 = MEMORY[0x277D33180];
LABEL_3:
      v10 = *v9;
      v11 = sub_219BF10E4();
      v12 = *(*(v11 - 8) + 104);

      return v12(a2, v10, v11);
  }
}

uint64_t sub_2193B82F8(unint64_t a1)
{
  sub_218855280(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1;
  if (((1 << ((a1 >> 58) & 0x3C | (a1 >> 1) & 3)) & 0x7FFFDFFFELL) == 0)
  {
    if ((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
    {
      v9 = v4;
      v10 = swift_projectBox();
      (*(v3 + 16))(v6, v10, v9);
      sub_219BEE474();
      v7 = sub_2193B82F8(v11[1]);

      (*(v3 + 8))(v6, v9);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t sub_2193B8458@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218855280(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
      v9 = MEMORY[0x277D2D3C8];
      goto LABEL_3;
    case 2uLL:
      v9 = MEMORY[0x277D2D408];
      goto LABEL_3;
    case 3uLL:
      v9 = MEMORY[0x277D2D228];
      goto LABEL_3;
    case 4uLL:
      v9 = MEMORY[0x277D2D3F8];
      goto LABEL_3;
    case 5uLL:
      v9 = MEMORY[0x277D2D3B8];
      goto LABEL_3;
    case 6uLL:
      v9 = MEMORY[0x277D2D2B8];
      goto LABEL_3;
    case 7uLL:
      v9 = MEMORY[0x277D2D2B0];
      goto LABEL_3;
    case 8uLL:
      v9 = MEMORY[0x277D2D248];
      goto LABEL_3;
    case 9uLL:
      v9 = MEMORY[0x277D2D3B0];
      goto LABEL_3;
    case 0xAuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
      v9 = MEMORY[0x277D2D3E8];
      goto LABEL_3;
    case 0xBuLL:
      v9 = MEMORY[0x277D2D400];
      goto LABEL_3;
    case 0xCuLL:
      v9 = MEMORY[0x277D2D288];
      goto LABEL_3;
    case 0xDuLL:
      v9 = MEMORY[0x277D2D398];
      goto LABEL_3;
    case 0xEuLL:
      v9 = MEMORY[0x277D2D418];
      goto LABEL_3;
    case 0xFuLL:
      v9 = MEMORY[0x277D2D258];
      goto LABEL_3;
    case 0x10uLL:
      v9 = MEMORY[0x277D2D2F8];
      goto LABEL_3;
    case 0x11uLL:
      v14 = v6;
      v15 = swift_projectBox();
      (*(v5 + 16))(v8, v15, v14);
      sub_219BEE474();
      sub_2193B8458(v16[1], a2);

      return (*(v5 + 8))(v8, v14);
    case 0x12uLL:
      v9 = MEMORY[0x277D2D2D0];
      goto LABEL_3;
    case 0x13uLL:
      v9 = MEMORY[0x277D2D238];
      goto LABEL_3;
    case 0x14uLL:
      v9 = MEMORY[0x277D2D3F0];
      goto LABEL_3;
    case 0x15uLL:
      v9 = MEMORY[0x277D2D2A0];
      goto LABEL_3;
    case 0x16uLL:
      v9 = MEMORY[0x277D2D410];
      goto LABEL_3;
    case 0x17uLL:
      v9 = MEMORY[0x277D2D3C0];
      goto LABEL_3;
    case 0x18uLL:
      v9 = MEMORY[0x277D2D270];
      goto LABEL_3;
    case 0x19uLL:
      v9 = MEMORY[0x277D2D298];
      goto LABEL_3;
    case 0x1AuLL:
      v9 = MEMORY[0x277D2D3A8];
      goto LABEL_3;
    default:
      v9 = MEMORY[0x277D2D3A0];
LABEL_3:
      v10 = *v9;
      v11 = sub_219BEBE54();
      v12 = *(*(v11 - 8) + 104);

      return v12(a2, v10, v11);
  }
}

uint64_t sub_2193B873C()
{
  v0 = type metadata accessor for FoodTodayFeedGroup(0);
  MEMORY[0x28223BE20](v0 - 8);
  v153 = &v129 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v2 - 8);
  v152 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v151 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v150 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v149 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v147);
  v148 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TrendingMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v11 - 8);
  v146 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BestOfBundleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v13 - 8);
  v145 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v15 - 8);
  v144 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v142);
  v143 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v140);
  v141 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v19 - 8);
  v139 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v21 - 8);
  v138 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v136);
  v137 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218855280(0);
  v135 = v24;
  v134 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v27 - 8);
  v133 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v29 - 8);
  v132 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v31 - 8);
  v131 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v33 - 8);
  v130 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for TrendingTodayFeedGroup(0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v129 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SuggestionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v129 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v129 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v129 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v50 - 8);
  v52 = &v129 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v53 - 8);
  v55 = &v129 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v56 - 8);
  v58 = &v129 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_219BF1904();
  v60 = *(v59 - 8);
  v155 = v59;
  v156 = v60;
  MEMORY[0x28223BE20](v59);
  v154 = &v129 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v62 - 8);
  v64 = &v129 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x277D84F90];
  switch((v65 >> 58) & 0x3C | (v65 >> 1) & 3)
  {
    case 1uLL:
      v67 = swift_projectBox();
      sub_21885AC00(v67, v64, type metadata accessor for CuratedTodayFeedGroup);
      v68 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v68, v155);
      v70 = type metadata accessor for CuratedTodayFeedGroup;
      v71 = v64;
      goto LABEL_31;
    case 2uLL:
      v89 = swift_projectBox();
      sub_21885AC00(v89, v58, type metadata accessor for NewspaperTodayFeedGroup);
      v90 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v90, v155);
      v74 = type metadata accessor for NewspaperTodayFeedGroup;
      goto LABEL_30;
    case 3uLL:
      v101 = swift_projectBox();
      sub_21885AC00(v101, v55, type metadata accessor for LocalNewsTodayFeedGroup);
      v102 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v102, v155);
      v70 = type metadata accessor for LocalNewsTodayFeedGroup;
      v71 = v55;
      goto LABEL_31;
    case 4uLL:
      v85 = swift_projectBox();
      sub_21885AC00(v85, v37, type metadata accessor for TrendingTodayFeedGroup);
      v86 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v86, v155);
      v70 = type metadata accessor for TrendingTodayFeedGroup;
      v71 = v37;
      goto LABEL_31;
    case 5uLL:
      v91 = swift_projectBox();
      v58 = v130;
      sub_21885AC00(v91, v130, type metadata accessor for ForYouTodayFeedGroup);
      v92 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v92, v155);
      v74 = type metadata accessor for ForYouTodayFeedGroup;
      goto LABEL_30;
    case 6uLL:
      v97 = swift_projectBox();
      v58 = v131;
      sub_21885AC00(v97, v131, type metadata accessor for MissedStoriesTodayFeedGroup);
      v98 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v98, v155);
      v74 = type metadata accessor for MissedStoriesTodayFeedGroup;
      goto LABEL_30;
    case 7uLL:
      v117 = swift_projectBox();
      v58 = v132;
      sub_21885AC00(v117, v132, type metadata accessor for LatestStoriesTodayFeedGroup);
      v118 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v118, v155);
      v74 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_30;
    case 8uLL:
      v87 = swift_projectBox();
      v58 = v133;
      sub_21885AC00(v87, v133, type metadata accessor for MoreForYouTodayFeedGroup);
      v88 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v88, v155);
      v74 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_30;
    case 9uLL:
      v103 = swift_projectBox();
      sub_21885AC00(v103, v52, type metadata accessor for TopicTodayFeedGroup);
      v104 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v104, v155);
      v70 = type metadata accessor for TopicTodayFeedGroup;
      v71 = v52;
      goto LABEL_31;
    case 0xBuLL:
      v83 = swift_projectBox();
      sub_21885AC00(v83, v49, type metadata accessor for NewFollowTodayFeedGroup);
      v84 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v84, v155);
      v70 = type metadata accessor for NewFollowTodayFeedGroup;
      v71 = v49;
      goto LABEL_31;
    case 0xCuLL:
      v115 = swift_projectBox();
      sub_21885AC00(v115, v46, type metadata accessor for SubscriptionTodayFeedGroup);
      v116 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v116, v155);
      v70 = type metadata accessor for SubscriptionTodayFeedGroup;
      v71 = v46;
      goto LABEL_31;
    case 0xEuLL:
      v119 = swift_projectBox();
      sub_21885AC00(v119, v40, type metadata accessor for SpotlightTodayFeedGroup);
      v120 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v120, v155);
      v70 = type metadata accessor for SpotlightTodayFeedGroup;
      v71 = v40;
      goto LABEL_31;
    case 0xFuLL:
      v79 = swift_projectBox();
      sub_21885AC00(v79, v43, type metadata accessor for SuggestionTodayFeedGroup);
      v80 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v80, v155);
      v70 = type metadata accessor for SuggestionTodayFeedGroup;
      v71 = v43;
      goto LABEL_31;
    case 0x11uLL:
      v105 = swift_projectBox();
      v106 = v134;
      v107 = v135;
      (*(v134 + 16))(v26, v105, v135);
      sub_219BEE474();
      v108 = sub_2193B873C();

      (*(v106 + 8))(v26, v107);
      return v108;
    case 0x12uLL:
      v109 = swift_projectBox();
      v58 = v137;
      sub_21885AC00(v109, v137, type metadata accessor for SharedWithYouTodayFeedGroup);
      v110 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v110, v155);
      v74 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_30;
    case 0x14uLL:
      v121 = swift_projectBox();
      v58 = v138;
      sub_21885AC00(v121, v138, type metadata accessor for MySportsTodayFeedGroup);
      v122 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v122, v155);
      v74 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_30;
    case 0x15uLL:
      v127 = swift_projectBox();
      v58 = v139;
      sub_21885AC00(v127, v139, type metadata accessor for IntroToSportsTodayFeedGroup);
      v128 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v128, v155);
      v74 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_30;
    case 0x16uLL:
      v95 = swift_projectBox();
      v58 = v149;
      sub_21885AC00(v95, v149, type metadata accessor for ShortcutsTodayFeedGroup);
      v96 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v96, v155);
      v74 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_30;
    case 0x17uLL:
      v93 = swift_projectBox();
      v58 = v150;
      sub_21885AC00(v93, v150, type metadata accessor for ChannelTodayFeedGroup);
      v94 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v94, v155);
      v74 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_30;
    case 0x18uLL:
      v72 = swift_projectBox();
      v58 = v151;
      sub_21885AC00(v72, v151, type metadata accessor for SavedStoriesTodayFeedGroup);
      v73 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v73, v155);
      v74 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_30;
    case 0x19uLL:
      v75 = swift_projectBox();
      v58 = v152;
      sub_21885AC00(v75, v152, type metadata accessor for ChannelPickerTodayFeedGroup);
      v76 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v76, v155);
      v74 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_30;
    case 0x1AuLL:
      v123 = swift_projectBox();
      v58 = v153;
      sub_21885AC00(v123, v153, type metadata accessor for FoodTodayFeedGroup);
      v124 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v124, v155);
      v74 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_30;
    case 0x1BuLL:
      v125 = swift_projectBox();
      v58 = v141;
      sub_21885AC00(v125, v141, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v126 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v126, v155);
      v74 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      goto LABEL_30;
    case 0x1CuLL:
      v111 = swift_projectBox();
      v58 = v143;
      sub_21885AC00(v111, v143, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v112 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v112, v155);
      v74 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_30;
    case 0x1DuLL:
      v99 = swift_projectBox();
      v58 = v144;
      sub_21885AC00(v99, v144, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v100 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v100, v155);
      v74 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_30;
    case 0x1EuLL:
      v113 = swift_projectBox();
      v58 = v145;
      sub_21885AC00(v113, v145, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v114 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v114, v155);
      v74 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_30;
    case 0x1FuLL:
      v81 = swift_projectBox();
      v58 = v146;
      sub_21885AC00(v81, v146, type metadata accessor for TrendingMagazineFeedGroup);
      v82 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v82, v155);
      v74 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_30;
    case 0x20uLL:
      v77 = swift_projectBox();
      v58 = v148;
      sub_21885AC00(v77, v148, type metadata accessor for NewIssueMagazineFeedGroup);
      v78 = v154;
      sub_219BED874();
      v69 = sub_219BF17E4();
      (*(v156 + 8))(v78, v155);
      v74 = type metadata accessor for NewIssueMagazineFeedGroup;
LABEL_30:
      v70 = v74;
      v71 = v58;
LABEL_31:
      sub_21885ACD0(v71, v70);
      result = v69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2193B9D78()
{
  if (((1 << ((*v0 >> 58) & 0x3C | (*v0 >> 1) & 3)) & 0x7FFB6DFFELL) != 0)
  {
    v1 = MEMORY[0x277D322A0];
    sub_2193BBC54(0, &qword_280E8B8E8, MEMORY[0x277D322A0], MEMORY[0x277D84560]);
    sub_219BEEB84();
    *(swift_allocObject() + 16) = xmmword_219C09EC0;
    sub_219BEEB64();
    sub_219BEEB74();
    sub_21885E3D4(&qword_280E918B8, MEMORY[0x277D322A0], MEMORY[0x277D322A8]);
    sub_2193BBC54(0, &unk_280E8EF30, v1, MEMORY[0x277D83940]);
    sub_2193BBB60();
    return sub_219BF7164();
  }

  else if (((1 << ((*v0 >> 58) & 0x3C | (*v0 >> 1) & 3)) & 0x12001) != 0)
  {

    return MEMORY[0x2821905C0]();
  }

  else
  {

    return sub_219BEEB64();
  }
}

uint64_t sub_2193B9FC0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D2D448];
  v3 = sub_219BEBEB4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2193BA038@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D32C20];
  if (((*v1 >> 58) & 0x3C | (*v1 >> 1) & 3) - 5 >= 2)
  {
    v3 = MEMORY[0x277D32C18];
  }

  v4 = *v3;
  v5 = sub_219BF02C4();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_2193BA0D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = sub_219BEEA64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_218855280(0);
  v12 = swift_allocBox();
  v14[1] = v11;
  (*(v8 + 16))(v10, a2, v7);
  sub_2188552DC();

  result = sub_219BEE464();
  *a4 = v12 | 0x4000000000000002;
  return result;
}

uint64_t sub_2193BA210@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_218855280(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (((v9 >> 58) & 0x3C | (v9 >> 1) & 3) == 0x11)
  {
    v10 = swift_projectBox();
    (*(v6 + 16))(v8, v10, v5);
    sub_219BEE474();
    result = (*(v6 + 8))(v8, v5);
    v9 = v12[1];
  }

  else
  {
  }

  *a2 = v9;
  return result;
}

uint64_t sub_2193BA344@<X0>(void *a1@<X8>)
{
  sub_218855280(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((*v1 >> 58) & 0x3C | (*v1 >> 1) & 3) == 0x11)
  {
    v8 = swift_projectBox();
    (*(v5 + 16))(v7, v8, v4);
    sub_2193BBBE8(0);
    v10 = v9;
    sub_219BEE474();
    sub_219BEE484();
    (*(v5 + 8))(v7, v4);
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  else
  {
    sub_2193BBBE8(0);
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t sub_2193BA520@<X0>(uint64_t a1@<X8>)
{
  v119 = a1;
  v111 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v111);
  v112 = &v96 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v109);
  v110 = &v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v108 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v107 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v106 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v9 - 8);
  v105 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v11 - 8);
  v104 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v102);
  v103 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218855280(0);
  v100 = *(v14 - 8);
  v101 = v14;
  MEMORY[0x28223BE20](v14);
  v99 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SuggestionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v16 - 8);
  v98 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v18 - 8);
  v97 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v20 - 8);
  v96 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TrendingTodayFeedGroup(0);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v96 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v96 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_219BDDCF4();
  v50 = *(v49 - 8);
  v115 = v49;
  v116 = v50;
  MEMORY[0x28223BE20](v49);
  v118 = &v96 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_219BED8D4();
  v53 = *(v52 - 8);
  v113 = v52;
  v114 = v53;
  MEMORY[0x28223BE20](v52);
  v117 = &v96 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v96 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((v58 >> 58) & 0x3C | (v58 >> 1) & 3)
  {
    case 1uLL:
      v82 = swift_projectBox();
      sub_21885AC00(v82, v57, type metadata accessor for CuratedTodayFeedGroup);
      (*(v114 + 16))(v117, v57, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF0], v115);
      v65 = v119;
      sub_219BDE264();
      v70 = type metadata accessor for CuratedTodayFeedGroup;
      v71 = v57;
      goto LABEL_27;
    case 2uLL:
      v69 = swift_projectBox();
      sub_21885AC00(v69, v48, type metadata accessor for NewspaperTodayFeedGroup);
      (*(v114 + 16))(v117, v48, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v70 = type metadata accessor for NewspaperTodayFeedGroup;
      v71 = v48;
      goto LABEL_27;
    case 3uLL:
      v75 = swift_projectBox();
      sub_21885AC00(v75, v45, type metadata accessor for LocalNewsTodayFeedGroup);
      (*(v114 + 16))(v117, v45, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v76 = v119;
      sub_219BDE264();
      sub_21885ACD0(v45, type metadata accessor for LocalNewsTodayFeedGroup);
      v77 = sub_219BDE274();
      return (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
    case 4uLL:
      v68 = swift_projectBox();
      sub_21885AC00(v68, v42, type metadata accessor for TrendingTodayFeedGroup);
      (*(v114 + 16))(v117, v42, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v66 = type metadata accessor for TrendingTodayFeedGroup;
      goto LABEL_26;
    case 5uLL:
      v79 = swift_projectBox();
      sub_21885AC00(v79, v39, type metadata accessor for ForYouTodayFeedGroup);
      (*(v114 + 16))(v117, v39, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF0], v115);
      v65 = v119;
      sub_219BDE264();
      v70 = type metadata accessor for ForYouTodayFeedGroup;
      v71 = v39;
      goto LABEL_27;
    case 6uLL:
      v83 = swift_projectBox();
      sub_21885AC00(v83, v36, type metadata accessor for MissedStoriesTodayFeedGroup);
      (*(v114 + 16))(v117, v36, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v70 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v71 = v36;
      goto LABEL_27;
    case 7uLL:
      v87 = swift_projectBox();
      sub_21885AC00(v87, v33, type metadata accessor for LatestStoriesTodayFeedGroup);
      (*(v114 + 16))(v117, v33, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v70 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v71 = v33;
      goto LABEL_27;
    case 8uLL:
      v80 = swift_projectBox();
      sub_21885AC00(v80, v30, type metadata accessor for MoreForYouTodayFeedGroup);
      (*(v114 + 16))(v117, v30, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v70 = type metadata accessor for MoreForYouTodayFeedGroup;
      v71 = v30;
      goto LABEL_27;
    case 9uLL:
      v81 = swift_projectBox();
      sub_21885AC00(v81, v27, type metadata accessor for TopicTodayFeedGroup);
      (*(v114 + 16))(v117, v27, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v70 = type metadata accessor for TopicTodayFeedGroup;
      v71 = v27;
      goto LABEL_27;
    case 0xBuLL:
      v86 = swift_projectBox();
      sub_21885AC00(v86, v24, type metadata accessor for NewFollowTodayFeedGroup);
      (*(v114 + 16))(v117, v24, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v70 = type metadata accessor for NewFollowTodayFeedGroup;
      v71 = v24;
      goto LABEL_27;
    case 0xCuLL:
      v88 = swift_projectBox();
      v42 = v96;
      sub_21885AC00(v88, v96, type metadata accessor for SubscriptionTodayFeedGroup);
      (*(v114 + 16))(v117, v42, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v66 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_26;
    case 0xEuLL:
      v74 = swift_projectBox();
      v42 = v97;
      sub_21885AC00(v74, v97, type metadata accessor for SpotlightTodayFeedGroup);
      (*(v114 + 16))(v117, v42, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v66 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_26;
    case 0xFuLL:
      v73 = swift_projectBox();
      v42 = v98;
      sub_21885AC00(v73, v98, type metadata accessor for SuggestionTodayFeedGroup);
      (*(v114 + 16))(v117, v42, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v66 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_26;
    case 0x11uLL:
      v92 = swift_projectBox();
      v94 = v100;
      v93 = v101;
      v95 = v99;
      (*(v100 + 16))(v99, v92, v101);
      sub_219BEE474();
      sub_2193BA520(v119);

      return (*(v94 + 8))(v95, v93);
    case 0x12uLL:
      v64 = swift_projectBox();
      v42 = v103;
      sub_21885AC00(v64, v103, type metadata accessor for SharedWithYouTodayFeedGroup);
      (*(v114 + 16))(v117, &v42[*(v102 + 20)], v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v66 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_26;
    case 0x14uLL:
      v89 = swift_projectBox();
      v42 = v104;
      sub_21885AC00(v89, v104, type metadata accessor for MySportsTodayFeedGroup);
      (*(v114 + 16))(v117, v42, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v66 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_26;
    case 0x15uLL:
      v90 = swift_projectBox();
      v42 = v105;
      sub_21885AC00(v90, v105, type metadata accessor for IntroToSportsTodayFeedGroup);
      (*(v114 + 16))(v117, v42, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v66 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_26;
    case 0x17uLL:
      v84 = swift_projectBox();
      v42 = v106;
      sub_21885AC00(v84, v106, type metadata accessor for ChannelTodayFeedGroup);
      (*(v114 + 16))(v117, v42, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v66 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_26;
    case 0x18uLL:
      v78 = swift_projectBox();
      v42 = v107;
      sub_21885AC00(v78, v107, type metadata accessor for SavedStoriesTodayFeedGroup);
      (*(v114 + 16))(v117, v42, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v66 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_26;
    case 0x19uLL:
      v85 = swift_projectBox();
      v42 = v108;
      sub_21885AC00(v85, v108, type metadata accessor for ChannelPickerTodayFeedGroup);
      (*(v114 + 16))(v117, v42, v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v66 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_26;
    case 0x1BuLL:
      v72 = swift_projectBox();
      v42 = v110;
      sub_21885AC00(v72, v110, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      (*(v114 + 16))(v117, &v42[*(v109 + 20)], v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v66 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      goto LABEL_26;
    case 0x1CuLL:
      v67 = swift_projectBox();
      v42 = v112;
      sub_21885AC00(v67, v112, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      (*(v114 + 16))(v117, &v42[*(v111 + 20)], v113);
      (*(v116 + 104))(v118, *MEMORY[0x277D2FCF8], v115);
      v65 = v119;
      sub_219BDE264();
      v66 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
LABEL_26:
      v70 = v66;
      v71 = v42;
LABEL_27:
      sub_21885ACD0(v71, v70);
      v91 = sub_219BDE274();
      result = (*(*(v91 - 8) + 56))(v65, 0, 1, v91);
      break;
    default:
      v59 = sub_219BDE274();
      v60 = *(*(v59 - 8) + 56);
      v61 = v59;
      v62 = v119;

      result = v60(v62, 1, 1, v61);
      break;
  }

  return result;
}

unint64_t sub_2193BBB60()
{
  result = qword_280E8EF28;
  if (!qword_280E8EF28)
  {
    sub_2193BBC54(255, &unk_280E8EF30, MEMORY[0x277D322A0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EF28);
  }

  return result;
}

void sub_2193BBBE8(uint64_t a1)
{
  if (!qword_27CC19A90)
  {
    sub_219BEEA64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC19A90);
    }
  }
}

void sub_2193BBC54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2193BBCB8(unint64_t a1, unint64_t a2)
{
  v425 = a2;
  v426 = a1;
  v2 = type metadata accessor for RecommendedIssuesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v2 - 8);
  v423 = (&v354 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v424 = (&v354 - v5);
  v6 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v421 = (&v354 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v422 = (&v354 - v9);
  v416 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v416);
  v420 = &v354 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v419 = &v354 - v12;
  v13 = type metadata accessor for TrendingMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v13 - 8);
  v418 = &v354 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v417 = &v354 - v16;
  v17 = type metadata accessor for BestOfBundleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v17 - 8);
  v415 = &v354 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v414 = &v354 - v20;
  v21 = type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v21 - 8);
  v413 = &v354 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v412 = &v354 - v24;
  v406 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v406);
  v411 = &v354 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v410 = &v354 - v27;
  v404 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v404);
  v409 = &v354 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v408 = &v354 - v30;
  v31 = type metadata accessor for FoodTodayFeedGroup(0);
  MEMORY[0x28223BE20](v31 - 8);
  v403 = &v354 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v402 = &v354 - v34;
  v399 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v399);
  v405 = (&v354 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v36);
  v407 = (&v354 - v37);
  v38 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v38 - 8);
  v401 = &v354 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v400 = &v354 - v41;
  v42 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v42 - 8);
  v398 = &v354 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v397 = &v354 - v45;
  v46 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v46 - 8);
  v396 = &v354 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v395 = &v354 - v49;
  v50 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v50 - 8);
  v394 = &v354 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v393 = &v354 - v53;
  v54 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v54 - 8);
  v392 = &v354 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v391 = &v354 - v57;
  v58 = type metadata accessor for EngagementTodayFeedGroup(0);
  MEMORY[0x28223BE20](v58 - 8);
  v390 = &v354 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v389 = &v354 - v61;
  v386 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v386);
  v388 = &v354 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v387 = &v354 - v64;
  sub_218855280(0);
  v385 = v65;
  v384 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v381 = &v354 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v380 = &v354 - v68;
  v69 = type metadata accessor for SeenContentMarkTodayFeedGroup(0);
  MEMORY[0x28223BE20](v69 - 8);
  v383 = &v354 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v382 = &v354 - v72;
  v73 = type metadata accessor for SuggestionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v73 - 8);
  v379 = &v354 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v378 = &v354 - v76;
  v77 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v77 - 8);
  v377 = &v354 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v376 = &v354 - v80;
  v375 = sub_219BED544();
  v374 = *(v375 - 8);
  MEMORY[0x28223BE20](v375);
  v373 = &v354 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v372 = &v354 - v83;
  v84 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v84 - 8);
  v369 = &v354 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v367 = &v354 - v87;
  v88 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v88 - 8);
  v371 = &v354 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90);
  v370 = &v354 - v91;
  sub_218855330(0);
  v368 = v92;
  v366 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v365 = &v354 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v94);
  v364 = &v354 - v95;
  v96 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v96 - 8);
  v363 = &v354 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v98);
  v362 = &v354 - v99;
  v100 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v100 - 8);
  v361 = &v354 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v102);
  v360 = &v354 - v103;
  v104 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v104 - 8);
  v359 = &v354 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v106);
  v358 = &v354 - v107;
  v108 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v108 - 8);
  v357 = &v354 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v110);
  v356 = &v354 - v111;
  v112 = type metadata accessor for ForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v112 - 8);
  v355 = &v354 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v114);
  v354 = &v354 - v115;
  v116 = type metadata accessor for TrendingTodayFeedGroup(0);
  MEMORY[0x28223BE20](v116 - 8);
  v118 = &v354 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v119);
  v121 = &v354 - v120;
  v122 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v122 - 8);
  v124 = &v354 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v125);
  v127 = &v354 - v126;
  v128 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v128 - 8);
  v130 = &v354 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v131);
  v133 = &v354 - v132;
  v134 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v134 - 8);
  v136 = &v354 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v137);
  v139 = &v354 - v138;
  v140 = type metadata accessor for TodaySectionGapDescriptor(0);
  MEMORY[0x28223BE20](v140 - 8);
  v142 = &v354 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v143);
  v145 = &v354 - v144;
  switch((v426 >> 58) & 0x3C | (v426 >> 1) & 3)
  {
    case 1uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 1)
      {
        goto LABEL_184;
      }

      v242 = swift_projectBox();
      v243 = swift_projectBox();
      sub_21885AC00(v242, v139, type metadata accessor for CuratedTodayFeedGroup);
      sub_21885AC00(v243, v136, type metadata accessor for CuratedTodayFeedGroup);
      v150 = sub_219BED814();
      v174 = type metadata accessor for CuratedTodayFeedGroup;
      v225 = type metadata accessor for CuratedTodayFeedGroup;
      v244 = v136;
      goto LABEL_129;
    case 2uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 2)
      {
        goto LABEL_184;
      }

      v222 = swift_projectBox();
      v223 = swift_projectBox();
      sub_21885AC00(v222, v133, type metadata accessor for NewspaperTodayFeedGroup);
      sub_21885AC00(v223, v130, type metadata accessor for NewspaperTodayFeedGroup);
      v150 = sub_219BED814();
      v224 = type metadata accessor for NewspaperTodayFeedGroup;
      v225 = type metadata accessor for NewspaperTodayFeedGroup;
      v226 = v130;
      goto LABEL_177;
    case 3uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 3)
      {
        goto LABEL_184;
      }

      v233 = swift_projectBox();
      v234 = swift_projectBox();
      sub_21885AC00(v233, v127, type metadata accessor for LocalNewsTodayFeedGroup);
      sub_21885AC00(v234, v124, type metadata accessor for LocalNewsTodayFeedGroup);
      v150 = sub_219BED814();
      v225 = type metadata accessor for LocalNewsTodayFeedGroup;
      sub_21885ACD0(v124, type metadata accessor for LocalNewsTodayFeedGroup);
      v235 = v127;
      goto LABEL_178;
    case 4uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 4)
      {
        goto LABEL_184;
      }

      v191 = swift_projectBox();
      v192 = swift_projectBox();
      sub_21885AC00(v191, v121, type metadata accessor for TrendingTodayFeedGroup);
      sub_21885AC00(v192, v118, type metadata accessor for TrendingTodayFeedGroup);
      v193 = sub_219BED784();
      v195 = v194;
      if (v193 == sub_219BED784() && v195 == v196)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v225 = type metadata accessor for TrendingTodayFeedGroup;
      sub_21885ACD0(v118, type metadata accessor for TrendingTodayFeedGroup);
      v235 = v121;
      goto LABEL_178;
    case 5uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 5)
      {
        goto LABEL_184;
      }

      v265 = swift_projectBox();
      v266 = swift_projectBox();
      v133 = v354;
      sub_21885AC00(v265, v354, type metadata accessor for ForYouTodayFeedGroup);
      v153 = v355;
      sub_21885AC00(v266, v355, type metadata accessor for ForYouTodayFeedGroup);
      v267 = sub_219BED784();
      v269 = v268;
      if (v267 == sub_219BED784() && v269 == v270)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for ForYouTodayFeedGroup;
      goto LABEL_176;
    case 6uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 6)
      {
        goto LABEL_184;
      }

      v280 = swift_projectBox();
      v281 = swift_projectBox();
      v133 = v356;
      sub_21885AC00(v280, v356, type metadata accessor for MissedStoriesTodayFeedGroup);
      v153 = v357;
      sub_21885AC00(v281, v357, type metadata accessor for MissedStoriesTodayFeedGroup);
      v282 = sub_219BED784();
      v284 = v283;
      if (v282 == sub_219BED784() && v284 == v285)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for MissedStoriesTodayFeedGroup;
      goto LABEL_176;
    case 7uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 7)
      {
        goto LABEL_184;
      }

      v236 = swift_projectBox();
      v237 = swift_projectBox();
      v133 = v358;
      sub_21885AC00(v236, v358, type metadata accessor for LatestStoriesTodayFeedGroup);
      v153 = v359;
      sub_21885AC00(v237, v359, type metadata accessor for LatestStoriesTodayFeedGroup);
      v238 = sub_219BED784();
      v240 = v239;
      if (v238 == sub_219BED784() && v240 == v241)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_176;
    case 8uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 8)
      {
        goto LABEL_184;
      }

      v296 = swift_projectBox();
      v297 = swift_projectBox();
      v133 = v360;
      sub_21885AC00(v296, v360, type metadata accessor for MoreForYouTodayFeedGroup);
      v153 = v361;
      sub_21885AC00(v297, v361, type metadata accessor for MoreForYouTodayFeedGroup);
      v298 = sub_219BED784();
      v300 = v299;
      if (v298 == sub_219BED784() && v300 == v301)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_176;
    case 9uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 9)
      {
        goto LABEL_184;
      }

      v200 = swift_projectBox();
      v201 = swift_projectBox();
      v133 = v362;
      sub_21885AC00(v200, v362, type metadata accessor for TopicTodayFeedGroup);
      v153 = v363;
      sub_21885AC00(v201, v363, type metadata accessor for TopicTodayFeedGroup);
      v202 = sub_219BED784();
      v204 = v203;
      if (v202 == sub_219BED784() && v204 == v205)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_176;
    case 0xAuLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0xA)
      {
        goto LABEL_184;
      }

      v292 = swift_projectBox();
      v293 = swift_projectBox();
      v253 = v366;
      v294 = *(v366 + 16);
      v255 = v364;
      v256 = v368;
      v294(v364, v292, v368);
      v257 = v365;
      v294(v365, v293, v256);
      type metadata accessor for MagazineFeedGroup(0);
      sub_21885E3D4(&unk_280ED5DE0, type metadata accessor for MagazineFeedGroup, &unk_219C2DEC0);
      sub_21885E3D4(&unk_280ED5E00, type metadata accessor for MagazineFeedGroup, &unk_219C2DE98);
      v258 = sub_219BEDE44();
      goto LABEL_93;
    case 0xBuLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0xB)
      {
        goto LABEL_184;
      }

      v185 = swift_projectBox();
      v186 = swift_projectBox();
      v133 = v370;
      sub_21885AC00(v185, v370, type metadata accessor for NewFollowTodayFeedGroup);
      v153 = v371;
      sub_21885AC00(v186, v371, type metadata accessor for NewFollowTodayFeedGroup);
      v187 = sub_219BED784();
      v189 = v188;
      if (v187 == sub_219BED784() && v189 == v190)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_176;
    case 0xCuLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0xC)
      {
        goto LABEL_184;
      }

      v197 = swift_projectBox();
      v198 = swift_projectBox();
      v139 = v367;
      sub_21885AC00(v197, v367, type metadata accessor for SubscriptionTodayFeedGroup);
      v199 = v198;
      v173 = v369;
      sub_21885AC00(v199, v369, type metadata accessor for SubscriptionTodayFeedGroup);
      v150 = sub_219BED814();
      v174 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_128;
    case 0xDuLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0xD)
      {
        goto LABEL_184;
      }

      v277 = swift_projectBox();
      v278 = swift_projectBox();
      v253 = v374;
      v279 = *(v374 + 16);
      v255 = v372;
      v256 = v375;
      v279(v372, v277, v375);
      v257 = v373;
      v279(v373, v278, v256);
      v258 = sub_219BED514();
      goto LABEL_93;
    case 0xEuLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0xE)
      {
        goto LABEL_184;
      }

      v170 = swift_projectBox();
      v171 = swift_projectBox();
      v139 = v376;
      sub_21885AC00(v170, v376, type metadata accessor for SpotlightTodayFeedGroup);
      v172 = v171;
      v173 = v377;
      sub_21885AC00(v172, v377, type metadata accessor for SpotlightTodayFeedGroup);
      v150 = sub_219BED814();
      v174 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_128;
    case 0xFuLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0xF)
      {
        goto LABEL_184;
      }

      v227 = swift_projectBox();
      v228 = swift_projectBox();
      v133 = v378;
      sub_21885AC00(v227, v378, type metadata accessor for SuggestionTodayFeedGroup);
      v153 = v379;
      sub_21885AC00(v228, v379, type metadata accessor for SuggestionTodayFeedGroup);
      v229 = sub_219BED784();
      v231 = v230;
      if (v229 == sub_219BED784() && v231 == v232)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_176;
    case 0x10uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x10)
      {
        goto LABEL_184;
      }

      v164 = swift_projectBox();
      v165 = swift_projectBox();
      v133 = v382;
      sub_21885AC00(v164, v382, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v153 = v383;
      sub_21885AC00(v165, v383, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v166 = sub_219BED784();
      v168 = v167;
      if (v166 == sub_219BED784() && v168 == v169)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_176;
    case 0x11uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x11)
      {
        goto LABEL_184;
      }

      v251 = swift_projectBox();
      v252 = swift_projectBox();
      v253 = v384;
      v254 = *(v384 + 16);
      v255 = v380;
      v256 = v385;
      v254(v380, v251, v385);
      v257 = v381;
      v254(v381, v252, v256);
      sub_2188552DC();
      v258 = sub_219BEE454();
LABEL_93:
      v150 = v258;
      v295 = *(v253 + 8);
      v295(v257, v256);
      v295(v255, v256);
      return v150 & 1;
    case 0x12uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x12)
      {
        goto LABEL_184;
      }

      v286 = swift_projectBox();
      v287 = swift_projectBox();
      v133 = v387;
      sub_21885AC00(v286, v387, type metadata accessor for SharedWithYouTodayFeedGroup);
      v153 = v388;
      sub_21885AC00(v287, v388, type metadata accessor for SharedWithYouTodayFeedGroup);
      v288 = sub_219BED784();
      v290 = v289;
      if (v288 == sub_219BED784() && v290 == v291)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_176;
    case 0x13uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x13)
      {
        goto LABEL_184;
      }

      v320 = swift_projectBox();
      v321 = swift_projectBox();
      v322 = v389;
      sub_21885AC00(v320, v389, type metadata accessor for EngagementTodayFeedGroup);
      v323 = v390;
      sub_21885AC00(v321, v390, type metadata accessor for EngagementTodayFeedGroup);
      sub_2186F687C(0);
      sub_219BEDD14();
      v325 = v427;
      v324 = v428;

      sub_219BEDD14();
      v327 = v427;
      v326 = v428;

      if (v325 == v327 && v324 == v326)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v225 = type metadata accessor for EngagementTodayFeedGroup;
      sub_21885ACD0(v323, type metadata accessor for EngagementTodayFeedGroup);
      v235 = v322;
      goto LABEL_178;
    case 0x14uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x14)
      {
        goto LABEL_184;
      }

      v259 = swift_projectBox();
      v260 = swift_projectBox();
      v133 = v391;
      sub_21885AC00(v259, v391, type metadata accessor for MySportsTodayFeedGroup);
      v153 = v392;
      sub_21885AC00(v260, v392, type metadata accessor for MySportsTodayFeedGroup);
      v261 = sub_219BED784();
      v263 = v262;
      if (v261 == sub_219BED784() && v263 == v264)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_176;
    case 0x15uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x15)
      {
        goto LABEL_184;
      }

      v271 = swift_projectBox();
      v272 = swift_projectBox();
      v133 = v393;
      sub_21885AC00(v271, v393, type metadata accessor for IntroToSportsTodayFeedGroup);
      v153 = v394;
      sub_21885AC00(v272, v394, type metadata accessor for IntroToSportsTodayFeedGroup);
      v273 = sub_219BED784();
      v275 = v274;
      if (v273 == sub_219BED784() && v275 == v276)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_176;
    case 0x16uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x16)
      {
        goto LABEL_184;
      }

      v314 = swift_projectBox();
      v315 = swift_projectBox();
      v133 = v395;
      sub_21885AC00(v314, v395, type metadata accessor for ShortcutsTodayFeedGroup);
      v153 = v396;
      sub_21885AC00(v315, v396, type metadata accessor for ShortcutsTodayFeedGroup);
      v316 = sub_219BED784();
      v318 = v317;
      if (v316 == sub_219BED784() && v318 == v319)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_176;
    case 0x17uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x17)
      {
        goto LABEL_184;
      }

      v328 = swift_projectBox();
      v329 = swift_projectBox();
      v133 = v397;
      sub_21885AC00(v328, v397, type metadata accessor for ChannelTodayFeedGroup);
      v153 = v398;
      sub_21885AC00(v329, v398, type metadata accessor for ChannelTodayFeedGroup);
      v330 = sub_219BED784();
      v332 = v331;
      if (v330 == sub_219BED784() && v332 == v333)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_176;
    case 0x18uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x18)
      {
        goto LABEL_184;
      }

      v216 = swift_projectBox();
      v217 = swift_projectBox();
      v133 = v400;
      sub_21885AC00(v216, v400, type metadata accessor for SavedStoriesTodayFeedGroup);
      v153 = v401;
      sub_21885AC00(v217, v401, type metadata accessor for SavedStoriesTodayFeedGroup);
      v218 = sub_219BED784();
      v220 = v219;
      if (v218 == sub_219BED784() && v220 == v221)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_176;
    case 0x19uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x19)
      {
        goto LABEL_184;
      }

      v206 = swift_projectBox();
      v207 = swift_projectBox();
      v160 = v407;
      sub_21885AC00(v206, v407, type metadata accessor for ChannelPickerTodayFeedGroup);
      v161 = v405;
      sub_21885AC00(v207, v405, type metadata accessor for ChannelPickerTodayFeedGroup);
      v208 = *(v399 + 20);
      v209 = *(v160 + v208);
      v210 = *(v160 + v208 + 8);
      v211 = (v161 + v208);
      if ((v209 != *v211 || v210 != v211[1]) && (sub_219BF78F4() & 1) == 0)
      {
        v351 = type metadata accessor for ChannelPickerTodayFeedGroup;
        goto LABEL_183;
      }

      v212 = sub_219BED784();
      v214 = v213;
      if (v212 == sub_219BED784() && v214 == v215)
      {

        sub_21885ACD0(v161, type metadata accessor for ChannelPickerTodayFeedGroup);
        sub_21885ACD0(v160, type metadata accessor for ChannelPickerTodayFeedGroup);
        v150 = 1;
        return v150 & 1;
      }

      v350 = sub_219BF78F4();

      sub_21885ACD0(v161, type metadata accessor for ChannelPickerTodayFeedGroup);
      sub_21885ACD0(v160, type metadata accessor for ChannelPickerTodayFeedGroup);
      if (v350)
      {
        goto LABEL_180;
      }

      goto LABEL_184;
    case 0x1AuLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x1A)
      {
        goto LABEL_184;
      }

      v346 = swift_projectBox();
      v347 = swift_projectBox();
      v139 = v402;
      sub_21885AC00(v346, v402, type metadata accessor for FoodTodayFeedGroup);
      v348 = v347;
      v173 = v403;
      sub_21885AC00(v348, v403, type metadata accessor for FoodTodayFeedGroup);
      v150 = sub_219BED814();
      v174 = type metadata accessor for FoodTodayFeedGroup;
LABEL_128:
      v225 = v174;
      v244 = v173;
LABEL_129:
      sub_21885ACD0(v244, v174);
      v235 = v139;
      goto LABEL_178;
    case 0x1BuLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x1B)
      {
        goto LABEL_184;
      }

      v151 = swift_projectBox();
      v152 = swift_projectBox();
      v133 = v408;
      sub_21885AC00(v151, v408, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v153 = v409;
      sub_21885AC00(v152, v409, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v154 = sub_219BED784();
      v156 = v155;
      if (v154 == sub_219BED784() && v156 == v157)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      goto LABEL_176;
    case 0x1CuLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x1C)
      {
        goto LABEL_184;
      }

      v334 = swift_projectBox();
      v335 = swift_projectBox();
      v133 = v410;
      sub_21885AC00(v334, v410, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v153 = v411;
      sub_21885AC00(v335, v411, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v336 = sub_219BED784();
      v338 = v337;
      if (v336 == sub_219BED784() && v338 == v339)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_176;
    case 0x1DuLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x1D)
      {
        goto LABEL_184;
      }

      v340 = swift_projectBox();
      v341 = swift_projectBox();
      v133 = v412;
      sub_21885AC00(v340, v412, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v153 = v413;
      sub_21885AC00(v341, v413, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v342 = sub_219BED784();
      v344 = v343;
      if (v342 == sub_219BED784() && v344 == v345)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_176;
    case 0x1EuLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x1E)
      {
        goto LABEL_184;
      }

      v302 = swift_projectBox();
      v303 = swift_projectBox();
      v133 = v414;
      sub_21885AC00(v302, v414, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v153 = v415;
      sub_21885AC00(v303, v415, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v304 = sub_219BED784();
      v306 = v305;
      if (v304 == sub_219BED784() && v306 == v307)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_176;
    case 0x1FuLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x1F)
      {
        goto LABEL_184;
      }

      v245 = swift_projectBox();
      v246 = swift_projectBox();
      v133 = v417;
      sub_21885AC00(v245, v417, type metadata accessor for TrendingMagazineFeedGroup);
      v153 = v418;
      sub_21885AC00(v246, v418, type metadata accessor for TrendingMagazineFeedGroup);
      v247 = sub_219BED784();
      v249 = v248;
      if (v247 == sub_219BED784() && v249 == v250)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_176;
    case 0x20uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x20)
      {
        goto LABEL_184;
      }

      v308 = swift_projectBox();
      v309 = swift_projectBox();
      v133 = v419;
      sub_21885AC00(v308, v419, type metadata accessor for NewIssueMagazineFeedGroup);
      v153 = v420;
      sub_21885AC00(v309, v420, type metadata accessor for NewIssueMagazineFeedGroup);
      v310 = sub_219BED784();
      v312 = v311;
      if (v310 == sub_219BED784() && v312 == v313)
      {
        v150 = 1;
      }

      else
      {
        v150 = sub_219BF78F4();
      }

      v224 = type metadata accessor for NewIssueMagazineFeedGroup;
LABEL_176:
      v225 = v224;
      v226 = v153;
LABEL_177:
      sub_21885ACD0(v226, v224);
      v235 = v133;
LABEL_178:
      sub_21885ACD0(v235, v225);
      return v150 & 1;
    case 0x21uLL:
      sub_2186EBC7C(0);
      v176 = v175;
      v177 = swift_projectBox();
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x21)
      {
        goto LABEL_184;
      }

      v178 = *(v176 + 48);
      v179 = *(v177 + v178);
      v180 = v177;
      v181 = swift_projectBox();
      v182 = *(v181 + v178);
      v183 = v422;
      sub_21885AC00(v180, v422, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v184 = v421;
      sub_21885AC00(v181, v421, type metadata accessor for MyMagazinesMagazineFeedGroup);
      if (*v183 == *v184 && v183[1] == v184[1])
      {
        sub_21885ACD0(v184, type metadata accessor for MyMagazinesMagazineFeedGroup);
        sub_21885ACD0(v183, type metadata accessor for MyMagazinesMagazineFeedGroup);
      }

      else
      {
        v349 = sub_219BF78F4();
        sub_21885ACD0(v184, type metadata accessor for MyMagazinesMagazineFeedGroup);
        sub_21885ACD0(v183, type metadata accessor for MyMagazinesMagazineFeedGroup);
        if ((v349 & 1) == 0)
        {
          goto LABEL_184;
        }
      }

      v150 = v179 == v182;
      return v150 & 1;
    case 0x22uLL:
      if (((v425 >> 58) & 0x3C | (v425 >> 1) & 3) != 0x22)
      {
        goto LABEL_184;
      }

      v158 = swift_projectBox();
      v159 = swift_projectBox();
      v160 = v424;
      sub_21885AC00(v158, v424, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v161 = v423;
      sub_21885AC00(v159, v423, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      if (*v160 == *v161 && v160[1] == v161[1] || (sub_219BF78F4() & 1) != 0)
      {
        sub_218C0FAB8(v161[8], v160[8]);
        v163 = v162;
        sub_21885ACD0(v161, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
        sub_21885ACD0(v160, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
        if (v163)
        {
LABEL_180:
          v150 = 1;
          return v150 & 1;
        }
      }

      else
      {
        v351 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
LABEL_183:
        v352 = v351;
        sub_21885ACD0(v161, v351);
        sub_21885ACD0(v160, v352);
      }

LABEL_184:
      v150 = 0;
      return v150 & 1;
    default:
      if ((v425 >> 58) & 0x3C | (v425 >> 1) & 3)
      {
        goto LABEL_184;
      }

      v146 = swift_projectBox();
      v147 = swift_projectBox();
      sub_21885AC00(v146, v145, type metadata accessor for TodaySectionGapDescriptor);
      sub_21885AC00(v147, v142, type metadata accessor for TodaySectionGapDescriptor);
      v148 = sub_219985C28(v145, v142);
      v149 = v142;
      v150 = v148;
      sub_21885ACD0(v149, type metadata accessor for TodaySectionGapDescriptor);
      sub_21885ACD0(v145, type metadata accessor for TodaySectionGapDescriptor);
      return v150 & 1;
  }
}