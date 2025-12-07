uint64_t sub_7CDD38()
{
  v87 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);

  *(v0 + 360) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C710, &qword_B309D0);
  v3 = swift_dynamicCast();
  v77 = *(v0 + 1064);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 944);
  v7 = *(v0 + 888);
  v8 = *(v0 + 616);
  if (v3)
  {
    v9 = *(v0 + 912);
    v10 = *(v0 + 640);

    v74 = *(v0 + 321);
    v4(v10, v5, v8);
    v77(v9, v6, v7);
    v11 = sub_AB4BA0();
    v12 = sub_AB9F50();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1080);
    v16 = *(v0 + 912);
    v17 = *(v0 + 888);
    v18 = *(v0 + 640);
    v19 = *(v0 + 616);
    if (v13)
    {
      v78 = *(v0 + 640);
      v20 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v20 = 136446466;
      sub_7D2FFC(&qword_E18218, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v69 = v19;
      v71 = v15;
      v21 = sub_ABB330();
      v23 = v22;
      v14(v16, v17);
      v24 = sub_7AB3E0(v21, v23, v86);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v0 + 322) = v74;
      v25 = sub_AB9350();
      v27 = sub_7AB3E0(v25, v26, v86);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_0, v11, v12, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v20, 0x16u);
      swift_arrayDestroy();

      v71(v78, v69);
    }

    else
    {

      v14(v16, v17);
      v15(v18, v19);
    }

    v82 = *(v0 + 1032);
    v42 = *(v0 + 768);
    v43 = *(v0 + 760);
    v44 = *(v0 + 672);
    v45 = *(v0 + 592);
    *v42 = v74;
    *(v42 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 384) = v45;
    sub_AB3990();

    *(v0 + 392) = v45;
    swift_getKeyPath();
    sub_AB39B0();

    sub_7D1A74(v45 + v82, v44, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1A74(v44, v43, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D21C8(v42, v44, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v44, v43) & 1) == 0)
    {
      sub_7CA2A8();
    }

    v46 = *(v0 + 1032);
    v80 = *(v0 + 944);
    v83 = *(v0 + 1088);
    v75 = *(v0 + 888);
    v47 = *(v0 + 768);
    v48 = *(v0 + 720);
    v49 = *(v0 + 672);
    v50 = *(v0 + 592);
    sub_7D1ADC(*(v0 + 760), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1ADC(v47, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1A74(v50 + v46, v48, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_7D21C8(v49, v50 + v46, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_7C55D4(v48);
    sub_7D1ADC(v48, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1ADC(v49, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 408) = v50;
    swift_getKeyPath();
    sub_AB39A0();

    v83(v80, v75);
  }

  else
  {
    v28 = *(v0 + 904);
    v29 = *(v0 + 632);

    v4(v29, v5, v8);
    v77(v28, v6, v7);
    swift_errorRetain();
    v30 = sub_AB4BA0();
    v31 = sub_AB9F50();

    if (os_log_type_enabled(v30, v31))
    {
      v68 = *(v0 + 1088);
      v70 = *(v0 + 1128);
      v32 = *(v0 + 904);
      v33 = *(v0 + 888);
      v79 = *(v0 + 632);
      v81 = *(v0 + 1080);
      v72 = *(v0 + 616);
      v34 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v34 = 136446466;
      sub_7D2FFC(&qword_E18218, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v35 = sub_ABB330();
      v37 = v36;
      v68(v32, v33);
      v38 = sub_7AB3E0(v35, v37, v86);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v0 + 376) = v70;
      swift_errorRetain();
      v39 = sub_AB9350();
      v41 = sub_7AB3E0(v39, v40, v86);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_0, v30, v31, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v34, 0x16u);
      swift_arrayDestroy();

      v81(v79, v72);
    }

    else
    {
      v51 = *(v0 + 1088);
      v52 = *(v0 + 1080);
      v53 = *(v0 + 904);
      v54 = *(v0 + 888);
      v55 = *(v0 + 632);
      v56 = *(v0 + 616);

      v51(v53, v54);
      v52(v55, v56);
    }

    v84 = *(v0 + 1032);
    v57 = *(v0 + 752);
    v58 = *(v0 + 744);
    v59 = *(v0 + 664);
    v60 = *(v0 + 592);
    *v57 = 1;
    *(v57 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 344) = v60;
    sub_AB3990();

    *(v0 + 352) = v60;
    swift_getKeyPath();
    sub_AB39B0();

    sub_7D1A74(v60 + v84, v59, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1A74(v59, v58, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D21C8(v57, v59, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v59, v58) & 1) == 0)
    {
      sub_7CA2A8();
    }

    v85 = *(v0 + 1088);
    v61 = *(v0 + 1032);
    v73 = *(v0 + 888);
    v76 = *(v0 + 944);
    v62 = *(v0 + 752);
    v63 = *(v0 + 720);
    v64 = *(v0 + 664);
    v65 = *(v0 + 592);
    sub_7D1ADC(*(v0 + 744), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1ADC(v62, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1A74(v65 + v61, v63, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_7D21C8(v64, v65 + v61, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_7C55D4(v63);
    sub_7D1ADC(v63, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1ADC(v64, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 368) = v65;
    swift_getKeyPath();
    sub_AB39A0();

    v85(v76, v73);
  }

  v66 = *(v0 + 8);

  return v66();
}

id sub_7CE944(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_7CE9F4@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

uint64_t sub_7CEAB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060, &qword_B29C60);
  __chkstk_darwin();
  v48 = &v42[-v2];
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C58, &qword_B2B540);
  __chkstk_darwin();
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v42[-v7];
  v9 = type metadata accessor for MetricsEvent.Page(0);
  v49 = *(*(v9 - 8) + 56);
  v49(v8, 1, 1, v9);
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v52[0] = v1;
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v50 = v10;
  sub_AB3990();

  v11 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_7D1A74(v1 + v11, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(v4 + 1);
      v14 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v4[32] != 1)
      {
        sub_7D2DFC(*v4, v13, v14, v15, 0);
        sub_12E1C(v8, &qword_E17C58, &qword_B2B540);
        v19 = sub_AB31C0();
        v20 = *(*(v19 - 8) + 56);
        goto LABEL_24;
      }

      v44 = *v4;
      v45 = v13;
      v46 = v14;
      v47 = v15;
      swift_getKeyPath();
      v52[0] = v1;
      sub_AB3990();

      v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
      swift_beginAccess();
      v17 = *(v1 + v16);
      if (v17 && (v18 = [v17 vocalsControlCommand]) != 0)
      {
        v43 = [v18 isDisabled];
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 1;
      }

      swift_getKeyPath();
      v52[0] = v1;
      sub_AB3990();

      v21 = *(v1 + v16);
      if (v21)
      {
        v22 = [v21 playingItem];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 metadataObject];

          if (v24)
          {
            v25 = [v24 innermostModelObject];

            objc_opt_self();
            v26 = swift_dynamicCastObjCClass();
            if (v26)
            {
              v27 = [v26 lyrics];

              if (v27)
              {
                v28 = [v27 hasStoreLyrics];

                v29 = v28 ^ 1;
LABEL_20:
                static ApplicationCapabilities.shared.getter(v52);
                sub_70C54(v52);
                if (*(v44 + 56))
                {
                  v30 = (v52[2] == 1) & ~(v43 | v29);
                  if (*(v44 + 56) == 1)
                  {
                    sub_7D2DFC(v44, v45, v46, v47, 1);
                    sub_12E1C(v8, &qword_E17C58, &qword_B2B540);
                    v31 = sub_AB31C0();
                    v32 = v48;
                    (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
                    v33 = 0x8000000000B74CA0;
                    v41 = v30;
                    v34 = v6;
                    v35 = 0xD000000000000010;
                  }

                  else
                  {
                    sub_7D2DFC(v44, v45, v46, v47, 1);
                    sub_12E1C(v8, &qword_E17C58, &qword_B2B540);
                    v37 = sub_AB31C0();
                    v32 = v48;
                    (*(*(v37 - 8) + 56))(v48, 1, 1, v37);
                    v41 = v30;
                    v35 = 0x795373636972794CLL;
                    v33 = 0xEE00656C62616C6CLL;
                    v34 = v6;
                  }

                  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v35, v33, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v32, 0, 0, 0, v34, 1, 0, 0, v41);
                  goto LABEL_27;
                }

                sub_7D2DFC(v44, v45, v46, v47, 1);
                sub_12E1C(v8, &qword_E17C58, &qword_B2B540);
                v19 = sub_AB31C0();
                v20 = *(*(v19 - 8) + 56);
LABEL_24:
                v36 = v48;
                v20(v48, 1, 1, v19);
                MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(0x745373636972794CLL, 0xEC00000063697461, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v36, 0, 0, 0, v6, 1, 0, 0, 2);
LABEL_27:
                v49(v6, 0, 1, v9);
                sub_7D2EF8(v6, v8);
                v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38, &qword_B2B460) + 48);
                v39 = sub_AB86C0();
                (*(*(v39 - 8) + 8))(&v4[v38], v39);
                goto LABEL_28;
              }
            }

            else
            {
            }
          }
        }
      }

      v29 = 1;
      goto LABEL_20;
    }

    sub_12E1C(v8, &qword_E17C58, &qword_B2B540);
  }

  else
  {
    sub_12E1C(v8, &qword_E17C58, &qword_B2B540);
    sub_7D1ADC(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  }

  v49(v8, 1, 1, v9);
LABEL_28:
  sub_15F84(v8, v6, &qword_E17C58, &qword_B2B540);
  swift_getKeyPath();
  __chkstk_darwin();
  v51 = v1;
  sub_AB3980();

  sub_12E1C(v8, &qword_E17C58, &qword_B2B540);
  return sub_12E1C(v6, &qword_E17C58, &qword_B2B540);
}

uint64_t sub_7CF3DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18208, &qword_B2B810);
  __chkstk_darwin();
  v159 = &v151 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v160 = &v151 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B78, &qword_B2B380);
  __chkstk_darwin();
  v5 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v151 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C50, &qword_B2B510);
  __chkstk_darwin();
  v166 = &v151 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C48, &qword_B2B4E0);
  __chkstk_darwin();
  v165 = &v151 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B08, &qword_B2B200);
  __chkstk_darwin();
  v164 = &v151 - v10;
  v177 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v178 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v176 = &v151 - v12;
  __chkstk_darwin();
  v162 = &v151 - v13;
  v181 = sub_AB4BC0();
  v179 = *(v181 - 8);
  __chkstk_darwin();
  v180 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v168 = &v151 - v15;
  __chkstk_darwin();
  v163 = &v151 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD40, &qword_B2FA50);
  __chkstk_darwin();
  v169 = &v151 - v17;
  v173 = sub_AB3430();
  v172 = *(v173 - 8);
  __chkstk_darwin();
  v171 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_AB56F0();
  v174 = *(v175 - 8);
  __chkstk_darwin();
  v20 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v22 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_AB86C0();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_7D1A74(a1, v22, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_7D1ADC(v22, type metadata accessor for Lyrics.StateManager.State.Loading);
LABEL_11:
    v43 = v181;
    v42 = v179;
LABEL_12:
    v45 = Logger.lyrics.unsafeMutableAddressor();
    v46 = v180;
    (*(v42 + 16))(v180, v45, v43);
    v47 = v178;
    sub_7D1A74(v27, v178, type metadata accessor for Lyrics.StateManager.State);
    v48 = sub_AB4BA0();
    v49 = sub_AB9F50();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = v42;
      v52 = swift_slowAlloc();
      v185 = v52;
      *v50 = 136446210;
      sub_7D1A74(v47, v176, type metadata accessor for Lyrics.StateManager.State);
      v53 = sub_AB9350();
      v55 = v54;
      sub_7D1ADC(v47, type metadata accessor for Lyrics.StateManager.State);
      v56 = sub_7AB3E0(v53, v55, &v185);

      *(v50 + 4) = v56;
      _os_log_impl(&dword_0, v48, v49, "Skipping Reporting lyrics for state=%{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);

      return (*(v51 + 8))(v180, v181);
    }

    else
    {

      sub_7D1ADC(v47, type metadata accessor for Lyrics.StateManager.State);
      return (*(v42 + 8))(v46, v43);
    }
  }

  v152 = v7;
  v151 = v5;
  v28 = *(v22 + 1);
  v167 = *v22;
  v161 = v28;
  v29 = *(v22 + 2);
  v30 = *(v22 + 3);
  v31 = v22[32];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38, &qword_B2B460);
  (*(v24 + 32))(v26, &v22[*(v32 + 48)], v23);
  if ((sub_AB86B0() & 1) == 0)
  {
    (*(v24 + 8))(v26, v23);
    sub_7D2DFC(v167, v161, v29, v30, v31);
    goto LABEL_11;
  }

  v153 = v29;
  v154 = v30;
  v156 = v31;
  v157 = v26;
  v155 = v24;
  v158 = v23;
  v33 = v27 + *(v177 + 20);
  v34 = v174;
  v35 = v175;
  (v174[13])(v20, enum case for ScenePhase.active(_:), v175);
  v36 = sub_AB56E0();
  v34[1](v20, v35);
  if ((v36 & 1) == 0 || (v37 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(v33 + *(v37 + 20)) != 1) || *(v33 + *(v37 + 24)) != 1)
  {
    v44 = sub_7D2DFC(v167, v161, v153, v154, v156);
    (*(v155 + 8))(v157, v158, v44);
    goto LABEL_11;
  }

  v38 = v169;
  sub_15F84(v27 + *(v177 + 24), v169, &qword_E1AD40, &qword_B2FA50);
  v39 = v172;
  v40 = v173;
  v41 = (*(v172 + 48))(v38, 1, v173);
  v42 = v179;
  if (v41 == 1)
  {
    (*(v155 + 8))(v157, v158);
    sub_7D2DFC(v167, v161, v153, v154, v156);
    sub_12E1C(v38, &qword_E1AD40, &qword_B2FA50);
    v43 = v181;
    goto LABEL_12;
  }

  (*(v39 + 32))(v171, v38, v40);
  v58 = Logger.lyrics.unsafeMutableAddressor();
  v59 = *(v42 + 16);
  v60 = v163;
  v175 = v58;
  v61 = v181;
  v174 = v59;
  v169 = v42 + 16;
  (v59)(v163);
  v62 = v162;
  sub_7D1A74(v27, v162, type metadata accessor for Lyrics.StateManager.State);
  v63 = sub_AB4BA0();
  v64 = sub_AB9F50();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v185 = v66;
    *v65 = 136446210;
    sub_7D1A74(v62, v176, type metadata accessor for Lyrics.StateManager.State);
    v67 = sub_AB9350();
    v69 = v68;
    v61 = v181;
    sub_7D1ADC(v62, type metadata accessor for Lyrics.StateManager.State);
    v70 = v67;
    v42 = v179;
    v71 = sub_7AB3E0(v70, v69, &v185);

    *(v65 + 4) = v71;
    _os_log_impl(&dword_0, v63, v64, "Reporting lyrics for state=%{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
  }

  else
  {

    sub_7D1ADC(v62, type metadata accessor for Lyrics.StateManager.State);
  }

  v177 = *(v42 + 8);
  (v177)(v60, v61);
  v72 = v154;
  sub_AB33B0();
  v74 = -v73;
  v75 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
  v76 = v155;
  v77 = v164;
  v78 = v158;
  (*(v155 + 16))(v164, v157, v158);
  (*(v76 + 56))(v77, 0, 1, v78);
  sub_ABA410();
  swift_getKeyPath();
  v79 = v170;
  v185 = v170;
  v178 = sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  v80 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v81 = *(v79 + v80);
  if (v81)
  {
    v82 = v81;
    MPCPlayerResponseTracklist.currentPlayEvent.getter();
    v84 = v83;
  }

  else
  {
    v84 = 0;
  }

  [v75 setModelPlayEvent:v84];

  [v75 setVisibleDuration:v74];
  swift_getKeyPath();
  v180 = v75;
  v85 = v170;
  v184[4] = v170;
  sub_AB3990();

  v86 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  swift_beginAccess();
  v87 = v165;
  sub_15F84(v85 + v86, v165, &qword_E17C48, &qword_B2B4E0);
  v88 = type metadata accessor for Lyrics.Translation(0);
  v89 = (*(*(v88 - 8) + 48))(v87, 1, v88) != 1;
  sub_12E1C(v87, &qword_E17C48, &qword_B2B4E0);
  [v180 setDisplayTranslationEnabled:v89];
  swift_getKeyPath();
  v184[1] = v85;
  sub_AB3990();

  v90 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  v91 = v85 + v90;
  v92 = v166;
  sub_15F84(v91, v166, &qword_E17C50, &qword_B2B510);
  v93 = type metadata accessor for Lyrics.Transliteration(0);
  v94 = (*(*(v93 - 8) + 48))(v92, 1, v93) != 1;
  v95 = v180;
  sub_12E1C(v92, &qword_E17C50, &qword_B2B510);
  [v95 setDisplayTransliterationEnabled:v94];
  if (v156)
  {
    v96 = v167;
    v97 = v181;
    if (*(v167 + 24))
    {
      sub_7D2E9C(v167, v161, v153, v72, 1);

      v98 = sub_AB9260();
    }

    else
    {

      v98 = 0;
    }

    v107 = v160;
    [v180 setLyricsID:v98];

    (*(*v96 + 232))();
    v108 = sub_AB35A0();
    v109 = *(v108 - 8);
    if ((*(v109 + 48))(v107, 1, v108) == 1)
    {
      sub_12E1C(v107, &qword_E18208, &qword_B2B810);
      v110 = 0;
      v111 = v153;
      v112 = v161;
    }

    else
    {
      v113 = v152;
      sub_AB3570();
      (*(v109 + 8))(v107, v108);
      v114 = sub_AB34C0();
      v115 = *(v114 - 8);
      if ((*(v115 + 48))(v113, 1, v114) == 1)
      {
        sub_12E1C(v113, &qword_E17B78, &qword_B2B380);
        v110 = 0;
      }

      else
      {
        sub_AB34A0();
        (*(v115 + 8))(v113, v114);
        v110 = sub_AB9260();
      }

      v72 = v154;
      v111 = v153;
      v112 = v161;
      v97 = v181;
    }

    v95 = v180;
    [v180 setLanguage:v110];

    v119 = v167;
    [v95 setDisplayType:*(v167 + 56)];
    sub_7D2DFC(v119, v112, v111, v72, 1);
    v99 = v168;
  }

  else
  {
    v99 = v168;
    v97 = v181;
    if (v72 && v72[3])
    {

      v100 = sub_AB9260();
    }

    else
    {

      v100 = 0;
    }

    [v95 setLyricsID:v100];

    if (v72)
    {
      v101 = *(*v72 + 232);

      v103 = v159;
      v101(v102);

      v104 = sub_AB35A0();
      v105 = *(v104 - 8);
      if ((*(v105 + 48))(v103, 1, v104) == 1)
      {
        sub_12E1C(v103, &qword_E18208, &qword_B2B810);
        v106 = 0;
        v99 = v168;
        v97 = v181;
      }

      else
      {
        v116 = v151;
        sub_AB3570();
        (*(v105 + 8))(v103, v104);
        v117 = sub_AB34C0();
        v118 = *(v117 - 8);
        if ((*(v118 + 48))(v116, 1, v117) == 1)
        {
          sub_12E1C(v116, &qword_E17B78, &qword_B2B380);
          v106 = 0;
        }

        else
        {
          sub_AB34A0();
          (*(v118 + 8))(v116, v117);
          v106 = sub_AB9260();
        }

        v99 = v168;
        v72 = v154;
        v95 = v180;
        v97 = v181;
      }
    }

    else
    {
      v106 = 0;
    }

    [v95 setLanguage:v106];

    [v95 setDisplayType:0];
  }

  v120 = sub_AB9260();
  [v95 setFeatureName:v120];

  [v95 setUserPreferenceSyllable:2];
  swift_getKeyPath();
  v121 = v170;
  v182 = v170;
  sub_AB3990();

  [*(v121 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) recordLyricsViewEvent:v95];
  (v174)(v99, v175, v97);
  v122 = v95;
  v123 = sub_AB4BA0();
  v124 = sub_AB9F50();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v184[0] = swift_slowAlloc();
    *v125 = 136446978;
    v182 = [v122 displayType];
    type metadata accessor for MPCReportingLyricsViewEventDisplayType(0);
    v126 = sub_AB9350();
    v128 = sub_7AB3E0(v126, v127, v184);

    *(v125 + 4) = v128;
    *(v125 + 12) = 2082;
    v129 = [v122 lyricsID];
    if (v129)
    {
      v130 = v129;
      v131 = sub_AB92A0();
      v133 = v132;
    }

    else
    {
      v131 = 0;
      v133 = 0;
    }

    v182 = v131;
    v183 = v133;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DBB0, &qword_B32B20);
    v136 = sub_AB9350();
    v138 = sub_7AB3E0(v136, v137, v184);

    *(v125 + 14) = v138;
    *(v125 + 22) = 2082;
    [v122 visibleDuration];
    v139 = sub_AB9AA0();
    v141 = sub_7AB3E0(v139, v140, v184);

    *(v125 + 24) = v141;
    *(v125 + 32) = 2082;
    v142 = [v122 modelSong];
    if (v142)
    {
      v143 = v142;
      v144 = [v142 humanDescription];

      v145 = sub_AB92A0();
      v147 = v146;
    }

    else
    {
      v145 = 0;
      v147 = 0;
    }

    v182 = v145;
    v183 = v147;
    v148 = sub_AB9350();
    v150 = sub_7AB3E0(v148, v149, v184);

    *(v125 + 34) = v150;
    _os_log_impl(&dword_0, v123, v124, "Recorded PAF Event of type=%{public}s; id=%{public}s; duration=%{public}ss; song=%{public}s", v125, 0x2Au);
    swift_arrayDestroy();

    sub_7D2DFC(v167, v161, v153, v154, v156);
    v134 = v168;
    v135 = v181;
  }

  else
  {

    sub_7D2DFC(v167, v161, v153, v72, v156);
    v134 = v99;
    v135 = v97;
  }

  (v177)(v134, v135);
  (*(v172 + 8))(v171, v173);
  return (*(v155 + 8))(v157, v158);
}

