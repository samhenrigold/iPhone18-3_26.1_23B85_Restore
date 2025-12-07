void sub_218825DB8(uint64_t a1)
{
  if (!qword_280E8E038)
  {
    sub_2186D6710(255, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E038);
    }
  }
}

uint64_t sub_218825E4C(uint64_t a1)
{
  swift_getObjectType();
  sub_219BF6A64();
  sub_219BE3204();
  v1 = sub_219BE2E54();
  sub_219BE2F74();

  v2 = sub_219BE2E54();
  sub_219BE3064();

  v3 = sub_219BE31C4();

  return v3;
}

uint64_t sub_218825FD4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_218826068;

  return MEMORY[0x2821D0E90]();
}

uint64_t sub_218826068(char a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_218826168, 0, 0);
}

_BYTE *sub_21882618C@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

NSObject *sub_2188261C0(id *a1, uint64_t a2, char a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (a3)
  {
    v6 = [*a1 respondsToSelector_];
    swift_unknownObjectRetain();
    if ((v6 & 1) == 0 || ([v4 isSportsSyncingSupported] & 1) == 0)
    {
      if (qword_280EE6038 != -1)
      {
        swift_once();
      }

      v7 = sub_219BE5434();
      __swift_project_value_buffer(v7, qword_280F62730);
      v8 = sub_219BE5414();
      v9 = sub_219BF61F4();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_40;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v40 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_2186D1058(0x73696C6863746177, 0xE900000000000074, &v40);
      _os_log_impl(&dword_2186C1000, v8, v9, "Sports sync manager '%{public}s' no access due to app config disabling syncing", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x21CECF960](v11, -1, -1);
      v12 = v10;
LABEL_39:
      MEMORY[0x21CECF960](v12, -1, -1);
LABEL_40:

      sub_218826838();
      swift_allocError();
      swift_willThrow();
      swift_unknownObjectRelease();
      return v8;
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  sub_219BE20E4();
  v13 = v40;
  if (v40 != 1)
  {
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v22 = sub_219BE5434();
    __swift_project_value_buffer(v22, qword_280F62730);
    v8 = sub_219BE5414();
    v23 = sub_219BF61F4();
    if (!os_log_type_enabled(v8, v23))
    {
      goto LABEL_40;
    }

    v16 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40 = v24;
    *v16 = 136446466;
    if (a3)
    {
      v25 = 0x73696C6863746177;
    }

    else
    {
      v25 = 1937204590;
    }

    if (a3)
    {
      v26 = 0xE900000000000074;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    v27 = sub_2186D1058(v25, v26, &v40);

    *(v16 + 4) = v27;
    *(v16 + 12) = 2082;
    if (v13)
    {
      v28 = 0x754F64656E676973;
    }

    else
    {
      v28 = 0x6D72657465646E75;
    }

    if (v13)
    {
      v29 = 0xE900000000000074;
    }

    else
    {
      v29 = 0xEC00000064656E69;
    }

    v30 = sub_2186D1058(v28, v29, &v40);

    *(v16 + 14) = v30;
    _os_log_impl(&dword_2186C1000, v8, v23, "Sports sync manager '%{public}s' no access due to iCloud account status '%{public}s'", v16, 0x16u);
    swift_arrayDestroy();
    v21 = v24;
LABEL_38:
    MEMORY[0x21CECF960](v21, -1, -1);
    v12 = v16;
    goto LABEL_39;
  }

  if ((a3 & 1) != 0 && v5 != 1)
  {
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v14 = sub_219BE5434();
    __swift_project_value_buffer(v14, qword_280F62730);
    v8 = sub_219BE5414();
    v15 = sub_219BF61F4();
    if (!os_log_type_enabled(v8, v15))
    {
      goto LABEL_40;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_2186D1058(0x73696C6863746177, 0xE900000000000074, &v40);
    *(v16 + 12) = 2082;
    if (v5)
    {
      v18 = 0x754F64656E676973;
    }

    else
    {
      v18 = 0x6D72657465646E75;
    }

    if (v5)
    {
      v19 = 0xE900000000000074;
    }

    else
    {
      v19 = 0xEC00000064656E69;
    }

    v20 = sub_2186D1058(v18, v19, &v40);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_2186C1000, v8, v15, "Sports sync manager '%{public}s' no access due to iTunes account status '%{public}s'", v16, 0x16u);
    swift_arrayDestroy();
    v21 = v17;
    goto LABEL_38;
  }

  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v32 = sub_219BE5434();
  __swift_project_value_buffer(v32, qword_280F62730);
  v33 = sub_219BE5414();
  v34 = sub_219BF6214();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40 = v36;
    *v35 = 136446210;
    if (a3)
    {
      v37 = 0x73696C6863746177;
    }

    else
    {
      v37 = 1937204590;
    }

    if (a3)
    {
      v38 = 0xE900000000000074;
    }

    else
    {
      v38 = 0xE400000000000000;
    }

    v39 = sub_2186D1058(v37, v38, &v40);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_2186C1000, v33, v34, "Sports sync manager '%{public}s' access allowed", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x21CECF960](v36, -1, -1);
    MEMORY[0x21CECF960](v35, -1, -1);
  }

  sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v8 = sub_219BE3014();
  swift_unknownObjectRelease();
  return v8;
}

unint64_t sub_218826838()
{
  result = qword_280EC6A48;
  if (!qword_280EC6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6A48);
  }

  return result;
}

void sub_21882688C(void *a1, const char *a2)
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F62730);
  v5 = a1;
  oslog = sub_219BE5414();
  v6 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = sub_219BF7A04();
    v11 = sub_2186D1058(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2186C1000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CECF960](v8, -1, -1);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_218826A40(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 104))(v2, &off_282A6CEF8, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218826AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v67 = a3;
  v62 = a1;
  sub_21880B9E0(0);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF0644();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v56 - v10;
  sub_21880B928(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_219BF11C4();
  v16 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v57 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v21);
  v63 = &v56 - v22;
  sub_2187DD4F0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v23);
  v25 = &v56 - v24;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v26 = qword_280F616D8;
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_219C09BA0;
  sub_218812314(v67, v25, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v28 = sub_219BF5484();
  v30 = v29;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_2186FC3BC();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v31 = sub_219BF6214();
  sub_219BE5314("Today interactor detected new subscriber with detection date: %{public}@", 72, 2, &dword_2186C1000, v26, v31, v27);

  v67 = v4;
  sub_219BE6EC4();
  v68 = v70;
  v32 = MEMORY[0x277D6D8B8];
  sub_21880BB54(0, &qword_280EE5520, MEMORY[0x277D6D8B8]);
  sub_21880BB10(&qword_280EE5530, &qword_280EE5520, v32, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v33 = sub_218827310();
  (*(v13 + 8))(v15, v12);
  if ((~v33 & 0xF000000000000007) != 0)
  {
    v40 = type metadata accessor for TodayFeedServiceConfig(0);
    v41 = sub_2187DF448();
    v42 = v61;
    v58 = v41;
    v59 = v40;
    sub_219BEE844();
    v70 = *__swift_project_boxed_opaque_existential_1((v62 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures), *(v62 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures + 24));
    v43 = off_282A442B8;
    type metadata accessor for OfflineFeatures();
    v44 = v43(0);
    v45 = v65;
    if (v44 == 6)
    {
      v46 = sub_219BF1AE4();
      v47 = v64;
      v48 = v60;
      if (v46)
      {
        v49 = MEMORY[0x277D32EF8];
      }

      else
      {
        v49 = MEMORY[0x277D32EF0];
      }

      (*(v64 + 104))(v60, *v49, v45);
    }

    else
    {
      v47 = v64;
      v48 = v60;
      (*(v64 + 104))(v60, *MEMORY[0x277D32EF0], v65);
    }

    sub_2187E1408(&qword_280E90ED0, MEMORY[0x277D32F00], MEMORY[0x277D32F18]);
    sub_219BF5874();
    sub_219BF5874();
    if (v70 == v68 && v71 == v69)
    {
      v50 = *(v47 + 8);
      v50(v48, v45);
      v50(v42, v45);

      v39 = MEMORY[0x277D331F8];
    }

    else
    {
      v51 = sub_219BF78F4();
      v52 = *(v47 + 8);
      v52(v48, v45);
      v52(v42, v45);

      if (v51)
      {
        v39 = MEMORY[0x277D331F8];
      }

      else
      {
        v39 = MEMORY[0x277D331E0];
      }
    }

    sub_219BEE844();
    v38.n128_f64[0] = sub_21885AB78(v33);
  }

  else
  {
    v34 = off_282A6CF18;
    type metadata accessor for TodayDataManager();
    v35 = v58;
    v34();
    v36 = sub_219BF1B14();
    sub_21880BA68(v35, sub_21880B9E0);
    v37 = MEMORY[0x277D32EF8];
    if ((v36 & 1) == 0)
    {
      v37 = MEMORY[0x277D32EF0];
    }

    v20 = v57;
    (*(v64 + 104))(v57, *v37, v65);
    v39 = MEMORY[0x277D331F8];
  }

  v53 = v66;
  (*(v16 + 104))(v20, *v39, v66, v38);
  v54 = v63;
  (*(v16 + 32))(v63, v20, v53);
  sub_218827434(v54);
  return (*(v16 + 8))(v54, v53);
}

uint64_t sub_218827310()
{
  sub_219BEEFF4();
  sub_219BEEFE4();
  sub_21880B928(0);
  sub_219BEB2B4();
  if (v3)
  {
    sub_219BEDC74();
    swift_dynamicCast();
  }

  else
  {
    sub_218744E0C(v2, sub_21880702C);
  }

  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2186EF984(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
  v0 = sub_219BEEFD4();

  return v0;
}

uint64_t sub_218827434(uint64_t a1)
{
  v2 = v1;
  sub_21880B9E0(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MastheadModelContext(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = off_282A6CF18;
  type metadata accessor for TodayDataManager();
  v11();
  v12 = sub_219BF1B14();
  sub_21880BA68(v6, sub_21880B9E0);
  v13 = MEMORY[0x277D85000];
  v14 = [*(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x120)) cachedSubscription];
  LOBYTE(v6) = [v14 isSubscribed];

  v15 = sub_218827700(v2);
  v16 = *(v8 + 36);
  v17 = sub_219BF11C4();
  (*(*(v17 - 8) + 16))(&v10[v16], a1, v17);
  v18 = (v2 + *((*v13 & *v2) + 0x100));
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v19 = sub_2187FF474(a1);
  *v10 = v12 & 1;
  v10[1] = v6;
  v10[2] = v15 & 1;
  v10[*(v8 + 40)] = v19 & 1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_21882783C(v10, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return sub_21880BA68(v10, type metadata accessor for MastheadModelContext);
}

uint64_t sub_218827700(void *a1)
{
  sub_21880B9E0(0);
  *&v3 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x150)) useOfflineMode])
  {
    v6 = off_282A6CF18;
    type metadata accessor for TodayDataManager();
    v6();
    v7 = sub_219BF1B44();
    sub_21880BA68(v5, sub_21880B9E0);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void *sub_21882783C(uint64_t a1, uint64_t a2)
{
  v4 = a2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadViewProviderDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = sub_2187E1408(&qword_280ECFA70, type metadata accessor for TodayViewController, &unk_219CA346C);
    (*(v5 + 32))(a2, v7, a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v8 = a2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_miniMastheadViewProviderDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    v10 = swift_getObjectType();
    v11 = sub_2187E1408(&qword_280ECFA70, type metadata accessor for TodayViewController, &unk_219CA346C);
    (*(v9 + 32))(a2, v11, a1, v10, v9);
    swift_unknownObjectRelease();
  }

  result = sub_21978A40C();
  if (result)
  {
    v14 = v13;
    v15 = swift_getObjectType();
    v16 = sub_2187E1408(&qword_280ECFA60, type metadata accessor for TodayViewController, &unk_219CA3028);
    v17 = type metadata accessor for MastheadModelContext(0);
    (*(v14 + 8))(a2, v16, a1 + *(v17 + 28), v15, v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_218827A40(uint64_t a1)
{
  v70 = a1;
  sub_21875D3C8(0);
  v3 = v2;
  v73 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218802370(0, &qword_280EE4768, MEMORY[0x277D6E2A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - v10;
  v12 = sub_219BE8DB4();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - v16;
  v18 = type metadata accessor for MastheadModelSupplementaryInfo(0);
  *&result = MEMORY[0x28223BE20](v18 - 8).n128_u64[0];
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model;
  v23 = *(v1 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model);
  if (((1 << (v23 >> 60)) & 0x1DE) == 0)
  {
    if (v23 >> 60)
    {
      v39 = v23 & 0xFFFFFFFFFFFFFFFLL;
      sub_218A6E4C8(0);
      v41 = v40;
      v68 = v39;
      v42 = swift_projectBox();
      v43 = (v42 + *(v41 + 48));
      v44 = *v43;
      v66 = v43[1];
      v67 = v44;
      v69 = v1;
      v45 = *(v73 + 16);
      v45(v5, v42, v3);
      v65 = swift_allocBox();
      v47 = v46;
      v48 = &v46[*(v41 + 48)];
      v49 = *(v41 + 64);
      v45(v46, v5, v3);
      v50 = v66;
      *v48 = v67;
      *(v48 + 1) = v50;
      v51 = v69;
      v47[v49] = *(v70 + 2);
      *(v51 + v22) = v65 | 0x5000000000000000;
      v52 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_lastLayoutOptions;
      swift_beginAccess();
      sub_218812294(v51 + v52, v8, &qword_280EE4768, MEMORY[0x277D6E2A8]);
      v54 = v71;
      v53 = v72;
      if ((*(v71 + 48))(v8, 1, v72) == 1)
      {
        v55 = *(v73 + 8);

        v55(v5, v3);
        sub_2188174B8(v8, &qword_280EE4768, MEMORY[0x277D6E2A8]);
      }

      else
      {
        (*(v54 + 32))(v14, v8, v53);
        v56 = v51 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadable;
        Strong = swift_unknownObjectWeakLoadStrong();
        v58 = v54;
        if (Strong)
        {
          v59 = Strong;
          v60 = *(v56 + 8);

          sub_218812E9C(v14, v59, v60);
          swift_unknownObjectRelease();
          (*(v58 + 8))(v14, v53);
        }

        else
        {
          v63 = v53;
          v64 = *(v54 + 8);

          v64(v14, v63);
        }

        (*(v73 + 8))(v5, v3);
      }
    }

    else
    {
      sub_2187FF18C(0);
      v25 = v24;
      v26 = swift_projectBox();
      v27 = *v26;
      sub_21881CF74(v26 + *(v25 + 64), v21, type metadata accessor for MastheadModelSupplementaryInfo);
      v28 = *(v1 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_featureAvailability);
      v29 = v23 & 0xFFFFFFFFFFFFFFFLL;

      if ([v28 useOfflineMode])
      {
        v73 = v29;
        v30 = swift_allocBox();
        v32 = v31;
        v33 = *(v25 + 48);
        v34 = v1;
        v35 = *(v25 + 64);
        *v31 = v27;
        sub_21881CF74(v70, v31 + v33, type metadata accessor for MastheadModelContext);
        sub_21881CF74(v21, v32 + v35, type metadata accessor for MastheadModelSupplementaryInfo);
        *(v34 + v22) = v30;

        v36 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_lastLayoutOptions;
        swift_beginAccess();
        sub_218812294(v34 + v36, v11, &qword_280EE4768, MEMORY[0x277D6E2A8]);
        v38 = v71;
        v37 = v72;
        if ((*(v71 + 48))(v11, 1, v72) == 1)
        {

          sub_218819144(v21, type metadata accessor for MastheadModelSupplementaryInfo);
          sub_2188174B8(v11, &qword_280EE4768, MEMORY[0x277D6E2A8]);
        }

        else
        {
          (*(v38 + 32))(v17, v11, v37);
          v61 = v34 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadable;
          v62 = swift_unknownObjectWeakLoadStrong();
          if (v62)
          {
            sub_218812E9C(v17, v62, *(v61 + 8));

            swift_unknownObjectRelease();
          }

          else
          {
          }

          (*(v38 + 8))(v17, v37);
          sub_218819144(v21, type metadata accessor for MastheadModelSupplementaryInfo);
        }
      }

      else
      {
        sub_218819144(v21, type metadata accessor for MastheadModelSupplementaryInfo);
      }
    }
  }

  return result;
}

uint64_t sub_21882814C()
{
  v1 = sub_219BF11C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v5 = sub_219BE5434();
  __swift_project_value_buffer(v5, qword_280F62790);
  v6 = v0;
  v7 = sub_219BE5414();
  v8 = sub_219BF6214();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_feedModeState;
    swift_beginAccess();
    (*(v2 + 16))(v4, &v6[v11], v1);
    v12 = sub_219BF11A4();
    v14 = v13;
    (*(v2 + 8))(v4, v1);
    v15 = sub_2186D1058(v12, v14, &v18);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_2186C1000, v7, v8, "OfflineStatusBannerDataManager updating desired feed mode with feedModeState: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  return MEMORY[0x21CEC15C0]();
}

char *sub_218828394(char *result, int64_t a2, char a3, char *a4)
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
    sub_2187C3D44(0, &unk_280E8B5B8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double sub_2188284AC(uint64_t a1, double a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  sub_219BE3494();

  return result;
}

void sub_218828578(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = Strong + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 8);
        swift_getObjectType();
        v6 = *(v5 + 24);
        v7 = v3;
        v6();

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_218828650()
{
  *(*v1 + 248) = v0;

  if (v0)
  {

    v2 = sub_219045BE0;
  }

  else
  {

    v2 = sub_218828F64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2188288BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v59 = a2;
  v57 = a8;
  v53 = a5;
  v54 = a7;
  v52 = a6;
  v15 = type metadata accessor for TodayExpandContext(0);
  v48[0] = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v48[1] = v16;
  v49 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BDBD34();
  v50 = *(v17 - 8);
  v51 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v21 = qword_280F616D8;
  sub_2186F20D4(0);
  v55 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v24 = MEMORY[0x277D83A80];
  *(v23 + 56) = MEMORY[0x277D839F8];
  *(v23 + 64) = v24;
  *(v23 + 32) = v25;
  v26 = MEMORY[0x277D837D0];
  *(v23 + 96) = MEMORY[0x277D837D0];
  v27 = sub_2186FC3BC();
  *(v23 + 104) = v27;
  v58 = a3;
  *(v23 + 72) = a3;
  *(v23 + 80) = a4;
  v62[0] = v20;
  sub_21881F258(0, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
  sub_218829498();

  v28 = sub_219BE2324();
  *(v23 + 136) = v26;
  *(v23 + 144) = v27;
  *(v23 + 112) = v28;
  *(v23 + 120) = v29;
  v30 = sub_219BF6214();
  v56 = v21;
  sub_219BE5314("TodayFeed got fetch result, time=%fms, identifier=%{public}@, fetchResultData=%@", 80, 2, &dword_2186C1000, v21, v30, v23);

  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  sub_219BEF3D4();
  LOBYTE(v21) = sub_219BEE804();

  if (v21)
  {
    sub_219BEF3D4();
    sub_219BEE794();

    if (qword_280EE9490 != -1)
    {
      swift_once();
    }

    type metadata accessor for TodayDataManager();
    sub_2187EA20C(&unk_280ED7570, v31, type metadata accessor for TodayDataManager, &unk_219C75BC8);
    sub_219BDCA54();
    swift_beginAccess();
    v60 = v53;
    v61 = v52;

    sub_219BE2E94();

    (*(v50 + 8))(v19, v51);
  }

  v32 = v57;
  if (v57)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C09EC0;
    v34 = MEMORY[0x277D837D0];
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = v27;
    v35 = v54;
    *(v33 + 32) = v54;
    *(v33 + 40) = v32;
    *(v33 + 96) = v34;
    *(v33 + 104) = v27;
    v36 = v58;
    *(v33 + 72) = v58;
    *(v33 + 80) = a4;

    v37 = sub_219BF6214();
    sub_219BE5314("TodayFeed will attempt to prewarm to group=%{public}@, identifier=%{public}@", 76, 2, &dword_2186C1000, v56, v37, v33);

    return sub_21939BE90(v20, v36, a4, a12, v35, v32);
  }

  else
  {
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_219C09BA0;
    *(v39 + 56) = MEMORY[0x277D837D0];
    *(v39 + 64) = v27;
    v40 = v58;
    *(v39 + 32) = v58;
    *(v39 + 40) = a4;

    v41 = sub_219BF6214();
    sub_219BE5314("TodayFeed will prewarm to top of feed, identifier=%{public}@, ", 62, 2, &dword_2186C1000, v56, v41, v39);

    MEMORY[0x28223BE20](v42);
    v48[-4] = v59;
    v48[-3] = v20;
    v48[-2] = a12;
    sub_21881F258(0, &unk_280E91318, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D326E0]);
    sub_219BE3204();
    v43 = v49;
    sub_218820178(a12, v49, type metadata accessor for TodayExpandContext);
    v44 = (*(v48[0] + 80) + 32) & ~*(v48[0] + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v40;
    *(v45 + 24) = a4;
    sub_2188201E0(v43, v45 + v44, type metadata accessor for TodayExpandContext);

    v46 = sub_219BE2E54();
    type metadata accessor for TodayExpandResult(0);
    v47 = sub_219BE2F74();

    return v47;
  }
}

uint64_t sub_218828F64()
{
  v37 = v0;
  if (qword_280EE5FA0 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[17];
  v4 = v0[10];
  v34 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[3];
  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_280F62628);
  v1(v2, v7, v3);
  (*(v5 + 16))(v4, v34, v6);
  v9 = sub_219BE5414();
  v33 = sub_219BF6214();
  v10 = os_log_type_enabled(v9, v33);
  v11 = v0[25];
  v12 = v0[21];
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  v16 = v0[13];
  v35 = v0[12];
  v17 = v0[9];
  v18 = v0[10];
  if (v10)
  {
    v29 = v0[8];
    v32 = v0[16];
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v19 = 136315394;
    v31 = v11;
    v20 = sub_219BEC0F4();
    log = v9;
    v22 = v21;
    (*(v13 + 8))(v12, v14);
    v23 = sub_2186D1058(v20, v22, &v36);

    *(v19 + 4) = v23;
    *(v19 + 12) = 1024;
    LODWORD(v23) = sub_219BEBFE4() & 1;
    (*(v17 + 8))(v18, v29);
    *(v19 + 14) = v23;
    _os_log_impl(&dword_2186C1000, log, v33, "MastheadAdSponsorshipProviderType did fetch masthead sponsorship for type: %s, isFulfilled: %{BOOL}d", v19, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x21CECF960](v30, -1, -1);
    MEMORY[0x21CECF960](v19, -1, -1);

    (*(v16 + 8))(v32, v35);
    v24 = MEMORY[0x277D2D4B8];
    v25 = v31;
  }

  else
  {
    (*(v17 + 8))(v0[10], v0[8]);

    (*(v13 + 8))(v12, v14);
    (*(v16 + 8))(v15, v35);
    v24 = MEMORY[0x277D2D4B8];
    v25 = v11;
  }

  sub_219046528(v25, &qword_280EE3408, v24);
  (*(v0[9] + 32))(v0[2], v0[11], v0[8]);
  (*(v0[9] + 56))(v0[2], 0, 1, v0[8]);

  v26 = v0[1];

  return v26();
}

uint64_t sub_2188293B8()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62628);
  __swift_project_value_buffer(v0, qword_280F62628);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

unint64_t sub_218829498()
{
  result = qword_280E91620;
  if (!qword_280E91620)
  {
    sub_21881F258(255, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E91620);
  }

  return result;
}

uint64_t sub_218829534()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_21882968C, 0, 0);
}

uint64_t sub_21882968C()
{
  sub_219BF5BD4();
  *(v0 + 64) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_21883DC50, v2, v1);
}

uint64_t sub_218829720()
{
  v0 = type metadata accessor for FoodTodayFeedGroup(0);
  MEMORY[0x28223BE20](v0 - 8);
  v89 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v2 - 8);
  v88 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v87 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v85 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v84 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v12 - 8);
  v83 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EngagementTodayFeedGroup(0);
  MEMORY[0x28223BE20](v14 - 8);
  v82 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v81);
  v80 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SeenContentMarkTodayFeedGroup(0);
  MEMORY[0x28223BE20](v17 - 8);
  v79 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SuggestionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v19 - 8);
  v78 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v21 - 8);
  v77 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BED544();
  v75 = *(v23 - 8);
  v76 = v23;
  MEMORY[0x28223BE20](v23);
  v74 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v25 - 8);
  v73 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v27 - 8);
  v72 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v29 - 8);
  v71 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v31 - 8);
  v70 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v70 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v70 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v70 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TrendingTodayFeedGroup(0);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v70 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = &v70 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v70 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v54 - 8);
  v56 = &v70 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TodayFeedGroup(0);
  MEMORY[0x28223BE20](v57);
  v59 = &v70 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v90, v59);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v59, v53, type metadata accessor for NewspaperTodayFeedGroup);
      v60 = sub_219BED784();
      v62 = type metadata accessor for NewspaperTodayFeedGroup;
      goto LABEL_15;
    case 2u:
      sub_2187C58F8(v59, v50, type metadata accessor for LocalNewsTodayFeedGroup);
      v60 = sub_219BED784();
      v63 = type metadata accessor for LocalNewsTodayFeedGroup;
      v64 = v50;
      goto LABEL_29;
    case 3u:
      sub_2187C58F8(v59, v47, type metadata accessor for TrendingTodayFeedGroup);
      v60 = sub_219BED784();
      v63 = type metadata accessor for TrendingTodayFeedGroup;
      v64 = v47;
      goto LABEL_29;
    case 4u:
      sub_2187C58F8(v59, v44, type metadata accessor for ForYouTodayFeedGroup);
      v60 = sub_219BED784();
      v63 = type metadata accessor for ForYouTodayFeedGroup;
      v64 = v44;
      goto LABEL_29;
    case 5u:
      sub_2187C58F8(v59, v41, type metadata accessor for MissedStoriesTodayFeedGroup);
      v60 = sub_219BED784();
      v63 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v64 = v41;
      goto LABEL_29;
    case 6u:
      sub_2187C58F8(v59, v38, type metadata accessor for LatestStoriesTodayFeedGroup);
      v60 = sub_219BED784();
      v63 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v64 = v38;
      goto LABEL_29;
    case 7u:
      sub_2187C58F8(v59, v35, type metadata accessor for MoreForYouTodayFeedGroup);
      v60 = sub_219BED784();
      v63 = type metadata accessor for MoreForYouTodayFeedGroup;
      v64 = v35;
      goto LABEL_29;
    case 8u:
      v56 = v70;
      sub_2187C58F8(v59, v70, type metadata accessor for TopicTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_28;
    case 9u:
      v56 = v71;
      sub_2187C58F8(v59, v71, type metadata accessor for MagazineFeedGroup);
      v60 = sub_218CD68A4();
      v61 = type metadata accessor for MagazineFeedGroup;
      goto LABEL_28;
    case 0xAu:
      v56 = v72;
      sub_2187C58F8(v59, v72, type metadata accessor for NewFollowTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_28;
    case 0xBu:
      v56 = v73;
      sub_2187C58F8(v59, v73, type metadata accessor for SubscriptionTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_28;
    case 0xCu:
      v65 = v74;
      v66 = v75;
      v67 = v76;
      (*(v75 + 32))(v74, v59, v76);
      v60 = sub_219BED4C4();
      (*(v66 + 8))(v65, v67);
      return v60;
    case 0xDu:
      v56 = v77;
      sub_2187C58F8(v59, v77, type metadata accessor for SpotlightTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_28;
    case 0xEu:
      v56 = v78;
      sub_2187C58F8(v59, v78, type metadata accessor for SuggestionTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_28;
    case 0xFu:
      v56 = v79;
      sub_2187C58F8(v59, v79, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_28;
    case 0x10u:
      v53 = v80;
      sub_2187C58F8(v59, v80, type metadata accessor for SharedWithYouTodayFeedGroup);
      v60 = sub_219BED784();
      v62 = type metadata accessor for SharedWithYouTodayFeedGroup;
LABEL_15:
      v63 = v62;
      v64 = v53;
      goto LABEL_29;
    case 0x11u:
      v68 = v82;
      sub_2187C58F8(v59, v82, type metadata accessor for EngagementTodayFeedGroup);
      sub_2186F687C(0);
      sub_219BEDD14();
      sub_2187C8338(v68, type metadata accessor for EngagementTodayFeedGroup);
      v60 = v91;

      return v60;
    case 0x12u:
      v56 = v83;
      sub_2187C58F8(v59, v83, type metadata accessor for MySportsTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_28;
    case 0x13u:
      v56 = v84;
      sub_2187C58F8(v59, v84, type metadata accessor for IntroToSportsTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_28;
    case 0x14u:
      v56 = v85;
      sub_2187C58F8(v59, v85, type metadata accessor for ShortcutsTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_28;
    case 0x15u:
      v56 = v86;
      sub_2187C58F8(v59, v86, type metadata accessor for ChannelTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_28;
    case 0x16u:
      v56 = v87;
      sub_2187C58F8(v59, v87, type metadata accessor for SavedStoriesTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_28;
    case 0x17u:
      v56 = v88;
      sub_2187C58F8(v59, v88, type metadata accessor for ChannelPickerTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_28;
    case 0x18u:
      v56 = v89;
      sub_2187C58F8(v59, v89, type metadata accessor for FoodTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_28;
    default:
      sub_2187C58F8(v59, v56, type metadata accessor for CuratedTodayFeedGroup);
      v60 = sub_219BED784();
      v61 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_28:
      v63 = v61;
      v64 = v56;
LABEL_29:
      sub_2187C8338(v64, v63);
      return v60;
  }
}

uint64_t sub_21882A6B4()
{
  v1 = type metadata accessor for TodayFeedGroup(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2187C8338(v3, type metadata accessor for TodayFeedGroup);
  return byte_219C0E2E6[EnumCaseMultiPayload];
}

uint64_t sub_21882A76C(uint64_t a1)
{
  sub_219BF7AA4();
  MEMORY[0x21CECE850](0);
  return sub_219BF7AE4();
}

uint64_t sub_21882A7B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21882A6B4();
  *a1 = result;
  return result;
}

void sub_21882A7DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_21882B6C4();
  }
}

uint64_t sub_21882A830()
{
  v0 = type metadata accessor for FoodTodayFeedGroup(0);
  MEMORY[0x28223BE20](v0 - 8);
  v86 = &v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v2 - 8);
  v85 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v12 - 8);
  v80 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v79);
  v78 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SeenContentMarkTodayFeedGroup(0);
  MEMORY[0x28223BE20](v15 - 8);
  v77 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SuggestionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v17 - 8);
  v76 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v19 - 8);
  v75 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BED544();
  v73 = *(v21 - 8);
  v74 = v21;
  MEMORY[0x28223BE20](v21);
  v72 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v23 - 8);
  v71 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v25 - 8);
  v70 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v27 - 8);
  v69 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v29 - 8);
  v68 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for TrendingTodayFeedGroup(0);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v67 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v67 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v49 - 8);
  v51 = &v67 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v67 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TodayFeedGroup(0);
  MEMORY[0x28223BE20](v55);
  v57 = &v67 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v87, v57);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v57, v51, type metadata accessor for NewspaperTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for NewspaperTodayFeedGroup;
      v62 = v51;
      goto LABEL_28;
    case 2u:
      sub_2187C58F8(v57, v48, type metadata accessor for LocalNewsTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for LocalNewsTodayFeedGroup;
      v62 = v48;
      goto LABEL_28;
    case 3u:
      sub_2187C58F8(v57, v45, type metadata accessor for TrendingTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for TrendingTodayFeedGroup;
      v62 = v45;
      goto LABEL_28;
    case 4u:
      sub_2187C58F8(v57, v42, type metadata accessor for ForYouTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for ForYouTodayFeedGroup;
      v62 = v42;
      goto LABEL_28;
    case 5u:
      sub_2187C58F8(v57, v39, type metadata accessor for MissedStoriesTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v62 = v39;
      goto LABEL_28;
    case 6u:
      sub_2187C58F8(v57, v36, type metadata accessor for LatestStoriesTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v62 = v36;
      goto LABEL_28;
    case 7u:
      sub_2187C58F8(v57, v33, type metadata accessor for MoreForYouTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for MoreForYouTodayFeedGroup;
      v62 = v33;
      goto LABEL_28;
    case 8u:
      v54 = v68;
      sub_2187C58F8(v57, v68, type metadata accessor for TopicTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_27;
    case 9u:
      v54 = v69;
      sub_2187C58F8(v57, v69, type metadata accessor for MagazineFeedGroup);
      v58 = sub_218CDABFC();
      v59 = type metadata accessor for MagazineFeedGroup;
      goto LABEL_27;
    case 0xAu:
      v54 = v70;
      sub_2187C58F8(v57, v70, type metadata accessor for NewFollowTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_27;
    case 0xBu:
      v54 = v71;
      sub_2187C58F8(v57, v71, type metadata accessor for SubscriptionTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_27;
    case 0xCu:
      v63 = v72;
      v64 = v73;
      v65 = v74;
      (*(v73 + 32))(v72, v57, v74);
      v58 = sub_219BED4F4();
      (*(v64 + 8))(v63, v65);
      return v58;
    case 0xDu:
      v54 = v75;
      sub_2187C58F8(v57, v75, type metadata accessor for SpotlightTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_27;
    case 0xEu:
      v54 = v76;
      sub_2187C58F8(v57, v76, type metadata accessor for SuggestionTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_27;
    case 0xFu:
      v54 = v77;
      sub_2187C58F8(v57, v77, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_27;
    case 0x10u:
      v60 = v78;
      sub_2187C58F8(v57, v78, type metadata accessor for SharedWithYouTodayFeedGroup);
      v58 = sub_219BED7E4();
      v61 = type metadata accessor for SharedWithYouTodayFeedGroup;
      v62 = v60;
      goto LABEL_28;
    case 0x11u:
      sub_2187C8338(v57, type metadata accessor for TodayFeedGroup);
      return MEMORY[0x277D84F90];
    case 0x12u:
      v54 = v80;
      sub_2187C58F8(v57, v80, type metadata accessor for MySportsTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_27;
    case 0x13u:
      v54 = v81;
      sub_2187C58F8(v57, v81, type metadata accessor for IntroToSportsTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_27;
    case 0x14u:
      v54 = v82;
      sub_2187C58F8(v57, v82, type metadata accessor for ShortcutsTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_27;
    case 0x15u:
      v54 = v83;
      sub_2187C58F8(v57, v83, type metadata accessor for ChannelTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_27;
    case 0x16u:
      v54 = v84;
      sub_2187C58F8(v57, v84, type metadata accessor for SavedStoriesTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_27;
    case 0x17u:
      v54 = v85;
      sub_2187C58F8(v57, v85, type metadata accessor for ChannelPickerTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_27;
    case 0x18u:
      v54 = v86;
      sub_2187C58F8(v57, v86, type metadata accessor for FoodTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_27;
    default:
      sub_2187C58F8(v57, v54, type metadata accessor for CuratedTodayFeedGroup);
      v58 = sub_219BED7E4();
      v59 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_27:
      v61 = v59;
      v62 = v54;
LABEL_28:
      sub_2187C8338(v62, v61);
      return v58;
  }
}

void sub_21882B6C4()
{
  if (((1 << (*(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model) >> 60)) & 0x1E2) != 0)
  {
    v3 = *(*(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadView) + qword_280EDEEA0);
    sub_219BE3E14();
  }

  else
  {
    v1 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_animationManager;
    v2 = *(*(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadView) + qword_280EDEEA0);
    sub_219BE3E24();

    *(*(v0 + v1) + 16) = 0;
  }
}

uint64_t sub_21882B7BC()
{
  v0 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v0 - 8);
  v98 = &v84 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v2 - 8);
  v97 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v96 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v95 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v94 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v93 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v91);
  v92 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SeenContentMarkTodayFeedGroup(0);
  MEMORY[0x28223BE20](v13 - 8);
  v90 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SuggestionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v15 - 8);
  v89 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v17 - 8);
  v88 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v19 - 8);
  v87 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v21 - 8);
  v86 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v23 - 8);
  v85 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v25 - 8);
  v84 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TrendingTodayFeedGroup(0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v84 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v84 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_219BF1904();
  v49 = *(v48 - 8);
  v100 = v48;
  v101 = v49;
  MEMORY[0x28223BE20](v48);
  v99 = &v84 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v84 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TodayFeedGroup(0);
  MEMORY[0x28223BE20](v54);
  v56 = &v84 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v102, v56);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v56, v47, type metadata accessor for NewspaperTodayFeedGroup);
      v72 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v72, v100);
      v63 = type metadata accessor for NewspaperTodayFeedGroup;
      v64 = v47;
      goto LABEL_27;
    case 2u:
      sub_2187C58F8(v56, v44, type metadata accessor for LocalNewsTodayFeedGroup);
      v67 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v67, v100);
      v66 = type metadata accessor for LocalNewsTodayFeedGroup;
      goto LABEL_10;
    case 3u:
      sub_2187C58F8(v56, v41, type metadata accessor for TrendingTodayFeedGroup);
      v69 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v69, v100);
      v63 = type metadata accessor for TrendingTodayFeedGroup;
      v64 = v41;
      goto LABEL_27;
    case 4u:
      sub_2187C58F8(v56, v38, type metadata accessor for ForYouTodayFeedGroup);
      v62 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v62, v100);
      v63 = type metadata accessor for ForYouTodayFeedGroup;
      v64 = v38;
      goto LABEL_27;
    case 5u:
      sub_2187C58F8(v56, v35, type metadata accessor for MissedStoriesTodayFeedGroup);
      v75 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v75, v100);
      v63 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v64 = v35;
      goto LABEL_27;
    case 6u:
      sub_2187C58F8(v56, v32, type metadata accessor for LatestStoriesTodayFeedGroup);
      v78 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v78, v100);
      v63 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v64 = v32;
      goto LABEL_27;
    case 7u:
      sub_2187C58F8(v56, v29, type metadata accessor for MoreForYouTodayFeedGroup);
      v70 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v70, v100);
      v63 = type metadata accessor for MoreForYouTodayFeedGroup;
      v64 = v29;
      goto LABEL_27;
    case 8u:
      v53 = v84;
      sub_2187C58F8(v56, v84, type metadata accessor for TopicTodayFeedGroup);
      v81 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v81, v100);
      v59 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_26;
    case 9u:
      v44 = v85;
      sub_2187C58F8(v56, v85, type metadata accessor for MagazineFeedGroup);
      v57 = sub_218CDC10C();
      v66 = type metadata accessor for MagazineFeedGroup;
