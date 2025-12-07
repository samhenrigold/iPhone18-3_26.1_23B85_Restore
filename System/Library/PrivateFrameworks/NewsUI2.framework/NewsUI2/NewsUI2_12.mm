void sub_21880B928(uint64_t a1)
{
  if (!qword_280EE3720)
  {
    type metadata accessor for TodayModel(255);
    sub_2186EB3E8();
    sub_2187FADB8(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3720);
    }
  }
}

void sub_21880B9E0(uint64_t a1)
{
  if (!qword_280E90780)
  {
    sub_2186FB728();
    v1 = sub_219BF1B54();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90780);
    }
  }
}

uint64_t sub_21880BA68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21880BB00(id a1)
{
  if (!(a1 >> 62))
  {
  }
}

uint64_t sub_21880BB10(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_21880BB54(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21880BB54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_21880BAC8();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21880BBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21880BC4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21880BCB4(_BYTE *a1, void *a2)
{
  v5 = *(sub_219BE9944() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TodayExpandContext(0) - 8);
  return sub_21880BD9C(a1, a2, v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
}

unint64_t sub_21880BD9C(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v6 = type metadata accessor for EngagementEvent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED174();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v42 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BED1D4();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_219BED214();
  v39 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v38 = &v37 - v15;
  v16 = sub_219BE9C04();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v20 = qword_280F616D8;
    sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C09BA0;
    aBlock = 0;
    v48 = 0xE000000000000000;
    sub_219BE9934();
    sub_219BF7484();
    (*(v17 + 8))(v19, v16);
    v22 = aBlock;
    v23 = v48;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_2186FC3BC();
    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    v24 = sub_219BF6214();
    sub_219BE5314("Today feed will attempt auto refresh triggered by session=%{public}@", 68, 2, &dword_2186C1000, v20, v24, v21);

    result = sub_219BE7B04();
    if (result >> 62)
    {
      if (result >> 62 == 1)
      {
        sub_2187D9028();
        v26 = sub_219BF66A4();
        sub_219BED1F4();
        v27 = v38;
        sub_219BED244();
        v39 = *(v39 + 8);
        (v39)(v13, v46);
        v28 = swift_allocObject();
        *(v28 + 16) = a2;
        v51 = sub_2197160DC;
        v52 = v28;
        aBlock = MEMORY[0x277D85DD0];
        v48 = 1107296256;
        v49 = sub_218793E0C;
        v50 = &block_descriptor_57_0;
        v29 = _Block_copy(&aBlock);
        v30 = a2;

        v31 = v40;
        sub_219BED1A4();
        aBlock = MEMORY[0x277D84F90];
        sub_2187E1408(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        sub_2187DD4F0(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_21874EB68();
        v32 = v42;
        v33 = v45;
        sub_219BF7164();
        MEMORY[0x21CECD420](v27, v31, v32, v29);
        _Block_release(v29);

        (*(v44 + 8))(v32, v33);
        (*(v41 + 8))(v31, v43);
        return (v39)(v27, v46);
      }
    }

    else
    {
      sub_21880BB00(result);
      sub_21881DCEC(v37);
    }
  }

  else
  {
    v34 = (a2 + *((*MEMORY[0x277D85000] & *a2) + 0xF0));
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    v35 = *MEMORY[0x277D2F310];
    v36 = sub_219BE14C4();
    (*(*(v36 - 8) + 104))(v8, v35, v36);
    swift_storeEnumTagMultiPayload();
    sub_21880C6BC(v8);
    return sub_21880BA68(v8, type metadata accessor for EngagementEvent);
  }

  return result;
}

uint64_t sub_21880C48C()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for EngagementEvent(uint64_t a1)
{
  result = qword_280EDA910;
  if (!qword_280EDA910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21880C514(uint64_t a1)
{
  result = sub_219BE05A4();
  if (v2 <= 0x3F)
  {
    result = sub_219BE0154();
    if (v3 <= 0x3F)
    {
      result = sub_219BDFB64();
      if (v4 <= 0x3F)
      {
        result = sub_219BDFBD4();
        if (v5 <= 0x3F)
        {
          result = sub_219BDFC94();
          if (v6 <= 0x3F)
          {
            result = sub_219BDF514();
            if (v7 <= 0x3F)
            {
              result = sub_21880C68C();
              if (v8 <= 0x3F)
              {
                result = sub_219BE0234();
                if (v9 <= 0x3F)
                {
                  result = sub_219BDFAB4();
                  if (v10 <= 0x3F)
                  {
                    result = sub_219BE01B4();
                    if (v11 <= 0x3F)
                    {
                      result = sub_219BDFAF4();
                      if (v12 <= 0x3F)
                      {
                        result = sub_219BE14C4();
                        if (v13 <= 0x3F)
                        {
                          result = sub_219BDFF34();
                          if (v14 <= 0x3F)
                          {
                            result = sub_219BDFC44();
                            if (v15 <= 0x3F)
                            {
                              result = sub_219BDF934();
                              if (v16 <= 0x3F)
                              {
                                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                return 0;
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

  return result;
}

uint64_t sub_21880C68C()
{
  result = qword_280E8F8C8;
  if (!qword_280E8F8C8)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280E8F8C8);
  }

  return result;
}

void sub_21880C6BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BE14C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v107 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EngagementEvent(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v108 = &v101 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v101 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v101 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v101 - v19;
  if (sub_21880D14C())
  {

    sub_219BE2E84();

    if (v109[0] == 1)
    {
      v106 = v5;
      v104 = v4;
      if (qword_27CC08578 != -1)
      {
        swift_once();
      }

      v21 = sub_219BE5434();
      v22 = __swift_project_value_buffer(v21, qword_27CCD8A38);
      sub_218A153EC(a1, v20);
      v105 = v22;
      v23 = sub_219BE5414();
      v24 = sub_219BF6214();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v102 = a1;
        v26 = v25;
        v27 = swift_slowAlloc();
        v101 = v14;
        v28 = v27;
        *v109 = v27;
        *v26 = 136315138;
        v29 = sub_218A12AC0();
        v103 = v17;
        v31 = v30;
        sub_2190AB1F0(v20, type metadata accessor for EngagementEvent);
        v32 = sub_2186D1058(v29, v31, v109);
        v17 = v103;

        *(v26 + 4) = v32;
        _os_log_impl(&dword_2186C1000, v23, v24, "Received event %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v33 = v28;
        v14 = v101;
        MEMORY[0x21CECF960](v33, -1, -1);
        v34 = v26;
        a1 = v102;
        MEMORY[0x21CECF960](v34, -1, -1);
      }

      else
      {

        sub_2190AB1F0(v20, type metadata accessor for EngagementEvent);
      }

      v35 = OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager__userIsAuthenticatedToAppStore;
      v36 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager__userIsAuthenticatedToAppStore);
      v37 = v106;
      if (v36 == 2)
      {
        v38 = [*(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_appleAccount) activeiTunesAccount];
        if (v38)
        {
          v39 = v38;
          v40 = [v38 isAuthenticated];

          if (v40)
          {
            *(v2 + v35) = 1;
LABEL_13:
            if (sub_2190A9B48())
            {
              sub_218A153EC(a1, v17);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              if (EnumCaseMultiPayload > 11)
              {
                if (EnumCaseMultiPayload == 12)
                {
                  v80 = v107;
                  v81 = v104;
                  (*(v37 + 32))(v107, v17, v104);
                  sub_2190AA1A4(v80);
                  (*(v37 + 8))(v80, v81);
                  return;
                }

                if (EnumCaseMultiPayload == 13)
                {
                  v96 = (v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store);
                  v43 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 24);
                  v44 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 32);
                  __swift_project_boxed_opaque_existential_1(v96, v43);
                  v97 = v96[3];
                  v98 = v96[4];
                  __swift_project_boxed_opaque_existential_1(v96, v97);
                  (*(v98 + 8))(v109, v97, v98);
                  if (v110)
                  {
                    v99 = 0;
                  }

                  else
                  {
                    v99 = *&v109[16];
                  }

                  if (v110)
                  {
                    v48 = 0;
                  }

                  else
                  {
                    v48 = *&v109[24];
                  }

                  if (v110)
                  {
                    v100 = -1;
                  }

                  else
                  {
                    v100 = 0;
                  }

                  if (!__OFADD__(v99, 1))
                  {
                    *v109 = vbicq_s8(*v109, vdupq_n_s64(v100));
                    *&v109[16] = v99 + 1;
                    goto LABEL_70;
                  }

LABEL_80:
                  __break(1u);
                  return;
                }

                if (EnumCaseMultiPayload != 14)
                {
                  goto LABEL_51;
                }

                v64 = (v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store);
                v43 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 24);
                v44 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 32);
                __swift_project_boxed_opaque_existential_1(v64, v43);
                v65 = v64[3];
                v66 = v64[4];
                __swift_project_boxed_opaque_existential_1(v64, v65);
                (*(v66 + 8))(v109, v65, v66);
                v68 = *&v109[24];
                v67 = *&v109[16];
                if (v110)
                {
                  v67 = 0;
                  v68 = 0;
                  v69 = -1;
                }

                else
                {
                  v69 = 0;
                }

                v70 = __OFADD__(v68, 1);
                v71 = v68 + 1;
                if (v70)
                {
                  goto LABEL_78;
                }

                *v109 = vbicq_s8(*v109, vdupq_n_s64(v69));
                *&v109[16] = v67;
                *&v109[24] = v71;
              }

              else
              {
                switch(EnumCaseMultiPayload)
                {
                  case 9:
                    v72 = (v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store);
                    v43 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 24);
                    v44 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 32);
                    __swift_project_boxed_opaque_existential_1(v72, v43);
                    v73 = v72[3];
                    v74 = v72[4];
                    __swift_project_boxed_opaque_existential_1(v72, v73);
                    (*(v74 + 8))(v109, v73, v74);
                    v76 = *&v109[8];
                    v75 = *v109;
                    if (v110)
                    {
                      v75 = 0;
                      v76 = 0;
                      v77 = -1;
                    }

                    else
                    {
                      v77 = 0;
                    }

                    v70 = __OFADD__(v76, 1);
                    v78 = v76 + 1;
                    if (v70)
                    {
                      __break(1u);
LABEL_77:
                      __break(1u);
LABEL_78:
                      __break(1u);
LABEL_79:
                      __break(1u);
                      goto LABEL_80;
                    }

                    v79 = vbicq_s8(*&v109[16], vdupq_n_s64(v77));
                    break;
                  case 10:
                    v90 = (v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store);
                    v43 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 24);
                    v44 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 32);
                    __swift_project_boxed_opaque_existential_1(v90, v43);
                    v91 = v90[3];
                    v92 = v90[4];
                    __swift_project_boxed_opaque_existential_1(v90, v91);
                    (*(v92 + 8))(v109, v91, v92);
                    v93 = *&v109[8];
                    v75 = *v109;
                    if (v110)
                    {
                      v75 = 0;
                      v93 = 0;
                      v94 = -1;
                    }

                    else
                    {
                      v94 = 0;
                    }

                    v70 = __OFSUB__(v93, 1);
                    v95 = v93 - 1;
                    if (v70)
                    {
                      goto LABEL_79;
                    }

                    v79 = vbicq_s8(*&v109[16], vdupq_n_s64(v94));
                    v78 = v95 & ~(v95 >> 63);
                    break;
                  case 11:
                    v42 = (v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store);
                    v43 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 24);
                    v44 = *(v2 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 32);
                    __swift_project_boxed_opaque_existential_1(v42, v43);
                    v45 = v42[3];
                    v46 = v42[4];
                    __swift_project_boxed_opaque_existential_1(v42, v45);
                    (*(v46 + 8))(v109, v45, v46);
                    if (v110)
                    {
                      v47 = 0;
                    }

                    else
                    {
                      v47 = *v109;
                    }

                    if (v110)
                    {
                      v48 = 0;
                    }

                    else
                    {
                      v48 = *&v109[24];
                    }

                    if (v110)
                    {
                      v49 = -1;
                    }

                    else
                    {
                      v49 = 0;
                    }

                    if (!__OFADD__(v47, 1))
                    {
                      *v109 = v47 + 1;
                      *&v109[8] = vbicq_s8(*&v109[8], vdupq_n_s64(v49));
LABEL_70:
                      *&v109[24] = v48;
                      goto LABEL_71;
                    }

                    goto LABEL_77;
                  default:
LABEL_51:
                    sub_218A153EC(a1, v14);
                    v82 = sub_219BE5414();
                    v83 = sub_219BF6214();
                    if (os_log_type_enabled(v82, v83))
                    {
                      v84 = swift_slowAlloc();
                      v85 = swift_slowAlloc();
                      *v109 = v85;
                      *v84 = 136315138;
                      v86 = sub_218A12AC0();
                      v88 = v87;
                      sub_2190AB1F0(v14, type metadata accessor for EngagementEvent);
                      v89 = sub_2186D1058(v86, v88, v109);

                      *(v84 + 4) = v89;
                      _os_log_impl(&dword_2186C1000, v82, v83, "Ignoring event %s", v84, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v85);
                      MEMORY[0x21CECF960](v85, -1, -1);
                      MEMORY[0x21CECF960](v84, -1, -1);
                    }

                    else
                    {

                      sub_2190AB1F0(v14, type metadata accessor for EngagementEvent);
                    }

                    goto LABEL_72;
                }

                *v109 = v75;
                *&v109[8] = v78;
                *&v109[16] = v79;
              }

LABEL_71:
              (*(v44 + 24))(v109, v43, v44);
              goto LABEL_72;
            }

            v17 = v108;
            sub_218A153EC(a1, v108);
            v50 = sub_219BE5414();
            v51 = sub_219BF6214();
            if (!os_log_type_enabled(v50, v51))
            {

LABEL_72:
              v59 = v17;
              goto LABEL_73;
            }

            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            *v109 = v53;
            *v52 = 136315138;
            v60 = sub_218A12AC0();
            v62 = v61;
            sub_2190AB1F0(v17, type metadata accessor for EngagementEvent);
            v63 = sub_2186D1058(v60, v62, v109);

            *(v52 + 4) = v63;
            v58 = "Skipping processing [%s] due to quiescence interval";
LABEL_35:
            _os_log_impl(&dword_2186C1000, v50, v51, v58, v52, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v53);
            MEMORY[0x21CECF960](v53, -1, -1);
            MEMORY[0x21CECF960](v52, -1, -1);

            return;
          }
        }

        *(v2 + v35) = 0;
      }

      else if (v36)
      {
        goto LABEL_13;
      }

      sub_218A153EC(a1, v9);
      v50 = sub_219BE5414();
      v51 = sub_219BF6214();
      if (!os_log_type_enabled(v50, v51))
      {

        v59 = v9;
LABEL_73:
        sub_2190AB1F0(v59, type metadata accessor for EngagementEvent);
        return;
      }

      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v109 = v53;
      *v52 = 136315138;
      v54 = sub_218A12AC0();
      v56 = v55;
      sub_2190AB1F0(v9, type metadata accessor for EngagementEvent);
      v57 = sub_2186D1058(v54, v56, v109);

      *(v52 + 4) = v57;
      v58 = "Skipping processing [%s] since user is not authenticated to the AppStore";
      goto LABEL_35;
    }
  }
}

uint64_t sub_21880D14C()
{
  v1 = OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager____lazy_storage___useAppReviewRequest;
  LODWORD(v2) = *(v0 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager____lazy_storage___useAppReviewRequest);
  if (v2 == 2)
  {
    v2 = [*(v0 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_configurationManager) possiblyUnfetchedAppConfiguration];
    if ([v2 respondsToSelector_])
    {
      [v2 appReviewRequestEnabled];
      swift_unknownObjectRelease();
      sub_219BDC8D4();
      sub_219BDC8B4();
      sub_219BDC3D4();
      LOBYTE(v2) = sub_219BDC8C4();
    }

    else
    {
      swift_unknownObjectRelease();
      LOBYTE(v2) = 0;
    }

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

void sub_21880D2D0(uint64_t a1, uint64_t a2, char a3)
{
  if (sub_219BED0C4())
  {
    if (a3)
    {

      sub_219791160(1);
    }

    else
    {

      sub_219791074(0);
    }
  }

  else if (a3)
  {
    sub_21880D358();
  }

  else
  {
    sub_218F02BA0();
  }
}

uint64_t sub_21880D358()
{
  sub_2187FF18C(0);
  v47 = v1;
  MEMORY[0x28223BE20](v1);
  v48 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F6124(0, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = (v42 - v6);
  sub_2187F6124(0, &qword_280EE64B0, MEMORY[0x277D34D28]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v42 - v8;
  v10 = sub_219BE3D34();
  v51 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v50 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D35210];
  sub_2187F6124(0, &qword_280EE62C8, MEMORY[0x277D35210]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v42 - v14;
  v16 = sub_219BE4584();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_subscribeButtonDestination;
  swift_beginAccess();
  sub_218809EDC(v0 + v20, v15, &qword_280EE62C8, v12);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v21 = &qword_280EE62C8;
    v22 = MEMORY[0x277D35210];
    v23 = v15;
    return sub_218809FC8(v23, v21, v22);
  }

  (*(v17 + 32))(v19, v15, v16);
  v24 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_paywallModel;
  swift_beginAccess();
  sub_218809EDC(v0 + v24, v9, &qword_280EE64B0, MEMORY[0x277D34D28]);
  v25 = v51;
  if ((*(v51 + 48))(v9, 1, v10) == 1)
  {
    (*(v17 + 8))(v19, v16);
    v21 = &qword_280EE64B0;
    v22 = MEMORY[0x277D34D28];
    v23 = v9;
    return sub_218809FC8(v23, v21, v22);
  }

  v26 = v50;
  (*(v25 + 32))(v50, v9, v10);
  v27 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_session;
  swift_beginAccess();
  v43 = v27;
  v28 = v49;
  sub_218809EDC(v0 + v27, v49, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
  v29 = type metadata accessor for MastheadPaywallEventSession(0);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v28, 1, v29) != 1)
  {
    (*(v25 + 8))(v26, v10);
    (*(v17 + 8))(v19, v16);
    v21 = &qword_280EB7F90;
    v22 = type metadata accessor for MastheadPaywallEventSession;
    v23 = v28;
    return sub_218809FC8(v23, v21, v22);
  }

  v44 = v16;
  v45 = v19;
  sub_218809FC8(v28, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
  v31 = v0[19];
  v32 = v0[20];
  v49 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 16, v31);
  v33 = (*(v32 + 8))(v31, v32);
  if (!(v33 >> 60))
  {
    v34 = v25;
    v42[1] = v33;
    v35 = swift_projectBox();
    v36 = v48;
    sub_218F03628(v35, v48);
    v37 = *(v47 + 48);
    sub_218F03920(v36 + *(v47 + 64), type metadata accessor for MastheadModelSupplementaryInfo);
    sub_218F03920(v36 + v37, type metadata accessor for MastheadModelContext);
    if (sub_218816F54())
    {

      v25 = v34;
    }

    else
    {
      v39 = v46;
      (*(v17 + 16))(v46, v45, v44);
      (*(v34 + 16))(v39 + *(v29 + 20), v50, v10);
      (*(v30 + 56))(v39, 0, 1, v29);
      v40 = v49;
      v41 = v43;
      swift_beginAccess();
      sub_218F0370C(v39, v40 + v41, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
      swift_endAccess();
      v25 = v34;
      swift_getObjectType();
      sub_219BE4354();
      sub_219BE4324();
    }
  }

  (*(v25 + 8))(v50, v10);
  return (*(v17 + 8))(v45, v44);
}

uint64_t sub_21880DB54(void *a1)
{
  [a1 contentOffset];
  if (v3 > 0.0)
  {
    v4 = (*(*(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler) + 88) + 289);
    if ((*(*(*(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler) + 88) + 290) & 1) == 0 && (*v4 & 1) == 0)
    {
      *v4 = 257;
    }
  }

  if ([a1 ts_isScrolling])
  {
    sub_21880DF68(1, &v8);

    v5 = *(*(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v5 + 144))(0, ObjectType, v5);
  }

  else
  {

    return sub_21880DC5C();
  }
}

uint64_t sub_21880DC5C()
{
  v1 = sub_219BEFAD4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187E2B14(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TodayExpandContext(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880DF68(1, &v17);
  v16 = v18;
  v11 = *(v0 + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler);
  sub_21880E5CC(&v17, 1);

  result = sub_219BF60A4();
  if (result)
  {
    v13 = sub_219BE6DF4();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_218809CC0(v7, v10);
    sub_21881AB5C(v7, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88], sub_2187E2B14);
    (*(v2 + 104))(v4, *MEMORY[0x277D328C0], v1);
    v14 = *(v11 + 40);
    ObjectType = swift_getObjectType();
    (*(v14 + 88))(v10, v4, ObjectType, v14);
    (*(v2 + 8))(v4, v1);
    return sub_2187F691C(v10, type metadata accessor for TodayExpandContext);
  }

  return result;
}

void sub_21880DF68(int a1@<W0>, _OWORD *a2@<X8>)
{
  v53 = a1;
  v54 = a2;
  sub_2187296E8(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v48 - v3;
  v5 = MEMORY[0x277D83D88];
  sub_2187E2B14(0, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  sub_2187FAD00(0);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187E2B14(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], v5);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v48 - v12;
  v14 = sub_219BDC104();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8664();
  sub_2187DDB94(0);
  sub_2187DEAC4(&qword_280EE4F40, 255, sub_2187DDB94, MEMORY[0x277D6DC88]);
  v18 = sub_219BE8C24();

  v19 = v18;
  [v19 contentOffset];
  v21 = v20;
  [v19 adjustedContentInset];
  v23 = v21 + v22;
  [v19 contentOffset];
  v25 = v24;
  [v19 adjustedContentInset];
  v27 = v26;

  v28 = v25 + v27;
  if (v23 <= 0.0 && v28 <= 0.0)
  {
    goto LABEL_3;
  }

  sub_21978A200(v19, v53 & 1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    v29 = &unk_280EE9BB0;
    v30 = MEMORY[0x277CC9AF8];
    v31 = MEMORY[0x277D83D88];
    v32 = v13;
LABEL_6:
    sub_21881AB5C(v32, v29, v30, v31, sub_2187E2B14);
    goto LABEL_7;
  }

  (*(v15 + 32))(v17, v13, v14);
  sub_219BDC0F4();
  sub_219BF6404();
  if (v59)
  {
    (*(v15 + 8))(v17, v14);
LABEL_3:

LABEL_7:
    v33 = v54;
    *v54 = 0u;
    v33[1] = 0u;
    return;
  }

  v34 = v55;
  v35 = v56;
  v36 = v57;
  v37 = v58;
  sub_219BE86A4();
  sub_2187DD900(0);
  sub_2187DEAC4(&qword_280EE5530, 255, sub_2187DD900, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v38 = v50;
  sub_219BEB254();
  (*(v49 + 8))(v4, v38);
  v40 = v51;
  v39 = v52;
  if ((*(v51 + 48))(v8, 1, v52) == 1)
  {
    (*(v15 + 8))(v17, v14);

    v29 = &unk_280EE58B0;
    v30 = sub_2187FAD00;
    v31 = MEMORY[0x277D83D88];
    v32 = v8;
    goto LABEL_6;
  }

  v41 = v48;
  (*(v40 + 32))(v48, v8, v39);
  v42 = sub_219BE6944();
  v44 = v43;
  v60.origin.x = v34;
  v60.origin.y = v35;
  v60.size.width = v36;
  v60.size.height = v37;
  v45 = v23 - CGRectGetMinX(v60);
  v61.origin.x = v34;
  v61.origin.y = v35;
  v61.size.width = v36;
  v61.size.height = v37;
  MinY = CGRectGetMinY(v61);

  (*(v40 + 8))(v41, v39);
  (*(v15 + 8))(v17, v14);
  v47 = v54;
  *v54 = v42;
  *(v47 + 1) = v44;
  *(v47 + 2) = v45;
  *(v47 + 3) = v28 - MinY;
}

uint64_t sub_21880E5CC(__int128 *a1, char a2)
{
  if ((a2 & 1) != 0 && *(*(v2 + 88) + 290) == 1)
  {
    v8 = *a1;
    v9 = a1[1];
    v4 = swift_allocObject();
    *(v4 + 16) = v8;
    *(v4 + 32) = v9;

    sub_219BE7884();
  }

  v5 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  return (*(v5 + 144))(a2 & 1, ObjectType, v5);
}

uint64_t sub_21880E6C8()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21880E70C(char a1)
{
  sub_21880E76C(a1);

  return sub_218811A74(0);
}

void sub_21880E76C(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (!Strong || (v3 = Strong, v6 = [Strong presentedViewController], v3, (v4 = v6) == 0))
    {

      sub_21880E84C();
      return;
    }
  }

  else
  {
    if (!Strong)
    {
      return;
    }

    v5 = Strong;
    v7 = [Strong presentedViewController];

    if (!v7)
    {
      return;
    }

    sub_21969864C(v7);
    v4 = v7;
  }
}

void sub_21880E84C()
{
  v7 = v0;
  v8 = sub_219BDBD64();
  v299 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v285 = &v250 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188114A8(0, &qword_280EE6590, MEMORY[0x277D317D0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v284 = &v250 - v11;
  v283 = sub_219BE3874();
  v296 = *(v283 - 8);
  MEMORY[0x28223BE20](v283);
  v282 = &v250 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = sub_219BE38D4();
  v294 = *(v289 - 8);
  MEMORY[0x28223BE20](v289);
  v288 = &v250 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE3514();
  isa = v14[-1].isa;
  v15 = *(isa + 8);
  MEMORY[0x28223BE20](v14);
  v292 = &v250 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v286 = &v250 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v250 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v250 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v250 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v250 - v28;
  sub_21881168C(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v326 = v30;
  v322 = v30[-1].isa;
  MEMORY[0x28223BE20](v30);
  v325 = &v250 - v31;
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v32 - 8);
  v305 = &v250 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v310 = &v250 - v35;
  sub_2187FAD00(0);
  v312 = v36;
  v318 = *(v36 - 1);
  MEMORY[0x28223BE20](v36);
  v38 = (&v250 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v39);
  v307 = (&v250 - v40);
  v324 = sub_219BDC104();
  MEMORY[0x28223BE20](v324);
  v306 = &v250 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = &v250 - v44;
  if (v7[OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_isFetchingAssets])
  {
    return;
  }

  v317 = v43;
  v273 = OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_isFetchingAssets;
  v274 = v26;
  v278 = v8;
  v303 = v38;
  v323 = *&v7[OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_blueprintViewController];
  sub_219BE8664();
  v46 = sub_219BE7BC4();

  v47 = [v46 collectionViewLayout];
  v304 = v46;
  [v304 bounds];
  v48 = [v47 layoutAttributesForElementsInRect_];

  if (!v48)
  {

    v56 = v304;

    return;
  }

  v254 = v23;
  v255 = v15;
  v256 = v20;
  v298 = v29;
  sub_2186C6148(0, &qword_280E8DBF0, 0x277D75308);
  v49 = sub_219BF5924();

  v327[0] = MEMORY[0x277D84F90];
  if (v49 >> 62)
  {
LABEL_150:
    v50 = sub_219BF7214();
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = v312;
  v311 = v7;
  v301 = v14;
  if (v50)
  {
    v52 = 0;
    v53 = 0;
    v14 = (v49 & 0xC000000000000001);
    v7 = (v49 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if (v14)
      {
        v54 = MEMORY[0x21CECE0F0](v52, v49);
      }

      else
      {
        if (v52 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_136;
        }

        v54 = *(v49 + 8 * v52 + 32);
      }

      v51 = v54;
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:

        (v291->isa)(v45, v301);
        (*v308)(v53, v51);
LABEL_139:
        v221 = v49;
        goto LABEL_146;
      }

      v335 = v54;
      sub_219698D8C(&v335, v311, &v334);

      if (v334)
      {
        MEMORY[0x21CECC690]();
        if (*((v327[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v321 = *((v327[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_219BF5A14();
        }

        sub_219BF5A54();
      }

      ++v52;
      v51 = v312;
    }

    while (v55 != v50);
  }

  v327[0] = sub_2197590DC(v57);
  sub_2196985D0(v327);

  v58 = v327[0];
  if (v327[0] < 0 || (v327[0] & 0x4000000000000000) != 0)
  {
    v14 = v327[0];
    v59 = sub_219BF7214();
    v58 = v14;
  }

  else
  {
    v59 = *(v327[0] + 16);
  }

  v313 = v59;
  if (!v59)
  {

    return;
  }

  v53 = 0;
  v321 = v58 & 0xC000000000000001;
  v295 = v58 + 32;
  v320 = (v322 + 8);
  v319 = (v318 + 48);
  v309 = (v318 + 32);
  v308 = (v318 + 8);
  v302 = MEMORY[0x277D84F98];
  v60 = (v317 + 8);
  v322 = v58;
  do
  {
    if (v321)
    {
      v62 = MEMORY[0x21CECE0F0](v53);
    }

    else
    {
      if (v53 >= *(v58 + 16))
      {
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      v62 = *(v58 + 8 * v53 + 32);
    }

    v49 = v62;
    v14 = (v53 + 1);
    if (__OFADD__(v53, 1))
    {
      goto LABEL_137;
    }

    v63 = [v62 indexPath];
    sub_219BDC0B4();

    sub_219BE86A4();
    v335 = v327[0];
    sub_2187DD900(0);
    v65 = v64;
    v66 = sub_2187A05D0(&qword_280EE5530, 255, sub_2187DD900, MEMORY[0x277D6D8C8]);
    v7 = v325;
    v318 = v65;
    v67 = v310;
    v317 = v66;
    sub_219BE7B94();

    v68 = v326;
    sub_219BEB254();
    v316 = *v320;
    v316(v7, v68);
    v315 = *v319;
    if (v315(v67, 1, v51) == 1)
    {
      v314 = *v60;
      v314(v45, v324);

      sub_21969DBC0(v67, sub_2188118D4);
      goto LABEL_26;
    }

    v7 = v307;
    (*v309)(v307, v67, v51);
    sub_219BE6934();
    sub_2193B71D4(v327[0]);
    v70 = v69;

    if (!v70)
    {
      goto LABEL_40;
    }

    v71 = *(v70 + 16);

    if (!v71)
    {
      goto LABEL_40;
    }

    sub_219BDC0F4();
    sub_219BF6404();
    if (v331)
    {
      goto LABEL_40;
    }

    width = v330;
    v72 = sub_219BE6944();
    v74 = v72;
    v75 = v73;
    v76 = v302;
    if (*(v302 + 16) && (v77 = sub_21870F700(v72, v73), (v78 & 1) != 0))
    {
      if (width >= *(*(v76 + 56) + 8 * v77))
      {
        goto LABEL_39;
      }
    }

    else if (width >= 1.79769313e308)
    {
LABEL_39:

LABEL_40:

      (*v308)(v7, v51);
LABEL_41:
      v314 = *v60;
      v314(v45, v324);
      goto LABEL_26;
    }

    v79 = v302;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v327[0] = v79;
    v314 = v74;
    v82 = sub_21870F700(v74, v75);
    v83 = *(v79 + 16);
    v84 = (v81 & 1) == 0;
    v85 = v83 + v84;
    if (__OFADD__(v83, v84))
    {
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      sub_219BF79A4();
      __break(1u);

      __break(1u);
      return;
    }

    v86 = v81;
    if (*(v79 + 24) >= v85)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_219495AE8();
      }
    }

    else
    {
      sub_2194869FC(v85, isUniquelyReferenced_nonNull_native);
      v87 = sub_21870F700(v314, v75);
      if ((v86 & 1) != (v88 & 1))
      {
        goto LABEL_154;
      }

      v82 = v87;
    }

    v7 = v307;
    if (v86)
    {

      v302 = v327[0];
      *(*(v327[0] + 56) + 8 * v82) = width;

      v51 = v312;
      (*v308)(v7, v312);
      goto LABEL_41;
    }

    v89 = v327[0];
    *(v327[0] + 8 * (v82 >> 6) + 64) |= 1 << v82;
    v90 = (v89[6] + 16 * v82);
    *v90 = v314;
    v90[1] = v75;
    *(v89[7] + 8 * v82) = width;

    v51 = v312;
    (*v308)(v7, v312);
    v314 = *v60;
    v314(v45, v324);
    v91 = v89[2];
    v92 = __OFADD__(v91, 1);
    v93 = v91 + 1;
    if (v92)
    {
      goto LABEL_153;
    }

    v302 = v89;
    v89[2] = v93;
LABEL_26:
    v58 = v322;
    ++v53;
  }

  while (v14 != v313);
  v310 = v60;
  v94 = 0;
  v271 = &v311[OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_engagementViewControllerFactory];
  v300 = isa + 16;
  v277 = (v294 + 8);
  v270 = (v296 + 104);
  v269 = (*&v299 + 8);
  v290 = OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_engagementOverlayDialogRequests;
  v291 = (isa + 8);
  v268 = *MEMORY[0x277D31710];
  v267 = *MEMORY[0x277D317F8];
  v266 = *MEMORY[0x277D317D8];
  v265 = *MEMORY[0x277D31668];
  v264 = *MEMORY[0x277D317E8];
  v263 = *MEMORY[0x277D317F0];
  *&v61 = 136315394;
  v279 = v61;
  *&v61 = 136315138;
  v280 = v61;
  v262 = xmmword_219C0EE20;
  v49 = v306;
  v7 = v305;
  v45 = v313;
  while (1)
  {
    if (v321)
    {
      v95 = MEMORY[0x21CECE0F0](v94, v322);
      v92 = __OFADD__(v94++, 1);
      if (v92)
      {
        break;
      }

      goto LABEL_62;
    }

    if (v94 >= *(v322 + 16))
    {
      goto LABEL_148;
    }

    v95 = *(v295 + 8 * v94);
    v92 = __OFADD__(v94++, 1);
    if (v92)
    {
      break;
    }

LABEL_62:
    v96 = v95;
    v97 = [v95 indexPath];
    sub_219BDC0B4();

    sub_219BE86A4();
    *&v328 = v327[0];
    v98 = v325;
    sub_219BE7B94();

    v14 = v326;
    sub_219BEB254();
    v316(v98, v14);
    if (v315(v7, 1, v51) == 1)
    {
      v314(v49, v324);

      sub_21969DBC0(v7, sub_2188118D4);
    }

    else
    {
      v307 = v96;
      v53 = v303;
      (*v309)(v303, v7, v51);
      v99 = sub_219BE6944();
      v101 = v99;
      v102 = v100;
      v103 = v302;
      if (*(v302 + 16) && (v104 = sub_21870F700(v99, v100), (v105 & 1) != 0))
      {
        v5 = *(*(v103 + 56) + 8 * v104);
      }

      else
      {
        v5 = 1.79769313e308;
      }

      sub_219BE6934();
      sub_2193B71D4(v327[0]);
      v14 = v106;

      if (v14)
      {
        v107 = v14[2].isa;
        if (v107)
        {
          if (qword_280EE60A0 != -1)
          {
            swift_once();
          }

          v108 = sub_219BE5434();
          v109 = __swift_project_value_buffer(v108, qword_280F627F0);

          v294 = v109;
          v110 = sub_219BE5414();
          v111 = sub_219BF6214();

          v112 = os_log_type_enabled(v110, v111);
          v296 = v107;
          if (v112)
          {
            v113 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            v327[0] = v114;
            *v113 = v279;
            v115 = sub_2186D1058(v101, v102, v327);

            *(v113 + 4) = v115;
            *(v113 + 12) = 2080;
            v116 = MEMORY[0x21CECC6D0](v14, v301);
            v118 = sub_2186D1058(v116, v117, v327);

            *(v113 + 14) = v118;
            _os_log_impl(&dword_2186C1000, v110, v111, "Section %s is visible on screen and configured with engagement overlay placements: %s", v113, 0x16u);
            swift_arrayDestroy();
            v119 = v114;
            v51 = v312;
            MEMORY[0x21CECF960](v119, -1, -1);
            v120 = v113;
            v107 = v296;
            MEMORY[0x21CECF960](v120, -1, -1);
          }

          else
          {
          }

          v7 = v305;
          v45 = v313;
          v49 = v306;
          sub_219BDC0F4();
          sub_219BF6404();
          if ((v333 & 1) == 0 && v332 == v5)
          {
            v293 = v14;
            [v304 bounds];
            v341 = CGRectIntegral(v340);
            x = v341.origin.x;
            y = v341.origin.y;
            width = v341.size.width;
            height = v341.size.height;
            v14 = v307;
            [v307 frame];
            v343 = CGRectIntegral(v342);
            v6 = v343.origin.x;
            v122 = v343.origin.y;
            v123 = v343.size.width;
            v299 = v343.size.height;
            v339.x = 0.0;
            v343.origin.x = x;
            v272 = y;
            v343.origin.y = y;
            v2 = width;
            v343.size.width = width;
            v343.size.height = height;
            v339.y = v5;
            if (!CGRectContainsPoint(v343, v339))
            {

LABEL_85:
              (*v308)(v53, v51);
              v314(v49, v324);
              goto LABEL_55;
            }

            v344.origin.x = v6;
            v344.origin.y = v122;
            v344.size.width = v123;
            width = v299;
            v344.size.height = v299;
            CGRectGetHeight(v344);
            sub_219BF6B24();
            v347.origin.x = v124;
            v347.origin.y = v125;
            v347.size.width = v126;
            v347.size.height = v127;
            v6 = x;
            v345.origin.x = x;
            x = v272;
            v345.origin.y = v272;
            v345.size.width = v2;
            v5 = height;
            v345.size.height = height;
            if (CGRectContainsRect(v345, v347))
            {
              width = v2;
              v275 = sub_21969946C(v304);
              v128 = v293;
              if (v275)
              {
                v129 = 0.0;
                v130 = *(isa + 80);
                v251 = ~v130;
                v252 = v130;
                v287 = v293 + ((v130 + 32) & ~v130);
                v2 = height;
                height = v6;
                while (1)
                {
                  if (*&v129 >= v128[2].isa)
                  {
                    goto LABEL_149;
                  }

                  v131 = *(isa + 9);
                  v299 = v129;
                  v132 = *(isa + 2);
                  v45 = v298;
                  v132(v298, &v287[v131 * *&v129], v301);
                  v133 = v311;
                  v134 = v290;
                  swift_beginAccess();
                  v135 = *(v133 + v134);
                  if (!*(v135 + 16) || (v136 = sub_21931F330(v45), (v137 & 1) == 0))
                  {
                    swift_endAccess();
                    v144 = v292;
                    v145 = v301;
                    v132(v292, v45, v301);
                    v146 = sub_219BE5414();
                    v147 = v45;
                    v148 = sub_219BF6214();
                    if (os_log_type_enabled(v146, v148))
                    {
                      v149 = v144;
                      v150 = swift_slowAlloc();
                      v281 = swift_slowAlloc();
                      v327[0] = v281;
                      *v150 = v280;
                      sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550], MEMORY[0x277D31580]);
                      v151 = sub_219BF7894();
                      v153 = v152;
                      v14 = v291;
                      v154 = v291->isa;
                      (v291->isa)(v149, v145);
                      v155 = v154;
                      v156 = sub_2186D1058(v151, v153, v327);
                      v107 = v296;

                      *(v150 + 4) = v156;
                      _os_log_impl(&dword_2186C1000, v146, v148, "Engagement dialog request not available for placement: %s", v150, 0xCu);
                      v157 = v281;
                      __swift_destroy_boxed_opaque_existential_1(v281);
                      v51 = v312;
                      MEMORY[0x21CECF960](v157, -1, -1);
                      MEMORY[0x21CECF960](v150, -1, -1);

                      v155(v298, v145);
                    }

                    else
                    {

                      v14 = v291->isa;
                      (v291->isa)(v144, v145);
                      (v14)(v147, v145);
                    }

                    v53 = v303;
                    goto LABEL_88;
                  }

                  v138 = *(*(v135 + 56) + 8 * v136);
                  swift_endAccess();
                  v281 = v138;
                  v139 = v288;
                  sub_219BE34D4();
                  sub_218807310(0);
                  v7 = v275;
                  if (swift_dynamicCastClass())
                  {
                    v140 = v7;
                    v141 = sub_219BE8204();
                    v142 = v139;
                    v143 = &v334;
                    sub_21969CA84(v141, v142, v304, &v334);
                  }

                  else
                  {
                    sub_21969C9EC(0);
                    if (!swift_dynamicCastClass())
                    {
                      (*v277)(v139, v289);
LABEL_118:
                      v195 = v286;
                      v196 = v301;
                      v132(v286, v45, v301);
                      v197 = sub_219BE5414();
                      v198 = v45;
                      v199 = sub_219BF6214();
                      if (os_log_type_enabled(v197, v199))
                      {
                        v200 = v195;
                        v201 = swift_slowAlloc();
                        v276 = swift_slowAlloc();
                        v327[0] = v276;
                        *v201 = v280;
                        sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550], MEMORY[0x277D31580]);
                        v202 = sub_219BF7894();
                        v204 = v203;
                        v14 = v291;
                        v205 = v291->isa;
                        (v291->isa)(v200, v196);
                        v206 = sub_2186D1058(v202, v204, v327);
                        v107 = v296;

                        *(v201 + 4) = v206;
                        _os_log_impl(&dword_2186C1000, v197, v199, "Target view not found for placement: %s", v201, 0xCu);
                        v207 = v276;
                        __swift_destroy_boxed_opaque_existential_1(v276);
                        v53 = v303;
                        MEMORY[0x21CECF960](v207, -1, -1);
                        MEMORY[0x21CECF960](v201, -1, -1);

                        v205(v298, v196);
                      }

                      else
                      {

                        v14 = v291->isa;
                        (v291->isa)(v195, v196);
                        (v14)(v198, v196);
                      }

                      v51 = v312;
LABEL_88:
                      v49 = v306;
                      v128 = v293;
                      goto LABEL_89;
                    }

                    v158 = v7;
                    v276 = v132;
                    v159 = v158;
                    v141 = sub_219BE8204();
                    v142 = v139;
                    v143 = &v335;
                    v160 = v159;
                    v132 = v276;
                    sub_21969CDEC(v142, v160, v304, &v335);
                  }

                  v5 = *v143;
                  v6 = *(v143 + 1);
                  v161 = *(v143 + 2);
                  v162 = *(v143 + 3);
                  v163 = *(v143 + 32);

                  (*v277)(v142, v289);
                  v45 = v298;
                  if (v163)
                  {
                    goto LABEL_118;
                  }

                  [v304 safeAreaInsets];
                  v346.origin.x = UIEdgeInsetsInsetRect(height, x, width, v2, v164, v165);
                  v348.origin.x = v5;
                  v348.origin.y = v6;
                  v348.size.width = v161;
                  v348.size.height = v162;
                  if (!CGRectContainsRect(v346, v348))
                  {

                    v14 = sub_219BE5414();
                    v208 = sub_219BF6214();
                    if (!os_log_type_enabled(v14, v208))
                    {
                      goto LABEL_138;
                    }

                    v209 = v53;
                    v210 = swift_slowAlloc();
                    *v210 = 0;
                    _os_log_impl(&dword_2186C1000, v14, v208, "Target view is outside the safe area. Skipping presentation...", v210, 2u);
                    MEMORY[0x21CECF960](v210, -1, -1);

                    (v291->isa)(v45, v301);
                    (*v308)(v209, v51);
                    goto LABEL_139;
                  }

                  v276 = v132;
                  (*v270)(v282, v268, v283);
                  v166 = sub_219BE3994();
                  (*(*(v166 - 8) + 56))(v284, 1, 1, v166);
                  sub_219BE3914();
                  swift_allocObject();
                  v253 = v304;
                  v261 = sub_219BE3904();
                  v167 = v285;
                  sub_219BDBD54();
                  v260 = sub_219BDBD44();
                  v259 = v168;
                  (*v269)(v167, v278);
                  v169 = [v281 metricsEvent];
                  if (!v169)
                  {
                    break;
                  }

                  v170 = v169;
                  v171 = [v169 underlyingDictionary];

                  v172 = sub_219BF5214();
                  *&v328 = 0x496567617373656DLL;
                  *(&v328 + 1) = 0xE900000000000064;
                  sub_219BF72A4();
                  if (!*(v172 + 16) || (v173 = sub_21931EECC(v327), (v174 & 1) == 0))
                  {

                    sub_218B6B67C(v327);
                    v178 = 0uLL;
                    v328 = 0u;
                    v179 = &v337;
LABEL_113:
                    *(v179 - 16) = v178;
                    goto LABEL_114;
                  }

                  sub_2186D1230(*(v172 + 56) + 32 * v173, &v328);
                  sub_218B6B67C(v327);

                  if (*(&v329 + 1))
                  {
                    v175 = swift_dynamicCast();
                    v176 = v327[0];
                    if (!v175)
                    {
                      v176 = 0;
                    }

                    v258 = v176;
                    if (v175)
                    {
                      v177 = v327[1];
                    }

                    else
                    {
                      v177 = 0;
                    }

                    v257 = v177;
                    goto LABEL_115;
                  }

LABEL_114:
                  sub_21969DBC0(&v328, sub_21880702C);
                  v258 = 0;
                  v257 = 0;
LABEL_115:
                  sub_2188114A8(0, &unk_280E8C050, MEMORY[0x277D31800], MEMORY[0x277D84560]);
                  v180 = sub_219BE39F4();
                  v181 = *(v180 - 8);
                  v182 = *(v181 + 72);
                  v183 = (*(v181 + 80) + 32) & ~*(v181 + 80);
                  v184 = swift_allocObject();
                  *(v184 + 16) = v262;
                  v185 = v184 + v183;
                  v186 = v45;
                  v187 = v301;
                  (v276)(v184 + v183, v45, v301);
                  v188 = *(v181 + 104);
                  (v188)(v185, v267, v180);
                  v189 = (v185 + v182);
                  v190 = v259;
                  *v189 = v260;
                  v189[1] = v190;
                  v188();
                  v191 = sub_219BE3794();
                  (*(*(v191 - 8) + 104))(v185 + 2 * v182, v265, v191);
                  (v188)(v185 + 2 * v182, v264, v180);
                  v192 = (v185 + 3 * v182);
                  v193 = v257;
                  *v192 = v258;
                  v192[1] = v193;
                  v188();
                  __swift_project_boxed_opaque_existential_1(v271, v271[3]);
                  sub_2187A05D0(qword_280EAE3A0, v194, type metadata accessor for TodayEngagementOverlayManager, &unk_219C99EA0);

                  v14 = v281;
                  v49 = sub_219BE3B74();

                  if (v49)
                  {
                    v325 = v184;

                    v211 = v253;

                    [v211 contentOffset];
                    v5 = v212;
                    v6 = v213;
                    v45 = v274;
                    (v276)(v274, v186, v187);
                    v14 = sub_219BE5414();
                    v214 = sub_219BF6214();
                    v7 = v187;
                    if (!os_log_type_enabled(v14, v214))
                    {
                      goto LABEL_141;
                    }

                    v215 = swift_slowAlloc();
                    v216 = swift_slowAlloc();
                    v327[0] = v216;
                    *v215 = v280;
                    sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550], MEMORY[0x277D31580]);
                    v217 = sub_219BF7894();
                    v219 = v218;
                    v323 = v291->isa;
                    v323(v45, v187);
                    v220 = sub_2186D1058(v217, v219, v327);

                    *(v215 + 4) = v220;
                    _os_log_impl(&dword_2186C1000, v14, v214, "Fetching overlay assets for placement: %s", v215, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v216);
                    MEMORY[0x21CECF960](v216, -1, -1);
                    MEMORY[0x21CECF960](v215, -1, -1);

                    goto LABEL_142;
                  }

                  (v291->isa)(v45, v187);

                  v51 = v312;
                  v53 = v303;
                  v49 = v306;
                  v128 = v293;
                  v107 = v296;
LABEL_89:
                  *&v129 = *&v299 + 1;
                  v7 = v305;
                  v45 = v313;
                  if (v107 == (*&v299 + 1))
                  {

                    goto LABEL_84;
                  }
                }

                v178 = 0uLL;
                v329 = 0u;
                v179 = &v336;
                goto LABEL_113;
              }
            }
          }

LABEL_84:

          goto LABEL_85;
        }
      }

      (*v308)(v53, v51);
      v49 = v306;
      v314(v306, v324);
      v7 = v305;
      v45 = v313;
    }

LABEL_55:
    if (v94 == v45)
    {

      return;
    }
  }

  __break(1u);
LABEL_141:

  v323 = v291->isa;
  v323(v45, v7);
LABEL_142:
  v222 = v252;
  v223 = v251;
  v311[v273] = 1;
  v326 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v224 = v254;
  (v276)(v254, v298, v7);
  v225 = (v222 + 24) & v223;
  v226 = (v255 + v225 + 7) & 0xFFFFFFFFFFFFFFF8;
  v227 = (v226 + 15) & 0xFFFFFFFFFFFFFFF8;
  v228 = (v227 + 23) & 0xFFFFFFFFFFFFFFF8;
  v229 = (v228 + 15) & 0xFFFFFFFFFFFFFFF8;
  v230 = (v229 + 39) & 0xFFFFFFFFFFFFFFF8;
  v231 = (v230 + 15) & 0xFFFFFFFFFFFFFFF8;
  v232 = swift_allocObject();
  *(v232 + 16) = v326;
  (*(isa + 4))(v232 + v225, v224, v301);
  v233 = v253;
  *(v232 + v226) = v253;
  v234 = (v232 + v227);
  *v234 = v5;
  v234[1] = v6;
  *(v232 + v228) = v49;
  v235 = (v232 + v229);
  *v235 = height;
  v235[1] = x;
  v235[2] = width;
  v235[3] = v2;
  *(v232 + v230) = 0x4020000000000000;
  v236 = v301;
  *(v232 + v231) = v325;
  v237 = v233;
  v238 = v49;

  sub_219BF64D4();

  v239 = v256;
  (v276)(v256, v298, v236);
  v240 = sub_219BE5414();
  v241 = sub_219BF6214();
  if (os_log_type_enabled(v240, v241))
  {
    v242 = swift_slowAlloc();
    v243 = swift_slowAlloc();
    v327[0] = v243;
    *v242 = v280;
    sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550], MEMORY[0x277D31580]);
    v244 = sub_219BF7894();
    v246 = v245;
    v326 = v237;
    v247 = v323;
    v323(v239, v236);
    v248 = sub_2186D1058(v244, v246, v327);

    *(v242 + 4) = v248;
    _os_log_impl(&dword_2186C1000, v240, v241, "Target view identified for placement: %s exiting loop", v242, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v243);
    MEMORY[0x21CECF960](v243, -1, -1);
    MEMORY[0x21CECF960](v242, -1, -1);

    v247(v298, v236);
  }

  else
  {

    v249 = v323;
    v323(v239, v236);
    v249(v298, v236);
  }

  (*v308)(v303, v312);
  v221 = v306;
LABEL_146:
  v314(v221, v324);
}

uint64_t sub_218811358()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218811390()
{
  v1 = sub_219BE3514();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_2188114A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21881150C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186EF8F4(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2188115CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_21874E2A0(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21881168C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2187A05D0(&qword_280EDF9E0, 255, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218811750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186CC3D4(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218811810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2187E1450(&qword_280EDF9E0, 255, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2188118F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_218811948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2188119AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218811A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218811A74(int a1)
{
  v51 = a1;
  v2 = sub_219BE38C4();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = MEMORY[0x277D31758];
  sub_21881214C(0, &unk_280EE65B0, &qword_280EE65C0, MEMORY[0x277D31758]);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v53 = &v41[-v7];
  v8 = sub_219BE3514();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2187DD4F0(0, &qword_280EE65C0, v4, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v52 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v41[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v41[-v18];
  v20 = *((*MEMORY[0x277D85000] & *v1) + 0x110);
  v50 = v1;
  v47 = v20;
  sub_218718690(v1 + v20, v57);
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v21 = *(v9 + 104);
  v45 = *MEMORY[0x277D314F8];
  v46 = v9 + 104;
  v44 = v21;
  v21(v11);
  sub_219BE3AC4();
  v22 = *(v9 + 8);
  v48 = v11;
  v49 = v8;
  v23 = v8;
  v24 = v54;
  v22(v11, v23);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v25 = v55;
  (*(v24 + 104))(v16, *MEMORY[0x277D31750], v55);
  v26 = v25;
  (*(v24 + 56))(v16, 0, 1, v25);
  v27 = *(v6 + 56);
  v56 = v19;
  v28 = v19;
  v29 = v53;
  sub_218812314(v28, v53, &qword_280EE65C0, v4);
  sub_218812314(v16, &v29[v27], &qword_280EE65C0, v4);
  v30 = *(v24 + 48);
  if (v30(v29, 1, v26) == 1)
  {
    sub_218817724(v16, &qword_280EE65C0, MEMORY[0x277D31758]);
    if (v30(&v29[v27], 1, v26) == 1)
    {
      sub_218817724(v29, &qword_280EE65C0, MEMORY[0x277D31758]);
LABEL_8:
      v35 = v50;
      sub_218718690(v50 + v47, v57);
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v37 = v48;
      v36 = v49;
      v44(v48, v45, v49);
      v38 = sub_219BE3A94();
      v22(v37, v36);
      __swift_destroy_boxed_opaque_existential_1(v57);
      v39 = (v35 + *((*MEMORY[0x277D85000] & *v35) + 0xE0));
      swift_beginAccess();
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      sub_218C5BBE4(v38, v51 & 1);

      return sub_218817724(v56, &qword_280EE65C0, MEMORY[0x277D31758]);
    }

    goto LABEL_6;
  }

  v31 = v52;
  sub_218812314(v29, v52, &qword_280EE65C0, MEMORY[0x277D31758]);
  if (v30(&v29[v27], 1, v26) == 1)
  {
    sub_218817724(v16, &qword_280EE65C0, MEMORY[0x277D31758]);
    (*(v24 + 8))(v31, v26);
LABEL_6:
    sub_218812394(v29, &unk_280EE65B0, &qword_280EE65C0, MEMORY[0x277D31758]);
    return sub_218817724(v56, &qword_280EE65C0, MEMORY[0x277D31758]);
  }

  v32 = v43;
  (*(v24 + 32))(v43, &v29[v27], v26);
  sub_2187E1408(&unk_280EE65E0, MEMORY[0x277D31758], MEMORY[0x277D31760]);
  v42 = sub_219BF53A4();
  v33 = *(v24 + 8);
  v33(v32, v26);
  v34 = MEMORY[0x277D31758];
  sub_218817724(v16, &qword_280EE65C0, MEMORY[0x277D31758]);
  v33(v31, v26);
  sub_218817724(v29, &qword_280EE65C0, v34);
  if (v42)
  {
    goto LABEL_8;
  }

  return sub_218817724(v56, &qword_280EE65C0, MEMORY[0x277D31758]);
}

void sub_21881214C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2187DD4F0(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2188121C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21881222C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218812294(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218802370(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218812314(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2187DD4F0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218812394(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21881214C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2188123F4(void *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v45 = a1;
  ObjectType = swift_getObjectType();
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v46 = *MEMORY[0x277D85000] & *v2;
  v6 = sub_219BEE644();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEFAD4();
  v9 = *(v8 - 8);
  v48 = v8;
  v49 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280ED2200, type metadata accessor for TodayPrewarmResult, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for TodayPrewarmResult(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *((v5 & v4) + 0xB0);
  swift_beginAccess();
  sub_218812314(v3 + v22, v17, &qword_280ED2200, type metadata accessor for TodayPrewarmResult);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_218817724(v17, &qword_280ED2200, type metadata accessor for TodayPrewarmResult);
  }

  sub_21880BBE4(v17, v21, type metadata accessor for TodayPrewarmResult);
  (*(v19 + 56))(v14, 1, 1, v18);
  swift_beginAccess();
  sub_219716240(v14, v3 + v22);
  swift_endAccess();
  v24 = v49;
  v25 = v48;
  (*(v49 + 16))(v11, v50, v48);
  v26 = (*(v24 + 88))(v11, v25);
  if (v26 == *MEMORY[0x277D328C8])
  {
    goto LABEL_8;
  }

  if (v26 != *MEMORY[0x277D328C0])
  {
    (*(v24 + 8))(v11, v25);
    goto LABEL_8;
  }

  if (sub_2196FB248(v21))
  {
LABEL_8:
    sub_219BDEC34();
    sub_219BDEB94();
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v30 = qword_280F616D8;
    sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_219C09BA0;
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_219BF7484();
    v32 = v51;
    v33 = v52;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = sub_2186FC3BC();
    *(v31 + 32) = v32;
    *(v31 + 40) = v33;
    v34 = sub_219BF6214();
    sub_219BE5314("Will apply a queued refresh update with behavior=%{public}@", 59, 2, &dword_2186C1000, v30, v34, v31);

    v35 = (*(*(v46 + 88) + 16))(v21, *(v46 + 80));
    v36 = CACurrentMediaTime();
    MEMORY[0x28223BE20](v37);
    *(&v41 - 2) = v3;
    *(&v41 - 1) = v35;
    sub_219BE95D4();
    sub_219BE3204();
    *(swift_allocObject() + 16) = v36;
    v38 = sub_219BE2E54();
    sub_219BE2F94();

    v39 = sub_219BE2E54();
    sub_219BE2FD4();

    sub_2187D9028();
    v40 = sub_219BF66A4();
    sub_219BE3034();

    return sub_21880BA68(v21, type metadata accessor for TodayPrewarmResult);
  }

  v28 = v42;
  v27 = v43;
  v29 = v44;
  (*(v43 + 104))(v42, *MEMORY[0x277D320A0], v44);
  sub_2196F9CBC(v45, v28);
  (*(v27 + 8))(v28, v29);
  return sub_21880BA68(v21, type metadata accessor for TodayPrewarmResult);
}

uint64_t sub_218812BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayExpandResult(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218812C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2187DD878(0, &qword_280EE32B8, MEMORY[0x277D2D6D8], MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2187DD878(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

id sub_218812DA4(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = a1;
  if (sub_219BED0C4())
  {
    v8.receiver = v3;
    v8.super_class = ObjectType;
    v4 = objc_msgSendSuper2(&v8, sel__hostingNavigationBar);
  }

  else
  {
    v5 = [v3 topViewController];
    if (!v5)
    {
      v5 = *&v3[qword_280EA07F0];
    }

    v6 = v5;
    v4 = [v5 _hostingNavigationBar];
  }

  return v4;
}

uint64_t sub_218812E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a3;
  v53 = a2;
  v6 = sub_219BE2864();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218802370(0, &qword_280EE4768, MEMORY[0x277D6E2A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v46 - v9;
  v10 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model;
  v11 = 0.0;
  if (!(*(v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model) >> 60))
  {
    v12 = *(v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_engagementBanner);
    if (v12)
    {
      v13 = v12;
      sub_219BE8DA4();
      Width = CGRectGetWidth(v57);
      sub_219BE8D24();
      sub_219BF6034();
      [v13 sizeThatFits_];
      v11 = v16;
    }
  }

  sub_219BE8DA4();
  v17 = CGRectGetWidth(v58);
  v18 = (v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_layoutAttributesFactory);
  v19 = *(v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_layoutAttributesFactory + 24);
  v20 = *(v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_layoutAttributesFactory + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_layoutAttributesFactory), v19);
  v21 = *(v3 + v10);
  v50 = v10;
  v22 = *(v20 + 8);

  v23 = v22(v21, a1, v19, v20, v11);

  sub_219BE8D24();
  sub_219BE8DA4();
  sub_219BE7F74();
  *v56 = v17;
  *&v56[1] = v23;
  v56[2] = v24;
  v56[3] = v25;
  v56[4] = v26;
  v56[5] = v27;
  v28 = v18[3];
  v29 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v28);
  v30 = v50;
  v31 = *(v3 + v50);
  v32 = *(v29 + 16);

  v32(v55, v31, v56, a1, v28, v29, v11);

  sub_218718690(*(v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_titleViewStyler) + OBJC_IVAR____TtC7NewsUI2P33_40459F828962B2D00232170432F6EDA023MastheadTitleViewStyler_renderer, v54);
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v33 = *(v3 + v30);

  v34 = sub_219BE8D04();
  v35 = v52;
  sub_21881AE74(v33, v55, *(v3 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadView), v53, v52);

  __swift_destroy_boxed_opaque_existential_1(v54);
  v36 = sub_219BE8DB4();
  v37 = *(v36 - 8);
  v38 = v51;
  (*(v37 + 16))(v51, a1, v36);
  (*(v37 + 56))(v38, 0, 1, v36);
  v39 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_lastLayoutOptions;
  swift_beginAccess();
  sub_21881C9F4(v38, v4 + v39);
  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadable + 8) = v35;
  swift_unknownObjectWeakAssign();
  if (*(*(v4 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_animationManager) + 16) == 1)
  {
    sub_21881CA88(&unk_282A24FD0);
    v40 = MEMORY[0x277D6CD38];
    sub_218802370(0, &qword_280E8C090, MEMORY[0x277D6CD38], MEMORY[0x277D84560]);
    v41 = v48;
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_219C09BA0;
    sub_219BE2844();
    v54[0] = v42;
    sub_2188031C8(&qword_280EE73C0, MEMORY[0x277D6CD38], MEMORY[0x277D6CD40]);
    sub_218802370(0, &unk_280E8F5C0, v40, MEMORY[0x277D83940]);
    sub_21881CB9C();
    v43 = v47;
    v44 = v49;
    sub_219BF7164();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_219BE1D14();

    (*(v41 + 8))(v43, v44);
  }

  else
  {
    sub_21882B6C4();
  }

  if ((sub_219BE8D14() & 1) == 0)
  {
    sub_21881CD40();
  }

  return sub_21881CFDC(v55);
}

uint64_t sub_2188134C0()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

void sub_2188134F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_21881354C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_2188135B0@<D0>(unint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v373 = a5;
  v378 = a1;
  v8 = sub_219BDCAF4();
  v326 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v325 = &v318 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FF18C(0);
  v328 = v10;
  MEMORY[0x28223BE20](v10);
  v329 = &v318 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = sub_219BEB084();
  v330 = *(v357 - 8);
  MEMORY[0x28223BE20](v357);
  v356 = (&v318 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21881354C(0, &qword_280EE4770, MEMORY[0x277D6E2A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  *&v369 = &v318 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  *&v377 = &v318 - v16;
  MEMORY[0x28223BE20](v17);
  *&v376 = &v318 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v318 - v20;
  v375 = a3;
  v22 = sub_219BE8D54();
  if ([v22 horizontalSizeClass] == 1)
  {

    v23 = 0;
  }

  else
  {
    v24 = [v22 verticalSizeClass];

    v23 = v24 != 1;
  }

  v25 = *a2;
  v26 = a2[1];
  v371 = sub_21881505C(v23, v378, *a2);
  v374 = sub_2188155F8(v23);
  v27 = 15.0;
  if (!v23)
  {
    if (sub_219BED0C4())
    {
      v27 = 14.0;
    }

    else
    {
      v27 = 11.0;
    }
  }

  [v371 descender];
  v29 = v28;
  v30 = sub_219BE8D54();
  v31 = [v30 verticalSizeClass];

  v32 = sub_219BE8D54();
  v33 = [v32 horizontalSizeClass];

  v327 = v8;
  if (v31 == 1)
  {
    if ((v33 - 1) <= 1)
    {
LABEL_11:
      sub_219BE8D44();
      Height = CGRectGetHeight(v390);
      goto LABEL_14;
    }
  }

  else if (v31 == 2 && v33 == 1)
  {
    goto LABEL_11;
  }

  sub_219BE8D64();
LABEL_14:
  v35 = Height;
  v36 = a2[3];
  v37 = a2[5];
  v370 = a2[2];
  v366 = v36;
  v362 = v37;
  sub_219BF6034();
  v39 = v38;
  v363 = v26;
  if (v373 > 0.0)
  {
    sub_219BE8CE4();
    v40 = sub_219BE8CD4();
    v41 = v23;
    v42 = *(*(v40 - 8) + 48);
    v43 = 0.0;
    if (v42(v21, 1, v40) == 1)
    {
      v44 = 10.0;
    }

    else
    {
      v44 = 0.0;
    }

    v45 = MEMORY[0x277D6E2A0];
    sub_218819BA8(v21, &qword_280EE4770, MEMORY[0x277D6E2A0]);
    v46 = *&v376;
    sub_219BE8CE4();
    v47 = v42(v46, 1, v40);
    v23 = v41;
    if (v47 != 1)
    {
      v43 = 24.0;
    }

    v48 = v35 + v44 + v373;
    sub_218819BA8(v46, &qword_280EE4770, v45);
    v26 = v363 - (v48 + v43);
  }

  v49 = v27 - v29;
  v50 = v25 - v39;
  __swift_project_boxed_opaque_existential_1((v358 + 16), *(v358 + 40));
  v51 = sub_219BE8D04();
  v52 = v378;
  v53 = sub_2188158D8(v378, v23, v51, v25);

  v54 = v52 >> 60;
  v55 = 3;
  if (((1 << (v52 >> 60)) & 0x73) == 0)
  {
    v56 = sub_219BE8D54();
    v57 = [v56 horizontalSizeClass];

    if (v57 == 1)
    {
      v55 = 2;
    }

    else
    {
      v55 = 3;
    }
  }

  [v53 boundingRectWithSize:v55 options:0 context:{v25 - v39, v26}];
  v59 = v58;
  v61 = v60;
  v62 = sub_219BED0C4();
  v364 = v25;
  v367 = v54;
  if (v62)
  {
    if (v23)
    {
      v63 = 2;
    }

    else
    {
      v63 = qword_219CD1248[v54];
    }

    [v53 boundingRectWithSize:v63 options:0 context:{v50, v26}];
    v61 = v67;
    v64 = v50;
  }

  else
  {
    v64 = ceil(v59);
    if (((1 << v54) & 0x73) == 0)
    {
      v65 = sub_219BE8D54();
      v66 = [v65 horizontalSizeClass];

      if (v66 == 1)
      {
        v64 = v50;
      }
    }
  }

  v68 = ceil(v61);
  v69 = *&v377;
  sub_219BE8CE4();
  v70 = sub_219BE8CD4();
  v71 = *(*(v70 - 8) + 48);
  if (v71(v69, 1, v70) == 1)
  {
    v72 = 10.0;
  }

  else
  {
    v72 = 0.0;
  }

  sub_218819BA8(v69, &qword_280EE4770, MEMORY[0x277D6E2A0]);
  v391.origin.y = v35 + v72;
  v391.origin.x = v366;
  v391.size.width = v50;
  v391.size.height = v373;
  v392 = CGRectIntegral(v391);
  x = v392.origin.x;
  width = v392.size.width;
  y = v392.origin.y;
  v359 = v392.size.height;
  [v374 firstLineHeadIndent];
  v75 = -v74;
  v76 = v364;
  if (((1 << v367) & 0x73) == 0)
  {
    v77 = sub_219BE8D14();
    v78 = 8.0;
    if (v75 > 8.0)
    {
      v78 = v75;
    }

    if (v77)
    {
      v75 = v78;
    }
  }

  [v371 descender];
  v393.origin.y = v26 - v68 - v49 - v79;
  v393.origin.x = v75;
  v393.size.width = v64;
  v393.size.height = v68;
  v394 = CGRectIntegral(v393);
  v80 = v394.origin.x;
  v372 = v394.origin.y;
  v376 = v394.size.height;
  v377 = v394.size.width;
  if (v373 == 0.0)
  {
    [v374 firstLineHeadIndent];
    v82 = -v81;
  }

  else
  {
    v395.origin.x = x;
    v395.size.width = width;
    v395.origin.y = y;
    v395.size.height = v359;
    MaxY = CGRectGetMaxY(v395);
    v84 = v53;
    v85 = v369;
    sub_219BE8CE4();
    if (v71(*&v85, 1, v70) == 1)
    {
      v86 = 0.0;
    }

    else
    {
      v86 = 24.0;
    }

    v87 = *&v85;
    v53 = v84;
    sub_218819BA8(v87, &qword_280EE4770, MEMORY[0x277D6E2A0]);
    v82 = MaxY + v86;
    v76 = v364;
  }

  v88 = v367;
  v89 = v366;
  sub_219BF6034();
  v396.size.width = v76 - v90;
  v396.origin.x = v89;
  v396.origin.y = v82;
  v396.size.height = v26;
  v397 = CGRectIntegral(v396);
  v373 = v397.origin.x;
  v369 = v397.size.width;
  v370 = v397.origin.y;
  v368 = v397.size.height;
  sub_218819C18(v378, &v379);
  v351 = x;
  v365 = v80;
  if (!v380)
  {
    v341 = 0.0;
    v342 = 0.0;
    v339 = 0.0;
    *&v340 = 0;
    v333 = 0.0;
    v334 = 0.0;
    v331 = 0.0;
    v332 = 0.0;
    v337 = 0.0;
    v338 = 0.0;
    v335 = 0.0;
    v336 = 0.0;
    v345 = 0.0;
    v346 = 0.0;
    v343 = 0.0;
    v344 = 0.0;
    v354 = 0.0;
    v355 = 0.0;
    v352 = 0.0;
    v353 = 0.0;
    v349 = 0.0;
    v350 = 0.0;
    v347 = 0.0;
    v348 = 0.0;
    goto LABEL_87;
  }

  v323 = v23;
  v385[0] = v379;
  v385[1] = v380;
  v386 = v381;
  v387 = v382;
  v388 = v383;
  v389 = v384;
  if (sub_219BED0C4())
  {
    v91 = sub_219B798F8(v385, v378);
    v93 = v92;
    v398.origin.x = v373;
    v398.size.width = v369;
    v398.origin.y = v370;
    v398.size.height = v368;
    v94 = CGRectGetWidth(v398);
    v399.origin.x = v80;
    v399.origin.y = v372;
    v399.size.height = v376;
    v399.size.width = v377;
    v95 = v94 - CGRectGetMinX(v399);
    [v374 firstLineHeadIndent];
    v97 = v95 - v96 - v91;
    sub_219BE8D94();
    v400.origin.y = v98;
    v400.origin.x = v97;
    v400.size.width = v91;
    v400.size.height = v93;
    v401 = CGRectIntegral(v400);
    v349 = v401.origin.y;
    v350 = v401.origin.x;
    v347 = v401.size.height;
    v348 = v401.size.width;
  }

  else
  {
    v349 = 0.0;
    v350 = 0.0;
    v347 = 0.0;
    v348 = 0.0;
  }

  v99 = *(&v387 + 1);
  v324 = v53;
  v342 = *(&v387 + 1);
  if (*(&v387 + 1))
  {
    v100 = *(&v387 + 1);
  }

  else
  {
    v99 = [objc_opt_self() whiteColor];
    v100 = 0;
  }

  v101 = *(&v388 + 1);
  v352 = *&v388;
  sub_21881354C(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  v341 = v102;
  inited = swift_initStackObject();
  v340 = xmmword_219C09EC0;
  *(inited + 16) = xmmword_219C09EC0;
  v104 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v339 = COERCE_DOUBLE(v100);
  v338 = COERCE_DOUBLE(v104);
  v105 = 14.0;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v106 = MEMORY[0x277D76968];
    if (v101)
    {
      v106 = MEMORY[0x277D76938];
    }

    v107 = *v106;
    v108 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];

    [v108 pointSize];
    v105 = v109;
  }

  v110 = COERCE_DOUBLE(objc_opt_self());
  v111 = *MEMORY[0x277D743F8];
  v336 = v110;
  v337 = v111;
  v112 = [*&v110 systemFontOfSize:v105 weight:?];
  *&v113 = COERCE_DOUBLE(sub_2186C6148(0, &qword_280E8DB00, 0x277D74300));
  *(inited + 40) = v112;
  v114 = *MEMORY[0x277D740C0];
  v335 = *&v113;
  *(inited + 64) = *&v113;
  *(inited + 72) = v114;
  v334 = COERCE_DOUBLE(sub_2186C6148(0, &qword_280E8DA80, 0x277D75348));
  *(inited + 104) = v334;
  *(inited + 80) = v99;
  v332 = COERCE_DOUBLE(v114);
  v115 = v99;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  v333 = v116;
  swift_arrayDestroy();
  v117 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v118 = sub_219BF53D4();
  type metadata accessor for Key(0);
  v120 = v119;
  *&v121 = COERCE_DOUBLE(sub_21899E604());
  v331 = v120;
  v321 = *&v121;
  v122 = sub_219BF5204();

  v123 = [v117 initWithString:v118 attributes:v122];

  v322 = v123;
  [v123 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v132 = 0;
  v88 = v367;
  if (v367 == 5)
  {
    sub_219BF5114();
    v132 = sub_219BF5074();
  }

  v133 = sub_218C8F610(v132, v101 != 0);

  v134 = v330;
  if (v133)
  {
    [v133 size];
    v355 = v135;

    v136 = (v134 + 104);
    if (v101)
    {
LABEL_64:
      v137 = MEMORY[0x277D6EC30];
      MEMORY[0x21CECCDE0]();
      goto LABEL_67;
    }
  }

  else
  {
    v355 = 0.0;
    v136 = (v330 + 104);
    if (v101)
    {
      goto LABEL_64;
    }
  }

  v137 = MEMORY[0x277D6EC38];
  v138 = MEMORY[0x21CECCDF0]();
LABEL_67:
  v143 = v356;
  v142 = v357;
  *v356 = v138;
  *(v143 + 1) = v139;
  *(v143 + 2) = v140;
  *(v143 + 3) = v141;
  (*v136)(v143, *v137, v142);
  sub_219BEB064();
  v145 = v144;
  v147 = v146;
  v402.origin.x = v125;
  v402.origin.y = v127;
  v402.size.width = v129;
  v402.size.height = v131;
  v354 = CGRectGetWidth(v402);
  sub_219BF6034();
  v353 = v148;
  v403.origin.x = v125;
  v403.origin.y = v127;
  v403.size.width = v129;
  v403.size.height = v131;
  v149 = CGRectGetHeight(v403);
  v319 = v145;
  v320 = v147;
  sub_219BF6064();
  v151 = v149 + v150;
  sub_219BEB074();
  if (v151 > v152)
  {
    v153 = v151;
  }

  else
  {
    v153 = v152;
  }

  v154 = v355 + v354 + v353;
  v318 = v153;
  if (v101)
  {
    v155 = v389;

    v156 = sub_218C8F3C8(*&v352, v101, v155);

    [v156 size];
    v346 = v157;
    v159 = v158;
    v404.origin.x = v373;
    v404.size.width = v369;
    v404.origin.y = v370;
    v404.size.height = v368;
    v160 = CGRectGetWidth(v404);
    v161 = v365;
    v405.origin.x = v365;
    v162 = v372;
    v405.origin.y = v372;
    v163 = v154;
    v165 = v376;
    v164 = v377;
    v405.size.width = v377;
    v405.size.height = v376;
    v166 = v160 - CGRectGetMinX(v405);
    v167 = v374;
    [v374 firstLineHeadIndent];
    v169 = v166 - v168 - v163;
    v406.origin.x = v161;
    v406.origin.y = v162;
    v406.size.width = v164;
    v406.size.height = v165;
    v170 = CGRectGetMidY(v406) + (v153 + v159 + 4.0) * -0.5;
    [v167 firstLineHeadIndent];
    v407.origin.y = v170 + v171;
    v407.origin.x = v169;
    v407.size.width = v163;
    v407.size.height = v153;
    v408 = CGRectIntegral(v407);
    v172 = v408.origin.x;
    v173 = v408.origin.y;
    v174 = v408.size.width;
    v175 = v408.size.height;
    MaxX = CGRectGetMaxX(v408);
    v177 = v346;
    v178 = MaxX - v346;
    v354 = v173;
    v355 = v172;
    v409.origin.x = v172;
    v409.origin.y = v173;
    v352 = v175;
    v353 = v174;
    v409.size.width = v174;
    v409.size.height = v175;
    v410.origin.y = CGRectGetMaxY(v409) + 4.0;
    v410.origin.x = v178;
    v410.size.width = v177;
    v410.size.height = v159;
    v411 = CGRectIntegral(v410);
    v345 = v411.origin.y;
    v346 = v411.origin.x;
    v343 = v411.size.height;
    v344 = v411.size.width;

    if (v88 > 3)
    {
      goto LABEL_72;
    }

LABEL_76:
    v80 = v365;
LABEL_77:
    v53 = v324;
    (*(v134 + 8))(v356, v357);

    sub_21881ABBC(&v379, sub_2187FF3EC);
    v341 = 0.0;
    v342 = 0.0;
    v339 = 0.0;
    *&v340 = 0;
    v333 = 0.0;
    v334 = 0.0;
    v331 = 0.0;
    v332 = 0.0;
    v337 = 0.0;
    v338 = 0.0;
    v335 = 0.0;
    v336 = 0.0;
    LOBYTE(v23) = v323;
    goto LABEL_87;
  }

  v412.origin.x = v373;
  v412.size.width = v369;
  v412.origin.y = v370;
  v412.size.height = v368;
  v179 = CGRectGetWidth(v412);
  v180 = v365;
  v413.origin.x = v365;
  v181 = v372;
  v413.origin.y = v372;
  v183 = v376;
  v182 = v377;
  v413.size.width = v377;
  v413.size.height = v376;
  v184 = v179 - CGRectGetMinX(v413);
  v185 = v374;
  [v374 firstLineHeadIndent];
  v187 = v184 - v186 - v154;
  v414.origin.x = v180;
  v414.origin.y = v181;
  v414.size.width = v182;
  v414.size.height = v183;
  v188 = CGRectGetMidY(v414) + v153 * -0.5;
  [v185 firstLineHeadIndent];
  v415.origin.y = v188 + v189;
  v415.origin.x = v187;
  v415.size.width = v154;
  v415.size.height = v153;
  v416 = CGRectIntegral(v415);
  v354 = v416.origin.y;
  v355 = v416.origin.x;
  v352 = v416.size.height;
  v353 = v416.size.width;
  v345 = 0.0;
  v346 = 0.0;
  v343 = 0.0;
  v344 = 0.0;
  if (v88 <= 3)
  {
    goto LABEL_76;
  }

LABEL_72:
  v80 = v365;
  if (v88 > 5)
  {
    if (v88 != 6)
    {
      goto LABEL_77;
    }

    goto LABEL_79;
  }

  if (v88 == 4)
  {
LABEL_79:
    (*(v134 + 8))(v356, v357);

    sub_21881ABBC(&v379, sub_2187FF3EC);
    v341 = 0.0;
    v342 = 0.0;
    v339 = 0.0;
    *&v340 = 0;
    v333 = 0.0;
    v334 = 0.0;
    v331 = 0.0;
    v332 = 0.0;
    v337 = 0.0;
    v338 = 0.0;
    v335 = 0.0;
    v336 = 0.0;
    LOBYTE(v23) = v323;
    v53 = v324;
    goto LABEL_87;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v191 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v192 = v339;
  v193 = v339;
  if (v342 == 0.0)
  {
    v193 = COERCE_DOUBLE([objc_opt_self() whiteColor]);
  }

  v194 = swift_initStackObject();
  *(v194 + 16) = v340;
  v195 = v338;
  *(v194 + 32) = v338;
  v196 = *&v192;
  v197 = *&v195;
  v198 = 14.0;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v199 = MEMORY[0x277D76938];
    if (!v101)
    {
      v199 = MEMORY[0x277D76968];
    }

    v200 = *v199;
    v201 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];

    [v201 pointSize];
    v198 = v202;
  }

  *(v194 + 40) = [*&v336 systemFontOfSize:v198 weight:{v337, *&v318}];
  v203 = v334;
  v204 = v332;
  *(v194 + 64) = v335;
  *(v194 + 72) = v204;
  *(v194 + 104) = v203;
  *(v194 + 80) = v193;
  v205 = *&v204;
  v206 = *&v193;
  sub_2188195F4(v194);
  swift_setDeallocating();
  swift_arrayDestroy();
  v207 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v208 = sub_219BF53D4();

  v209 = sub_219BF5204();

  v210 = [v207 initWithString:v208 attributes:v209];

  [v210 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
  v331 = v417.origin.x;
  v332 = v417.origin.y;
  v333 = v417.size.height;
  v334 = v417.size.width;
  v211 = v319;
  v212 = CGRectGetWidth(v417);
  v213 = v320;
  v214 = v320 + v211 + 15.0 + 5.0 + v212;
  v215 = v354;
  v216 = v355;
  v418.origin.x = v355;
  v418.origin.y = v354;
  v218 = v352;
  v217 = v353;
  v418.size.width = v353;
  v418.size.height = v352;
  v219 = CGRectGetMaxX(v418) - v214;
  v419.origin.x = v216;
  v419.origin.y = v215;
  v419.size.width = v217;
  v419.size.height = v218;
  v420.origin.y = CGRectGetMinY(v419);
  v420.origin.x = v219;
  v420.size.width = v214;
  v420.size.height = v318;
  v421 = CGRectIntegral(v420);
  v220 = v421.origin.x;
  v221 = v421.origin.y;
  v222 = v421.size.width;
  v223 = v421.size.height;
  v224 = v211 + CGRectGetMinX(v421);
  v422.origin.x = v220;
  v422.origin.y = v221;
  v422.size.width = v222;
  v422.size.height = v223;
  v423.origin.y = CGRectGetMidY(v422) + -6.0;
  v423.size.width = 15.0;
  v423.size.height = 12.0;
  v423.origin.x = v224;
  v424 = CGRectIntegral(v423);
  v337 = v424.origin.y;
  v338 = v424.origin.x;
  v335 = v424.size.height;
  v336 = v424.size.width;
  v424.origin.x = v220;
  v424.origin.y = v221;
  v424.size.width = v222;
  v424.size.height = v223;
  v342 = CGRectGetMaxX(v424) - v213;
  v226 = v331;
  v225 = v332;
  v425.origin.x = v331;
  v425.origin.y = v332;
  v227 = v333;
  v228 = v334;
  v425.size.width = v334;
  v425.size.height = v333;
  v321 = v342 - CGRectGetWidth(v425);
  v341 = v221;
  v342 = v220;
  v426.origin.x = v220;
  v426.origin.y = v221;
  v339 = v223;
  *&v340 = v222;
  v426.size.width = v222;
  v426.size.height = v223;
  MidY = CGRectGetMidY(v426);
  v427.origin.x = v226;
  v427.origin.y = v225;
  v427.size.width = v228;
  v427.size.height = v227;
  v230 = MidY + CGRectGetHeight(v427) * -0.5;
  v428.origin.x = v226;
  v231 = v226;
  v428.origin.y = v225;
  v428.size.width = v228;
  v428.size.height = v227;
  v232 = CGRectGetWidth(v428);
  v429.origin.x = v231;
  v429.origin.y = v225;
  v429.size.width = v228;
  v429.size.height = v227;
  v430.size.height = CGRectGetHeight(v429);
  v430.origin.x = v321;
  v430.origin.y = v230;
  v430.size.width = v232;
  v431 = CGRectIntegral(v430);
  v333 = v431.origin.y;
  v334 = v431.origin.x;
  v331 = v431.size.height;
  v332 = v431.size.width;

  sub_21881ABBC(&v379, sub_2187FF3EC);
  (*(v330 + 8))(v356, v357);
  LOBYTE(v23) = v323;
  v53 = v324;
  v88 = v367;
  v80 = v365;
LABEL_87:
  v233 = v378;
  v234 = v372;
  sub_219B79250(v378, v80, v372, v377, v376, v373, v370, v369, v368);
  v375 = v235;
  v367 = v236;
  v356 = v238;
  v357 = v237;
  sub_21881A660(v233);
  v240 = v239;
  v242 = v241;
  v244 = v243;
  v246 = v245;
  sub_219BE8DA4();
  v247 = CGRectGetWidth(v432);
  sub_219BE8D24();
  sub_219BF6034();
  v249 = v247 - v248;
  v433.origin.x = v240;
  v433.origin.y = v242;
  v433.size.width = v244;
  v433.size.height = v246;
  v250 = v249 - CGRectGetWidth(v433);
  v434.origin.x = v80;
  v434.origin.y = v234;
  v434.size.height = v376;
  v434.size.width = v377;
  v251 = CGRectGetMidY(v434);
  v435.origin.x = v240;
  v435.origin.y = v242;
  v435.size.width = v244;
  v435.size.height = v246;
  v252 = v251 + CGRectGetHeight(v435) * -0.5;
  v436.origin.x = v240;
  v436.origin.y = v242;
  v436.size.width = v244;
  v436.size.height = v246;
  v253 = CGRectGetWidth(v436);
  v437.origin.x = v240;
  v437.origin.y = v242;
  v437.size.width = v244;
  v437.size.height = v246;
  v438.size.height = CGRectGetHeight(v437);
  v438.origin.x = v250;
  v438.origin.y = v252;
  v438.size.width = v253;
  v439 = CGRectIntegral(v438);
  v254 = v439.origin.x;
  v255 = v439.origin.y;
  v256 = v439.size.width;
  v257 = v439.size.height;
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (!v88)
    {
      v275 = swift_projectBox();
      v276 = v329;
      sub_219B799FC(v275, v329, sub_2187FF18C);

      v277 = *(v328 + 48);
      sub_21881ABBC(v276 + *(v328 + 64), type metadata accessor for MastheadModelSupplementaryInfo);
      sub_21881ABBC(v276 + v277, type metadata accessor for MastheadModelContext);
      if (([*(v358 + 56) useFeedDifferentiationMode] & 1) == 0)
      {
        v272 = v364;
        v274 = v364 - v366 - v362;

        v310 = objc_opt_self();
        sub_219BF0CD4();
        v312 = v325;
        v311 = v326;
        v313 = v327;
        (*(v326 + 104))(v325, *MEMORY[0x277D6D198], v327);
        sub_219BF0CC4();
        v315 = v314;
        (*(v311 + 8))(v312, v313);
        v316 = [v310 systemFontOfSize:v315 weight:*MEMORY[0x277D74410]];
        [v316 lineHeight];
        v269 = v317;

        v273 = v366;
        v271 = v363;
        goto LABEL_94;
      }
    }

    goto LABEL_93;
  }

  if (v88)
  {
LABEL_93:

    v273 = 0.0;
    v271 = 0.0;
    v274 = 0.0;
    v269 = 0.0;
    v272 = v364;
    goto LABEL_94;
  }

  v258 = swift_projectBox();
  v259 = v329;
  sub_219B799FC(v258, v329, sub_2187FF18C);

  v260 = *(v328 + 48);
  sub_21881ABBC(v259 + *(v328 + 64), type metadata accessor for MastheadModelSupplementaryInfo);
  sub_21881ABBC(v259 + v260, type metadata accessor for MastheadModelContext);
  if (v23)
  {

    v261 = objc_opt_self();
    sub_219BF0CD4();
    v263 = v325;
    v262 = v326;
    v264 = v327;
    (*(v326 + 104))(v325, *MEMORY[0x277D6D198], v327);
    sub_219BF0CC4();
    v266 = v265;
    (*(v262 + 8))(v263, v264);
    v267 = [v261 systemFontOfSize:v266 weight:*MEMORY[0x277D74410]];
    [v267 lineHeight];
    v269 = v268;

    v440.origin.x = v365;
    v440.origin.y = v372;
    v440.size.height = v376;
    v440.size.width = v377;
    MinY = CGRectGetMinY(v440);

    v271 = MinY - v269 + -2.0;
    v272 = v364;
    v273 = v366;
    v274 = v364 - v366 - v362;
  }

  else
  {
    sub_219BE8D94();
    v271 = v301;
    v272 = v364;
    v274 = v364 - v366 - v362;

    v302 = objc_opt_self();
    sub_219BF0CD4();
    v304 = v325;
    v303 = v326;
    v305 = v327;
    (*(v326 + 104))(v325, *MEMORY[0x277D6D198], v327);
    sub_219BF0CC4();
    v307 = v306;
    (*(v303 + 8))(v304, v305);
    v308 = [v302 systemFontOfSize:v307 weight:*MEMORY[0x277D74410]];
    [v308 lineHeight];
    v269 = v309;

    v273 = v366;
  }

LABEL_94:
  v278 = v363;
  *(a4 + 8) = v272;
  *(a4 + 16) = v278;
  v280 = width;
  v279 = y;
  *(a4 + 24) = v351;
  *(a4 + 32) = v279;
  v281 = v359;
  *(a4 + 40) = v280;
  *(a4 + 48) = v281;
  v282 = v372;
  *(a4 + 56) = v365;
  *(a4 + 64) = v282;
  v283 = v376;
  *(a4 + 72) = v377;
  *(a4 + 80) = v283;
  v284 = v349;
  *(a4 + 96) = v350;
  *(a4 + 104) = v284;
  v285 = v347;
  *(a4 + 112) = v348;
  *(a4 + 120) = v285;
  v286 = v354;
  *(a4 + 128) = v355;
  *(a4 + 136) = v286;
  v287 = v352;
  *(a4 + 144) = v353;
  *(a4 + 152) = v287;
  *a4 = v23;
  *(a4 + 88) = v53;
  v288 = v345;
  *(a4 + 160) = v346;
  *(a4 + 168) = v288;
  v289 = v343;
  *(a4 + 176) = v344;
  *(a4 + 184) = v289;
  v290 = v337;
  *(a4 + 192) = v338;
  *(a4 + 200) = v290;
  v291 = v335;
  *(a4 + 208) = v336;
  *(a4 + 216) = v291;
  v292 = v333;
  *(a4 + 224) = v334;
  *(a4 + 232) = v292;
  v293 = v331;
  *(a4 + 240) = v332;
  *(a4 + 248) = v293;
  v294 = v341;
  *(a4 + 256) = v342;
  *(a4 + 264) = v294;
  v295 = v339;
  *(a4 + 272) = v340;
  *(a4 + 280) = v295;
  v297 = v369;
  v296 = v370;
  *(a4 + 288) = v373;
  *(a4 + 296) = v296;
  v298 = v368;
  *(a4 + 304) = v297;
  *(a4 + 312) = v298;
  *(a4 + 320) = v273;
  *(a4 + 328) = v271;
  *(a4 + 336) = v274;
  *(a4 + 344) = v269;
  v299 = v367;
  *(a4 + 352) = v375;
  *(a4 + 360) = v299;
  result = *&v356;
  *(a4 + 368) = v357;
  *(a4 + 376) = result;
  *(a4 + 384) = v254;
  *(a4 + 392) = v255;
  *(a4 + 400) = v256;
  *(a4 + 408) = v257;
  return result;
}

id sub_21881505C(char a1, unint64_t a2, double a3)
{
  v6 = sub_219BDCAF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_219BED0C4())
  {
    if ((a1 & 1) == 0 && ((1 << (a2 >> 60)) & 0x73) != 0 || a3 > 320.0)
    {
      goto LABEL_5;
    }

    v15 = objc_opt_self();
    sub_219BF0CD4();
    (*(v7 + 104))(v9, *MEMORY[0x277D6D198], v6);
    sub_219BF0CC4();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v18 = [v15 systemFontOfSize:v17 weight:*MEMORY[0x277D74410]];
  }

  else
  {
    if (a2 >> 61 != 1 || (v14 = (v7 + 8), (a1 & 1) != 0))
    {
LABEL_5:
      v10 = objc_opt_self();
      sub_219BF0CD4();
      (*(v7 + 104))(v9, *MEMORY[0x277D6D198], v6);
      sub_219BF0CC4();
      v12 = v11;
      (*(v7 + 8))(v9, v6);
      v13 = [v10 systemFontOfSize:v12 weight:*MEMORY[0x277D743F8]];
LABEL_14:
      v22 = v13;
      v23 = sub_219BF6BE4();

      return v23;
    }

    v19 = objc_opt_self();
    sub_219BF0CD4();
    (*(v7 + 104))(v9, *MEMORY[0x277D6D198], v6);
    if (a3 > 320.0)
    {
      sub_219BF0CC4();
      v21 = v20;
      (*v14)(v9, v6);
      v13 = [v19 systemFontOfSize:v21 weight:*MEMORY[0x277D743F8]];
      goto LABEL_14;
    }

    sub_219BF0CC4();
    v26 = v25;
    (*v14)(v9, v6);
    v18 = [v19 systemFontOfSize:v26 weight:*MEMORY[0x277D74410]];
  }

  return v18;
}

id sub_2188155F8(char a1)
{
  v2 = sub_219BDCAF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v6 setLineBreakMode_];
  v7 = (v3 + 8);
  if (sub_219BED0C4())
  {
    sub_219BF0CD4();
    v8 = *MEMORY[0x277D6D198];
    v9 = *(v3 + 104);
    v9(v5, v8, v2);
    sub_219BF0CC4();
    v11 = v10;
    v12 = *(v3 + 8);
    v12(v5, v2);
    [v6 setMinimumLineHeight_];
    v9(v5, v8, v2);
    sub_219BF0CC4();
    v14 = v13;
    v12(v5, v2);
  }

  else
  {
    sub_219BF0CD4();
    v15 = *MEMORY[0x277D6D198];
    v16 = *(v3 + 104);
    v16(v5, v15, v2);
    sub_219BF0CC4();
    if (a1)
    {
      v18 = v17;
      v19 = *v7;
      (*v7)(v5, v2);
      [v6 setMinimumLineHeight_];
    }

    else
    {
      v20 = v17;
      v19 = *v7;
      (*v7)(v5, v2);
      [v6 setMinimumLineHeight_];
    }

    v16(v5, v15, v2);
    sub_219BF0CC4();
    v14 = v21;
    v19(v5, v2);
  }

  [v6 setMaximumLineHeight_];
  return v6;
}

char *sub_2188158D8(unint64_t a1, char a2, uint64_t a3, double a4)
{
  v148 = sub_219BE7C34();
  v151 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v9 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for MastheadModelContext(0);
  MEMORY[0x28223BE20](v146);
  v11 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_218C8F1D4(a2 & 1);
  v150 = sub_218C8F1D4(a2 & 1);
  v130 = sub_218C8F1D4(a2 & 1);
  v128 = sub_21881505C(a2 & 1, a1, a4);
  v129 = sub_2188155F8(a2 & 1);
  if (qword_280EE9338 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();

    sub_219BDC8A4();
  }

  v147 = sub_219BF53D4();

  sub_218816B8C();
  v140 = sub_219BF53D4();

  sub_218816CD4(a1);
  v138 = sub_219BF53D4();

  v142 = sub_219BF53D4();
  sub_218817108(a1);
  if (v12)
  {
    v13 = sub_219BF53D4();
  }

  else
  {
    v13 = 0;
  }

  v137 = v13;
  v14 = sub_2188178C4(a1, a2 & 1, 11501794, 0xA300000000000000, v13);
  sub_218817E30(a1, a4);
  v15 = sub_219BF53D4();

  v16 = sub_2186C6148(0, &unk_280E8D9E0, 0x277CCACA8);
  v17 = sub_219BF6DF4("%@%@", 4, 2);
  sub_218818EFC(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C09EC0;
  *(v18 + 56) = v16;
  v19 = sub_218819018();
  *(v18 + 32) = v14;
  *(v18 + 96) = v16;
  *(v18 + 104) = v19;
  *(v18 + 64) = v19;
  *(v18 + 72) = v15;
  v127 = v14;
  v126 = v15;
  v20 = sub_219BF6E04();

  v21 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v125 = v20;
  v22 = [v21 initWithString_];
  v23 = a1 >> 60;
  if (a1 >> 60)
  {
    v141 = 0;
  }

  else
  {
    sub_2187FF18C(0);
    v25 = v24;
    v26 = swift_projectBox();
    sub_218819080(v26 + *(v25 + 48), v11);
    v141 = v11[*(v146 + 32)];
    sub_2188190E4(v11, type metadata accessor for MastheadModelContext);
  }

  v27 = v149;
  v28 = sub_218819204(a3, v149);
  sub_219BE8334();
  v29 = v148;
  v30 = (*(v151 + 88))(v9, v148);
  v31 = *MEMORY[0x277D6DCD8];
  v152 = v22;
  if (v30 == v31)
  {
    if (v23 == 5)
    {
      v32 = *(*__swift_project_boxed_opaque_existential_1((v27 + 16), *(v27 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 176);
    }

    else
    {
      v32 = sub_2188193BC();
    }

    v35 = v32;
  }

  else
  {
    v33 = v30;
    v34 = *MEMORY[0x277D6DCD0];
    v35 = sub_2188193BC();
    if (v33 != v34)
    {
      (*(v151 + 8))(v9, v29);
    }
  }

  sub_218818EFC(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  v37 = v36;
  inited = swift_initStackObject();
  v145 = xmmword_219C0B8C0;
  *(inited + 16) = xmmword_219C0B8C0;
  v39 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v135 = v35;
  v136 = v28;
  if (v141)
  {
    v28 = v35;
  }

  v40 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  v146 = v40;
  *(inited + 40) = v28;
  v41 = *MEMORY[0x277D740A8];
  *(inited + 64) = v40;
  *(inited + 72) = v41;
  v42 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v151 = v42;
  v43 = v150;
  *(inited + 80) = v150;
  v44 = *MEMORY[0x277D740D0];
  *(inited + 104) = v42;
  *(inited + 112) = v44;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0xBFD3333333333333;
  v45 = v41;
  v46 = v39;
  v47 = v44;
  v143 = v45;
  v132 = v46;
  v133 = v47;
  v131 = v28;
  v134 = v43;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  v150 = v48;
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  v144 = v49;
  v149 = sub_218819A74(&qword_280E8E118, type metadata accessor for Key, &unk_219C09A8C);
  v50 = sub_219BF5204();

  v51 = v147;
  v52 = [v147 length];
  v53 = v152;
  [v152 addAttributes:v50 range:{0, v52}];

  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_219C09BA0;
  *(v54 + 32) = v143;
  v55 = v151;
  *(v54 + 64) = v151;
  v56 = v139;
  *(v54 + 40) = v139;
  v57 = v56;
  sub_2188195F4(v54);
  swift_setDeallocating();
  sub_2188190E4(v54 + 32, sub_218819588);
  v58 = sub_219BF5204();

  v59 = [v51 length];
  v60 = v142;
  [v53 addAttributes:v58 range:{v59, objc_msgSend(v142, sel_length)}];

  v148 = v37;
  v61 = swift_initStackObject();
  *(v61 + 16) = v145;
  v62 = v131;
  v63 = v132;
  *(v61 + 32) = v132;
  *(v61 + 40) = v62;
  v64 = v143;
  *(v61 + 64) = v146;
  *(v61 + 72) = v64;
  *(v61 + 80) = v57;
  *(v61 + 104) = v55;
  v65 = v133;
  *(v61 + 112) = v133;
  *(v61 + 144) = MEMORY[0x277D839F8];
  *(v61 + 120) = 0xBFD3333333333333;
  v139 = v64;
  v66 = v63;
  v143 = v65;
  v133 = v57;
  v67 = v62;
  sub_2188195F4(v61);
  swift_setDeallocating();
  swift_arrayDestroy();
  v68 = sub_219BF5204();

  v69 = [v51 length];
  result = [v60 length];
  v71 = &result[v69];
  if (__OFADD__(v69, result))
  {
    __break(1u);
    goto LABEL_30;
  }

  v72 = v140;
  v73 = [v140 length];
  [v152 addAttributes:v68 range:{v71, v73}];

  v74 = swift_initStackObject();
  *(v74 + 16) = v145;
  v132 = v66;
  *(v74 + 32) = v66;
  *(v74 + 40) = v67;
  v75 = v139;
  *(v74 + 64) = v146;
  *(v74 + 72) = v75;
  v76 = v130;
  *(v74 + 80) = v130;
  v77 = v143;
  *(v74 + 104) = v151;
  *(v74 + 112) = v77;
  *(v74 + 144) = MEMORY[0x277D839F8];
  *(v74 + 120) = 0xBFD3333333333333;
  v78 = v67;
  v131 = v76;
  sub_2188195F4(v74);
  swift_setDeallocating();
  swift_arrayDestroy();
  v79 = sub_219BF5204();

  v80 = [v147 length];
  result = [v60 length];
  v81 = __OFADD__(v80, result);
  v82 = &result[v80];
  if (v81)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  result = [v72 length];
  v83 = &result[v82];
  if (__OFADD__(v82, result))
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v84 = v78;
  v85 = [v138 length];
  [v152 addAttributes:v79 range:{v83, v85}];

  v86 = v137;
  v87 = v146;
  v88 = v151;
  v89 = v139;
  v90 = v132;
  if (v137)
  {
    v91 = swift_initStackObject();
    *(v91 + 16) = v145;
    *(v91 + 32) = v90;
    v92 = v87;
    v93 = v84;
    *(v91 + 40) = v84;
    *(v91 + 64) = v92;
    *(v91 + 72) = v89;
    v94 = v134;
    *(v91 + 80) = v134;
    v95 = v143;
    *(v91 + 104) = v151;
    *(v91 + 112) = v95;
    *(v91 + 144) = MEMORY[0x277D839F8];
    *(v91 + 120) = 0xBFD3333333333333;
    v96 = v89;
    v97 = v90;
    v98 = v95;
    v99 = v94;
    v100 = v86;
    v101 = v93;
    v87 = v92;
    v102 = v152;
    sub_2188195F4(v91);
    swift_setDeallocating();
    swift_arrayDestroy();
    v103 = sub_219BF5204();

    [v102 addAttributes:v103 range:{0, objc_msgSend(v100, sel_length)}];

    v88 = v151;
  }

  v104 = swift_initStackObject();
  v105 = v104;
  *(v104 + 16) = xmmword_219C0EE20;
  *(v104 + 32) = v90;
  if (v141)
  {
    v106 = v136;
  }

  else
  {
    v106 = v135;
  }

  *(v104 + 40) = v106;
  *(v104 + 64) = v87;
  *(v104 + 72) = v89;
  v107 = v89;
  v108 = v128;
  *(v104 + 80) = v128;
  v109 = v143;
  *(v104 + 104) = v88;
  *(v104 + 112) = v109;
  *(v104 + 120) = 0xBFD3333333333333;
  v110 = *MEMORY[0x277D74118];
  *(v104 + 144) = MEMORY[0x277D839F8];
  *(v104 + 152) = v110;
  *(v104 + 184) = sub_2186C6148(0, &unk_280E8E510, 0x277D74248);
  v111 = v129;
  *(v105 + 160) = v129;
  v112 = v107;
  v113 = v90;
  v114 = v109;
  v115 = v106;
  v116 = v108;
  v117 = v110;
  v118 = v111;
  sub_2188195F4(v105);
  swift_setDeallocating();
  swift_arrayDestroy();
  v119 = sub_219BF5204();

  v120 = v127;
  v121 = [v127 length];
  v122 = v126;
  v123 = [v126 length];
  v124 = v152;
  [v152 addAttributes:v119 range:{v121, v123}];

  return v124;
}

uint64_t sub_218816624()
{
  v0 = sub_219BDC934();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v3, *MEMORY[0x277D6D098], v1);
  type metadata accessor for Settings.Options.Masthead.Overrides(0);
  swift_allocObject();
  result = Settings.Options.Masthead.Overrides.init(key:defaultValue:access:)(0, 0, 0, v3);
  qword_280EE9340 = result;
  return result;
}

uint64_t type metadata accessor for Settings.Options.Masthead.Overrides(uint64_t a1)
{
  result = qword_280EE9370;
  if (!qword_280EE9370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Settings.Options.Masthead.Overrides.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v36 = a4;
  v37 = a1;
  v39 = a3;
  v38 = a2;
  v6 = sub_219BDC944();
  v32 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDC934();
  v11 = *(v10 - 8);
  v34 = v10;
  v35 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_280EE9388;
  v31 = "SearchHomeCoordinating";
  v16 = *MEMORY[0x277D6D098];
  v40 = *(v11 + 104);
  v40(v14, v16, v12);
  v17 = *MEMORY[0x277D6D0A8];
  v33 = *(v7 + 104);
  v41 = v7 + 104;
  v30 = v17;
  v33(v9, v17, v6);
  v42 = 12559343;
  v43 = 0xA300000000000000;
  sub_2186C6588(0, &qword_280EE9088, MEMORY[0x277D837D0], MEMORY[0x277D6D0D8]);
  swift_allocObject();
  v18 = v9;
  *(v5 + v15) = sub_219BDC9F4();
  v31 = qword_280EE9380;
  v28 = "thead.overrides.logo";
  v29 = v5;
  v19 = v34;
  (v40)(v14, v16, v34);
  v20 = v9;
  v21 = v17;
  v23 = v32;
  v22 = v33;
  v33(v20, v21, v32);
  v42 = 1937204558;
  v43 = 0xE400000000000000;
  swift_allocObject();
  *&v31[v5] = sub_219BDC9F4();
  v31 = qword_280EE9390;
  (v40)(v14, v16, v19);
  v22(v18, v30, v23);
  v42 = 0x20797261756E614ALL;
  v43 = 0xE900000000000031;
  swift_allocObject();
  *&v31[v29] = sub_219BDC9F4();
  v25 = v35;
  v24 = v36;
  (*(v35 + 16))(v14, v36, v19);
  v26 = sub_219BDC824();
  (*(v25 + 8))(v24, v19);
  return v26;
}

uint64_t sub_218816B8C()
{
  if (qword_280EE9338 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();

    sub_219BDC8A4();

    return v4;
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_219BDB5E4();

    return v3;
  }
}

uint64_t sub_218816CD4(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) > 8)
  {
    goto LABEL_11;
  }

  if (((1 << v1) & 0x1BC) == 0)
  {
    if (v1 == 1)
    {
      sub_218A6E454(0);
      swift_projectBox();

      if (sub_218816F54())
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (v1 == 6)
    {

      if (sub_218816F54())
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

LABEL_11:
    sub_2187FF18C(0);
    swift_projectBox();

    if (sub_218816F54())
    {
LABEL_12:
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      v4 = sub_219BDB5E4();

      return v4;
    }

LABEL_13:

    return 0;
  }

  type metadata accessor for Localized();
  v2 = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();

  return v4;
}

BOOL sub_218816F54()
{
  v1 = [*(v0 + 24) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_9;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_17;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -37;
    return ((v6 ^ v3) & 1) == 0;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 37;
  return ((v6 ^ v3) & 1) == 0;
}

uint64_t sub_218817108(unint64_t a1)
{
  v2 = type metadata accessor for MastheadModelContext(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (!(a1 >> 60))
  {
    sub_2187FF18C(0);
    v7 = v6;
    v8 = swift_projectBox();
    sub_2188121C4(v8 + *(v7 + 48), v4, type metadata accessor for MastheadModelContext);
    if (v4[*(v2 + 32)] == 1)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass_];
      v11 = sub_219BDB5E4();

      sub_2188172B8(v4, type metadata accessor for MastheadModelContext);
      return v11;
    }

    else
    {
      sub_2188172B8(v4, type metadata accessor for MastheadModelContext);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2188172B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218817318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218C68F54(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218817388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188173E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218D82880(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218817458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188174B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218802370(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218817528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218FFD0CC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218817598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219248A04(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2188175F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219327964(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218817664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188176C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218817724(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2187DD4F0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218817794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188177F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219A5BF58(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218817864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188178C4(unint64_t a1, char a2, uint64_t a3, unint64_t a4, void *a5)
{
  if ((sub_219BED0C4() & 1) == 0)
  {
    v15 = 1 << (a1 >> 60);
    if ((v15 & 0x71) != 0)
    {
      if (a5)
      {
LABEL_13:
        v13 = a5;
        v16 = [v13 description];
        sub_219BF5414();

        v17 = 10;
LABEL_20:
        MEMORY[0x21CECC330](v17, 0xE100000000000000);
        goto LABEL_21;
      }
    }

    else if ((v15 & 0x18C) != 0)
    {
      if ((a2 & 1) == 0)
      {
        if (a5)
        {
          v13 = a5;
          v20 = [v13 description];
          sub_219BF5414();

          v17 = 32;
          goto LABEL_20;
        }

        if (qword_280EE9338 != -1)
        {
          swift_once();
        }

        if (sub_219BDC834())
        {
          sub_219BDC8D4();
          sub_219BDC8B4();

          sub_219BDC8A4();

          v30 = v35;
          v31 = v36;
        }

        else
        {
          v30 = 12559343;
          v31 = 0xA300000000000000;
        }

        MEMORY[0x21CECC330](v30, v31);

        MEMORY[0x21CECC330](a3, a4);
        v32 = sub_218816B8C();
        MEMORY[0x21CECC330](v32);

        v33 = sub_218816CD4(a1);
        MEMORY[0x21CECC330](v33);

        v29 = 32;
LABEL_37:
        MEMORY[0x21CECC330](v29, 0xE100000000000000);
        goto LABEL_38;
      }

      if (a5)
      {
        goto LABEL_13;
      }
    }

    else if (a5)
    {
      goto LABEL_13;
    }

    if (qword_280EE9338 != -1)
    {
      swift_once();
    }

    if (sub_219BDC834())
    {
      sub_219BDC8D4();
      sub_219BDC8B4();

      sub_219BDC8A4();

      v25 = v35;
      v26 = v36;
    }

    else
    {
      v25 = 12559343;
      v26 = 0xA300000000000000;
    }

    MEMORY[0x21CECC330](v25, v26);

    MEMORY[0x21CECC330](a3, a4);
    v27 = sub_218816B8C();
    MEMORY[0x21CECC330](v27);

    v28 = sub_218816CD4(a1);
    MEMORY[0x21CECC330](v28);

    v29 = 10;
    goto LABEL_37;
  }

  if ((a2 & 1) != 0 || (v10 = 0xE000000000000000, v11 = 10, v12 = 0, ((1 << (a1 >> 60)) & 0x73) == 0))
  {

    v11 = 32;
    v12 = a3;
    v10 = a4;
  }

  if (a5)
  {
    v13 = a5;

    v14 = [v13 description];
    sub_219BF5414();

    MEMORY[0x21CECC330](v11, 0xE100000000000000);

LABEL_21:
    v21 = sub_219BF53D4();

    return v21;
  }

  if (qword_280EE9338 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();

    sub_219BDC8A4();

    v18 = v35;
    v19 = v36;
  }

  else
  {
    v18 = 12559343;
    v19 = 0xA300000000000000;
  }

  MEMORY[0x21CECC330](v18, v19);

  MEMORY[0x21CECC330](a3, a4);
  v23 = sub_218816B8C();
  MEMORY[0x21CECC330](v23);

  v24 = sub_218816CD4(a1);
  MEMORY[0x21CECC330](v24);

  MEMORY[0x21CECC330](v12, v10);

  MEMORY[0x21CECC330](v11, 0xE100000000000000);

LABEL_38:
  v34 = sub_219BF53D4();

  return v34;
}

void *sub_218817E30(unint64_t a1, double a2)
{
  v4 = sub_219BDBD34();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF0644();
  v64 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v59 - v10;
  v65 = sub_219BF11C4();
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  sub_218818CE0(0);
  v18 = v17;
  MEMORY[0x28223BE20](v17);
  v68 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MastheadModelContext(0);
  MEMORY[0x28223BE20](v20);
  v66 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE9338 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();

    sub_219BDC8A4();

    return v71;
  }

  v23 = a1 >> 60;
  if ((a1 >> 60) > 3)
  {
    goto LABEL_19;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      sub_2187FF18C(0);
      v25 = swift_projectBox() + *(v24 + 48);
      v26 = v66;
      sub_2188121C4(v25, v66, type metadata accessor for MastheadModelContext);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v20 + 28);
      v30 = *(v18 + 64);
      v32 = v67;
      v31 = v68;
      *v68 = *v26;
      v31[1] = v28;
      v59 = *(v32 + 16);
      v60 = v30;
      v33 = &v26[v29];
      v34 = v65;
      v59(&v31[v30], v33, v65);
      if ((v27 & 1) == 0)
      {
        if (!v28 || (*(v67 + 88))(&v68[v60], v34) != *MEMORY[0x277D331E0])
        {
          goto LABEL_33;
        }

        v59(v13, &v68[v60], v34);
        (*(v67 + 96))(v13, v34);
        v43 = v64;
        (*(v64 + 104))(v8, *MEMORY[0x277D32EF8], v6);
        sub_218707844(&qword_280E90ED0, MEMORY[0x277D32F00], MEMORY[0x277D32F18]);
        sub_219BF5874();
        v36 = *(v43 + 8);
        v36(v13, v6);
        sub_219BF5874();
        if (v71 == v69 && v72 == v70)
        {
          v37 = v8;
          goto LABEL_26;
        }

        v48 = sub_219BF78F4();
        v49 = v8;
LABEL_31:
        v36(v49, v6);

        v44 = v65;
        if (v48)
        {
          goto LABEL_32;
        }

LABEL_33:
        v52 = v66;
        if (v66[*(v20 + 32)] == 1)
        {
          type metadata accessor for Localized();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v54 = [objc_opt_self() bundleForClass_];
          v42 = sub_219BDB5E4();

          sub_2188172B8(v52, type metadata accessor for MastheadModelContext);
          sub_2188172B8(v68, sub_218818CE0);
          return v42;
        }

        if (a2 <= 320.0)
        {
          if (qword_27CC07D38 != -1)
          {
            swift_once();
          }

          v55 = qword_27CC0D348;
          if (!qword_27CC0D348)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (qword_280ED23C0 != -1)
          {
            swift_once();
          }

          v55 = qword_280ED23D0;
          if (!qword_280ED23D0)
          {
            goto LABEL_44;
          }
        }

        v56 = v61;
        sub_219BDBD24();
        v57 = sub_219BDBC04();
        (*(v62 + 8))(v56, v63);
        v58 = [v55 stringFromDate_];

        v55 = sub_219BF5414();
LABEL_44:
        sub_2188172B8(v52, type metadata accessor for MastheadModelContext);
        sub_2188172B8(v68, sub_218818CE0);
        return v55;
      }

      if (v28)
      {
        if ((*(v67 + 88))(&v68[v60], v34) != *MEMORY[0x277D331F8])
        {
          goto LABEL_33;
        }

        v59(v16, &v68[v60], v34);
        (*(v67 + 96))(v16, v34);
        v35 = v64;
        (*(v64 + 104))(v11, *MEMORY[0x277D32EF8], v6);
        sub_218707844(&qword_280E90ED0, MEMORY[0x277D32F00], MEMORY[0x277D32F18]);
        sub_219BF5874();
        v36 = *(v35 + 8);
        v36(v16, v6);
        sub_219BF5874();
        if (v71 == v69 && v72 == v70)
        {
          v37 = v11;
LABEL_26:
          v36(v37, v6);

          v44 = v65;
LABEL_32:
          (*(v67 + 8))(&v68[v60], v44);
          type metadata accessor for Localized();
          v50 = swift_getObjCClassFromMetadata();
          v51 = [objc_opt_self() bundleForClass_];
          v42 = sub_219BDB5E4();

          sub_2188172B8(v66, type metadata accessor for MastheadModelContext);
          return v42;
        }

        v48 = sub_219BF78F4();
        v49 = v11;
        goto LABEL_31;
      }

      v45 = v34;
      type metadata accessor for Localized();
      v46 = swift_getObjCClassFromMetadata();
      v47 = [objc_opt_self() bundleForClass_];
      v42 = sub_219BDB5E4();

      sub_2188172B8(v66, type metadata accessor for MastheadModelContext);
      (*(v67 + 8))(&v68[v60], v45);
      return v42;
    }

LABEL_19:
    type metadata accessor for Localized();
    v40 = swift_getObjCClassFromMetadata();
    v41 = [objc_opt_self() bundleForClass_];
    v42 = sub_219BDB5E4();

    return v42;
  }

  if (v23 == 2)
  {
    goto LABEL_19;
  }

  result = *(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 16);
  if (result)
  {
    v38 = [objc_msgSend(result backingTag)];
    swift_unknownObjectRelease();
    v39 = sub_219BF5414();

    return v39;
  }

  return result;
}

void sub_218818CE0(uint64_t a1)
{
  if (!qword_280E8EAF0)
  {
    sub_219BF11C4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280E8EAF0);
    }
  }
}

id sub_218818D4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BDBE34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBDF4();
  sub_219BDBD84();
  (*(v3 + 8))(v5, v2);
  v6 = sub_219BF53D4();
  v7 = sub_219BF53D4();

  v8 = [objc_opt_self() dateFormatterWithFormat:v6 localeIdentifier:v7 forReuse:1];

  if (v8)
  {
    v9 = v8;
    v10 = sub_219BF53D4();
    [v9 setLocalizedDateFormatFromTemplate_];
  }

  return v8;
}

id sub_218818ECC()
{
  result = sub_218818D4C(0x64204D4D4D4DLL, 0xE600000000000000);
  qword_280ED23D0 = result;
  return result;
}

void sub_218818EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218818F60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF78A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218818FB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218819018()
{
  result = qword_280E8D9D8;
  if (!qword_280E8D9D8)
  {
    sub_2186C6148(255, &unk_280E8D9E0, 0x277CCACA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8D9D8);
  }

  return result;
}

uint64_t sub_218819080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MastheadModelContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2188190E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218819144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188191A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_218819204(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE7C34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8334();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == *MEMORY[0x277D6DCD8])
  {
    v8 = sub_219BE8324();
    if (v8)
    {
      v9 = v8;
      v10 = sub_219BE79A4();

      if (v10)
      {
        return v10;
      }
    }

    v14 = *(*__swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 160);
  }

  else
  {
    v12 = v7;
    v13 = *MEMORY[0x277D6DCD0];
    v14 = *(*__swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 80);
    if (v12 != v13)
    {
      v15 = *(v4 + 8);
      v16 = v14;
      v15(v6, v3);
      return v16;
    }
  }

  return v14;
}

id sub_2188193BC()
{
  v1 = v0;
  v2 = sub_219BE7C34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8334();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D6DCD8])
  {
    v7 = sub_219BE8324();
    if (v7)
    {
      v8 = v7;
      v9 = sub_219BE79A4();

      if (v9)
      {
        return v9;
      }
    }

    v13 = *(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 168);
  }

  else
  {
    v11 = v6;
    v12 = *MEMORY[0x277D6DCD0];
    v13 = *(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 88);
    if (v11 != v12)
    {
      v14 = *(v3 + 8);
      v15 = v13;
      v14(v5, v2);
      return v15;
    }
  }

  return v13;
}

void sub_218819588(uint64_t a1)
{
  if (!qword_280E8E0F0)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E0F0);
    }
  }
}

unint64_t sub_21881963C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    a2(0);
    v10 = sub_219BF75B4();
    v11 = a1 + 32;

    v12 = MEMORY[0x277D84F70];
    while (1)
    {
      sub_218819864(v11, &v19, a3, a4, v12 + 8, sub_21879D638);
      v13 = v19;
      result = a5(v19);
      if (v15)
      {
        break;
      }

      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v10[6] + 8 * result) = v13;
      result = sub_218751558(&v20, (v10[7] + 32 * result));
      v16 = v10[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v10[2] = v18;
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

void sub_21881977C(uint64_t a1)
{
  if (!qword_280E8D060)
  {
    type metadata accessor for Key(255);
    sub_218751238(&qword_280E8E118, type metadata accessor for Key, &unk_219C09A8C);
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D060);
    }
  }
}

uint64_t sub_218819864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_2188198E0(uint64_t a1)
{
  sub_219BF5414();
  sub_219BF7AA4();
  sub_219BF5524();
  v2 = sub_219BF7AE4();

  return sub_218819970(a1, v2);
}

unint64_t sub_218819970(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_219BF5414();
      v8 = v7;
      if (v6 == sub_219BF5414() && v8 == v9)
      {
        break;
      }

      v11 = sub_219BF78F4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_218819A74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218819ABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218819B04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218819B4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2188134F8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218819BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21881354C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_218819C18(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21875D3C8(0);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v55 - v7;
  v8 = type metadata accessor for MastheadModelSupplementaryInfo(0);
  MEMORY[0x28223BE20](v8);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (((1 << (a1 >> 60)) & 0x1DE) != 0)
  {
    goto LABEL_2;
  }

  if (a1 >> 60)
  {
    sub_218A6E4C8(0);
    v26 = v25;
    v27 = swift_projectBox();
    v28 = (v27 + *(v26 + 48));
    v11 = *v28;
    v29 = v28[1];
    v31 = v57;
    v30 = v58;
    v32 = *(v58 + 16);
    v33 = v59;
    v32(v57, v27, v59);

    if (sub_219BED0C4())
    {
      (*(v30 + 8))(v31, v33);

      goto LABEL_8;
    }

    v37 = v56;
    v32(v56, v31, v33);
    v38 = (*(v30 + 88))(v37, v33);
    if (v38 == *MEMORY[0x277D30130])
    {

      (*(v30 + 96))(v37, v33);
      sub_218A6E5D0(0);
      v55 = *(v39 + 64);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v41 = [objc_opt_self() bundleForClass_];
    }

    else
    {
      if (v38 != *MEMORY[0x277D30128])
      {
        if (v38 != *MEMORY[0x277D30138])
        {
          v54 = *(v30 + 8);
          v54(v31, v33);

          v54(v37, v33);
          goto LABEL_8;
        }

        if (!v29)
        {
          type metadata accessor for Localized();
          v51 = swift_getObjCClassFromMetadata();
          v52 = [objc_opt_self() bundleForClass_];
          v11 = sub_219BDB5E4();
          v29 = v53;
        }

        (*(v30 + 8))(v31, v33);

        v15 = 0;
        v16 = 0;
        v17 = 0;
        v12 = v29;
LABEL_18:
        v18 = 0;
        v19 = 0;
        v13 = v11;
        v14 = v12;
        goto LABEL_2;
      }

      (*(v30 + 96))(v37, v33);
      sub_218A6E554(0);
      v55 = *(v45 + 64);
      type metadata accessor for Localized();
      v46 = swift_getObjCClassFromMetadata();
      v41 = [objc_opt_self() bundleForClass_];
    }

    v11 = sub_219BDB5E4();
    v48 = v47;

    (*(v30 + 8))(v31, v33);
    v49 = sub_219BDD9E4();
    v50 = *(*(v49 - 8) + 8);

    v50(v37 + v55, v49);
    sub_2188172B8(v37, type metadata accessor for AudioFeedTrack);
    v12 = v48;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_18;
  }

  v20 = v9;
  v21 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FF18C(0);
  v23 = v22;
  v24 = swift_projectBox();
  sub_2188121C4(v24 + *(v23 + 64), v21, type metadata accessor for MastheadModelSupplementaryInfo);

  if (sub_219BED0C4())
  {
    sub_2188172B8(v21, type metadata accessor for MastheadModelSupplementaryInfo);

LABEL_8:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_2;
  }

  v34 = v21;
  v35 = sub_218816F54();

  if (v35)
  {
    v11 = 0;
    v59 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v36 = v34;
  }

  else
  {
    v36 = v21;
    if (*v21 == 1)
    {
      v42 = &v21[*(v20 + 28)];
      v43 = *(v42 + 3);
      v63 = *(v42 + 2);
      v64 = v43;
      v65 = *(v42 + 8);
      v44 = *(v42 + 1);
      v61 = *v42;
      v62 = v44;
      sub_218A6E6F4(&v61, v60);
      v36 = v21;
      v59 = *(&v61 + 1);
      v11 = v61;
      v14 = *(&v62 + 1);
      v13 = v62;
      v16 = *(&v63 + 1);
      v15 = v63;
      v18 = *(&v64 + 1);
      v17 = v64;
      v19 = v65;
    }

    else
    {
      v11 = 0;
      v59 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }
  }

  sub_2188172B8(v36, type metadata accessor for MastheadModelSupplementaryInfo);
  v12 = v59;
LABEL_2:
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v16;
  a2[6] = v17;
  a2[7] = v18;
  a2[8] = v19;
}

uint64_t sub_21881A324(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

BOOL sub_21881A36C(unint64_t a1)
{
  v2 = type metadata accessor for MastheadModelSupplementaryInfo(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEC004();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  if (((1 << (a1 >> 60)) & 0x1EE) == 0)
  {
    v15 = v10;
    if (a1 >> 60)
    {
      (*(v9 + 56))(v7, 1, 1, v10, v11);
    }

    else
    {
      sub_2187FF18C(0);
      v17 = v16;
      v18 = swift_projectBox();
      sub_2188121C4(v18 + *(v17 + 64), v4, type metadata accessor for MastheadModelSupplementaryInfo);
      sub_2188121C4(&v4[*(v2 + 24)], v7, sub_2186FE720);

      sub_2188172B8(v4, type metadata accessor for MastheadModelSupplementaryInfo);
      if ((*(v9 + 48))(v7, 1, v15) != 1)
      {
        (*(v9 + 32))(v13, v7, v15);
        if (sub_219BEBFE4())
        {
          v19 = sub_21881C734(a1);
          (*(v9 + 8))(v13, v15);
          if (v19)
          {
            v14 = 0;
LABEL_10:

            return v14;
          }
        }

        else
        {
          (*(v9 + 8))(v13, v15);
        }

LABEL_9:
        v14 = sub_218816F54();
        goto LABEL_10;
      }
    }

    sub_2188172B8(v7, sub_2186FE720);
    goto LABEL_9;
  }

  return v14;
}

void sub_21881A660(unint64_t a1)
{
  v2 = type metadata accessor for MastheadModelSupplementaryInfo(0);
  MEMORY[0x28223BE20](v2);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881354C(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  v11 = sub_219BEC004();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v35 - v17;
  v19 = a1 >> 60;
  if ((a1 >> 60) - 2 < 7)
  {
    (*(v12 + 56))(v10, 1, 1, v11, v16);
LABEL_3:
    sub_218819BA8(v10, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    return;
  }

  if (v19)
  {
    sub_218A6E454(0);
    v37 = v22;
    v23 = swift_projectBox();
    sub_21881AC1C(v23 + *(v37 + 48), v10);
  }

  else
  {
    sub_2187FF18C(0);
    v37 = v20;
    v21 = swift_projectBox();
    sub_219B799FC(v21 + *(v37 + 64), v4, type metadata accessor for MastheadModelSupplementaryInfo);
    sub_21881AC1C(&v4[*(v2 + 24)], v10);
    sub_21881ABBC(v4, type metadata accessor for MastheadModelSupplementaryInfo);
  }

  v36 = *(v12 + 48);
  v37 = v12 + 48;
  if (v36(v10, 1, v11) == 1)
  {
    goto LABEL_3;
  }

  v35[0] = *(v12 + 32);
  v35[1] = v12 + 32;
  (v35[0])(v18, v10, v11);
  v24 = sub_219BEBFF4();
  v25 = v18;
  v26 = *(v12 + 8);
  v26(v25, v11);
  if (v24)
  {

    if (v19)
    {
      sub_218A6E454(0);
      v31 = v30;
      v32 = swift_projectBox();
      sub_21881AC1C(v32 + *(v31 + 48), v7);
    }

    else
    {
      sub_2187FF18C(0);
      v28 = v27;
      v29 = swift_projectBox();
      sub_219B799FC(v29 + *(v28 + 64), v4, type metadata accessor for MastheadModelSupplementaryInfo);
      sub_21881AC1C(&v4[*(v2 + 24)], v7);
      sub_21881ABBC(v4, type metadata accessor for MastheadModelSupplementaryInfo);
    }

    if (v36(v7, 1, v11) == 1)
    {
      sub_218819BA8(v7, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    }

    else
    {
      (v35[0])(v14, v7, v11);
      v33 = sub_219BEBFF4();
      if (v33)
      {
        v34 = v33;
        if (sub_219BEBFE4())
        {
          [v34 frame];

          v26(v14, v11);
        }

        else
        {
          v26(v14, v11);
        }
      }

      else
      {
        v26(v14, v11);
      }
    }
  }
}

uint64_t sub_21881AB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21881ABBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21881AC1C(uint64_t a1, uint64_t a2)
{
  sub_218CC4A34(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21881ACB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_21881AD04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_21881AD58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_21881ADAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21881AE10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21881AE74(unint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v208 = a1;
  sub_21875D3C8(0);
  v10 = *(v9 - 8);
  v205 = v9;
  v206 = v10;
  MEMORY[0x28223BE20](v9);
  v191 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  *&v187 = &v177 - v13;
  MEMORY[0x28223BE20](v14);
  v199 = &v177 - v15;
  v16 = type metadata accessor for MastheadModelSupplementaryInfo(0);
  *&v17 = MEMORY[0x28223BE20](v16 - 8).n128_u64[0];
  v189 = &v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&a3[qword_280EDEE80];
  v210 = 0x3FF0000000000000;
  v211 = 0;
  v212 = 0;
  v213 = 0x3FF0000000000000;
  v214 = 0;
  v215 = 0;
  [v19 setTransform_];
  v20 = *&a3[qword_280EDEE30];
  v21 = sub_219BE7114();
  v22 = sub_219BEA814();

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  swift_unknownObjectRetain();

  v24 = v20;

  v25 = sub_219BEA814();
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  swift_unknownObjectRetain();

  v27 = sub_219BEA814();
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  swift_unknownObjectRetain();

  [a3 setFrame_];
  sub_21881C5D4(*(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48));
  [v19 setFrame_];
  v29 = *(a2 + 56);
  v30 = *(a2 + 64);
  v31 = *(a2 + 72);
  v32 = *(a2 + 80);
  v203 = *&a3[qword_280EDEE70];
  [v203 setFrame_];
  v33 = *(a2 + 96);
  v34 = *(a2 + 104);
  v35 = *(a2 + 112);
  v36 = *(a2 + 120);
  v197 = *&a3[qword_280EDEE50];
  [v197 setFrame_];
  [v20 setFrame_];
  v37 = *&a3[qword_280EDEE68];
  [v37 setFrame_];
  v38 = *&a3[qword_280EDEE58];
  [v38 setFrame_];
  v39 = *&a3[qword_280EDEE60];
  [v39 setFrame_];
  v40 = *&a3[qword_280EDEE48];
  [v40 setFrame_];
  [*&a3[qword_280EDEE98] setFrame_];
  v41 = *(a2 + 352);
  v42 = *(a2 + 360);
  v43 = *(a2 + 368);
  v44 = *(a2 + 376);
  v202 = *&a3[qword_280EDEEA0];
  [v202 setFrame_];
  v201 = a3;
  v45 = *&a3[qword_280EDEE90];
  v46 = v208;
  [v45 setFrame_];
  sub_218819C18(v46, &v210);
  v47 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v200 = v211;
  if (!v211)
  {
    [v24 setHidden_];
    [v37 setHidden_];
    [v38 setHidden_];
    [v39 setHidden_];
    [v40 setHidden_];
    v53 = v203;
    goto LABEL_59;
  }

  v194 = v40;
  v195 = v39;
  v188 = v45;
  v190 = v37;
  v196 = v210;
  v192 = v215;
  v193 = v38;
  v48 = v46 >> 60;
  v49 = v205;
  v204 = v217;
  v184 = v218;
  v185 = v216;
  v186 = v214;
  if ((v46 >> 60) > 8)
  {
    goto LABEL_11;
  }

  if (((1 << v48) & 0x19E) != 0)
  {
    [v24 setUserInteractionEnabled_];
    v50 = [v24 layer];
    LODWORD(v51) = 1.0;
    v52 = v50;
    goto LABEL_13;
  }

  if (v48 != 5)
  {
    if (v48 == 6)
    {
      [v24 setUserInteractionEnabled_];
      v52 = [v24 layer];
      goto LABEL_12;
    }

LABEL_11:
    sub_2187FF18C(0);
    v59 = v58;
    v183 = v58;
    v60 = swift_projectBox();
    v61 = v189;
    sub_2195D5A4C(v60 + v59[16], v189);
    v62 = *(v61 + 1);
    sub_2195D59EC(v61, type metadata accessor for MastheadModelSupplementaryInfo);
    [v24 setUserInteractionEnabled_];
    v52 = [v24 layer];
    v63 = swift_projectBox();
    sub_2195D5A4C(v63 + v183[16], v61);
    v64 = *(v61 + 1);
    sub_2195D59EC(v61, type metadata accessor for MastheadModelSupplementaryInfo);
    LODWORD(v51) = 1.0;
    if (v64)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  sub_218A6E4C8(0);
  [v24 setUserInteractionEnabled_];
  v52 = [v24 layer];
  sub_218A6E4C8(0);
  v56 = v55;
  v57 = swift_projectBox();
  LODWORD(v51) = 1.0;
  if ((*(v57 + *(v56 + 64)) & 1) == 0)
  {
LABEL_12:
    LODWORD(v51) = 0.5;
  }

LABEL_13:
  [v52 setOpacity_];

  v65 = &selRef_boldSystemFontOfSize_;
  v189 = v48;
  v207 = v24;
  if (v48 == 5)
  {
    sub_218A6E4C8(0);
    v66 = swift_projectBox();
    v67 = v206;
    v68 = v199;
    v183 = *(v206 + 16);
    (v183)(v199, v66, v49);
    v182 = *(v67 + 88);
    v69 = v182(v68, v49);
    v70 = *MEMORY[0x277D30130];
    if (v69 == *MEMORY[0x277D30130])
    {
      v204 = *(v67 + 96);
      v204(v68, v49);
      sub_218A6E5D0(0);
LABEL_21:
      v75 = *(v71 + 64);
      v76 = sub_219BDD9E4();
      v199 = *(*(v76 - 8) + 8);
      (v199)(&v68[v75], v76);
      sub_2195D59EC(v68, type metadata accessor for AudioFeedTrack);
      [v207 setHidden_];
      [v193 setHidden_];
      v77 = swift_projectBox();
      v78 = v187;
      (v183)(v187, v77, v49);
      if (v182(v78, v49) == v70)
      {
        v204(v78, v49);
        sub_218A6E5D0(0);
        (v199)(v78 + *(v79 + 64), v76);
        sub_2195D59EC(v78, type metadata accessor for AudioFeedTrack);
        v80 = 1;
      }

      else
      {
        (*(v206 + 8))(v78, v49);
        v80 = 2;
      }

      v53 = v203;
      v65 = &selRef_boldSystemFontOfSize_;
      v139 = v193;
      [v193 setPlaybackState_];
      [v139 setNumberOfLevels_];
      v143 = [objc_opt_self() secondaryLabelColor];
      v144 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
      v145 = [v143 resolvedColorWithTraitCollection_];

      [v139 setTintColor_];
      v146 = sub_218C8F710(v196, v200);
      v147 = v195;
      [v195 setAttributedText_];

      v47 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
      [v147 setHidden_];
      v148 = v194;
      sub_218C8FA00(v194);
      [v148 setHidden_];
      goto LABEL_48;
    }

    if (v69 == *MEMORY[0x277D30128])
    {
      v68 = v199;
      v49 = v205;
      v204 = *(v67 + 96);
      v204(v199, v205);
      sub_218A6E554(0);
      goto LABEL_21;
    }

    v47 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v139 = v193;
    if (v69 != *MEMORY[0x277D30138])
    {
      (*(v67 + 8))(v199, v205);
      v53 = v203;
      goto LABEL_48;
    }
  }

  else
  {
    (*(v206 + 104))(v199, *MEMORY[0x277D30138], v49);
  }

  v72 = v192;
  if (v192)
  {

    v73 = v72;
    v74 = v72;
  }

  else
  {
    v81 = objc_opt_self();

    v74 = [v81 whiteColor];
    v73 = 0;
  }

  sub_21899E550(0);
  v199 = v82;
  inited = swift_initStackObject();
  v187 = xmmword_219C09EC0;
  *(inited + 16) = xmmword_219C09EC0;
  v84 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v183 = v84;
  v85 = v73;
  v86 = 14.0;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v87 = MEMORY[0x277D76968];
    if (v204)
    {
      v87 = MEMORY[0x277D76938];
    }

    v88 = *v87;
    v89 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];

    [v89 pointSize];
    v86 = v90;
  }

  v91 = objc_opt_self();
  v92 = *MEMORY[0x277D743F8];
  v182 = v91;
  v93 = [v91 systemFontOfSize:v86 weight:v92];
  v94 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  *(inited + 40) = v93;
  v95 = *MEMORY[0x277D740C0];
  v181 = v94;
  *(inited + 64) = v94;
  *(inited + 72) = v95;
  v180 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 104) = v180;
  *(inited + 80) = v74;
  v178 = v95;
  v96 = v74;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  v179 = v97;
  swift_arrayDestroy();
  v98 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v99 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_2187079A8(&qword_280E8E118, type metadata accessor for Key, &unk_219C09A8C);
  v100 = sub_219BF5204();

  v101 = [v98 initWithString:v99 attributes:v100];

  [v207 setAttributedTitle:v101 forState:0];
  v102 = v85;
  if (!v192)
  {
    v102 = [objc_opt_self() whiteColor];
  }

  v103 = v85;
  v104 = [v102 colorWithAlphaComponent_];

  v105 = swift_initStackObject();
  *(v105 + 16) = v187;
  *(v105 + 32) = v183;
  v106 = 14.0;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v107 = MEMORY[0x277D76968];
    if (v204)
    {
      v107 = MEMORY[0x277D76938];
    }

    v108 = *v107;
    v109 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];

    [v109 pointSize];
    v106 = v110;
  }

  *(v105 + 40) = [v182 systemFontOfSize:v106 weight:v92];
  v111 = v178;
  *(v105 + 64) = v181;
  *(v105 + 72) = v111;
  *(v105 + 104) = v180;
  *(v105 + 80) = v104;
  v112 = v104;
  sub_2188195F4(v105);
  swift_setDeallocating();
  swift_arrayDestroy();
  v113 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v114 = sub_219BF53D4();
  v115 = sub_219BF5204();

  v116 = [v113 initWithString:v114 attributes:v115];

  [v207 setAttributedTitle:v116 forState:1];
  sub_218718690(v198 + 16, v209);
  v117 = __swift_project_boxed_opaque_existential_1(v209, v209[3]);
  if (v189 == 5)
  {
    sub_219BF5114();
    v118 = sub_219BF5074();
  }

  else
  {
    v118 = 0;
  }

  v119 = v204 != 0;

  v196 = *v117;
  v120 = v207;
  v121 = [v207 layer];
  v200 = objc_opt_self();
  v122 = [v200 blackColor];
  v123 = [v122 CGColor];

  CopyWithAlpha = CGColorCreateCopyWithAlpha(v123, 0.15);
  [v121 setShadowColor_];

  v125 = [v120 layer];
  LODWORD(v126) = 1.0;
  [v125 setShadowOpacity_];

  v127 = [v120 layer];
  [v127 setShadowOffset_];

  v128 = [v120 layer];
  [v128 setShadowRadius_];

  v199 = v118;
  v129 = sub_218C8F610(v118, v119);
  [v120 setImage:v129 forState:0];
  if (v129)
  {
    v130 = v129;
    v131 = [v200 whiteColor];
    v132 = [v131 colorWithAlphaComponent_];

    v133 = [v130 imageWithTintColor:v132 renderingMode:1];
    v120 = v207;
  }

  else
  {
    v133 = 0;
  }

  v134 = v193;
  [v120 setImage:v133 forState:1];

  v135 = [v200 whiteColor];
  v65 = &selRef_boldSystemFontOfSize_;
  [v120 setTintColor_];

  v136 = v204;
  v137 = v186;
  if (v186)
  {
    v138 = v186;
  }

  else
  {
    v138 = *(*__swift_project_boxed_opaque_existential_1((v196 + 16), *(v196 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 40);
    v137 = 0;
  }

  v139 = v134;
  v140 = v137;
  [v120 setBackgroundColor_];

  __swift_destroy_boxed_opaque_existential_1(v209);
  v47 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  [v120 setHidden_];
  v141 = v190;
  if (v136)
  {

    v142 = sub_218C8F3C8(v185, v136, v184);

    [v141 setAttributedText_];
  }

  [v141 setHidden_];
  [v134 setHidden_];
  [v195 setHidden_];
  [v194 setHidden_];
  v53 = v203;
LABEL_48:
  v149 = sub_219BED0C4();
  v46 = v208;
  if ((v149 & 1) == 0)
  {
    sub_218C8FBF8(&v210);
    v45 = v188;
    goto LABEL_59;
  }

  __swift_project_boxed_opaque_existential_1((v198 + 16), *(v198 + 40));
  sub_218C8E754(v197, v46);
  [v139 setNumberOfLevels_];
  v150 = [objc_opt_self() secondaryLabelColor];
  v151 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v152 = [v150 resolvedColorWithTraitCollection_];

  [v139 v65[237]];
  if (v189 != 5)
  {
    v155 = v205;
    v154 = v206;
    v156 = v191;
    (*(v206 + 104))(v191, *MEMORY[0x277D30138], v205);
    goto LABEL_54;
  }

  sub_218A6E4C8(0);
  v153 = swift_projectBox();
  v155 = v205;
  v154 = v206;
  v156 = v191;
  (*(v206 + 16))(v191, v153, v205);
  if ((*(v154 + 88))(v156, v155) != *MEMORY[0x277D30130])
  {
LABEL_54:
    (*(v154 + 8))(v156, v155);
    v160 = 2;
    goto LABEL_55;
  }

  (*(v154 + 96))(v156, v155);
  sub_218A6E5D0(0);
  v158 = *(v157 + 64);
  v159 = sub_219BDD9E4();
  (*(*(v159 - 8) + 8))(v156 + v158, v159);
  sub_2195D59EC(v156, type metadata accessor for AudioFeedTrack);
  v160 = 1;
LABEL_55:
  [v139 setPlaybackState_];
  v161 = [v197 imageView];
  v162 = v190;
  v45 = v188;
  if (v161)
  {
    v163 = v161;
    [v161 frame];
    v165 = v164;
    v167 = v166;
    v169 = v168;
    v171 = v170;
  }

  else
  {
    v165 = 0.0;
    v167 = 0.0;
    v169 = 0.0;
    v171 = 0.0;
  }

  [v139 setFrame_];
  [v207 v47[313]];
  [v162 v47[313]];
  [v195 v47[313]];
  [v194 v47[313]];
  sub_218C8FBF8(&v210);
  v46 = v208;
LABEL_59:
  v172 = sub_21881A36C(v46);
  [v202 v47[313]];
  [v45 v47[313]];
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v173 = 2;
  }

  else
  {
    v173 = 0;
  }

  [v45 setOverrideUserInterfaceStyle_];
  [v53 setAttributedText_];
  [v201 setIsAccessibilityElement_];
  v174 = *&v53[OBJC_IVAR____TtC7NewsUI218MastheadTitleLabel_model];
  *&v53[OBJC_IVAR____TtC7NewsUI218MastheadTitleLabel_model] = v46;

  sub_2188031B0(v174);
  v175 = &v53[OBJC_IVAR____TtC7NewsUI218MastheadTitleLabel_cachedAccessibilityLabel];
  *v175 = 0;
  *(v175 + 1) = 0;
}

uint64_t sub_21881C594()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_21881C5D4(double a1, double a2, double a3, double a4)
{
  v7 = *(v4 + qword_280EDEE88);
  [v7 setFrame_];
  v8 = [v7 subviews];
  sub_2186C6148(0, &qword_280E8DAE0, 0x277D75D18);
  v9 = sub_219BF5924();

  if (v9 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x21CECE0F0](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;

  [v11 setFrame_];
}

uint64_t sub_21881C734(unint64_t a1)
{
  v2 = type metadata accessor for MastheadModelSupplementaryInfo(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEC004();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 >> 60) - 2 < 7)
  {
    (*(v9 + 56))(v7, 1, 1, v8, v10);
LABEL_3:
    sub_2188172B8(v7, sub_2186FE720);
    return 0;
  }

  if (a1 >> 60)
  {
    sub_218A6E454(0);
    v18 = v17;
    v19 = swift_projectBox();
    sub_2188121C4(v19 + *(v18 + 48), v7, sub_2186FE720);
  }

  else
  {
    sub_2187FF18C(0);
    v15 = v14;
    v16 = swift_projectBox();
    sub_2188121C4(v16 + *(v15 + 64), v4, type metadata accessor for MastheadModelSupplementaryInfo);
    sub_2188121C4(&v4[*(v2 + 24)], v7, sub_2186FE720);
    sub_2188172B8(v4, type metadata accessor for MastheadModelSupplementaryInfo);
  }

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_3;
  }

  (*(v9 + 32))(v12, v7, v8);
  v20 = sub_219BEBFF4();
  (*(v9 + 8))(v12, v8);
  if (v20)
  {

    return 1;
  }

  return 0;
}

uint64_t sub_21881C9F4(uint64_t a1, uint64_t a2)
{
  sub_218802370(0, &qword_280EE4768, MEMORY[0x277D6E2A8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21881CAB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2187F6AE4(0, a2, a3, a4, MEMORY[0x277D84098]);
    v5 = sub_219BF72E4();
    v6 = v5 + 56;
    while (1)
    {
      sub_219BF7AA4();
      MEMORY[0x21CECE850](0);
      result = sub_219BF7AE4();
      v8 = result & ~(-1 << *(v5 + 32));
      v9 = v8 >> 6;
      v10 = *(v6 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if ((v11 & v10) == 0)
      {
        *(v6 + 8 * v9) = v11 | v10;
        v12 = *(v5 + 16);
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v14;
      }

      if (!--v4)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_21881CB9C()
{
  result = qword_280E8F5B0;
  if (!qword_280E8F5B0)
  {
    sub_21881CC24(255, &unk_280E8F5C0, MEMORY[0x277D6CD38], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F5B0);
  }

  return result;
}

void sub_21881CC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21881CC88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21881CCEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

double sub_21881CD40()
{
  sub_218802370(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for MastheadModelSupplementaryInfo(0);
  *&result = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model) >> 60;
  if ((v8 - 2) >= 7)
  {
    if (v8)
    {
      sub_218A6E454(0);
      v15 = v14;
      v16 = swift_projectBox();
      v17 = MEMORY[0x277D2D4E0];
      sub_218812294(v16 + *(v15 + 48), v3, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
      v18 = *(*(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadView) + qword_280EDEE90);

      v19 = v18;
      sub_219BEBF34();

      sub_2188174B8(v3, &qword_280EE33F0, v17);
    }

    else
    {
      sub_2187FF18C(0);
      v10 = v9;
      v11 = swift_projectBox();
      sub_21881CF74(v11 + *(v10 + 64), v7, type metadata accessor for MastheadModelSupplementaryInfo);
      v12 = *(*(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadView) + qword_280EDEE90);

      v13 = v12;
      sub_219BEBF34();

      sub_218819144(v7, type metadata accessor for MastheadModelSupplementaryInfo);
    }
  }

  return result;
}

uint64_t sub_21881CF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21881D030@<X0>(void *a1@<X8>)
{
  *a1 = [objc_opt_self() clearColor];
  v2 = *MEMORY[0x277D6E408];
  v3 = sub_219BE9124();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_21881D1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2187E2B14(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - v6;
  v8 = type metadata accessor for TodayExpandContext(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE9F74();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a3, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x277D6E950])
  {
    sub_219BE8664();
    v17 = sub_219BE7BC4();

    v18 = sub_218B72744();

    v19 = *&v3[OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler];
    v20 = [v3 view];
    if (v20)
    {
      v21 = v20;
      [v20 bounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v30 = *(v19 + 40);
      ObjectType = swift_getObjectType();
      (*(v30 + 48))(v18, a3, 0, 0, ObjectType, v30, v23, v25, v27, v29);

LABEL_4:
      (*(v12 + 8))(v15, v11);
      return;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  if (v16 == *MEMORY[0x277D6E928])
  {
    v32 = sub_219BE6DF4();
    (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
    sub_218809CC0(v7, v10);
    sub_21881AB5C(v7, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88], sub_2187E2B14);
    sub_21881D7A4(v10, 0, 0);
    sub_2187F691C(v10, type metadata accessor for TodayExpandContext);
    return;
  }

  if (v16 == *MEMORY[0x277D6E948])
  {
LABEL_8:
    sub_219BE8664();
    v33 = sub_219BE7BC4();

    v34 = sub_218B72744();

    v35 = *&v3[OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler];
    v36 = [v3 view];
    if (v36)
    {
      v37 = v36;
      [v36 bounds];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      v46 = *(v35 + 40);
      v47 = swift_getObjectType();
      (*(v46 + 48))(v34, a3, 0, 0, v47, v46, v39, v41, v43, v45);

      return;
    }

    goto LABEL_22;
  }

  if (v16 != *MEMORY[0x277D6E978])
  {
    if (v16 == *MEMORY[0x277D6E930])
    {
      goto LABEL_8;
    }

    if (v16 != *MEMORY[0x277D6E958])
    {
      if (v16 == *MEMORY[0x277D6E970])
      {
        sub_219BE8664();
        v48 = sub_219BE7BC4();

        v49 = [v48 collectionViewLayout];

        [v49 invalidateLayout];
        sub_219BE8664();
        v50 = sub_219BE7BC4();

        [v50 reloadData];
      }

      else if (v16 != *MEMORY[0x277D6E960] && v16 != *MEMORY[0x277D6E968] && v16 != *MEMORY[0x277D6E938] && v16 != *MEMORY[0x277D6E940])
      {
        goto LABEL_4;
      }
    }
  }
}

uint64_t sub_21881D7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v25[1] = *v3;
  v25[0] = sub_219BDBD34();
  v5 = *(v25[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v25[0]);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = sub_2187E1450(&qword_280EDE678, 255, type metadata accessor for TodayTracker, &unk_219C6CC1C);
  v12 = *(v11 + 144);
  v13 = type metadata accessor for TodayTracker();
  v12(v13, v11);
  sub_219BDBD24();
  v28 = v3;
  v29 = a1;
  sub_21881DBDC(0);
  sub_219BE3204();
  v14 = v25[0];
  (*(v5 + 16))(v7, v10, v25[0]);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject() + v15;
  v17 = v14;
  (*(v5 + 32))(v16, v7, v14);
  v18 = sub_219BE2E54();
  sub_219BE2F94();

  v19 = sub_219BE2E54();
  sub_219BE2FE4();

  v20 = swift_allocObject();
  v21 = v26;
  v22 = v27;
  *(v20 + 16) = v26;
  *(v20 + 24) = v22;
  sub_2188202A8(v21);
  v23 = sub_219BE2E54();
  sub_219BE3024();

  return (*(v5 + 8))(v10, v17);
}

uint64_t sub_21881DAC8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21881DB0C()
{
  sub_219BDF4E4();
  sub_2187DD9B8(&unk_280EE8770, 255, MEMORY[0x277D2DAF8], MEMORY[0x277D2DAF0]);
  sub_219BDD214();
  sub_219BE0654();
  sub_2187DD9B8(&qword_280EE8390, 255, MEMORY[0x277D2E688], MEMORY[0x277D2E680]);
  return sub_219BDD214();
}

void sub_21881DC10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

uint64_t sub_21881DC8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  return (*(v3 + 40))(v2, ObjectType, v3);
}

uint64_t sub_21881DCEC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000] & *v1;
  v7 = type metadata accessor for TodayExpandContext(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = sub_219BE7B04();
  if (v10 >> 62)
  {
    if (v10 >> 62 == 1 || v10 != 0x8000000000000000)
    {
      type metadata accessor for TodayInteractor.Errors(0, *(v6 + 80), *(v6 + 88), v11);
      swift_getWitnessTable();
      swift_allocError();
      *v12 = 0;
      sub_2187DD4F0(0, &unk_280EE6EA0, sub_21881DBDC, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE2FF4();
    }
  }

  else
  {
    sub_21880BB00(v10);
  }

  v44 = v9;
  v45 = v8;
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v6;
  v48 = ObjectType;
  sub_219BE7B14();
  v14 = *(v1 + *((*v5 & *v1) + 0xC0) + 8);
  v15 = swift_getObjectType();
  LOBYTE(v50) = 7;
  (*(v14 + 32))(&v52, &v50, v15, v14);
  v16 = v52;
  v17 = v53;
  v18 = v54;
  v19 = v55;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v43 = qword_280F616D8;
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C09EC0;
  v21 = sub_21880AECC();
  v49 = a1;
  v23 = v22;
  v24 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v25 = sub_2186FC3BC();
  *(v20 + 64) = v25;
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  v50 = 0;
  v51 = 0xE000000000000000;
  v52 = v16;
  v53 = v17;
  v54 = v18;
  v55 = v19;
  sub_219BF7484();
  v26 = v50;
  v27 = v51;
  *(v20 + 96) = v24;
  *(v20 + 104) = v25;
  *(v20 + 72) = v26;
  *(v20 + 80) = v27;
  v28 = sub_219BF6214();
  sub_219BE5314("Today feed starting prewarming with %{public}@, scrollPosition=%{public}@", 73, 2, &dword_2186C1000, v43, v28, v20);

  v29 = CACurrentMediaTime();
  MEMORY[0x28223BE20](v30);
  *(&v42 - 6) = v2;
  *(&v42 - 5) = v16;
  *(&v42 - 4) = v17;
  *(&v42 - 3) = v18;
  v31 = v49;
  *(&v42 - 2) = v19;
  *(&v42 - 1) = v31;
  type metadata accessor for TodayPrewarmResult(0);
  sub_219BE3204();
  v43 = sub_2187D9028();
  v32 = sub_219BF66A4();
  v33 = swift_allocObject();
  v33[2] = v16;
  v33[3] = v17;
  v33[4] = v18;
  v33[5] = v19;
  sub_219BE2F84();

  v34 = v46;
  sub_2187F684C(v49, v46, type metadata accessor for TodayExpandContext);
  v35 = (*(v45 + 80) + 40) & ~*(v45 + 80);
  v36 = swift_allocObject();
  v37 = v47;
  v36[2] = *(v47 + 80);
  v36[3] = *(v37 + 88);
  v36[4] = v29;
  sub_21880BBE4(v34, v36 + v35, type metadata accessor for TodayExpandContext);
  v38 = sub_219BE2E54();
  sub_21881DBDC(0);
  sub_219BE2F84();

  v39 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v29;
  sub_219BE2FE4();

  v40 = sub_219BE2E54();
  v41 = sub_219BE3034();

  return v41;
}

uint64_t sub_21881E2EC()
{

  return swift_deallocObject();
}

uint64_t sub_21881E324()
{
  v1 = (type metadata accessor for TodayExpandContext(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 40) & ~*(*v1 + 80));
  swift_unknownObjectRelease();
  v3 = v1[10];
  v4 = sub_219BE6DF4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21881E46C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v4 = MEMORY[0x277D6CE70];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_219BE5054();
    v4 = MEMORY[0x277D6CE68];
  }

  v5 = *v4;
  v6 = sub_219BE2C74();
  v7 = *(*(v6 - 8) + 104);

  return v7(a3, v5, v6);
}

uint64_t sub_21881E51C@<X0>(unint64_t *a1@<X0>, void (*a2)(id)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a1 >> 62;
  if (v5)
  {
    if (v5 == 1)
    {
      if (qword_280E8D830 != -1)
      {
        swift_once();
      }

      sub_2186F20D4(0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_219C09BA0;
      v8 = MEMORY[0x277D839F0];
      *(v7 + 56) = MEMORY[0x277D839B0];
      *(v7 + 64) = v8;
      *(v7 + 32) = (v4 & 1) == 0;
      sub_219BF6214();
      sub_219BE5314("Finished extended launch test with content=%d", v25);

      v9 = 0;
      if (v4)
      {
        v10 = objc_allocWithZone(MEMORY[0x277D6D138]);
        v11 = sub_219BF53D4();
        v9 = [v10 initWithMessage_];
      }

      a2(v9);

      v12 = MEMORY[0x277D6CE68];
    }

    else
    {
      v12 = MEMORY[0x277D6CE70];
    }

    v22 = *v12;
    v23 = sub_219BE2C74();
    v24 = *(*(v23 - 8) + 104);

    return v24(a3, v22, v23);
  }

  else
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v13 = qword_280F61728;
    v14 = sub_219BF61F4();
    sub_2186F20D4(0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C09BA0;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_2186FC3BC();
    *(v15 + 32) = 0;
    *(v15 + 40) = 0xE000000000000000;
    sub_219BE5314("Finished extended launch test with error, %@", 44, 2, &dword_2186C1000, v13, v14, v15);

    sub_219BF7484();
    v16 = objc_allocWithZone(MEMORY[0x277D6D138]);
    v17 = sub_219BF53D4();

    v18 = [v16 initWithMessage_];

    a2(v18);
    v19 = *MEMORY[0x277D6CE68];
    v20 = sub_219BE2C74();
    return (*(*(v20 - 8) + 104))(a3, v19, v20);
  }
}

void sub_21881E8EC(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21881E98C(v2, *a1, &v9);
  if (v10 == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0uLL;
  }

  else
  {
    v4 = v9;
    v5 = v11;
    v8 = v10;
    swift_beginAccess();
    v7 = *(v2 + 16);
    *(v2 + 16) = 0;

    v6 = v8;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 24) = v5;
}

double sub_21881E98C@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = v6;
    NewsActivityInfoDeserializer.deserialize(userActivity:)(v7, &v14);

    if ((~v14 & 0xF000000000000007) != 0)
    {
      if (a2 == 7 && ((v14 >> 58) & 0x3C | (v14 >> 1) & 3) == 0x11)
      {
        v8 = *((v14 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v9 = *((v14 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v10 = *((v14 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v11 = *((v14 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v12 = v14;
        sub_2188382C8(v8, v9);
        result = sub_218970170(v12);
        *a3 = v8;
        a3[1] = v9;
        a3[2] = v10;
        a3[3] = v11;
        return result;
      }

      sub_218970170(v14);
    }
  }

  result = 0.0;
  *a3 = xmmword_219C14A10;
  a3[2] = 0;
  a3[3] = 0;
  return result;
}

uint64_t UISceneActivationState.description.getter(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x756F72676B636162;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0xD000000000000012;
  }

  else
  {
    if (a1 != -1)
    {
      if (!a1)
      {
        return 0xD000000000000010;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6863617474616E75;
  }
}

uint64_t sub_21881EB34(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21881EB4C(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = type metadata accessor for TodayExpandContext(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = *a1;
  v31 = a1[1];
  v32 = v8;
  v9 = [*(v3 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_subscriptionList) subscribedTagIDs];
  if (v9)
  {
    v10 = v9;
    v29 = sub_219BF5D44();
  }

  else
  {
    v29 = 0;
  }

  v28 = *(v3 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_sharedItemAdditions);
  sub_219BED5B4();
  sub_2187D9028();
  v11 = sub_219BF66A4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE21A4();

  __swift_destroy_boxed_opaque_existential_1(v33);
  v12 = CACurrentMediaTime();
  MEMORY[0x28223BE20](v13);
  *(&v27 - 2) = v3;
  sub_21881F258(0, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
  sub_219BE3204();
  v14 = sub_219BF66A4();
  sub_218820178(a2, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayExpandContext);
  v15 = (*(v30 + 80) + 88) & ~*(v30 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = 0x6D726177657270;
  *(v16 + 32) = 0xE700000000000000;
  v17 = v28;
  *(v16 + 40) = v29;
  *(v16 + 48) = v17;
  v18 = v32;
  *(v16 + 72) = v31;
  *(v16 + 56) = v18;
  sub_2188201E0(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for TodayExpandContext);
  type metadata accessor for TodayExpandResult(0);

  sub_219BE2F84();

  v19 = sub_219BE1C44();
  v20 = swift_allocObject();
  v20[2] = v12;
  v20[3] = 1.31042609e-306;
  v20[4] = -1.39234638e188;
  type metadata accessor for TodayPrewarmResult(0);
  sub_219BE2F94();

  v21 = sub_219BE1C44();
  v22 = swift_allocObject();
  v22[2] = v12;
  v22[3] = 1.31042609e-306;
  v22[4] = -1.39234638e188;
  sub_219BE2FE4();

  v23 = sub_219BE2E54();
  sub_219BE3034();

  v24 = sub_219BF66A4();
  v25 = sub_219BE3034();

  return v25;
}

uint64_t sub_21881F02C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21881F064()
{
  v1 = (type metadata accessor for TodayExpandContext(0) - 8);
  v2 = (*(*v1 + 80) + 88) & ~*(*v1 + 80);

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

uint64_t sub_21881F1A4()
{

  return swift_deallocObject();
}

uint64_t sub_21881F1E4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  return sub_21881EB4C(v4, v1);
}

void sub_21881F258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_21881F304()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for TodayFeedServiceContext(0);
  v30 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v29 - v5;
  sub_21880B9E0(0);
  v29[0] = *(v7 - 8);
  v8 = *(v29[0] + 64);
  MEMORY[0x28223BE20](v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v29 - v11;
  sub_219BF1B74();
  v13 = v6;
  v14 = v6;
  v15 = v0;
  sub_21881F92C(v14);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v16 = qword_280F616D8;
  sub_2186F20D4(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09BA0;
  v18 = sub_219BF1B24();
  v20 = v19;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_2186FC3BC();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  v21 = sub_219BF6214();
  sub_219BE5314("TodayFeed prewarm will readAndFetch with network state=%{public}@", 65, 2, &dword_2186C1000, v16, v21, v17);

  MEMORY[0x28223BE20](v22);
  v29[-2] = v15;
  v29[-1] = v13;
  sub_21881F258(0, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
  sub_219BE3204();
  sub_218820178(v12, v9, sub_21880B9E0);
  sub_218820178(v13, v3, type metadata accessor for TodayFeedServiceContext);
  v23 = (*(v29[0] + 80) + 16) & ~*(v29[0] + 80);
  v24 = (v8 + *(v30 + 80) + v23) & ~*(v30 + 80);
  v25 = swift_allocObject();
  sub_2188201E0(v9, v25 + v23, sub_21880B9E0);
  sub_2188201E0(v3, v25 + v24, type metadata accessor for TodayFeedServiceContext);
  v26 = sub_219BE2E54();
  v27 = sub_219BE3074();

  sub_218820248(v12, sub_21880B9E0);
  sub_218820248(v13, type metadata accessor for TodayFeedServiceContext);
  return v27;
}

uint64_t sub_21881F750()
{
  sub_21880B9E0(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for TodayFeedServiceContext(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = sub_219BF1584();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = v0 + ((v3 + v4 + v6) & ~v6);

  v10 = *(v5 + 36);
  v11 = sub_219BEE754();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  return swift_deallocObject();
}

id sub_21881F92C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BF0644();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v18[0] = *__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures), *(v1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures + 24));
  v10 = off_282A442B8;
  type metadata accessor for OfflineFeatures();
  if (v10(0) == 6)
  {
    v11 = sub_219BF1AE4();
    v12 = *(v4 + 104);
    if (v11)
    {
      v12(v9, *MEMORY[0x277D32EF8], v3);
      v13 = *MEMORY[0x277D32EF0];
    }

    else
    {
      v13 = *MEMORY[0x277D32EF0];
      v12(v9, v13, v3);
    }
  }

  else
  {
    v13 = *MEMORY[0x277D32EF0];
    v12 = *(v4 + 104);
    v12(v9, v13, v3);
  }

  v12(v6, v13, v3);
  sub_2187EA20C(&qword_280E90ED0, 255, MEMORY[0x277D32F00], MEMORY[0x277D32F18]);
  sub_219BF5874();
  sub_219BF5874();
  if (v18[0] == v17[0] && v18[1] == v17[1])
  {
    v14 = 0;
  }

  else if (sub_219BF78F4())
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(v4 + 8);
  v15(v6, v3);
  v15(v9, v3);

  LOBYTE(v18[0]) = v14;
  return sub_2187B7F10(v18, a1);
}

uint64_t sub_21881FC0C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for TodayFeedServiceContext(0);
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_219BF0644();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  sub_2187EA20C(&qword_280EC2DB0, 255, type metadata accessor for TodayFeedServiceContext, &unk_219C71E9C);
  sub_219BEF384();
  v18 = v5;
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D32EF0])
  {
    return sub_219BED5A4();
  }

  if (v10 == *MEMORY[0x277D32EF8])
  {
    MEMORY[0x28223BE20](v10);
    sub_219BE3204();
    sub_218820178(a1, &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayFeedServiceContext);
    v12 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v13 = swift_allocObject();
    sub_2188201E0(&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for TodayFeedServiceContext);
    v14 = sub_219BE2E54();
    sub_21881F258(0, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
    v15 = sub_219BE2F84();

    return v15;
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000015, 0x8000000219D1B0E0);
    v16 = v17;
    sub_219BEF384();
    sub_219BF7484();
    (*(v18 + 8))(v16, v4);
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_218820048()
{
  v1 = (type metadata accessor for TodayFeedServiceContext(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[11];
  v4 = sub_219BEE754();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_218820178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2188201E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218820248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188202A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Swift::Void __swiftcall AppDelegate.didCommitFirstFrame()()
{
  sub_2186C6E00(v4);
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_219BE27C4();
  v0 = sub_219BE1E24();
  if (v0)
  {
    v1 = v0;
    __swift_destroy_boxed_opaque_existential_1(v4);
    v2 = objc_opt_self();
    v6 = sub_219114810;
    v7 = v1;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_218793E0C;
    v5 = &block_descriptor_96;
    v3 = _Block_copy(v4);

    [v2 schedulePostLaunchBlockForMainThread_];
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

double sub_218820444(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = qword_280EE9308;

  if (v11 != -1)
  {
    swift_once();
  }

  type metadata accessor for DeleteWebDataStartupTask();
  sub_21879DD50(qword_280EC2338, v12, type metadata accessor for DeleteWebDataStartupTask, &unk_219C1B19C);
  v13 = sub_219BDC7D4();
  if (LOBYTE(v23[0]) == 1)
  {
    v14 = objc_opt_self();
    v15 = [v14 defaultDataStore];
    v16 = [v14 allWebsiteDataTypes];
    v17 = sub_219BF5D44();

    v18 = sub_219BF5D34();
    v19 = swift_allocObject();
    v19[2] = v15;
    v19[3] = v17;
    v19[4] = a1;
    v19[5] = sub_218B06728;
    v19[6] = v10;
    v23[4] = sub_218B0676C;
    v23[5] = v19;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 1107296256;
    v23[2] = sub_218B0665C;
    v23[3] = &block_descriptor_13_0;
    v20 = _Block_copy(v23);
    v21 = v15;

    [v21 fetchDataRecordsOfTypes:v18 completionHandler:v20];

    _Block_release(v20);
  }

  else
  {
    a2(v13);
  }

  return result;
}

uint64_t sub_2188206D4()
{

  return swift_deallocObject();
}

uint64_t sub_218820714()
{

  return swift_deallocObject();
}

uint64_t sub_218820764()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[15] = 1;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62880 = result;
  return result;
}

void sub_218820974(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_2188209D4();
  swift_unknownObjectRelease();
}

uint64_t sub_2188209D4()
{
  v1 = v0;
  v60 = *MEMORY[0x277D85000] & *v0;
  v2 = MEMORY[0x277D83D88];
  sub_2187DD4F0(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = v55 - v4;
  v66 = sub_219BE3984();
  v74 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = v55 - v7;
  sub_2187DD4F0(0, &qword_280EE65C0, MEMORY[0x277D31758], v2);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = v55 - v9;
  v82 = sub_219BE38C4();
  v10 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v73 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = v55 - v13;
  v14 = sub_219BE3514();
  v15 = *(v14 - 8);
  v16 = v15;
  MEMORY[0x28223BE20](v14);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187DD4F0(0, &qword_280E8C060, MEMORY[0x277D31550], MEMORY[0x277D84560]);
  v19 = *(v15 + 72);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v56 = swift_allocObject();
  v21 = v56 + v20;
  v22 = *(v15 + 104);
  v22(v56 + v20, *MEMORY[0x277D314C8], v14);
  v23 = *MEMORY[0x277D314D0];
  v80 = v19;
  v22(v21 + v19, v23, v14);
  v22(v21 + 2 * v19, *MEMORY[0x277D314D8], v14);
  v24 = v14;
  v25 = *v1;
  v26 = *MEMORY[0x277D85000];
  v83 = *((*MEMORY[0x277D85000] & *v1) + 0x110);
  v58 = *((v26 & v25) + 0x70);
  v57 = *((v26 & v25) + 0x68);
  v27 = *(v16 + 16);
  v78 = (v10 + 48);
  v79 = v27;
  v70 = (v10 + 16);
  v71 = (v10 + 32);
  v69 = (v10 + 88);
  v68 = *MEMORY[0x277D31720];
  v67 = (v10 + 8);
  v81 = v16 + 16;
  v77 = (v16 + 8);
  v63 = *MEMORY[0x277D317B0];
  v62 = (v74 + 13);
  v28 = (v74 + 1);
  v29 = 3;
  v55[1] = v21;
  v30 = v21;
  v74 = v1;
  v72 = v14;
  do
  {
    v31 = v28;
    v79(v18, v30, v24);
    sub_218718690(v1 + v83, v84);
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v32 = v76;
    sub_219BE3AC4();
    v33 = v32;
    v34 = v32;
    v35 = v82;
    if ((*v78)(v34, 1, v82) == 1)
    {
      (*v77)(v18, v24);
      sub_218817724(v33, &qword_280EE65C0, MEMORY[0x277D31758]);
      __swift_destroy_boxed_opaque_existential_1(v84);
    }

    else
    {
      v36 = v75;
      (*v71)(v75, v33, v35);
      __swift_destroy_boxed_opaque_existential_1(v84);
      v37 = v73;
      (*v70)(v73, v36, v35);
      v38 = (*v69)(v37, v35);
      if (v38 == v68)
      {
        sub_218718690(v1 + v83, v84);
        __swift_project_boxed_opaque_existential_1(v84, v85);
        v39 = v64;
        sub_219BE3A84();
        __swift_destroy_boxed_opaque_existential_1(v84);
        v40 = v65;
        v41 = v66;
        (*v62)(v65, v63, v66);
        v42 = sub_219BE3974();
        v43 = v40;
        v28 = v31;
        v44 = *v31;
        v44(v43, v41);
        if (v42)
        {
          v45 = sub_219BE34F4();
          v47 = v46;
          v48 = sub_219BEEC14();
          v49 = v59;
          (*(*(v48 - 8) + 56))(v59, 1, 1, v48);
          v50 = (*(*(v60 + 88) + 96))(v45, v47, v49, *(v60 + 80));
          v61 = v50;

          sub_218817724(v49, &qword_280E918A8, MEMORY[0x277D322C0]);
          v84[0] = v50;
          v51 = MEMORY[0x277D6D888];
          sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
          v1 = v74;
          sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v51, MEMORY[0x277D6D890]);
          sub_219BE6EF4();
          v44(v39, v66);
          (*v67)(v75, v82);
          v24 = v72;
          (*v77)(v18, v72);
        }

        else
        {
          v44(v39, v41);
          (*v67)(v75, v35);
          v24 = v72;
          (*v77)(v18, v72);
        }
      }

      else
      {
        v52 = v35;
        v53 = *v67;
        (*v67)(v36, v52);
        v24 = v72;
        (*v77)(v18, v72);
        v53(v37, v52);
        v1 = v74;
      }
    }

    v30 += v80;
    --v29;
  }

  while (v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  return swift_deallocClassInstance();
}

uint64_t sub_2188213BC()
{
  v0 = sub_219BE9884();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 isRunningPerformanceTest];

  if (v8)
  {
    sub_219BE9874();
    (*(v1 + 16))(v3, v6, v0);
    sub_218821584(0);
    swift_allocObject();
    v9 = sub_219BE3014();
    (*(v1 + 8))(v6, v0);
    return v9;
  }

  else
  {
    sub_218821584(0);
    swift_allocObject();
    return sub_219BE30B4();
  }
}

void sub_218821584(uint64_t a1)
{
  if (!qword_280EE7020)
  {
    sub_219BE9884();
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7020);
    }
  }
}

uint64_t sub_2188215DC(uint64_t a1)
{
  if (qword_280EE92E0 != -1)
  {
    swift_once();
  }

  sub_218821894(qword_280E99138, &unk_219C2D7A8);
  sub_219BDC7D4();
  sub_21870F384(0, &qword_280EE69D8, MEMORY[0x277D83B88], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2188216C8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[1] = 0;
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62868 = result;
  return result;
}

uint64_t sub_218821894(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PresentationOperationManagerDataStore();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2188218F8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088, MEMORY[0x277D837D0], MEMORY[0x277D6D0D8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62878 = result;
  return result;
}

id sub_218821AC8()
{
  if (qword_280EE92F8 != -1)
  {
    swift_once();
  }

  sub_218821894(qword_280E99138, &unk_219C2D7A8);
  sub_219BDC7D4();
  v0 = v18[0];
  result = FCBundle();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = sub_219BF53D4();
  v4 = [v2 objectForInfoDictionaryKey_];

  if (v4)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v14;
      v5 = v15;
      goto LABEL_12;
    }
  }

  else
  {
    sub_218806FD0(v18);
  }

  v6 = 0;
  v5 = 0xE000000000000000;
LABEL_12:
  v7 = &qword_280EE9000;
  if (v0 == __PAIR128__(v5, v6) || (sub_219BF78F4() & 1) != 0)
  {
  }

  else
  {
    if (qword_27CC085B8 != -1)
    {
      swift_once();
    }

    v8 = sub_219BE5434();
    __swift_project_value_buffer(v8, qword_27CCD8AC8);

    v9 = sub_219BE5414();
    v10 = sub_219BF61D4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v18[0] = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_2186D1058(v6, v5, v18);
      *(v11 + 12) = 2080;
      v12 = sub_2186D1058(v0, *(&v0 + 1), v18);

      *(v11 + 14) = v12;
      _os_log_impl(&dword_2186C1000, v9, v10, "The current app version is %s, but our stored app launch count is for version %s.\nResetting the Presentation Operation app launch count to 0.", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v13, -1, -1);
      MEMORY[0x21CECF960](v11, -1, -1);
    }

    else
    {
    }

    if (qword_280EE92D0 != -1)
    {
      swift_once();
    }

    *&v18[0] = 0;
    sub_218821894(&qword_280E99130, &unk_219C2D7E8);
    sub_219BDCA54();
    *&v18[0] = v6;
    *(&v18[0] + 1) = v5;
    sub_219BDCA54();

    v7 = &qword_280EE9000;
  }

  if (v7[90] != -1)
  {
    swift_once();
  }

  sub_219BDC7D4();
  sub_21870F384(0, &qword_280EE69D8, MEMORY[0x277D83B88], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218821F6C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[1] = 0;
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62860 = result;
  return result;
}

uint64_t sub_218822184(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_219BF5474();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_218821894(qword_280E99138, &unk_219C2D7A8);
  sub_219BDC7D4();
  v9 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v9 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    sub_219BF5464();
    v10 = sub_219BF5424();
    v12 = v11;

    (*(v6 + 8))(v8, v5);
    if (v12 >> 60 != 15)
    {
      sub_219BE1994();
      swift_allocObject();
      sub_219BE1984();
      sub_218822764();
      sub_2188229E0();
      sub_219BE1974();

      sub_2186DD368(0, &qword_280EE6B98, sub_218822764, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v13 = sub_219BE3014();
      sub_218822A58(v10, v12);
      return v13;
    }
  }

  else
  {
  }

  v16 = MEMORY[0x277D84F98];
  sub_2186DD368(0, &qword_280EE6B98, sub_218822764, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218822594()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088, MEMORY[0x277D837D0], MEMORY[0x277D6D0D8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62890 = result;
  return result;
}

void sub_218822764()
{
  if (!qword_280E8FAC8)
  {
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FAC8);
    }
  }
}

uint64_t sub_218822810()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088, MEMORY[0x277D837D0], MEMORY[0x277D6D0D8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62888 = result;
  return result;
}

unint64_t sub_2188229E0()
{
  result = qword_280E8FAB0;
  if (!qword_280E8FAB0)
  {
    sub_218822764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FAB0);
  }

  return result;
}

uint64_t sub_218822A5C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2186C6190(result, a2);
  }

  return result;
}

uint64_t sub_218822A94()
{
  v0 = sub_219BF5474();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE92E8 != -1)
  {
    swift_once();
  }

  sub_218821894(qword_280E99138, &unk_219C2D7A8);
  sub_219BDC7D4();
  v4 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v4 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_219BF5464();
    v5 = sub_219BF5424();
    v7 = v6;

    (*(v1 + 8))(v3, v0);
    if (v7 >> 60 != 15)
    {
      sub_219BE1994();
      swift_allocObject();
      sub_219BE1984();
      sub_2186E2394();
      sub_218CD1C30();
      sub_219BE1974();

      sub_2186DD368(0, &qword_280EE69E0, sub_2186E2394, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v8 = sub_219BE3014();
      sub_218822A58(v5, v7);
      return v8;
    }
  }

  else
  {
  }

  v11 = MEMORY[0x277D84FA0];
  sub_2186DD368(0, &qword_280EE69E0, sub_2186E2394, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218822EA0()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088, MEMORY[0x277D837D0], MEMORY[0x277D6D0D8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62870 = result;
  return result;
}

uint64_t sub_218823094(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  sub_218821894(&qword_280E99130, &unk_219C2D7E8);
  sub_219BDCA54();
  sub_21870F384(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_2188231F0()
{
  v1 = sub_219BE7D04();
  v12 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = sub_219BE3DF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_219BE44E4();
  sub_218823400();
  (*(v8 + 8))(v10, v7);
  if ((*(v0 + 72) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 32), *(v0 + 56));
    sub_2187B9A9C(&v13);
    if (v13 != 3)
    {
      sub_219BE7CD4();
      sub_21922185C(v6, v3);
      v11 = *(v12 + 8);
      v11(v3, v1);
      v11(v6, v1);
    }
  }
}

uint64_t sub_218823400()
{
  v1 = sub_219BE3DA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_219BE3DF4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v0, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == *MEMORY[0x277D34E38])
  {
    (*(v9 + 96))(v12, v8);
    (*(v2 + 32))(v7, v12, v1);
    (*(v2 + 16))(v4, v7, v1);
    v14 = (*(v2 + 88))(v4, v1);
    if (v14 == *MEMORY[0x277D34E28])
    {
      sub_218823ADC(0, &unk_280E8BE50, MEMORY[0x277D84560]);
      sub_219BE7D04();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_219C09EC0;
      sub_219BE7CC4();
      sub_219BE7CB4();
      v22 = v15;
LABEL_4:
      sub_218823A94(&qword_280EE4E38, MEMORY[0x277D6DD18], MEMORY[0x277D6DD28]);
      sub_218823ADC(0, &unk_280E8F4D0, MEMORY[0x277D83940]);
      sub_218823B3C();
      sub_219BF7164();
LABEL_9:
      v19 = *(v2 + 8);
      v19(v7, v1);
      return (v19)(v4, v1);
    }

    if (v14 == *MEMORY[0x277D34E20])
    {
      sub_219BE7CB4();
      goto LABEL_9;
    }

    if (v14 != *MEMORY[0x277D34E18])
    {
      sub_219BE7D04();
      v22 = MEMORY[0x277D84F90];
      goto LABEL_4;
    }

    sub_218823ADC(0, &unk_280E8BE50, MEMORY[0x277D84560]);
    sub_219BE7D04();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C09EC0;
    sub_219BE7CE4();
    sub_219BE7CB4();
    v22 = v20;
    sub_218823A94(&qword_280EE4E38, MEMORY[0x277D6DD18], MEMORY[0x277D6DD28]);
    sub_218823ADC(0, &unk_280E8F4D0, MEMORY[0x277D83940]);
    sub_218823B3C();
    sub_219BF7164();
    return (*(v2 + 8))(v7, v1);
  }

  else
  {
    v16 = v13;
    v17 = *MEMORY[0x277D34E30];
    sub_219BE7D04();
    v22 = MEMORY[0x277D84F90];
    sub_218823A94(&qword_280EE4E38, MEMORY[0x277D6DD18], MEMORY[0x277D6DD28]);
    sub_218823ADC(0, &unk_280E8F4D0, MEMORY[0x277D83940]);
    sub_218823B3C();
    if (v16 == v17)
    {
      return sub_219BF7164();
    }

    else
    {
      sub_219BF7164();
      return (*(v9 + 8))(v12, v8);
    }
  }
}

uint64_t sub_218823A94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218823ADC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_219BE7D04();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218823B3C()
{
  result = qword_280E8F4C8;
  if (!qword_280E8F4C8)
  {
    sub_218823ADC(255, &unk_280E8F4D0, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F4C8);
  }

  return result;
}

uint64_t sub_218823BD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  sub_219BF5244();
  sub_218821894(&qword_280E99130, &unk_219C2D7E8);
  sub_219BDCA54();

  sub_21870F384(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_218823CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_219C0B8C0;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_2186FC3BC();
    *(v7 + 32) = a2;
    *(v7 + 40) = a3;
    *(v7 + 96) = sub_219BE5A54();
    *(v7 + 104) = sub_2187BB0F4(&unk_280EE5E00, MEMORY[0x277D6D2E0], MEMORY[0x277D85388]);
    *(v7 + 72) = v6;

    v8 = v6;
    v9 = [v8 isKeyWindow];
    v10 = MEMORY[0x277D839F0];
    *(v7 + 136) = MEMORY[0x277D839B0];
    *(v7 + 144) = v10;
    *(v7 + 112) = v9;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v11 = sub_219BF6F44();
    v12 = sub_219BF6214();
    sub_219BE5314("Application finished bootstrapping, sceneSession=%{public}@, window=%@, windowIsKey=%d", 86, 2, &dword_2186C1000, v11, v12, v7);

    sub_219BDCE74();
    v13 = sub_219BDCE64();
    sub_219BDCE54();

    v14 = objc_opt_self();
    v15 = v8;
    v16 = [v14 blackColor];
    [v15 setBackgroundColor_];
  }
}

void sub_218823F0C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v3 = sub_219BE5434();
    __swift_project_value_buffer(v3, qword_280F62730);
    v4 = sub_219BE5414();
    v5 = sub_219BF6214();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2186C1000, v4, v5, "Sports sync manager waiting for tracking consent...done", v6, 2u);
      MEMORY[0x21CECF960](v6, -1, -1);
    }

    sub_218824030();
    dispatch_group_leave(*&v2[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_prepareSyncingGroup]);
  }
}

void sub_218824030()
{
  v1 = v0;
  v2 = CACurrentMediaTime();
  sub_219BE2104();
  __swift_destroy_boxed_opaque_existential_1(&v27);
  v3 = objc_opt_self();
  v4 = [v3 sharedAccount];
  v5 = [v4 isUserSignedInToiCloud];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  LOBYTE(v27) = v6;
  sub_218824520();
  sub_219BE2114();
  v7 = [v3 sharedAccount];
  [v7 addObserver_];

  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_280F62730);
  v9 = sub_219BE5414();
  v10 = sub_219BF6214();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2186C1000, v9, v10, "Sports sync manager preparing subscriptions for syncing...", v11, 2u);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  v12 = sub_218824D4C();
  [v12 setSuspended_];

  v13 = *(v1 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_prepareSyncingGroup);
  dispatch_group_enter(v13);
  v14 = *(v1 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_subscriptionController);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v15 = sub_219BF66A4();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v2;
  v31 = sub_218838E50;
  v32 = v17;
  v27 = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_218838DAC;
  v30 = &block_descriptor_43;
  v18 = _Block_copy(&v27);

  [v14 fetchSubscribedTagsWithCallbackQueue:v15 preferCache:0 completion:v18];
  _Block_release(v18);

  v19 = sub_219BE5414();
  v20 = sub_219BF6214();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2186C1000, v19, v20, "Sports sync manager preparing user info for syncing...", v21, 2u);
    MEMORY[0x21CECF960](v21, -1, -1);
  }

  dispatch_group_enter(v13);
  v22 = *(v1 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v2;
  v31 = sub_218824E5C;
  v32 = v24;
  v27 = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_218793E0C;
  v30 = &block_descriptor_15_1;
  v25 = _Block_copy(&v27);

  [v22 performFirstSyncWithCompletion_];
  _Block_release(v25);
  sub_218825828();
  v26 = NewsCoreUserDefaults();
  [v26 addObserver:v1 forKeyPath:*MEMORY[0x277D30C90] options:3 context:0];
}

uint64_t sub_2188244AC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188244E4()
{

  return swift_deallocObject();
}

unint64_t sub_218824520()
{
  result = qword_280EC31E8;
  if (!qword_280EC31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC31E8);
  }

  return result;
}

uint64_t sub_218824574(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E4964656E676973;
  if (v2 != 1)
  {
    v4 = 0x754F64656E676973;
    v3 = 0xE900000000000074;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D72657465646E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC00000064656E69;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E4964656E676973;
  if (*a2 != 1)
  {
    v8 = 0x754F64656E676973;
    v7 = 0xE900000000000074;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D72657465646E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC00000064656E69;
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

void sub_218824684(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = 0xE800000000000000;
  v5 = 0x6E4964656E676973;
  if (v2 != 1)
  {
    v5 = 0x754F64656E676973;
    v4 = 0xE900000000000074;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6D72657465646E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC00000064656E69;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6E4964656E676973;
  if (v3 != 1)
  {
    v9 = 0x754F64656E676973;
    v8 = 0xE900000000000074;
  }

  if (*a2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6D72657465646E75;
  }

  if (*a2)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xEC00000064656E69;
  }

  if (v6 == v10 && v7 == v11)
  {
  }

  else
  {
    v12 = sub_219BF78F4();

    if ((v12 & 1) == 0)
    {
      if (qword_280EE6038 != -1)
      {
        swift_once();
      }

      v13 = sub_219BE5434();
      __swift_project_value_buffer(v13, qword_280F62730);
      oslog = sub_219BE5414();
      v14 = sub_219BF6214();
      if (os_log_type_enabled(oslog, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v28 = v16;
        *v15 = 136446466;
        v17 = 0xE800000000000000;
        v18 = 0x6E4964656E676973;
        if (v2 != 1)
        {
          v18 = 0x754F64656E676973;
          v17 = 0xE900000000000074;
        }

        if (v2)
        {
          v19 = v18;
        }

        else
        {
          v19 = 0x6D72657465646E75;
        }

        if (v2)
        {
          v20 = v17;
        }

        else
        {
          v20 = 0xEC00000064656E69;
        }

        v21 = sub_2186D1058(v19, v20, &v28);

        *(v15 + 4) = v21;
        *(v15 + 12) = 2082;
        v22 = 0xE800000000000000;
        v23 = 0x6E4964656E676973;
        if (v3 != 1)
        {
          v23 = 0x754F64656E676973;
          v22 = 0xE900000000000074;
        }

        if (v3)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0x6D72657465646E75;
        }

        if (v3)
        {
          v25 = v22;
        }

        else
        {
          v25 = 0xEC00000064656E69;
        }

        v26 = sub_2186D1058(v24, v25, &v28);

        *(v15 + 14) = v26;
        _os_log_impl(&dword_2186C1000, oslog, v14, "Sports sync manager iCloud account change, previous=%{public}s, current=%{public}s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v16, -1, -1);
        MEMORY[0x21CECF960](v15, -1, -1);
      }

      else
      {
      }
    }
  }
}

void *sub_2188249B8(uint64_t a1, uint64_t a2)
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

  sub_2186D0D3C(0, &unk_280E8B5B8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_218824A44(uint64_t a1, unint64_t a2)
{
  v3 = sub_218824A90(a1, a2);
  sub_218824C60(&unk_282A21A08);
  return v3;
}

void *sub_218824A90(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2188249B8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_219BF73B4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_219BF55C4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2188249B8(v10, 0);
        result = sub_219BF7304();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_218824BC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_218824C10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_218824C60(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_218828394(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

id sub_218824D4C()
{
  v1 = OBJC_IVAR____TtC7NewsUI217SportsSyncManager____lazy_storage___operationQueue;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager____lazy_storage___operationQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager____lazy_storage___operationQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    v5 = sub_219BF53D4();
    [v4 setName_];

    [v4 setMaxConcurrentOperationCount_];
    [v4 setUnderlyingQueue_];
    [v4 setQualityOfService_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_218824E68(uint64_t a1, double a2)
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
      _os_log_impl(&dword_2186C1000, v5, v6, "Sports sync manager preparing user info for syncing... done (time elapsed=%f)", v7, 0xCu);
      MEMORY[0x21CECF960](v7, -1, -1);
    }

    v9 = sub_218824D4C();
    [v9 setSuspended_];

    v10 = CACurrentMediaTime();
    v11 = sub_219BE5414();
    v12 = sub_219BF6214();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2186C1000, v11, v12, "Sports sync manager waiting to prepare for syncing", v13, 2u);
      MEMORY[0x21CECF960](v13, -1, -1);
    }

    v14 = swift_allocObject();
    *(v14 + 16) = v3;
    *(v14 + 24) = v10;
    v15 = v3;
    sub_2188250BC(sub_2188284A0, v14);
  }
}

uint64_t sub_218825084()
{

  return swift_deallocObject();
}

double sub_2188250BC(void (*a1)(), uint64_t a2)
{
  v4 = sub_219BED174();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED1D4();
  v15 = *(v7 - 8);
  v16 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_218825460(1u);
  if (a1)
  {
    v23 = a1;
    v24 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_218793E0C;
    v22 = &block_descriptor_25;
    a1 = _Block_copy(&aBlock);
  }

  [v10 setCompletionBlock_];
  _Block_release(a1);
  v11 = sub_218824D4C();
  [v11 addOperation_];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_2188400CC;
  v24 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_218793E0C;
  v22 = &block_descriptor_22_1;
  v13 = _Block_copy(&aBlock);

  sub_219BED1A4();
  v18 = MEMORY[0x277D84F90];
  sub_21874E0F0(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_21874E654(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  sub_219BF6654();
  _Block_release(v13);

  (*(v17 + 8))(v6, v4);
  (*(v15 + 8))(v9, v16);

  return result;
}

id sub_218825460(unsigned __int8 a1)
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62730);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    v7 = 0xEE006E6F6974617ALL;
    *v5 = 136446210;
    v8 = 0x696C616974696E69;
    v9 = 0x8000000219CEEFC0;
    v10 = 0xD00000000000001CLL;
    v11 = 0x8000000219CEEFA0;
    v12 = 0xD000000000000015;
    if (a1 != 3)
    {
      v12 = 0xD000000000000010;
      v11 = 0x8000000219CEEF80;
    }

    if (a1 != 2)
    {
      v10 = v12;
      v9 = v11;
    }

    if (!a1)
    {
      v8 = 0xD00000000000001ELL;
      v7 = 0x8000000219CEEFE0;
    }

    if (a1 <= 1u)
    {
      v13 = v8;
    }

    else
    {
      v13 = v10;
    }

    if (a1 <= 1u)
    {
      v14 = v7;
    }

    else
    {
      v14 = v9;
    }

    v15 = sub_2186D1058(v13, v14, &v23);

    *(v5 + 4) = v15;
    _os_log_impl(&dword_2186C1000, v3, v4, "Create sync state init operation on event=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  sub_218825794(0, &qword_280EE73F0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CCF0]);
  v19 = objc_allocWithZone(v18);
  v20 = sub_219BE27D4();
  [v20 setQueuePriority_];
  [v20 setQualityOfService_];
  v21 = sub_219BF53D4();
  [v20 setName_];

  return v20;
}

uint64_t sub_21882575C()
{

  return swift_deallocObject();
}

void sub_218825794(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_218825828()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = sub_219BE1854();
  [v2 addObserver:v0 selector:sel_handleSyncCompletionNotification name:v3 object:0];

  v4 = [v1 defaultCenter];
  v5 = sub_219BE1864();
  [v4 addObserver:v0 selector:sel_handleSyncSettingChangedNotification name:v5 object:0];

  v6 = [v1 defaultCenter];
  v7 = sub_219BE1834();
  [v6 addObserver:v0 selector:sel_handleiTunesAccountChanged name:v7 object:0];
}

uint64_t sub_218825978(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    v5 = v4;
    sub_219BE3204();
    *(swift_allocObject() + 16) = a2;
    v6 = sub_219BE2E54();
    type metadata accessor for SportsSyncManager();
    sub_219BE2F84();

    v7 = sub_219BE2E54();
    v8 = sub_219BE2FD4();

    return v8;
  }

  else
  {
    sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_218825B50(char a1)
{
  swift_getObjectType();
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62730);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    if (a1)
    {
      v7 = 0x73696C6863746177;
    }

    else
    {
      v7 = 1937204590;
    }

    if (a1)
    {
      v8 = 0xE900000000000074;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    v9 = sub_2186D1058(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2186C1000, v3, v4, "Sports sync manager checking for '%{public}s' access...", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  MEMORY[0x28223BE20](v10);
  sub_218825DB8(0);
  sub_219BE3204();
  *(swift_allocObject() + 16) = a1 & 1;
  v11 = sub_219BE2E54();
  v12 = sub_219BE2F84();

  return v12;
}