uint64_t Lyrics.StateManager.deinit()
{
  sub_7D1ADC(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state, type metadata accessor for Lyrics.StateManager.State);

  sub_12E1C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song, &qword_E17B08, &qword_B2B200);
  sub_12E1C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation, &qword_E17C48, &qword_B2B4E0);
  sub_12E1C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration, &qword_E17C50, &qword_B2B510);
  sub_12E1C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage, &qword_E17C58, &qword_B2B540);

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v2 = sub_AB39D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Lyrics.StateManager.__deallocating_deinit()
{
  Lyrics.StateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_7D0E64(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_7D3534;

  return v6(a1);
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[4])
  {
    if (*(a2 + 32))
    {
      return *a2 == v3;
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = v3 == *a2 && a1[1] == *(a2 + 8);
  if (!v9 && (sub_ABB3C0() & 1) == 0 || (sub_12C848(v5, v7) & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    v10 = v6 == v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v6)
  {
    return v11;
  }

  else
  {
    return v8 == 0;
  }
}

BOOL _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO5ErrorO21__derived_enum_equalsySbAL_ALtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_13C80(0, &unk_E1E040, NSObject_ptr);
        return sub_ABA790() & 1;
      }

      return 0;
    }

    if (a1)
    {
      return a4 == 2 && a3 == 1;
    }

    return a4 == 2 && !a3;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a3 == a1;
  }
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB86C0();
  v37 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v36 - v7;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v36 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18230, &qword_B2B8B0);
  __chkstk_darwin();
  v13 = &v36 - v12;
  v15 = &v36 + *(v14 + 56) - v12;
  sub_7D1A74(a1, &v36 - v12, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_7D1A74(a2, v15, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_7D1A74(v13, v11, type metadata accessor for Lyrics.StateManager.State.Loading);
    v26 = *v11;
    v27 = v11[8];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_7D3250(v26, v27);
      goto LABEL_11;
    }

    v28 = *v15;
    v29 = v15[8];
    if (v27)
    {
      if (v27 == 1)
      {
        if (v29 == 1)
        {
          v30 = *v15;
          sub_13C80(0, &unk_E1E040, NSObject_ptr);
          v31 = sub_ABA790();
          sub_7D3250(v30, 1);
          sub_7D3250(v26, 1);
          if ((v31 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_9;
        }

        sub_7D3250(v28, v29);
        v28 = v26;
        LOBYTE(v29) = 1;
      }

      else if (v26)
      {
        if (v29 == 2 && v28 == &dword_0 + 1)
        {
          goto LABEL_9;
        }
      }

      else if (v29 == 2 && v28 == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v15[8])
    {
      if (v28 != v26)
      {
        goto LABEL_33;
      }

LABEL_9:
      sub_7D1ADC(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
      v24 = 1;
      return v24 & 1;
    }

    sub_7D3250(v28, v29);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_12E1C(v13, &qword_E18230, &qword_B2B8B0);
LABEL_34:
    v24 = 0;
    return v24 & 1;
  }

  sub_7D1A74(v13, v9, type metadata accessor for Lyrics.StateManager.State.Loading);
  v17 = *(v9 + 1);
  v38[0] = *v9;
  v38[1] = v17;
  v39 = v9[32];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38, &qword_B2B460) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v37 + 8))(&v9[v18], v4);
    sub_7D3220(v38);
    goto LABEL_11;
  }

  v19 = *(v15 + 1);
  v40[0] = *v15;
  v40[1] = v19;
  v41 = v15[32];
  v20 = v37;
  v21 = *(v37 + 32);
  v22 = &v9[v18];
  v23 = v36;
  v21(v36, v22, v4);
  v21(v6, &v15[v18], v4);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(v38, v40) & 1) == 0)
  {
    sub_7D3220(v40);
    sub_7D3220(v38);
    v32 = *(v20 + 8);
    v32(v6, v4);
    v32(v23, v4);
LABEL_33:
    sub_7D1ADC(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    goto LABEL_34;
  }

  v24 = sub_AB8650();
  sub_7D3220(v40);
  sub_7D3220(v38);
  v25 = *(v20 + 8);
  v25(v6, v4);
  v25(v23, v4);
  sub_7D1ADC(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
  return v24 & 1;
}

BOOL _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB3430();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD40, &qword_B2FA50);
  __chkstk_darwin();
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B370, &qword_B301F0);
  __chkstk_darwin();
  v12 = &v25 - v11;
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v26 = v5;
  v13 = type metadata accessor for Lyrics.StateManager.State(0);
  v14 = *(v13 + 20);
  v15 = a1 + v14;
  v16 = a2 + v14;
  if ((sub_AB56E0() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  if (*(v15 + *(v17 + 20)) != *(v16 + *(v17 + 20)) || *(v15 + *(v17 + 24)) != *(v16 + *(v17 + 24)))
  {
    return 0;
  }

  v18 = *(v13 + 24);
  v19 = *(v10 + 48);
  sub_15F84(a1 + v18, v12, &qword_E1AD40, &qword_B2FA50);
  sub_15F84(a2 + v18, &v12[v19], &qword_E1AD40, &qword_B2FA50);
  v20 = v26;
  v21 = *(v26 + 48);
  if (v21(v12, 1, v4) == 1)
  {
    if (v21(&v12[v19], 1, v4) == 1)
    {
      sub_12E1C(v12, &qword_E1AD40, &qword_B2FA50);
      return 1;
    }

    goto LABEL_10;
  }

  sub_15F84(v12, v9, &qword_E1AD40, &qword_B2FA50);
  if (v21(&v12[v19], 1, v4) == 1)
  {
    (*(v20 + 8))(v9, v4);
LABEL_10:
    sub_12E1C(v12, &qword_E1B370, &qword_B301F0);
    return 0;
  }

  (*(v20 + 32))(v7, &v12[v19], v4);
  sub_7D2FFC(&qword_E1B3A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v23 = sub_AB91C0();
  v24 = *(v20 + 8);
  v24(v7, v4);
  v24(v9, v4);
  sub_12E1C(v12, &qword_E1AD40, &qword_B2FA50);
  return (v23 & 1) != 0;
}

uint64_t sub_7D1A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_7D1ADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_7D1B40(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  Lyrics.StateManager.tracklist.setter(v1);
}

uint64_t sub_7D1BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB86C0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B08, &qword_B2B200);
  __chkstk_darwin();
  v9 = &v19 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18238, &qword_B2B8E0);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v13 = *(v12 + 56);
  sub_15F84(a1, &v19 - v10, &qword_E17B08, &qword_B2B200);
  sub_15F84(a2, &v11[v13], &qword_E17B08, &qword_B2B200);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_15F84(v11, v9, &qword_E17B08, &qword_B2B200);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v11[v13], v4);
      sub_7D2FFC(&qword_E18220, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v16 = sub_AB91C0();
      v17 = *(v5 + 8);
      v17(v7, v4);
      v17(v9, v4);
      sub_12E1C(v11, &qword_E17B08, &qword_B2B200);
      v15 = v16 ^ 1;
      return v15 & 1;
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    sub_12E1C(v11, &qword_E18238, &qword_B2B8E0);
    v15 = 1;
    return v15 & 1;
  }

  sub_12E1C(v11, &qword_E17B08, &qword_B2B200);
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_7D2114()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17BD0;

  return sub_7CA1FC();
}

uint64_t sub_7D21C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_7D2238(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State(319);
  if (v1 <= 0x3F)
  {
    sub_7D280C(319, &qword_E17C98, &type metadata accessor for Song);
    if (v2 <= 0x3F)
    {
      sub_7D280C(319, &qword_E17CA0, type metadata accessor for Lyrics.Translation);
      if (v3 <= 0x3F)
      {
        sub_7D280C(319, &qword_E17CA8, type metadata accessor for Lyrics.Transliteration);
        if (v4 <= 0x3F)
        {
          sub_7D280C(319, &unk_E17CB0, type metadata accessor for MetricsEvent.Page);
          if (v5 <= 0x3F)
          {
            sub_AB39D0();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_7D249C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD40, &qword_B2FA50);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_7D25FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD40, &qword_B2FA50);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_7D2754(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Lyrics.StateManager.State.Display(319);
    if (v2 <= 0x3F)
    {
      sub_7D280C(319, &unk_E18088, &type metadata accessor for Date);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_7D280C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_7D2860(uint64_t a1)
{
  sub_7D28CC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_7D28CC(uint64_t a1)
{
  if (!qword_E18140)
  {
    sub_AB86C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_E18140);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO5ErrorO(uint64_t a1)
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

uint64_t sub_7D2974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB56F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_7D2A54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_AB56F0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_7D2B0C(uint64_t a1)
{
  result = sub_AB56F0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy33_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_7D2C54()
{

  return swift_deallocObject();
}

uint64_t sub_7D2C8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E046C(a1, v4);
}

uint64_t sub_7D2D44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17BD0;

  return sub_E046C(a1, v4);
}

double sub_7D2DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }

  return result;
}

double sub_7D2E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_7D2EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C58, &qword_B2B540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_7D2F68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v2;
  v4 = v2;
}

uint64_t sub_7D2FFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_7D30B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = v2;
  v4 = v2;
}

uint64_t sub_7D30F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E065C(a1, v4);
}

uint64_t sub_7D31B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD40, &qword_B2FA50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_7D3250(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_7D3264(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_7D0E64(a1, v4);
}

uint64_t sub_7D3320()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17CF8;

  return sub_7C7EB4();
}

uint64_t sub_7D33D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_7D3438(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

void sub_7D347C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  *(v2 + v4) = v3;
}

char *VocalsAttenuationSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  v33.receiver = v4;
  v33.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v10 = static AccessibilityIdentifier.named(_:)(0xD000000000000017, 0x8000000000B74CC0);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v10, v11, v14, v12, v13);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v15 = qword_E73660;
  LOBYTE(v53[0]) = 1;
  *&v36 = 0x6F68706F7263694DLL;
  *(&v36 + 1) = 0xEA0000000000656ELL;
  *&v37 = qword_E73660;
  *(&v37 + 1) = 0x3FF0000000000000;
  v38 = 0;
  v39 = 0;
  v40 = 0x3FF0000000000000;
  v41 = 0;
  *&v42 = 0;
  *(&v42 + 1) = _swiftEmptyArrayStorage;
  v43 = 0;
  v44 = 0;
  v45 = 1;
  v46 = v36;
  v47 = v37;
  v52 = 1;
  v50 = v42;
  v51 = 0u;
  v16 = &v9[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  v48 = 0u;
  v49 = 0x3FF0000000000000uLL;
  swift_beginAccess();
  v17 = *v16;
  v18 = *(v16 + 2);
  v34[1] = *(v16 + 1);
  v34[2] = v18;
  v34[0] = v17;
  v19 = *(v16 + 3);
  v20 = *(v16 + 4);
  v21 = *(v16 + 5);
  v35 = v16[96];
  v34[4] = v20;
  v34[5] = v21;
  v34[3] = v19;
  v23 = *(v16 + 4);
  v22 = *(v16 + 5);
  v24 = *(v16 + 3);
  v54 = v16[96];
  v53[4] = v23;
  v53[5] = v22;
  v53[3] = v24;
  v25 = *v16;
  v26 = *(v16 + 2);
  v53[1] = *(v16 + 1);
  v53[2] = v26;
  v53[0] = v25;
  v27 = v51;
  *(v16 + 4) = v50;
  *(v16 + 5) = v27;
  v16[96] = v52;
  v28 = v47;
  *v16 = v46;
  *(v16 + 1) = v28;
  v29 = v49;
  *(v16 + 2) = v48;
  *(v16 + 3) = v29;
  v30 = v15;
  sub_7D38E4(v34, v32);
  sub_7A1348(&v36, v32);
  sub_7D3954(v53);
  sub_8AC5D4(v34);
  sub_7D3954(v34);
  sub_7A26D4(&v36);

  return v9;
}

void VocalsAttenuationSlider.accessibilitySliderCurrentPercentageValue.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

uint64_t sub_7D38E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18248, &qword_B2B8F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7D3954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18248, &qword_B2B8F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7D39E0()
{
  sub_7D50FC();
  result = sub_AB59E0();
  static AnyTransition.glowTextReveal = result;
  return result;
}

uint64_t *AnyTransition.glowTextReveal.unsafeMutableAddressor()
{
  if (qword_E169D8 != -1)
  {
    swift_once();
  }

  return &static AnyTransition.glowTextReveal;
}

double static AnyTransition.glowTextReveal.getter()
{
  if (qword_E169D8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t GlowTextRevealTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (sub_AB5DB0())
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18278, &qword_B2B920);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18280, &qword_B2B928);
  *(a3 + *(result + 36)) = v5;
  return result;
}

double (*GlowTextRevealEffectRenderer.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_7D5150;
}

void GlowTextRevealEffectRenderer.draw(layout:in:)(uint64_t a1, uint64_t *a2, double a3)
{
  v59 = a2;
  v58 = sub_AB5CC0();
  v52 = *(v58 - 8);
  __chkstk_darwin();
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18288, &qword_B2B930);
  v60 = *(v65 - 8);
  __chkstk_darwin();
  v63 = &v45 - v6;
  v67 = sub_AB6EA0();
  v51 = *(v67 - 8);
  __chkstk_darwin();
  v56 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v45 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18290, &qword_B2B938);
  __chkstk_darwin();
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v45 - v11);
  v13 = sub_AB6EB0();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18298, &qword_B2B940);
  __chkstk_darwin();
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182A0, &qword_B2B948) - 8;
  v20 = __chkstk_darwin();
  v22 = &v45 - v21;
  v20.n128_f64[0] = a3;
  v64 = sub_7D43B0(a1, v20);
  (*(v14 + 16))(v18, a1, v13);
  v23 = v18;
  v24 = v22;
  v25.n128_f64[0] = (*(v14 + 32))(v16, v23, v13);
  sub_7D47C0(&qword_E182A8, &protocol conformance descriptor for Text.Layout, v25);
  sub_AB95A0();
  v46 = *(v19 + 44);
  *&v22[v46] = 0;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182B0, &qword_B2B950) + 36);
  v28 = sub_7D47C0(&qword_E182B8, &protocol conformance descriptor for Text.Layout, v27);
  v62 = 0;
  v47 = (v51 + 16);
  v66 = (v51 + 32);
  v29 = v60;
  v60 += 6;
  v61 = (v29 + 7);
  v50 = (v52 + 8);
  v49 = (v51 + 8);
  v52 = v26;
  v51 = v28;
  v55 = v12;
  v54 = v13;
  v53 = v10;
  while (1)
  {
    sub_AB9CA0();
    if (*(v24 + v26) == v69[0])
    {
      v30 = 1;
      v31 = v65;
      goto LABEL_6;
    }

    v32 = sub_AB9D80();
    v33 = v48;
    v34 = v67;
    (*v47)(v48);
    v32(v69, 0);
    sub_AB9CB0();
    v31 = v65;
    v35 = v66;
    v36 = *(v65 + 48);
    v38 = v62;
    v37 = v63;
    *v63 = v62;
    (*v35)(&v37[v36], v33, v34);
    if (__OFADD__(v38, 1))
    {
      break;
    }

    v62 = v38 + 1;
    *(v24 + v46) = v38 + 1;
    sub_36B0C(v63, v10, &qword_E18288, &qword_B2B930);
    v30 = 0;
LABEL_6:
    (*v61)(v10, v30, 1, v31);
    sub_36B0C(v10, v12, &qword_E18290, &qword_B2B938);
    if ((*v60)(v12, 1, v31) == 1)
    {
      sub_7D4804(v24);

      return;
    }

    v39 = *v12;
    v40 = v12 + *(v31 + 48);
    v41 = v56;
    (*v66)(v56, v40, v67);
    v69[0] = *v59;
    __chkstk_darwin();
    *(&v45 - 4) = a3;
    v42 = v64;
    *(&v45 - 3) = v41;
    *(&v45 - 2) = v42;
    *(&v45 - 1) = v39;

    sub_AB5C80();
    v68 = v69[0];
    __chkstk_darwin();
    *(&v45 - 4) = a3;
    *(&v45 - 3) = v41;
    *(&v45 - 2) = v42;
    *(&v45 - 1) = v39;
    v10 = v53;

    sub_AB5C80();
    v43 = v57;
    sub_AB5CB0();
    sub_AB5CF0();
    (*v50)(v43, v58);
    sub_AB5C90();
    sub_AB5C90();

    v44 = v41;
    v12 = v55;
    (*v49)(v44, v67);
    v26 = v52;
  }

  __break(1u);
}