LABEL_10:
      v63 = v66;
      v64 = v44;
      goto LABEL_27;
    case 0xAu:
      v53 = v86;
      sub_2187C58F8(v56, v86, type metadata accessor for NewFollowTodayFeedGroup);
      v80 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v80, v100);
      v59 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_26;
    case 0xBu:
      v53 = v87;
      sub_2187C58F8(v56, v87, type metadata accessor for SubscriptionTodayFeedGroup);
      v61 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v61, v100);
      v59 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_26;
    case 0xCu:
    case 0x11u:
    case 0x18u:
      sub_2187C8338(v56, type metadata accessor for TodayFeedGroup);
      return 0;
    case 0xDu:
      v53 = v88;
      sub_2187C58F8(v56, v88, type metadata accessor for SpotlightTodayFeedGroup);
      v65 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v65, v100);
      v59 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_26;
    case 0xEu:
      v53 = v89;
      sub_2187C58F8(v56, v89, type metadata accessor for SuggestionTodayFeedGroup);
      v77 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v77, v100);
      v59 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_26;
    case 0xFu:
      v53 = v90;
      sub_2187C58F8(v56, v90, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v60 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v60, v100);
      v59 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_26;
    case 0x10u:
      v53 = v92;
      sub_2187C58F8(v56, v92, type metadata accessor for SharedWithYouTodayFeedGroup);
      v68 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v68, v100);
      v59 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_26;
    case 0x12u:
      v53 = v93;
      sub_2187C58F8(v56, v93, type metadata accessor for MySportsTodayFeedGroup);
      v58 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v58, v100);
      v59 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_26;
    case 0x13u:
      v53 = v94;
      sub_2187C58F8(v56, v94, type metadata accessor for IntroToSportsTodayFeedGroup);
      v73 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v73, v100);
      v59 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_26;
    case 0x14u:
      v53 = v95;
      sub_2187C58F8(v56, v95, type metadata accessor for ShortcutsTodayFeedGroup);
      v79 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v79, v100);
      v59 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_26;
    case 0x15u:
      v53 = v96;
      sub_2187C58F8(v56, v96, type metadata accessor for ChannelTodayFeedGroup);
      v82 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v82, v100);
      v59 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_26;
    case 0x16u:
      v53 = v97;
      sub_2187C58F8(v56, v97, type metadata accessor for SavedStoriesTodayFeedGroup);
      v74 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v74, v100);
      v59 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_26;
    case 0x17u:
      v53 = v98;
      sub_2187C58F8(v56, v98, type metadata accessor for ChannelPickerTodayFeedGroup);
      v76 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v76, v100);
      v59 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_26;
    default:
      sub_2187C58F8(v56, v53, type metadata accessor for CuratedTodayFeedGroup);
      v71 = v99;
      sub_219BED874();
      v57 = sub_219BF1844();
      (*(v101 + 8))(v71, v100);
      v59 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_26:
      v63 = v59;
      v64 = v53;
LABEL_27:
      sub_2187C8338(v64, v63);
      return v57;
  }
}

uint64_t sub_21882C944(char a1)
{
  v2 = v1;
  v26.receiver = v2;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewDidAppear_, a1 & 1);
  sub_219BE1D04();
  v4 = [v2 view];
  if (!v4)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = v4;
  v6 = [v4 window];

  if (v6)
  {
    v8 = [v6 windowScene];

    if (v8)
    {
      v9 = [v8 activationState];
      if (v9 >= 2)
      {
        if (v9 != -1 && v9 != 2)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_219BE1D04();
      }
    }
  }

  sub_2187DEAC4(&qword_280ECFAA8, v7, type metadata accessor for TodayViewController, &unk_219CA3180);
  sub_219BE1D54();
  v10 = OBJC_IVAR____TtC7NewsUI219TodayViewController_didAppearCompletions;
  swift_beginAccess();
  v11 = *&v2[v10];
  v12 = *(v11 + 16);

  if (v12)
  {
    v13 = 0;
    v14 = v11 + 40;
    while (v13 < *(v11 + 16))
    {
      ++v13;
      v15 = *(v14 - 8);

      v15(v16);

      v14 += 16;
      if (v12 == v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_13:

  *&v2[v10] = MEMORY[0x277D84F90];

  v17 = [v2 view];
  if (!v17)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    result = sub_219BF7514();
    __break(1u);
    return result;
  }

  v18 = v17;
  v19 = [v17 window];

  if (v19)
  {
    v20 = [v19 windowScene];

    if (v20)
    {
      v21 = sub_219BF53D4();
      [v20 setTitle_];
    }
  }

  v22 = [v2 tabBarController];
  if (v22)
  {
    v23 = v22;
    type metadata accessor for FloatingTabBarController(0);
    if (swift_dynamicCastClass())
    {

      sub_219BE2734();

      if (v25 == 1)
      {
        sub_219BE7A74();
      }
    }
  }

  sub_21882DFF4();
  return sub_219BE5964();
}

uint64_t sub_21882CCE0(uint64_t a1)
{
  v2 = *v1;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v2);
  return sub_219BF7AE4();
}