char *sub_7D43B0(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v34 = sub_AB6EA0();
  v4 = *(v34 - 8);
  __chkstk_darwin();
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB6EB0();
  sub_7D47C0(&qword_E182B8, &protocol conformance descriptor for Text.Layout, v7);
  v8 = sub_AB9C70();
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v10 = v8;
    v35 = _swiftEmptyArrayStorage;
    sub_8A57A8(0, v8 & ~(v8 >> 63), 0);
    v9 = v35;
    sub_AB9C60();
    if (v10 < 0)
    {
      goto LABEL_24;
    }

    v33 = (v4 + 16);
    do
    {
      v11 = sub_AB9D80();
      v12 = v34;
      (*v33)(v6);
      v11(v41, 0);
      sub_AB6E90();
      v42.origin.x = v36;
      v42.size.width = v38;
      v42.origin.y = v37 - v39;
      v42.size.height = v39 + v40;
      Width = CGRectGetWidth(v42);
      (*(v4 + 8))(v6, v12);
      v35 = v9;
      v14 = a1;
      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        sub_8A57A8((v15 > 1), v16 + 1, 1);
        v9 = v35;
      }

      v9[2] = v16 + 1;
      *&v9[v16 + 4] = Width;
      sub_AB9CB0();
      --v10;
      a1 = v14;
    }

    while (v10);
  }

  v17 = v9[2];
  if (!v17)
  {
    v19 = 0.0;
    goto LABEL_16;
  }

  if (v17 <= 3)
  {
    v18 = 0;
    v19 = 0.0;
LABEL_14:
    v22 = v17 - v18;
    v23 = &v9[v18 + 4];
    do
    {
      v24 = *v23++;
      v19 = v19 + v24;
      --v22;
    }

    while (v22);
    goto LABEL_16;
  }

  v18 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  v20 = (v9 + 6);
  v19 = 0.0;
  v21 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v19 = v19 + *(v20 - 2) + *(v20 - 1) + *v20 + v20[1];
    v20 += 4;
    v21 -= 4;
  }

  while (v21);
  if (v17 != v18)
  {
    goto LABEL_14;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182F8, &unk_B2C410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = 0;
  if (v17)
  {
    v26 = 0;
    while (v26 < v9[2])
    {
      v27 = *&v9[v26 + 4];
      v28 = v26 + 1;
      v29 = *(inited + 8 * v26 + 32);
      v30 = *(inited + 24);
      if (v26 + 1 >= v30 >> 1)
      {
        inited = sub_8A4D78((v30 > 1), v26 + 2, 1, inited);
      }

      *(inited + 16) = v26 + 2;
      *(inited + 8 * v26++ + 40) = v27 / v19 + v29;
      if (v17 == v28)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

LABEL_22:

  v41[0] = inited;
  v31 = sub_7D4998(0, v17, v41, v2);

  return v31;
}

uint64_t sub_7D47C0(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_AB6EB0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7D4804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182A0, &qword_B2B948);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7D48C4(uint64_t result, uint64_t (*a2)(void, uint64_t, double))
{
  v3 = v2[5];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v2[4];
    if (*(v4 + 16) > v3)
    {
      return a2(v2[3], result, *(v4 + 8 * v3 + 32));
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_7D4944()
{
  result = qword_E182C0;
  if (!qword_E182C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E182C0);
  }

  return result;
}

char *sub_7D4998(char *result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_18;
  }

  v5 = result;
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    result = sub_8A5788(0, v4 & ~(v4 >> 63), 0);
    if (a2 < v5 || v4 < 0)
    {
      goto LABEL_19;
    }

    result = _swiftEmptyArrayStorage;
    v9 = v5;
    while (a2 != v9)
    {
      if (v5 < 0)
      {
        goto LABEL_15;
      }

      v10 = *(*a3 + 16);
      if (v9 >= v10)
      {
        goto LABEL_16;
      }

      v11 = v9 + 1;
      if (v9 + 1 >= v10)
      {
        goto LABEL_17;
      }

      v12 = *a3 + 8 * v9;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v17 = result;
      v16 = *(result + 2);
      v15 = *(result + 3);
      if (v16 >= v15 >> 1)
      {
        sub_8A5788((v15 > 1), v16 + 1, 1);
        result = v17;
      }

      *(result + 2) = v16 + 1;
      *&result[8 * v16 + 32] = (a4 - v13) / (v14 - v13);
      v9 = v11;
      if (a2 == v11)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

double sub_7D4B2C(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_7D4B38(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_7D4B64;
}

double sub_7D4B64(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

unint64_t sub_7D4B9C()
{
  result = qword_E182C8;
  if (!qword_E182C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18280, &qword_B2B928);
    sub_36A00(&qword_E182D0, &qword_E18278, &qword_B2B920, &protocol conformance descriptor for PlaceholderContentView<A>);
    sub_36A00(&qword_E182D8, &qword_E182E0, &qword_B2BAA0, &protocol conformance descriptor for _TextRendererViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E182C8);
  }

  return result;
}

uint64_t sub_7D4C80(double a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_AB5CE0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182F0, &unk_B2BAB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF85F0;
  *(v7 + 32) = sub_AB74B0();
  *(v7 + 40) = sub_AB7490();
  sub_AB7990();
  sub_AB6E90();
  sub_AB6E90();
  sub_AB6E90();
  *&v13.origin.x = v9[13];
  *&v13.size.width = v9[15];
  v13.origin.y = *&v9[14] - v10;
  v13.size.height = v10 + v11;
  CGRectInset(v13, -14.0, 0.0);
  sub_AB6DE0();
  sub_AB5CD0();

  sub_AB5CA0();
  sub_7D50A8(v12);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_7D4E5C(double a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_AB5CE0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182E8, &qword_B2BAA8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF85D0;
  sub_AB7490();
  *(v7 + 32) = sub_AB7970();
  *(v7 + 40) = v8;
  sub_AB74B0();
  *(v7 + 48) = sub_AB7970();
  *(v7 + 56) = v9;
  sub_AB74B0();
  *(v7 + 64) = sub_AB7970();
  *(v7 + 72) = v10;
  sub_AB7490();
  *(v7 + 80) = sub_AB7970();
  *(v7 + 88) = v11;
  sub_AB7980();
  sub_AB6E90();
  sub_AB6E90();
  sub_AB6E90();
  *&v17.origin.x = v13[13];
  *&v17.size.width = v13[15];
  v17.origin.y = *&v13[14] - v14;
  v17.size.height = v14 + v15;
  CGRectInset(v17, -57.5, 0.0);
  sub_AB6DE0();
  sub_AB5CD0();

  sub_AB5CA0();
  sub_7D50A8(v16);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_7D50FC()
{
  result = qword_E18300;
  if (!qword_E18300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18300);
  }

  return result;
}

double Corner.radius(in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    return *&a1;
  }

  Width = CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  Height = CGRectGetHeight(v14);
  if (Height >= Width)
  {
    Height = Width;
  }

  return Height * 0.5;
}

void Corner.hash(into:)(uint64_t a1, Swift::UInt64 a2, Swift::UInt a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      sub_AB93F0();
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = 0;
      }

      sub_ABB600(v5);
    }

    else
    {

      sub_AB93F0();
    }
  }

  else
  {
    sub_AB93F0();
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    sub_ABB600(v7);
    sub_ABB5D0(a3);
  }
}

BOOL static Corner.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a1 == *&a4 && a2 == a5;
}

Swift::Int Corner.hashValue.getter(Swift::UInt64 a1, Swift::UInt a2, char a3)
{
  sub_ABB5C0();
  Corner.hash(into:)(v7, a1, a2, a3);
  return sub_ABB610();
}

Swift::Int sub_7D5384()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_ABB5C0();
  Corner.hash(into:)(v5, v1, v2, v3);
  return sub_ABB610();
}

Swift::Int sub_7D53EC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_ABB5C0();
  Corner.hash(into:)(v6, v2, v3, v4);
  return sub_ABB610();
}

uint64_t sub_7D5444(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v5 = *a1 == v2;
    if (v4 != 1)
    {
      v5 = 0;
    }

    v6 = v3 | *&v2;
    v8 = v4 == 2 && v6 == 0;
    if (*(a1 + 16) == 1)
    {
      return v5;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 8) == v3;
    }

    v11 = v10;
    if (*a1 == *a2)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static Border.__derived_struct_equals(_:_:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4, double a5, double a6)
{
  v7 = a2;
  v8 = sub_AB7450() & (a5 == a6);
  if (v7 == a4)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void Border.hash(into:)(double a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_AB7470();
  v6 = 0.0;
  if (a1 != 0.0)
  {
    v6 = a1;
  }

  sub_ABB600(*&v6);
  sub_ABB5D0(a4);
}

Swift::Int Border.hashValue.getter(uint64_t a1, unsigned __int8 a2, double a3)
{
  sub_ABB5C0();
  sub_AB7470();
  v5 = 0.0;
  if (a3 != 0.0)
  {
    v5 = a3;
  }

  sub_ABB600(*&v5);
  sub_ABB5D0(a2);
  return sub_ABB610();
}

void sub_7D55E4(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_AB7470();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  sub_ABB600(*&v4);
  sub_ABB5D0(v3);
}

Swift::Int sub_7D5644(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_ABB5C0();
  sub_AB7470();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  sub_ABB600(*&v4);
  sub_ABB5D0(v3);
  return sub_ABB610();
}

BOOL sub_7D56C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = sub_AB7450();
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t UIView.Shadow.init(color:opacity:radius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

void Shadow.hash(into:)(uint64_t a1)
{
  sub_AB7470();
  v2 = v1[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_ABB600(*&v2);
  v3 = v1[2];
  v4 = v1[3];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_ABB600(*&v3);
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  sub_ABB600(*&v5);
  v6 = v1[4];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  sub_ABB600(*&v6);
}

Swift::Int Shadow.hashValue.getter()
{
  sub_ABB5C0();
  Shadow.hash(into:)(v1);
  return sub_ABB610();
}

Swift::Int sub_7D587C(uint64_t a1)
{
  sub_ABB5C0();
  Shadow.hash(into:)(v2);
  return sub_ABB610();
}

BOOL sub_7D58B8(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v10 = sub_AB7450();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_7D5970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18348, &qword_B2BEF8);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18350, &qword_B2BF00);
  v10 = a2 + *(result + 36);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = 0;
  *(v10 + 32) = 256;
  return result;
}

uint64_t sub_7D5A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*(v2 + 16))
  {
    v6 = 0.5;
    goto LABEL_5;
  }

  v5 = 0.0;
  if (*(v2 + 16) == 1)
  {
    v6 = -0.5;
LABEL_5:
    v5 = *(v2 + 1) * v6;
  }

  v8 = v2[3];
  v7 = v2[4];
  v9 = *(v2 + 40);
  sub_AB5820();

  v10 = sub_AB7A30();
  v12 = v11;
  v13 = sub_AB7A30();
  v15 = v14;
  *&v27 = v8;
  *(&v27 + 1) = v7;
  LOBYTE(v28) = v9;
  *(&v28 + 1) = v5;
  v29 = v24;
  v30 = v25;
  *&v31 = v26;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = v10;
  *&v33 = v12;
  *(&v33 + 1) = v13;
  v34 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18358, &qword_B2BF08);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18360, &qword_B2BF10) + 36);
  v18 = v32;
  *(v17 + 64) = v31;
  *(v17 + 80) = v18;
  *(v17 + 96) = v33;
  *(v17 + 112) = v34;
  v19 = v28;
  *v17 = v27;
  *(v17 + 16) = v19;
  v20 = v30;
  *(v17 + 32) = v29;
  *(v17 + 48) = v20;
  v35[0] = v8;
  v35[1] = v7;
  v36 = v9;
  v37 = v5;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v4;
  v42 = 256;
  v43 = v10;
  v44 = v12;
  v45 = v13;
  v46 = v15;
  sub_15F84(&v27, &v23, &qword_E18368, &qword_B2BF18);
  return sub_12E1C(v35, &qword_E18368, &qword_B2BF18);
}

uint64_t View.shadow(_:corner:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *v7 = *a1;
  *&v7[8] = *(a1 + 8);
  *&v7[24] = *(a1 + 24);
  *&v7[40] = a2;
  *&v7[48] = a3;
  v7[56] = a4;

  sub_AB7310();
  v8[0] = *v7;
  v8[1] = *&v7[16];
  v9[0] = *&v7[32];
  *(v9 + 9) = *&v7[41];
  return sub_7D7814(v8);
}

uint64_t sub_7D5D44@<X0>(double *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18390, &qword_B2BF40) - 8;
  __chkstk_darwin();
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v34[-v7];
  v9 = *(a1 + 6);
  v37 = *(a1 + 5);
  v35 = *(a1 + 56);
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  sub_7D7EE8(a1, v47);
  v14 = sub_AB6AA0();
  sub_AB5690();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v47[0]) = 0;
  v23 = *(v4 + 44);
  v24 = enum case for BlendMode.destinationOut(_:);
  v25 = sub_AB7AC0();
  (*(*(v25 - 8) + 104))(&v8[v23], v24, v25);
  v26 = v37;
  *v8 = v37;
  *(v8 + 1) = v9;
  v27 = v9;
  v36 = v9;
  LOBYTE(v9) = v35;
  v8[16] = v35;
  *(v8 + 3) = 0;
  sub_15F84(v8, v6, &qword_E18390, &qword_B2BF40);
  *&v40 = v26;
  *(&v40 + 1) = v27;
  LOBYTE(v41) = v9;
  *(&v41 + 1) = *v39;
  HIDWORD(v41) = *&v39[3];
  v42 = 0;
  *&v43 = v10;
  *(&v43 + 1) = v11;
  *&v44 = v12;
  *(&v44 + 1) = v13;
  LOBYTE(v45) = v14;
  *(&v45 + 1) = *v38;
  DWORD1(v45) = *&v38[3];
  *(&v45 + 1) = v16;
  *&v46[0] = v18;
  *(&v46[0] + 1) = v20;
  *&v46[1] = v22;
  BYTE8(v46[1]) = 0;
  v28 = v41;
  *a2 = v40;
  a2[1] = v28;
  v29 = v43;
  v30 = v44;
  *(a2 + 89) = *(v46 + 9);
  v31 = v46[0];
  a2[4] = v45;
  a2[5] = v31;
  a2[2] = v29;
  a2[3] = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18398, &qword_B2BF48);
  sub_15F84(v6, a2 + *(v32 + 48), &qword_E18390, &qword_B2BF40);
  sub_15F84(&v40, v47, &qword_E183A0, &qword_B2BF50);
  sub_12E1C(v8, &qword_E18390, &qword_B2BF40);
  sub_12E1C(v6, &qword_E18390, &qword_B2BF40);
  v47[0] = v37;
  v47[1] = v36;
  v48 = v9;
  *v49 = *v39;
  *&v49[3] = *&v39[3];
  v50 = 0;
  v51 = v10;
  v52 = v11;
  v53 = v12;
  v54 = v13;
  v55 = v14;
  *v56 = *v38;
  *&v56[3] = *&v38[3];
  v57 = v16;
  v58 = v18;
  v59 = v20;
  v60 = v22;
  v61 = 0;
  return sub_12E1C(v47, &qword_E183A0, &qword_B2BF50);
}

uint64_t sub_7D6104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v16[0] = *v2;
  v16[1] = v5;
  v17[0] = v2[2];
  *(v17 + 9) = *(v2 + 41);
  v6 = sub_AB7A30();
  v8 = v7;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18370, &qword_B2BF20) + 36));
  *v9 = sub_AB7A30();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18378, &qword_B2BF28);
  sub_7D5D44(v16, (v9 + *(v11 + 44)));
  v12 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18380, &qword_B2BF30) + 36));
  *v12 = v6;
  v12[1] = v8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18388, &qword_B2BF38);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t sub_7D6294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v3 = sub_AB6630();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E183A8, &qword_B2BF58);
  __chkstk_darwin();
  v8 = v17 - v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = *(v2 + 16);
  v12 = *(v2 + 3);
  v14 = v17 + *(v13 + 36) - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E183B0, &qword_B2BF60);
  sub_AB5EC0();
  *v14 = v9;
  *(v14 + 1) = v10;
  v14[16] = v11;
  *(v14 + 3) = -v12;
  v14[32] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E183B8, &qword_B2BF68);
  (*(*(v15 - 8) + 16))(v8, v17[0], v15);
  sub_AB5EE0();
  sub_7D7F20();
  sub_7D8004();
  sub_AB6FF0();
  (*(v4 + 8))(v6, v3);
  return sub_12E1C(v8, &qword_E183A8, &qword_B2BF58);
}

void sub_7D64AC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, CGFloat a9@<D4>)
{
  LODWORD(v46) = a3;
  v44 = a2;
  *&v45 = a1;
  v47 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18470, &unk_B2C0E0);
  __chkstk_darwin();
  v15 = &v41 - v14;
  v16 = sub_AB6B50();
  v41 = *(v16 - 8);
  __chkstk_darwin();
  v17 = sub_AB6400();
  v42 = *(v17 - 8);
  v43 = v17;
  __chkstk_darwin();
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_AB63A0();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB7880();
  __chkstk_darwin();
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_AB5E50();
  v27 = __chkstk_darwin();
  v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v46)
  {
    v31 = v44;
    if (v44 == -1)
    {
      v38 = sub_AB5E60();
      (*(v21 + 104))(&v29[*(v38 + 20)], enum case for RoundedCornerStyle.continuous(_:), v20);
      v39 = v45;
      *v29 = v45;
      *(v29 + 1) = v39;
      *&v29[*(v26 + 20)] = a9;
      sub_AB5E40();
      v45 = v48;
      v46 = v49;
      v30 = v50;
      sub_7D867C(v29, &type metadata accessor for RoundedRectangle._Inset);
    }

    else
    {
      v32 = *&v45;
      v52.origin.x = a5;
      v52.origin.y = a6;
      v52.size.width = a7;
      v52.size.height = a8;
      v53 = CGRectInset(v52, a9, a9);
      v33 = [objc_opt_self() bezierPathWithRoundedRect:v31 byRoundingCorners:v53.origin.x cornerRadii:{v53.origin.y, v53.size.width, v53.size.height, v32, v32}];
      v34 = [v33 CGPath];
      sub_AB6DF0();
      v45 = v48;
      v46 = v49;
      v30 = v50;
    }

    goto LABEL_8;
  }

  if (v46 == 1)
  {
    sub_AB6B40();
    (*(v41 + 56))(v15, 0, 1, v16);
    sub_AB6B30();
    sub_12E1C(v15, &qword_E18470, &unk_B2C0E0);
    sub_AB63F0();
    v51.origin.x = a5;
    v51.origin.y = a6;
    v51.size.width = a7;
    v51.size.height = a8;
    CGRectInset(v51, a9, a9);
    sub_AB63E0();
    v45 = v48;
    v46 = v49;
    v30 = v50;
    (*(v42 + 8))(v19, v43);
LABEL_8:
    v37 = v45;
    v36 = v46;
    goto LABEL_9;
  }

  v35 = *(v21 + 104);
  v35(v25, enum case for RoundedCornerStyle.continuous(_:), v20, v27);
  (v35)(v23, enum case for RoundedCornerStyle.circular(_:), v20);
  sub_AB6390();
  (*(v21 + 8))(v23, v20);
  sub_7D867C(v25, &type metadata accessor for Capsule);
  sub_AB7870();
  v37 = v48;
  v36 = v49;
  v30 = v50;
LABEL_9:
  v40 = v47;
  *v47 = v37;
  v40[1] = v36;
  *(v40 + 32) = v30;
}

double sub_7D6A2C@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  result = *(v2 + 24) + a2;
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

double sub_7D6A4C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_7D64AC(*v5, *(v5 + 8), *(v5 + 16), v9, a2, a3, a4, a5, *(v5 + 24));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_7D6AA4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_AB5620();
  return sub_A8F90;
}

uint64_t sub_7D6B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7D85D0();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_7D6B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7D85D0();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_7D6BF8(uint64_t a1)
{
  v2 = sub_7D85D0();

  return Shape.body.getter(a1, v2);
}

void sub_7D6C44()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_E18308 = v1 == &dword_4 + 2;
}

uint64_t sub_7D6CA8()
{
  if (qword_E169E0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4008000000000000;
  if (byte_E18308)
  {
    v0 = 0x4018000000000000;
  }

  static Corner.extraSmall = v0;
  unk_E739E0 = -1;
  byte_E739E8 = 0;
  return result;
}

uint64_t *Corner.extraSmall.unsafeMutableAddressor()
{
  if (qword_E169E8 != -1)
  {
    swift_once();
  }

  return &static Corner.extraSmall;
}

uint64_t static Corner.extraSmall.getter()
{
  if (qword_E169E8 != -1)
  {
    swift_once();
  }

  return static Corner.extraSmall;
}

uint64_t sub_7D6DC4()
{
  if (qword_E169E0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4014000000000000;
  if (byte_E18308)
  {
    v0 = 0x4020000000000000;
  }

  static Corner.small = v0;
  *algn_E739F8 = -1;
  byte_E73A00 = 0;
  return result;
}

uint64_t *Corner.small.unsafeMutableAddressor()
{
  if (qword_E169F0 != -1)
  {
    swift_once();
  }

  return &static Corner.small;
}

uint64_t static Corner.small.getter()
{
  if (qword_E169F0 != -1)
  {
    swift_once();
  }

  return static Corner.small;
}

uint64_t sub_7D6EE0()
{
  if (qword_E169E0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4020000000000000;
  if (byte_E18308)
  {
    v0 = 0x4024000000000000;
  }

  static Corner.medium = v0;
  unk_E73A10 = -1;
  byte_E73A18 = 0;
  return result;
}

uint64_t *Corner.medium.unsafeMutableAddressor()
{
  if (qword_E169F8 != -1)
  {
    swift_once();
  }

  return &static Corner.medium;
}

uint64_t static Corner.medium.getter()
{
  if (qword_E169F8 != -1)
  {
    swift_once();
  }

  return static Corner.medium;
}

uint64_t sub_7D6FFC()
{
  if (qword_E169E0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4024000000000000;
  if (byte_E18308)
  {
    v0 = 0x4030000000000000;
  }

  static Corner.large = v0;
  *algn_E73A28 = -1;
  byte_E73A30 = 0;
  return result;
}

uint64_t *Corner.large.unsafeMutableAddressor()
{
  if (qword_E16A00 != -1)
  {
    swift_once();
  }

  return &static Corner.large;
}

uint64_t static Corner.large.getter()
{
  if (qword_E16A00 != -1)
  {
    swift_once();
  }

  return static Corner.large;
}

uint64_t sub_7D7118()
{
  if (qword_E169E0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x402C000000000000;
  if (byte_E18308)
  {
    v0 = 0x4038000000000000;
  }

  static Corner.extraLarge = v0;
  unk_E73A40 = -1;
  byte_E73A48 = 0;
  return result;
}

uint64_t *Corner.extraLarge.unsafeMutableAddressor()
{
  if (qword_E16A08 != -1)
  {
    swift_once();
  }

  return &static Corner.extraLarge;
}

uint64_t static Corner.extraLarge.getter()
{
  if (qword_E16A08 != -1)
  {
    swift_once();
  }

  return static Corner.extraLarge;
}

uint64_t sub_7D7234()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_7D7310;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_119878;
  v3[3] = &block_descriptor_220;
  v1 = _Block_copy(v3);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  result = sub_AB7420();
  static Border.artwork = result;
  qword_E73A58 = 0x3FE0000000000000;
  byte_E73A60 = 0;
  return result;
}

id sub_7D7310(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = dbl_B28320[v1 == &dword_0 + 1];
  v4 = &selRef_blackColor;
  if (v1 != &dword_0 + 1)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent:v3];

  return v6;
}

uint64_t *Border.artwork.unsafeMutableAddressor()
{
  if (qword_E16A10 != -1)
  {
    swift_once();
  }

  return &static Border.artwork;
}

double static Border.artwork.getter()
{
  if (qword_E16A10 != -1)
  {
    swift_once();
  }

  v0 = *&qword_E73A58;

  return v0;
}

double sub_7D7474(__n128 a1)
{
  sub_AB7480();
  v1 = sub_AB74C0();

  static Shadow.shallow = v1;
  unk_E73A70 = xmmword_AFEDA0;
  result = 2.0;
  unk_E73A80 = xmmword_B28330;
  return result;
}

uint64_t *Shadow.shallow.unsafeMutableAddressor()
{
  if (qword_E16A18 != -1)
  {
    swift_once();
  }

  return &static Shadow.shallow;
}

double static Shadow.shallow.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_E16A18 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.shallow;
  *(a1 + 8) = unk_E73A70;
  *(a1 + 24) = unk_E73A80;

  return result;
}

double sub_7D75A8(__n128 a1)
{
  sub_AB7480();
  v1 = sub_AB74C0();

  static Shadow.intermediate = v1;
  unk_E73A98 = xmmword_AF7C30;
  result = 15.0;
  unk_E73AA8 = xmmword_B28340;
  return result;
}

uint64_t *Shadow.intermediate.unsafeMutableAddressor()
{
  if (qword_E16A20 != -1)
  {
    swift_once();
  }

  return &static Shadow.intermediate;
}

double static Shadow.intermediate.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_E16A20 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.intermediate;
  *(a1 + 8) = unk_E73A98;
  *(a1 + 24) = unk_E73AA8;

  return result;
}

double sub_7D76E0(__n128 a1)
{
  sub_AB7480();
  v1 = sub_AB74C0();

  static Shadow.deep = v1;
  unk_E73AC0 = xmmword_B28350;
  result = 25.0;
  unk_E73AD0 = xmmword_B28360;
  return result;
}

uint64_t *Shadow.deep.unsafeMutableAddressor()
{
  if (qword_E16A28 != -1)
  {
    swift_once();
  }

  return &static Shadow.deep;
}

double static Shadow.deep.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_E16A28 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.deep;
  *(a1 + 8) = unk_E73AC0;
  *(a1 + 24) = unk_E73AD0;

  return result;
}

unint64_t sub_7D7848()
{
  result = qword_E18310;
  if (!qword_E18310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18310);
  }

  return result;
}

unint64_t sub_7D78A0()
{
  result = qword_E18318;
  if (!qword_E18318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18318);
  }

  return result;
}

unint64_t sub_7D78F8()
{
  result = qword_E18320;
  if (!qword_E18320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18320);
  }

  return result;
}

unint64_t sub_7D7950()
{
  result = qword_E18328;
  if (!qword_E18328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18328);
  }

  return result;
}

__n128 __swift_memcpy40_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_7D7A18()
{
  result = qword_E18330;
  if (!qword_E18330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18330);
  }

  return result;
}

unint64_t sub_7D7A8C()
{
  result = qword_E1AE60;
  if (!qword_E1AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AE60);
  }

  return result;
}

unint64_t sub_7D7B00()
{
  result = qword_E18338;
  if (!qword_E18338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18338);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx09MusicCoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAaBHPxAaBHD1__AhA0cJ0HPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_AB5D50();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_7D7BE4()
{
  result = qword_E18340;
  if (!qword_E18340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18340);
  }

  return result;
}

__n128 __swift_memcpy42_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_7D7C4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_7D7CA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_7D7D00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_7D7D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_7D7DBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_7D7E04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_7D7F20()
{
  result = qword_E183C0;
  if (!qword_E183C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E183A8, &qword_B2BF58);
    sub_36A00(&qword_E183C8, &qword_E183B8, &qword_B2BF68, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_36A00(&qword_E183D0, &qword_E183B0, &qword_B2BF60, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E183C0);
  }

  return result;
}

unint64_t sub_7D8004()
{
  result = qword_E183D8;
  if (!qword_E183D8)
  {
    sub_AB6630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E183D8);
  }

  return result;
}

double block_copy_helper_220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_7D8074(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_7D80BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_7D8114()
{
  result = qword_E183E0;
  if (!qword_E183E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18350, &qword_B2BF00);
    sub_7D81CC();
    sub_36A00(&qword_E18400, &qword_E18408, &qword_B2BFA0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E183E0);
  }

  return result;
}

unint64_t sub_7D81CC()
{
  result = qword_E183E8;
  if (!qword_E183E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E183F0, &qword_B2BF98);
    sub_36A00(&qword_E183F8, &qword_E18348, &qword_B2BEF8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E183E8);
  }

  return result;
}

unint64_t sub_7D8288()
{
  result = qword_E18410;
  if (!qword_E18410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18360, &qword_B2BF10);
    sub_36A00(&qword_E18418, &qword_E18358, &qword_B2BF08, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_36A00(&qword_E18420, &qword_E18368, &qword_B2BF18, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18410);
  }

  return result;
}

unint64_t sub_7D8370()
{
  result = qword_E18428;
  if (!qword_E18428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18370, &qword_B2BF20);
    sub_36A00(&qword_E18430, &qword_E18388, &qword_B2BF38, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_36A00(&qword_E18438, &qword_E18380, &qword_B2BF30, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18428);
  }

  return result;
}

uint64_t sub_7D8454()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E183A8, &qword_B2BF58);
  sub_AB6630();
  sub_7D7F20();
  sub_7D8004();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_7D8520()
{
  result = qword_E18450;
  if (!qword_E18450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18450);
  }

  return result;
}

unint64_t sub_7D8578()
{
  result = qword_E18458;
  if (!qword_E18458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18458);
  }

  return result;
}

unint64_t sub_7D85D0()
{
  result = qword_E18460;
  if (!qword_E18460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18460);
  }

  return result;
}

unint64_t sub_7D8628()
{
  result = qword_E18468;
  if (!qword_E18468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18468);
  }

  return result;
}

uint64_t sub_7D867C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_7D86F0(uint64_t a1)
{
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060, &qword_B29C60);
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_8A5748(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_8A5748((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_7949C8(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_7D8924(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_ABAEC0();
    v5 = a1 + 32;
    do
    {
      v5 += 8;
      sub_AB3A30();
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      --v3;
    }

    while (v3);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_7D89CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_ABB060();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_8A5768(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_ABAE20();
        _s3__C7CGColorCMa_1(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_8A5768((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_9ACFC(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      _s3__C7CGColorCMa_1(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_8A5768((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_9ACFC(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_7D8B98(uint64_t a1, void *a2, __n128 a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_7DC66C(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v6 = sub_AB9780();
  v7 = a2[7];
  v7(a1, a2);
  v7(a1, a2);
  v8 = a2[8];
  v8(a1, a2);
  v8(a1, a2);
  v9 = a2[9];
  v9(a1, a2);
  v9(a1, a2);
  sub_AB9870();
  return v6;
}

double sub_7D8D44()
{
  v4 = *v0 / (*v0 + 60.0);
  v3 = (1.0 - v4) * 0.5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182F8, &unk_B2C410);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_B00DA0;
  *(v1 + 32) = 0;
  *(v1 + 40) = v3;
  *(v1 + 48) = vaddq_f64(vmulq_n_f64(xmmword_B28370, v4), vdupq_lane_s64(*&v3, 0));
  result = 1.0 - v3;
  *(v1 + 64) = 1.0 - v3;
  *(v1 + 72) = 0x3FF0000000000000;
  return result;
}

double sub_7D8DF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  v9 = v5 / ((v4)(a1, a2) + 60.0);
  v8 = (1.0 - v9) * 0.5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182F8, &unk_B2C410);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_B00DA0;
  *(v6 + 32) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = vaddq_f64(vmulq_n_f64(xmmword_B28370, v9), vdupq_lane_s64(*&v8, 0));
  result = 1.0 - v8;
  *(v6 + 64) = 1.0 - v8;
  *(v6 + 72) = 0x3FF0000000000000;
  return result;
}

void *sub_7D8EEC(uint64_t a1, void *a2, __n128 a3)
{
  v5 = sub_7D8B98(a1, a2, a3);
  sub_7D8DF4(a1, a2);
  v7 = sub_7D8F60(v5, v6);

  return v7;
}

void *sub_7D8F60(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  result = sub_8A57C8(0, v6, 0);
  v27 = v4;
  v28 = v5;
  if (v6)
  {
    v8 = a1 + 32;
    v9 = a2 + 32;
    v10 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_21;
      }

      result = sub_AB7970();
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        v26 = result;
        v15 = v11;
        sub_8A57C8((v12 > 1), v13 + 1, 1);
        v11 = v15;
        result = v26;
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      --v5;
      v14[4] = result;
      v14[5] = v11;
      --v4;
      v9 += 8;
      v8 += 8;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v27;
    v17 = v28;
    if (v27 <= v28)
    {
      return _swiftEmptyArrayStorage;
    }

    while (v6 < v16)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

      if (v17 != v6)
      {
        if (v6 >= v17)
        {
          goto LABEL_24;
        }

        result = sub_AB7970();
        v21 = _swiftEmptyArrayStorage[2];
        v20 = _swiftEmptyArrayStorage[3];
        if (v21 >= v20 >> 1)
        {
          v23 = v16;
          v24 = result;
          v25 = v19;
          sub_8A57C8((v20 > 1), v21 + 1, 1);
          v19 = v25;
          result = v24;
          v16 = v23;
          v17 = v28;
        }

        _swiftEmptyArrayStorage[2] = v21 + 1;
        v22 = &_swiftEmptyArrayStorage[2 * v21];
        v22[4] = result;
        v22[5] = v19;
        ++v6;
        if (v18 != v16)
        {
          continue;
        }
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_7D916C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v27 = *a1;
  v28 = v3;
  v29 = *(a1 + 32);
  sub_AB5820();
  sub_AB6D40();
  sub_7DD1C4(v24);
  v4 = sub_AB74B0();
  sub_AB5820();
  sub_AB6D40();
  sub_7DD1C4(v25);
  v5 = sub_AB74B0();
  sub_AB5820();
  sub_AB6D40();
  sub_7DD1C4(v26);
  v6 = sub_AB74B0();
  v30[0] = v21;
  v30[1] = v22;
  *&v31 = v23;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = 0x3FE0000000000000;
  v33 = 0;
  v10[0] = 0;
  v8 = v31;
  v9 = v32;
  v34[0] = v18;
  v34[1] = v19;
  *&v35 = v20;
  *(&v35 + 1) = v5;
  LOWORD(v36) = 256;
  *(&v36 + 1) = 0x4000000000000000;
  v37 = 0;
  *&v10[8] = v18;
  v10[72] = 0;
  *&v10[56] = v36;
  *&v10[40] = v35;
  *&v10[24] = v19;
  v38 = v15;
  v39 = v16;
  *&v40 = v17;
  *(&v40 + 1) = v6;
  LOWORD(v41) = 256;
  *(a2 + 208) = 0;
  *(&v41 + 1) = 0x4018000000000000;
  v42 = 0;
  v13 = v40;
  v14 = v41;
  v11 = v38;
  v12 = v39;
  *a2 = v21;
  *(a2 + 16) = v22;
  *(a2 + 64) = *v10;
  *(a2 + 80) = *&v10[16];
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 128) = *&v10[64];
  *(a2 + 144) = v11;
  *(a2 + 96) = *&v10[32];
  *(a2 + 112) = *&v10[48];
  *(a2 + 176) = v13;
  *(a2 + 192) = v14;
  *(a2 + 160) = v12;
  v43[0] = v15;
  v43[1] = v16;
  v44 = v17;
  v45 = v6;
  v46 = 256;
  v47 = 0x4018000000000000;
  v48 = 0;
  sub_15F84(v30, v55, &qword_E187A0, &qword_B2C778);
  sub_15F84(v34, v55, &qword_E187A0, &qword_B2C778);
  sub_15F84(&v38, v55, &qword_E187A0, &qword_B2C778);
  sub_12E1C(v43, &qword_E187A0, &qword_B2C778);
  v49[0] = v18;
  v49[1] = v19;
  v50 = v20;
  v51 = v5;
  v52 = 256;
  v53 = 0x4000000000000000;
  v54 = 0;
  sub_12E1C(v49, &qword_E187A0, &qword_B2C778);
  v55[0] = v21;
  v55[1] = v22;
  v56 = v23;
  v57 = v4;
  v58 = 256;
  v59 = 0x3FE0000000000000;
  v60 = 0;
  return sub_12E1C(v55, &qword_E187A0, &qword_B2C778);
}

double sub_7D9450@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v19[0] = *v2;
  v19[1] = v4;
  v20 = *(v2 + 32);
  v5 = sub_AB7A30();
  v7 = v6;
  sub_7D916C(v19, &v37);
  v31 = v47;
  v32 = v48;
  v33 = v49;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v30 = v46;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v26 = v42;
  v21 = v37;
  v22 = v38;
  v35[10] = v47;
  v35[11] = v48;
  v35[12] = v49;
  v35[6] = v43;
  v35[7] = v44;
  v35[8] = v45;
  v35[9] = v46;
  v35[2] = v39;
  v35[3] = v40;
  v35[4] = v41;
  v35[5] = v42;
  v34 = v50;
  v36 = v50;
  v35[0] = v37;
  v35[1] = v38;
  sub_15F84(&v21, v18, &qword_E18790, &qword_B2C768);
  sub_12E1C(v35, &qword_E18790, &qword_B2C768);
  v47 = v31;
  v48 = v32;
  v49 = v33;
  v50 = v34;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v37 = v21;
  v38 = v22;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18798, &qword_B2C770) + 36);
  v9 = enum case for BlendMode.plusLighter(_:);
  v10 = sub_AB7AC0();
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  *a2 = v5;
  *(a2 + 8) = v7;
  v11 = v48;
  *(a2 + 176) = v47;
  *(a2 + 192) = v11;
  *(a2 + 208) = v49;
  *(a2 + 224) = v50;
  v12 = v44;
  *(a2 + 112) = v43;
  *(a2 + 128) = v12;
  v13 = v46;
  *(a2 + 144) = v45;
  *(a2 + 160) = v13;
  v14 = v40;
  *(a2 + 48) = v39;
  *(a2 + 64) = v14;
  v15 = v42;
  *(a2 + 80) = v41;
  *(a2 + 96) = v15;
  result = *&v37;
  v17 = v38;
  *(a2 + 16) = v37;
  *(a2 + 32) = v17;
  return result;
}

uint64_t sub_7D9654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a1;
  v17 = a3;
  swift_getWitnessTable();
  sub_AB6710();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E187A8, &qword_B2C780);
  v5 = sub_AB5D50();
  v15 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v14 - v8;
  v18 = *(a2 + 16);
  v19 = v3;
  sub_AB7A30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187B0, &qword_B2C788);
  WitnessTable = swift_getWitnessTable();
  sub_7DCF04(&qword_E187B8, &qword_E187B0, &qword_B2C788, sub_7DD224);
  sub_AB7250();
  v11 = sub_36A00(&qword_E187C8, &qword_E187A8, &qword_B2C780, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
  v20 = WitnessTable;
  v21 = v11;
  swift_getWitnessTable();
  sub_7FF188();
  v12 = *(v15 + 8);
  v12(v7, v5);
  sub_7FF188();
  return (v12)(v9, v5);
}

double sub_7D98EC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  sub_7D8EEC(a1, a2, a4);
  (*(a2 + 40))(&v12, a1, a2);
  (*(a2 + 48))(&v11, a1, a2);
  sub_AB7980();
  sub_AB5B40();
  v7 = *(a2 + 32);
  v7(a1, a2);
  v7(a1, a2);
  sub_AB7A30();
  sub_AB5970();
  v8 = v16;
  *(a3 + 32) = v15;
  *(a3 + 48) = v8;
  *(a3 + 64) = v17;
  *(a3 + 80) = v18;
  result = *&v13;
  v10 = v14;
  *a3 = v13;
  *(a3 + 16) = v10;
  return result;
}

uint64_t sub_7D9A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_AB63A0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18510, &unk_B2C340) + 36));
  v13 = sub_AB5E60();
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = *(v9 + 104);
  v15(v12 + *(v13 + 20), enum case for RoundedCornerStyle.continuous(_:), v8);
  *v12 = a4;
  v12[1] = a4;
  *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BAC0, &qword_B30990) + 36)) = 256;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18518, &qword_B2C350);
  v17 = *(*(v16 - 8) + 16);
  v46 = a2;
  v17(a2, a1, v16);
  sub_AB7A30();
  sub_AB5970();
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18520, &qword_B2C358) + 36));
  v19 = v50;
  *v18 = v49;
  v18[1] = v19;
  v18[2] = v51;
  v20 = sub_AB7A30();
  v44 = v21;
  v45 = v20;
  v15(v11, v14, v8);
  sub_AB6D70();
  v23 = v52;
  v22 = v53;
  v24 = v54;
  v25 = v55;
  LOBYTE(a2) = v56;
  v26 = sub_AB74B0();
  v43 = v26;
  v27 = sub_AB7490();
  sub_AB74B0();
  v28 = sub_AB74C0();

  *&v57 = v23;
  *(&v57 + 1) = v22;
  *&v58 = v24;
  *(&v58 + 1) = v25;
  LOBYTE(v59) = a2;
  *(&v59 + 1) = v48[0];
  DWORD1(v59) = *(v48 + 3);
  *(&v59 + 1) = a3;
  v60 = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  v61 = _Q0;
  *&v62 = v26;
  *(&v62 + 1) = v27;
  v34 = v44;
  v35 = v45;
  *&v63 = v28;
  *(&v63 + 1) = v45;
  v64 = v44;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18528, &qword_B2C360);
  v37 = v46 + *(v36 + 36);
  v38 = v62;
  *(v37 + 64) = v61;
  *(v37 + 80) = v38;
  *(v37 + 96) = v63;
  *(v37 + 112) = v64;
  v39 = v58;
  *v37 = v57;
  *(v37 + 16) = v39;
  v40 = v60;
  *(v37 + 32) = v59;
  *(v37 + 48) = v40;
  v65[0] = v23;
  v65[1] = v22;
  v65[2] = v24;
  v65[3] = v25;
  v66 = a2;
  *&v67[3] = *(v48 + 3);
  *v67 = v48[0];
  v68 = a3;
  v69 = 0;
  v70 = 0;
  v71 = v42;
  v72 = v43;
  v73 = v27;
  v74 = v28;
  v75 = v35;
  v76 = v34;
  sub_15F84(&v57, &v47, &qword_E18530, &qword_B2C368);
  return sub_12E1C(v65, &qword_E18530, &qword_B2C368);
}

__n128 sub_7D9DCC@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 sub_7D9DD8@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

double sub_7D9DE4@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);

  return result;
}

double sub_7D9DF0@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 48);

  return result;
}

double sub_7D9DFC@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 56);

  return result;
}

uint64_t sub_7D9E08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_7DC6E0(v7, v8) & 1;
}

uint64_t sub_7D9E94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_AB63A0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18560, &qword_B2C398);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = __chkstk_darwin();
  v24 = &v24 - v9;
  v10 = *a1;
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v6, enum case for RoundedCornerStyle.continuous(_:), v3, v8);
  sub_AB6D70();
  v36 = v39[0];
  v37 = v39[1];
  v38 = v40;
  (v12)(v6, v11, v3);
  sub_AB6D70();
  v13 = sub_AB74B0();
  v14 = sub_AB7490();
  sub_AB74B0();
  v15 = sub_AB74C0();

  v44[0] = v41;
  v44[1] = v42;
  v45 = v43;
  v28 = v41;
  v29 = v42;
  LOBYTE(v30) = v43;
  v46 = 0x3FF0000000000000;
  v47 = 0;
  v48 = 0;
  v49 = 0x3FF0000000000000;
  v50 = 0;
  v51 = 0;
  sub_7DC3B8(v44, v33);
  sub_AB6D30();
  sub_7D50A8(&v41);
  *&v33[0] = 0;
  *(v33 + 8) = v28;
  *(&v33[1] + 8) = v29;
  BYTE8(v33[2]) = v30;
  *(&v33[2] + 9) = v52[0];
  HIDWORD(v33[2]) = *(v52 + 3);
  *&v34 = v10;
  *(&v34 + 1) = v13;
  *&v35 = v14;
  *(&v35 + 1) = v15;
  v28 = *(a1 + 4);
  LOBYTE(v29) = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390, &qword_B2C3A0);
  sub_AB77F0();
  v16 = swift_allocObject();
  v17 = *(a1 + 5);
  v16[5] = *(a1 + 4);
  v16[6] = v17;
  *(v16 + 105) = *(a1 + 89);
  v18 = *(a1 + 1);
  v16[1] = *a1;
  v16[2] = v18;
  v19 = *(a1 + 3);
  v16[3] = *(a1 + 2);
  v16[4] = v19;
  sub_7DC48C(a1, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18568, &qword_B2C3A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18570, &qword_B2C3B0);
  sub_7DC4C4();
  sub_7DC518();
  sub_36A00(&qword_E185A8, &qword_E18570, &qword_B2C3B0, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v20 = v24;
  sub_AB7110();

  v30 = v33[2];
  v31 = v34;
  v32 = v35;
  v28 = v33[0];
  v29 = v33[1];
  sub_7DC5FC(&v28);
  sub_7D50A8(v39);
  v33[0] = *(a1 + 11);
  LOBYTE(v33[1]) = *(a1 + 104);
  sub_AB77F0();
  if (v36)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = v27;
  (*(v25 + 32))(v27, v20, v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185B0, &qword_B2C3C8);
  *(v22 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_7DA34C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v14[2] = a2[2];
  v14[3] = v6;
  v14[4] = a2[4];
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18590, &qword_B2C3B8);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18568, &qword_B2C3A8) + 36));
  v10 = a2[3];
  v9[2] = a2[2];
  v9[3] = v10;
  v9[4] = a2[4];
  v11 = a2[1];
  *v9 = *a2;
  v9[1] = v11;
  return sub_7DC634(v14, &v13);
}