uint64_t sub_21882CD24(char a1)
{
  result = 0x64657461727543;
  switch(a1)
  {
    case 1:
      result = 0x657061707377654ELL;
      break;
    case 2:
      result = 0x654E206C61636F4CLL;
      break;
    case 3:
      result = 0x676E69646E657254;
      break;
    case 4:
      result = 0x756F5920726F46;
      break;
    case 5:
      v3 = 0x74736574614CLL;
      goto LABEL_21;
    case 6:
      v3 = 0x64657373694DLL;
LABEL_21:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x5320000000000000;
      break;
    case 7:
      result = 0x726F462065726F4DLL;
      break;
    case 8:
      result = 0x6369706F54;
      break;
    case 9:
      result = 0x656E697A6167614DLL;
      break;
    case 10:
      result = 0x6C6C6F462077654ELL;
      break;
    case 11:
      result = 0x7069726373627553;
      break;
    case 12:
      result = 25665;
      break;
    case 13:
      result = 0x6867696C746F7053;
      break;
    case 14:
      result = 0x6974736567677553;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x7720646572616853;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x74726F705320794DLL;
      break;
    case 19:
      result = 0x6F54206F72746E49;
      break;
    case 20:
      result = 0x74756374726F6853;
      break;
    case 21:
      result = 0x6C656E6E616843;
      break;
    case 22:
      result = 0x7453206465766153;
      break;
    case 23:
      result = 0x206C656E6E616843;
      break;
    case 24:
      result = 1685024582;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21882D084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(sub_219BE9274());
  swift_unknownObjectRetain();
  v4 = sub_219BE9254();
  v5 = sub_219BEE4A4();

  return v5;
}

uint64_t sub_21882D12C@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v1 = type metadata accessor for FoodTodayFeedGroup(0);
  MEMORY[0x28223BE20](v1 - 8);
  v85 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v83 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v82 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v13 - 8);
  v79 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v15 - 8);
  v78 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v77);
  v76 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SeenContentMarkTodayFeedGroup(0);
  MEMORY[0x28223BE20](v18 - 8);
  v75 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SuggestionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v20 - 8);
  v74 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v22 - 8);
  v73 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v24 - 8);
  v72 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v26 - 8);
  v71 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v28 - 8);
  v70 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v70 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v70 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for TrendingTodayFeedGroup(0);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v70 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v70 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = &v70 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v70 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TodayFeedGroup(0);
  MEMORY[0x28223BE20](v54);
  v56 = &v70 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v87, v56);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v56, v50, type metadata accessor for NewspaperTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v61 = type metadata accessor for NewspaperTodayFeedGroup;
      v62 = v50;
      goto LABEL_27;
    case 2u:
      sub_2187C58F8(v56, v47, type metadata accessor for LocalNewsTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v61 = type metadata accessor for LocalNewsTodayFeedGroup;
      v62 = v47;
      goto LABEL_27;
    case 3u:
      sub_2187C58F8(v56, v44, type metadata accessor for TrendingTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v61 = type metadata accessor for TrendingTodayFeedGroup;
      v62 = v44;
      goto LABEL_27;
    case 4u:
      sub_2187C58F8(v56, v41, type metadata accessor for ForYouTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v61 = type metadata accessor for ForYouTodayFeedGroup;
      v62 = v41;
      goto LABEL_27;
    case 5u:
      sub_2187C58F8(v56, v38, type metadata accessor for MissedStoriesTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v61 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v62 = v38;
      goto LABEL_27;
    case 6u:
      sub_2187C58F8(v56, v35, type metadata accessor for LatestStoriesTodayFeedGroup);
      v66 = v86;
      sub_219BED874();
      sub_2187C8338(v35, type metadata accessor for LatestStoriesTodayFeedGroup);
      v67 = sub_219BF1904();
      v68 = *(*(v67 - 8) + 56);
      v69 = v66;
      return v68(v69, 0, 1, v67);
    case 7u:
      sub_2187C58F8(v56, v32, type metadata accessor for MoreForYouTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v61 = type metadata accessor for MoreForYouTodayFeedGroup;
      v62 = v32;
      goto LABEL_27;
    case 8u:
      v53 = v70;
      sub_2187C58F8(v56, v70, type metadata accessor for TopicTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_26;
    case 9u:
      v63 = v78;
      sub_2187C58F8(v56, v78, type metadata accessor for MagazineFeedGroup);
      sub_218CDCFC4(v86);
      return sub_2187C8338(v63, type metadata accessor for MagazineFeedGroup);
    case 0xAu:
      v53 = v71;
      sub_2187C58F8(v56, v71, type metadata accessor for NewFollowTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_26;
    case 0xBu:
      v53 = v72;
      sub_2187C58F8(v56, v72, type metadata accessor for SubscriptionTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_26;
    case 0xCu:
    case 0x11u:
      sub_2187C8338(v56, type metadata accessor for TodayFeedGroup);
      v57 = sub_219BF1904();
      return (*(*(v57 - 8) + 56))(v86, 1, 1, v57);
    case 0xDu:
      v53 = v73;
      sub_2187C58F8(v56, v73, type metadata accessor for SpotlightTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_26;
    case 0xEu:
      v53 = v74;
      sub_2187C58F8(v56, v74, type metadata accessor for SuggestionTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_26;
    case 0xFu:
      v53 = v75;
      sub_2187C58F8(v56, v75, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_26;
    case 0x10u:
      v64 = v56;
      v65 = v76;
      sub_2187C58F8(v64, v76, type metadata accessor for SharedWithYouTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v61 = type metadata accessor for SharedWithYouTodayFeedGroup;
      v62 = v65;
      goto LABEL_27;
    case 0x12u:
      v53 = v79;
      sub_2187C58F8(v56, v79, type metadata accessor for MySportsTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_26;
    case 0x13u:
      v53 = v80;
      sub_2187C58F8(v56, v80, type metadata accessor for IntroToSportsTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_26;
    case 0x14u:
      v53 = v81;
      sub_2187C58F8(v56, v81, type metadata accessor for ShortcutsTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_26;
    case 0x15u:
      v53 = v82;
      sub_2187C58F8(v56, v82, type metadata accessor for ChannelTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_26;
    case 0x16u:
      v53 = v83;
      sub_2187C58F8(v56, v83, type metadata accessor for SavedStoriesTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_26;
    case 0x17u:
      v53 = v84;
      sub_2187C58F8(v56, v84, type metadata accessor for ChannelPickerTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_26;
    case 0x18u:
      v53 = v85;
      sub_2187C58F8(v56, v85, type metadata accessor for FoodTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_26;
    default:
      sub_2187C58F8(v56, v53, type metadata accessor for CuratedTodayFeedGroup);
      v59 = v86;
      sub_219BED874();
      v60 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_26:
      v61 = v60;
      v62 = v53;
LABEL_27:
      sub_2187C8338(v62, v61);
      v67 = sub_219BF1904();
      v68 = *(*(v67 - 8) + 56);
      v69 = v59;
      return v68(v69, 0, 1, v67);
  }
}

double sub_21882DFF4()
{
  v1 = *(*__swift_project_boxed_opaque_existential_1(v0 + 38, v0[41]) + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[4];
    v4 = v1 + 32;
    do
    {
      sub_218718690(v4, v9);
      v5 = v10;
      v6 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v6 + 8))(0, 0, 4, v3, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v9);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  v9[0] = v7 | 0x4000000000000002;

  sub_219BE7884();

  return result;
}

uint64_t sub_21882E11C()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21882E160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a3;
  v5 = *v3;
  v6 = *v3;
  v46[4] = a2;
  v47 = v6;
  sub_2186D8D0C(0, qword_280EDB700, type metadata accessor for TodayFeedGroup);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v46 - v8;
  sub_2186D8D0C(0, qword_280ED5D90, type metadata accessor for MagazineFeedGroup);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v46 - v11;
  v13 = *(v5 + 88);
  v14 = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46[2] = v14;
  v46[3] = v13;
  v46[0] = swift_getAssociatedConformanceWitness();
  v46[1] = AssociatedTypeWitness;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = *(v17 + 16);
  v49 = a1;
  v22(v46 - v23, a1, v16, v21);
  v24 = type metadata accessor for MagazineFeedGroup(0);
  v25 = swift_dynamicCast();
  v26 = *(*(v24 - 8) + 56);
  if (v25)
  {
    v26(v12, 0, 1, v24);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21882F7FC(v12, type metadata accessor for MagazineFeedGroup);
    if (EnumCaseMultiPayload == 5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v26(v12, 1, 1, v24);
    sub_21882F6A8(v12, qword_280ED5D90, type metadata accessor for MagazineFeedGroup);
  }

  (v22)(v19, v49, v16);
  v28 = type metadata accessor for TodayFeedGroup(0);
  v29 = swift_dynamicCast();
  v30 = *(*(v28 - 8) + 56);
  if (v29)
  {
    v30(v9, 0, 1, v28);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v31 = swift_getEnumCaseMultiPayload();
      sub_21882F7FC(v9, type metadata accessor for MagazineFeedGroup);
      if (v31 == 5)
      {
LABEL_8:
        v32 = __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
        swift_getAssociatedConformanceWitness();
        v33 = v3;
        v34 = sub_219BE1D74();
        v36 = v35;
        sub_219BEF9A4();
        v37 = sub_219BEF994();
        v38 = sub_218D5A240(v34, v36, v37, v33, *v32, v47, &off_282A75050);

        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        v40 = v48;
        *v48 = v39;
        v41 = *MEMORY[0x277D326D8];
        v42 = sub_219BEF6E4();
        v43 = *(v42 - 8);
        (*(v43 + 104))(v40, v41, v42);
        return (*(v43 + 56))(v40, 0, 1, v42);
      }
    }

    else
    {
      sub_21882F7FC(v9, type metadata accessor for TodayFeedGroup);
    }
  }

  else
  {
    v30(v9, 1, 1, v28);
    sub_21882F6A8(v9, qword_280EDB700, type metadata accessor for TodayFeedGroup);
  }

  v45 = sub_219BEF6E4();
  return (*(*(v45 - 8) + 56))(v48, 1, 1, v45);
}

uint64_t sub_21882E748()
{

  return swift_deallocObject();
}

double sub_21882E780(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v112 = a4;
  v113 = a1;
  v111 = a3;
  v110 = a2;
  v6 = sub_219BED174();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v109 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED1D4();
  v108 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v107 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED184();
  v105 = *(v11 - 8);
  v106 = v11;
  MEMORY[0x28223BE20](v11);
  v104 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ChannelUpsellTriggerRecord(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v102 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD120(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v103 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v95 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v95 - v22;
  __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_offlineProvider], *&v4[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_offlineProvider + 24]);
  if ((sub_219BEED44() & 1) == 0)
  {
    if (v4[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_didLoadTriggerRecord] != 1)
    {
      if (qword_280EE6050 != -1)
      {
        swift_once();
      }

      v58 = sub_219BE5434();
      __swift_project_value_buffer(v58, qword_280F62760);
      v59 = v113;
      v60 = v110;
      v61 = v111;
      sub_21882F704(v113, v110, v111);
      v62 = sub_219BE5414();
      v63 = sub_219BF6214();
      sub_21882F8BC(v59, v60, v61);
      v64 = os_log_type_enabled(v62, v63);
      v65 = v112;
      if (v64)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        aBlock[0] = v67;
        *v66 = 136315138;
        v68 = sub_21882F974(v59, v60, v61);
        v70 = sub_2186D1058(v68, v69, aBlock);
        v59 = v113;

        *(v66 + 4) = v70;
        _os_log_impl(&dword_2186C1000, v62, v63, "Queueing trigger condition %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x21CECF960](v67, -1, -1);
        MEMORY[0x21CECF960](v66, -1, -1);
      }

      sub_21882F704(v59, v60, v61);

      v71 = sub_219BE2E74();
      v73 = v72;
      v74 = *v72;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v73 = v74;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v74 = sub_21882FCDC(0, *(v74 + 2) + 1, 1, v74);
        *v73 = v74;
      }

      v77 = *(v74 + 2);
      v76 = *(v74 + 3);
      if (v77 >= v76 >> 1)
      {
        v74 = sub_21882FCDC((v76 > 1), v77 + 1, 1, v74);
        *v73 = v74;
      }

      *(v74 + 2) = v77 + 1;
      v78 = &v74[32 * v77];
      *(v78 + 4) = v113;
      *(v78 + 5) = v60;
      v78[48] = v61;
      *(v78 + 7) = v65;
      v71(aBlock, 0);
      goto LABEL_28;
    }

    v99 = v9;
    v100 = v7;
    v101 = v6;
    v98 = OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord;
    v25 = *&v4[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord];
    v26 = *(*v25 + *MEMORY[0x277D841D0] + 16);
    v27 = (*(*v25 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v25 + v27));
    sub_218B9D8F8(v25 + v26, v23, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    os_unfair_lock_unlock((v25 + v27));

    v28 = *(v14 + 48);
    v97 = v14 + 48;
    v96 = v28;
    LODWORD(v25) = v28(v23, 1, v13);
    sub_218B9D978(v23, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    v29 = v110;
    if (v25 == 1)
    {
      if (qword_280EE6050 != -1)
      {
        swift_once();
      }

      v30 = sub_219BE5434();
      __swift_project_value_buffer(v30, qword_280F62760);
      v31 = sub_219BE5414();
      v32 = sub_219BF6214();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2186C1000, v31, v32, "No trigger record available.  Creating new record.", v33, 2u);
        MEMORY[0x21CECF960](v33, -1, -1);
      }

      v34 = MEMORY[0x277D84F98];
      *v20 = MEMORY[0x277D84F98];
      *(v20 + 1) = v34;
      *(v20 + 2) = v34;
      *(v20 + 3) = v34;
      *(v20 + 4) = v34;
      *(v20 + 5) = v34;
      *(v20 + 6) = v34;
      *(v20 + 7) = v34;
      v35 = MEMORY[0x277D84FA0];
      *(v20 + 8) = v34;
      *(v20 + 9) = v35;
      v36 = *(v13 + 56);
      v37 = sub_219BDBD34();
      (*(*(v37 - 8) + 56))(&v20[v36], 1, 1, v37);
      *&v20[*(v13 + 60)] = 0;
      v38 = (*(v14 + 56))(v20, 0, 1, v13);
      v39 = *&v5[v98];
      MEMORY[0x28223BE20](v38);
      *(&v95 - 2) = v20;
      v40 = *(*v39 + *MEMORY[0x277D841D0] + 16);
      v41 = (*(*v39 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v39 + v41));
      sub_218B9D794(v39 + v40);
      os_unfair_lock_unlock((v39 + v41));

      sub_218B9D978(v20, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    }

    v42 = v112;
    v43 = v113;
    v46 = v111;
    sub_218B925B4(v113, v29, v111, v112, 0, 0);
    v45 = v44;
    LODWORD(v46) = sub_218B92DB8(v43, v29, v46, v5, v42, v44);
    if (qword_280EE6050 != -1)
    {
      swift_once();
    }

    v47 = sub_219BE5434();
    __swift_project_value_buffer(v47, qword_280F62760);
    v48 = v5;
    v49 = sub_219BE5414();
    v50 = sub_219BF6214();
    v113 = v48;

    if (os_log_type_enabled(v49, v50))
    {
      LODWORD(v112) = v46;
      v46 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      v52 = *&v5[v98];
      *v46 = 136315138;
      v53 = *(*v52 + *MEMORY[0x277D841D0] + 16);
      v54 = (*(*v52 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v52 + v54));
      v55 = v103;
      sub_218B9D8F8(v52 + v53, v103, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      os_unfair_lock_unlock((v52 + v54));

      if (v96(v55, 1, v13))
      {
        sub_218B9D978(v55, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
        v56 = 0x8000000219CE9EE0;
        v57 = 0xD000000000000014;
      }

      else
      {
        v81 = v102;
        sub_218B9D828(v55, v102);
        sub_218B9D978(v55, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
        sub_218B8FA94();
        v83 = v82;
        v56 = v84;
        sub_218B9E6C8(v81, type metadata accessor for ChannelUpsellTriggerRecord);
        v57 = v83;
      }

      v80 = v100;
      v85 = sub_2186D1058(v57, v56, aBlock);

      *(v46 + 4) = v85;
      _os_log_impl(&dword_2186C1000, v49, v50, "\n%s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x21CECF960](v51, -1, -1);
      MEMORY[0x21CECF960](v46, -1, -1);

      v79 = v101;
      LOBYTE(v46) = v112;
    }

    else
    {

      v79 = v101;
      v80 = v100;
    }

    v86 = v99;
    if ((v45 != 2) | v46 & 1)
    {
      sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
      v88 = v104;
      v87 = v105;
      v89 = v106;
      (*(v105 + 104))(v104, *MEMORY[0x277D851B8], v106);
      v90 = sub_219BF66E4();
      (*(v87 + 8))(v88, v89);
      v91 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_218B9D80C;
      aBlock[5] = v91;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218793E0C;
      aBlock[3] = &block_descriptor_13_1;
      v92 = _Block_copy(aBlock);

      v93 = v107;
      sub_219BED1A4();
      v114 = MEMORY[0x277D84F90];
      sub_218B9F7A4(&qword_280E927E0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_2186DD120(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_21874EB68();
      v94 = v109;
      sub_219BF7164();
      MEMORY[0x21CECD460](0, v93, v94, v92);
      _Block_release(v92);

      (*(v80 + 8))(v94, v79);
      (*(v108 + 8))(v93, v86);

LABEL_28:
    }
  }

  return result;
}

uint64_t sub_21882F534()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21882F5B4()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62760);
  __swift_project_value_buffer(v0, qword_280F62760);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21882F6A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186D8D0C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21882F704(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
  }
}

uint64_t sub_21882F73C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21882F79C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21882F7FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21882F85C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21882F8BC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

unint64_t sub_21882F974(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      sub_219BF7314();

      v8 = 0xD000000000000019;
      v6 = a1;
      v7 = a2;
LABEL_12:
      MEMORY[0x21CECC330](v6, v7);
      return v8;
    }

    sub_219BF7314();

    v8 = 0xD00000000000001CLL;
    MEMORY[0x21CECC330](a1, a2);
LABEL_11:
    v6 = 41;
    v7 = 0xE100000000000000;
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v8 = 0;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000016, 0x8000000219D23330);
    sub_218731D50();
    sub_219BF7484();
    goto LABEL_11;
  }

  if (a3 == 3)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x646F547265746E65;
  }
}

void sub_21882FB3C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = type metadata accessor for TodayExpandResult(0);
  v9 = *(v8 + 28);
  v10 = sub_219BEC514();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = type metadata accessor for TodayExpandContext(0);
  sub_21872ADC8(a3 + *(v11 + 32), &a4[*(v8 + 32)], &unk_280EE56F0, MEMORY[0x277D6D878]);
  *a4 = a1;
  *(a4 + 1) = a2;

  *(a4 + 2) = sub_219BEF6F4();
  sub_219BEF704();
  sub_21882FE00(0, &unk_280E8F530, MEMORY[0x277D6D310], MEMORY[0x277D83940]);
  sub_21882FF78();
  sub_2187EA20C(&unk_280EE5DD0, 255, MEMORY[0x277D6D310], MEMORY[0x277D6D308]);
  v12 = sub_219BF56C4();

  *(a4 + 3) = v12;
}

char *sub_21882FCDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8BA68, &type metadata for PendingTriggerCondition, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_21882FE00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21882FE88()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62778);
  __swift_project_value_buffer(v0, qword_280F62778);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

unint64_t sub_21882FF78()
{
  result = qword_280E8F520;
  if (!qword_280E8F520)
  {
    sub_218830064(255, &unk_280E8F530, MEMORY[0x277D6D310], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F520);
  }

  return result;
}

void sub_218830000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218830064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2188300C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21883012C(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {

    sub_2197C9F18(a1);
  }

  else
  {
    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v6 = sub_219BE5434();
    __swift_project_value_buffer(v6, qword_280F62778);
    sub_21882F704(a1, a2, a3);
    oslog = sub_219BE5414();
    v7 = sub_219BF6214();
    sub_21882F8BC(a1, a2, a3);
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      v10 = sub_21882F974(a1, a2, a3);
      v12 = sub_2186D1058(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_2186C1000, oslog, v7, "trigger %s not handled. Skipping.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x21CECF960](v9, -1, -1);
      MEMORY[0x21CECF960](v8, -1, -1);
    }
  }
}

uint64_t objectdestroy_39Tm()
{
  v1 = sub_219BF1584();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_44Tm()
{
  v1 = (type metadata accessor for TodayExpandContext(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

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

void sub_2188304DC(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (a3 > 3u)
  {

    sub_218830C78(a4);
  }

  else
  {
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F62658);
    sub_21882F704(a1, a2, a3);
    oslog = sub_219BE5414();
    v8 = sub_219BF6214();
    sub_21882F8BC(a1, a2, a3);
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_21882F974(a1, a2, a3);
      v13 = sub_2186D1058(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2186C1000, oslog, v8, "BundleViaOfferUpsellHandler: trigger %s not handled. Skipping.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x21CECF960](v10, -1, -1);
      MEMORY[0x21CECF960](v9, -1, -1);
    }
  }
}

uint64_t sub_2188306DC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a5;
  v49 = a2;
  v9 = sub_219BF11C4();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_219BF0644();
  v11 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v16 = qword_280F616D8;
  sub_2186F20D4(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v18 = MEMORY[0x277D83A80];
  *(v17 + 56) = MEMORY[0x277D839F8];
  *(v17 + 64) = v18;
  *(v17 + 32) = v19;
  v20 = MEMORY[0x277D837D0];
  *(v17 + 96) = MEMORY[0x277D837D0];
  v21 = sub_2186FC3BC();
  *(v17 + 104) = v21;
  *(v17 + 72) = a3;
  *(v17 + 80) = a4;
  type metadata accessor for TodayExpandResult(0);
  sub_2187EA20C(&qword_280ED46B0, 255, type metadata accessor for TodayExpandResult, &unk_219C57924);

  v22 = sub_219BF7894();
  *(v17 + 136) = v20;
  *(v17 + 144) = v21;
  *(v17 + 112) = v22;
  *(v17 + 120) = v23;
  v24 = sub_219BF6214();
  sub_219BE5314("TodayFeed successfully expanded gap, time=%fms, identifier=%{public}@, fetchResultData=%@", 89, 2, &dword_2186C1000, v16, v24, v17);

  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  sub_219BEF3D4();
  sub_219BEE844();

  v25 = v49;
  v53 = *__swift_project_boxed_opaque_existential_1(&v49[OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures], *&v49[OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures + 24]);
  v26 = off_282A442B8;
  type metadata accessor for OfflineFeatures();
  v27 = v25;
  if (v26(0) == 6)
  {
    v28 = v11;
    if (sub_219BF1AE4())
    {
      v29 = MEMORY[0x277D32EF8];
    }

    else
    {
      v29 = MEMORY[0x277D32EF0];
    }

    (*(v11 + 104))(v48, *v29, v50);
  }

  else
  {
    v28 = v11;
    (*(v11 + 104))(v48, *MEMORY[0x277D32EF0], v50);
  }

  v44 = a1;
  sub_2187EA20C(&qword_280E90ED0, 255, MEMORY[0x277D32F00], MEMORY[0x277D32F18]);
  v49 = v15;
  sub_219BF5874();
  sub_219BF5874();
  v30 = MEMORY[0x277D331F8];
  if ((v53 != v51 || v54 != v52) && (sub_219BF78F4() & 1) == 0)
  {
    v30 = MEMORY[0x277D331E0];
  }

  v31 = v28;
  v32 = *(v28 + 8);
  v33 = v50;
  v32(v48, v50);

  v34 = v43;
  (*(v31 + 16))(v43, v49, v33);
  v36 = v45;
  v35 = v46;
  (*(v45 + 104))(v34, *v30, v46);
  v37 = v27;
  v38 = &v27[OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = *(v38 + 1);
    ObjectType = swift_getObjectType();
    (*(v39 + 96))(v37, &off_282A6CEF8, v34, ObjectType, v39);
    swift_unknownObjectRelease();
  }

  (*(v36 + 8))(v34, v35);
  v32(v49, v50);
  return sub_218820178(v44, v47, type metadata accessor for TodayExpandResult);
}

double sub_218830C78(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_219BE3DF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI227BundleViaOfferUpsellHandler_featureAvailability), *(v1 + OBJC_IVAR____TtC7NewsUI227BundleViaOfferUpsellHandler_featureAvailability + 24));
  if (sub_219BE4764())
  {
    swift_getObjectType();
    sub_219BE44E4();
    v8 = sub_219BE3DD4();
    v9 = (*(v5 + 8))(v7, v4);
    if (v8)
    {
      if (qword_280EE5FC0 != -1)
      {
        swift_once();
      }

      v10 = sub_219BE5434();
      __swift_project_value_buffer(v10, qword_280F62658);
      v11 = sub_219BE5414();
      v12 = sub_219BF6214();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_2186C1000, v11, v12, "BundleViaOfferUpsellHandler: Application was directly launched by user. Skipping.", v13, 2u);
        MEMORY[0x21CECF960](v13, -1, -1);
      }
    }

    else
    {
      MEMORY[0x28223BE20](v9);
      *(&v20 - 2) = v2;
      sub_219BE3204();
      sub_2187D9028();
      v19 = sub_219BF66A4();
      *(swift_allocObject() + 16) = a1;

      sub_219BE2F94();
    }
  }

  else
  {
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v15 = sub_219BE5434();
    __swift_project_value_buffer(v15, qword_280F62658);
    v21 = sub_219BE5414();
    v16 = sub_219BF6214();
    if (os_log_type_enabled(v21, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2186C1000, v21, v16, "BundleViaOfferUpsellHandler: Launch Upsell feature is disabled. Skipping.", v17, 2u);
      MEMORY[0x21CECF960](v17, -1, -1);
    }

    v18 = v21;
  }

  return result;
}

uint64_t sub_218831034()
{

  return swift_deallocObject();
}

uint64_t sub_218831084(uint64_t a1)
{
  sub_2186DFC68(qword_280ED46B8, type metadata accessor for TodayExpandResult, &unk_219C5794C);

  return sub_219BE2324();
}

uint64_t sub_218831138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = [*(*v3 + 16) paidBundleViaOfferAvailability];
  LOBYTE(a3) = a3();

  return a3 & 1;
}

uint64_t sub_218831270@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2187DD878(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v32 - v5;
  v6 = MEMORY[0x277D2D6D8];
  sub_2187DD878(0, &qword_280EE32B8, MEMORY[0x277D2D6D8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  sub_2187DD878(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0D560;
  *(inited + 32) = 0x696669746E656469;
  v34 = inited + 32;
  *(inited + 40) = 0xEA00000000007265;
  v11 = v2[1];
  v12 = MEMORY[0x277D837D0];
  *(inited + 48) = *v2;
  *(inited + 56) = v11;
  *(inited + 72) = v12;
  *(inited + 80) = 0x7365526863746566;
  *(inited + 88) = 0xEB00000000746C75;
  v13 = v2[2];
  sub_2187DD658(0);
  *(inited + 96) = v13;
  *(inited + 120) = v14;
  strcpy((inited + 128), "pluginModels");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  v15 = v2[3];
  sub_2187DD810(0);
  *(inited + 144) = v15;
  *(inited + 168) = v16;
  *(inited + 176) = 0x644165766974616ELL;
  *(inited + 184) = 0xE800000000000000;
  v33 = type metadata accessor for TodayExpandResult(0);
  sub_218831930(v2 + *(v33 + 28), v9, &qword_280EE32B8, v6);
  v17 = sub_219BEC514();
  v18 = *(v17 - 8);
  LODWORD(v6) = (*(v18 + 48))(v9, 1, v17);

  if (v6 == 1)
  {
    sub_2188319B0(v9, &qword_280EE32B8, MEMORY[0x277D2D6D8]);
    v19 = (inited + 192);
    v20 = MEMORY[0x277D837D0];
    *(inited + 216) = MEMORY[0x277D837D0];
  }

  else
  {
    v21 = sub_219BEC4C4();
    v23 = v22;
    (*(v18 + 8))(v9, v17);
    v19 = (inited + 192);
    v20 = MEMORY[0x277D837D0];
    *(inited + 216) = MEMORY[0x277D837D0];
    if (v23)
    {
      *v19 = v21;
      v24 = v35;
      v25 = v33;
      goto LABEL_6;
    }
  }

  v24 = v35;
  v25 = v33;
  *v19 = 7104878;
  v23 = 0xE300000000000000;
LABEL_6:
  *(inited + 200) = v23;
  *(inited + 224) = 0x6B72616D6B6F6F62;
  *(inited + 232) = 0xE800000000000000;
  sub_218831930(v2 + *(v25 + 32), v24, &unk_280EE56F0, MEMORY[0x277D6D878]);
  v26 = sub_219BE6DF4();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v24, 1, v26) == 1)
  {
    sub_2188319B0(v24, &unk_280EE56F0, MEMORY[0x277D6D878]);
    *(inited + 264) = v20;
    *(inited + 240) = 7104878;
    *(inited + 248) = 0xE300000000000000;
  }

  else
  {
    v38 = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
    (*(v27 + 32))(boxed_opaque_existential_1, v24, v26);
    sub_218751558(&v37, (inited + 240));
  }

  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2188317B0();
  swift_arrayDestroy();
  sub_2187DD878(0, &qword_280EE7A20, type metadata accessor for TodayExpandResult, MEMORY[0x277D6CC20]);
  v29 = v36;
  v36[3] = v30;
  v29[4] = sub_218831C5C();
  __swift_allocate_boxed_opaque_existential_1(v29);
  return sub_219BE2334();
}

void sub_2188317B0()
{
  if (!qword_280E8F6E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F6E0);
    }
  }
}

uint64_t sub_218831814(uint64_t *a1, uint64_t (*a2)(void), SEL *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    a2();
    v8 = *(v3 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_appConfiguration);
    if ([v8 respondsToSelector_])
    {
      v9 = [v8 paidBundleViaOfferConfig];
      [v9 *a3];
    }

    LOBYTE(v5) = sub_219BDC8C4();

    *(v3 + v4) = v5 & 1;
  }

  return v5 & 1;
}

uint64_t sub_218831930(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2187DD878(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2188319B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2187DD878(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_218831A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2187A1CDC();
    v3 = sub_219BF75B4();
    v4 = a1 + 32;

    v5 = MEMORY[0x277D84F70];
    v6 = MEMORY[0x277D837D0];
    while (1)
    {
      sub_218819864(v4, &v15, &qword_280E8F6E0, v6, v5 + 8, sub_218831BDC);
      v7 = v15;
      v8 = v16;
      result = sub_21870F700(v15, v16);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      result = sub_218751558(&v17, (v3[7] + 32 * result));
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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

void sub_218831BDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_218831C5C()
{
  result = qword_280EE7A28;
  if (!qword_280EE7A28)
  {
    sub_2187DD878(255, &qword_280EE7A20, type metadata accessor for TodayExpandResult, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7A28);
  }

  return result;
}

uint64_t sub_218831D14()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62658);
  __swift_project_value_buffer(v0, qword_280F62658);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_218831E04(uint64_t a1)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v2 = qword_280F616D8;
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_219BF11C4();
  sub_2187E1408(&qword_280E90960, MEMORY[0x277D33200], MEMORY[0x277D33208]);
  v4 = sub_219BF7894();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = sub_219BF6214();
  sub_219BE5314("Today interactor desired feed mode did change, feedModeState: %{public}@", 72, 2, &dword_2186C1000, v2, v7, v3);

  return sub_218827434(a1);
}

uint64_t sub_218831F74(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_cachePreFlushTask) + OBJC_IVAR___TSCachePreFlushTask_block;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_2187FABEC(v2, v3);
    v5 = *v1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v1 + 8);
  *v1 = 0;
  *(v1 + 8) = 0;

  return sub_2187FABEC(v5, v6);
}

uint64_t get_enum_tag_for_layout_string_7NewsUI20A9Activity2O(void *a1)
{
  if (*a1 >> 60 == 15)
  {
    return (*a1 >> 3) + 60;
  }

  else
  {
    return (*a1 >> 58) & 0x3C | (*a1 >> 1) & 3;
  }
}

void sub_21883206C(uint64_t a1)
{
  type metadata accessor for WebLinkRouteModel.URLType(319);
  if (v1 <= 0x3F)
  {
    sub_218832178(319, &qword_280E8F150, sub_218832280, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_218832178(319, &qword_280EC2CC0, sub_2188322D0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_218832178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2188321DC(uint64_t a1)
{
  sub_21873F65C(319);
  if (v1 <= 0x3F)
  {
    sub_218832178(319, &qword_280EE7018, sub_21873F65C, MEMORY[0x277D6CF30]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_218832280()
{
  if (!qword_280E8F158)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F158);
    }
  }
}

unint64_t sub_2188322D0()
{
  result = qword_280EC2CC8;
  if (!qword_280EC2CC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EC2CC8);
  }

  return result;
}

uint64_t sub_218832350(uint64_t a1)
{
  result = sub_219BDB954();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WebLinkRouteModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t NewsActivity2.identifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PuzzleModel(0);
  MEMORY[0x28223BE20](v2 - 8);
  v190 = &v185 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE3CA4();
  v187 = *(v4 - 8);
  v188 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v185 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebLinkRouteModel(0);
  MEMORY[0x28223BE20](v7 - 8);
  v185 = (&v185 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for WebLinkViewControllerType(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v185 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v189 = &v185 - v13;
  v14 = sub_219BEC544();
  v186 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v185 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CampaignRouteModel(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v185 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (&v185 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_219BDB954();
  v24 = *(v23 - 8);
  v193 = v23;
  v194 = v24;
  MEMORY[0x28223BE20](v23);
  v192 = &v185 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BDD944();
  MEMORY[0x28223BE20](v26 - 8);
  v191 = &v185 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v185 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = *v1;
  result = 0x7472656C61;
  switch((v33 >> 58) & 0x3C | (v33 >> 1) & 3)
  {
    case 1uLL:
      v105 = &v185 - v32;
      sub_2187B2C48(0);
      v113 = swift_projectBox();
      sub_219092F4C(v113, v105, type metadata accessor for NewsActivity2.Article);
      *&v201 = 0x2D656C6369747261;
      *(&v201 + 1) = 0xE800000000000000;
      v114 = v105;
      v115 = v30;
      goto LABEL_59;
    case 2uLL:
      v105 = &v185 - v32;
      sub_2187B2C48(0);
      v106 = swift_projectBox();
      sub_219092F4C(v106, v105, type metadata accessor for NewsActivity2.Article);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_219BF7314();

      v107 = 0x8000000219D09BE0;
      v108 = 0xD000000000000010;
      goto LABEL_58;
    case 3uLL:
      v109 = v33 & 0xFFFFFFFFFFFFFF9;
      v80 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v81 = *(v109 + 24);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v201 = 0x50656C6369747261;
      *(&v201 + 1) = 0xEF2D776569766572;
      goto LABEL_39;
    case 4uLL:
      v93 = swift_projectBox();
      v52 = v193;
      v51 = v194;
      v53 = v192;
      (*(v194 + 16))(v192, v93, v193);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_219BF7314();

      v94 = 0x57656C6369747261;
      v95 = 0xEF2D6B6E694C6265;
      goto LABEL_33;
    case 5uLL:
      v116 = swift_projectBox();
      sub_219092F4C(v116, v22, type metadata accessor for AudioFeedTrack);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v201 = 0xD000000000000012;
      *(&v201 + 1) = 0x8000000219D09BC0;
      v117 = [*v22 identifier];
      v118 = sub_219BF5414();
      v120 = v119;

      MEMORY[0x21CECC330](v118, v120);

      v121 = v201;
      v122 = type metadata accessor for AudioFeedTrack;
      v123 = v22;
      goto LABEL_98;
    case 6uLL:
      v125 = v33 & 0xFFFFFFFFFFFFFF9;
      v126 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v127 = *(v125 + 24);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_219092608(v126, v127);
      sub_219BF7314();

      *&v201 = 0x68436573776F7262;
      *(&v201 + 1) = 0xEF2D736C656E6E61;
      if (v127 < 2)
      {
        sub_21909261C(v126, v127);
        v128 = 0xE700000000000000;
        v129 = 0x72616C75676572;
      }

      else if (v127 == 2)
      {
        v128 = 0xE800000000000000;
        v129 = 0x73756C507377656ELL;
      }

      else if (v127 == 3)
      {
        v128 = 0xE900000000000073;
        v129 = 0x77654E6C61636F6CLL;
      }

      else
      {
        *&v207 = 0x69286D6F74737563;
        *(&v207 + 1) = 0xEA00000000003A64;
        MEMORY[0x21CECC330](v126, v127);
        MEMORY[0x21CECC330](41, 0xE100000000000000);
        sub_21909261C(v126, v127);
        v128 = *(&v207 + 1);
        v129 = v207;
      }

      MEMORY[0x21CECC330](v129, v128);
      goto LABEL_111;
    case 7uLL:
      v110 = swift_projectBox();
      sub_219092F4C(v110, v19, type metadata accessor for CampaignRouteModel);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v201 = 0xD000000000000014;
      *(&v201 + 1) = 0x8000000219D09B80;
      if (v19[1])
      {
        v111 = *v19;
        v112 = v19[1];
      }

      else
      {
        v112 = 0x8000000219D09BA0;
        v111 = 0xD000000000000012;
      }

      MEMORY[0x21CECC330](v111, v112);

      v121 = v201;
      v122 = type metadata accessor for CampaignRouteModel;
      v123 = v19;
      goto LABEL_98;
    case 8uLL:
      v105 = &v185 - v32;
      v135 = swift_projectBox();
      sub_219092F4C(v135, v105, type metadata accessor for NewsActivity2.Article);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_219BF7314();

      v107 = 0x8000000219D09B40;
      v108 = 0xD000000000000011;
LABEL_58:
      *&v201 = v108;
      *(&v201 + 1) = v107;
      v114 = v105;
      v115 = v30;
LABEL_59:
      sub_219092F4C(v114, v115, type metadata accessor for NewsActivity2.Article);
      sub_2187B2DA0(0);

      v136 = v191;
      sub_2190925A0(v30, v191, MEMORY[0x277D2FB40]);
      v137 = sub_219BDD8A4();
      v139 = v138;
      sub_218790034(v136, MEMORY[0x277D2FB40]);
      MEMORY[0x21CECC330](v137, v139);

      v121 = v201;
      v122 = type metadata accessor for NewsActivity2.Article;
      v123 = v105;
      goto LABEL_98;
    case 9uLL:
      v98 = v33 & 0xFFFFFFFFFFFFFF9;
      v99 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v100 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v101 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v102 = *(v98 + 48);
      strcpy(&v201, "emailSignup-");
      BYTE13(v201) = 0;
      HIWORD(v201) = -5120;

      sub_218CB34F0(v101);
      *&v207 = sub_218C8D290(v100);
      *(&v207 + 1) = v103;
      MEMORY[0x21CECC330](0x2D6D6F72662DLL, 0xE600000000000000);
      v104 = sub_218C8D290(v99);
      MEMORY[0x21CECC330](v104);

      MEMORY[0x21CECC330](v207, *(&v207 + 1));

      sub_218CB34F4(v101, v102);
      return v201;
    case 0xAuLL:
      v130 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v131 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v203 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v204 = v131;
      v205 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v206 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v132 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v201 = v130;
      v202 = v132;
      v133 = v130;
      if (v203)
      {
        v134 = *(&v201 + 1);
        sub_218B5A004(&v201, &v207);
      }

      else
      {
        sub_218B5A004(&v201, &v207);
        v179 = [v133 identifier];
        v133 = sub_219BF5414();
        v134 = v180;
      }

      v181 = sub_218C1D030(v133, v134, *(&v203 + 1));
      goto LABEL_107;
    case 0xBuLL:
      v82 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v83 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v203 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v204 = v83;
      v205 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v206 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v84 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v201 = v82;
      v202 = v84;
      v69 = v82;
      if (!v203)
      {
        goto LABEL_105;
      }

      goto LABEL_72;
    case 0xCuLL:
      return 0x6E69776F6C6C6F66;
    case 0xDuLL:
      return 0xD000000000000011;
    case 0xEuLL:
    case 0x27uLL:
    case 0x35uLL:
      return 0xD000000000000016;
    case 0xFuLL:
      return 0x627548646F6F66;
    case 0x10uLL:
      v66 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v67 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v203 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v204 = v67;
      v205 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v206 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v68 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v201 = v66;
      v202 = v68;
      v69 = v66;
      if (!v203)
      {
        goto LABEL_105;
      }

      goto LABEL_72;
    case 0x11uLL:
      return 0x6546756F59726F66;
    case 0x12uLL:
      return 0xD000000000000011;
    case 0x13uLL:
      v157 = swift_projectBox();
      v158 = v186;
      (*(v186 + 16))(v16, v157, v14);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v201 = 0xD000000000000018;
      *(&v201 + 1) = 0x8000000219D09AE0;
      v159 = sub_219BEC534();
      MEMORY[0x21CECC330](v159);

      v121 = v201;
      (*(v158 + 8))(v16, v14);
      return v121;
    case 0x14uLL:
    case 0x15uLL:
      memmove(&v201, ((v33 & 0xFFFFFFFFFFFFFF9) + 16), 0x48uLL);
      v199 = 0x2D6575737369;
      v200 = 0xE600000000000000;
      v35 = *(&v201 + 1);
      v36 = v201;
      v37 = HIBYTE(v203) >> 6;
      if (v37)
      {
        if (v37 == 1)
        {
        }

        else
        {
          v207 = v201;
          v208 = v202;
          *&v209 = v203;
          BYTE8(v209) = BYTE8(v203) & 1;
          v36 = sub_219BD47C0();
          v35 = v171;
        }
      }

      else
      {
        v195 = v201;
        v196 = v202;
        v197 = v203;
        v198 = BYTE8(v203) & 1;
        sub_219092568(&v201, &v207);
        v169 = [sub_219BD4870() identifier];
        v36 = sub_219BF5414();
        v35 = v170;

        sub_218AAFFC4(&v201);
      }

      MEMORY[0x21CECC330](v36, v35);

      return v199;
    case 0x16uLL:
    case 0x17uLL:
      v38 = v33 & 0xFFFFFFFFFFFFFF9;
      v39 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v208 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v209 = v39;
      v210 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v40 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v41 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x58);
      v211 = v40;
      v207 = *(v38 + 16);
      v42 = *(v38 + 96);
      sub_219092568(&v207, &v201);
      v203 = v209;
      v204 = v210;
      *&v205 = v211;
      v201 = v207;
      v202 = v208;

      *&v195 = 0x6761506575737369;
      *(&v195 + 1) = 0xEA00000000002D65;
      v43 = *(&v201 + 1);
      v44 = v201;
      v45 = HIBYTE(v203) >> 6;
      if (v45)
      {
        if (v45 == 1)
        {
        }

        else
        {
          v207 = v201;
          v208 = v202;
          *&v209 = v203;
          BYTE8(v209) = BYTE8(v203) & 1;
          v44 = sub_219BD47C0();
          v43 = v168;
        }
      }

      else
      {
        v207 = v201;
        v208 = v202;
        *&v209 = v203;
        BYTE8(v209) = BYTE8(v203) & 1;
        v166 = [sub_219BD4870() identifier];
        v44 = sub_219BF5414();
        v43 = v167;
      }

      sub_218AAFFC4(&v201);
      MEMORY[0x21CECC330](v44, v43);

      MEMORY[0x21CECC330](45, 0xE100000000000000);
      MEMORY[0x21CECC330](v41, v42);

      return v195;
    case 0x18uLL:
      v96 = swift_projectBox();
      v52 = v193;
      v51 = v194;
      v53 = v192;
      (*(v194 + 16))(v192, v96, v193);
      v94 = 0x2D6B6E696CLL;
      v95 = 0xE500000000000000;
LABEL_33:
      *&v201 = v94;
      *(&v201 + 1) = v95;
      sub_2190930F4(&qword_27CC15940, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v97 = sub_219BF7894();
      goto LABEL_81;
    case 0x19uLL:
      return 0xD000000000000018;
    case 0x1AuLL:
      sub_21896FC94((v33 & 0xFFFFFFFFFFFFFF9) + 16, &v201);
      *&v207 = 0;
      *(&v207 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v207 = 0xD000000000000013;
      *(&v207 + 1) = 0x8000000219D09AC0;
      MEMORY[0x21CECC330](v201, *(&v201 + 1));
      v121 = v207;
      sub_218C113E0(&v201);
      return v121;
    case 0x1BuLL:
      v61 = v33 & 0xFFFFFFFFFFFFFF9;
      v62 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x20);
      if (v62 == 255)
      {
        return 0xD000000000000010;
      }

      v64 = *(v61 + 16);
      v63 = *(v61 + 24);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v207 = 0xD000000000000012;
      *(&v207 + 1) = 0x8000000219D09A80;
      *&v201 = v64;
      *(&v201 + 1) = v63;
      LOBYTE(v202) = v62;
      v65 = MagazineSectionConfigKind.identifier.getter();
      MEMORY[0x21CECC330](v65);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      return v207;
    case 0x1CuLL:
      return 0x7374726F7053796DLL;
    case 0x1DuLL:
      return 0x696472616F626E6FLL;
    case 0x1EuLL:
      *&v201 = 0x2D657069636572;
      *(&v201 + 1) = 0xE700000000000000;

      v124 = sub_219BDE624();
      MEMORY[0x21CECC330](v124);

      goto LABEL_111;
    case 0x1FuLL:
      return 0x6F42657069636572;
    case 0x20uLL:
      return 0x6143657069636572;
    case 0x21uLL:
    case 0x29uLL:
      return 0xD000000000000013;
    case 0x22uLL:
      return 0x7244657069636572;
    case 0x23uLL:
      return 0x6946657069636572;
    case 0x24uLL:
      return 0x6F48686372616573;
    case 0x25uLL:
      return 0xD000000000000011;
    case 0x26uLL:
      v160 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v161 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v203 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v204 = v161;
      v205 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v206 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v162 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v201 = v160;
      v202 = v162;
      v69 = v160;
      if (v203)
      {
LABEL_72:
        v163 = *(&v201 + 1);
        sub_218B5A004(&v201, &v207);
      }

      else
      {
LABEL_105:
        sub_218B5A004(&v201, &v207);
        v182 = [v69 identifier];
        v69 = sub_219BF5414();
        v163 = v183;
      }

      v181 = sub_218C1D324(v69, v163, *(&v203 + 1));
LABEL_107:
      v184 = v181;
      sub_218B5A060(&v201);

      return v184;
    case 0x28uLL:
      return 0xD000000000000010;
    case 0x2AuLL:
      v141 = v33 & 0xFFFFFFFFFFFFFF9;
      v142 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v143 = *(v141 + 24);
      v144 = *(v141 + 32);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_219092540(v142, v143, v144);
      sub_219BF7314();

      *&v207 = 0xD000000000000014;
      *(&v207 + 1) = 0x8000000219D099A0;
      *&v201 = v142;
      *(&v201 + 1) = v143;
      LOBYTE(v202) = v144;
      v145 = SystemNotificationsRouteModel.identifier.getter();
      v147 = v146;
      v148 = sub_219092554(v142, v143, v144);
      MEMORY[0x21CECC330](v145, v147, v148);

      return v207;
    case 0x2BuLL:
      v50 = swift_projectBox();
      v52 = v193;
      v51 = v194;
      v53 = v192;
      (*(v194 + 16))(v192, v50, v193);
      v54 = 0x6465626D45626577;
      v55 = 0xE90000000000002DLL;
      goto LABEL_61;
    case 0x2CuLL:
      v70 = swift_projectBox();
      v71 = v189;
      sub_219092F4C(v70, v189, type metadata accessor for WebLinkViewControllerType);
      sub_219092F4C(v71, v11, type metadata accessor for WebLinkViewControllerType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v175 = v185;
          sub_2190925A0(v11, v185, type metadata accessor for WebLinkRouteModel);
          *&v201 = 0x6577656956626577;
          *(&v201 + 1) = 0xEA00000000002D72;
          MEMORY[0x21CECC330](*v175, v175[1]);
          v121 = v201;
          sub_218790034(v71, type metadata accessor for WebLinkViewControllerType);
          v122 = type metadata accessor for WebLinkRouteModel;
          v123 = v175;
          goto LABEL_98;
        }

        v73 = v194;
        v74 = v192;
        v75 = v11;
        v76 = v193;
        (*(v194 + 32))(v192, v75, v193);
        v77 = 0x2D6B6E694C626577;
        v78 = 0xE800000000000000;
      }

      else
      {
        v73 = v194;
        v74 = v192;
        v173 = v11;
        v76 = v193;
        (*(v194 + 32))(v192, v173, v193);
        *&v201 = 0;
        *(&v201 + 1) = 0xE000000000000000;
        sub_219BF7314();

        v77 = 0x57726573776F7262;
        v78 = 0xEF2D6B6E694C6265;
      }

      *&v201 = v77;
      *(&v201 + 1) = v78;
      v174 = sub_219BDB804();
      MEMORY[0x21CECC330](v174);

      v121 = v201;
      (*(v73 + 8))(v74, v76);
      v172 = type metadata accessor for WebLinkViewControllerType;
LABEL_97:
      v122 = v172;
      v123 = v71;
LABEL_98:
      sub_218790034(v123, v122);
      return v121;
    case 0x2DuLL:
      sub_218C24040(0);
      v140 = swift_projectBox();
      v52 = v193;
      v51 = v194;
      v53 = v192;
      (*(v194 + 16))(v192, v140, v193);
      v54 = 0x4C63696D616E7964;
      v55 = 0xEC0000002D6B6E69;
LABEL_61:
      *&v201 = v54;
      *(&v201 + 1) = v55;
      goto LABEL_80;
    case 0x2EuLL:
      v164 = swift_projectBox();
      v52 = v193;
      v51 = v194;
      v53 = v192;
      (*(v194 + 16))(v192, v164, v193);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_219BF7314();

      v57 = 0x8000000219D09940;
      v58 = 0xD000000000000012;
      goto LABEL_79;
    case 0x2FuLL:
      v56 = swift_projectBox();
      v52 = v193;
      v51 = v194;
      v53 = v192;
      (*(v194 + 16))(v192, v56, v193);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_219BF7314();

      v57 = 0x8000000219D09920;
      v58 = 0xD000000000000011;
LABEL_79:
      *&v201 = v58;
      *(&v201 + 1) = v57;
LABEL_80:
      v97 = sub_219BDB804();
LABEL_81:
      MEMORY[0x21CECC330](v97);

      v121 = v201;
      (*(v51 + 8))(v53, v52);
      return v121;
    case 0x30uLL:
      return 0x6C46797542657270;
    case 0x31uLL:
      v85 = v33 & 0xFFFFFFFFFFFFFF9;
      v86 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v87 = *(v85 + 24);
      v88 = *(v85 + 32);
      v89 = *(v85 + 40);
      v90 = *(v85 + 48);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_21908FD7C(v86, v87, v88, v89, v90);
      sub_219BF7314();

      *&v201 = 0xD000000000000016;
      *(&v201 + 1) = 0x8000000219D09900;
      if (v90)
      {

        v91 = v86;
        v92 = v87;
      }

      else
      {
        v176 = [v86 identifier];
        v177 = sub_219BF5414();
        v92 = v178;

        v91 = v177;
      }

      MEMORY[0x21CECC330](v91, v92);

      sub_21896FBB0(v86, v87, v88, v89, v90);
      return v201;
    case 0x32uLL:
      v46 = swift_projectBox();
      v48 = v187;
      v47 = v188;
      (*(v187 + 16))(v6, v46, v188);
      v49 = sub_219BE3C84();
      (*(v48 + 8))(v6, v47);
      return v49;
    case 0x33uLL:
      v165 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);

      return v165;
    case 0x34uLL:
      return 7367028;
    case 0x36uLL:
      return 0x7542746365726964;
    case 0x37uLL:
      return 0xD000000000000011;
    case 0x38uLL:
      v60 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v59 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x18);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;

      sub_219BF7314();
      MEMORY[0x21CECC330](0xD000000000000017, 0x8000000219D09A40);
      *&v207 = v60;
      *(&v207 + 1) = v59;
      sub_219BF7484();
LABEL_111:

      return v201;
    case 0x39uLL:
      return 0x7548656C7A7A7570;
    case 0x3AuLL:
      v79 = v33 & 0xFFFFFFFFFFFFFF9;
      v80 = *((v33 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v81 = *(v79 + 24);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v201 = 0xD000000000000012;
      *(&v201 + 1) = 0x8000000219CED0B0;
LABEL_39:
      MEMORY[0x21CECC330](v80, v81);
      return v201;
    case 0x3BuLL:
      v149 = swift_projectBox();
      v71 = v190;
      sub_219092F4C(v149, v190, type metadata accessor for PuzzleModel);
      *&v201 = 0x2D656C7A7A7570;
      *(&v201 + 1) = 0xE700000000000000;
      *&v207 = 0;
      *(&v207 + 1) = 0xE000000000000000;
      sub_219BF7314();

      *&v207 = 0xD000000000000017;
      *(&v207 + 1) = 0x8000000219D098C0;
      v151 = *v71;
      v150 = *(v71 + 8);
      if (*(v71 + 16))
      {
        v152 = [swift_unknownObjectRetain() identifier];
        v153 = sub_219BF5414();
        v155 = v154;

        v156.n128_f64[0] = sub_218B083E8(v151, v150, 1);
        v151 = v153;
        v150 = v155;
      }

      else
      {
      }

      MEMORY[0x21CECC330](v151, v150, v156);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      MEMORY[0x21CECC330](v207, *(&v207 + 1));

      v121 = v201;
      v172 = type metadata accessor for PuzzleModel;
      goto LABEL_97;
    case 0x3CuLL:
      result = 0x6565466F69647561;
      switch(__ROR8__(v33 + 0x1000000000000000, 3))
      {
        case 1:
        case 0xALL:
          return 0xD000000000000010;
        case 2:
          result = 0xD000000000000011;
          break;
        case 3:
          result = 0x79726F74736968;
          break;
        case 4:
          result = 0x6C616E7265746E69;
          break;
        case 5:
        case 0xDLL:
          return 0xD000000000000013;
        case 6:
          result = 0x697A6167614D796DLL;
          break;
        case 7:
          result = 0x747465537377656ELL;
          break;
        case 8:
          result = 0x6465766173;
          break;
        case 9:
          result = 0x6957646572616873;
          break;
        case 0xBLL:
          result = 0xD000000000000017;
          break;
        case 0xCLL:
          result = 0xD000000000000015;
          break;
        default:
          return result;
      }

      return result;
    default:
      return result;
  }
}

uint64_t type metadata accessor for CampaignRouteModel(uint64_t a1)
{
  result = qword_280ED3ED0;
  if (!qword_280ED3ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218834280(uint64_t a1)
{
  sub_219BDE924();
  if (v1 <= 0x3F)
  {
    sub_2186E3374();
    if (v2 <= 0x3F)
    {
      sub_21876A024(319, &qword_280E8F550, MEMORY[0x277D34E10], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_21876A024(319, &qword_280EE6350, MEMORY[0x277D35078], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21876A024(319, &unk_280EE8E70, MEMORY[0x277D2F9F0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void NewsActivity2.type.getter(char *a1@<X8>)
{
  v2 = *v1;
  v3 = 1;
  switch((*v1 >> 58) & 0x3C | (*v1 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 8uLL:
      goto LABEL_43;
    case 5uLL:
      v3 = 5;
      goto LABEL_43;
    case 9uLL:
      v3 = 6;
      goto LABEL_43;
    case 0xAuLL:
    case 0xBuLL:
    case 0x10uLL:
    case 0x26uLL:
      v17 = a1;
      v4 = v2 & 0xFFFFFFFFFFFFFF9;
      v5 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v6 = *(v4 + 24);
      v7 = *(v4 + 32);
      v8 = *(v4 + 40);
      v9 = *(v4 + 64);
      v16 = *(v4 + 56);
      v10 = *(v4 + 72);
      v11 = *(v4 + 80);
      v12 = *(v4 + 88);
      v13 = *(v4 + 48);
      v14 = *(v4 + 96);
      sub_21908FD7C(v5, v6, v7, v8, v13);
      sub_218F20858(v9, v10, v11, v12, v14);
      sub_21896FBB0(v5, v6, v7, v8, v13);
      sub_218DFAEC4(v9, v10, v11, v12, v14);
      if (v16 == 12)
      {
        v3 = 36;
        a1 = v17;
      }

      else if (v16 == 3)
      {
        v3 = 32;
        a1 = v17;
      }

      else
      {
        a1 = v17;
        if (v16 == 2)
        {
          v3 = 10;
        }

        else
        {
          v3 = 9;
        }
      }

      goto LABEL_43;
    case 0xCuLL:
      v3 = 30;
      goto LABEL_43;
    case 0xEuLL:
      v3 = 31;
      goto LABEL_43;
    case 0xFuLL:
      v3 = 36;
      goto LABEL_43;
    case 0x11uLL:
      v3 = 7;
      goto LABEL_43;
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
      v3 = 13;
      goto LABEL_43;
    case 0x18uLL:
      v3 = 14;
      goto LABEL_43;
    case 0x1AuLL:
      v3 = 17;
      goto LABEL_43;
    case 0x1BuLL:
      v3 = 15;
      goto LABEL_43;
    case 0x1EuLL:
      v3 = 18;
      goto LABEL_43;
    case 0x1FuLL:
      v3 = 19;
      goto LABEL_43;
    case 0x20uLL:
      v3 = 20;
      goto LABEL_43;
    case 0x21uLL:
      v3 = 21;
      goto LABEL_43;
    case 0x22uLL:
      v3 = 22;
      goto LABEL_43;
    case 0x23uLL:
      v3 = 24;
      goto LABEL_43;
    case 0x39uLL:
      v3 = 35;
      goto LABEL_43;
    case 0x3AuLL:
      v3 = 34;
      goto LABEL_43;
    case 0x3BuLL:
      v3 = 33;
      goto LABEL_43;
    case 0x3CuLL:
      v15 = __ROR8__(v2 + 0x1000000000000000, 3);
      if (v15 > 3)
      {
        if (v15 <= 7)
        {
          if (v15 == 6)
          {
            v3 = 16;
            goto LABEL_43;
          }
        }

        else
        {
          if (v15 == 8)
          {
            v3 = 25;
            goto LABEL_43;
          }

          if (v15 == 9)
          {
            v3 = 27;
            goto LABEL_43;
          }
        }

LABEL_44:
        sub_219BF7314();
        MEMORY[0x21CECC330](0xD000000000000026, 0x8000000219D09C20);
        sub_219BF7484();
        sub_219BF7514();
        __break(1u);
        JUMPOUT(0x218834720);
      }

      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v3 = 4;
        }

        else
        {
          v3 = 12;
        }
      }

      else if (v15)
      {
        v3 = 3;
      }

      else
      {
        v3 = 2;
      }

LABEL_43:
      *a1 = v3;
      return;
    default:
      goto LABEL_44;
  }
}

unint64_t sub_218834818()
{
  result = qword_280EE0D90;
  if (!qword_280EE0D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0D90);
  }

  return result;
}

unint64_t sub_218834870()
{
  result = qword_280EE0D78;
  if (!qword_280EE0D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0D78);
  }

  return result;
}

unint64_t sub_2188348C4@<X0>(unint64_t *a1@<X8>)
{
  result = NewsActivityType2.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t NewsActivityType2.rawValue.getter()
{
  result = 0x746E497961646F54;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
    case 0xF:
      result = 0xD00000000000001FLL;
      break;
    case 4:
    case 5:
    case 0x22:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 0x12:
    case 0x21:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
    case 0xB:
    case 0x16:
    case 0x18:
      result = 0xD00000000000001BLL;
      break;
    case 0xA:
      result = 0xD00000000000001ELL;
      break;
    case 0xC:
    case 0x24:
      result = 0xD000000000000016;
      break;
    case 0xD:
    case 0x19:
      result = 0xD000000000000014;
      break;
    case 0xE:
      result = 0xD000000000000013;
      break;
    case 0x10:
    case 0x14:
    case 0x1B:
      result = 0xD00000000000001CLL;
      break;
    case 0x11:
      result = 0xD000000000000021;
      break;
    case 0x13:
      result = 0xD000000000000018;
      break;
    case 0x15:
      result = 0xD000000000000022;
      break;
    case 0x17:
      result = 0xD000000000000028;
      break;
    case 0x1A:
      result = 0xD000000000000019;
      break;
    case 0x1C:
      return result;
    case 0x1D:
      result = 0x6E65746E49676154;
      break;
    case 0x1E:
      result = 0xD000000000000018;
      break;
    case 0x1F:
      result = 0xD000000000000025;
      break;
    case 0x20:
      result = 0xD000000000000017;
      break;
    case 0x23:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

unint64_t sub_218834D10(unint64_t *a1)
{
  v2 = *a1;
  sub_218834EB8(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 1635017060;
  *(inited + 40) = 0xE400000000000000;
  v7 = v2;
  v4 = sub_218834F1C(&v7, 0);
  if (v1)
  {

    swift_setDeallocating();
    sub_2188317B0();
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 48) = v4;
    *(inited + 56) = v5;
    v2 = sub_218831A70(inited);
    swift_setDeallocating();
    sub_218790094(inited + 32, sub_2188317B0);
  }

  return v2;
}

void sub_218834E54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218834EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218834F1C(unint64_t *a1, uint64_t a2)
{
  v432 = a2;
  v3 = sub_219BDD804();
  v420 = *(v3 - 8);
  v421 = v3;
  MEMORY[0x28223BE20](v3);
  v419 = &v417 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDE664();
  v418 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v417 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PuzzleModel(0);
  MEMORY[0x28223BE20](v8 - 8);
  v423 = &v417 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v433 = *(v10 - 1);
  v434 = v10;
  MEMORY[0x28223BE20](v10);
  v422 = &v417 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDE294();
  v427 = *(v12 - 8);
  v428 = v12;
  MEMORY[0x28223BE20](v12);
  v426 = &v417 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218834EB8(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v424 = &v417 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v435 = &v417 - v17;
  MEMORY[0x28223BE20](v18);
  v431 = &v417 - v19;
  v20 = sub_219BDD944();
  MEMORY[0x28223BE20](v20 - 8);
  v425 = &v417 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v417 - v23;
  v25 = sub_219BE5F44();
  v429 = *(v25 - 8);
  v430 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v417 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v417 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v417 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v417 - v35;
  v37 = *a1;
  switch((v37 >> 58) & 0x3C | (v37 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
      sub_2187B2C48(0);
      v423 = v37;
      v38 = swift_projectBox();
      sub_219719558(v38, v36, type metadata accessor for NewsActivity2.Article);
      sub_219719558(v36, v33, type metadata accessor for NewsActivity2.Article);
      sub_2187B2DA0(0);
      v40 = *&v33[*(v39 + 48)];
      sub_218790094(v33, MEMORY[0x277D2FB40]);
      v41 = MEMORY[0x277D84F90];
      if (v40)
      {
        v41 = v40;
      }

      v435 = v41;
      v42 = v432;
      if (v432)
      {
        v43 = v429;
        v44 = v430;
        (*(v429 + 104))(v27, *MEMORY[0x277D6D3C8], v430);
        v45 = sub_2190894E8(v27, v42);
        (*(v43 + 8))(v27, v44);
        if (v45)
        {
          v46 = v435;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_2191F8570(0, *(v46 + 2) + 1, 1, v46);
          }

          v48 = *(v46 + 2);
          v47 = *(v46 + 3);
          if (v48 >= v47 >> 1)
          {
            v46 = sub_2191F8570((v47 > 1), v48 + 1, 1, v46);
          }

          *(v46 + 2) = v48 + 1;
          v435 = v46;
          v46[v48 + 32] = 1;
        }
      }

      sub_219BDB084();
      swift_allocObject();
      v434 = sub_219BDB074();
      *&v457 = v423;
      NewsActivity2.type.getter(&v444);
      LODWORD(v433) = v444;
      sub_219719558(v36, v33, type metadata accessor for NewsActivity2.Article);

      v49 = MEMORY[0x277D2FB40];
      sub_218AAFD90(v33, v24, MEMORY[0x277D2FB40]);
      v432 = sub_219BDD8C4();
      v430 = v50;
      v51 = MEMORY[0x277D2FB40];
      sub_218790094(v24, MEMORY[0x277D2FB40]);
      sub_219719558(v36, v33, type metadata accessor for NewsActivity2.Article);

      sub_218AAFD90(v33, v24, v49);
      v52 = sub_21909187C(v24);
      v429 = v53;
      sub_218790094(v24, v51);
      sub_219718B40(v36, v431);
      sub_218AAFD90(v36, v33, type metadata accessor for NewsActivity2.Article);

      v54 = v425;
      sub_218AAFD90(v33, v425, v49);
      v55 = v426;
      sub_219BDD8E4();
      sub_218790094(v54, v51);
      v56 = sub_219BDE284();
      (*(v427 + 8))(v55, v428);
      if (v56 && (v57 = [v56 jsonRepresentation], v56, v57))
      {
        v58 = sub_219BF5414();
        v60 = v59;
      }

      else
      {
        v58 = 0;
        v60 = 0;
      }

      v87 = v435;
      v88 = v433;
      v89 = type metadata accessor for NewsActivityInfo(0);
      v90 = objc_allocWithZone(v89);
      v90[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v88;
      v91 = &v90[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      v92 = v431;
      v93 = v429;
      v94 = v430;
      *v91 = v432;
      v91[1] = v94;
      v95 = &v90[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v95 = v52;
      v95[1] = v93;
      sub_2188383F8(v92, &v90[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v90[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = v87;
      v96 = &v90[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v96 = v58;
      v96[1] = v60;
      v97 = &v90[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v97 = xmmword_219C14A10;
      *(v97 + 2) = 0;
      *(v97 + 3) = 0;
      v98 = &v90[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v98 = 0;
      v98[8] = 1;
      v436.receiver = v90;
      v436.super_class = v89;
      v99 = objc_msgSendSuper2(&v436, sel_init);
      sub_218838478(v92);
      *&v457 = v99;
      sub_218838504();
      v100 = sub_219BDB064();

      return v100;
    case 6uLL:
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v457 = v37;
      NewsActivity2.type.getter(&v448);
      v154 = v448;
      *&v444 = v37;
      NewsActivity2.type.getter(v469);
      v155 = NewsActivityType2.rawValue.getter();
      v157 = v156;
      v158 = v435;
      v433[7](v435, 1, 1, v434);
      v159 = type metadata accessor for NewsActivityInfo(0);
      v160 = objc_allocWithZone(v159);
      v160[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v154;
      v161 = &v160[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v161 = v155;
      v161[1] = v157;
      v162 = &v160[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v162 = 0xD000000000000013;
      v162[1] = 0x8000000219D31880;
      sub_2188383F8(v158, &v160[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v160[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v163 = &v160[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v163 = 0;
      v163[1] = 0;
      v164 = &v160[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v164 = xmmword_219C14A10;
      *(v164 + 2) = 0;
      *(v164 + 3) = 0;
      v165 = &v160[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v165 = 0;
      v165[8] = 1;
      v442.receiver = v160;
      v442.super_class = v159;
      v166 = objc_msgSendSuper2(&v442, sel_init);
      sub_218838478(v158);
      *&v457 = v166;
      sub_218838504();
      v100 = sub_219BDB064();

      return v100;
    case 8uLL:
      v197 = swift_projectBox();
      sub_219719558(v197, v30, type metadata accessor for NewsActivity2.Article);
      sub_219BDB084();
      swift_allocObject();
      v434 = sub_219BDB074();
      *&v457 = v37;
      NewsActivity2.type.getter(&v444);
      LODWORD(v433) = v444;
      sub_219719558(v30, v33, type metadata accessor for NewsActivity2.Article);
      sub_2187B2DA0(0);
      v199 = v198;

      v200 = MEMORY[0x277D2FB40];
      sub_218AAFD90(v33, v24, MEMORY[0x277D2FB40]);
      v201 = sub_219BDD8A4();
      v431 = v202;
      v432 = v201;
      v203 = MEMORY[0x277D2FB40];
      sub_218790094(v24, MEMORY[0x277D2FB40]);
      sub_219719558(v30, v33, type metadata accessor for NewsActivity2.Article);

      sub_218AAFD90(v33, v24, v200);
      v204 = sub_21909187C(v24);
      v430 = v205;
      sub_218790094(v24, v203);
      v206 = v435;
      sub_219BDB914();
      sub_219719558(v30, v33, type metadata accessor for NewsActivity2.Article);
      v207 = *&v33[*(v199 + 48)];
      sub_218790094(v33, v203);
      v208 = type metadata accessor for NewsActivityInfo(0);
      v209 = objc_allocWithZone(v208);
      v209[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v433;
      v210 = &v209[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      v211 = v431;
      *v210 = v432;
      v210[1] = v211;
      v212 = &v209[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      v213 = v430;
      *v212 = v204;
      v212[1] = v213;
      sub_2188383F8(v206, &v209[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v209[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = v207;
      v214 = &v209[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v214 = 0;
      v214[1] = 0;
      v215 = &v209[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v215 = xmmword_219C14A10;
      *(v215 + 2) = 0;
      *(v215 + 3) = 0;
      v216 = &v209[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v216 = 0;
      v216[8] = 1;
      v438.receiver = v209;
      v438.super_class = v208;
      v217 = objc_msgSendSuper2(&v438, sel_init);
      sub_218838478(v206);
      *&v457 = v217;
      sub_218838504();
      v100 = sub_219BDB064();

      sub_218790094(v30, type metadata accessor for NewsActivity2.Article);
      return v100;
    case 0xAuLL:
    case 0xBuLL:
      v423 = v37;
      v61 = v37 & 0xFFFFFFFFFFFFFF9;
      v62 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v63 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v64 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v65 = *(v61 + 40);
      v66 = *(v61 + 48);
      v67 = *(v61 + 64);
      v420 = *(v61 + 56);
      v421 = v27;
      v68 = *(v61 + 72);
      v69 = *(v61 + 80);
      v70 = *(v61 + 88);
      v71 = *(v61 + 96);
      v433 = v62;
      v434 = v63;
      sub_21908FD7C(v62, v63, v64, v65, v66);
      v426 = v68;
      v427 = v67;
      v424 = v70;
      v425 = v69;
      LODWORD(v422) = v71;
      v72.n128_f64[0] = sub_218F20858(v67, v68, v69, v70, v71);
      v73 = v66;
      v74 = v66 == 0;
      v75 = v64;
      v428 = v65;
      if (!v74)
      {
        v64 = v65;
      }

      v76 = MEMORY[0x277D84F90];
      if (v64)
      {
        v76 = v64;
      }

      v431 = v76;
      v77 = v432;
      v78 = v421;
      if (v432)
      {
        v79 = v433;
        v81 = v429;
        v80 = v430;
        (*(v429 + 104))(v421, *MEMORY[0x277D6D3C8], v430, v72);

        v82 = sub_2190894E8(v78, v77);
        (*(v81 + 8))(v78, v80);
        if (v82)
        {
          v83 = v431;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = sub_2191F8570(0, *(v83 + 2) + 1, 1, v83);
          }

          v84 = v79;
          v86 = *(v83 + 2);
          v85 = *(v83 + 3);
          if (v86 >= v85 >> 1)
          {
            v83 = sub_2191F8570((v85 > 1), v86 + 1, 1, v83);
          }

          *(v83 + 2) = v86 + 1;
          v431 = v83;
          v83[v86 + 32] = 1;
        }

        else
        {
          v84 = v79;
        }

        v277 = v75;
        v278 = v73;
      }

      else
      {

        v277 = v75;
        v278 = v73;
        v84 = v433;
      }

      sub_219BDB084();
      swift_allocObject();
      v279 = sub_219BDB074();
      *&v448 = v423;
      NewsActivity2.type.getter(v469);
      v432 = v279;
      LODWORD(v430) = v469[0];
      if (!v278)
      {
        v280 = [v84 identifier];
        v429 = sub_219BF5414();
        v423 = v281;

        v282 = [v84 name];
        v283 = sub_219BF5414();
        v285 = v284;

LABEL_63:
        *&v457 = v84;
        *(&v457 + 1) = v434;
        v288 = v428;
        *&v458[0] = v277;
        *(&v458[0] + 1) = v428;
        LOBYTE(v458[1]) = v278;
        v289 = v435;
        sub_219091CFC(v435);
        v290 = type metadata accessor for NewsActivityInfo(0);
        v100 = objc_allocWithZone(v290);
        *(v100 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type) = v430;
        v291 = (v100 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier);
        v292 = v423;
        *v291 = v429;
        v291[1] = v292;
        v293 = (v100 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title);
        *v293 = v283;
        v293[1] = v285;
        sub_2188383F8(v289, v100 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url);
        *(v100 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits) = v431;
        v294 = (v100 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark);
        *v294 = 0;
        v294[1] = 0;
        v295 = v100 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition;
        *v295 = xmmword_219C14A10;
        *(v295 + 16) = 0;
        *(v295 + 24) = 0;
        v296 = v100 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue;
        *v296 = v420;
        *(v296 + 8) = 0;
        v437.receiver = v100;
        v437.super_class = v290;
        v297 = objc_msgSendSuper2(&v437, sel_init);
        sub_21896FBB0(v433, v434, v277, v288, v278);
        sub_218DFAEC4(v427, v426, v425, v424, v422);
        sub_218838478(v289);
        *&v457 = v297;
        sub_218838504();
        v298 = v470;
        v299 = sub_219BDB064();
        if (!v298)
        {
          v100 = v299;
        }

        return v100;
      }

      if (v278 == 1)
      {
        v286 = &v277[OBJC_IVAR___TSFeedViewContext_title];
        swift_beginAccess();
        v283 = *v286;
        v285 = v286[1];

        v429 = v84;
        v423 = v287;
        goto LABEL_63;
      }

      goto LABEL_127;
    case 0xCuLL:
      goto LABEL_78;
    case 0xEuLL:
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v457 = v37;
      NewsActivity2.type.getter(&v448);
      v250 = v448;
      *&v444 = v37;
      NewsActivity2.type.getter(v469);
      v100 = NewsActivityType2.rawValue.getter();
      v252 = v251;
      v104 = v435;
      v433[7](v435, 1, 1, v434);
      v253 = type metadata accessor for NewsActivityInfo(0);
      v254 = objc_allocWithZone(v253);
      v254[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v250;
      v255 = &v254[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v255 = v100;
      v255[1] = v252;
      *&v254[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title] = xmmword_219C9EE40;
      sub_2188383F8(v104, &v254[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v254[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v256 = &v254[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v256 = 0;
      v256[1] = 0;
      v257 = &v254[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v257 = xmmword_219C14A10;
      *(v257 + 2) = 0;
      *(v257 + 3) = 0;
      v258 = &v254[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v258 = 0;
      v258[8] = 1;
      v443.receiver = v254;
      v443.super_class = v253;
      v111 = objc_msgSendSuper2(&v443, sel_init);
      goto LABEL_79;
    case 0xFuLL:
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v457 = v37;
      NewsActivity2.type.getter(&v448);
      v185 = v448;
      *&v444 = v37;
      NewsActivity2.type.getter(v469);
      v100 = NewsActivityType2.rawValue.getter();
      v187 = v186;
      v188 = v435;
      v433[7](v435, 1, 1, v434);
      v189 = type metadata accessor for NewsActivityInfo(0);
      v190 = objc_allocWithZone(v189);
      v190[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v185;
      v191 = &v190[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v191 = v100;
      v191[1] = v187;
      v192 = &v190[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v192 = 0;
      v192[1] = 0;
      sub_2188383F8(v188, &v190[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v190[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v193 = &v190[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v193 = 0;
      v193[1] = 0;
      v194 = &v190[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v194 = xmmword_219C14A10;
      *(v194 + 2) = 0;
      *(v194 + 3) = 0;
      v195 = &v190[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v195 = 12;
      v195[8] = 0;
      v465.receiver = v190;
      v465.super_class = v189;
      v196 = objc_msgSendSuper2(&v465, sel_init);
      goto LABEL_49;
    case 0x11uLL:
      v137 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v430 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v138 = v430;
      v431 = v137;
      v139 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v140 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
      sub_219BDB084();
      swift_allocObject();
      sub_2188382C8(v137, v138);
      v432 = sub_219BDB074();
      *&v457 = v37;
      NewsActivity2.type.getter(&v448);
      v100 = v448;
      *&v444 = v37;
      NewsActivity2.type.getter(v469);
      v141 = NewsActivityType2.rawValue.getter();
      v143 = v142;
      v144 = v435;
      v433[7](v435, 1, 1, v434);
      v145 = type metadata accessor for NewsActivityInfo(0);
      v146 = objc_allocWithZone(v145);
      v146[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v100;
      v147 = &v146[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v147 = v141;
      v147[1] = v143;
      *&v146[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title] = xmmword_219C9EE30;
      sub_2188383F8(v144, &v146[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v146[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v148 = &v146[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v148 = 0;
      v148[1] = 0;
      v149 = &v146[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      v150 = v430;
      *v149 = v431;
      v149[1] = v150;
      v149[2] = v139;
      v149[3] = v140;
      v151 = &v146[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v151 = 0;
      v151[8] = 1;
      v439.receiver = v146;
      v439.super_class = v145;
      v152 = objc_msgSendSuper2(&v439, sel_init);
      v153 = v144;
      goto LABEL_80;
    case 0x14uLL:
      v423 = v37;
      v271 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v457 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v458[0] = v271;
      v272 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v458[1] = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v459 = v272;
      v460 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v273 = *&v458[0];
      if (((HIBYTE(v458[1]) << 48) & 0xC0000000000000) == 0x40000000000000)
      {

        v274 = 0;
        v275 = 0;
        v276 = v432;
      }

      else
      {
        v448 = v457;
        v449 = *&v458[0];
        v450 = *(v458 + 8);
        v451 = BYTE8(v458[1]) & 1;
        sub_219092568(&v457, &v444);
        v328 = [sub_219BD4870() title];
        v274 = sub_219BF5414();
        v275 = v329;

        v276 = v432;
        if (*(&v458[1] + 1) >> 62)
        {
          if (*(&v458[1] + 1) >> 62 == 1)
          {
            v273 = *&v458[0];
          }

          else
          {
            v273 = v460;
          }
        }

        else
        {
          v273 = v459;
        }
      }

      if (v273)
      {
        v387 = v273;
      }

      else
      {
        v387 = MEMORY[0x277D84F90];
      }

      if (v276)
      {
        v388 = v274;
        v389 = v429;
        v390 = v430;
        (*(v429 + 104))(v27, *MEMORY[0x277D6D3C8], v430);

        v391 = sub_2190894E8(v27, v276);
        (*(v389 + 8))(v27, v390);
        if (v391)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v387 = sub_2191F8570(0, *(v387 + 2) + 1, 1, v387);
          }

          v274 = v388;
          v393 = *(v387 + 2);
          v392 = *(v387 + 3);
          if (v393 >= v392 >> 1)
          {
            v387 = sub_2191F8570((v392 > 1), v393 + 1, 1, v387);
          }

          *(v387 + 2) = v393 + 1;
          v387[v393 + 32] = 1;
        }

        else
        {
          v274 = v388;
        }
      }

      else
      {
      }

      sub_219BDB084();
      swift_allocObject();
      v394 = sub_219BDB074();
      *&v448 = v423;
      NewsActivity2.type.getter(v469);
      v395 = v469[0];
      v397 = *(&v457 + 1);
      v396 = v457;
      v398 = HIBYTE(v458[1]) >> 6;
      v435 = v394;
      if (v398)
      {
        if (v398 == 1)
        {
        }

        else
        {
          v444 = v457;
          v445 = v458[0];
          v446 = *&v458[1];
          v447 = BYTE8(v458[1]) & 1;
          v396 = sub_219BD47C0();
          v397 = v401;
        }
      }

      else
      {
        v444 = v457;
        v445 = v458[0];
        v446 = *&v458[1];
        v447 = BYTE8(v458[1]) & 1;
        v399 = [sub_219BD4870() identifier];
        v396 = sub_219BF5414();
        v397 = v400;
      }

      if (v275)
      {
        v402 = v274;
      }

      else
      {
        v402 = 0;
      }

      if (v275)
      {
        v403 = v275;
      }

      else
      {
        v403 = 0xE000000000000000;
      }

      v433[7](v424, 1, 1, v434);
      if (*(&v458[1] + 1) >> 62)
      {
        if (*(&v458[1] + 1) >> 62 == 1)
        {
          v404 = v458;
        }

        else
        {
          v404 = &v460;
        }
      }

      else
      {
        v404 = &v459;
      }

      v405 = *v404;
      v100 = type metadata accessor for NewsActivityInfo(0);
      v406 = objc_allocWithZone(v100);
      v406[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v395;
      v407 = &v406[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v407 = v396;
      v407[1] = v397;
      v408 = &v406[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v408 = v402;
      v408[1] = v403;
      v409 = v424;
      sub_2188383F8(v424, &v406[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v406[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = v405;
      v410 = &v406[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v410 = 0;
      v410[1] = 0;
      v411 = &v406[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v411 = xmmword_219C14A10;
      *(v411 + 2) = 0;
      *(v411 + 3) = 0;
      v412 = &v406[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v412 = 0;
      v412[8] = 1;
      v452.receiver = v406;
      v452.super_class = v100;

      v413 = objc_msgSendSuper2(&v452, sel_init);
      sub_218838478(v409);
      *&v444 = v413;
      sub_218838504();
      v414 = v470;
      v415 = sub_219BDB064();
      if (!v414)
      {
        v100 = v415;
      }

      sub_218AAFFC4(&v457);
      return v100;
    case 0x18uLL:
      v167 = swift_projectBox();
      v169 = v433;
      v168 = v434;
      v170 = v433[2];
      v171 = v422;
      (v170)(v422, v167, v434);
      sub_219BDB084();
      swift_allocObject();
      v431 = sub_219BDB074();
      *&v457 = v37;
      NewsActivity2.type.getter(&v448);
      LODWORD(v432) = v448;
      *&v444 = v37;
      NewsActivity2.type.getter(v469);
      v100 = NewsActivityType2.rawValue.getter();
      v430 = v172;
      v173 = v435;
      (v170)(v435, v171, v168);
      (*(v169 + 56))(v173, 0, 1, v168);
      v174 = type metadata accessor for NewsActivityInfo(0);
      v175 = objc_allocWithZone(v174);
      v175[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v432;
      v176 = &v175[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      v177 = v430;
      *v176 = v100;
      v176[1] = v177;
      v178 = &v175[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v178 = 0;
      v178[1] = 0;
      sub_2188383F8(v173, &v175[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v175[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v179 = &v175[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v179 = 0;
      v179[1] = 0;
      v180 = &v175[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v180 = xmmword_219C14A10;
      *(v180 + 2) = 0;
      *(v180 + 3) = 0;
      v181 = &v175[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v181 = 0;
      v181[8] = 1;
      v462.receiver = v175;
      v462.super_class = v174;
      v182 = objc_msgSendSuper2(&v462, sel_init);
      sub_218838478(v173);
      *&v457 = v182;
      sub_218838504();
      v183 = v470;
      v184 = sub_219BDB064();
      if (!v183)
      {
        v100 = v184;
      }

      (*(v169 + 8))(v422, v434);
      return v100;
    case 0x1AuLL:
      sub_21896FC94((v37 & 0xFFFFFFFFFFFFFF9) + 16, &v457);
      sub_219BDB084();
      swift_allocObject();
      v432 = sub_219BDB074();
      *&v444 = v37;
      NewsActivity2.type.getter(&v448);
      v259 = v448;
      v260 = v457;
      v100 = *(&v458[0] + 1);
      v261 = *&v458[0];
      v262 = v435;
      v433[7](v435, 1, 1, v434);
      v263 = type metadata accessor for NewsActivityInfo(0);
      v264 = objc_allocWithZone(v263);
      v264[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v259;
      *&v264[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier] = v260;
      *&v264[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title] = __PAIR128__(v100, v261);
      sub_2188383F8(v262, &v264[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v264[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v265 = &v264[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v265 = 0;
      v265[1] = 0;
      v266 = &v264[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v266 = xmmword_219C14A10;
      *(v266 + 2) = 0;
      *(v266 + 3) = 0;
      v267 = &v264[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v267 = 0;
      v267[8] = 1;
      v456.receiver = v264;
      v456.super_class = v263;

      v268 = objc_msgSendSuper2(&v456, sel_init);
      sub_218838478(v262);
      *&v444 = v268;
      sub_218838504();
      v269 = v470;
      v270 = sub_219BDB064();
      if (!v269)
      {
        v100 = v270;
      }

      sub_218C113E0(&v457);
      return v100;
    case 0x1BuLL:
      v112 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v113 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v114 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v444 = v37;
      NewsActivity2.type.getter(&v448);
      v115 = v448;
      if (v114 == 255)
      {
        v100 = 0;
        v117 = 0xE000000000000000;
      }

      else
      {
        *&v457 = v112;
        *(&v457 + 1) = v113;
        LOBYTE(v458[0]) = v114;
        v100 = MagazineSectionConfigKind.identifier.getter();
        v117 = v116;
      }

      v343 = v470;
      v344 = v435;
      v433[7](v435, 1, 1, v434);
      v345 = type metadata accessor for NewsActivityInfo(0);
      v346 = objc_allocWithZone(v345);
      v346[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v115;
      v347 = &v346[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v347 = v100;
      v347[1] = v117;
      v348 = &v346[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v348 = 0;
      v348[1] = 0;
      sub_2188383F8(v344, &v346[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v346[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v349 = &v346[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v349 = 0;
      v349[1] = 0;
      v350 = &v346[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v350 = xmmword_219C14A10;
      *(v350 + 2) = 0;
      *(v350 + 3) = 0;
      v351 = &v346[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v351 = 0;
      v351[8] = 1;
      v454.receiver = v346;
      v454.super_class = v345;
      v152 = objc_msgSendSuper2(&v454, sel_init);
      sub_218838478(v344);
      *&v457 = v152;
      sub_218838504();
      v340 = v343;
      goto LABEL_82;
    case 0x1EuLL:
      v218 = v37;
      v219 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v220 = sub_219BDE634();
      v221 = v418;
      (*(v418 + 104))(v7, *MEMORY[0x277D30088], v5);
      v222 = sub_219089394(v7, v220);

      (*(v221 + 8))(v7, v5);
      if (v222)
      {
        v223 = v219;
        v224 = sub_2191F8570(0, 1, 1, MEMORY[0x277D84F90]);
        v226 = *(v224 + 2);
        v225 = *(v224 + 3);
        v227 = v420;
        if (v226 >= v225 >> 1)
        {
          v224 = sub_2191F8570((v225 > 1), v226 + 1, 1, v224);
        }

        v228 = v421;
        v229 = v419;
        v432 = v224;
        *(v224 + 2) = v226 + 1;
        v224[v226 + 32] = 1;
        v219 = v223;
      }

      else
      {
        v432 = MEMORY[0x277D84F90];
        v227 = v420;
        v228 = v421;
        v229 = v419;
      }

      v431 = v219;
      sub_219BDB084();
      swift_allocObject();
      v430 = sub_219BDB074();
      *&v457 = v218;
      NewsActivity2.type.getter(&v444);
      v311 = v444;
      sub_219BDE5F4();
      v312 = sub_219BDD7F4();
      v314 = v313;
      (*(v227 + 8))(v229, v228);
      v315 = sub_219718928();
      v317 = v316;
      v100 = v435;
      v433[7](v435, 1, 1, v434);
      v318 = type metadata accessor for NewsActivityInfo(0);
      v319 = objc_allocWithZone(v318);
      v319[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v311;
      v320 = &v319[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v320 = v312;
      v320[1] = v314;
      v321 = &v319[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v321 = v315;
      v321[1] = v317;
      sub_2188383F8(v100, &v319[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v319[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = v432;
      v322 = &v319[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v322 = 0;
      v322[1] = 0;
      v323 = &v319[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v323 = xmmword_219C14A10;
      *(v323 + 2) = 0;
      *(v323 + 3) = 0;
      v324 = &v319[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v324 = 0;
      v324[8] = 1;
      v467.receiver = v319;
      v467.super_class = v318;
      v325 = objc_msgSendSuper2(&v467, sel_init);
      sub_218838478(v100);
      *&v457 = v325;
      sub_218838504();
      v326 = v470;
      v327 = sub_219BDB064();
      if (!v326)
      {
        v100 = v327;
      }

      return v100;
    case 0x1FuLL:
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v457 = v37;
      NewsActivity2.type.getter(&v448);
      v101 = v448;
      *&v444 = v37;
      NewsActivity2.type.getter(v469);
      v100 = NewsActivityType2.rawValue.getter();
      v103 = v102;
      v104 = v435;
      v433[7](v435, 1, 1, v434);
      v105 = type metadata accessor for NewsActivityInfo(0);
      v106 = objc_allocWithZone(v105);
      v106[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v101;
      v107 = &v106[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v107 = v100;
      v107[1] = v103;
      *&v106[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title] = xmmword_219C9EE20;
      sub_2188383F8(v104, &v106[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v106[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v108 = &v106[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v108 = 0;
      v108[1] = 0;
      v109 = &v106[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v109 = xmmword_219C14A10;
      *(v109 + 2) = 0;
      *(v109 + 3) = 0;
      v110 = &v106[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v110 = 0;
      v110[8] = 1;
      v468.receiver = v106;
      v468.super_class = v105;
      v111 = objc_msgSendSuper2(&v468, sel_init);
      goto LABEL_79;
    case 0x20uLL:
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v457 = v37;
      NewsActivity2.type.getter(&v448);
      v240 = v448;
      *&v444 = v37;
      NewsActivity2.type.getter(v469);
      v100 = NewsActivityType2.rawValue.getter();
      v242 = v241;
      v188 = v435;
      v433[7](v435, 1, 1, v434);
      v243 = type metadata accessor for NewsActivityInfo(0);
      v244 = objc_allocWithZone(v243);
      v244[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v240;
      v245 = &v244[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v245 = v100;
      v245[1] = v242;
      v246 = &v244[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v246 = 0;
      v246[1] = 0;
      sub_2188383F8(v188, &v244[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v244[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v247 = &v244[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v247 = 0;
      v247[1] = 0;
      v248 = &v244[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v248 = xmmword_219C14A10;
      *(v248 + 2) = 0;
      *(v248 + 3) = 0;
      v249 = &v244[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v249 = 13;
      v249[8] = 0;
      v466.receiver = v244;
      v466.super_class = v243;
      v196 = objc_msgSendSuper2(&v466, sel_init);
LABEL_49:
      v152 = v196;
      v153 = v188;
      goto LABEL_80;
    case 0x39uLL:
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v457 = v37;
      NewsActivity2.type.getter(&v448);
      v118 = v448;
      *&v444 = v37;
      NewsActivity2.type.getter(v469);
      v100 = NewsActivityType2.rawValue.getter();
      v120 = v119;
      v104 = v435;
      v433[7](v435, 1, 1, v434);
      v121 = type metadata accessor for NewsActivityInfo(0);
      v122 = objc_allocWithZone(v121);
      v122[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v118;
      v123 = &v122[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v123 = v100;
      v123[1] = v120;
      v124 = &v122[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v124 = 0;
      v124[1] = 0;
      sub_2188383F8(v104, &v122[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v122[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v125 = &v122[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v125 = 0;
      v125[1] = 0;
      v126 = &v122[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v126 = xmmword_219C14A10;
      *(v126 + 2) = 0;
      *(v126 + 3) = 0;
      v127 = &v122[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v127 = 0;
      v127[8] = 1;
      v464.receiver = v122;
      v464.super_class = v121;
      v111 = objc_msgSendSuper2(&v464, sel_init);
      goto LABEL_79;
    case 0x3BuLL:
      v128 = swift_projectBox();
      v129 = v423;
      sub_219719558(v128, v423, type metadata accessor for PuzzleModel);
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      *&v457 = v37;
      NewsActivity2.type.getter(&v444);
      v130 = v444;
      v131 = *v129;
      v100 = *(v129 + 8);
      if (*(v129 + 16))
      {
        v132 = [swift_unknownObjectRetain() identifier];
        v133 = sub_219BF5414();
        v135 = v134;

        v136.n128_f64[0] = sub_218B083E8(v131, v100, 1);
        v131 = v133;
        v100 = v135;
      }

      else
      {
      }

      v300 = v470;
      v301 = v435;
      (v433[7])(v435, 1, 1, v434, v136);
      v302 = type metadata accessor for NewsActivityInfo(0);
      v303 = objc_allocWithZone(v302);
      v303[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v130;
      v304 = &v303[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v304 = v131;
      v304[1] = v100;
      v305 = &v303[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v305 = 0;
      v305[1] = 0;
      sub_2188383F8(v301, &v303[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v303[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v306 = &v303[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v306 = 0;
      v306[1] = 0;
      v307 = &v303[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v307 = xmmword_219C14A10;
      *(v307 + 2) = 0;
      *(v307 + 3) = 0;
      v308 = &v303[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v308 = 0;
      v308[8] = 1;
      v463.receiver = v303;
      v463.super_class = v302;
      v309 = objc_msgSendSuper2(&v463, sel_init);
      sub_218838478(v301);
      *&v457 = v309;
      sub_218838504();
      v310 = sub_219BDB064();
      if (!v300)
      {
        v100 = v310;
      }

      sub_218790094(v423, type metadata accessor for PuzzleModel);
      return v100;
    case 0x3CuLL:
      v230 = __ROR8__(v37 + 0x1000000000000000, 3);
      if (v230 <= 5)
      {
        if (!v230)
        {
LABEL_78:
          sub_219BDB084();
          swift_allocObject();
          sub_219BDB074();
          *&v457 = v37;
          NewsActivity2.type.getter(&v448);
          v330 = v448;
          *&v444 = v37;
          NewsActivity2.type.getter(v469);
          v100 = NewsActivityType2.rawValue.getter();
          v332 = v331;
          v104 = v435;
          v433[7](v435, 1, 1, v434);
          v333 = type metadata accessor for NewsActivityInfo(0);
          v334 = objc_allocWithZone(v333);
          v334[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v330;
          v335 = &v334[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
          *v335 = v100;
          v335[1] = v332;
          v336 = &v334[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
          *v336 = 0;
          v336[1] = 0;
          sub_2188383F8(v104, &v334[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
          *&v334[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
          v337 = &v334[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
          *v337 = 0;
          v337[1] = 0;
          v338 = &v334[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
          *v338 = xmmword_219C14A10;
          *(v338 + 2) = 0;
          *(v338 + 3) = 0;
          v339 = &v334[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
          *v339 = 0;
          v339[8] = 1;
          v453.receiver = v334;
          v453.super_class = v333;
          v111 = objc_msgSendSuper2(&v453, sel_init);
          goto LABEL_79;
        }

        if (v230 == 3)
        {
          sub_219BDB084();
          swift_allocObject();
          sub_219BDB074();
          *&v457 = v37;
          NewsActivity2.type.getter(&v448);
          v378 = v448;
          *&v444 = v37;
          NewsActivity2.type.getter(v469);
          v100 = NewsActivityType2.rawValue.getter();
          v380 = v379;
          v104 = v435;
          v433[7](v435, 1, 1, v434);
          v381 = type metadata accessor for NewsActivityInfo(0);
          v382 = objc_allocWithZone(v381);
          v382[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v378;
          v383 = &v382[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
          *v383 = v100;
          v383[1] = v380;
          *&v382[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title] = xmmword_219C9EE10;
          sub_2188383F8(v104, &v382[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
          *&v382[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
          v384 = &v382[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
          *v384 = 0;
          v384[1] = 0;
          v385 = &v382[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
          *v385 = xmmword_219C14A10;
          *(v385 + 2) = 0;
          *(v385 + 3) = 0;
          v386 = &v382[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
          *v386 = 0;
          v386[8] = 1;
          v441.receiver = v382;
          v441.super_class = v381;
          v111 = objc_msgSendSuper2(&v441, sel_init);
LABEL_79:
          v152 = v111;
          v153 = v104;
LABEL_80:
          sub_218838478(v153);
          *&v457 = v152;
          sub_218838504();
          goto LABEL_81;
        }

LABEL_126:
        *&v457 = 0;
        *(&v457 + 1) = 0xE000000000000000;
        sub_219BF7314();

        strcpy(&v457, "This activity ");
        HIBYTE(v457) = -18;
        *&v444 = v37;
        v416 = NewsActivity2.identifier.getter();
        MEMORY[0x21CECC330](v416);

        MEMORY[0x21CECC330](0xD000000000000021, 0x8000000219D32020);
        while (1)
        {
LABEL_127:
          sub_219BF7514();
          __break(1u);
        }
      }

      if (v230 != 6)
      {
        if (v230 == 8)
        {
          sub_219BDB084();
          swift_allocObject();
          sub_219BDB074();
          *&v457 = v37;
          NewsActivity2.type.getter(&v448);
          v231 = v448;
          *&v444 = v37;
          NewsActivity2.type.getter(v469);
          v100 = NewsActivityType2.rawValue.getter();
          v233 = v232;
          v104 = v435;
          v433[7](v435, 1, 1, v434);
          v234 = type metadata accessor for NewsActivityInfo(0);
          v235 = objc_allocWithZone(v234);
          v235[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v231;
          v236 = &v235[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
          *v236 = v100;
          v236[1] = v233;
          *&v235[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title] = xmmword_219C9EE00;
          sub_2188383F8(v104, &v235[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
          *&v235[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
          v237 = &v235[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
          *v237 = 0;
          v237[1] = 0;
          v238 = &v235[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
          *v238 = xmmword_219C14A10;
          *(v238 + 2) = 0;
          *(v238 + 3) = 0;
          v239 = &v235[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
          *v239 = 0;
          v239[8] = 1;
          v440.receiver = v235;
          v440.super_class = v234;
          v111 = objc_msgSendSuper2(&v440, sel_init);
          goto LABEL_79;
        }

        if (v230 == 9)
        {
          sub_219BDB084();
          swift_allocObject();
          sub_219BDB074();
          *&v457 = v37;
          NewsActivity2.type.getter(&v448);
          v368 = v448;
          *&v444 = v37;
          NewsActivity2.type.getter(v469);
          v100 = NewsActivityType2.rawValue.getter();
          v370 = v369;
          v104 = v435;
          v433[7](v435, 1, 1, v434);
          v371 = type metadata accessor for NewsActivityInfo(0);
          v372 = objc_allocWithZone(v371);
          v372[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v368;
          v373 = &v372[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
          *v373 = v100;
          v373[1] = v370;
          v374 = &v372[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
          *v374 = 0;
          v374[1] = 0;
          sub_2188383F8(v104, &v372[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
          *&v372[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
          v375 = &v372[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
          *v375 = 0;
          v375[1] = 0;
          v376 = &v372[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
          *v376 = xmmword_219C14A10;
          *(v376 + 2) = 0;
          *(v376 + 3) = 0;
          v377 = &v372[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
          *v377 = 0;
          v377[8] = 1;
          v461.receiver = v372;
          v461.super_class = v371;
          v111 = objc_msgSendSuper2(&v461, sel_init);
          goto LABEL_79;
        }

        goto LABEL_126;
      }

      sub_219BDB084();
      swift_allocObject();
      v432 = sub_219BDB074();
      *&v457 = v37;
      NewsActivity2.type.getter(&v448);
      v352 = v448;
      *&v444 = v37;
      NewsActivity2.type.getter(v469);
      v353 = NewsActivityType2.rawValue.getter();
      v100 = v354;
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v356 = [objc_opt_self() bundleForClass_];
      v357 = sub_219BDB5E4();
      v359 = v358;

      v360 = v435;
      v433[7](v435, 1, 1, v434);
      v361 = type metadata accessor for NewsActivityInfo(0);
      v362 = objc_allocWithZone(v361);
      v362[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v352;
      v363 = &v362[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
      *v363 = v353;
      v363[1] = v100;
      v364 = &v362[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
      *v364 = v357;
      v364[1] = v359;
      sub_2188383F8(v360, &v362[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
      *&v362[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = 0;
      v365 = &v362[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
      *v365 = 0;
      v365[1] = 0;
      v366 = &v362[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
      *v366 = xmmword_219C14A10;
      *(v366 + 2) = 0;
      *(v366 + 3) = 0;
      v367 = &v362[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
      *v367 = 0;
      v367[8] = 1;
      v455.receiver = v362;
      v455.super_class = v361;
      v152 = objc_msgSendSuper2(&v455, sel_init);
      sub_218838478(v360);
      *&v457 = v152;
      sub_218838504();
LABEL_81:
      v340 = v470;
LABEL_82:
      v341 = sub_219BDB064();
      if (!v340)
      {
        v100 = v341;
      }

      return v100;
    default:
      goto LABEL_126;
  }
}

double sub_2188382C8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t type metadata accessor for NewsActivityInfo(uint64_t a1)
{
  result = qword_280EE0DA8;
  if (!qword_280EE0DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218838328(uint64_t a1)
{
  sub_21873F65C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2188383F8(uint64_t a1, uint64_t a2)
{
  sub_2188422B8(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218838478(uint64_t a1)
{
  sub_2186E530C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218838504()
{
  result = qword_280EE0DC8;
  if (!qword_280EE0DC8)
  {
    type metadata accessor for NewsActivityInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0DC8);
  }

  return result;
}

uint64_t sub_21883855C(void *a1)
{
  v3 = v1;
  sub_2188388E0(0, &qword_280E8C678, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218838968();
  sub_219BF7B44();
  LOBYTE(v15) = *(v3 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type);
  v19 = 0;
  sub_218838BC8();
  sub_219BF7834();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_219BF77F4();
    LOBYTE(v15) = 2;
    sub_219BF7794();
    LOBYTE(v15) = 3;
    sub_219BDB954();
    sub_2188390BC(&unk_280EE9D40, MEMORY[0x277CC9268]);
    sub_219BF77E4();
    v15 = *(v3 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits);
    v19 = 4;
    sub_218839100();
    sub_218839150(&unk_280E8F3C0, sub_2188391BC, MEMORY[0x277D83948]);
    sub_219BF77E4();
    LOBYTE(v15) = 5;
    sub_219BF7794();
    v11 = *(v3 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition + 8);
    v12 = *(v3 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition + 16);
    v13 = *(v3 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition + 24);
    v15 = *(v3 + OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition);
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = 6;
    sub_2188382C8(v15, v11);
    sub_218839210();
    sub_219BF77E4();
    sub_2188398B4(v15, v16);
    LOBYTE(v15) = 7;
    sub_219BF77D4();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_2188388E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_218838968();
    v7 = a3(a1, &type metadata for NewsActivityInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218838968()
{
  result = qword_280EE0DE0;
  if (!qword_280EE0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0DE0);
  }

  return result;
}

double sub_2188389C4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_219BE20E4();

    v12[0] = v4;
    v12[5] = v9;
    v12[6] = v10;
    v12[1] = v5;
    v12[2] = v6;
    v12[3] = v7;
    v12[4] = v8;
    v14 = v5;
    v15 = v6;
    v18 = v9;
    v19 = v10;
    v13 = v11;
    v20 = v11;
    v16 = v7;
    v17 = v8;
    if (*(&v4 + 1))
    {
      v9 = v18;
      v10 = v19;
      v11 = v20;
      v5 = v14;
      v6 = v15;
      v8 = v17;
      v7 = v16;
      sub_218E2444C(v2, &v4);

      sub_218E2558C(v12, &unk_280EC8900, &type metadata for ContinueReadingContent);
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_218838B1C()
{
  result = qword_280EE0DD0;
  if (!qword_280EE0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0DD0);
  }

  return result;
}

unint64_t sub_218838B74()
{
  result = qword_280EE0DD8;
  if (!qword_280EE0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0DD8);
  }

  return result;
}

unint64_t sub_218838BC8()
{
  result = qword_280EE0D80;
  if (!qword_280EE0D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0D80);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TagSource(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TagSource(unsigned __int8 *a1, unsigned int a2)
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

double sub_218838DAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
    v4 = sub_219BF5924();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

void sub_218838E5C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v6 = sub_219BE5434();
    __swift_project_value_buffer(v6, qword_280F62730);
    v7 = sub_219BE5414();
    v8 = sub_219BF6214();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      sub_219BF5CD4();
      *(v9 + 4) = v10;
      _os_log_impl(&dword_2186C1000, v7, v8, "Sports sync manager preparing subscriptions for syncing...done (time elapsed=%f)", v9, 0xCu);
      MEMORY[0x21CECF960](v9, -1, -1);
    }

    dispatch_group_leave(*&v5[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_prepareSyncingGroup]);
    [*&v5[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_subscriptionController] addObserver_];
  }
}

unint64_t sub_218838FB4()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6F506C6C6F726373;
  if (v1 != 6)
  {
    v3 = 0xD000000000000019;
  }

  v4 = 0x7974697669746361;
  if (v1 != 4)
  {
    v4 = 0x6B72616D6B6F6F62;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 2)
  {
    v5 = 7107189;
  }

  if (*v0)
  {
    v2 = 0x696669746E656469;
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

uint64_t sub_2188390BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_219BDB954();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218839100()
{
  if (!qword_280E8F3D0)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F3D0);
    }
  }
}

uint64_t sub_218839150(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_218839100();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2188391BC()
{
  result = qword_280EE0280;
  if (!qword_280EE0280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0280);
  }

  return result;
}

unint64_t sub_218839210()
{
  result = qword_280EDBB58;
  if (!qword_280EDBB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDBB58);
  }

  return result;
}

uint64_t sub_218839264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2188392B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t ScrollPosition.encode(to:)(void *a1)
{
  sub_218839548(0, &qword_280E8C668, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = v1[1];
  v13[1] = *v1;
  v10 = v1[2];
  v11 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2188395C4();
  sub_219BF7B44();
  if (!v9)
  {
    LOBYTE(v14) = 0;
    v16 = 0;
    sub_2188396C8();
    goto LABEL_5;
  }

  LOBYTE(v14) = 1;
  v16 = 0;
  sub_2188396C8();
  sub_219BF7834();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_219BF77F4();
    v14 = v10;
    v15 = v11;
    v16 = 2;
    type metadata accessor for CGPoint(0);
    sub_219301434(&qword_280E8DAD0, MEMORY[0x277CBF2A8]);
LABEL_5:
    sub_219BF7834();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_218839548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2188395C4();
    v7 = a3(a1, &type metadata for ScrollPosition.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2188395C4()
{
  result = qword_280EDBB88;
  if (!qword_280EDBB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDBB88);
  }

  return result;
}

unint64_t sub_21883961C()
{
  result = qword_280EDBB78;
  if (!qword_280EDBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDBB78);
  }

  return result;
}

unint64_t sub_218839674()
{
  result = qword_280EDBB80;
  if (!qword_280EDBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDBB80);
  }

  return result;
}

unint64_t sub_2188396C8()
{
  result = qword_280EDBB70;
  if (!qword_280EDBB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDBB70);
  }

  return result;
}

unint64_t sub_21883976C()
{
  result = qword_280EDBB68;
  if (!qword_280EDBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDBB68);
  }

  return result;
}

void sub_2188397C0(uint64_t *a1@<X8>)
{
  v2 = 7368564;
  if (*v1)
  {
    v2 = 0x6E6F6974636573;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2188397F8()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x74657366666FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

void sub_21883984C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2188398C8(v4);
}

double sub_2188398B4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void *sub_2188398C8(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D83D88];
  sub_2186DD934(0, &unk_280EE9D60, sub_2187B0408, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = v57 - v6;
  sub_2186DD934(0, &unk_280EE9D00, MEMORY[0x277CC9260], v4);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v57 - v8;
  sub_2187B0408(0);
  v61 = v10;
  v64 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v60 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v57 - v13;
  MEMORY[0x28223BE20](v15);
  v62 = v57 - v16;
  v17 = MEMORY[0x277CC9578];
  sub_2186DD934(0, &qword_280EE9C40, MEMORY[0x277CC9578], v4);
  *&v19 = MEMORY[0x28223BE20](v18 - 8).n128_u64[0];
  v21 = v57 - v20;
  v22 = [a1 session];
  v23 = [v22 persistentIdentifier];

  v24 = sub_219BF5414();
  v26 = v25;

  sub_219BDBD24();
  v27 = sub_219BDBD34();
  (*(*(v27 - 8) + 56))(v21, 0, 1, v27);
  v28 = qword_280F621D8;
  swift_beginAccess();
  sub_2187B132C(v21, v2 + v28, &qword_280EE9C40, v17);
  swift_endAccess();
  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v30 = v29;
  v31 = swift_allocObject();
  v59 = xmmword_219C09BA0;
  *(v31 + 16) = xmmword_219C09BA0;
  *(v31 + 56) = MEMORY[0x277D837D0];
  v58 = sub_2186FC3BC();
  *(v31 + 64) = v58;
  *(v31 + 32) = v24;
  *(v31 + 40) = v26;
  v32 = sub_2186C6148(0, &qword_280E8D790, 0x277D86200);

  v33 = sub_219BF6F44();
  v34 = sub_219BF6214();
  sub_219BE5314("Scene did become active sceneSession=%{public}@", 47, 2, &dword_2186C1000, v33, v34, v31);

  sub_2187D85B0(v35, v36);
  [v37 sceneDidBecomeActive];
  swift_unknownObjectRelease();
  sub_2187B5F14(v66);
  __swift_project_boxed_opaque_existential_1(v66, v67);
  sub_219BE2934();
  __swift_destroy_boxed_opaque_existential_1(v66);
  v38 = qword_280EDDDA0;
  swift_beginAccess();
  v39 = *(v2 + v38);
  if (*(v39 + 16) && (v40 = sub_21870F700(v24, v26), (v41 & 1) != 0))
  {
    sub_2191C27FC(*(v39 + 56) + *(v64 + 72) * v40, v14);
    v42 = v62;
    sub_2191C26F8(v14, v62);
    swift_endAccess();
    sub_2187B5F14(v66);
    v57[2] = v68;
    v57[1] = __swift_project_boxed_opaque_existential_1(v66, v67);
    v57[3] = v30;
    v57[4] = v32;
    v43 = v42;
    v44 = v60;
    sub_2191C27FC(v42, v60);
    v57[0] = v24;
    v45 = v61;

    v46 = sub_219BDB954();
    v47 = *(v46 - 8);
    (*(v47 + 32))(v9, v44, v46);
    (*(v47 + 56))(v9, 0, 1, v46);
    v48 = v43;
    v49 = v57[0];
    sub_219BE2924();
    sub_2187455EC(v9, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
    __swift_destroy_boxed_opaque_existential_1(v66);
    v50 = swift_allocObject();
    *(v50 + 16) = v59;
    v51 = v58;
    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 64) = v51;
    *(v50 + 32) = v49;
    *(v50 + 40) = v26;

    v52 = sub_219BF6F44();
    v53 = sub_219BF6214();
    sub_219BE5314("Clearing scene activation URL context due to scene activation, sceneSession=%{public}@", 86, 2, &dword_2186C1000, v52, v53, v50);

    v54 = v63;
    (*(v64 + 56))(v63, 1, 1, v45);
    swift_beginAccess();

    sub_2199D63A8(v54, v49, v26);
    swift_endAccess();
    sub_2187B9A3C(v48, sub_2187B0408);
  }

  else
  {
    swift_endAccess();
    sub_2187B5F14(v66);
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v55 = sub_219BDB954();
    (*(*(v55 - 8) + 56))(v9, 1, 1, v55);
    sub_219BE2924();
    sub_2187455EC(v9, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
    __swift_destroy_boxed_opaque_existential_1(v66);
  }

  sub_2187B13AC(v66);
  __swift_project_boxed_opaque_existential_1(v66, v67);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (v65)
  {

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21883A1AC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_219BE24A4();
}

void *sub_21883A22C(unint64_t *a1)
{
  v2 = sub_219BDD804();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BDD944();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  result = 0;
  v16 = *a1;
  switch((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
      sub_2187B2C48(0);
      goto LABEL_3;
    case 6uLL:
    case 0xCuLL:
    case 0xEuLL:
    case 0x11uLL:
    case 0x1BuLL:
    case 0x1FuLL:
    case 0x3BuLL:
      goto LABEL_19;
    case 8uLL:
LABEL_3:
      v17 = swift_projectBox();
      sub_219719558(v17, v14, type metadata accessor for NewsActivity2.Article);
      sub_219719558(v14, v11, type metadata accessor for NewsActivity2.Article);
      sub_2187B2DA0(0);

      sub_218AAFD90(v11, v8, MEMORY[0x277D2FB40]);
      v18 = sub_21909187C(v8);
      v20 = v19;
      sub_218790094(v8, MEMORY[0x277D2FB40]);
      sub_218790094(v14, type metadata accessor for NewsActivity2.Article);
      if (v20)
      {
        return v18;
      }

      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v36 = [objc_opt_self() bundleForClass_];
      goto LABEL_20;
    case 0xAuLL:
    case 0xBuLL:
      v27 = *((v16 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v28 = *((v16 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v83[1] = *((v16 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v83[2] = v28;
      v83[0] = v27;
      v29 = *((v16 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v81 = *((v16 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v82 = v29;
      v84 = *((v16 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v30 = v84;
      v31 = *(&v28 + 1);
      v75 = *(&v83[1] + 8);
      v76 = *(v83 + 8);
      v77 = v29;
      v74 = v81;
      v32 = v27;
      sub_218B5A004(&v81, v78);
      v81 = v74;
      v82 = v77;
      LOBYTE(v83[0]) = v32;
      *(v83 + 8) = v76;
      *(&v83[1] + 8) = v75;
      *(&v83[2] + 1) = v31;
      v84 = v30;
      if (v76 > 8)
      {
        switch(v76)
        {
          case 9:
            goto LABEL_11;
          case 0xALL:
            if (!v32)
            {
              v34 = [v74 name];
              v62 = sub_219BF5414();
LABEL_68:
              v26 = v62;

              goto LABEL_69;
            }

            if (v32 == 1)
            {
              v69 = (v77 + OBJC_IVAR___TSFeedViewContext_title);
              swift_beginAccess();
              v70 = *v69;
              if (v69[1])
              {

                sub_218B5A060(&v81);
                return v70;
              }

              goto LABEL_66;
            }

            goto LABEL_70;
          case 0xBLL:
            goto LABEL_11;
        }

LABEL_41:
        if (!v32)
        {
          goto LABEL_44;
        }

        if (v32 == 1)
        {
          v64 = (v77 + OBJC_IVAR___TSFeedViewContext_title);
          swift_beginAccess();
          v59 = *v64;
          v61 = v64[1];
          if (v61)
          {
            goto LABEL_60;
          }

LABEL_66:
          type metadata accessor for Localized();
          v73 = swift_getObjCClassFromMetadata();
          v34 = [objc_opt_self() bundleForClass_];
          goto LABEL_67;
        }

LABEL_70:
        sub_219BF7514();
        __break(1u);
        JUMPOUT(0x21883B730);
      }

      if (v76)
      {
        if (v76 != 2)
        {
          if (v76 == 3)
          {
LABEL_11:
            type metadata accessor for Localized();
            v33 = swift_getObjCClassFromMetadata();
            v34 = [objc_opt_self() bundleForClass_];
LABEL_67:
            v62 = sub_219BDB5E4();
            goto LABEL_68;
          }

          goto LABEL_41;
        }

        if (!v32)
        {
LABEL_44:
          v58 = [v74 name];
          v59 = sub_219BF5414();
          v61 = v60;

LABEL_61:
          type metadata accessor for Localized();
          v66 = swift_getObjCClassFromMetadata();
          v67 = [objc_opt_self() bundleForClass_];
          sub_219BDB5E4();

          sub_2186F20D4(0);
          v68 = swift_allocObject();
          *(v68 + 16) = xmmword_219C09BA0;
          *(v68 + 56) = MEMORY[0x277D837D0];
          *(v68 + 64) = sub_2186FC3BC();
          *(v68 + 32) = v59;
          *(v68 + 40) = v61;
          v26 = sub_219BF5454();

LABEL_69:
          sub_218B5A060(&v81);
          return v26;
        }

        if (v32 != 1)
        {
          goto LABEL_70;
        }

        v65 = (v77 + OBJC_IVAR___TSFeedViewContext_title);
        swift_beginAccess();
        v59 = *v65;
        v61 = v65[1];
        if (!v61)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (!v32)
        {
          goto LABEL_44;
        }

        if (v32 != 1)
        {
          goto LABEL_70;
        }

        v63 = (v77 + OBJC_IVAR___TSFeedViewContext_title);
        swift_beginAccess();
        v59 = *v63;
        v61 = v63[1];
        if (!v61)
        {
          goto LABEL_66;
        }
      }

LABEL_60:

      goto LABEL_61;
    case 0x14uLL:
    case 0x15uLL:
      memmove(&v81, ((v16 & 0xFFFFFFFFFFFFFF9) + 16), 0x48uLL);
      v21 = *(&v81 + 1);
      v22 = v82;
      if (((HIBYTE(v83[0]) << 48) & 0xC0000000000000) == 0x40000000000000)
      {
        type metadata accessor for Localized();
        v23 = swift_getObjCClassFromMetadata();
        v24 = objc_opt_self();

        v25 = [v24 bundleForClass_];
        v26 = sub_219BDB5E4();

        sub_218AAFFC4(&v81);
        return v26;
      }

      v38 = *(&v82 + 1);
      v37 = *&v83[0];
      v39 = v81;
      v78[0] = v81;
      v78[1] = v82;
      v79 = *&v83[0];
      v40 = BYTE8(v83[0]) & 1;
      v80 = BYTE8(v83[0]) & 1;
      sub_21896FE24(v81, *(&v81 + 1), v82, *(&v82 + 1), *&v83[0], BYTE8(v83[0]) & 1);
      v41 = sub_219BD4870();
      sub_21896FDCC(v39, v21, v22, v38, v37, v40);
      v36 = [v41 title];

      v42 = sub_219BF5414();
      goto LABEL_21;
    case 0x1AuLL:
      sub_21896FC94((v16 & 0xFFFFFFFFFFFFFF9) + 16, &v81);
      v26 = v82;

      sub_218C113E0(&v81);
      return v26;
    case 0x1EuLL:

      sub_219BDE5F4();
      v45 = (*(v3 + 88))(v5, v2);
      if (v45 == *MEMORY[0x277D2FB08])
      {
        (*(v3 + 96))(v5, v2);

        sub_218A27458(0, v46);
        v48 = 48;
LABEL_32:
        v49 = *(v47 + v48);
        v50 = sub_219BDDBF4();
        (*(*(v50 - 8) + 8))(v5 + v49, v50);
        type metadata accessor for Localized();
        v51 = swift_getObjCClassFromMetadata();
        v36 = [objc_opt_self() bundleForClass_];
        v26 = sub_219BDB5E4();

        goto LABEL_22;
      }

      if (v45 == *MEMORY[0x277D2FAF8])
      {
        (*(v3 + 96))(v5, v2);
        v52 = *v5;
        sub_2191B3054(0);
        v54 = *(v53 + 48);
        v55 = [v52 title];
        v56 = sub_219BF5414();

        v57 = sub_219BDDBF4();
        (*(*(v57 - 8) + 8))(v5 + v54, v57);
        return v56;
      }

      if (v45 == *MEMORY[0x277D2FAF0])
      {
        (*(v3 + 96))(v5, v2);

        sub_2197195C0(0);
        v48 = 64;
        goto LABEL_32;
      }

      type metadata accessor for Localized();
      v71 = swift_getObjCClassFromMetadata();
      v72 = [objc_opt_self() bundleForClass_];
      v26 = sub_219BDB5E4();

      (*(v3 + 8))(v5, v2);
      return v26;
    case 0x3CuLL:
      result = 0;
      v44 = __ROR8__(v16 + 0x1000000000000000, 3);
      if (v44 <= 5)
      {
        if (v44 && v44 != 3)
        {
          return result;
        }
      }

      else if (v44 != 6 && v44 != 8)
      {
        if (v44 != 9)
        {
          return result;
        }

        sub_219BF2394();
        v36 = sub_219BF2364();
        v42 = MEMORY[0x21CEC9110]();
LABEL_21:
        v26 = v42;
LABEL_22:

        return v26;
      }

LABEL_19:
      type metadata accessor for Localized();
      v43 = swift_getObjCClassFromMetadata();
      v36 = [objc_opt_self() bundleForClass_];
LABEL_20:
      v42 = sub_219BDB5E4();
      goto LABEL_21;
    default:
      return result;
  }
}

void sub_21883B820()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_219BDC334();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v75 = &v72 - v7;
  sub_218731BD0(0, &qword_280EE9B70, MEMORY[0x277D2D700]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v72 - v9;
  v11 = sub_219BE3DF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_219BE44E4();
  v15 = sub_219BE3DD4();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = *&v1[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService + 24];
    v17 = *&v1[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService + 32];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService], v16);
    (*(v17 + 136))(0, v16, v17);
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v18 = sub_219BE5434();
    v19 = __swift_project_value_buffer(v18, qword_280F62658);
    v20 = sub_219BE5414();
    v21 = sub_219BF6214();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2186C1000, v20, v21, "sceneDidBecomeActive: Direct launch of News, Setting badge count to 0", v22, 2u);
      MEMORY[0x21CECF960](v22, -1, -1);
    }

    v1[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_sessionBadgeState] = 0;
    v23 = *MEMORY[0x277D2D6F8];
    (*(v3 + 104))(v10, *MEMORY[0x277D2D6F8], v2);
    (*(v3 + 56))(v10, 0, 1, v2);
    v24 = OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_sessionBadgeSource;
    swift_beginAccess();
    sub_21883C6B0(v10, &v1[v24]);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_featureAvailability], *&v1[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_featureAvailability + 24]);
    sub_219BE4754();
    *(swift_allocObject() + 16) = v1;
    v25 = v1;
    v26 = sub_219BE2E54();
    sub_219BE2F74();

    sub_219BDC364();
    sub_21883E6A8(&unk_280EB7AC8, &unk_219CB0CB8);
    sub_219BDC7D4();

    if (v79 != 1)
    {
      goto LABEL_35;
    }

    v74 = v19;
    v27 = sub_219BE5414();
    v28 = sub_219BF6214();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2186C1000, v27, v28, "Started session with badge enabled. Checking eligibility...", v29, 2u);
      MEMORY[0x21CECF960](v29, -1, -1);
    }

    sub_219BDC374();
    v30 = v75;
    sub_219BDC7D4();

    sub_219BDC344();
    LOBYTE(v79) = 1;
    sub_21883E6A8(&qword_280EB7AC0, &unk_219CB0CF8);
    sub_219BDCA54();

    sub_219BDC354();
    sub_219BDCA54();

    (*(v3 + 16))(v5, v30, v2);
    v31 = (*(v3 + 88))(v5, v2);
    if (v31 != *MEMORY[0x277D2D6F0])
    {
      if (v31 != v23 && v31 != *MEMORY[0x277D2D6E8])
      {
        (*(v3 + 8))(v5, v2);
      }

      v55 = sub_219BE5414();
      v56 = sub_219BF6214();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_2186C1000, v55, v56, "Launched with a badge with no badgeID, attempting to route to default landing page...", v57, 2u);
        MEMORY[0x21CECF960](v57, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(&v25[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_router], *&v25[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_router + 24]);
      sub_21883E6A8(&qword_27CC20758, "aJXh");
      sub_219BE43B4();
      goto LABEL_34;
    }

    (*(v3 + 96))(v5, v2);
    v32 = *v5;
    v33 = v5[1];

    v34 = sub_219BE5414();
    v35 = sub_219BF6214();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v79 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_2186D1058(v32, v33, &v79);
      _os_log_impl(&dword_2186C1000, v34, v35, "Launched with a badge with badgeID: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x21CECF960](v37, -1, -1);
      MEMORY[0x21CECF960](v36, -1, -1);
    }

    v79 = sub_219BF5494();
    v80 = v38;
    v39 = *&v25[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_appIconBadgeIdentifierBase];
    v40 = *&v25[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_appIconBadgeIdentifierBase + 8];
    v77 = sub_219BF5494();
    v78 = v41;
    sub_218B9E340();
    v73 = v32;
    sub_218B9E394();
    v42 = sub_219BF5314();

    if ((v42 & 1) == 0)
    {

      v58 = sub_219BE5414();
      v59 = sub_219BF6214();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_2186C1000, v58, v59, "Launched with a badge with an unknown badgeID, skipping.", v60, 2u);
        MEMORY[0x21CECF960](v60, -1, -1);
      }

      goto LABEL_34;
    }

    v79 = v39;
    v80 = v40;
    v77 = 46;
    v78 = 0xE100000000000000;
    sub_2187F3BD4();
    v43 = *(sub_219BF6FE4() + 16);

    v79 = v73;
    v80 = v33;
    v77 = 46;
    v78 = 0xE100000000000000;
    v44 = sub_219BF6FE4();

    sub_219BC7A48(v43, v44);
    v48 = v47 >> 1;
    if (v46 == v47 >> 1)
    {
      v49 = 0;
      v50 = 0;
LABEL_31:
      swift_unknownObjectRelease();

      v62 = sub_219BE5414();
      v63 = sub_219BF6214();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v77 = v65;
        *v64 = 136315138;
        v79 = v49;
        v80 = v50;
        sub_2186DF260(0, &qword_280E8F860, MEMORY[0x277D83D88]);
        v74 = v49;

        v66 = sub_219BF5484();
        v68 = sub_2186D1058(v66, v67, &v77);

        *(v64 + 4) = v68;
        _os_log_impl(&dword_2186C1000, v62, v63, "Hint in badgeID: %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x21CECF960](v65, -1, -1);
        MEMORY[0x21CECF960](v64, -1, -1);
      }

      MEMORY[0x28223BE20](v69);
      sub_219BE4864();
      sub_219BE3204();

      sub_2187D9028();
      v70 = sub_219BF66A4();
      sub_219BE2F94();

      v71 = sub_219BE2E54();
      sub_219BE2FD4();

LABEL_34:
      (*(v3 + 8))(v75, v2);
LABEL_35:
      sub_2198CA004();
      return;
    }

    if (v48 > v46)
    {
      v61 = v45 + 16 * v48;
      v49 = *(v61 - 16);
      v50 = *(v61 - 8);

      goto LABEL_31;
    }

    __break(1u);
  }

  else
  {
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v51 = sub_219BE5434();
    __swift_project_value_buffer(v51, qword_280F62658);
    v52 = sub_219BE5414();
    v53 = sub_219BF6214();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2186C1000, v52, v53, "sceneDidBecomeActive: Indirect launch of News, no change to app icon badge", v54, 2u);
      MEMORY[0x21CECF960](v54, -1, -1);
    }
  }
}

uint64_t sub_21883C4A0()
{

  return swift_deallocObject();
}

void sub_21883C4E4(uint64_t a1)
{
  v2 = [objc_opt_self() currentNotificationCenter];
  [v2 setBadgeCount:a1 withCompletionHandler:0];
}

void sub_21883C558(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v4 = sub_219BE5434();
    __swift_project_value_buffer(v4, qword_280F62730);
    v5 = sub_219BE5414();
    v6 = sub_219BF6214();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      sub_219BF5CD4();
      *(v7 + 4) = v8;
      _os_log_impl(&dword_2186C1000, v5, v6, "Sports sync manager waiting to prepare for syncing...done (time elapsed=%f)", v7, 0xCu);
      MEMORY[0x21CECF960](v7, -1, -1);
    }

    [*&v3[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo] addObserver_];
    dispatch_group_leave(*&v3[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_prepareSyncingGroup]);
  }
}

uint64_t sub_21883C6B0(uint64_t a1, uint64_t a2)
{
  sub_218731BD0(0, &qword_280EE9B70, MEMORY[0x277D2D700]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21883C730(unint64_t *a1)
{
  v94 = *MEMORY[0x277D85DE8];
  v2 = sub_219BDD804();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BDD944();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v83 - v13;
  v15 = *a1;
  result = MEMORY[0x277D84F90];
  switch((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
      sub_2187B2C48(0);
      goto LABEL_3;
    case 6uLL:
    case 0xCuLL:
    case 0xEuLL:
    case 0x1BuLL:
    case 0x1FuLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3BuLL:
      goto LABEL_29;
    case 8uLL:
LABEL_3:
      v17 = swift_projectBox();
      sub_219719558(v17, v14, type metadata accessor for NewsActivity2.Article);
      sub_219719558(v14, v11, type metadata accessor for NewsActivity2.Article);
      sub_2187B2DA0(0);

      sub_218AAFD90(v11, v8, MEMORY[0x277D2FB40]);
      v18 = sub_21909187C(v8);
      v20 = v19;
      sub_218790094(v8, MEMORY[0x277D2FB40]);
      sub_218790094(v14, type metadata accessor for NewsActivity2.Article);
      if (v20)
      {
        v21 = v18;
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0xE000000000000000;
      }

      sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      result = swift_allocObject();
      *(result + 16) = xmmword_219C09BA0;
      *(result + 32) = v21;
      *(result + 40) = v22;
      return result;
    case 0xAuLL:
    case 0xBuLL:
      v32 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v33 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v92[1] = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v92[2] = v33;
      v92[0] = v32;
      v34 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v90 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v91 = v34;
      v93 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v35 = v93;
      v36 = *(&v33 + 1);
      v85 = *(v92 + 8);
      v86 = *(&v92[1] + 8);
      v83 = v90;
      v84 = v34;
      v37 = v32;
      sub_218B5A004(&v90, v87);
      v87[0] = v83;
      v87[1] = v84;
      LOBYTE(v88[0]) = v37;
      *(v88 + 8) = v85;
      *(&v88[1] + 8) = v86;
      *(&v88[2] + 1) = v36;
      v89 = v35;
      v93 = v35;
      v92[0] = v88[0];
      v92[1] = v88[1];
      v92[2] = v88[2];
      v90 = v83;
      v91 = v84;
      v38 = sub_2197183DC(&v90);
      sub_218B5A060(v87);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v40 = [objc_opt_self() bundleForClass_];
      v41 = sub_219BDB5E4();
      v43 = v42;

      v44 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_218840D24(0, *(v38 + 16) + 1, 1, v38);
      }

      result = v44;
      v45 = *(v44 + 2);
      v46 = *(result + 24);
      if (v45 >= v46 >> 1)
      {
        result = sub_218840D24((v46 > 1), v45 + 1, 1, result);
      }

      *(result + 16) = v45 + 1;
      v47 = result + 16 * v45;
      *(v47 + 32) = v41;
      *(v47 + 40) = v43;
      return result;
    case 0x11uLL:
      sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C09BA0;
      type metadata accessor for Localized();
      v49 = swift_getObjCClassFromMetadata();
      v50 = objc_opt_self();
      v51 = [v50 bundleForClass_];
      v52 = sub_219BDB5E4();
      v54 = v53;

      *(inited + 32) = v52;
      *(inited + 40) = v54;
      v55 = [v50 bundleForClass_];
      v56 = sub_219BDB5E4();
      v58 = v57;

      result = sub_218840D24(1, 2, 1, inited);
      *(result + 16) = 2;
      *(result + 48) = v56;
      *(result + 56) = v58;
      return result;
    case 0x14uLL:
    case 0x15uLL:
      if (((*((v15 & 0xFFFFFFFFFFFFFF9) + 0x3F) << 48) & 0xC0000000000000) == 0x40000000000000)
      {
        return result;
      }

      v23 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v24 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x38);
      sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_219C09BA0;
      v26 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v90 = *((v15 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v91 = v26;
      *&v92[0] = v23;
      BYTE8(v92[0]) = v24 & 1;
      v27 = [sub_219BD4870() title];
      v28 = sub_219BF5414();
      goto LABEL_12;
    case 0x1AuLL:
      sub_21896FC94((v15 & 0xFFFFFFFFFFFFFF9) + 16, &v90);
      sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_219C09BA0;
      v66 = *(&v91 + 1);
      *(v65 + 32) = v91;
      *(v65 + 40) = v66;

      sub_218C113E0(&v90);
      return v65;
    case 0x1EuLL:

      sub_219BDE5F4();
      v59 = (*(v3 + 88))(v5, v2);
      if (v59 == *MEMORY[0x277D2FB08])
      {
        (*(v3 + 96))(v5, v2);

        sub_218A27458(0, v60);
        v62 = 48;
        goto LABEL_21;
      }

      if (v59 != *MEMORY[0x277D2FAF8])
      {
        if (v59 != *MEMORY[0x277D2FAF0])
        {

          (*(v3 + 8))(v5, v2);
          return MEMORY[0x277D84F90];
        }

        (*(v3 + 96))(v5, v2);

        sub_2197195C0(0);
        v62 = 64;
LABEL_21:
        v63 = *(v61 + v62);
        v64 = sub_219BDDBF4();
        (*(*(v64 - 8) + 8))(v5 + v63, v64);

        return MEMORY[0x277D84F90];
      }

      (*(v3 + 96))(v5, v2);
      v74 = *v5;
      sub_2191B3054(0);
      v76 = *(v75 + 48);
      sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_219C09BA0;
      v78 = [v74 title];
      v79 = sub_219BF5414();
      v81 = v80;

      *(v77 + 32) = v79;
      *(v77 + 40) = v81;

      v82 = sub_219BDDBF4();
      (*(*(v82 - 8) + 8))(v5 + v76, v82);
      return v77;
    case 0x3CuLL:
      v67 = __ROR8__(v15 + 0x1000000000000000, 3);
      if (v67 <= 5)
      {
        if (v67 && v67 != 3)
        {
          return result;
        }

LABEL_29:
        sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_219C09BA0;
        type metadata accessor for Localized();
        v69 = swift_getObjCClassFromMetadata();
        v70 = [objc_opt_self() bundleForClass_];
        v71 = sub_219BDB5E4();
        v73 = v72;

        result = v68;
        *(v68 + 32) = v71;
        *(v68 + 40) = v73;
        return result;
      }

      if (v67 == 6 || v67 == 8)
      {
        goto LABEL_29;
      }

      if (v67 == 9)
      {
        sub_21883DA68(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_219C09BA0;
        sub_219BF2394();
        v27 = sub_219BF2364();
        v28 = MEMORY[0x21CEC9110]();
LABEL_12:
        v30 = v28;
        v31 = v29;

        result = v25;
        *(v25 + 32) = v30;
        *(v25 + 40) = v31;
      }

      return result;
    default:
      return result;
  }
}

void sub_21883D9C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21883DA18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21883DA68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21883DAB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21883DB08()
{
  if ([*(v0 + 24) validatedCachedSubscription])
  {
    sub_21883DD08(0, &unk_280EE6970, sub_21883DE14, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
  }

  else
  {
    sub_21883DD08(0, &unk_280EE6970, sub_21883DE14, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE30B4();
  }

  v1 = sub_219BE2E54();
  v2 = sub_219BE2F74();

  return v2;
}

uint64_t sub_21883DC50()
{
  v1 = *(v0 + 48);

  sub_21883DD6C(v1, (v0 + 72));

  return MEMORY[0x2822009F8](sub_218844C40, 0, 0);
}

void sub_21883DD08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21883DD6C@<X0>(uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v6 = result;
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_21883DE60(a2, Strong);
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
  }

  *a3 = v6 == 0;
  return result;
}

unint64_t sub_21883DE14()
{
  result = qword_280E8E208;
  if (!qword_280E8E208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E208);
  }

  return result;
}

void sub_21883DE60(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D2D4E0];
  sub_2187DD4F0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = sub_219BEC004();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  sub_218812314(a1, v10, &qword_280EE33F0, v4);
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    sub_218817724(v10, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    v16 = off_282A50D38;
    type metadata accessor for MastheadPaywallEventHandler(0);
    v16();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if ((sub_219BEBFE4() & 1) == 0)
    {
      v18 = off_282A50D38;
      type metadata accessor for MastheadPaywallEventHandler(0);
      v17.n128_f64[0] = v18();
    }

    (*(v12 + 8))(v14, v11, v17);
  }

  v19 = a2;
  v20 = a2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadViewProviderDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v22 = v29;
  if (Strong)
  {
    v23 = *(v20 + 8);
    ObjectType = swift_getObjectType();
    v25 = sub_2187E1408(&qword_280ECFA70, type metadata accessor for TodayViewController, &unk_219CA346C);
    (*(v23 + 40))(v19, v25, v22, ObjectType, v23);
    swift_unknownObjectRelease();
  }

  sub_218812314(v22, v7, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  if (v15(v7, 1, v11) == 1)
  {
    sub_218817724(v7, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  }

  else
  {
    v26 = sub_219BEBFF4();
    (*(v12 + 8))(v7, v11);
    if (v26)
    {
      swift_getObjectType();
      sub_219BE8664();
      v27 = sub_219BE7BC4();

      sub_219BEBE74();
    }
  }
}

id sub_21883E258@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPaidBundleViaOfferActivated];
  *a2 = result;
  return result;
}

double sub_21883E294()
{
  sub_2187F6124(0, qword_280EB3C28, type metadata accessor for MastheadPaywallConfiguration);
  sub_219BE3204();
  sub_2187D9028();
  v0 = sub_219BF66A4();

  sub_219BE2F94();

  return result;
}

uint64_t type metadata accessor for MastheadPaywallConfiguration(uint64_t a1)
{
  result = qword_280EB3C58;
  if (!qword_280EB3C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_21883E414(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v3 = sub_219BE5434();
    __swift_project_value_buffer(v3, qword_280F62658);
    v4 = sub_219BE5414();
    v5 = sub_219BF6214();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2186C1000, v4, v5, "paidBundleViaOffer was activated. Removing local notifications...", v6, 2u);
      MEMORY[0x21CECF960](v6, -1, -1);
    }

    v7 = (a2 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService);
    v8 = v7[3];
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    sub_2186DF260(0, &qword_280E8B750, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    *(v10 + 32) = sub_219BF5414();
    *(v10 + 40) = v11;
    (*(v9 + 88))(v10, v8, v9);

    v12 = v7[3];
    v13 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    *(v14 + 32) = sub_219BF5414();
    *(v14 + 40) = v15;
    (*(v13 + 80))(v14, v12, v13);
  }

  return result;
}

uint64_t sub_21883E62C(uint64_t a1)
{
  result = sub_219BE4584();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21883E6A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PaidBundleViaOfferUIHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21883E6EC()
{

  sub_21883E800(sub_218D33FC4, v0);

  v1 = sub_219BE2E54();
  sub_219BE2F74();
}

uint64_t sub_21883E7A4()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_21883E800(uint64_t a1, uint64_t a2)
{
  sub_2187C84E8(0, &qword_280EE7A98, MEMORY[0x277D6CD60], MEMORY[0x277D6CB90]);
  swift_allocObject();
  v4 = sub_219BE2244();
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v4;
  v10[4] = sub_218AFE038;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_218793E0C;
  v10[3] = &block_descriptor_52;
  v7 = _Block_copy(v10);

  [v5 scheduleLowPriorityBlock_];
  _Block_release(v7);
  result = MEMORY[0x21CEB8FB0]();
  if (result)
  {
    v9 = result;

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21883E99C(uint64_t a1)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v1 = qword_280F616D8;
  v2 = sub_219BF6214();
  sub_219BE5314("Fetching the today masthead paywall configuration", 49, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);
  sub_21883EC14(0);
  sub_219BE3204();
  v3 = sub_219BE2E54();
  sub_21883ED28(0, qword_280EB3C28, type metadata accessor for MastheadPaywallConfiguration);
  sub_219BE2F94();

  v4 = sub_219BE2E54();
  v5 = sub_219BE3084();

  return v5;
}

double sub_21883EB10()
{
  sub_218760638(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF5BF4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_218AB3D80(0, 0, v3, &unk_219C0F990, v5);

  return result;
}

void sub_21883EC14(uint64_t a1)
{
  if (!qword_280E8E060)
  {
    sub_2186C61E4();
    sub_21883ED28(255, &qword_280EE6200, MEMORY[0x277D35380]);
    sub_21883ED28(255, &unk_280E8E8C0, sub_21883ED84);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280E8E060);
    }
  }
}

void sub_21883ECD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_21883ED28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_21883ED84()
{
  result = qword_280E8E8D0;
  if (!qword_280E8E8D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E8D0);
  }

  return result;
}

void sub_21883EDD0()
{
  v0 = sub_219BE8A24();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  sub_21883F194(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2CD4();
  v10 = v23;
  if (!v23)
  {
    LOBYTE(v23) = 0;
    sub_21883F1F8();
    sub_219BE2114();
    return;
  }

  sub_219BE20E4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      LOBYTE(v23) = 0;
      sub_21883F1F8();
      sub_219BE2114();

      return;
    }

    swift_getObjectType();
    v23 = v10;
    sub_219BEAF64();
    sub_219BE20E4();

    (*(v1 + 104))(v3, *MEMORY[0x277D6E150], v0);
    v12 = sub_219BE8A14();
    v13 = *(v1 + 8);
    v13(v3, v0);
    v13(v6, v0);
    if ((v12 & 1) != 0 && (v14 = [objc_opt_self() sharedApplication], v15 = objc_msgSend(v14, sel_applicationState), v14, v15 != 2))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    LOBYTE(v23) = v16;
    sub_21883F1F8();
    sub_219BE2114();

    sub_218A6E554(0);
    v21 = *(v20 + 64);
    v22 = sub_219BDD9E4();
    (*(*(v22 - 8) + 8))(&v9[v21], v22);
  }

  else
  {
    sub_218A6E5D0(0);
    v18 = *(v17 + 64);
    LOBYTE(v23) = 2;
    sub_21883F1F8();
    sub_219BE2114();

    v19 = sub_219BDD9E4();
    (*(*(v19 - 8) + 8))(&v9[v18], v19);
  }

  sub_2193AA2A8(v9, type metadata accessor for AudioFeedTrack);
}

void sub_21883F194(uint64_t a1)
{
  if (!qword_280EE8D70)
  {
    type metadata accessor for AudioFeedTrack(255);
    sub_218731DB4();
    v1 = sub_219BDDBA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE8D70);
    }
  }
}

unint64_t sub_21883F1F8()
{
  result = qword_280EB94D0;
  if (!qword_280EB94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB94D0);
  }

  return result;
}

uint64_t sub_21883F24C(void *a1)
{
  swift_getObjectType();
  sub_219BF6A64();
  v2 = a1[4];
  ObjectType = swift_getObjectType();
  sub_21883F314(ObjectType, v2);
  swift_getObjectType();
  sub_219BE4594();
  v4 = sub_219BE31B4();

  return v4;
}

uint64_t sub_21883F314(uint64_t a1, uint64_t a2)
{
  sub_219BE4864();
  sub_219BE3204();
  v2 = sub_219BE2E54();
  sub_21883ED28(0, &qword_280EE6200, MEMORY[0x277D35380]);
  sub_219BE2F74();

  v3 = sub_219BE2E54();
  v4 = sub_219BE3064();

  return v4;
}

uint64_t sub_21883F470()
{
  v1 = sub_219BED174();
  v22 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BED1D4();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED214();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  sub_2187D9028();
  v14 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v19 = *(v8 + 8);
  v19(v10, v7);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = sub_219717620;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_151;
  v16 = _Block_copy(aBlock);
  v17 = v0;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2187E1408(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2187DD4F0(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD420](v13, v6, v3, v16);
  _Block_release(v16);

  (*(v22 + 8))(v3, v1);
  (*(v20 + 8))(v6, v21);
  return (v19)(v13, v7);
}

double sub_21883F870(char *a1)
{
  v69 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_218802370(0, &qword_280EE4768, MEMORY[0x277D6E2A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v58 - v4;
  v5 = sub_219BE8DB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEC004();
  v68 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v67 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218802370(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v2);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for MastheadModelSupplementaryInfo(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MastheadModelContext(0);
  *&result = MEMORY[0x28223BE20](v20 - 8).n128_u64[0];
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v1;
  v24 = *(v1 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model);
  if (!(v24 >> 60))
  {
    v61 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model;
    v59 = v8;
    v65 = v6;
    v66 = v5;
    sub_2187FF18C(0);
    v26 = v25;
    v27 = swift_projectBox();
    v60 = v9;
    v28 = *v27;
    v29 = v24;
    v30 = *(v26 + 64);
    v31 = v27 + *(v26 + 48);
    v63 = v23;
    sub_21881CF74(v31, v23, type metadata accessor for MastheadModelContext);
    sub_21881CF74(v27 + v30, v19, type metadata accessor for MastheadModelSupplementaryInfo);
    v32 = MEMORY[0x277D2D4E0];
    sub_218812294(v69, v16, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    v58 = v17;
    v33 = *(v17 + 24);
    v64 = v29;

    v62 = v28;
    v34 = v60;

    sub_21883FF94(v16, &v19[v33]);
    v69 = v19;
    sub_218812294(&v19[v33], v13, &qword_280EE33F0, v32);
    v35 = v68;
    if ((*(v68 + 48))(v13, 1, v34) == 1)
    {
      v36 = MEMORY[0x277D2D4E0];
      sub_2188174B8(v16, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
      sub_2188174B8(v13, &qword_280EE33F0, v36);
      v38 = v65;
      v37 = v66;
      v39 = v69;
    }

    else
    {
      v40 = v67;
      (*(v35 + 32))(v67, v13, v34);
      v41 = sub_219BEBFE4();
      (*(v35 + 8))(v40, v34);
      sub_2188174B8(v16, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
      v38 = v65;
      v37 = v66;
      v39 = v69;
      if (v41)
      {
        v42 = &v69[*(v58 + 28)];
        v43 = *(v42 + 3);
        v72[2] = *(v42 + 2);
        v72[3] = v43;
        v73 = *(v42 + 8);
        v44 = *(v42 + 1);
        v72[0] = *v42;
        v72[1] = v44;
        sub_218C8FBF8(v72);
        *v42 = 0u;
        *(v42 + 1) = 0u;
        *(v42 + 2) = 0u;
        *(v42 + 3) = 0u;
        *(v42 + 8) = 0;
      }
    }

    v45 = swift_allocBox();
    v47 = v46;
    v48 = *(v26 + 48);
    v49 = *(v26 + 64);
    v50 = v63;
    *v46 = v62;
    sub_21881CF74(v50, v46 + v48, type metadata accessor for MastheadModelContext);
    sub_21881CF74(v39, v47 + v49, type metadata accessor for MastheadModelSupplementaryInfo);
    v51 = v71;
    *(v71 + v61) = v45;

    v52 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_lastLayoutOptions;
    swift_beginAccess();
    v53 = v51 + v52;
    v54 = v70;
    sub_218812294(v53, v70, &qword_280EE4768, MEMORY[0x277D6E2A8]);
    if ((*(v38 + 48))(v54, 1, v37) == 1)
    {

      sub_218819144(v50, type metadata accessor for MastheadModelContext);
      sub_2188174B8(v54, &qword_280EE4768, MEMORY[0x277D6E2A8]);
    }

    else
    {
      v55 = v59;
      (*(v38 + 32))(v59, v54, v37);
      v56 = v71 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadable;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_218812E9C(v55, Strong, *(v56 + 8));

        swift_unknownObjectRelease();
      }

      else
      {
      }

      (*(v38 + 8))(v55, v37);
      sub_218819144(v50, type metadata accessor for MastheadModelContext);
    }

    sub_218819144(v39, type metadata accessor for MastheadModelSupplementaryInfo);
  }

  return result;
}

uint64_t sub_21883FF94(uint64_t a1, uint64_t a2)
{
  sub_218802370(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_218840028()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_219BE3494();

  return result;
}

uint64_t sub_218840094()
{

  return swift_deallocObject();
}

void sub_2188400DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (sub_21884041C(Strong))
    {
      v3 = [*&v2[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo] sportsSyncState];
      if (v3 == 2)
      {
        MEMORY[0x28223BE20](2);
        sub_219BE3204();
        v4 = sub_219BE1C44();
        type metadata accessor for SportsSyncManager();
        sub_219BE2F94();

        v5 = sub_219BE2E54();
        sub_219BE2FD4();

        return;
      }
    }

    else
    {
      v3 = 0;
    }

    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v6 = sub_219BE5434();
    __swift_project_value_buffer(v6, qword_280F62730);
    v7 = sub_219BE5414();
    v8 = sub_219BF61F4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136446210;
      v11 = FCSportsSyncState.description.getter(v3);
      v13 = sub_2186D1058(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2186C1000, v7, v8, "Sync manager skipping initial subscription sync changes, sync state '%{public}s'", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x21CECF960](v10, -1, -1);
      MEMORY[0x21CECF960](v9, -1, -1);
    }
  }
}

double sub_21884036C(void *a1)
{
  sub_2188405BC(a1);

  sub_219BE2E94();

  sub_2187FBC98(sub_2187FC0E0, &block_descriptor_131);

  return result;
}

uint64_t sub_21884041C(uint64_t a1)
{
  sub_219BE20E4();
  if (!v8)
  {
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v2 = sub_219BE5434();
    __swift_project_value_buffer(v2, qword_280F62730);
    v3 = sub_219BE5414();
    v4 = sub_219BF6214();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Sports sync manager disallowing syncing because iCloud account status is yet to be determined";
    goto LABEL_12;
  }

  if (v8 == 1)
  {
    return 1;
  }

  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v7 = sub_219BE5434();
  __swift_project_value_buffer(v7, qword_280F62730);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Sports sync manager disallowing syncing because iCloud account status is signed out";
LABEL_12:
    _os_log_impl(&dword_2186C1000, v3, v4, v6, v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

LABEL_13:

  return 0;
}

uint64_t sub_2188405BC(void *a1)
{
  v2 = sub_219BE5434();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  MEMORY[0x28223BE20](v8);
  v39 = &v37 - v9;
  MEMORY[0x28223BE20](v10);
  v38 = &v37 - v11;
  MEMORY[0x28223BE20](v12);
  v37 = &v37 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = MEMORY[0x277D85000];
  v18 = (a1 + *((*MEMORY[0x277D85000] & *a1) + 0xD0));
  v19 = __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v43 = *(a1 + *((*v17 & *a1) + 0xA0));
  v20 = sub_2187FB8D0();
  v42 = *v19;
  v21 = off_282A442B8;
  type metadata accessor for OfflineFeatures();
  if (v21(v20) == 6)
  {
    v22 = *(a1 + *((*v17 & *a1) + 0xD8));
    if ([v22 isNetworkReachable])
    {
      v23 = [objc_opt_self() sharedApplication];
      v24 = [v23 applicationState];

      if (v24 == 2)
      {
        v25 = v39;
        sub_2187FB8F4(v39);
        v26 = sub_219BE5414();
        v27 = sub_219BF6214();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          v29 = "Offline Readiness processor will be disabled due to app background state";
LABEL_18:
          _os_log_impl(&dword_2186C1000, v26, v27, v29, v28, 2u);
          v31 = 0;
          v16 = v25;
          goto LABEL_19;
        }
      }

      else
      {
        v33 = [objc_opt_self() processInfo];
        v34 = [v33 isLowPowerModeEnabled];

        if (v34)
        {
          v25 = v38;
          sub_2187FB8F4(v38);
          v26 = sub_219BE5414();
          v27 = sub_219BF6214();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            v29 = "Offline Readiness processor will be disabled due to Low Power Mode";
            goto LABEL_18;
          }
        }

        else
        {
          if (([v22 isLowDataModeEnabled] & 1) == 0)
          {
            sub_2187FB8F4(v16);
            v26 = sub_219BE5414();
            v36 = sub_219BF6214();
            if (!os_log_type_enabled(v26, v36))
            {
              v31 = 1;
              goto LABEL_20;
            }

            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&dword_2186C1000, v26, v36, "Offline Readiness processor will be enabled", v28, 2u);
            v31 = 1;
            goto LABEL_19;
          }

          v25 = v37;
          sub_2187FB8F4(v37);
          v26 = sub_219BE5414();
          v27 = sub_219BF6214();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            v29 = "Offline Readiness processor will be disabled due to Low Data Mode";
            goto LABEL_18;
          }
        }
      }

      v31 = 0;
      v16 = v25;
      goto LABEL_20;
    }

    sub_2187FB8F4(v7);
    v26 = sub_219BE5414();
    v32 = sub_219BF6214();
    if (os_log_type_enabled(v26, v32))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2186C1000, v26, v32, "Offline Readiness processor will be disabled due to network reachability", v28, 2u);
      v31 = 0;
      v16 = v7;
      goto LABEL_19;
    }

    v31 = 0;
    v16 = v7;
  }

  else
  {
    sub_2187FB8F4(v4);
    v26 = sub_219BE5414();
    v30 = sub_219BF6214();
    if (os_log_type_enabled(v26, v30))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2186C1000, v26, v30, "Offline Readiness processor will be disabled due to feature enablement", v28, 2u);
      v31 = 0;
      v16 = v4;
LABEL_19:
      MEMORY[0x21CECF960](v28, -1, -1);
      goto LABEL_20;
    }

    v31 = 0;
    v16 = v4;
  }

LABEL_20:

  (*(v40 + 8))(v16, v41);
  return v31;
}

uint64_t FCSportsSyncState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 3)
    {
      if (a1 == 2)
      {
        return 0x64656C62616E65;
      }

      goto LABEL_8;
    }

    return 0x64656C6261736964;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6D72657465646E75;
      }

LABEL_8:
      v2 = sub_219BF7894();
      MEMORY[0x21CECC330](v2);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      return 0x286E776F6E6B6E75;
    }

    return 0x616C696176616E75;
  }
}

uint64_t sub_218840CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getObjectType();

  return sub_219BE2494();
}

char *sub_218840D24(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

void SceneStateManagerBridge.sceneDidBecomeActive(with:sourceApplication:sceneID:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v5 + 16);
  sub_2188383F8(a1, v9);
  v11 = sub_219BDB954();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  swift_unknownObjectRetain();
  v14 = 0;
  if (v13 != 1)
  {
    v14 = sub_219BDB854();
    (*(v12 + 8))(v9, v11);
  }

  v15 = sub_219BF53D4();

  v16 = sub_219BF53D4();
  [v10 sceneDidBecomeActiveWithURL:v14 sourceApplication:v15 sceneID:v16];
  swift_unknownObjectRelease();
}