uint64_t sub_7DA424@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18570, &qword_B2C3B0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v15 - v7;
  v15[1] = swift_getKeyPath();
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185B8, &qword_B2C3F0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E185C0, &qword_B2C3F8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E185C8, &qword_B2C400);
  v10 = sub_36A00(&qword_E185D0, &qword_E185C0, &qword_B2C3F8, &protocol conformance descriptor for MoveKeyframe<A>);
  v11 = sub_36A00(&qword_E185D8, &qword_E185C8, &qword_B2C400, &protocol conformance descriptor for SpringKeyframe<A>);
  v19 = &type metadata for Double;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  swift_getOpaqueTypeConformance2();
  sub_AB5A20();
  sub_36A00(&qword_E185A8, &qword_E18570, &qword_B2C3B0, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v12 = v16;
  sub_AB5DE0();
  v13 = *(v4 + 8);
  v13(v6, v3);
  sub_AB5E00();
  sub_AB5DF0();
  v13(v6, v3);
  return (v13)(v12, v3);
}

uint64_t sub_7DA700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_AB7780();
  __chkstk_darwin();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185C8, &qword_B2C400);
  v4 = *(v3 - 8);
  v26 = v3;
  v27 = v4;
  __chkstk_darwin();
  v24 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185C0, &qword_B2C3F8);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v20 - v11;
  v29 = *(a1 + 16);
  v30 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185E0, &qword_B2C408);
  sub_AB77F0();
  sub_AB58C0();
  sub_36A00(&qword_E185D0, &qword_E185C0, &qword_B2C3F8, &protocol conformance descriptor for MoveKeyframe<A>);
  sub_AB68C0();
  v12 = *(v8 + 8);
  v22 = v8 + 8;
  v23 = v12;
  v12(v10, v7);
  v29 = *(a1 + 40);
  v30 = *(a1 + 56);
  sub_AB77F0();
  sub_AB7770();
  *&v29 = 0;
  BYTE8(v29) = 0;
  v13 = v24;
  sub_AB5BC0();
  sub_36A00(&qword_E185D8, &qword_E185C8, &qword_B2C400, &protocol conformance descriptor for SpringKeyframe<A>);
  v15 = v25;
  v14 = v26;
  sub_AB68C0();
  v16 = *(v27 + 8);
  v16(v13, v14);
  v17 = v21;
  sub_AB68E0();
  sub_AB68D0();
  v18 = v23;
  v23(v10, v7);
  v16(v15, v14);
  return v18(v17, v7);
}

double sub_7DAAF4@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  sub_AB6D50();
  *&v6 = COERCE_DOUBLE(sub_AB6D80());
  v8 = v7;
  v10 = v9;
  sub_7D50A8(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

double sub_7DABC0@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  sub_AB6D50();
  *&v6 = COERCE_DOUBLE(sub_AB6D80());
  v8 = v7;
  v10 = v9;
  sub_7D50A8(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

double sub_7DAC8C@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 64);

  return result;
}

double sub_7DAC98@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 72);

  return result;
}

uint64_t sub_7DACA4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_7DC77C(v8, v9) & 1;
}

uint64_t sub_7DAD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v24[4] = v2[4];
  v25[0] = v5;
  *(v25 + 9) = *(v2 + 89);
  v6 = v2[1];
  v24[0] = *v2;
  v24[1] = v6;
  v7 = v2[3];
  v24[2] = v2[2];
  v24[3] = v7;
  v8 = *(&v24[0] + 1);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18538, &qword_B2C370) + 36));
  v10 = *(sub_AB5E60() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_AB63A0();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  *v9 = *(&v24[0] + 1);
  *(v9 + 1) = v8;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BAC0, &qword_B30990) + 36)] = 256;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18540, &qword_B2C378);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  sub_AB7A30();
  sub_AB5970();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18548, &qword_B2C380) + 36));
  *v14 = v21;
  v14[1] = v22;
  v14[2] = v23;
  v15 = sub_AB7A30();
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18550, &qword_B2C388) + 36);
  sub_7D9E94(v24, v18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18558, &qword_B2C390);
  v20 = (v18 + *(result + 36));
  *v20 = v15;
  v20[1] = v17;
  return result;
}

uint64_t View.animatedGlow(length:cornerRadius:initialRotation:rotation:animate:isHidden:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  *&v17 = a9;
  *(&v17 + 1) = a10;
  *&v18 = a1;
  *(&v18 + 1) = a2;
  *&v19 = a11;
  *(&v19 + 1) = a3;
  *&v20 = a4;
  *(&v20 + 1) = a12;
  *&v21 = a5;
  *(&v21 + 1) = a6;
  v22[0] = a7;
  *&v22[8] = a8;
  *&v22[16] = a13;
  v22[24] = a14;

  sub_AB7310();
  v23[4] = v21;
  v24[0] = *v22;
  *(v24 + 9) = *&v22[9];
  v23[0] = v17;
  v23[1] = v18;
  v23[2] = v19;
  v23[3] = v20;
  return sub_7DB008(v23);
}

void sub_7DB038(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = 0;
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  sub_7DB2D4(0.5, 0.5);
  sub_7DB2D4(1.0, 2.0);
  sub_7DB2D4(4.0, 6.0);
  v11 = [objc_allocWithZone(CAGradientLayer) init];
  v12 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v13 = *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = v11;
  v14 = v11;

  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_7DB7B0(v32);
  sub_7DBBA4(v32);
  [v14 setStartPoint:{v33, v34}];

  v15 = *&v10[v12];
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  sub_7DB7B0(v35);
  sub_7DBBA4(v35);
  [v16 setEndPoint:{v36, v37}];

  v17 = *&v10[v12];
  if (v17)
  {
    v18 = v17;
    sub_7DB7B0(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B036F0;
    v20 = v39;
    *(inited + 32) = v39;
    *(inited + 40) = v20;
    v21 = v40;
    *(inited + 48) = v40;
    *(inited + 56) = v21;
    v22 = v41;
    *(inited + 64) = v41;
    *(inited + 72) = v22;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    v26 = v23;
    v27 = v24;
    v28 = v25;
    sub_7DBBA4(v38);
    sub_7D89CC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = sub_AB9740().super.isa;

    [v18 setColors:isa];

    v30 = [v10 layer];
    [v30 setMask:*&v10[v12]];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_7DB2D4(double a1, double a2)
{
  v3 = v2;
  v5 = [objc_allocWithZone(UIView) init];
  v6 = UIView.forAutolayout.getter();

  v7 = [v6 layer];
  [v7 setBorderWidth:a1];

  v8 = [v6 layer];
  v9 = [objc_opt_self() whiteColor];
  v10 = [v9 CGColor];

  [v8 setBorderColor:v10];
  v11 = [v6 layer];
  [v11 setCornerCurve:kCACornerCurveContinuous];

  v12 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  isa = sub_AB9A80().super.super.isa;
  [v12 setValue:isa forKey:kCAFilterInputRadius];

  v14 = [v6 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185F0, &unk_B33020);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF4EC0;
  *(v15 + 56) = sub_13C80(0, &qword_E185F8, CAFilter_ptr);
  *(v15 + 32) = v12;
  v16 = v12;
  v17 = sub_AB9740().super.isa;

  [v14 setFilters:v17];

  v18 = [v6 layer];
  [v18 setCompositingFilter:kCAFilterPlusL];

  [v3 addSubview:v6];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_AF93E0;
  v21 = [v6 topAnchor];
  v22 = [v3 topAnchor];
  v23 = a1 * -0.5;
  v24 = [v21 constraintEqualToAnchor:v22 constant:a1 * -0.5];

  *(v20 + 32) = v24;
  v25 = [v6 bottomAnchor];
  v26 = [v3 bottomAnchor];
  v27 = a1 * 0.5;
  v28 = [v25 constraintEqualToAnchor:v26 constant:v27];

  *(v20 + 40) = v28;
  v29 = [v6 leadingAnchor];
  v30 = [v3 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:v23];

  *(v20 + 48) = v31;
  v32 = [v6 trailingAnchor];
  v33 = [v3 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:v27];

  *(v20 + 56) = v34;
  sub_13C80(0, qword_E18600, NSLayoutConstraint_ptr);
  v35 = sub_AB9740().super.isa;

  [v19 activateConstraints:v35];
}

__n128 sub_7DB7B0@<Q0>(uint64_t a1@<X8>)
{
  [v1 bounds];
  Width = CGRectGetWidth(v17);
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 CGColor];

  v7 = [v4 clearColor];
  v8 = [v7 CGColor];

  v9 = [v4 whiteColor];
  v10 = [v9 colorWithAlphaComponent:0.4];

  v11 = [v10 CGColor];
  *a1 = Width;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = result;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v11;
  return result;
}

Swift::Void __swiftcall GlowView.layoutSubviews()()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v1 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_7DB7B0(v20);
  sub_7DBBA4(v20);
  sub_7DB7B0(v21);
  sub_7DBBA4(v21);
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  v24 = CGRectInset(v23, -30.0, -30.0);
  [v3 setFrame:{v24.origin.x, v24.origin.y, v24.size.width, v24.size.height}];

  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v13 = v12;
  sub_7DB7B0(v22);
  sub_7D8D44();
  v15 = v14;
  sub_7DBBA4(v22);
  v16 = *(v15 + 16);
  if (v16)
  {
    sub_ABAEC0();
    sub_13C80(0, &qword_E19E40, NSNumber_ptr);
    v17 = 32;
    do
    {
      sub_ABA760(*(v15 + v17));
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      v17 += 8;
      --v16;
    }

    while (v16);
  }

  sub_13C80(0, &qword_E19E40, NSNumber_ptr);
  isa = sub_AB9740().super.isa;

  [v13 setLocations:isa];
}

uint64_t GlowView.updateCorners(_:)(uint64_t a1)
{
  v2 = sub_ABA620();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v7 = &v24 - v6;
  v8 = sub_ABA680();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v7, &qword_E1DB50, &qword_B29E40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_12E1C(v7, &qword_E1DB50, &qword_B29E40);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_ABA650();
  v13 = v27;
  [v27 bounds];
  sub_ABA610();
  v15 = v14;
  (*(v3 + 8))(v5, v2);
  v16 = [v13 subviews];
  sub_13C80(0, &qword_E1E050, UIView_ptr);
  v17 = sub_AB9760();

  v25 = v9;
  v26 = v8;
  v24 = v11;
  if (v17 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v19 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = sub_ABAE20();
      }

      else
      {
        if (v19 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v23 = [v20 layer];
      [v23 setCornerRadius:v15];

      ++v19;
      if (v22 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return (*(v25 + 8))(v24, v26);
}

id sub_7DBFA4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return v2;
}

id sub_7DBFB0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return v2;
}

id sub_7DBFBC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return v2;
}

uint64_t sub_7DBFC8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_7DC84C(v7, v8) & 1;
}

unint64_t sub_7DC068()
{
  result = qword_E184A8;
  if (!qword_E184A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E184A8);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx09MusicCoreB012GlowModifierVGAaBHPxAaBHD1__AgA0cI0HPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_AB5D50();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_7DC14C()
{
  result = qword_E184B0;
  if (!qword_E184B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E184B0);
  }

  return result;
}

__n128 __swift_memcpy64_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_7DC1F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_7DC238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_7DC2B4(uint64_t a1)
{
  result = sub_7DC068();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_7DC2DC(uint64_t a1)
{
  result = sub_7DC14C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_7DC304(uint64_t a1)
{
  result = sub_7DC32C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_7DC32C()
{
  result = qword_E18508;
  if (!qword_E18508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18508);
  }

  return result;
}

uint64_t sub_7DC414()
{

  return swift_deallocObject();
}

unint64_t sub_7DC4C4()
{
  result = qword_E18578;
  if (!qword_E18578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18578);
  }

  return result;
}

unint64_t sub_7DC518()
{
  result = qword_E18580;
  if (!qword_E18580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18568, &qword_B2C3A8);
    sub_36A00(&qword_E18588, &qword_E18590, &qword_B2C3B8, &protocol conformance descriptor for PlaceholderContentView<A>);
    sub_36A00(&qword_E18598, &qword_E185A0, &qword_B2C3C0, &unk_B2C6C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18580);
  }

  return result;
}

uint64_t sub_7DC66C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  }

  else
  {

    return sub_ABB340();
  }
}

uint64_t sub_7DC6E0(double *a1, double *a2)
{
  if (*a1 != *a2 || (sub_AB7B80() & 1) == 0 || (sub_AB7B80() & 1) == 0 || (sub_AB7450() & 1) == 0 || (sub_AB7450() & 1) == 0)
  {
    return 0;
  }

  return sub_AB7450();
}

uint64_t sub_7DC77C(double *a1, double *a2)
{
  if (*a1 != *a2 || (sub_AB6D90() & 1) == 0 || a1[6] != a2[6] || (sub_AB7450() & 1) == 0 || (sub_AB7450() & 1) == 0)
  {
    return 0;
  }

  return sub_AB7450();
}

uint64_t sub_7DC84C(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4] && (_s3__C7CGColorCMa_1(0), sub_7DC93C(), (sub_AB3B20() & 1) != 0) && (sub_AB3B20() & 1) != 0)
  {
    return sub_AB3B20() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_7DC93C()
{
  result = qword_E185E8;
  if (!qword_E185E8)
  {
    _s3__C7CGColorCMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E185E8);
  }

  return result;
}

uint64_t sub_7DC998(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7DC9E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7DCA44(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4PathV7StorageO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy80_8_1(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_7DCB04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7DCB4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7DCBB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_7DCBF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_7DCC54()
{
  result = qword_E18688;
  if (!qword_E18688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18528, &qword_B2C360);
    sub_7DCF04(&qword_E18690, &qword_E18520, &qword_B2C358, sub_7DCD38);
    sub_36A00(&qword_E186B0, &qword_E18530, &qword_B2C368, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18688);
  }

  return result;
}

unint64_t sub_7DCD38()
{
  result = qword_E18698;
  if (!qword_E18698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18510, &unk_B2C340);
    sub_36A00(&qword_E186A0, &qword_E18518, &qword_B2C350, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_36A00(&qword_E186A8, &unk_E1BAC0, &qword_B30990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18698);
  }

  return result;
}

unint64_t sub_7DCE20()
{
  result = qword_E186B8;
  if (!qword_E186B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18550, &qword_B2C388);
    sub_7DCF04(&qword_E186C0, &qword_E18548, &qword_B2C380, sub_7DCF88);
    sub_36A00(&qword_E186D8, &qword_E18558, &qword_B2C390, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E186B8);
  }

  return result;
}

uint64_t sub_7DCF04(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_7DCF88()
{
  result = qword_E186C8;
  if (!qword_E186C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18538, &qword_B2C370);
    sub_36A00(&qword_E186D0, &qword_E18540, &qword_B2C378, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_36A00(&qword_E186A8, &unk_E1BAC0, &qword_B30990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E186C8);
  }

  return result;
}

unint64_t sub_7DD06C(uint64_t a1)
{
  result = sub_7DD094();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_7DD094()
{
  result = qword_E18730;
  if (!qword_E18730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18730);
  }

  return result;
}

unint64_t sub_7DD0E8(uint64_t a1)
{
  result = sub_7DD110();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_7DD110()
{
  result = qword_E18788;
  if (!qword_E18788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18788);
  }

  return result;
}

unint64_t sub_7DD224()
{
  result = qword_E187C0;
  if (!qword_E187C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E187C0);
  }

  return result;
}

unint64_t sub_7DD27C()
{
  result = qword_E187D0;
  if (!qword_E187D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18798, &qword_B2C770);
    sub_36A00(&qword_E187D8, &qword_E187E0, &unk_B2C790, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E187D0);
  }

  return result;
}

uint64_t sub_7DD334(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GradientMaskModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_AB6710();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E187A8, &qword_B2C780);
  sub_AB5D50();
  swift_getWitnessTable();
  sub_36A00(&qword_E187C8, &qword_E187A8, &qword_B2C780, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
  return swift_getWitnessTable();
}

uint64_t HostedScenePhaseSupport.init(label:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8, &qword_B2C7A0);
  sub_AB7630();
  type metadata accessor for HostedScenePhaseModel(0);
  swift_allocObject();
  sub_7DDBC8(a1, a2, a3);
  sub_AB7630();
  return v7;
}

uint64_t property wrapper backing initializer of NoticePresentingResolverModifier.windowScene(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8, &qword_B2C7A0);
  sub_AB7630();
  return v2;
}

uint64_t type metadata accessor for HostedScenePhaseModel(uint64_t a1)
{
  result = qword_E188B8;
  if (!qword_E188B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t property wrapper backing initializer of HostedScenePhaseSupport.model(uint64_t a1)
{
  type metadata accessor for HostedScenePhaseModel(0);
  sub_AB7630();
  return v2;
}

uint64_t HostedScenePhaseSupport.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a2;
  v34 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187F0, &qword_B2C7A8);
  v31 = v11;
  __chkstk_darwin();
  v13 = &v30 - v12;
  v14 = sub_AB7A30();
  v16 = v15;
  v38 = a4;
  v39 = a5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187F8, &qword_B2C7B0);
  sub_AB7660();
  v30 = v36;
  v17 = v37;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18800, &qword_B2C7B8);
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18808, &qword_B2C7C0) + 36)];
  *v19 = v30;
  *(v19 + 2) = v17;
  *(v19 + 3) = v14;
  *(v19 + 4) = v16;
  KeyPath = swift_getKeyPath();
  *&v36 = a2;
  *(&v36 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18810, &qword_B2C7F8);
  sub_AB7640();
  v21 = v38;
  swift_getKeyPath();
  *&v36 = v21;
  sub_7E059C(&qword_E18820, type metadata accessor for HostedScenePhaseModel, &unk_B2C928);
  sub_AB3990();

  v22 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v23 = &v13[*(v11 + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18830, &qword_B2C828) + 28);
  v25 = sub_AB56F0();
  (*(*(v25 - 8) + 16))(v23 + v24, &v21[v22], v25);

  *v23 = KeyPath;
  v38 = a4;
  v39 = a5;
  sub_AB7640();
  v26 = v35;
  v38 = v35;
  v27 = swift_allocObject();
  v27[2] = v32;
  v27[3] = a3;
  v27[4] = a4;
  v27[5] = a5;

  v28 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8, &qword_B2C7A0);
  sub_7DEA30();
  sub_7DEBCC();
  sub_AB7330();

  return sub_12E1C(v13, &qword_E187F0, &qword_B2C7A8);
}

uint64_t sub_7DD950(uint64_t a1)
{
  sub_AB56F0();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_AB5F70();
}

void sub_7DDA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18810, &qword_B2C7F8);
  sub_AB7640();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_7DEE08(Strong);
}

double View.hostedScenePhaseSupport(label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8, &qword_B2C7A0);
  sub_AB7630();
  type metadata accessor for HostedScenePhaseModel(0);
  swift_allocObject();
  sub_7DDBC8(a1, a2, a3);
  sub_AB7630();
  sub_AB7310();

  return result;
}

uint64_t sub_7DDBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v9 = enum case for ScenePhase.inactive(_:);
  v10 = sub_AB56F0();
  (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  if (qword_E16A30 != -1)
  {
    swift_once();
  }

  v11 = sub_AB4BC0();
  __swift_project_value_buffer(v11, static Logger.scenes);
  v12 = sub_AB4BA0();
  v13 = sub_AB9F50();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    v16 = sub_ABADE0();
    v18 = sub_7AB3E0(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "[ScenePhaseSupport:%{public}s] Init", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = v5;
  return v4;
}

uint64_t sub_7DDDEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB56F0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_7E059C(&qword_E18A18, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v13[0] = a1;
  LOBYTE(a1) = sub_AB91C0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v13[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_7DE414();
    v10(v7, v4);
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v11 = v13[0];
    v13[-2] = v2;
    v13[-1] = v11;
    v13[1] = v2;
    sub_7E059C(&qword_E18820, type metadata accessor for HostedScenePhaseModel, &unk_B2C928);
    sub_AB3980();
  }

  return (v10)(v13[0], v4);
}

uint64_t Logger.scenes.unsafeMutableAddressor()
{
  if (qword_E16A30 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.scenes);
}

uint64_t sub_7DE10C()
{
  v1 = v0;
  if (qword_E16A30 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, static Logger.scenes);

  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20[0] = v6;
    *v5 = 136446210;
    v7 = sub_ABADE0();
    v9 = sub_7AB3E0(v7, v8, v20);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "[ScenePhaseSupport:%{public}s] Deallocated — Removing notifications", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v10 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = objc_opt_self();
    v13 = v10 + 32;

    do
    {
      sub_808B0(v13, v20);
      v14 = [v12 defaultCenter];
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      [v14 removeObserver:sub_ABB3A0()];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v20);
      v13 += 32;
      --v11;
    }

    while (v11);
  }

  v15 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v16 = sub_AB56F0();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  swift_unknownObjectWeakDestroy();

  v17 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel___observationRegistrar;
  v18 = sub_AB39D0();
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  return v1;
}

uint64_t sub_7DE3C0()
{
  sub_7DE10C();

  return swift_deallocClassInstance();
}

void sub_7DE414()
{
  v1 = v0;
  v2 = sub_AB56F0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E16A30 != -1)
  {
    swift_once();
  }

  v6 = sub_AB4BC0();
  __swift_project_value_buffer(v6, static Logger.scenes);

  v18 = sub_AB4BA0();
  v7 = sub_AB9F50();

  if (os_log_type_enabled(v18, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = sub_ABADE0();
    v11 = sub_7AB3E0(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    swift_getKeyPath();
    v19 = v0;
    sub_7E059C(&qword_E18820, type metadata accessor for HostedScenePhaseModel, &unk_B2C928);
    sub_AB3990();

    v12 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v12, v2);
    v13 = sub_AB9350();
    v15 = sub_7AB3E0(v13, v14, &v20);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_0, v18, v7, "[ScenePhaseSupport:%{public}s] scenePhase changed: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v18;
  }
}

uint64_t sub_7DE710@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_7E059C(&qword_E18820, type metadata accessor for HostedScenePhaseModel, &unk_B2C928);
  sub_AB3990();

  v3 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v4 = sub_AB56F0();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_7DE808@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7E059C(&qword_E18820, type metadata accessor for HostedScenePhaseModel, &unk_B2C928);
  sub_AB3990();

  v4 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v5 = sub_AB56F0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_7DE904(uint64_t a1)
{
  sub_AB56F0();
  v2 = __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1, v2);
  return sub_7DDDEC(v4);
}

uint64_t sub_7DE9D4()
{

  return swift_deallocObject();
}

unint64_t sub_7DEA30()
{
  result = qword_E18838;
  if (!qword_E18838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E187F0, &qword_B2C7A8);
    sub_7DEAE8();
    sub_36A00(&qword_E18860, &qword_E18830, &qword_B2C828, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18838);
  }

  return result;
}

unint64_t sub_7DEAE8()
{
  result = qword_E18840;
  if (!qword_E18840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18808, &qword_B2C7C0);
    sub_36A00(&qword_E18848, &qword_E18800, &qword_B2C7B8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_36A00(&qword_E18850, &qword_E18858, &qword_B2C830, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18840);
  }

  return result;
}

unint64_t sub_7DEBCC()
{
  result = qword_E18868;
  if (!qword_E18868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E187E8, &qword_B2C7A0);
    sub_7E059C(&qword_E18870, sub_7DEC80, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18868);
  }

  return result;
}

unint64_t sub_7DEC80()
{
  result = qword_E18878;
  if (!qword_E18878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E18878);
  }

  return result;
}

uint64_t sub_7DECCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB56F0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  sub_7DE414();
  return (*(v5 + 8))(v8, v4);
}

void sub_7DEE08(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A20, &unk_B2C960);
  __chkstk_darwin();
  v3 = &v28 - v2;
  v4 = sub_AB56F0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a1)
    {
      sub_7DEC80();
      v10 = a1;
      v11 = sub_ABA790();

      if (v11)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  if (qword_E16A30 != -1)
  {
    swift_once();
  }

  v12 = sub_AB4BC0();
  __swift_project_value_buffer(v12, static Logger.scenes);

  v13 = sub_AB4BA0();
  v14 = sub_AB9F50();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v15 = 136446466;
    v16 = sub_ABADE0();
    v29 = v3;
    v18 = sub_7AB3E0(v16, v17, &v31);
    v28 = v7;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v30 = swift_unknownObjectWeakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8, &qword_B2C7A0);
    v20 = sub_AB9350();
    v22 = sub_7AB3E0(v20, v21, &v31);
    v3 = v29;

    *(v15 + 14) = v22;
    v7 = v28;
    _os_log_impl(&dword_0, v13, v14, "[ScenePhaseSupport:%{public}s] windowScene changed: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 activationState];

    v26 = &enum case for ScenePhase.background(_:);
    v27 = &enum case for ScenePhase.active(_:);
    if (v25)
    {
      v27 = &enum case for ScenePhase.inactive(_:);
    }

    if (v25 != &dword_0 + 2)
    {
      v26 = v27;
    }

    (*(v5 + 104))(v3, *v26, v4);
    (*(v5 + 56))(v3, 0, 1, v4);
    (*(v5 + 32))(v7, v3, v4);
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    (*(v5 + 104))(v7, enum case for ScenePhase.inactive(_:), v4);
  }

  sub_7DDDEC(v7);
  sub_7DF210();
}

double sub_7DF210()
{
  v1 = v0;
  v2 = sub_AB56F0();
  v91 = *(v2 - 8);
  v92 = v2;
  __chkstk_darwin();
  v88 = v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A00, &qword_B2C948);
  v4 = *(v93 - 8);
  __chkstk_darwin();
  v87 = (v82 - v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_E16A30 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, static Logger.scenes);

    v9 = v7;
    v10 = sub_AB4BA0();
    v11 = sub_AB9F50();

    v12 = v11;
    v13 = os_log_type_enabled(v10, v11);
    v90 = v9;
    if (v13)
    {
      v14 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v14 = 136446466;
      v15 = sub_ABADE0();
      v17 = sub_7AB3E0(v15, v16, &aBlock);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      v18 = v9;
      v19 = [v18 description];
      v20 = sub_AB92A0();
      v22 = v21;

      v23 = sub_7AB3E0(v20, v22, &aBlock);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_0, v10, v12, "[ScenePhaseSupport:%{public}s] Setting up notification observers for scene %{public}s)", v14, 0x16u);
      swift_arrayDestroy();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A08, &qword_B2C950);
    v24 = *(v4 + 72);
    v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v96 = 6;
    v26 = swift_allocObject();
    v82[2] = v26;
    v27 = v26 + v25;
    v28 = v92;
    v29 = v93;
    v30 = *(v93 + 48);
    v95 = UISceneDidActivateNotification;
    *(v26 + v25) = UISceneDidActivateNotification;
    v31 = v91 + 104;
    v32 = *(v91 + 104);
    v32(v26 + v25 + v30, enum case for ScenePhase.active(_:), v28);
    v33 = *(v29 + 48);
    v94 = UISceneWillConnectNotification;
    *(v27 + v24) = UISceneWillConnectNotification;
    v34 = enum case for ScenePhase.inactive(_:);
    v32(v27 + v24 + v33, enum case for ScenePhase.inactive(_:), v28);
    v35 = (v27 + 2 * v24);
    v36 = *(v29 + 48);
    v84 = UISceneWillDeactivateNotification;
    *v35 = UISceneWillDeactivateNotification;
    v32(v35 + v36, v34, v28);
    v37 = (v27 + 3 * v24);
    v38 = *(v29 + 48);
    v83 = UISceneWillEnterForegroundNotification;
    *v37 = UISceneWillEnterForegroundNotification;
    v32(v37 + v38, v34, v28);
    v39 = (v27 + 4 * v24);
    v40 = *(v29 + 48);
    *v39 = UISceneDidDisconnectNotification;
    v41 = enum case for ScenePhase.background(_:);
    v32(v39 + v40, enum case for ScenePhase.background(_:), v28);
    v85 = v24;
    v42 = (v27 + 5 * v24);
    v43 = *(v29 + 48);
    *v42 = UISceneDidEnterBackgroundNotification;
    v32(v42 + v43, v41, v28);
    v102 = _swiftEmptyArrayStorage;
    v44 = v95;
    v45 = v94;
    v46 = v84;
    v47 = v83;
    v48 = UISceneDidDisconnectNotification;
    v49 = UISceneDidEnterBackgroundNotification;
    sub_8A5768(0, 6, 0);
    v50 = v102;
    v84 = objc_opt_self();
    v83 = objc_opt_self();
    v82[5] = v31 - 88;
    v82[4] = v31 - 72;
    v82[3] = &v98;
    v82[1] = v27;
    v51 = v27;
    v86 = v1;
    v53 = v91;
    v52 = v92;
    do
    {
      v95 = v50;
      v54 = v87;
      sub_7E039C(v51, v87);
      v55 = *v54;
      v56 = *(v93 + 48);
      v94 = [v84 defaultCenter];
      v57 = [v83 mainQueue];
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = v88;
      (*(v53 + 16))(v88, v54 + v56, v52);
      v60 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v58;
      *(v61 + 24) = v55;
      (*(v53 + 32))(v61 + v60, v59, v52);
      v100 = sub_7E0510;
      v101 = v61;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v98 = sub_7DFE60;
      ObjectType = &block_descriptor_221;
      v62 = _Block_copy(&aBlock);
      v63 = v55;

      v64 = v94;
      v65 = [(NSString *)v94 addObserverForName:v63 object:v90 queue:v57 usingBlock:v62];
      v66 = v62;
      v50 = v95;
      _Block_release(v66);

      ObjectType = swift_getObjectType();
      *&aBlock = v65;
      sub_12E1C(v54, &qword_E18A00, &qword_B2C948);
      v102 = v50;
      v68 = v50[2];
      v67 = v50[3];
      if (v68 >= v67 >> 1)
      {
        sub_8A5768((v67 > 1), v68 + 1, 1);
        v50 = v102;
      }

      v50[2] = (v68 + 1);
      sub_9ACFC(&aBlock, &v50[4 * v68 + 4]);
      v69 = v86;
      v51 += v85;
      --v96;
    }

    while (v96);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v70 = *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = v50;
    sub_7E02C8(v70);
  }

  else
  {
    if (qword_E16A30 != -1)
    {
      swift_once();
    }

    v72 = sub_AB4BC0();
    __swift_project_value_buffer(v72, static Logger.scenes);

    v73 = sub_AB4BA0();
    v74 = sub_AB9F50();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v1;
      v77 = swift_slowAlloc();
      *&aBlock = v77;
      *v75 = 136446210;
      v78 = sub_ABADE0();
      v80 = sub_7AB3E0(v78, v79, &aBlock);

      *(v75 + 4) = v80;
      _os_log_impl(&dword_0, v73, v74, "[ScenePhaseSupport:%{public}s] Removing notification observers", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      v1 = v76;
    }

    v81 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
    sub_7E02C8(v81);
  }

  return result;
}

double sub_7DFBA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_AB56F0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_E16A30 != -1)
    {
      swift_once();
    }

    v11 = sub_AB4BC0();
    __swift_project_value_buffer(v11, static Logger.scenes);
    v12 = a3;

    v13 = sub_AB4BA0();
    v14 = sub_AB9F50();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = a3;
      v16 = v15;
      v29 = swift_slowAlloc();
      *v16 = 136446466;
      v17 = sub_ABADE0();
      v27 = a4;
      v19 = sub_7AB3E0(v17, v18, &v29);
      v26 = v6;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v28 = v25;
      v21 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A10, &qword_B2C958);
      v22 = sub_AB9350();
      v24 = sub_7AB3E0(v22, v23, &v29);
      a4 = v27;

      *(v16 + 14) = v24;
      v6 = v26;
      _os_log_impl(&dword_0, v13, v14, "[ScenePhaseSupport:%{public}s] Received notification %{public}s)", v16, 0x16u);
      swift_arrayDestroy();
    }

    (*(v7 + 16))(v9, a4, v6);
    sub_7DDDEC(v9);
  }

  return result;
}

uint64_t sub_7DFE60(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB2BD0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_AB2B90();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_7DFF54()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.scenes);
  __swift_project_value_buffer(v0, static Logger.scenes);
  return static Logger.music(_:)(0x73656E656353, 0xE600000000000000);
}

uint64_t static Logger.scenes.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E16A30 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.scenes);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_7E0090(uint64_t a1)
{
  result = sub_AB56F0();
  if (v2 <= 0x3F)
  {
    result = sub_AB39D0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_7E0180()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E187F0, &qword_B2C7A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E187E8, &qword_B2C7A0);
  sub_7DEA30();
  sub_7DEBCC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_7E0210(void *a1)
{
  sub_AB5D50();
  sub_7E0274();
  return swift_getWitnessTable();
}

unint64_t sub_7E0274()
{
  result = qword_E189F8;
  if (!qword_E189F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E189F8);
  }

  return result;
}

uint64_t sub_7E02C8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = v2 + 32;
    do
    {
      sub_808B0(v4, v6);
      v5 = [v3 defaultCenter];
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      [v5 removeObserver:sub_ABB3A0()];

      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_0(v6);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_7E039C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A00, &qword_B2C948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7E040C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_7E0444()
{
  v1 = sub_AB56F0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_7E0510(uint64_t a1)
{
  v3 = *(sub_AB56F0() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_7DFBA4(a1, v4, v5, v6);
}

double block_copy_helper_221(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_7E059C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WindowSceneResolver.windowScene.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A28, &qword_B2C970);
  sub_AB77F0();
  return v4;
}

void (*WindowSceneResolver.windowScene.modify(void *a1, uint64_t a2, uint64_t a3, void *a4))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v10 = a4;

  v9[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A28, &qword_B2C970);
  sub_AB77F0();
  return sub_7E076C;
}

void sub_7E076C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v5 = *(v2 + 80);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    sub_AB7800();
  }

  else
  {
    sub_AB7800();
  }

  free(v2);
}

uint64_t WindowSceneResolver.$windowScene.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A28, &qword_B2C970);
  sub_AB7810();
  return v4;
}

id WindowSceneResolver.makeUIView(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A28, &qword_B2C970);
  sub_AB7810();
  v4 = v17;
  v5 = v18;
  v6 = type metadata accessor for WindowSceneResolver.View();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene];
  *v8 = v16;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  v15.receiver = v7;
  v15.super_class = v6;

  v9 = v5;
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setUserInteractionEnabled:0];

  return v12;
}

Swift::Void __swiftcall WindowSceneResolver.View.willMove(toWindow:)(UIWindow_optional toWindow)
{
  isa = toWindow.value.super.super.super.isa;
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "willMoveToWindow:", isa);
  v3 = [(objc_class *)isa windowScene];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A28, &qword_B2C970);
  sub_AB7800();
}

void sub_7E0BEC()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene + 16);
}

unint64_t sub_7E0C4C()
{
  result = qword_E18A38;
  if (!qword_E18A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18A38);
  }

  return result;
}

uint64_t sub_7E0D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7E0E28();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_7E0D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7E0E28();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_7E0DDC(uint64_t a1)
{
  sub_7E0E28();
  sub_AB65B0();
  __break(1u);
}

__n128 __swift_memcpy24_8_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_7E0E28()
{
  result = qword_E18A68;
  if (!qword_E18A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18A68);
  }

  return result;
}

uint64_t NoticePresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  NoticePresenter.init()();
  return v0;
}

uint64_t NoticePresenter.init()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = 0;
  swift_unknownObjectWeakInit();
  v6[8] = 2;
  v7 = 0x4024000000000000;
  v3 = *&NSDirectionalEdgeInsetsZero.bottom;
  v8 = *&NSDirectionalEdgeInsetsZero.top;
  v9 = v3;
  sub_7E247C(v6, v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  v4 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = 0;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  return v0;
}

uint64_t sub_7E0F9C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8, &qword_B2CB38);
  __chkstk_darwin();
  v4 = v8 - v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_15F84(v1 + v5, v4, &qword_E18AA8, &qword_B2CB38);
  v6 = sub_7E6298(v4, a1);
  sub_12E1C(v4, &qword_E18AA8, &qword_B2CB38);
  if (v6)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v8[-2] = v1;
    v8[-1] = a1;
    v8[2] = v1;
    sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    sub_AB3980();
  }

  else
  {
    sub_15F84(a1, v4, &qword_E18AA8, &qword_B2CB38);
    swift_beginAccess();
    sub_7E7844(v4, v1 + v5);
    swift_endAccess();
  }

  return sub_12E1C(a1, &qword_E18AA8, &qword_B2CB38);
}

uint64_t NoticePresenter.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_7E24B4(v1 + v3, v7);
  v4 = _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(v7, a1);
  sub_7E60DC(v7);
  if (v4)
  {
    sub_7E24B4(a1, v7);
    sub_7E24B4(v1 + v3, v6);
    swift_beginAccess();
    sub_7E61B4(v7, v1 + v3);
    swift_endAccess();
    sub_7E24EC(v6);
    sub_7E60DC(v6);
    sub_7E60DC(v7);
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v7[0] = v1;
    sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    sub_AB3980();
  }

  return sub_7E60DC(a1);
}

double NoticePresenter.willPresentHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3980();
  sub_17654(a1, a2);

  return result;
}

uint64_t sub_7E1428@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return sub_15F84(v3 + v4, a2, &qword_E18AA8, &qword_B2CB38);
}

uint64_t sub_7E1500(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8, &qword_B2CB38);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_15F84(a1, &v5 - v2, &qword_E18AA8, &qword_B2CB38);
  return sub_7E0F9C(v3);
}

uint64_t NoticePresenter.notice.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return sub_15F84(v5 + v3, a1, &qword_E18AA8, &qword_B2CB38);
}

double sub_7E1684(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_7E78D0(a2, a1 + v4);
  swift_endAccess();
  return result;
}

Swift::Void __swiftcall NoticePresenter.dismiss(_:)(Swift::Bool a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8, &qword_B2CB38);
  __chkstk_darwin();
  v5 = &v12[-v4];
  swift_getKeyPath();
  v14 = v1;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  v6 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_15F84(v2 + v6, v5, &qword_E18AA8, &qword_B2CB38);
  v7 = type metadata accessor for Notice(0);
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v5, 1, v7);
  sub_12E1C(v5, &qword_E18AA8, &qword_B2CB38);
  if (v6 != 1)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *&v12[-16] = v2;
    *&v12[-8] = 0;
    v13 = v2;
    sub_AB3980();

    if (a1)
    {
      sub_AB7A90();
    }

    sub_AB5B00();

    swift_getKeyPath();
    v13 = v2;
    sub_AB3990();

    v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v9 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v9)
    {
      *(v9 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 0;
    }

    swift_getKeyPath();
    v13 = v2;
    sub_AB3990();

    if (*(v2 + v8))
    {
      sub_13C80(0, &qword_E1B340, OS_dispatch_queue_ptr);
      v10 = sub_ABA150();
      if (a1)
      {
        v11 = 2.0;
      }

      else
      {
        v11 = 0.0;
      }

      OS_dispatch_queue.asyncAfter(_:block:)(sub_7E6290, v2, v11);
    }
  }
}

uint64_t sub_7E1A38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8, &qword_B2CB38);
  __chkstk_darwin();
  v1 = &v4 - v0;
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  return sub_7E0F9C(v1);
}

void sub_7E1B00(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8, &qword_B2CB38);
  __chkstk_darwin();
  v3 = v7 - v2;
  swift_getKeyPath();
  v7[1] = a1;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_15F84(a1 + v4, v3, &qword_E18AA8, &qword_B2CB38);
  v5 = type metadata accessor for Notice(0);
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_12E1C(v3, &qword_E18AA8, &qword_B2CB38);
  if (v4 == 1)
  {
    sub_7E3280(0, v6);
  }
}

uint64_t NoticePresenter.present(_:internalOnly:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v5);
  _s11MusicCoreUI15NoticePresenterC7present_12internalOnlyy0aB00D0V_SbtF_0(v5, v2);
  return sub_721288(v5);
}

void sub_7E1D24(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v11[0] = a1;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  if (!*(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow))
  {
    v4 = [objc_allocWithZone(type metadata accessor for NoticePresenter.PassthroughWindow()) initWithWindowScene:a2];
    [v4 setWindowLevel:UIWindowLevelStatusBar];
    swift_getKeyPath();
    v11[0] = a1;
    sub_AB3990();

    v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    sub_7E24B4(a1 + v5, v11);
    v6 = objc_allocWithZone(type metadata accessor for NoticePresenter.UIRootViewController());

    v8 = sub_7E6538(v7, v11);

    [v4 setRootViewController:v8];

    [v4 makeKeyAndVisible];
    [v4 resignKeyWindow];
    v9 = v4;
    sub_7E3280(v4, v10);
  }
}

void sub_7E1F00(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8, &qword_B2CB38);
  __chkstk_darwin();
  v5 = &v18 - v4;
  sub_7E76F0(a2, &v18 - v4);
  v6 = type metadata accessor for Notice(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_7E0F9C(v5);
  swift_getKeyPath();
  v19 = a1;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  v7 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v8 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v8)
  {
    v9 = [v8 rootViewController];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = [v11 view];

        if (!v12)
        {
          __break(1u);
          goto LABEL_15;
        }

        [v12 setNeedsLayout];
        v10 = v12;
      }
    }
  }

  swift_getKeyPath();
  v19 = a1;
  sub_AB3990();

  v13 = *(a1 + v7);
  if (v13)
  {
    v14 = [v13 rootViewController];
    if (v14)
    {
      v15 = v14;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v16 = swift_dynamicCastClass();
      if (!v16)
      {
LABEL_12:

        return;
      }

      v17 = [v16 view];

      if (v17)
      {
        [v17 layoutIfNeeded];
        v15 = v17;
        goto LABEL_12;
      }

LABEL_15:
      __break(1u);
    }
  }
}

double sub_7E217C()
{
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  return result;
}

double sub_7E2228@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  *a2 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);

  return result;
}

double sub_7E22DC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3980();

  return result;
}

double sub_7E23A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = a2;

  if (v2)
  {
    sub_AB7CA0();
  }

  return result;
}

uint64_t NoticePresenter.Configuration.init(edge:padding:insets:)(char a1, double a3, double a4, double a5, double a6, double a7)
{
  result = swift_unknownObjectWeakInit();
  *(result + 8) = a1;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 40) = a6;
  *(result + 48) = a7;
  return result;
}

void sub_7E24EC(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v9[0] = v1;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_7E24B4(v1 + v4, v9);
  v5 = _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(a1, v9);
  sub_7E60DC(v9);
  if ((v5 & 1) == 0)
  {
    swift_getKeyPath();
    v9[0] = v2;
    sub_AB3990();

    v6 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v6)
    {
      v7 = [v6 rootViewController];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for NoticePresenter.UIRootViewController();
        if (swift_dynamicCastClass())
        {
          swift_getKeyPath();
          v9[0] = v2;
          sub_AB3990();

          sub_7E24B4(v2 + v4, v9);
          sub_7E5430(v9);
        }
      }
    }
  }
}

void (*sub_7E26A8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  *(v3 + 216) = v1;
  *(v3 + 224) = v5;
  swift_beginAccess();
  sub_7E24B4(v1 + v5, v4);
  return sub_7E2740;
}

void sub_7E2740(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 216);
  v4 = *(*a1 + 224);
  if (a2)
  {
    sub_7E24B4(*a1, v2 + 56);
    sub_7E24B4(v3 + v4, v2 + 112);
    swift_beginAccess();
    sub_7E61B4(v2 + 56, v3 + v4);
    swift_endAccess();
    sub_7E24EC(v2 + 112);
    sub_7E60DC(v2 + 112);
  }

  else
  {
    sub_7E24B4(v3 + v4, v2 + 56);
    swift_beginAccess();
    sub_7E61B4(v2, v3 + v4);
    swift_endAccess();
    sub_7E24EC(v2 + 56);
  }

  sub_7E60DC(v2 + 56);
  sub_7E60DC(v2);

  free(v2);
}

uint64_t NoticePresenter.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return sub_7E24B4(v5 + v3, a1);
}

uint64_t sub_7E28F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return sub_7E24B4(v3 + v4, a2);
}

uint64_t sub_7E29B8(uint64_t a1, uint64_t a2)
{
  sub_7E24B4(a2, v6);
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_7E24B4(a1 + v3, v5);
  swift_beginAccess();
  sub_7E61B4(v6, a1 + v3);
  swift_endAccess();
  sub_7E24EC(v5);
  sub_7E60DC(v5);
  return sub_7E60DC(v6);
}

uint64_t (*NoticePresenter.configuration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  *v4 = v1;
  swift_getKeyPath();
  sub_AB39B0();

  v4[7] = sub_7E26A8(v4);
  return sub_7E2BA0;
}

uint64_t NoticePresenter.willPresentHandler.getter()
{
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_307CC(*v1, v1[1]);
  return v2;
}

uint64_t sub_7E2CE0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  v4 = (v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_7E7BF4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_307CC(v5, v6);
}

double sub_7E2DEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_7E7B94;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  __chkstk_darwin();
  sub_307CC(v2, v3);
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3980();
  sub_17654(v5, v4);

  return result;
}

uint64_t sub_7E2F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a2;
  v5[1] = a3;
  sub_307CC(a2, a3);
  return sub_17654(v6, v7);
}

uint64_t (*NoticePresenter.willPresentHandler.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  *v4 = v1;
  swift_getKeyPath();
  sub_AB39B0();

  v4[7] = sub_7E2BAC(v4);
  return sub_7E3104;
}

void *sub_7E3110()
{
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  v2 = v1;
  return v1;
}

id sub_7E31C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  v4 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *a2 = v4;

  return v4;
}

void sub_7E3280(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v6 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v6)
  {
    if (a1)
    {
      type metadata accessor for NoticePresenter.PassthroughWindow();
      v7 = v6;
      v8 = a1;
      v9 = sub_ABA790();

      if (v9)
      {
        v10 = *(v3 + v5);
        goto LABEL_8;
      }
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    sub_AB3980();

    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

  v10 = 0;
  v8 = 0;
LABEL_8:
  *(v3 + v5) = a1;
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  v11 = v8;
  sub_AB3990();

  if (v10)
  {
    v12 = *(v3 + v5);
    if (!v12 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v13 = v12, v10 = v10, v14 = sub_ABA790(), v10, v13, (v14 & 1) == 0))
    {
      [v10 resignKeyWindow];
    }
  }

  else
  {
  }
}

void sub_7E34C8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v5 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = a2;
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  v6 = a2;
  sub_AB3990();

  if (v5)
  {
    v7 = *(a1 + v4);
    if (!v7 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v8 = v7, v5 = v5, v9 = sub_ABA790(), v5, v8, (v9 & 1) == 0))
    {
      [v5 resignKeyWindow];
    }
  }
}

uint64_t NoticePresenter.deinit()
{
  sub_12E1C(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &qword_E18AA8, &qword_B2CB38);

  sub_7E60DC(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  sub_17654(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler), *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler + 8));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = sub_AB39D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NoticePresenter.__deallocating_deinit()
{
  sub_12E1C(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &qword_E18AA8, &qword_B2CB38);

  sub_7E60DC(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  sub_17654(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler), *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler + 8));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = sub_AB39D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double View.noticePresenting(_:configurator:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8, &qword_B2C7A0);
  sub_AB7630();
  sub_AB7310();

  return result;
}

__n128 NoticePresentingResolverModifier.init(noticePresenter:configurator:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8, &qword_B2C7A0);
  sub_AB7630();
  result = v13;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  return result;
}

uint64_t NoticePresentingResolverModifier.noticePresenter.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AB8, &qword_B2CB98);
  sub_AB77F0();
  return v1;
}

void (*NoticePresentingResolverModifier.noticePresenter.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v3[10] = *v1;
  v3[11] = v6;
  v7 = v1[2];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_7E707C((v3 + 6), (v3 + 3));

  sub_15F84((v4 + 7), (v4 + 3), &qword_E18AC0, &qword_B2CBA0);
  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AB8, &qword_B2CB98);
  sub_AB77F0();
  return sub_7E3AC0;
}

void sub_7E3AC0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v2[3] = *(*a1 + 80);
  v2[9] = v2[8];
  v4 = v2[12];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    sub_AB7800();
    sub_7E70D8((v2 + 6));

    sub_12E1C((v2 + 7), &qword_E18AC0, &qword_B2CBA0);
  }

  else
  {
    sub_AB7800();
    sub_7E70D8((v2 + 6));

    sub_12E1C((v2 + 7), &qword_E18AC0, &qword_B2CBA0);
  }

  free(v2);
}

uint64_t NoticePresentingResolverModifier.$noticePresenter.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AB8, &qword_B2CB98);
  sub_AB7810();
  return v1;
}

uint64_t NoticePresentingResolverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AC8, &unk_B2CBA8);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v8 = sub_AB7A30();
  v10 = v9;
  v12 = v2[6];
  v29[0] = v2[5];
  v11 = v29[0];
  v29[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187F8, &qword_B2C7B0);
  sub_AB7660();
  v23 = v27;
  v13 = v28;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AD0, &qword_B2CBB8);
  (*(*(v14 - 8) + 16))(v7, a1, v14);
  v15 = &v7[*(v5 + 36)];
  *v15 = v23;
  *(v15 + 2) = v13;
  *(v15 + 3) = v8;
  *(v15 + 4) = v10;
  *&v27 = v11;
  *(&v27 + 1) = v12;
  sub_AB7640();
  v16 = v29[0];
  v26 = v29[0];
  *&v27 = v12;
  v17 = *v3;
  v18 = v3[3];
  v30 = v3[2];
  v31 = v17;
  v19 = v3[4];
  v29[0] = v11;
  v20 = swift_allocObject();
  v21 = *(v3 + 1);
  *(v20 + 16) = *v3;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v3 + 2);
  *(v20 + 64) = v3[6];
  sub_7E707C(&v31, v25);

  sub_15F84(&v30, v25, &qword_E18AC0, &qword_B2CBA0);
  sub_307CC(v18, v19);
  sub_15F84(v29, v25, &qword_E187E8, &qword_B2C7A0);
  sub_15F84(&v27, v25, &qword_E18AD8, &unk_B2CBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8, &qword_B2C7A0);
  sub_7E719C();
  sub_7DEBCC();
  sub_AB7330();

  return sub_12E1C(v7, &qword_E18AC8, &unk_B2CBA8);
}

uint64_t sub_7E3EA0(uint64_t a1, void **a2, __int128 *a3)
{
  v4 = *a2;
  v5 = *(a3 + 3);
  if (!v5)
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = *(a3 + 4);
  sub_307CC(*(a3 + 3), v6);
  v7 = v4;
  v8 = UIWindowScene.noticePresenter.getter();
  swift_getKeyPath();
  *&v13 = v8;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  v9 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_7E24B4(v8 + v9, &v13);

  v5(&v13);
  UIWindowScene.noticePresenter.getter();
  sub_7E24B4(&v13, v12);
  NoticePresenter.configuration.setter(v12);
  sub_17654(v5, v6);

  sub_7E60DC(&v13);
LABEL_5:
  v10 = UIWindowScene.noticePresenter.getter();
LABEL_7:
  v13 = *a3;
  v14 = *(a3 + 2);
  v12[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AB8, &qword_B2CB98);
  return sub_AB7800();
}

uint64_t UIWindowScene.noticePresenter.getter()
{
  UIWindowScene.noticePresenting.getter(v5);
  if (!v6)
  {
    sub_12E1C(v5, &qword_E18AF0, &qword_B2CBD0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AF8, &qword_B2CBD8);
  type metadata accessor for NoticePresenter(0);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v1 = type metadata accessor for NoticePresenter(0);
    v0 = swift_allocObject();
    NoticePresenter.init()();
    v6 = v1;
    v7 = &protocol witness table for NoticePresenter;
    v5[0] = v0;

    UIWindowScene.noticePresenting.setter(v5);
    swift_getKeyPath();
    v5[0] = v0;
    sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    sub_AB3990();

    v5[0] = v0;
    swift_getKeyPath();
    sub_AB39B0();

    v2 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    sub_7E24B4(v0 + v2, v5);
    swift_unknownObjectWeakAssign();
    sub_7E24B4(v0 + v2, v4);
    swift_beginAccess();
    sub_7E61B4(v5, v0 + v2);
    swift_endAccess();
    sub_7E24EC(v4);
    sub_7E60DC(v4);
    sub_7E60DC(v5);
    v5[0] = v0;
    swift_getKeyPath();
    sub_AB39A0();

    return v0;
  }

  return v4[0];
}

__n128 sub_7E42A0@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18D98, &qword_B2CE88);
  __chkstk_darwin();
  v4 = v10 - v3;
  *v4 = sub_AB6440();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DA0, &qword_B2CE90);
  sub_7E43FC(v1, &v4[*(v5 + 44)]);
  sub_AB7A30();
  sub_AB5E90();
  sub_36B0C(v4, a1, &qword_E18D98, &qword_B2CE88);
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DA8, &qword_B2CE98) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_7E43FC@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v92 = a2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DB0, &qword_B2CEA0);
  v91 = *(v90 - 8);
  __chkstk_darwin();
  v4 = &KeyPath - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8, &qword_B2CB38);
  __chkstk_darwin();
  v6 = &KeyPath - v5;
  v7 = type metadata accessor for Notice(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DB8, &qword_B2CEA8);
  __chkstk_darwin();
  v12 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &KeyPath - v13;
  v85 = *(a1 + 4);
  sub_AB7A30();
  sub_AB5970();
  v89 = v96[3];
  v88 = v98;
  v87 = v100;
  v86 = v101;
  v110 = 1;
  v109 = v97;
  v108 = v99;
  v14 = *(a1 + 1);
  v83 = *a1;
  v102 = v83;
  v103 = v14;
  v82 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DC0, &qword_B2CEB0);
  sub_AB7640();
  v15 = v96[0];
  swift_getKeyPath();
  v102 = v15;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  v16 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_15F84(*&v15 + v16, v6, &qword_E18AA8, &qword_B2CB38);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_12E1C(v6, &qword_E18AA8, &qword_B2CB38);
    v17 = 1;
    v18 = v84;
    v19 = v90;
  }

  else
  {
    v81 = v10;
    sub_7E768C(v6, v10);
    sub_7E76F0(v10, v4);
    v20 = type metadata accessor for NoticeView(0);
    v21 = &v4[v20[5]];
    *v21 = swift_getKeyPath();
    *(v21 + 1) = 0;
    *(v21 + 8) = 0;
    v22 = &v4[v20[6]];
    v107 = 0x3FF0000000000000;
    sub_AB7630();
    v23 = v103;
    *v22 = v102;
    *(v22 + 1) = v23;
    v24 = &v4[v20[7]];
    LOBYTE(v107) = 0;
    sub_AB5890();
    v25 = v103;
    v26 = v104;
    *v24 = LOBYTE(v102);
    *(v24 + 1) = v25;
    *(v24 + 1) = v26;
    v27 = &v4[v20[8]];
    LOBYTE(v107) = 0;
    sub_AB7630();
    v28 = v103;
    *v27 = LOBYTE(v102);
    *(v27 + 1) = v28;
    LOBYTE(v27) = sub_AB6AD0();
    sub_AB5690();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DD0, &qword_B2CEE8) + 36)];
    *v37 = v27;
    *(v37 + 1) = v30;
    *(v37 + 2) = v32;
    *(v37 + 3) = v34;
    *(v37 + 4) = v36;
    v37[40] = 0;
    LOBYTE(v27) = sub_AB6AF0();
    sub_AB5690();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DD8, &qword_B2CEF0) + 36)];
    *v46 = v27;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    v46[40] = 0;
    LOBYTE(v27) = sub_AB6B00();
    sub_AB5690();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DE0, &qword_B2CEF8) + 36)];
    *v55 = v27;
    *(v55 + 1) = v48;
    *(v55 + 2) = v50;
    *(v55 + 3) = v52;
    *(v55 + 4) = v54;
    v55[40] = 0;
    sub_AB59B0();
    sub_AB7A50();
    sub_AB59D0();

    sub_AB7BB0();
    sub_AB59A0();
    sub_AB7A50();
    sub_AB59D0();

    sub_AB7BB0();
    sub_AB59A0();
    sub_AB7A50();
    sub_AB59D0();

    sub_AB5990();

    v56 = sub_AB59C0();

    *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DE8, &qword_B2CF00) + 36)] = v56;
    KeyPath = swift_getKeyPath();
    v107 = v82;
    sub_AB9940();

    sub_15F84(&v107, &v102, &qword_E18DF0, &qword_B2CF08);
    v57 = sub_AB9930();
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = &protocol witness table for MainActor;
    v59 = *(a1 + 1);
    *(v58 + 32) = *a1;
    *(v58 + 48) = v59;
    *(v58 + 64) = *(a1 + 2);

    sub_15F84(&v107, &v102, &qword_E18DF0, &qword_B2CF08);
    v60 = sub_AB9930();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = &protocol witness table for MainActor;
    v62 = *(a1 + 1);
    *(v61 + 32) = *a1;
    *(v61 + 48) = v62;
    *(v61 + 64) = *(a1 + 2);
    sub_AB7820();
    sub_721288(v81);
    v63 = v102;
    v64 = v103;
    v65 = v104;
    v66 = v90;
    v67 = &v4[*(v90 + 36)];
    *v67 = KeyPath;
    *(v67 + 1) = v63;
    *(v67 + 2) = v64;
    v67[24] = v65;
    v18 = v84;
    sub_36B0C(v4, v84, &qword_E18DB0, &qword_B2CEA0);
    v17 = 0;
    v19 = v66;
  }

  (*(*&v91 + 56))(v18, v17, 1, v19);
  sub_AB7A30();
  sub_AB5970();
  v91 = v102;
  v90 = v104;
  v85 = v105;
  v84 = v106;
  v95 = 1;
  v94 = v103;
  v93 = BYTE8(v104);
  v68 = v110;
  v69 = v109;
  v70 = v108;
  sub_15F84(v18, v12, &qword_E18DB8, &qword_B2CEA8);
  v71 = v95;
  v72 = v94;
  v73 = v93;
  v74 = v92;
  *v92 = 0;
  *(v74 + 8) = v68;
  *(v74 + 2) = v89;
  *(v74 + 24) = v69;
  v74[4] = v88;
  *(v74 + 40) = v70;
  v75 = v86;
  v74[6] = v87;
  v74[7] = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DC8, &qword_B2CEB8);
  sub_15F84(v12, v74 + *(v76 + 48), &qword_E18DB8, &qword_B2CEA8);
  v77 = (v74 + *(v76 + 64));
  *v77 = 0.0;
  *(v77 + 8) = v71;
  v77[2] = v91;
  *(v77 + 24) = v72;
  *(v77 + 4) = v90;
  *(v77 + 40) = v73;
  v78 = v84;
  *(v77 + 6) = v85;
  *(v77 + 7) = v78;
  sub_12E1C(v18, &qword_E18DB8, &qword_B2CEA8);
  return sub_12E1C(v12, &qword_E18DB8, &qword_B2CEA8);
}

uint64_t sub_7E4E78@<X0>(__int128 *a1@<X2>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8, &qword_B2CB38);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DC0, &qword_B2CEB0);
  sub_AB7640();
  v6 = v11;
  swift_getKeyPath();
  *&v10 = v6;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_AB3990();

  v7 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_15F84(v6 + v7, v5, &qword_E18AA8, &qword_B2CB38);

  v8 = type metadata accessor for Notice(0);
  LOBYTE(v7) = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  result = sub_12E1C(v5, &qword_E18AA8, &qword_B2CB38);
  *a2 = v7;
  return result;
}

double sub_7E5038(_BYTE *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if ((*a1 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DC0, &qword_B2CEB0);
    sub_AB7640();
    NoticePresenter.dismiss(_:)(1);
  }

  return result;
}

void NoticePresenter.Configuration.insets.setter(double a1, double a2, double a3, double a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
}

id sub_7E512C(uint64_t a1, __n128 a2, double a3)
{
  v6 = a2.n128_f64[0];
  v12.receiver = v3;
  v12.super_class = type metadata accessor for NoticePresenter.PassthroughWindow();
  result = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, v6, a3);
  if (*(v3 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) != 1)
  {
    goto LABEL_6;
  }

  if (result)
  {
    v8 = result;
    v9 = [v3 rootViewController];
    result = v8;
    if (!v9)
    {
      goto LABEL_6;
    }

    result = [v9 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [v8 isDescendantOfView:result];

    result = v8;
    if ((v11 & 1) == 0)
    {
LABEL_6:

      return 0;
    }
  }

  return result;
}

id sub_7E5430(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration;
  swift_beginAccess();
  sub_7E61B4(a1, v4);
  swift_endAccess();
  if (![v1 isViewLoaded])
  {
    return sub_7E60DC(a1);
  }

  v5 = sub_AB6B10();
  v6 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v5, *(v4 + 16));
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_AB6500();
  v14[2] = v6;
  *(v14 + 3) = v8;
  *(v14 + 4) = v10;
  *(v14 + 5) = v12;
  v13(&v18, 0);
  result = [v1 view];
  if (result)
  {
    v16 = result;
    [result setNeedsLayout];

    result = [v2 view];
    if (result)
    {
      v17 = result;
      [result layoutIfNeeded];

      return sub_7E60DC(a1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_7E56B8()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  v6 = &v1[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  v7 = sub_AB6B10();
  v8 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v7, v6[2]);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_AB6500();
  v16[2] = v8;
  *(v16 + 3) = v10;
  *(v16 + 4) = v12;
  *(v16 + 5) = v14;
  v15(v23, 0);
  v17 = [v1 view];
  if (!v17)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v18 = v17;
  v19 = [v2 view];
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = v19;
  [v18 addSubview:v19];

  v21 = [v2 view];
  if (v21)
  {
    v22 = v21;
    [v21 layoutIfNeeded];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_7E58CC()
{
  v42.receiver = v0;
  v42.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v42, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  [v1 bounds];

  v3 = &v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  v4 = [v0 view];
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 effectiveUserInterfaceLayoutDirection];

  sub_ABA4B0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_7E77F8;
  *(v16 + 24) = v15;
  aBlock[4] = sub_2D4D0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_222;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = *&v18[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  sub_AB64B0();
  v22 = v21;
  v23 = [v18 traitCollection];
  [v23 displayScale];

  v40 = v22;
  sub_ABA470();
  MinX = v24;
  MinY = v26;
  v29 = v28;
  v31 = v30;
  v32 = v7;
  v33 = v9;
  v34 = v11;
  v35 = v13;
  if (v3[8] > 1u)
  {
    if (v3[8] == 2)
    {
      MaxY = CGRectGetMaxY(*&v32);
      v43.origin.x = MinX;
      v43.origin.y = MinY;
      v43.size.width = v29;
      v43.size.height = v31;
      MinY = MaxY - CGRectGetHeight(v43);
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v32);
      v44.origin.x = MinX;
      v44.origin.y = MinY;
      v44.size.width = v29;
      v44.size.height = v31;
      MinX = MaxX - CGRectGetWidth(v44);
    }
  }

  else if (v3[8])
  {
    MinX = CGRectGetMinX(*&v32);
  }

  else
  {
    MinY = CGRectGetMinY(*&v32);
  }

  v38 = [v20 view];
  if (v38)
  {
    v39 = v38;
    [v38 setFrame:{MinX, MinY, v29, v31}];

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_7E5CA4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

id sub_7E5DE0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id UIView.noticePresenter.getter()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = [result windowScene];

    if (v3)
    {
      v4 = UIWindowScene.noticePresenter.getter();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id UIViewController.noticePresenter.getter()
{
  if ([v0 isViewLoaded])
  {
    result = [v0 view];
    if (result)
    {
      v2 = result;
      v3 = [result window];
      if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
      {
        v6 = UIWindowScene.noticePresenter.getter();

        return v6;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    result = [v0 parentViewController];
    if (result)
    {
      v7 = result;
      v8 = UIViewController.noticePresenter.getter();

      return v8;
    }
  }

  return result;
}

uint64_t _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (v5)
    {
      sub_13C80(0, &qword_E18878, UIWindowScene_ptr);
      v7 = sub_ABA790();

      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v5)
  {

    goto LABEL_11;
  }

LABEL_7:
  v8 = sub_AB6B20();
  if (v8 != sub_AB6B20() || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_11;
  }

  v9 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 24), *(a2 + 24)), vceqq_f64(*(a1 + 40), *(a2 + 40)))));
  return v9 & 1;
}

uint64_t type metadata accessor for NoticePresenter(uint64_t a1)
{
  result = qword_E18B28;
  if (!qword_E18B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7E6260(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_7E3280(v1, v3);
}

uint64_t sub_7E6298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8, &qword_B2CB38);
  __chkstk_darwin();
  v9 = &v18 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DF8, &unk_B2CF10);
  __chkstk_darwin();
  v11 = &v18 - v10;
  v13 = *(v12 + 56);
  sub_15F84(a1, &v18 - v10, &qword_E18AA8, &qword_B2CB38);
  sub_15F84(a2, &v11[v13], &qword_E18AA8, &qword_B2CB38);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_15F84(v11, v9, &qword_E18AA8, &qword_B2CB38);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      sub_7E768C(&v11[v13], v7);
      v16 = static Notice.== infix(_:_:)();
      sub_721288(v7);
      sub_721288(v9);
      sub_12E1C(v11, &qword_E18AA8, &qword_B2CB38);
      v15 = v16 ^ 1;
      return v15 & 1;
    }

    sub_721288(v9);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    sub_12E1C(v11, &qword_E18DF8, &unk_B2CF10);
    v15 = 1;
    return v15 & 1;
  }

  sub_12E1C(v11, &qword_E18AA8, &qword_B2CB38);
  v15 = 0;
  return v15 & 1;
}

char *sub_7E6538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_AB6A20();
  __chkstk_darwin();
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController__noticePresenter] = a1;
  v6 = &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  sub_7E24B4(a2, &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration]);
  swift_beginAccess();
  swift_retain_n();
  v7 = sub_AB6B10();
  v8 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v7, v6[2]);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v30 = a1;
  type metadata accessor for NoticePresenter(0);
  sub_AB7630();
  v26 = v8;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E00, &unk_B2CF20));
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController] = sub_AB64F0();
  v25.receiver = v3;
  v25.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  v16 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  v17 = OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController;
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v19 = v16;
  v20 = v18;
  sub_AB6A00();
  sub_AB64C0();

  v21 = *&v16[v17];
  v22 = v19;
  [v22 addChildViewController:v21];
  v23 = *&v16[v17];
  [v23 didMoveToParentViewController:v22];

  sub_7E60DC(a2);
  return v22;
}

void _s11MusicCoreUI15NoticePresenterC7present_12internalOnlyy0aB00D0V_SbtF_0(uint64_t a1, char a2)
{
  v3 = v2;
  v48 = a1;
  v46 = sub_AB7C80();
  v5 = *(v46 - 8);
  __chkstk_darwin();
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v42 - v8;
  v10 = sub_AB7C10();
  __chkstk_darwin();
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Notice(0);
  v13 = *(v47 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  if ((a2 & 1) == 0 || *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1)
  {
    v42[1] = v10;
    v42[2] = v12;
    v43 = v7;
    v44 = v9;
    v45 = v5;
    swift_getKeyPath();
    aBlock = v3;
    sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    sub_AB3990();

    v15 = v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler;
    swift_beginAccess();
    v16 = *v15;
    v17 = &off_E18000;
    if (*v15)
    {
      v18 = *(v15 + 8);
      v42[0] = v13;
      swift_getKeyPath();
      aBlock = v3;

      sub_AB3990();

      aBlock = v3;
      swift_getKeyPath();
      sub_AB39B0();

      v19 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
      swift_beginAccess();
      sub_7E24B4(v3 + v19, &aBlock);
      v16(&aBlock);
      sub_17654(v16, v18);
      sub_7E24B4(v3 + v19, v50);
      swift_beginAccess();
      v20 = v3 + v19;
      v17 = &off_E18000;
      sub_7E61B4(&aBlock, v20);
      swift_endAccess();
      sub_7E24EC(v50);
      sub_7E60DC(v50);
      sub_7E60DC(&aBlock);
      aBlock = v3;
      v13 = v42[0];
      swift_getKeyPath();
      sub_AB39A0();
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_AB3990();

    v21 = v17[336];
    swift_beginAccess();
    sub_7E24B4(v21 + v3, &aBlock);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_7E60DC(&aBlock);
    if (Strong)
    {
      sub_7E1D24(v3, Strong);
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_AB3990();

    v23 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v24 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v24)
    {
      *(v24 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 1;
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_AB3990();

    v25 = *(v3 + v23);
    if (v25)
    {
      [v25 makeKeyAndVisible];
    }

    v26 = objc_opt_self();
    sub_7E76F0(v48, v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v3;
    sub_7E768C(v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_7E7AE0;
    *(v29 + 24) = v28;
    v55 = sub_36C08;
    v56 = v29;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_1822E0;
    v54 = &block_descriptor_90_2;
    v30 = _Block_copy(&aBlock);

    [v26 performWithoutAnimation:v30];
    _Block_release(v30);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
    }

    else
    {
      v31 = v47;
      v32 = (v48 + *(v47 + 36));
      if ((v32[1] & 1) == 0)
      {
        v33 = *v32;
        v34 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
        [v34 notificationOccurred:v33];
      }

      if (*(v48 + *(v31 + 40)) == 1)
      {
        v55 = sub_7E7B44;
        v56 = v3;
        aBlock = _NSConcreteStackBlock;
        v52 = 1107296256;
        v53 = sub_1B5EB4;
        v54 = &block_descriptor_93_1;
        _Block_copy(&aBlock);
        v49[0] = _swiftEmptyArrayStorage;
        sub_7E7B4C(&qword_E17588, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17590, &unk_B34C00);
        sub_36A00(&qword_E17598, &qword_E17590, &unk_B34C00, &protocol conformance descriptor for [A]);
        sub_ABABB0();
        sub_AB7CB0();
        swift_allocObject();
        v35 = sub_AB7C90();

        sub_13C80(0, &qword_E1B340, OS_dispatch_queue_ptr);
        v36 = sub_ABA150();
        v37 = v43;
        sub_AB7C70();
        v38 = v44;
        sub_AB7CE0();
        v39 = *(v45 + 8);
        v40 = v37;
        v41 = v46;
        v39(v40, v46);
        sub_ABA120();

        v39(v38, v41);
        swift_getKeyPath();
        __chkstk_darwin();
        v42[-2] = v3;
        v42[-1] = v35;
        aBlock = v3;
        sub_AB3980();
      }
    }
  }
}

uint64_t sub_7E712C()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_7E719C()
{
  result = qword_E18AE0;
  if (!qword_E18AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18AC8, &unk_B2CBA8);
    sub_36A00(&qword_E18AE8, &qword_E18AD0, &qword_B2CBB8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_36A00(&qword_E18850, &qword_E18858, &qword_B2C830, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18AE0);
  }

  return result;
}

void sub_7E72A4(uint64_t a1)
{
  sub_7E7390(319);
  if (v1 <= 0x3F)
  {
    sub_AB39D0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_7E7390(uint64_t a1)
{
  if (!qword_E18B38)
  {
    type metadata accessor for Notice(255);
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E18B38);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11MusicCoreUI15NoticePresenterC13ConfigurationVIegl_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_7E742C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 56))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_7E7470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_7E7518(void *a1)
{
  sub_AB5D50();
  sub_7E757C();
  return swift_getWitnessTable();
}

unint64_t sub_7E757C()
{
  result = qword_E18D90;
  if (!qword_E18D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18D90);
  }

  return result;
}

uint64_t sub_7E75D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18AC8, &unk_B2CBA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E187E8, &qword_B2C7A0);
  sub_7E719C();
  sub_7DEBCC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_7E768C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7E76F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_68Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_7E77C0()
{

  return swift_deallocObject();
}

double block_copy_helper_222(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_7E7844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8, &qword_B2CB38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_7E78D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8, &qword_B2CB38);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_7E7940()
{
  v1 = type metadata accessor for Notice(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_AB8A60();
      (*(*(v8 - 8) + 8))(v3 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v3 + *(v1 + 32)))
  {
  }

  return swift_deallocObject();
}

void sub_7E7AE0()
{
  v1 = *(type metadata accessor for Notice(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_7E1F00(v2, v3);
}

uint64_t sub_7E7B4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7E7BBC()
{

  return swift_deallocObject();
}

unint64_t sub_7E7C20()
{
  result = qword_E18E08;
  if (!qword_E18E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18DA8, &qword_B2CE98);
    sub_36A00(&qword_E18E10, &qword_E18D98, &qword_B2CE88, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18E08);
  }

  return result;
}

uint64_t NoticeView.init(notice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NoticeView(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = (a2 + v4[6]);
  sub_AB7630();
  *v6 = v10;
  v6[1] = v11;
  v7 = a2 + v4[7];
  sub_AB5890();
  *v7 = v10;
  *(v7 + 8) = v11;
  *(v7 + 16) = v12;
  v8 = a2 + v4[8];
  sub_AB7630();
  *v8 = v10;
  *(v8 + 8) = v11;
  return sub_7ECB1C(a1, a2, type metadata accessor for Notice);
}

uint64_t EnvironmentValues.noticeDismissal.getter()
{
  sub_7E80AC();
  sub_AB6250();
  return v1;
}

double sub_7E7EA4@<D0>(uint64_t a1@<X8>)
{
  sub_7E80AC();
  sub_AB6250();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

double sub_7E7EFC@<D0>(uint64_t a1@<X8>)
{
  sub_7E80AC();
  sub_AB6250();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_7E7F54(uint64_t *a1)
{
  sub_7E8378(*a1, a1[1]);
  sub_7E80AC();
  return sub_AB6260();
}

unint64_t sub_7E80AC()
{
  result = qword_E18E18;
  if (!qword_E18E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18E18);
  }

  return result;
}

uint64_t sub_7E813C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NoticeView.dismiss.getter()
{
  v1 = sub_AB6240();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for NoticeView(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  if (*(v5 + 17) == 1)
  {
    sub_7E8378(*v5, v7);
  }

  else
  {

    v9 = sub_AB9F40();
    v10 = sub_AB6A40();
    sub_AB4A90(v9, &dword_0, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_AB6230();
    swift_getAtKeyPath();
    v11 = sub_7E8328(v6, v7, v8, 0);
    (*(v2 + 8))(v4, v1, v11);
    return v13[1];
  }

  return v6;
}

double sub_7E8328(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_7E8334(a1, a2);
  }

  return result;
}

double sub_7E8334(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_7E8378(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t NoticeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v112 = a1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E20, &qword_B2CF58);
  __chkstk_darwin();
  v110 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v106 - v4;
  v137 = sub_AB5C70();
  v136 = *(v137 - 8);
  __chkstk_darwin();
  v135 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v106 - v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E28, &qword_B2CF60);
  __chkstk_darwin();
  v107 = &v106 - v7;
  v132 = sub_AB5730();
  v131 = *(v132 - 8);
  __chkstk_darwin();
  v130 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for NoticeView(0);
  v119 = *(v144 - 8);
  __chkstk_darwin();
  v142 = v9;
  v143 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_AB6640();
  __chkstk_darwin();
  v116 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E30, &qword_B2CF68);
  __chkstk_darwin();
  v129 = &v106 - v11;
  v12 = type metadata accessor for NoticeView.Content(0) - 8;
  __chkstk_darwin();
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E38, &qword_B2CF70) - 8;
  __chkstk_darwin();
  v17 = &v106 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E40, &qword_B2CF78) - 8;
  __chkstk_darwin();
  v20 = &v106 - v19;
  *&v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E48, &qword_B2CF80);
  __chkstk_darwin();
  v22 = &v106 - v21;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E50, &qword_B2CF88);
  __chkstk_darwin();
  v24 = &v106 - v23;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E58, &qword_B2CF90);
  __chkstk_darwin();
  v140 = &v106 - v25;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E60, &qword_B2CF98);
  v123 = *(v126 - 8);
  __chkstk_darwin();
  v120 = &v106 - v26;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E68, &qword_B2CFA0);
  v124 = *(v127 - 8);
  __chkstk_darwin();
  v121 = &v106 - v27;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E70, &qword_B2CFA8);
  __chkstk_darwin();
  v125 = &v106 - v28;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E78, &qword_B2CFB0);
  __chkstk_darwin();
  v128 = &v106 - v29;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E80, &qword_B2CFB8);
  __chkstk_darwin();
  v138 = &v106 - v30;
  v31 = v2;
  sub_7ECB84(v2, v14, type metadata accessor for Notice);
  *&v14[*(v12 + 36)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A190, &qword_B28630);
  swift_storeEnumTagMultiPayload();
  *&v14[*(v12 + 40)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16D50, &unk_B2E340);
  swift_storeEnumTagMultiPayload();
  *&v152 = 0x4041000000000000;
  sub_7ECA74();
  sub_AB58F0();
  *&v152 = 0x4010000000000000;
  sub_7ECAC8();
  sub_AB58F0();
  sub_AB7A30();
  sub_AB5E90();
  sub_7ECB1C(v14, v17, type metadata accessor for NoticeView.Content);
  v32 = &v17[*(v15 + 44)];
  v33 = v157;
  *(v32 + 4) = v156;
  *(v32 + 5) = v33;
  *(v32 + 6) = v158;
  v34 = v153;
  *v32 = v152;
  *(v32 + 1) = v34;
  v35 = v155;
  *(v32 + 2) = v154;
  *(v32 + 3) = v35;
  v36 = &v20[*(v18 + 44)];
  sub_AB79E0();
  LOBYTE(v18) = sub_AB6AA0();
  v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E98, &qword_B2D030) + 36)] = v18;
  sub_36B0C(v17, v20, &qword_E18E38, &qword_B2CF70);
  if (qword_E16A08 != -1)
  {
    swift_once();
  }

  v37 = static Corner.extraLarge;
  v38 = unk_E73A40;
  v39 = byte_E73A48;
  sub_36B0C(v20, v22, &qword_E18E40, &qword_B2CF78);
  v40 = &v22[*(v114 + 36)];
  *v40 = v37;
  *(v40 + 1) = v38;
  v40[16] = v39;
  v41 = v2 + *(v144 + 28);
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  v45 = *(v41 + 24);
  LOBYTE(v148) = *v41;
  v149 = v43;
  v150 = v44;
  v151 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18EA0, &qword_B2D038);
  sub_AB58A0();
  if (v145)
  {
    v46 = 0.4;
  }

  else
  {
    v46 = 1.0;
  }

  sub_36B0C(v22, v24, &qword_E18E48, &qword_B2CF80);
  *&v24[*(v115 + 36)] = v46;
  v47 = sub_AB7A70();
  LOBYTE(v148) = v42;
  v149 = v43;
  v150 = v44;
  v151 = v45;
  sub_AB58A0();
  v48 = v145;
  v49 = v24;
  v50 = v140;
  sub_36B0C(v49, v140, &qword_E18E50, &qword_B2CF88);
  v51 = v50 + *(v141 + 36);
  *v51 = v47;
  *(v51 + 8) = v48;
  sub_AB67A0();
  v52 = v129;
  sub_AB57C0();
  LOBYTE(v148) = v42;
  v149 = v43;
  v150 = v44;
  v151 = v45;
  sub_AB58B0();
  LODWORD(v116) = v145;
  v115 = v146;
  v114 = v147;
  v113 = v31;
  v53 = v143;
  v117 = type metadata accessor for NoticeView;
  sub_7ECB84(v31, v143, type metadata accessor for NoticeView);
  v54 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v55 = swift_allocObject();
  v119 = type metadata accessor for NoticeView;
  sub_7ECB1C(v53, v55 + v54, type metadata accessor for NoticeView);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18EA8, &qword_B2D040);
  v57 = v52 + *(v56 + 44);
  *v57 = v116;
  *(v57 + 8) = v115;
  *(v57 + 16) = v114;
  v58 = (v52 + *(v56 + 48));
  *v58 = sub_7ECBF0;
  v58[1] = v55;
  v59 = v130;
  sub_AB5720();
  sub_7ECB84(v31, v53, type metadata accessor for NoticeView);
  v60 = swift_allocObject();
  sub_7ECB1C(v53, v60 + v54, type metadata accessor for NoticeView);
  v61 = swift_allocObject();
  *(v61 + 16) = sub_7ECE74;
  *(v61 + 24) = v60;
  v62 = v133;
  v63 = v132;
  sub_AB78E0();

  (*(v131 + 8))(v59, v63);
  sub_AB57E0();
  v64 = sub_7ECEC4();
  v65 = sub_36A00(&qword_E18EF8, &qword_E18E30, &qword_B2CF68, &protocol conformance descriptor for SequenceGesture<A, B>);
  v66 = v120;
  v67 = v141;
  v68 = v140;
  sub_AB72D0();
  sub_12E1C(v52, &qword_E18E30, &qword_B2CF68);
  sub_12E1C(v68, &qword_E18E58, &qword_B2CF90);
  v69 = v113;
  v70 = v143;
  sub_7ECB84(v113, v143, v117);
  v71 = swift_allocObject();
  sub_7ECB1C(v70, v71 + v54, v119);
  type metadata accessor for Notice(0);
  v148 = v67;
  v149 = v62;
  v150 = v64;
  v151 = v65;
  swift_getOpaqueTypeConformance2();
  sub_7ED288(&qword_E18F00, type metadata accessor for Notice, &protocol conformance descriptor for Notice);
  v72 = v121;
  v73 = v126;
  sub_AB7330();

  (*(v123 + 8))(v66, v73);
  v74 = v125;
  v75 = &v125[*(v118 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18F08, &qword_B2D050);
  sub_AB5ED0();
  *v75 = swift_getKeyPath();
  (*(v124 + 32))(v74, v72, v127);
  v76 = (v69 + *(v144 + 24));
  v77 = *v76;
  v78 = v76[1];
  v148 = v77;
  v149 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18F10, &qword_B2D088);
  sub_AB7640();
  v79 = v145;
  sub_AB7BB0();
  v81 = v80;
  v83 = v82;
  v84 = v74;
  v85 = v128;
  sub_36B0C(v84, v128, &qword_E18E70, &qword_B2CFA8);
  v86 = (v85 + *(v122 + 36));
  *v86 = v79;
  v86[1] = v79;
  v86[2] = v81;
  v86[3] = v83;
  sub_AB7A50();
  v87 = sub_AB7A60();

  v88 = v138;
  v89 = &v138[*(v139 + 36)];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18F18, &unk_B2D090);
  sub_7ECB84(v69, v89 + *(v90 + 36), type metadata accessor for Notice);
  *v89 = v87;
  sub_36B0C(v85, v88, &qword_E18E78, &qword_B2CFB0);
  v91 = v136;
  v92 = *(v136 + 104);
  v93 = v134;
  v94 = v137;
  v92(v134, enum case for DynamicTypeSize.xSmall(_:), v137);
  v95 = v135;
  v92(v135, enum case for DynamicTypeSize.accessibility2(_:), v94);
  sub_7ED288(&qword_E17A98, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_AB9170();
  if (result)
  {
    v97 = v93;
    v98 = *(v91 + 32);
    v99 = v109;
    v98(v109, v97, v94);
    v100 = v111;
    v98((v99 + *(v111 + 48)), v95, v94);
    v101 = v110;
    sub_15F84(v99, v110, &qword_E18E20, &qword_B2CF58);
    v102 = *(v100 + 48);
    v103 = v107;
    v98(v107, v101, v94);
    v104 = *(v91 + 8);
    v104(v101 + v102, v94);
    sub_36B0C(v99, v101, &qword_E18E20, &qword_B2CF58);
    v98((v103 + *(v108 + 36)), (v101 + *(v100 + 48)), v94);
    v104(v101, v94);
    sub_7ED404();
    sub_36A00(&qword_E18F48, &qword_E18E28, &qword_B2CF60, &protocol conformance descriptor for ClosedRange<A>);
    v105 = v138;
    sub_AB70A0();
    sub_12E1C(v103, &qword_E18E28, &qword_B2CF60);
    return sub_12E1C(v105, &qword_E18E80, &qword_B2CFB8);
  }

  else
  {
    __break(1u);
  }

  return result;
}