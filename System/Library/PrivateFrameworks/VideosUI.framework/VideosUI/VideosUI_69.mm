void sub_1E3BB69FC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v21 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v20 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E32ADE38();
  v16 = sub_1E4206A04();
  v17 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_10_9();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v6;
  v18[4] = v4;
  v18[5] = v2;
  v22[4] = sub_1E3BB95EC;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1E378AEA4;
  v22[3] = &block_descriptor_73;
  v19 = _Block_copy(v22);

  sub_1E4203FE4();
  v22[0] = MEMORY[0x1E69E7CC0];
  sub_1E3BBA714(&qword_1EE2882E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000, MEMORY[0x1E69E6328]);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v0, v12, v19);
  _Block_release(v19);

  (*(v21 + 8))(v12, v7);
  (*(v14 + 8))(v0, v20);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BB6D10()
{

  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel__scoreTextModels;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548, &qword_1E42C02F0);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel____lazy_storage___liveUpdateProvider);

  return sub_1E3BB95CC(v3);
}

uint64_t sub_1E3BB6DD8()
{
  v0 = ViewModel.deinit();

  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel__scoreTextModels;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548, &qword_1E42C02F0);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  sub_1E3BB95CC(*(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel____lazy_storage___liveUpdateProvider));
  return v0;
}

uint64_t sub_1E3BB6EA0()
{
  v0 = sub_1E3BB6DD8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3BB6EF4(uint64_t a1)
{
  v2 = sub_1E39BDEC8();
  if (v2)
  {
    v4 = sub_1E373E010(239, v2, v3);

    if (v4)
    {
      OUTLINED_FUNCTION_8();
      v6 = (*(v5 + 464))();

      v34 = v6;
      if (v6)
      {
        v7 = 0;
        v33 = MEMORY[0x1E69E7CC0];
        v39 = MEMORY[0x1E69E7CC0];
        v8 = *(a1 + 16);
        v9 = a1 + 40;
        v32 = a1 + 40;
LABEL_5:
        for (i = (v9 + 16 * v7); ; i += 2)
        {
          if (v8 == v7)
          {

            if (sub_1E32AE9B0(v33) == 2)
            {
              sub_1E3BB60B8();
              return;
            }

            goto LABEL_25;
          }

          if (v7 >= v8)
          {
            break;
          }

          if (__OFADD__(v7, 1))
          {
            goto LABEL_28;
          }

          v11 = *(i - 1);
          v12 = *i;
          v38[1] = v34;
          v35 = v7;
          LOBYTE(v36) = 0;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
          OUTLINED_FUNCTION_0_32();
          OUTLINED_FUNCTION_21_1();
          sub_1E32752B0(v13, v14, v15, v16);
          sub_1E38D2054(&v35, v38);
          v17 = v38[0];
          if (!v38[0])
          {

LABEL_25:

            return;
          }

          v18 = 0xE000000000000000;
          v35 = 0;
          v36 = 0xE000000000000000;
          v19 = sub_1E376DA04();
          swift_beginAccess();
          if (*v19)
          {
            v20 = 46;
          }

          else
          {
            v20 = 0;
          }

          if (*v19)
          {
            v18 = 0xE100000000000000;
          }

          MEMORY[0x1E69109E0](v20, v18);

          MEMORY[0x1E69109E0](v11, v12);

          v22 = v35;
          v21 = v36;
          sub_1E384EE08(237);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4297BE0;
          ViewModelKeys.rawValue.getter(14);
          *(inited + 32) = v24;
          *(inited + 40) = v25;
          *(inited + 48) = v22;
          *(inited + 56) = v21;
          v26 = sub_1E4205CB4();
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
          v35 = v26;

          v27 = OUTLINED_FUNCTION_32_0();
          v30 = sub_1E3A7CD30(v27, v28, v29, v17);

          v31 = __swift_destroy_boxed_opaque_existential_1(&v35);
          if (v30)
          {
            if (*v30 == _TtC8VideosUI13TextViewModel)
            {
              MEMORY[0x1E6910BF0](v31);
              if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1E42062F4();
              }

              sub_1E4206324();
              v33 = v39;

              ++v7;
              v9 = v32;
              goto LABEL_5;
            }
          }

          ++v7;
        }

        __break(1u);
LABEL_28:
        __break(1u);
      }
    }
  }
}

void sub_1E3BB7288()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v77 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77 - v14;
  sub_1E377D244();
  v85 = v16;
  v18 = v17;
  v84 = v19;
  if (!v17)
  {
    goto LABEL_35;
  }

  v79.n128_u64[0] = v1;
  v86 = v4;
  v20 = sub_1E324FBDC();
  v21 = *(v7 + 16);
  v89 = v20;
  v90 = v7 + 16;
  v88 = v21;
  v21(v15);

  v22 = sub_1E41FFC94();
  v23 = sub_1E42067E4();

  v24 = os_log_type_enabled(v22, v23);
  v82 = v7;
  v87 = v18;
  v80 = v11;
  if (v24)
  {
    v78 = v5;
    v25 = OUTLINED_FUNCTION_6_21();
    v26 = OUTLINED_FUNCTION_100();
    v91[0] = v26;
    *v25 = 136315138;
    if (*(v2 + 256))
    {
      v27 = *(v2 + 248);
      v28 = *(v2 + 256);
    }

    else
    {
      v27 = 0;
      v28 = 0xE000000000000000;
    }

    v29 = v79.n128_u64[0];

    v30 = sub_1E3270FC8(v27, v28, v91);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_1E323F000, v22, v23, "MediaShowcasingScoreboard:: updating with scoreboardViewModel: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v5 = v78;
    v81 = *(v82 + 8);
    v81(v15, v78);
  }

  else
  {

    v81 = *(v7 + 8);
    v81(v15, v5);
    v29 = v79.n128_u64[0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
  inited = swift_initStackObject();
  v79 = xmmword_1E4299720;
  OUTLINED_FUNCTION_25_62(inited, xmmword_1E4299720);

  sub_1E3BB6EF4(inited);
  swift_setDeallocating();
  sub_1E38272B0();
  v32 = v86;
  if (sub_1E3BB9724(v86))
  {

    sub_1E3C7DE74(6);
    sub_1E3BB9724(v32);
    sub_1E3BB69FC();

    v32 = v86;
  }

  OUTLINED_FUNCTION_34_44();
  v33();

  v34 = sub_1E41FFC94();
  v35 = sub_1E42067E4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_6_21();
    v37 = OUTLINED_FUNCTION_100();
    v91[0] = v37;
    *v36 = 136315138;
    v38 = swift_allocObject();
    v39 = OUTLINED_FUNCTION_25_62(v38, v79);
    MEMORY[0x1E6910C30](v39, MEMORY[0x1E69E6158]);

    v40 = OUTLINED_FUNCTION_75();
    v43 = sub_1E3270FC8(v40, v41, v42);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_1E323F000, v34, v35, "MediaShowcasingScoreboard:: [UTS] Updated scores: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_6_0();
    v32 = v86;
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v44 = v81;
  v81(v29, v5);
  v45 = v80;
  OUTLINED_FUNCTION_34_44();
  v46();
  v47 = v32;
  v48 = sub_1E41FFC94();
  v49 = sub_1E42067E4();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = v5;
    v51 = OUTLINED_FUNCTION_6_21();
    v52 = OUTLINED_FUNCTION_100();
    v91[0] = v52;
    *v51 = 136315138;
    if (!sub_1E3BB9724(v47))
    {
      sub_1E4205CB4();
    }

    v53 = sub_1E4205C74();
    v55 = v54;

    v56 = sub_1E3270FC8(v53, v55, v91);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_1E323F000, v48, v49, "MediaShowcasingScoreboard:: [UTS] Updated contentMetadata: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v5 = v50;
    v57 = v50;
    v44 = v81;
    v81(v80, v57);
  }

  else
  {

    v44(v45, v5);
  }

  v58 = sub_1E3BB9724(v47);
  if (!v58)
  {
    v92 = 0u;
    v93 = 0u;
    goto LABEL_23;
  }

  v59 = v58;
  *&v92 = sub_1E4205F14();
  *(&v92 + 1) = v60;
  sub_1E4207414();
  sub_1E375D7E8(v59, &v92, v91);

  v61 = sub_1E375D84C(v91);
  if (!*(&v93 + 1))
  {
LABEL_23:
    sub_1E325F6F0(&v92, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_62_17(v61, v62, v63, MEMORY[0x1E69E6370]))
  {
    v64 = LOBYTE(v91[0]);
    goto LABEL_25;
  }

LABEL_24:
  v64 = 0;
LABEL_25:
  v65 = sub_1E3BB9724(v47);
  if (!v65)
  {
    v92 = 0u;
    v93 = 0u;
    goto LABEL_30;
  }

  v66 = v65;
  *&v92 = sub_1E4205F14();
  *(&v92 + 1) = v67;
  sub_1E4207414();
  sub_1E375D7E8(v66, &v92, v91);

  v68 = sub_1E375D84C(v91);
  if (!*(&v93 + 1))
  {
LABEL_30:
    sub_1E325F6F0(&v92, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_31;
  }

  if (!OUTLINED_FUNCTION_62_17(v68, v69, v70, MEMORY[0x1E69E6370]))
  {
LABEL_31:
    v71 = 0;
    goto LABEL_32;
  }

  v71 = LOBYTE(v91[0]);
LABEL_32:
  v72 = v83;
  OUTLINED_FUNCTION_34_44();
  v73();
  v74 = sub_1E41FFC94();
  v75 = sub_1E4206814();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 67109376;
    *(v76 + 4) = v64;
    *(v76 + 8) = 1024;
    *(v76 + 10) = v71;
    _os_log_impl(&dword_1E323F000, v74, v75, "MediaShowcasingScoreboard:: [UTS] Updated hasEventStarted: %{BOOL}d hasEventEnded: %{BOOL}d", v76, 0xEu);
    OUTLINED_FUNCTION_6_0();
  }

  v44(v72, v5);
LABEL_35:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BB7AEC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v108 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v97 - v5;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v103 = v7;
  v104 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v106 = v9 - v8;
  v10 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v97 - v22;
  v24 = sub_1E324FBDC();
  v25 = *(v19 + 16);
  v100 = v24;
  v101 = v19 + 16;
  v99 = v25;
  (v25)(v23);

  v26 = sub_1E41FFC94();
  v27 = sub_1E42067E4();

  v28 = os_log_type_enabled(v26, v27);
  v109 = v1;
  v110 = v19;
  v105 = v17;
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_6_21();
    v30 = OUTLINED_FUNCTION_100();
    *&v113 = v30;
    *v29 = 136315138;

    v31 = OUTLINED_FUNCTION_159();
    v34 = sub_1E3270FC8(v31, v32, v33);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_1E323F000, v26, v27, "MediaShowcasingScoreboard:: updating with sportingEvent: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v35 = *(v110 + 8);
    v36 = v23;
    v37 = v105;
  }

  else
  {

    v35 = *(v19 + 8);
    v36 = v23;
    v37 = v17;
  }

  v98 = v35;
  v35(v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E0, &unk_1E42A0F90);
  v38 = *(v12 + 72);
  v39 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1E4299720;
  v41 = v40 + v39;
  v42 = *(v12 + 104);
  v42(v41, *MEMORY[0x1E69D3B90], v10);
  v42(v41 + v38, *MEMORY[0x1E69D3B98], v10);
  v43 = sub_1E4205044();
  MEMORY[0x1EEE9AC00](v43);
  *(&v97 - 2) = v16;
  v44 = sub_1E38273FC(sub_1E38277DC, (&v97 - 4), v40);
  swift_setDeallocating();
  sub_1E38272F4();
  v45 = (*(v12 + 8))(v16, v10);
  if (!v44)
  {

    v47 = v106;
    OUTLINED_FUNCTION_32_0();
    sub_1E4205BD4();
    v48 = sub_1E4205024();
    MEMORY[0x1EEE9AC00](v48);
    *(&v97 - 2) = v47;
    sub_1E38263A8(sub_1E3BB9790, (&v97 - 4), v48);
    v50 = v49;

    v51 = sub_1E32AE9B0(v50);
    v52 = 0;
    v53 = MEMORY[0x1E69E7CC0];
    while (v51 != v52)
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x1E6911E60](v52, v50);
      }

      else
      {
        if (v52 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v54 = *(v50 + 8 * v52 + 32);
      }

      v55 = v54;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        return;
      }

      *&v113 = sub_1E4205AE4();
      v56 = sub_1E4207944();
      v58 = v57;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_1E3740F88(0, *(v53 + 2) + 1, 1, v53);
      }

      v60 = *(v53 + 2);
      v59 = *(v53 + 3);
      if (v60 >= v59 >> 1)
      {
        v53 = sub_1E3740F88((v59 > 1), v60 + 1, 1, v53);
      }

      *(v53 + 2) = v60 + 1;
      v61 = &v53[16 * v60];
      *(v61 + 4) = v56;
      *(v61 + 5) = v58;
      ++v52;
    }

    sub_1E3BB6EF4(v53);
    v62 = v102;
    v63 = v105;
    v99(v102, v100, v105);

    v64 = sub_1E41FFC94();
    v65 = sub_1E42067E4();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = OUTLINED_FUNCTION_6_21();
      v67 = OUTLINED_FUNCTION_100();
      *&v113 = v67;
      *v66 = 136315138;
      v68 = MEMORY[0x1E6910C30](v53, MEMORY[0x1E69E6158]);
      v70 = v69;

      v71 = sub_1E3270FC8(v68, v70, &v113);

      *(v66 + 4) = v71;
      _os_log_impl(&dword_1E323F000, v64, v65, "MediaShowcasingScoreboard:: [CloudChannels] Updated scores: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    v98(v62, v63);
    v45 = (*(v103 + 8))(v106, v104);
  }

  sub_1E39BE70C(v45, v46);
  if (!v72)
  {
    v113 = 0u;
    v114 = 0u;
    goto LABEL_28;
  }

  sub_1E3277E60(0x4D746E65746E6F63, 0xEF61746164617465, v72, &v113);

  if (!*(&v114 + 1))
  {
LABEL_28:
    sub_1E325F6F0(&v113, &unk_1ECF296E0, &unk_1E4298030);
LABEL_29:
    v116 = 0u;
    v117 = 0u;
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_29;
  }

  v73 = v116;
  if (!v116)
  {
    goto LABEL_29;
  }

  strcpy(v111, "liveTextBadge");
  v112 = -4864;
  sub_1E4207414();
  sub_1E375D7E8(v73, &v116, &v113);

  sub_1E375D84C(&v113);
  if (*(&v117 + 1))
  {
    LODWORD(v110) = 1;
    goto LABEL_31;
  }

LABEL_30:
  LODWORD(v110) = 0;
LABEL_31:
  v74 = sub_1E325F6F0(&v116, &unk_1ECF296E0, &unk_1E4298030);
  sub_1E39BE70C(v74, v75);
  if (!v76)
  {
    v116 = 0u;
    v117 = 0u;
    goto LABEL_36;
  }

  *(&v114 + 1) = &type metadata for ViewModelKeys.Sports;
  v115 = &off_1F5D7BC68;
  OUTLINED_FUNCTION_44_36(32);

  v77 = __swift_destroy_boxed_opaque_existential_1(&v113);
  if (!*(&v117 + 1))
  {
LABEL_36:
    v80 = sub_1E325F6F0(&v116, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_37;
  }

  v80 = OUTLINED_FUNCTION_61_15(v77, v78, v79, MEMORY[0x1E69E6158]);
  if (v80)
  {
    v82 = *(&v113 + 1);
    v106 = v113;
    goto LABEL_38;
  }

LABEL_37:
  v106 = 0;
  v82 = 0xE000000000000000;
LABEL_38:
  sub_1E39BE70C(v80, v81);
  if (!v83)
  {
    v116 = 0u;
    v117 = 0u;
    goto LABEL_43;
  }

  *(&v114 + 1) = &type metadata for ViewModelKeys.Sports;
  v115 = &off_1F5D7BC68;
  OUTLINED_FUNCTION_44_36(33);

  v84 = __swift_destroy_boxed_opaque_existential_1(&v113);
  if (!*(&v117 + 1))
  {
LABEL_43:
    sub_1E325F6F0(&v116, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_44;
  }

  if ((OUTLINED_FUNCTION_61_15(v84, v85, v86, MEMORY[0x1E69E6158]) & 1) == 0)
  {
LABEL_44:
    v87 = 0;
    v88 = 0xE000000000000000;
    goto LABEL_45;
  }

  v88 = *(&v113 + 1);
  v87 = v113;
LABEL_45:
  v89 = v109;
  if (*(v109 + 312))
  {
    v90 = *(v109 + 304);
    v91 = *(v109 + 312);
  }

  else
  {
    v90 = 0;
    v91 = 0xE000000000000000;
  }

  v92 = sub_1E4206474();
  v93 = v107;
  __swift_storeEnumTagSinglePayload(v107, 1, 1, v92);
  v94 = swift_allocObject();
  *(v94 + 16) = 0;
  *(v94 + 24) = 0;
  v95 = v108;
  *(v94 + 32) = v89;
  *(v94 + 40) = v95;
  *(v94 + 48) = v110;
  *(v94 + 56) = v106;
  *(v94 + 64) = v82;
  *(v94 + 72) = v87;
  *(v94 + 80) = v88;
  *(v94 + 88) = v90;
  *(v94 + 96) = v91;
  *(v94 + 104) = 0;
  *(v94 + 112) = 0;
  *(v94 + 120) = 0xE000000000000000;

  v96 = v95;
  sub_1E376FE58(0, 0, v93, &unk_1E42C0300, v94);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BB853C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E4205BC4();
  v7 = sub_1E4205984();
  result = (*(v5 + 8))(v1, v3);
  *a1 = v7;
  return result;
}

uint64_t sub_1E3BB8610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11[24] = a4;
  v12 = sub_1E41FFCB4();
  v11[25] = v12;
  OUTLINED_FUNCTION_8_0(v12);
  v11[26] = v13;
  v11[27] = swift_task_alloc();
  v14 = swift_task_alloc();
  v11[28] = v14;
  *v14 = v11;
  v14[1] = sub_1E3BB875C;

  return sub_1E3BB8B2C();
}

uint64_t sub_1E3BB875C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  *(v1 + 232) = v0;

  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3BB884C()
{
  v1 = *(v0 + 232);
  if (v1)
  {
    *(v0 + 176) = sub_1E4205F14();
    *(v0 + 184) = v2;

    sub_1E4207414();
    sub_1E375D7E8(v1, (v0 + 96), v0 + 56);

    sub_1E375D84C(v0 + 56);
    if (*(v0 + 120))
    {
      if (swift_dynamicCast())
      {
        v3 = *(v0 + 241);
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_10;
    }
  }

  else
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  sub_1E325F6F0(v0 + 96, &unk_1ECF296E0, &unk_1E4298030);
  v3 = 0;
  if (!v1)
  {
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
LABEL_13:
    sub_1E325F6F0(v0 + 128, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_14;
  }

  v1 = *(v0 + 232);
LABEL_10:
  *(v0 + 160) = sub_1E4205F14();
  *(v0 + 168) = v4;

  sub_1E4207414();
  sub_1E375D7E8(v1, (v0 + 128), v0 + 16);

  sub_1E375D84C(v0 + 16);
  if (!*(v0 + 152))
  {
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v5 = *(v0 + 240);
    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
LABEL_15:
  v7 = *(v0 + 208);
  v6 = *(v0 + 216);
  v8 = *(v0 + 200);
  v9 = sub_1E324FBDC();
  (*(v7 + 16))(v6, v9, v8);
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = v3;
    *(v12 + 8) = 1024;
    *(v12 + 10) = v5;
    _os_log_impl(&dword_1E323F000, v10, v11, "MediaShowcasingScoreboard::[CloudChannels] Updated hasEventStarted:%{BOOL}d hasEventEnded:%{BOOL}d", v12, 0xEu);
    OUTLINED_FUNCTION_6_0();
  }

  v14 = *(v0 + 208);
  v13 = *(v0 + 216);
  v15 = *(v0 + 200);

  (*(v14 + 8))(v13, v15);
  sub_1E3C7DE74(6);
  sub_1E3BB69FC();

  OUTLINED_FUNCTION_54();

  return v16();
}

uint64_t sub_1E3BB8B2C()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 88) = v21;
  *(v1 + 96) = v0;
  *(v1 + 193) = v19;
  *(v1 + 72) = v2;
  *(v1 + 80) = v20;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  *(v1 + 192) = v7;
  *(v1 + 24) = v8;
  *(v1 + 32) = v9;
  v10 = sub_1E4205754();
  *(v1 + 104) = v10;
  OUTLINED_FUNCTION_8_0(v10);
  *(v1 + 112) = v11;
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  v12 = sub_1E4205834();
  *(v1 + 136) = v12;
  OUTLINED_FUNCTION_8_0(v12);
  *(v1 + 144) = v13;
  *(v1 + 152) = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1E3BB8C5C()
{
  type metadata accessor for TVAppLauncher(0);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = [v1 appController];

  if (v2 && (v3 = [v2 appContext], *(v0 + 160) = v3, v2, v3))
  {
    v4 = sub_1E3BB61B0();
    v39 = v3;
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);

    OUTLINED_FUNCTION_159();
    sub_1E4205854();

    sub_1E4205044();
    v34 = *(v9 + 104);
    v34(v8, *MEMORY[0x1E69D3B90], v10);
    sub_1E3BBA714(&qword_1EE23B680, MEMORY[0x1E69D3BB8], MEMORY[0x1E69D3BC0]);
    v11 = sub_1E4205E84();
    v12 = *(v9 + 8);
    v12(v8, v10);
    v12(v7, v10);
    if (v11)
    {
      v38 = 0;
      v13 = 0xE000000000000000;
    }

    else
    {
      v38 = sub_1E376D170();
    }

    v36 = v13;
    *(v0 + 168) = v13;
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 104);
    sub_1E4205044();
    v34(v15, *MEMORY[0x1E69D3B68], v16);
    v33 = sub_1E3823168();
    v17 = OUTLINED_FUNCTION_39_9();
    (v12)(v17);
    v12(v14, v16);
    sub_1E4205044();
    v34(v15, *MEMORY[0x1E69D3B78], v16);
    v18 = sub_1E3823168();
    v19 = OUTLINED_FUNCTION_39_9();
    (v12)(v19);
    v12(v14, v16);
    if (v18)
    {
      v20 = 1;
    }

    else
    {
      v22 = *(v0 + 120);
      v21 = *(v0 + 128);
      v23 = *(v0 + 104);
      sub_1E4205044();
      v34(v22, *MEMORY[0x1E69D3B88], v23);
      OUTLINED_FUNCTION_39_9();
      v20 = sub_1E3823168();
      v12(v22, v23);
      v12(v21, v23);
    }

    v25 = *(v0 + 80);
    v24 = *(v0 + 88);
    v26 = *(v0 + 193);
    v37 = *(v0 + 64);
    v27 = *(v0 + 48);
    v28 = *(v0 + 56);
    v35 = *(v0 + 32);
    v29 = *(v0 + 192);
    v30 = swift_task_alloc();
    *(v0 + 176) = v30;
    *(v30 + 16) = v39;
    *(v30 + 24) = v29;
    *(v30 + 25) = v20 & 1;
    *(v30 + 26) = v33 & 1;
    *(v30 + 32) = v37;
    *(v30 + 48) = v35;
    *(v30 + 64) = v27;
    *(v30 + 72) = v28;
    *(v30 + 80) = v38;
    *(v30 + 88) = v36;
    *(v30 + 96) = 0;
    *(v30 + 104) = 0xE000000000000000;
    *(v30 + 112) = v26;
    *(v30 + 120) = v25;
    *(v30 + 128) = v24;
    v31 = swift_task_alloc();
    *(v0 + 184) = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34558, &qword_1E42C0318);
    *v31 = v0;
    v31[1] = sub_1E3BB9138;

    return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD00000000000007ALL, 0x80000001E4274DF0, sub_1E3BB98B8, v30, v32);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5(0);
  }
}

uint64_t sub_1E3BB9138()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3BB9254()
{
  v1 = OUTLINED_FUNCTION_16_0();
  v2(v1);
  v3 = *(v0 + 16);

  v4 = *(v0 + 8);

  return v4(v3);
}

void sub_1E3BB92F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_31_1();
  v52 = v32;
  v53 = v31;
  v34 = v33;
  v51 = v35;
  v50 = v36;
  v48 = v37;
  v49 = v38;
  v40 = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345E8, &unk_1E42C0630);
  OUTLINED_FUNCTION_0_10();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_35_3();
  (*(v43 + 16))(v30, v40, v41);
  v45 = (*(v43 + 80) + 128) & ~*(v43 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v48;
  *(v46 + 17) = v49;
  *(v46 + 18) = v50;
  *(v46 + 24) = v51;
  *(v46 + 32) = v34;
  *(v46 + 40) = v52;
  *(v46 + 48) = a21;
  *(v46 + 56) = a22;
  *(v46 + 64) = a23;
  *(v46 + 72) = a24;
  *(v46 + 80) = a25;
  *(v46 + 88) = a26;
  *(v46 + 96) = a27;
  *(v46 + 104) = a28;
  *(v46 + 112) = a29;
  *(v46 + 120) = a30;
  (*(v43 + 32))(v46 + v45, v30, v41);
  v54[4] = sub_1E3BB9E84;
  v54[5] = v46;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 1107296256;
  v54[2] = sub_1E377674C;
  v54[3] = &block_descriptor_32_3;
  v47 = _Block_copy(v54);

  [v53 evaluate_];
  _Block_release(v47);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BB95CC(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E3BB95DC(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

double sub_1E3BB95EC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v3)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    }

    else
    {
      v5 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v6[0] = v3;
    v6[3] = v5;

    sub_1E39C1050(v1, v2, v6);
    sub_1E325F6F0(v6, &unk_1ECF296E0, &unk_1E4298030);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
    sub_1E32752B0(&qword_1EE28A140, &unk_1ECF326C0, &qword_1E429D160, MEMORY[0x1E695BF80]);
    sub_1E4200624();
  }

  return result;
}

uint64_t sub_1E3BB9724(void *a1)
{
  v1 = [a1 contentMetadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205C64();

  return v3;
}

uint64_t sub_1E3BB97BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v11 + 40);
  v22 = *(v11 + 32);
  v14 = *(v11 + 48);
  v15 = *(v11 + 56);
  v16 = *(v11 + 64);
  v17 = swift_task_alloc();
  *(v12 + 16) = v17;
  *v17 = v12;
  v17[1] = sub_1E3286A7C;

  return sub_1E3BB8610(v17, v18, v19, v22, v13, v14, v15, v16, a9, a10, a11);
}

void sub_1E3BB9974(uint64_t a1)
{
  sub_1E3BB9A38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3BB9A38(uint64_t a1)
{
  if (!qword_1EE289F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B6E8, &qword_1E42A0FA0);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289F98);
    }
  }
}

unint64_t sub_1E3BB9A9C()
{
  result = qword_1ECF34560;
  if (!qword_1ECF34560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34568, &qword_1E42C0540);
    sub_1E32752B0(&qword_1ECF34570, &qword_1ECF34578, &qword_1E42C0548, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34560);
  }

  return result;
}

unint64_t sub_1E3BB9B4C()
{
  result = qword_1ECF34580;
  if (!qword_1ECF34580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34588, &qword_1E42C0550);
    sub_1E32752B0(&qword_1ECF34590, &qword_1ECF34538, &qword_1E42C0290, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34580);
  }

  return result;
}

uint64_t sub_1E3BB9BFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 17))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E3BB9C38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3BB9CA0()
{
  result = qword_1ECF345B8;
  if (!qword_1ECF345B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34598, &qword_1E42C05E8);
    sub_1E3BB9D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF345B8);
  }

  return result;
}

unint64_t sub_1E3BB9D2C()
{
  result = qword_1ECF345C0;
  if (!qword_1ECF345C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF345C8, &qword_1E42C0608);
    sub_1E3BB9DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF345C0);
  }

  return result;
}

unint64_t sub_1E3BB9DB0()
{
  result = qword_1ECF345D0;
  if (!qword_1ECF345D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF345D8, &unk_1E42C0610);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF345D0);
  }

  return result;
}

void sub_1E3BB9E84()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345E8, &unk_1E42C0630);
  OUTLINED_FUNCTION_17_2(v3);
  v5 = *(v0 + 16);
  v6 = (*(v4 + 80) + 128) & ~*(v4 + 80);
  v7 = *(v0 + 17);
  v8 = *(v0 + 18);
  v9 = *(v0 + 32);
  v10 = *(v0 + 48);
  v145 = *(v0 + 24);
  v155 = *(v0 + 40);
  v156 = *(v0 + 56);
  v157 = *(v0 + 64);
  v158 = *(v0 + 72);
  v159 = *(v0 + 80);
  v160 = *(v0 + 88);
  v161 = *(v0 + 96);
  v162 = *(v0 + 104);
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v13 = [v2 objectForKeyedSubscript_];
  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v13;
  if (![v13 hasProperty_])
  {

LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345E8, &unk_1E42C0630);
    sub_1E42063D4();
    goto LABEL_7;
  }

  v105 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E42C0280;
  v125 = v11;
  v16 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_10_90(inited, v17, v18, v19, v20, v21, v22, v23, v105, v12, v125, @"makeSportsContentMetadata", v145);
  v24 = MEMORY[0x1E69E6370];
  v25 = v5 & (v7 ^ 1);
  *(inited + 96) = MEMORY[0x1E69E6370];
  v26 = v24;
  *(inited + 72) = v25;
  v27 = sub_1E4205F14();
  OUTLINED_FUNCTION_10_90(v27, v28, v29, v30, v31, v32, v33, v34, v106, v115, v126, v136, v146);
  *(inited + 168) = v26;
  *(inited + 144) = v8;
  v35 = sub_1E4205F14();
  v43 = OUTLINED_FUNCTION_10_90(v35, v36, v37, v38, v39, v40, v41, v42, v107, v116, v127, v137, v147);
  *(inited + 240) = v26;
  *(inited + 216) = v7;
  OUTLINED_FUNCTION_10_90(v43, v44, v45, v46, v47, v48, v49, v50, v108, v117, v128, v138, v148);
  *(inited + 312) = v16;
  *(inited + 288) = v149;
  *(inited + 296) = v9;

  OUTLINED_FUNCTION_10_90(v51, v52, v53, v54, v55, v56, v57, v58, v109, v118, v129, v139, v149);
  *(inited + 384) = v16;
  *(inited + 360) = v155;
  *(inited + 368) = v10;

  OUTLINED_FUNCTION_10_90(v59, v60, v61, v62, v63, v64, v65, v66, v110, v119, v130, v140, v150);
  *(inited + 456) = v16;
  *(inited + 432) = v156;
  *(inited + 440) = v157;

  OUTLINED_FUNCTION_10_90(v67, v68, v69, v70, v71, v72, v73, v74, v111, v120, v131, v141, v151);
  *(inited + 528) = v16;
  *(inited + 504) = v158;
  *(inited + 512) = v159;

  OUTLINED_FUNCTION_10_90(v75, v76, v77, v78, v79, v80, v81, v82, v112, v121, v132, v142, v152);
  *(inited + 600) = v16;
  *(inited + 576) = v160;
  *(inited + 584) = v161;

  v91 = OUTLINED_FUNCTION_10_90(v83, v84, v85, v86, v87, v88, v89, v90, v113, v122, v133, v143, v153);
  *(inited + 672) = v26;
  *(inited + 648) = v162;
  OUTLINED_FUNCTION_10_90(v91, v92, v93, v94, v95, v96, v97, v98, v114, v123, v134, v144, v154);
  *(inited + 744) = v16;
  *(inited + 720) = v124;
  *(inited + 728) = v135;

  v99 = sub_1E4205CB4();
  sub_1E4205F14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1E4297BE0;
  *(v100 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
  *(v100 + 32) = v99;

  v101 = OUTLINED_FUNCTION_75();
  v103 = sub_1E3780E30(v101, v102, v100, v14);
  if (v103)
  {
    v104 = v103;

    sub_1E3BBA2E4(v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345E8, &unk_1E42C0630);
    sub_1E42063D4();

LABEL_7:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

uint64_t sub_1E3BBA2E4(void *a1)
{
  v2 = [a1 toDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205C64();

  return v3;
}

double sub_1E3BBA368@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1E34AF4E4(*a1, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = OUTLINED_FUNCTION_75();
    MEMORY[0x1E6911E60](v6);
  }

  else
  {
  }

  *a2 = sub_1E4201B84();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34650, &qword_1E42C06C0);
  OUTLINED_FUNCTION_96_2();
  sub_1E3BB45C0();

  return result;
}

uint64_t sub_1E3BBA428(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = a2;
  }

  return result;
}

void sub_1E3BBA468(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

unint64_t sub_1E3BBA4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF58EA8[0];
  if (!qword_1ECF58EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF58EA8);
  }

  return result;
}

unint64_t sub_1E3BBA50C()
{
  result = qword_1ECF34688;
  if (!qword_1ECF34688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34690, &qword_1E42C0708);
    sub_1E3BBA590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34688);
  }

  return result;
}

unint64_t sub_1E3BBA590()
{
  result = qword_1ECF34698;
  if (!qword_1ECF34698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF345B0, &qword_1E42C0600);
    sub_1E3BBA61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34698);
  }

  return result;
}

unint64_t sub_1E3BBA61C()
{
  result = qword_1ECF346A0;
  if (!qword_1ECF346A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF345A8, &qword_1E42C05F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34598, &qword_1E42C05E8);
    sub_1E3BB9CA0();
    swift_getOpaqueTypeConformance2();
    sub_1E3BBA714(&qword_1EE288768, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF346A0);
  }

  return result;
}

uint64_t sub_1E3BBA714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_62_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_1E3BBA798(uint64_t a1)
{
  if (a1 && (v1 = vars8, v2 = 1 << (*(*a1 + 456))(), (v2 & 0xC3) == 0))
  {
    if ((v2 & 0x14) != 0)
    {

      return sub_1E4201D54();
    }

    else
    {

      return sub_1E4201D64();
    }
  }

  else
  {

    return sub_1E4201D44();
  }
}

uint64_t sub_1E3BBA8A4(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BBA928(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 98, a2);
  *(v2 + 98) = a1;
  return result;
}

uint64_t sub_1E3BBA9C4(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BBAAB0(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BBAB9C(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BBAC88(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

void (*sub_1E3BBAD1C(uint64_t a1))(void **a1, uint64_t a2)
{
  *(a1 + 8) = v1;
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  sub_1E3C2C6A0();
  return sub_1E3BBAD84;
}

double sub_1E3BBAD9C@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for UIEdgeInsets();
  sub_1E3C2C6A0();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1E3BBAE30(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  *(v3 + 10) = v1;
  type metadata accessor for UIEdgeInsets();
  *(v3 + 11) = v4;
  sub_1E3C2C6A0();
  v5 = v3[72];
  v6 = *(v3 + 56);
  *v3 = *(v3 + 40);
  *(v3 + 1) = v6;
  v3[32] = v5;
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3BBAEB8(char **a1)
{
  v1 = *a1;
  v2 = (*a1)[32];
  v3 = *(*a1 + 1);
  *(v1 + 40) = *v1;
  *(v1 + 56) = v3;
  *(v1 + 72) = v2;
  sub_1E3C2CA00();

  free(v1);
}

uint64_t sub_1E3BBAF18(uint64_t a1)
{
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  sub_1E3C2C6A0();
  return v2;
}

void sub_1E3BBAF74(void *a1, uint64_t a2)
{
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  sub_1E3C2CA00();
}

void (*sub_1E3BBAFD8(uint64_t a1))(void **a1, uint64_t a2)
{
  *(a1 + 8) = v1;
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  sub_1E3C2C6A0();
  return sub_1E3BBB040;
}

void sub_1E3BBB058(void **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    a3(v4);
  }

  else
  {
    a3(*a1);
  }
}

uint64_t sub_1E3BBB140(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BBB22C(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BBB2B0()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = type metadata accessor for ProgressLayout();
    v1 = sub_1E3FB3220(v2);
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1E3BBB348(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 144, a2);
  *(v2 + 144) = a1;
  *(v2 + 148) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_1E3BBB3B4(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 152, a2);
  *(v2 + 152) = a1;
  *(v2 + 156) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_1E3BBB464(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 160, a2);
  *(v2 + 160) = a1;
  *(v2 + 164) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_1E3BBB4D0(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 168, a2);
  *(v2 + 168) = a1;
  *(v2 + 172) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_1E3BBB538(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = OUTLINED_FUNCTION_14_0(v2 + 176, a2);
  *(v2 + 176) = a1;
  *(v2 + 184) = v3 & 1;
  return result;
}

uint64_t sub_1E3BBB5F0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = OUTLINED_FUNCTION_14_0(v2 + 192, a2);
  *(v2 + 192) = a1;
  *(v2 + 200) = v3 & 1;
  return result;
}

uint64_t sub_1E3BBB6A0(void *a1)
{
  OUTLINED_FUNCTION_14_4(a1);
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3BBB724()
{
  OUTLINED_FUNCTION_54_24();
  swift_allocObject();
  return sub_1E3BBB754();
}

uint64_t sub_1E3BBB754()
{
  OUTLINED_FUNCTION_31_44();
  OUTLINED_FUNCTION_2_1();
  v2 = *(v1 + 1792);

  v2(0);
  OUTLINED_FUNCTION_36();
  (*(v3 + 1840))(0);
  OUTLINED_FUNCTION_36();
  (*(v4 + 1864))(2);
  OUTLINED_FUNCTION_36();
  (*(v5 + 1888))(2);
  OUTLINED_FUNCTION_36();
  (*(v6 + 1912))(0);
  sub_1E3BBB8A8();

  return v0;
}

void sub_1E3BBB8A8()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v260 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_36();
  v7 = (*(v6 + 1784))();
  switch(v7)
  {
    case 1:
      sub_1E3BC10F8(v7, v8, v9);
      if (TVAppFeature.isEnabled.getter(10, v35, v36) & 1) != 0 || (sub_1E39DFFC8())
      {
        goto LABEL_34;
      }

      v37 = objc_opt_self();
      v38 = [v37 clearColor];
      OUTLINED_FUNCTION_13();
      v264 = *(v39 + 1832);
      v265 = v39 + 1832;
      v40 = v264();
      if (v40 == 2)
      {
        goto LABEL_38;
      }

      if (v40)
      {
      }

      else
      {
        OUTLINED_FUNCTION_5_130();
        OUTLINED_FUNCTION_84_11();
        if ((v0 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
      v192 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0745098039 green:0.0745098039 blue:0.0784313725 alpha:0.2];
      v193 = [v37 whiteColor];
      v194 = [v193 colorWithAlphaComponent_];

      v195 = sub_1E3E5F2F8(v192, v194);
      v38 = v195;
LABEL_38:
      *&v291[0] = v38;
      sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
      v196 = v38;
      sub_1E3C2CA00();
      v263 = v196;

      if ([objc_opt_self() isSUIEnabled])
      {
        v197 = [v37 blackColor];
        v198 = OUTLINED_FUNCTION_112_7([v37 whiteColor]);

        OUTLINED_FUNCTION_13();
        (*(v199 + 2096))();
        *&v291[0] = v198;
        v200 = v198;
        sub_1E3C2CA00();

        OUTLINED_FUNCTION_13();
        (*(v201 + 2048))();
        OUTLINED_FUNCTION_2_1();
        (*(v202 + 680))(v198);

        OUTLINED_FUNCTION_45_37();
        v203 = sub_1E4206F24();
        OUTLINED_FUNCTION_45_37();
        v204 = sub_1E4206F24();
        *&v291[0] = sub_1E3E5F2F8(v203, v204);
        v205 = *&v291[0];
        OUTLINED_FUNCTION_110_7();

        goto LABEL_51;
      }

      v206 = [v37 whiteColor];
      v207 = OUTLINED_FUNCTION_112_7([v37 blackColor]);

      OUTLINED_FUNCTION_13();
      v209 = *(v208 + 2096);
      v209();
      *&v291[0] = v207;
      v210 = v207;
      sub_1E3C2CA00();
      v262 = v210;

      OUTLINED_FUNCTION_13();
      v212 = *(v211 + 2048);
      v212();
      OUTLINED_FUNCTION_2_1();
      (*(v213 + 680))(v207);

      (v264)(v214);
      OUTLINED_FUNCTION_38_15();
      if (!v158)
      {
        if (v215)
        {
        }

        else
        {
          OUTLINED_FUNCTION_5_130();
          v216 = OUTLINED_FUNCTION_84_11();
          if ((v1 & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        v217 = (v212)(v216);
        v218 = sub_1E3E5FD88();
        v219 = *v218;
        v220 = (*v217 + 680);
        v261 = v37;
        v221 = *v220;
        v222 = v219;
        v221(v219);

        (v209)(v223);
        OUTLINED_FUNCTION_15_11();
        v224 = *v218;
        v226 = *(*v225 + 680);
        v227 = v224;
        v226(v224);
        v37 = v261;
      }

LABEL_45:
      v228 = [v37 clearColor];
      OUTLINED_FUNCTION_45_37();
      v203 = sub_1E4206F24();
      OUTLINED_FUNCTION_45_37();
      v204 = sub_1E4206F24();
      v229 = sub_1E3E5F2F8(v204, v203);

      v264();
      OUTLINED_FUNCTION_38_15();
      if (!v158)
      {
        if (v230)
        {

LABEL_49:
          v231 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0745098039 green:0.0745098039 blue:0.0784313725 alpha:0.24];
          v232 = [v37 whiteColor];
          v233 = [v232 colorWithAlphaComponent_];

          v234 = sub_1E3E5F2F8(v231, v233);
          v229 = v234;
          goto LABEL_50;
        }

        OUTLINED_FUNCTION_5_130();
        OUTLINED_FUNCTION_84_11();
        if (v1)
        {
          goto LABEL_49;
        }
      }

LABEL_50:
      v235 = v262;
      *&v291[0] = v229;
      v236 = v229;
      OUTLINED_FUNCTION_110_7();

LABEL_51:
      OUTLINED_FUNCTION_47_0();
      v237 += 262;
      v238 = *v237;
      (*v237)();
      OUTLINED_FUNCTION_30();
      (*(v239 + 872))(0);

      OUTLINED_FUNCTION_13();
      (*(v240 + 2048))();
      OUTLINED_FUNCTION_2_1();
      (*(v241 + 872))(0);

      (v264)(v242);
      OUTLINED_FUNCTION_38_15();
      if (!v158)
      {
        if (v243)
        {

LABEL_55:
          v246 = [v37 whiteColor];
          v247 = [v246 colorWithAlphaComponent_];

          v248 = [v37 blackColor];
          v249 = [v248 colorWithAlphaComponent_];

          sub_1E3E5F2F8(v247, v249);
          OUTLINED_FUNCTION_13();
          v250 = OUTLINED_FUNCTION_76_11();
          v252 = v251(v250);
          v252.n128_u64[0] = 0.5;
          *&v291[0] = j__OUTLINED_FUNCTION_7_78(v252);
          *(&v291[0] + 1) = v253;
          *&v291[1] = v254;
          *(&v291[1] + 1) = v255;
          LOBYTE(v291[2]) = 0;
          (*(*v1 + 1960))(v291);
          goto LABEL_56;
        }

        OUTLINED_FUNCTION_5_130();
        OUTLINED_FUNCTION_84_11();
        if (v1)
        {
          goto LABEL_55;
        }
      }

LABEL_56:
      if (TVAppFeature.isEnabled.getter(10, v244, v245))
      {
        OUTLINED_FUNCTION_47_0();
        (*(v256 + 2144))();
        v238();
        OUTLINED_FUNCTION_2_1();
        v258 = (*(v257 + 672))();

        OUTLINED_FUNCTION_3_11();
        (*(v259 + 680))(v258);
      }

      goto LABEL_34;
    case 2:
      if (TVAppFeature.isEnabled.getter(10, v8, v9) & 1) != 0 || (v55 = sub_1E39DFFC8(), (v55))
      {
        v58 = objc_opt_self();
        v59 = [v58 blackColor];
        v60 = [v59 colorWithAlphaComponent_];

        OUTLINED_FUNCTION_13();
        v62 = (*(v61 + 1984))(v60);
        v62.n128_u64[0] = 1.0;
        v304[0] = j__OUTLINED_FUNCTION_7_78(v62);
        v304[1] = v63;
        v304[2] = v64;
        v304[3] = v65;
        v305 = 0;
        (*(*v1 + 1960))(v304);
        v66 = [v58 whiteColor];
        v67 = [v66 colorWithAlphaComponent_];

        OUTLINED_FUNCTION_13();
        (*(v68 + 1936))(v67);
        OUTLINED_FUNCTION_13();
        (*(v69 + 1888))(0);
        *&v266[0] = 0;
        BYTE8(v266[0]) = 1;
        v286 = 48.0;
        LOBYTE(v287) = 0;
        v281 = 48.0;
        LOBYTE(v282) = 0;
        v276 = 66.0;
        LOBYTE(v277) = 0;
        *&v274[0] = 0x4042000000000000;
        BYTE8(v274[0]) = 0;
        *&v272[0] = 0x404A000000000000;
        BYTE8(v272[0]) = 0;
        v70 = MEMORY[0x1E69E7DE0];
        sub_1E3C2FCB8(v266, &v286, &v281, &v276, v274, v272, MEMORY[0x1E69E7DE0], v291);
        memcpy(v266, v291, 0x59uLL);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_13();
        v72 = *(v71 + 1600);
        (v72)(v266, 6, v73 & 1, v70);
        sub_1E3BC31C0(v291);
        OUTLINED_FUNCTION_18();
        v74 = OUTLINED_FUNCTION_42_43();
        v72(v74, 3);
        sub_1E3BC33E4(v291);
        OUTLINED_FUNCTION_18();
        v75 = OUTLINED_FUNCTION_42_43();
        v72(v75, 4);
        sub_1E3BC46A0(&v292);
        v303 = v294;
        v302 = v293;
        v301 = v292;
        v291[0] = v292;
        v291[1] = v293;
        v291[2] = v294;
        sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
        OUTLINED_FUNCTION_18();
        v76 = OUTLINED_FUNCTION_42_43();
        v72(v76, 24);
        OUTLINED_FUNCTION_59_17(&v301);
        OUTLINED_FUNCTION_59_17(&v301 + 8);
        OUTLINED_FUNCTION_59_17(&v302);
        OUTLINED_FUNCTION_59_17(&v302 + 8);
        OUTLINED_FUNCTION_59_17(&v303);
        OUTLINED_FUNCTION_59_17(&v303 + 8);
        sub_1E3BC4560();
        v300 = v297;
        v299 = v296;
        v298 = v295;
        v291[0] = v295;
        v291[1] = v296;
        v291[2] = v297;
        OUTLINED_FUNCTION_18();
        v77 = OUTLINED_FUNCTION_42_43();
        v72(v77, 29);
        OUTLINED_FUNCTION_59_17(&v298);
        OUTLINED_FUNCTION_59_17(&v298 + 8);
        OUTLINED_FUNCTION_59_17(&v299);
        OUTLINED_FUNCTION_59_17(&v299 + 8);
        OUTLINED_FUNCTION_59_17(&v300);
        OUTLINED_FUNCTION_59_17(&v300 + 8);
        OUTLINED_FUNCTION_13();
        v79 = (*(v78 + 1904))();
        sub_1E3BC2954(v79, v80, v81);
        sub_1E3BC3548();
        OUTLINED_FUNCTION_13();
        (*(v82 + 2048))();
        sub_1E3BC37A8();

        sub_1E3BC3D48();
        v266[0] = xmmword_1E42C0780;
        v266[1] = xmmword_1E42C0780;
        LOBYTE(v266[2]) = 0;
        v286 = sub_1E3952C64();
        v287 = v83;
        v288 = v84;
        v289 = v85;
        v290 = 0;
        v281 = sub_1E3952C64();
        v282 = v86;
        v283 = v87;
        v284 = v88;
        v285 = 0;
        v276 = sub_1E3952C64();
        v277 = v89;
        v278 = v90;
        v279 = v91;
        v280 = 0;
        type metadata accessor for UIEdgeInsets();
        v93 = v92;
        sub_1E3C2FC98();
        v272[0] = v274[0];
        v272[1] = v274[1];
        v273 = v275;
        sub_1E3C3DE00();
        v267[0] = v269;
        v267[1] = v270;
        v268 = v271;
        sub_1E3C2FCB8(v266, v272, v267, &v286, &v281, &v276, v93, v291);
        memcpy(v266, v291, 0xE9uLL);
        v94 = OUTLINED_FUNCTION_18();
        (v72)(v266, 1, v94 & 1, v93);
      }

      else
      {
        sub_1E3BC10F8(v55, v56, v57);
        OUTLINED_FUNCTION_47_0();
        v179 += 256;
        v180 = *v179;
        (*v179)();
        OUTLINED_FUNCTION_2_1();
        (*(v181 + 1696))(15);

        (v180)(v182);
        OUTLINED_FUNCTION_2_1();
        (*(v183 + 1792))(4);

        v185 = (v180)(v184);
        sub_1E3E5FD88();
        OUTLINED_FUNCTION_81_12();
        v186 = *(*v185 + 680);
        v187 = v180;
        v186(v180);

        v188 = *sub_1E3E605D4();
        v189 = *(*v1 + 752);
        v190 = v188;
        v191 = OUTLINED_FUNCTION_76_11();
        v189(v191);
      }

      goto LABEL_34;
    case 3:
    case 5:
      sub_1E3BC2748();
      goto LABEL_34;
    case 4:
      sub_1E3BC10F8(v7, v8, v9);
      OUTLINED_FUNCTION_47_0();
      v95 += 256;
      v96 = *v95;
      (*v95)();
      OUTLINED_FUNCTION_2_1();
      v97 = OUTLINED_FUNCTION_15_8();
      v98(v97);

      (v96)(v99);
      OUTLINED_FUNCTION_2_1();
      v100 = OUTLINED_FUNCTION_15_8();
      v101(v100);

      v103 = (v96)(v102);
      v104 = sub_1E3E5FD88();
      v105 = *v104;
      v106 = *(*v103 + 680);
      v107 = *v104;
      v106(v105);

      OUTLINED_FUNCTION_13();
      v109 = *(v108 + 2072);
      v109();
      OUTLINED_FUNCTION_2_1();
      v110 = OUTLINED_FUNCTION_15_8();
      v111(v110);

      (v109)(v112);
      OUTLINED_FUNCTION_2_1();
      v113 = OUTLINED_FUNCTION_15_8();
      v114(v113);

      (v109)(v115);
      OUTLINED_FUNCTION_15_11();
      v116 = *v104;
      v118 = *(*v117 + 680);
      v119 = v116;
      v118(v116);

      v120 = [objc_opt_self() systemBlueColor];
      OUTLINED_FUNCTION_13();
      (*(v121 + 752))();
      goto LABEL_34;
    case 6:
      v41 = [objc_opt_self() clearColor];
      OUTLINED_FUNCTION_13();
      (*(v42 + 752))();
      OUTLINED_FUNCTION_13();
      v44 = (v43 + 2096);
      v45 = *(v43 + 2096);
      v45();
      OUTLINED_FUNCTION_2_1();
      v46 = OUTLINED_FUNCTION_52_27();
      v47(v46);

      (v45)(v48);
      OUTLINED_FUNCTION_2_1();
      v49 = OUTLINED_FUNCTION_52_27();
      v50(v49);

      v52 = (v45)(v51);
      sub_1E3E60700();
      OUTLINED_FUNCTION_81_12();
      v53 = *(*v52 + 680);
      v54 = v44;
      v53(v44);
      goto LABEL_31;
    case 7:
      v131 = *sub_1E3E60700();
      OUTLINED_FUNCTION_47_0();
      v133 = *(v132 + 752);
      v134 = v131;
      v135 = OUTLINED_FUNCTION_76_11();
      v133(v135);
      v136 = *sub_1E3E608EC();
      v137 = *(*v1 + 872);
      v138 = v136;
      v139 = OUTLINED_FUNCTION_76_11();
      v137(v139);
      OUTLINED_FUNCTION_47_0();
      (*(v140 + 232))(0x4052800000000000, 0);
      OUTLINED_FUNCTION_13();
      v141 = OUTLINED_FUNCTION_52_27();
      v142(v141);
      *&v291[0] = sub_1E3952C64();
      *(&v291[0] + 1) = v143;
      *&v291[1] = v144;
      *(&v291[1] + 1) = v145;
      LOBYTE(v291[2]) = 0;
      OUTLINED_FUNCTION_47_0();
      (*(v146 + 184))(v291);
      OUTLINED_FUNCTION_13();
      v148 = *(v147 + 2048);
      v148();
      OUTLINED_FUNCTION_2_1();
      (*(v149 + 1696))(17);

      (v148)(v150);
      OUTLINED_FUNCTION_2_1();
      (*(v151 + 1792))(6);

      (v148)(v152);
      OUTLINED_FUNCTION_2_1();
      (*(v153 + 1984))(1);

      (v148)(v154);
      sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
      OUTLINED_FUNCTION_11_12();
      sub_1E4206F24();
      OUTLINED_FUNCTION_3_11();
      (*(v155 + 680))();

      OUTLINED_FUNCTION_13();
      (*(v156 + 1904))();
      OUTLINED_FUNCTION_38_15();
      if (v158 || (v157 & 1) == 0)
      {
        OUTLINED_FUNCTION_10_91();
        v159 = OUTLINED_FUNCTION_84_11();
        if (v1)
        {
          v160 = 2;
        }

        else
        {
          v160 = 1;
        }
      }

      else
      {

        v160 = 2;
      }

      (v148)(v159);
      OUTLINED_FUNCTION_30();
      (*(v161 + 2056))(v160, 0);

      (v148)(v162);
      OUTLINED_FUNCTION_2_1();
      (*(v163 + 2080))(v160, 0);

      (v148)(v164);
      OUTLINED_FUNCTION_2_1();
      (*(v165 + 2104))(v160, 0);
      goto LABEL_31;
    case 8:
      OUTLINED_FUNCTION_47_0();
      (*(v14 + 2096))();
      sub_1E3BC4A34();

      OUTLINED_FUNCTION_13();
      (*(v15 + 2120))();
      sub_1E3BC4A34();

      OUTLINED_FUNCTION_13();
      v17 = *(v16 + 2048);
      v18 = v17();
      sub_1E3E60700();
      OUTLINED_FUNCTION_81_12();
      v19 = *(*v18 + 680);
      v20 = v2;
      v19(v2);

      (v17)(v21);
      OUTLINED_FUNCTION_2_1();
      (*(v22 + 1696))(15);

      (v17)(v23);
      OUTLINED_FUNCTION_2_1();
      (*(v24 + 1792))(10);

      (v17)(v25);
      OUTLINED_FUNCTION_2_1();
      v26 = OUTLINED_FUNCTION_15_8();
      v27(v26);

      (v17)(v28);
      OUTLINED_FUNCTION_2_1();
      v29 = OUTLINED_FUNCTION_15_8();
      v30(v29);

      (v17)(v31);
      OUTLINED_FUNCTION_2_1();
      (*(v32 + 1720))(6);

      if (sub_1E39E01A4())
      {
        OUTLINED_FUNCTION_47_0();
        (*(v33 + 536))(3);
      }

      if (sub_1E39DFFC8())
      {
        OUTLINED_FUNCTION_47_0();
        (*(v34 + 2272))(5, 0);
      }

      if ((sub_1E39DFFC8() & 1) == 0)
      {
        v166 = *sub_1E3E604E4();
      }

      OUTLINED_FUNCTION_47_0();
      v167 = OUTLINED_FUNCTION_76_11();
      v168(v167);
      goto LABEL_34;
    case 9:
      OUTLINED_FUNCTION_47_0();
      v122 += 256;
      v123 = *v122;
      v124 = (*v122)();
      sub_1E3E60700();
      OUTLINED_FUNCTION_81_12();
      v125 = *(*v124 + 680);
      v126 = v2;
      v125(v2);

      (v123)(v127);
      OUTLINED_FUNCTION_2_1();
      (*(v128 + 1696))(15);

      (v123)(v129);
      OUTLINED_FUNCTION_2_1();
      (*(v130 + 1720))(11);
LABEL_31:

      goto LABEL_34;
    case 10:
      v10 = sub_1E324FBDC();
      (*(v3 + 16))(v5, v10, v2);
      v11 = sub_1E41FFC94();
      v12 = sub_1E4206814();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1E323F000, v11, v12, "ButtonLayout: No default button layout for custom button", v13, 2u);
        MEMORY[0x1E69143B0](v13, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      goto LABEL_34;
    case 11:
      return;
    default:
      sub_1E3BC10F8(v7, v8, v9);
LABEL_34:
      OUTLINED_FUNCTION_47_0();
      v170 = (*(v169 + 2048))();
      sub_1E3C37CBC(v170, 23);

      OUTLINED_FUNCTION_13();
      v172 = (*(v171 + 2072))();
      sub_1E3C37CBC(v172, 15);

      OUTLINED_FUNCTION_13();
      v174 = (*(v173 + 2096))();
      sub_1E3C37CBC(v174, 39);

      OUTLINED_FUNCTION_13();
      v176 = (*(v175 + 2120))();
      sub_1E3C37CBC(v176, 44);

      OUTLINED_FUNCTION_13();
      v178 = (*(v177 + 2144))();
      sub_1E3C37CBC(v178, 115);

      return;
  }
}

uint64_t sub_1E3BBD964(uint64_t a1, char a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_54_24();
  swift_allocObject();
  return sub_1E3BBD9C4(a1, a2 & 1, a3, a4 & 1);
}

uint64_t sub_1E3BBD9C4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_31_44();
  OUTLINED_FUNCTION_2_1();
  v10 = *(v9 + 1792);

  v10(a1);
  OUTLINED_FUNCTION_36();
  (*(v11 + 1840))(a4 & 1);
  OUTLINED_FUNCTION_36();
  (*(v12 + 1864))(2);
  OUTLINED_FUNCTION_36();
  (*(v13 + 1888))(a3);
  OUTLINED_FUNCTION_36();
  (*(v14 + 1912))(a2 & 1);
  sub_1E3BBB8A8();

  return v4;
}

void sub_1E3BBDB38(uint64_t a1)
{
  sub_1E3C34E14();
  OUTLINED_FUNCTION_8();
  v399 = v3 + 1784;
  v414 = *(v3 + 1784);
  HIDWORD(v384) = v414();
  OUTLINED_FUNCTION_36();
  v294 = *(v4 + 1832);
  v314 = v4 + 1832;
  HIDWORD(v334) = v294();
  OUTLINED_FUNCTION_36();
  v354 = *(v5 + 1904);
  v369 = v5 + 1904;
  LODWORD(v384) = v354();
  v6 = sub_1E3D46F94(101);
  OUTLINED_FUNCTION_55_28(v6, v7, v8, v9, v10, v11, v12, v13, v274, v294, v314, v334, v354, v369, v384, v399, v414, v429, v430, v431, v432, v433, v434, v435, v436, *(&v436 + 1), v437, v438, v439, v440, v441, v442);

  v22 = v443 != 0;
  if (v443)
  {
    v23 = OUTLINED_FUNCTION_63_17(v14, v15, v16, v17, v18, v19, v20, v21, v275, v295, v315, v335, v355, v370, v385, v400, v415, v429, v430, v431, v432, v433, v434, v435, v436, *(&v436 + 1), v437, v438, v439, v440, v441, v442);
    v25 = sub_1E329504C(v23, v24);
    v33 = OUTLINED_FUNCTION_91_8(v25, v26, v27, v28, v29, v30, v31, v32, v276, v296, v316, v336, v356, v371, v386, v401, v416, v429, v430, v431);
    OUTLINED_FUNCTION_92_7(v33, MEMORY[0x1E69E6158], v34, v35, v36, v37, v38, v39, v277, v297, v317, v337);
    if (*(&v442 + 1))
    {

      v40 = sub_1E3BC0CD8();
    }

    else
    {
      v40 = 11;
    }

    v42 = sub_1E3BC0CD8();
    if (v444)
    {

      v43 = sub_1E3BC0CD8();
    }

    else
    {
      v43 = 11;
    }

    if (v445)
    {

      v44 = sub_1E3BC0CD8();
    }

    else
    {
      v44 = 11;
    }

    if (v446)
    {

      v45 = sub_1E3BC0CD8();
    }

    else
    {
      v45 = 11;
    }

    if (v447)
    {
      OUTLINED_FUNCTION_122_5();
      sub_1E325F748(&v442, &qword_1ECF346E8, &unk_1E42C0DD0);
      OUTLINED_FUNCTION_13_8();
      v46 = sub_1E3BC0CD8();
    }

    else
    {
      sub_1E325F748(&v442, &qword_1ECF346E8, &unk_1E42C0DD0);
      v46 = 11;
    }

    LOBYTE(v441) = v40;
    BYTE4(v439) = v42;
    HIBYTE(v440) = v43;
    BYTE6(v440) = v44;
    BYTE5(v440) = v45;
    BYTE4(v440) = v46;
    sub_1E3C2FCB8(&v441, &v439 + 4, &v440 + 7, &v440 + 6, &v440 + 5, &v440 + 4, &type metadata for ButtonLayout.ButtonType, &v429);
    LODWORD(v441) = v429;
    WORD2(v441) = WORD2(v429);
    OUTLINED_FUNCTION_35_9();
    v47();
    sub_1E325F748(&v432, &unk_1ECF296E0, &unk_1E4298030);
    v41 = __swift_destroy_boxed_opaque_existential_1(&v436);
  }

  else
  {
    v41 = sub_1E325F748(&v442, &unk_1ECF296E0, &unk_1E4298030);
  }

  v415(v41);
  OUTLINED_FUNCTION_13_5();
  if (!v270)
  {
    v49 = v48;
    swift_beginAccess();
    *(v1 + 98) = v49;
  }

  v50 = sub_1E3D46F94(102);
  OUTLINED_FUNCTION_55_28(v50, v51, v52, v53, v54, v55, v56, v57, v275, v295, v315, v335, v355, v370, v385, v400, v415, v429, v430, v431, v432, v433, v434, v435, v436, *(&v436 + 1), v437, v438, v439, v440, v441, v442);

  if (v443)
  {
    v66 = OUTLINED_FUNCTION_63_17(v58, v59, v60, v61, v62, v63, v64, v65, v278, v298, v318, v338, v357, v372, v387, v402, v417, v429, v430, v431, v432, v433, v434, v435, v436, *(&v436 + 1), v437, v438, v439, v440, v441, v442);
    v68 = sub_1E329504C(v66, v67);
    v76 = OUTLINED_FUNCTION_91_8(v68, v69, v70, v71, v72, v73, v74, v75, v279, v299, v319, v339, v358, v373, v388, v403, v418, v429, v430, v431);
    OUTLINED_FUNCTION_92_7(v76, MEMORY[0x1E69E6158], v77, v78, v79, v80, v81, v82, v280, v300, v320, v340);
    if (*(&v442 + 1))
    {
      OUTLINED_FUNCTION_121_6();
      OUTLINED_FUNCTION_13_8();
      sub_1E3856C34();
    }

    if (v443)
    {
      OUTLINED_FUNCTION_120_5();
      OUTLINED_FUNCTION_13_8();
      sub_1E3856C34();
    }

    if (v444)
    {
      OUTLINED_FUNCTION_119_5();
      OUTLINED_FUNCTION_13_8();
      sub_1E3856C34();
    }

    if (v445)
    {
      OUTLINED_FUNCTION_118_4();
      OUTLINED_FUNCTION_13_8();
      sub_1E3856C34();
    }

    if (v446)
    {
      OUTLINED_FUNCTION_117_6();
      OUTLINED_FUNCTION_13_8();
      sub_1E3856C34();
    }

    if (v447)
    {
      OUTLINED_FUNCTION_122_5();
      sub_1E325F748(&v442, &qword_1ECF346E8, &unk_1E42C0DD0);
      OUTLINED_FUNCTION_13_8();
      sub_1E3856C34();
    }

    else
    {
      sub_1E325F748(&v442, &qword_1ECF346E8, &unk_1E42C0DD0);
    }

    OUTLINED_FUNCTION_21_62();
    v91 = OUTLINED_FUNCTION_8_99(v83, v84, v85, v86, v87, v88, v89, v90, v281, v301, v321, v341, v359, v374, v389, v404, v419, v429, v430, v431, v432, v433, v434, v435, v436, *(&v436 + 1), v437, v438, v439, SBYTE4(v439));
    sub_1E3C2FCB8(v91, v92, v93, v94, v95, &v440 + 3, &type metadata for ButtonLayout.UberButtonType, v96);
    OUTLINED_FUNCTION_103_6();
    HIDWORD(v439) = v441;
    LOWORD(v440) = v97;
    OUTLINED_FUNCTION_102_10();
    OUTLINED_FUNCTION_35_9();
    v98();
    sub_1E325F748(&v432, &unk_1ECF296E0, &unk_1E4298030);
    __swift_destroy_boxed_opaque_existential_1(&v436);
  }

  else
  {
    sub_1E325F748(&v442, &unk_1ECF296E0, &unk_1E4298030);
  }

  v99 = sub_1E3D46F94(104);
  OUTLINED_FUNCTION_55_28(v99, v100, v101, v102, v103, v104, v105, v106, v278, v298, v318, v338, v357, v372, v387, v402, v417, v429, v430, v431, v432, v433, v434, v435, v436, *(&v436 + 1), v437, v438, v439, v440, v441, v442);

  if (v443)
  {
    v115 = OUTLINED_FUNCTION_63_17(v107, v108, v109, v110, v111, v112, v113, v114, v282, v302, v322, v342, v360, v375, v390, v405, v420, v429, v430, v431, v432, v433, v434, v435, v436, *(&v436 + 1), v437, v438, v439, v440, v441, v442);
    v117 = sub_1E329504C(v115, v116);
    v125 = OUTLINED_FUNCTION_91_8(v117, v118, v119, v120, v121, v122, v123, v124, v283, v303, v323, v343, v361, v376, v391, v406, v421, v429, v430, v431);
    OUTLINED_FUNCTION_92_7(v125, MEMORY[0x1E69E6158], v126, v127, v128, v129, v130, v131, v284, v304, v324, v344);
    if (*(&v442 + 1))
    {
      OUTLINED_FUNCTION_121_6();
      OUTLINED_FUNCTION_13_8();
      sub_1E3BC0AA8();
    }

    if (v443)
    {
      OUTLINED_FUNCTION_120_5();
      OUTLINED_FUNCTION_13_8();
      sub_1E3BC0AA8();
    }

    if (v444)
    {
      OUTLINED_FUNCTION_119_5();
      OUTLINED_FUNCTION_13_8();
      sub_1E3BC0AA8();
    }

    if (v445)
    {
      OUTLINED_FUNCTION_118_4();
      OUTLINED_FUNCTION_13_8();
      sub_1E3BC0AA8();
    }

    if (v446)
    {
      OUTLINED_FUNCTION_117_6();
      OUTLINED_FUNCTION_13_8();
      sub_1E3BC0AA8();
    }

    if (v447)
    {
      OUTLINED_FUNCTION_122_5();
      sub_1E325F748(&v442, &qword_1ECF346E8, &unk_1E42C0DD0);
      OUTLINED_FUNCTION_13_8();
      sub_1E3BC0AA8();
    }

    else
    {
      sub_1E325F748(&v442, &qword_1ECF346E8, &unk_1E42C0DD0);
    }

    OUTLINED_FUNCTION_21_62();
    v140 = OUTLINED_FUNCTION_8_99(v132, v133, v134, v135, v136, v137, v138, v139, v285, v305, v325, v345, v362, v377, v392, v407, v422, v429, v430, v431, v432, v433, v434, v435, v436, *(&v436 + 1), v437, v438, v439, SBYTE4(v439));
    sub_1E3C2FCB8(v140, v141, v142, v143, v144, &v440 + 3, &type metadata for ButtonLayout.ButtonSize, v145);
    OUTLINED_FUNCTION_103_6();
    HIDWORD(v439) = v441;
    LOWORD(v440) = v146;
    OUTLINED_FUNCTION_102_10();
    OUTLINED_FUNCTION_35_9();
    v147();
    sub_1E325F748(&v432, &unk_1ECF296E0, &unk_1E4298030);
    __swift_destroy_boxed_opaque_existential_1(&v436);
  }

  else
  {
    sub_1E325F748(&v442, &unk_1ECF296E0, &unk_1E4298030);
  }

  v148 = sub_1E3D46F94(105);
  OUTLINED_FUNCTION_55_28(v148, v149, v150, v151, v152, v153, v154, v155, v282, v302, v322, v342, v360, v375, v390, v405, v420, v429, v430, v431, v432, v433, v434, v435, v436, *(&v436 + 1), v437, v438, v439, v440, v441, v442);

  if (v443)
  {
    v164 = OUTLINED_FUNCTION_63_17(v156, v157, v158, v159, v160, v161, v162, v163, v286, v306, v326, v346, v363, v378, v393, v408, v423, v429, v430, v431, v432, v433, v434, v435, v436, *(&v436 + 1), v437, v438, v439, v440, v441, v442);
    v166 = sub_1E329504C(v164, v165);
    v174 = OUTLINED_FUNCTION_91_8(v166, v167, v168, v169, v170, v171, v172, v173, v287, v307, v327, v347, v364, v379, v394, v409, v424, v429, v430, v431);
    OUTLINED_FUNCTION_92_7(v174, MEMORY[0x1E69E6158], v175, v176, v177, v178, v179, v180, v288, v308, v328, v348);
    if (*(&v442 + 1))
    {
      OUTLINED_FUNCTION_121_6();
      OUTLINED_FUNCTION_13_8();
      sub_1E3BC005C();
    }

    if (v443)
    {
      OUTLINED_FUNCTION_120_5();
      OUTLINED_FUNCTION_13_8();
      sub_1E3BC005C();
    }

    if (v444)
    {
      OUTLINED_FUNCTION_119_5();
      OUTLINED_FUNCTION_13_8();
      sub_1E3BC005C();
    }

    if (v445)
    {
      OUTLINED_FUNCTION_118_4();
      OUTLINED_FUNCTION_13_8();
      sub_1E3BC005C();
    }

    if (v446)
    {
      OUTLINED_FUNCTION_117_6();
      OUTLINED_FUNCTION_13_8();
      sub_1E3BC005C();
    }

    if (v447)
    {
      OUTLINED_FUNCTION_122_5();
      sub_1E325F748(&v442, &qword_1ECF346E8, &unk_1E42C0DD0);
      OUTLINED_FUNCTION_13_8();
      sub_1E3BC005C();
    }

    else
    {
      sub_1E325F748(&v442, &qword_1ECF346E8, &unk_1E42C0DD0);
    }

    OUTLINED_FUNCTION_21_62();
    v189 = OUTLINED_FUNCTION_8_99(v181, v182, v183, v184, v185, v186, v187, v188, v289, v309, v329, v349, v365, v380, v395, v410, v425, v429, v430, v431, v432, v433, v434, v435, v436, *(&v436 + 1), v437, v438, v439, SBYTE4(v439));
    sub_1E3C2FCB8(v189, v190, v191, v192, v193, &v440 + 3, &type metadata for ButtonLayout.ButtonShape, v194);
    OUTLINED_FUNCTION_103_6();
    HIDWORD(v439) = v441;
    LOWORD(v440) = v195;
    OUTLINED_FUNCTION_102_10();
    OUTLINED_FUNCTION_35_9();
    v196();
    sub_1E325F748(&v432, &unk_1ECF296E0, &unk_1E4298030);
    __swift_destroy_boxed_opaque_existential_1(&v436);
  }

  else
  {
    sub_1E325F748(&v442, &unk_1ECF296E0, &unk_1E4298030);
  }

  v197 = sub_1E3D46F94(103);
  OUTLINED_FUNCTION_55_28(v197, v198, v199, v200, v201, v202, v203, v204, v286, v306, v326, v346, v363, v378, v393, v408, v423, v429, v430, v431, v432, v433, v434, v435, v436, *(&v436 + 1), v437, v438, v439, v440, v441, v442);

  if (v443)
  {
    v213 = OUTLINED_FUNCTION_63_17(v205, v206, v207, v208, v209, v210, v211, v212, v290, v310, v330, v350, v366, v381, v396, v411, v426, v429, v430, v431, v432, v433, v434, v435, v436, *(&v436 + 1), v437, v438, v439, v440, v441, v442);
    v215 = sub_1E329504C(v213, v214);
    v223 = OUTLINED_FUNCTION_91_8(v215, v216, v217, v218, v219, v220, v221, v222, v291, v311, v331, v351, v367, v382, v397, v412, v427, v429, v430, v431);
    OUTLINED_FUNCTION_92_7(v223, MEMORY[0x1E69E6158], v224, v225, v226, v227, v228, v229, v292, v312, v332, v352);
    if (*(&v442 + 1))
    {
      OUTLINED_FUNCTION_121_6();
      OUTLINED_FUNCTION_13_8();
      v230 = sub_1E3856C34();
    }

    else
    {
      v230 = 2;
    }

    if (v443)
    {
      OUTLINED_FUNCTION_120_5();
      OUTLINED_FUNCTION_13_8();
      v231 = sub_1E3856C34();
    }

    else
    {
      v231 = 2;
    }

    if (v444)
    {
      OUTLINED_FUNCTION_119_5();
      OUTLINED_FUNCTION_13_8();
      v232 = sub_1E3856C34();
    }

    else
    {
      v232 = 2;
    }

    if (v445)
    {
      OUTLINED_FUNCTION_118_4();
      OUTLINED_FUNCTION_13_8();
      v233 = sub_1E3856C34();
    }

    else
    {
      v233 = 2;
    }

    if (v446)
    {
      OUTLINED_FUNCTION_117_6();
      sub_1E325F748(&v442, &qword_1ECF346E8, &unk_1E42C0DD0);
      OUTLINED_FUNCTION_13_8();
      v234 = sub_1E3856C34();
    }

    else
    {
      sub_1E325F748(&v442, &qword_1ECF346E8, &unk_1E42C0DD0);
      v234 = 2;
    }

    BYTE4(v439) = v230;
    HIBYTE(v440) = v231;
    BYTE6(v440) = v232;
    BYTE5(v440) = v233;
    BYTE4(v440) = v234;
    v235 = sub_1E3C3DE00();
    BYTE2(v440) = BYTE3(v440);
    v243 = OUTLINED_FUNCTION_8_99(v235, v236, v237, v238, v239, v240, v241, v242, v293, v313, v333, v353, v368, v383, v398, v413, v428, v429, v430, v431, v432, v433, v434, v435, v436, *(&v436 + 1), v437, v438, v439, SBYTE4(v439));
    sub_1E3C2FCB8(v243, v244, v245, v246, v247, &v440 + 2, &type metadata for ButtonLayout.TitleStyle, v248);
    OUTLINED_FUNCTION_103_6();
    HIDWORD(v439) = v441;
    LOWORD(v440) = v249;
    OUTLINED_FUNCTION_102_10();
    OUTLINED_FUNCTION_35_9();
    v250();
    sub_1E325F748(&v432, &unk_1ECF296E0, &unk_1E4298030);
    __swift_destroy_boxed_opaque_existential_1(&v436);
  }

  else
  {
    sub_1E325F748(&v442, &unk_1ECF296E0, &unk_1E4298030);
  }

  v251 = sub_1E3D46F94(108);
  sub_1E3277E60(v251, v252, a1, &v436);

  if (v438)
  {
    v253 = sub_1E329504C(&v436, &v442);
    v261 = OUTLINED_FUNCTION_63_17(v253, v254, v255, v256, v257, v258, v259, v260, v290, v310, v330, v350, v366, v381, v396, v411, v426, v429, v430, v431, v432, v433, v434, v435, v436, *(&v436 + 1), v437, v438, v439, v440, v441, v442);
    sub_1E328438C(v261, v262);
    sub_1E3C3AB84(&v436, 108, 1);
    sub_1E325F748(&v436, &unk_1ECF296E0, &unk_1E4298030);
    v263 = __swift_destroy_boxed_opaque_existential_1(&v442);
    if (!v22)
    {
      return;
    }
  }

  else
  {
    v263 = sub_1E325F748(&v436, &unk_1ECF296E0, &unk_1E4298030);
    if (!v22)
    {
      return;
    }
  }

  v264 = v426(v263);
  v265 = v264;
  if (BYTE4(v396) == 11)
  {
    if (v264 != 11)
    {
      goto LABEL_112;
    }
  }

  else
  {
    if (v264 == 11)
    {
      goto LABEL_112;
    }

    v266 = sub_1E3BC0D18(SBYTE4(v396));
    v268 = v267;
    v270 = v266 == sub_1E3BC0D18(v265) && v268 == v269;
    if (v270)
    {
    }

    else
    {
      v271 = sub_1E42079A4();

      if ((v271 & 1) == 0)
      {
        goto LABEL_112;
      }
    }
  }

  v272 = v366(v264);
  if (v396 == 2)
  {
    if (v272 != 2)
    {
      goto LABEL_112;
    }
  }

  else if (v272 == 2 || (sub_1E3BC0488(v396 & 1, v272 & 1) & 1) == 0)
  {
    goto LABEL_112;
  }

  v273 = v310();
  if (BYTE4(v350) == 2)
  {
    if (v273 == 2)
    {
      return;
    }

LABEL_112:
    sub_1E3BBE800();
    sub_1E3BBB8A8();
    return;
  }

  if (v273 == 2 || (sub_1E3BC0408(BYTE4(v350) & 1, v273 & 1) & 1) == 0)
  {
    goto LABEL_112;
  }
}

void sub_1E3BBE800()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1784))();
  OUTLINED_FUNCTION_13_5();
  if (v47)
  {
LABEL_3:
    OUTLINED_FUNCTION_111();
    (*(v2 + 800))(11);
    OUTLINED_FUNCTION_111();
    (*(v3 + 752))(0);
    OUTLINED_FUNCTION_9_2();
    (*(v4 + 1984))(0);
    OUTLINED_FUNCTION_9_2();
    (*(v5 + 872))(0);
    OUTLINED_FUNCTION_9_2();
    (*(v6 + 680))(0);
    OUTLINED_FUNCTION_9_2();
    v7 = OUTLINED_FUNCTION_36_0();
    v8(v7);
    OUTLINED_FUNCTION_111();
    v9 = OUTLINED_FUNCTION_36_0();
    v10(v9);
    OUTLINED_FUNCTION_9_2();
    v11 = OUTLINED_FUNCTION_36_0();
    v12(v11);
    OUTLINED_FUNCTION_111();
    v13 = OUTLINED_FUNCTION_36_0();
    v14(v13);
    OUTLINED_FUNCTION_9_2();
    v15 = OUTLINED_FUNCTION_36_0();
    v16(v15);
    OUTLINED_FUNCTION_9_2();
    v17 = OUTLINED_FUNCTION_36_0();
    v18(v17);
    memset(v49, 0, sizeof(v49));
    v50 = 1;
    OUTLINED_FUNCTION_111();
    (*(v19 + 184))(v49);
    OUTLINED_FUNCTION_9_2();
    (*(v20 + 560))(v49);
    OUTLINED_FUNCTION_9_2();
    (*(v21 + 2048))(v22, v23, v24, v25, v26);
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_13();
    (*(v27 + 1648))(v28, v29, v30, v31, v32);

    OUTLINED_FUNCTION_9_2();
    (*(v33 + 2096))(v34, v35, v36, v37, v38);
    type metadata accessor for ImageLayout();
    sub_1E3BD61D8();
    OUTLINED_FUNCTION_9_2();
    (*(v39 + 1648))(v40, v41, v42, v43, v44);

    return;
  }

  v45 = sub_1E3BC0D18(v1);
  v47 = v45 == 0x6D6F74737563 && v46 == 0xE600000000000000;
  if (!v47)
  {
    v48 = sub_1E42079A4();

    if (v48)
    {
      return;
    }

    goto LABEL_3;
  }
}

void sub_1E3BBECB4(uint64_t a1, char a2, char a3)
{
  OUTLINED_FUNCTION_8();
  (*(v6 + 1784))();
  OUTLINED_FUNCTION_13_5();
  if (v13)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v9 = sub_1E3BC0D18(a1);
  v11 = v10;
  v13 = v9 == sub_1E3BC0D18(v8) && v11 == v12;
  if (v13)
  {
  }

  else
  {
    v14 = sub_1E42079A4();

    if ((v14 & 1) == 0)
    {
LABEL_12:
      OUTLINED_FUNCTION_8();
      (*(v18 + 1792))(a1);
      OUTLINED_FUNCTION_36();
      (*(v19 + 1912))(a2 & 1);
      v17 = 1;
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_8();
  v16 = (*(v15 + 1904))();
  if (v16 == 2 || (sub_1E3BC0488(a2 & 1, v16 & 1) & 1) == 0)
  {
    goto LABEL_12;
  }

  v17 = 0;
LABEL_13:
  if (a3 == 2 || (OUTLINED_FUNCTION_8(), v21 = (*(v20 + 1832))(), v21 != 2) && (sub_1E3BC0408(a3 & 1, v21 & 1) & 1) != 0)
  {
    if (!v17)
    {
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8();
    (*(v22 + 1840))(a3 & 1);
  }

  sub_1E3BBE800();

  sub_1E3BBB8A8();
}

uint64_t sub_1E3BBEEFC(char a1)
{
  OUTLINED_FUNCTION_8();
  v3 += 223;
  v4 = *v3;
  result = (*v3)();
  if (a1)
  {
    if (!result)
    {
      OUTLINED_FUNCTION_8();
      (*(v6 + 1808))();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_66_21();

      return v7();
    }

    return result;
  }

  OUTLINED_FUNCTION_13_5();
  if (v14)
  {
LABEL_8:
    v9 = v4();
    OUTLINED_FUNCTION_14_0(v1 + 98, v10);
    *(v1 + 98) = v9;
    OUTLINED_FUNCTION_66_21();
    return v11();
  }

  v12 = sub_1E3BC0D18(v8);
  v14 = v12 == 0x7972616D697270 && v13 == 0xE700000000000000;
  if (!v14)
  {
    v15 = sub_1E42079A4();

    if (v15)
    {
      return result;
    }

    goto LABEL_8;
  }
}

uint64_t sub_1E3BBF0D4(uint64_t a1)
{
  type metadata accessor for ButtonLayout();
  OUTLINED_FUNCTION_54_24();
  swift_allocObject();
  OUTLINED_FUNCTION_66_21();
  return sub_1E3BBD9C4(v1, v2, v3, 0);
}

uint64_t sub_1E3BBF110(uint64_t a1)
{
  type metadata accessor for ButtonLayout();
  OUTLINED_FUNCTION_54_24();
  swift_allocObject();
  OUTLINED_FUNCTION_66_21();
  sub_1E3BBD9C4(v2, v3, v4, 0);
  OUTLINED_FUNCTION_74_14();
  v6 = (v5 + 2096);
  v7 = *(v5 + 2096);
  v7();
  OUTLINED_FUNCTION_2_1();
  v8 = OUTLINED_FUNCTION_51_27();
  v9(v8);

  (v7)(v10);
  OUTLINED_FUNCTION_2_1();
  v11 = OUTLINED_FUNCTION_51_27();
  v12(v11);

  v14 = (v7)(v13);
  sub_1E3E60700();
  OUTLINED_FUNCTION_7_16();
  v15 = *(*v14 + 680);
  v16 = v6;
  v15(v6);

  OUTLINED_FUNCTION_9_2();
  v18 = *(v17 + 312);

  v19 = OUTLINED_FUNCTION_51_27();
  v18(v19);
  OUTLINED_FUNCTION_111();
  v20 = OUTLINED_FUNCTION_51_27();
  v21(v20);
  __asm { FMOV            V0.2D, #14.0 }

  v31[0] = _Q0;
  v31[1] = _Q0;
  v32 = 0;
  (*(*v1 + 560))(v31);
  v27 = *sub_1E3E604E4();
  v28 = *(*v1 + 752);
  v29 = v27;
  v28(v27);

  return v1;
}

uint64_t sub_1E3BBF394(uint64_t a1)
{
  type metadata accessor for ButtonLayout();
  OUTLINED_FUNCTION_54_24();
  swift_allocObject();
  OUTLINED_FUNCTION_66_21();
  sub_1E3BBD9C4(v2, v3, v4, 0);
  OUTLINED_FUNCTION_74_14();
  (*(v5 + 1888))(0);
  v79[0] = xmmword_1E4296CA0;
  v79[1] = xmmword_1E4296CA0;
  v80 = 0;
  OUTLINED_FUNCTION_111();
  v7 = *(v6 + 184);

  v7(v79);
  OUTLINED_FUNCTION_9_2();
  v9 = *(v8 + 2048);
  v9();
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1696))(14);

  (v9)(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 1792))(7);

  (v9)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1984))(1);

  (v9)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 1720))(7);

  v18 = (v9)(v17);
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  OUTLINED_FUNCTION_11_12();
  sub_1E4206F24();
  OUTLINED_FUNCTION_13();
  (*(v19 + 680))();

  (v9)(v20);
  OUTLINED_FUNCTION_2_1();
  v21 = OUTLINED_FUNCTION_15_8();
  v22(v21);

  (v9)(v23);
  OUTLINED_FUNCTION_2_1();
  v24 = OUTLINED_FUNCTION_15_8();
  v25(v24);

  (v9)(v26);
  OUTLINED_FUNCTION_2_1();
  v27 = OUTLINED_FUNCTION_15_8();
  v28(v27);

  v30 = (v9)(v29);
  sub_1E3E60364();
  OUTLINED_FUNCTION_7_16();
  v31 = (*v30 + 920);
  v32 = *v31;
  v33 = v18;
  v32(v18);

  v35 = (v9)(v34);
  v36 = sub_1E3E60700();
  OUTLINED_FUNCTION_81_12();
  v37 = *(*v35 + 680);
  v38 = v31;
  v37(v31);

  (v9)(v39);
  v77[0] = sub_1E3952C64();
  v77[1] = v40;
  v77[2] = v41;
  v77[3] = v42;
  v78 = 0;
  OUTLINED_FUNCTION_8();
  (*(v43 + 160))(v77);

  OUTLINED_FUNCTION_9_2();
  v44 = OUTLINED_FUNCTION_52_27();
  v45(v44);
  OUTLINED_FUNCTION_9_2();
  v47 = *(v46 + 2096);
  v47();
  OUTLINED_FUNCTION_2_1();
  v48 = OUTLINED_FUNCTION_51_27();
  v49(v48);

  (v47)(v50);
  OUTLINED_FUNCTION_2_1();
  v51 = OUTLINED_FUNCTION_51_27();
  v52(v51);

  __asm { FMOV            V0.2D, #14.0 }

  v75[0] = _Q0;
  v75[1] = _Q0;
  v76 = 0;
  v58 = (*(*v1 + 560))(v75);
  (v47)(v58);
  OUTLINED_FUNCTION_15_11();
  v59 = *v36;
  v61 = *(*v60 + 680);
  v62 = v59;
  v61(v59);

  (v47)(v63);
  v73[0] = sub_1E3952C64();
  v73[1] = v64;
  v73[2] = v65;
  v73[3] = v66;
  v74 = 0;
  OUTLINED_FUNCTION_8();
  (*(v67 + 160))(v73);

  OUTLINED_FUNCTION_9_2();
  (*(v68 + 256))(0x4060400000000000, 0);
  v69 = *sub_1E3E604E4();
  v70 = *(*v1 + 752);
  v71 = v69;
  v70(v69);

  return v1;
}

uint64_t sub_1E3BBFAF0(uint64_t a1)
{
  type metadata accessor for ButtonLayout();
  OUTLINED_FUNCTION_54_24();
  v1 = swift_allocObject();
  sub_1E3BBB754();
  OUTLINED_FUNCTION_2_1();
  v3 = *(v2 + 256);

  v3(0x7FF0000000000000, 0);

  return v1;
}

uint64_t sub_1E3BBFB74(uint64_t a1)
{
  type metadata accessor for ButtonLayout();
  OUTLINED_FUNCTION_54_24();
  swift_allocObject();
  OUTLINED_FUNCTION_66_21();
  sub_1E3BBD9C4(v2, v3, v4, 0);
  OUTLINED_FUNCTION_74_14();
  v6 = (*(v5 + 2096))();
  v8[0] = 0;
  v8[1] = 0;
  v9 = xmmword_1E42C0790;
  v10 = 0;
  (*(*v6 + 160))(v8);

  return v1;
}

uint64_t sub_1E3BBFC3C(char a1)
{
  type metadata accessor for MediaShowcasingMetadataLayout();
  v2 = sub_1E3CCEAA8(7);
  v3 = v2[26];
  OUTLINED_FUNCTION_9_2();
  v5 = *(v4 + 2096);

  v7 = v5(v6);
  v8 = *v2;
  if (a1)
  {
    v9 = (*(v8 + 2016))();
  }

  else
  {
    v9 = (*(v8 + 2040))();
  }

  (*(*v7 + 1952))(v9);

  if (a1)
  {
    OUTLINED_FUNCTION_111();
    (*(v10 + 2048))();
    *v78 = sub_1E3952C40();
    *&v78[8] = v11;
    *&v78[16] = v12;
    *&v78[24] = v13;
    v78[32] = 0;
    type metadata accessor for UIEdgeInsets();
    v15 = v14;
    sub_1E3C2FC98();
    v105 = v108;
    v106 = v109;
    v107 = v110;
    sub_1E3C3DE00();
    v99 = v102;
    v100 = v103;
    v101 = v104;
    v16 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_17_39(v16, v17, v18, v19, v20, v21, v22, v23, *v78, *&v78[8], *&v78[16], *&v78[24], *&v78[32], *&v78[40], *&v78[48], *&v78[56], *&v78[64], *&v78[72], *&v78[80], *&v78[88], *&v78[96], *&v78[104], *&v78[112], *&v78[120], *&v78[128], *&v78[136], *&v78[144], *&v78[152], *&v78[160], *&v78[168], *&v78[176], *&v78[184], *&v78[192], *&v78[200], *&v78[208], *&v78[216], *&v78[224], *&v78[232], v79, v80, v81, v82, v83, v84, v85, *(&v85 + 1), v86, v87, v88, v89, v90, *(&v90 + 1), v91, *(&v91 + 1), v92, v93, v94, *(&v94 + 1), v95, *(&v95 + 1), v96, v97, v98[0]);
    sub_1E3C3DE00();
    v90 = v94;
    v91 = v95;
    LOBYTE(v92) = v96;
    v24 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_107(v24, v25, v26, v27, v28, v29, v30, v31, *v78, *&v78[8], *&v78[16], *&v78[24], *&v78[32], *&v78[40], *&v78[48], *&v78[56], *&v78[64], *&v78[72], *&v78[80], *&v78[88], *&v78[96], *&v78[104], *&v78[112], *&v78[120], *&v78[128], *&v78[136], *&v78[144], *&v78[152], *&v78[160], *&v78[168], *&v78[176], *&v78[184], *&v78[192], *&v78[200], *&v78[208], *&v78[216], *&v78[224], *&v78[232], v79, v80, v81, v82, v83, v84, v85);
    sub_1E3C2FCB8(v78, &v105, &v99, v98, &v90, &v79, v15, __src);
    memcpy(v78, __src, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v40 = OUTLINED_FUNCTION_30_3(v32, v33, v34, v35, v36, v37, v38, v39, *v78);
    v41(v40, 0);

    v5(v42);
    v43.n128_f64[0] = OUTLINED_FUNCTION_45_24();
    *v78 = v43;
    *&v78[16] = v43;
    v78[32] = 1;
    v43.n128_u64[0] = 14.0;
    *&v108 = j__OUTLINED_FUNCTION_7_78(v43);
    *(&v108 + 1) = v44;
    *&v109 = v45;
    *(&v109 + 1) = v46;
    v110 = 0;
    v47.n128_u64[0] = 14.0;
    *&v105 = j__OUTLINED_FUNCTION_7_78(v47);
    *(&v105 + 1) = v48;
    *&v106 = v49;
    *(&v106 + 1) = v50;
    v107 = 0;
    v51.n128_u64[0] = 22.0;
    *&v102 = j__OUTLINED_FUNCTION_7_78(v51);
    *(&v102 + 1) = v52;
    *&v103 = v53;
    *(&v103 + 1) = v54;
    v104 = 0;
    v55.n128_u64[0] = 12.0;
    *&v99 = j__OUTLINED_FUNCTION_7_78(v55);
    *(&v99 + 1) = v56;
    *&v100 = v57;
    *(&v100 + 1) = v58;
    v101 = 0;
    v59 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_17_39(v59, v60, v61, v62, v63, v64, v65, v66, *v78, *&v78[8], *&v78[16], *&v78[24], *&v78[32], *&v78[40], *&v78[48], *&v78[56], *&v78[64], *&v78[72], *&v78[80], *&v78[88], *&v78[96], *&v78[104], *&v78[112], *&v78[120], *&v78[128], *&v78[136], *&v78[144], *&v78[152], *&v78[160], *&v78[168], *&v78[176], *&v78[184], *&v78[192], *&v78[200], *&v78[208], *&v78[216], *&v78[224], *&v78[232], v79, v80, v81, v82, v83, v84, v85, *(&v85 + 1), v86, v87, v88, v89, v90, *(&v90 + 1), v91, *(&v91 + 1), v92, v93, v94, *(&v94 + 1), v95, *(&v95 + 1), v96, v97, v98[0]);
    sub_1E3C2FCB8(v78, &v108, &v105, &v102, &v99, v98, v15, __src);
    memcpy(v78, __src, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v75 = OUTLINED_FUNCTION_30_3(v67, v68, v69, v70, v71, v72, v73, v74, *v78);
    v76(v75, 1);
  }

  return v3;
}

uint64_t sub_1E3BC0008()
{
  sub_1E3B20FDC();
  OUTLINED_FUNCTION_54_24();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3BC0034(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x1EEDDA268]();
  }

  if (a1 == 1)
  {
    return MEMORY[0x1EEDDA250]();
  }

  return MEMORY[0x1EEDDA248](a1);
}

unint64_t sub_1E3BC005C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3BC009C(char a1)
{
  if (!a1)
  {
    return 0x656C7573706163;
  }

  if (a1 == 1)
  {
    return 0x656C63726963;
  }

  return 0x526465646E756F72;
}

uint64_t sub_1E3BC0110(unsigned __int8 a1, char a2)
{
  v2 = 0x656C7573706163;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x656C63726963;
    }

    else
    {
      v4 = 0x526465646E756F72;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEB00000000746365;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x656C7573706163;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x656C63726963;
    }

    else
    {
      v2 = 0x526465646E756F72;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEB00000000746365;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BC0214(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_1E3BC0D18(a1);
  v5 = v4;
  if (v3 == sub_1E3BC0D18(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BC0298(unsigned __int8 a1, char a2)
{
  v2 = 1768843629;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1768843629;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x6C6C616D73;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x72616C75676572;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x656772616CLL;
      break;
    case 4:
      v5 = 0x72614C6172747865;
      v3 = 0xEA00000000006567;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x6C6C616D73;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x72616C75676572;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x656772616CLL;
      break;
    case 4:
      v2 = 0x72614C6172747865;
      v6 = 0xEA00000000006567;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BC0408(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x746E6172626976;
  }

  else
  {
    v2 = 0x72616C75676572;
  }

  if (a2)
  {
    v3 = 0x746E6172626976;
  }

  else
  {
    v3 = 0x72616C75676572;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1E3BC0488(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x656E694C6F7774;
  }

  else
  {
    v2 = 0x656E694C656E6FLL;
  }

  if (a2)
  {
    v3 = 0x656E694C6F7774;
  }

  else
  {
    v3 = 0x656E694C656E6FLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1E3BC051C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1E4207B44();
  v4 = a2(a1);
  OUTLINED_FUNCTION_18_0(v4, v5, v6);

  return sub_1E4207BA4();
}

uint64_t sub_1E3BC0594(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3BC05EC(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3BC067C(uint64_t a1, uint64_t a2)
{
  sub_1E3BC0D18(a2);
  sub_1E4206014();
}

uint64_t sub_1E3BC06D0(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3BC0794(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3BC07F4(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3BC0868(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1E4207B44();
  v5 = a3(a2);
  OUTLINED_FUNCTION_18_0(v5, v6, v7);

  return sub_1E4207BA4();
}

uint64_t sub_1E3BC08BC(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3BC0960(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3BC09D4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3BC005C();
  *v1 = result;
  return result;
}

uint64_t sub_1E3BC09FC()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3BC009C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3BC0A2C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4200B64();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_1E8737FD0 + a1);

  return v5(a2, v6, v4);
}

unint64_t sub_1E3BC0AA8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3BC0AE8(char a1)
{
  result = 1768843629;
  switch(a1)
  {
    case 1:
      result = 0x6C6C616D73;
      break;
    case 2:
      result = 0x72616C75676572;
      break;
    case 3:
      result = 0x656772616CLL;
      break;
    case 4:
      result = 0x72614C6172747865;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E3BC0BEC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3BC0AA8();
  *v1 = result;
  return result;
}

uint64_t sub_1E3BC0C14()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3BC0AE8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3BC0C44(char a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = 3;
      break;
    case 2:
      if (TVAppFeature.isEnabled.getter(10, a2, a3))
      {
        result = 1;
      }

      else
      {
        result = sub_1E39DFFC8() & 1;
      }

      break;
    case 3:
    case 5:
      result = 2;
      break;
    case 6:
      result = 5;
      break;
    case 7:
      result = 6;
      break;
    case 8:
      result = 7;
      break;
    case 9:
      result = 8;
      break;
    case 10:
      result = 9;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E3BC0CD8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3BC0D18(char a1)
{
  result = 0x7972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x577972616D697270;
      break;
    case 2:
      result = 0x7261646E6F636573;
      break;
    case 3:
      result = 0x6C617574786574;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6C6C41656573;
      break;
    case 6:
      result = 0x6567616D69;
      break;
    case 7:
      result = 0x646E756F72;
      break;
    case 8:
      result = 0x6F74747542726162;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E3BC0ECC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3BC0CD8();
  *v1 = result;
  return result;
}

unint64_t sub_1E3BC0EF4()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3BC0D18(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3BC0F24(char a1)
{
  if (a1)
  {
    return 0x746E6172626976;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_1E3BC0F78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3856C34();
  *a1 = result;
  return result;
}

uint64_t sub_1E3BC0FB0()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3BC0F24(v1);
  *v0 = result;
  v0[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_1E3BC0FFC(char a1)
{
  if (a1)
  {
    return 0x656E694C6F7774;
  }

  else
  {
    return 0x656E694C656E6FLL;
  }
}

uint64_t sub_1E3BC1074@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3856C34();
  *a1 = result;
  return result;
}

uint64_t sub_1E3BC10AC()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3BC0FFC(v1);
  *v0 = result;
  v0[1] = 0xE700000000000000;
  return result;
}

void sub_1E3BC10F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(10, a2, a3) & 1) != 0 || (sub_1E39DFFC8())
  {
    BYTE8(v1094) = 1;
    OUTLINED_FUNCTION_49_29(0x4048000000000000uLL);
    *&v1108 = 0x4050800000000000;
    BYTE8(v1108) = 0;
    *&v1105 = 0x4042000000000000;
    BYTE8(v1105) = 0;
    v1103 = 0x404A000000000000;
    v1104 = 0;
    v3 = MEMORY[0x1E69E7DE0];
    v12 = OUTLINED_FUNCTION_1_165(v4, v5, v6, v7, v8, v9, v10, v11, v649, v692, v736, v780, v824, v867, v911, v953, v997, v1038, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, 0);
    sub_1E3C2FCB8(v12, v13, v14, v15, &v1105, &v1103, v3, v16);
    v25 = OUTLINED_FUNCTION_37_40(v17, v18, v19, v20, v21, v22, v23, v24, v650, v693, v737, v781, v825, v868, v912, v954, v998, v1039, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    memcpy(v25, v26, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_9_2();
    v28 = *(v27 + 1600);
    v37 = OUTLINED_FUNCTION_28_1(v29, v30, v31, v32, v33, v34, v35, v36, v651, v694, v738, v782, v826, v869, v913, v955, v999, v1040, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    v28(v37, 6);
    sub_1E3BC31C0(&v1112);
    OUTLINED_FUNCTION_18();
    v38 = OUTLINED_FUNCTION_72_18();
    v28(v38, 3);
    sub_1E3BC33E4(&v1112);
    OUTLINED_FUNCTION_18();
    v39 = OUTLINED_FUNCTION_72_18();
    v28(v39, 4);
    OUTLINED_FUNCTION_9_2();
    v41 = (*(v40 + 1888))(0);
    v41.n128_u64[0] = 10.0;
    v42.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v41);
    OUTLINED_FUNCTION_115_4(v42);
    OUTLINED_FUNCTION_7_26();
    v43.n128_u64[0] = 6.0;
    v44 = j__OUTLINED_FUNCTION_7_78(v43);
    OUTLINED_FUNCTION_4_139(v44, v45, v46, v47);
    v48.n128_u64[0] = 11.0;
    v49 = j__OUTLINED_FUNCTION_7_78(v48);
    OUTLINED_FUNCTION_12_10(v49, v50, v51, v52);
    type metadata accessor for UIEdgeInsets();
    v54 = v53;
    sub_1E3C2FC98();
    v55 = OUTLINED_FUNCTION_33_13();
    v1097 = v1100;
    v1098 = v1101;
    v1099 = v1102;
    v63 = OUTLINED_FUNCTION_7_132(v55, v56, v57, v58, v59, v60, v61, v62, v652, v695, v739, v783, v827, v870, v914, v956, v1000, v1041, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    sub_1E3C2FCB8(v63, v64, v65, v66, v67, v68, v54, v69);
    v78 = OUTLINED_FUNCTION_37_40(v70, v71, v72, v73, v74, v75, v76, v77, v653, v696, v740, v784, v828, v871, v915, v957, v1001, v1042, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    memcpy(v78, v79, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_9_2();
    v81 = *(v80 + 1600);
    v90 = OUTLINED_FUNCTION_28_1(v82, v83, v84, v85, v86, v87, v88, v89, v654, v697, v741, v785, v829, v872, v916, v958, v1002, v1043, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    (v81)(v90, 17);
    *(&v1094 + 1) = 0x4038000000000000;
    v1095 = xmmword_1E42C0780;
    LOBYTE(v1096) = 0;
    sub_1E3952C64();
    OUTLINED_FUNCTION_7_26();
    v91 = sub_1E3952C64();
    OUTLINED_FUNCTION_4_139(v91, v92, v93, v94);
    v95 = sub_1E3952C64();
    OUTLINED_FUNCTION_12_10(v95, v96, v97, v98);
    sub_1E3C2FC98();
    v99 = OUTLINED_FUNCTION_33_13();
    v1097 = v1100;
    v1098 = v1101;
    v1099 = v1102;
    v107 = OUTLINED_FUNCTION_7_132(v99, v100, v101, v102, v103, v104, v105, v106, v655, v698, v742, v786, v830, v873, v917, v959, v1003, v1044, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, 0);
    sub_1E3C2FCB8(v107, v108, v109, v110, v111, v112, v54, v113);
    v122 = OUTLINED_FUNCTION_37_40(v114, v115, v116, v117, v118, v119, v120, v121, v656, v699, v743, v787, v831, v874, v918, v960, v1004, v1045, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    memcpy(v122, v123, 0xE9uLL);
    v124 = OUTLINED_FUNCTION_18();
    v132 = OUTLINED_FUNCTION_9_8(v124, v125, v126, v127, v128, v129, v130, v131, v657, v700, v744, v788, v832, v875, v919, v961, v1005, v1046, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    (v81)(v132, 1);
    sub_1E3BC46A0(&v1094);
    v1111[0] = *(&v1096 + 1);
    *&v1108 = v1096;
    *&v1105 = *(&v1095 + 1);
    v1103 = v1095;
    *&v1100 = *(&v1094 + 1);
    *&v1097 = v1094;
    v1112 = v1094;
    v1113 = v1095;
    v1114 = v1096;
    sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
    OUTLINED_FUNCTION_18();
    v133 = OUTLINED_FUNCTION_72_18();
    (v81)(v133, 24);
    OUTLINED_FUNCTION_60_19(&v1097);
    OUTLINED_FUNCTION_60_19(&v1100);
    OUTLINED_FUNCTION_60_19(&v1103);
    OUTLINED_FUNCTION_60_19(&v1105);
    OUTLINED_FUNCTION_60_19(&v1108);
    OUTLINED_FUNCTION_60_19(v1111);
    sub_1E3BC4560();
    v1088 = v1114;
    v1087 = v1113;
    v1086 = v1112;
    v1082 = v1112;
    v1083 = v1113;
    v1084 = v1114;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_108_6();
    v81();
    OUTLINED_FUNCTION_60_19(&v1086);
    OUTLINED_FUNCTION_60_19(&v1086 + 8);
    OUTLINED_FUNCTION_60_19(&v1087);
    OUTLINED_FUNCTION_60_19(&v1087 + 8);
    OUTLINED_FUNCTION_60_19(&v1088);
    OUTLINED_FUNCTION_60_19(&v1088 + 8);
    OUTLINED_FUNCTION_9_2();
    (*(v134 + 1912))(1);
    OUTLINED_FUNCTION_9_2();
    v136 = (*(v135 + 1904))();
    sub_1E3BC2954(v136, v137, v138);
    sub_1E3BC3548();
    OUTLINED_FUNCTION_9_2();
    (*(v139 + 2048))();
    sub_1E3BC37A8();

    sub_1E3BC3D48();
  }

  else
  {
    BYTE8(v1094) = 1;
    OUTLINED_FUNCTION_49_29(0x4046000000000000uLL);
    *&v1108 = 0x4050800000000000;
    BYTE8(v1108) = 0;
    *&v1105 = 0x4048000000000000;
    BYTE8(v1105) = 0;
    v1103 = 0;
    v1104 = 1;
    v140 = MEMORY[0x1E69E7DE0];
    v149 = OUTLINED_FUNCTION_1_165(v141, v142, v143, v144, v145, v146, v147, v148, v649, v692, v736, v780, v824, v867, v911, v953, v997, v1038, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, 0);
    sub_1E3C2FCB8(v149, v150, v151, v152, &v1105, &v1103, v140, v153);
    v162 = OUTLINED_FUNCTION_37_40(v154, v155, v156, v157, v158, v159, v160, v161, v658, v701, v745, v789, v833, v876, v920, v962, v1006, v1047, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    memcpy(v162, v163, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_9_2();
    v165 = *(v164 + 1600);
    v174 = OUTLINED_FUNCTION_28_1(v166, v167, v168, v169, v170, v171, v172, v173, v659, v702, v746, v790, v834, v877, v921, v963, v1007, v1048, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    v165(v174, 7);
    v175 = OUTLINED_FUNCTION_39_34();
    v183 = OUTLINED_FUNCTION_2_133(v175, v176, v177, v178, v179, v180, v181, v182, v660, v703, v747, v791, v835, v878, v922, v964, v1008, v1049, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    OUTLINED_FUNCTION_113_6(v183, v184, v185, v186);
    v195 = OUTLINED_FUNCTION_37_40(v187, v188, v189, v190, v191, v192, v193, v194, v661, v704, v748, v792, v836, v879, v923, v965, v1009, v1050, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    memcpy(v195, v196, 0x59uLL);
    v197 = OUTLINED_FUNCTION_18();
    v205 = OUTLINED_FUNCTION_9_8(v197, v198, v199, v200, v201, v202, v203, v204, v662, v705, v749, v793, v837, v880, v924, v966, v1010, v1051, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    v165(v205, 8);
    v206 = OUTLINED_FUNCTION_39_34();
    *&v1100 = v1103;
    BYTE8(v1100) = v1104;
    v214 = OUTLINED_FUNCTION_2_133(v206, v207, v208, v209, v210, v211, v212, v213, v663, v706, v750, v794, v838, v881, v925, v967, v1011, v1052, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    OUTLINED_FUNCTION_113_6(v214, v215, v216, v217);
    v226 = OUTLINED_FUNCTION_37_40(v218, v219, v220, v221, v222, v223, v224, v225, v664, v707, v751, v795, v839, v882, v926, v968, v1012, v1053, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    memcpy(v226, v227, 0x59uLL);
    v228 = OUTLINED_FUNCTION_18();
    v236 = OUTLINED_FUNCTION_9_8(v228, v229, v230, v231, v232, v233, v234, v235, v665, v708, v752, v796, v840, v883, v927, v969, v1013, v1054, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    v165(v236, 6);
    BYTE8(v1094) = 1;
    OUTLINED_FUNCTION_49_29(0x4070900000000000uLL);
    *&v1108 = 0;
    BYTE8(v1108) = 1;
    sub_1E3C3DE00();
    v1103 = v1105;
    v1104 = BYTE8(v1105);
    v237 = sub_1E3C3DE00();
    *&v1097 = v1100;
    BYTE8(v1097) = BYTE8(v1100);
    v245 = OUTLINED_FUNCTION_2_133(v237, v238, v239, v240, v241, v242, v243, v244, v666, v709, v753, v797, v841, v884, v928, v970, v1014, v1055, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, 0);
    sub_1E3C2FCB8(v245, v246, v247, &v1103, &v1097, &v1108, v140, v248);
    v257 = OUTLINED_FUNCTION_37_40(v249, v250, v251, v252, v253, v254, v255, v256, v667, v710, v754, v798, v842, v885, v929, v971, v1015, v1056, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    memcpy(v257, v258, 0x59uLL);
    v259 = OUTLINED_FUNCTION_18();
    v267 = OUTLINED_FUNCTION_9_8(v259, v260, v261, v262, v263, v264, v265, v266, v668, v711, v755, v799, v843, v886, v930, v972, v1016, v1057, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    v165(v267, 2);
    if (TVAppFeature.isEnabled.getter(20, v268, v269))
    {
      OUTLINED_FUNCTION_111();
      v270 = (*(v271 + 1888))(0);
    }

    v270.n128_u64[0] = 10.0;
    v272.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v270);
    OUTLINED_FUNCTION_115_4(v272);
    OUTLINED_FUNCTION_7_26();
    v273.n128_u64[0] = 6.0;
    v274 = j__OUTLINED_FUNCTION_7_78(v273);
    OUTLINED_FUNCTION_4_139(v274, v275, v276, v277);
    v278.n128_u64[0] = 11.0;
    v279 = j__OUTLINED_FUNCTION_7_78(v278);
    OUTLINED_FUNCTION_12_10(v279, v280, v281, v282);
    type metadata accessor for UIEdgeInsets();
    v284 = v283;
    sub_1E3C2FC98();
    v285 = OUTLINED_FUNCTION_33_13();
    v1097 = v1100;
    v1098 = v1101;
    v1099 = v1102;
    v293 = OUTLINED_FUNCTION_7_132(v285, v286, v287, v288, v289, v290, v291, v292, v669, v712, v756, v800, v844, v887, v931, v973, v1017, v1058, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    sub_1E3C2FCB8(v293, v294, v295, v296, v297, v298, v284, v299);
    v308 = OUTLINED_FUNCTION_37_40(v300, v301, v302, v303, v304, v305, v306, v307, v670, v713, v757, v801, v845, v888, v932, v974, v1018, v1059, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    memcpy(v308, v309, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_9_2();
    v311 = v310 + 1600;
    v312 = *(v310 + 1600);
    v321 = OUTLINED_FUNCTION_28_1(v313, v314, v315, v316, v317, v318, v319, v320, v671, v714, v758, v802, v846, v889, v933, v975, v1019, v1060, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    v312(v321, 17);
    *(&v1094 + 1) = 0x4030000000000000;
    v1095 = xmmword_1E42C07A0;
    LOBYTE(v1096) = 0;
    sub_1E3952C64();
    OUTLINED_FUNCTION_7_26();
    v322 = sub_1E3952C64();
    OUTLINED_FUNCTION_4_139(v322, v323, v324, v325);
    sub_1E3C2FC98();
    v1105 = v1108;
    v1106 = v1109;
    v1107 = v1110;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_43_39();
    v326 = sub_1E3C3DE00();
    LOBYTE(v1092) = v1099;
    v334 = OUTLINED_FUNCTION_83_8(v326, v327, v328, v329, v330, v331, v332, v333, v672, v715, v759, v803, v847, v890, v284, v976, v311, v1061, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, v1097, *(&v1097 + 1), v1098, *(&v1098 + 1), v1092, v1093, 0);
    sub_1E3C2FCB8(v334, v335, v336, v337, &v1088 + 8, v1111, v284, v338);
    v347 = OUTLINED_FUNCTION_37_40(v339, v340, v341, v342, v343, v344, v345, v346, v673, v716, v760, v804, v848, v891, v934, v977, v1020, v1062, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    memcpy(v347, v348, 0xE9uLL);
    v349 = OUTLINED_FUNCTION_18();
    v357 = OUTLINED_FUNCTION_9_8(v349, v350, v351, v352, v353, v354, v355, v356, v674, v717, v761, v805, v849, v892, v935, v978, v1021, v1063, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    v358 = v312;
    v1064 = v312;
    v312(v357, 1);
    v979 = sub_1E3E60700();
    *&v1094 = *v979;
    v359 = v1094;
    v360 = objc_opt_self();
    v361 = v359;
    *&v1082 = [v360 clearColor];
    v362 = OUTLINED_FUNCTION_94_10(v1082, &qword_1EE23AE20);
    sub_1E3C2FC98();
    *&v1108 = v1111[0];
    OUTLINED_FUNCTION_105_8();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_25_63();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_98_8();
    sub_1E3C3DE00();
    *&v1088 = *(&v1088 + 1);
    sub_1E3C2FCB8(&v1094, &v1108, &v1103, &v1082, &v1097, &v1088, v362, &v1112);
    v363 = v1112;
    v364 = v1113;
    v365 = v1114;
    v1094 = v1112;
    v1095 = v1113;
    v1096 = v1114;
    v366 = OUTLINED_FUNCTION_18();
    v374 = OUTLINED_FUNCTION_9_8(v366, v367, v368, v369, v370, v371, v372, v373, v675, v718, v762, v806, v850, v893, v936, v979, v1022, v1064, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    v358(v374, 21);

    *&v1094 = *sub_1E3E604E4();
    v375 = v1094;
    OUTLINED_FUNCTION_71_5();
    v376 = sub_1E4206F24();
    OUTLINED_FUNCTION_71_5();
    v377 = sub_1E4206F24();
    v378 = sub_1E3E5F2F8(v376, v377);

    *&v1082 = v378;
    v1111[0] = *v980;
    v379 = v1111[0];
    *&v1108 = *sub_1E3E6069C();
    v380 = v1108;
    OUTLINED_FUNCTION_105_8();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_25_63();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_98_8();
    v389 = OUTLINED_FUNCTION_7_132(v381, v382, v383, v384, v385, v386, v387, v388, v676, v719, v763, v807, v851, v894, v937, v980, v1023, v1065, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    sub_1E3C2FCB8(v389, v390, v391, v392, v393, v394, v362, v395);
    v396 = OUTLINED_FUNCTION_50_29();
    v404 = OUTLINED_FUNCTION_9_8(v396, v397, v398, v399, v400, v401, v402, v403, v677, v720, v764, v808, v852, v895, v938, v981, v1024, v1066, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    v1067(v404, 24);

    *&v1094 = *sub_1E3E60480();
    v405 = v1094;
    *&v1082 = *sub_1E3E5FA50();
    v406 = v1082;
    v1111[0] = *sub_1E3E608EC();
    v407 = v1111[0];
    sub_1E3C2FC98();
    *&v1105 = v1108;
    sub_1E3C3DE00();
    *&v1100 = v1103;
    v408 = sub_1E3C3DE00();
    v416 = OUTLINED_FUNCTION_83_8(v408, v409, v410, v411, v412, v413, v414, v415, v678, v721, v765, v809, v853, v896, v939, v982, v1025, v1067, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, v1097, v1089, v1090, v1091, v1092, v1093, v1094);
    sub_1E3C2FCB8(v416, v417, v418, v419, v1111, &v1088 + 8, v362, v420);
    v421 = OUTLINED_FUNCTION_50_29();
    OUTLINED_FUNCTION_9_8(v421, v422, v423, v424, v425, v426, v427, v428, v679, v722, v766, v810, v854, v897, v940, v983, v1026, v1068, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    OUTLINED_FUNCTION_108_6();
    v1069();

    OUTLINED_FUNCTION_9_2();
    v430 = v429 + 2096;
    v431 = *(v429 + 2096);
    v431();
    v432 = v430;
    OUTLINED_FUNCTION_2_1();
    v433 = OUTLINED_FUNCTION_52_27();
    v434(v433);

    v436 = v431;
    v1070 = v431;
    (v431)(v435);
    OUTLINED_FUNCTION_2_1();
    v437 = OUTLINED_FUNCTION_52_27();
    v438(v437);

    v898 = sub_1E3E60700();
    v439 = *v898;
    v436();
    *&v1094 = 0;
    *&v1082 = v439;
    v1111[0] = v439;
    v984 = v439;
    OUTLINED_FUNCTION_11_12();
    v440 = sub_1E4206F24();
    OUTLINED_FUNCTION_11_12();
    v441 = sub_1E4206F24();
    v442 = sub_1E3E5F2F8(v440, v441);

    *&v1108 = v442;
    OUTLINED_FUNCTION_105_8();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_25_63();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_98_8();
    v451 = OUTLINED_FUNCTION_1_165(v443, v444, v445, v446, v447, v448, v449, v450, v680, v723, v767, v811, v855, v898, v941, v984, v432, v1070, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    sub_1E3C2FCB8(v451, v452, v453, v454, &v1103, &v1097, v362, v455);
    v456 = v1112;
    v457 = v1113;
    v458 = v1114;
    v1094 = v1112;
    v1095 = v1113;
    v1096 = v1114;
    v459 = OUTLINED_FUNCTION_18();
    v467 = OUTLINED_FUNCTION_28_1(v459, v460, v461, v462, v463, v464, v465, v466, v681, v724, v768, v812, v856, v899, v942, v985, v1027, v1071, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    v468(v467, 21);

    v1072();
    *&v1094 = 0;
    *&v1082 = 0;
    v1111[0] = 0;
    OUTLINED_FUNCTION_71_5();
    *&v1108 = sub_1E4206F24();
    OUTLINED_FUNCTION_105_8();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_25_63();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_98_8();
    v477 = OUTLINED_FUNCTION_1_165(v469, v470, v471, v472, v473, v474, v475, v476, v682, v725, v769, v813, v857, v900, v943, v986, v1028, v1072, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    sub_1E3C2FCB8(v477, v478, v479, v480, &v1103, &v1097, v362, v481);
    v482 = v1112;
    v483 = v1113;
    v484 = v1114;
    v1094 = v1112;
    v1095 = v1113;
    v1096 = v1114;
    v485 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_28_1(v485, v486, v487, v488, v489, v490, v491, v492, v683, v726, v770, v814, v858, v901, v944, v987, v1029, v1073, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    OUTLINED_FUNCTION_108_6();
    v493();

    v1074();
    *&v494 = OUTLINED_FUNCTION_45_24();
    v1094 = v494;
    v1095 = v494;
    LOBYTE(v1096) = 1;
    sub_1E3952C64();
    OUTLINED_FUNCTION_7_26();
    v495 = sub_1E3952C64();
    OUTLINED_FUNCTION_4_139(v495, v496, v497, v498);
    v499 = sub_1E3952C64();
    OUTLINED_FUNCTION_12_10(v499, v500, v501, v502);
    v1105 = 0u;
    v1106 = 0u;
    v1107 = 1;
    v503 = v945;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_43_39();
    v512 = OUTLINED_FUNCTION_1_165(v504, v505, v506, v507, v508, v509, v510, v511, v684, v727, v771, v815, v859, v902, v945, v988, v1030, v1074, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    sub_1E3C2FCB8(v512, v513, v514, v515, &v1105, &v1100, v503, v516);
    v525 = OUTLINED_FUNCTION_37_40(v517, v518, v519, v520, v521, v522, v523, v524, v685, v728, v772, v816, v860, v903, v946, v989, v1031, v1075, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    memcpy(v525, v526, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v535 = OUTLINED_FUNCTION_28_1(v527, v528, v529, v530, v531, v532, v533, v534, v686, v729, v773, v817, v861, v904, v947, v990, v1032, v1076, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    v536(v535, 0);

    OUTLINED_FUNCTION_9_2();
    (*(v537 + 1912))(1);
    OUTLINED_FUNCTION_9_2();
    v539 = (*(v538 + 1904))();
    sub_1E3BC2954(v539, v540, v541);
    OUTLINED_FUNCTION_9_2();
    v543 = v542 + 2048;
    v544 = *(v542 + 2048);
    v544();
    OUTLINED_FUNCTION_2_1();
    (*(v545 + 1696))(10);

    (v544)(v546);
    OUTLINED_FUNCTION_2_1();
    (*(v547 + 1792))(10);

    (v544)(v548);
    OUTLINED_FUNCTION_15_11();
    v549 = *v905;
    v551 = *(*v550 + 680);
    v552 = *v905;
    v551(v549);

    (v544)(v553);
    OUTLINED_FUNCTION_2_1();
    (*(v554 + 2128))(0x3FE4CCCCCCCCCCCDLL, 0);

    (v544)(v555);
    *&v556 = OUTLINED_FUNCTION_45_24();
    v1094 = v556;
    v1095 = v556;
    LOBYTE(v1096) = 1;
    sub_1E3952C64();
    OUTLINED_FUNCTION_7_26();
    v557 = sub_1E3952C64();
    OUTLINED_FUNCTION_4_139(v557, v558, v559, v560);
    v1108 = 0u;
    v1109 = 0u;
    v1110 = 1;
    v1105 = 0u;
    v1106 = 0u;
    v1107 = 1;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_43_39();
    v569 = OUTLINED_FUNCTION_1_165(v561, v562, v563, v564, v565, v566, v567, v568, v687, v730, v774, v818, v862, v905, v948, v991, v1033, v1077, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    sub_1E3C2FCB8(v569, v570, v571, v572, &v1105, &v1100, v503, v573);
    v582 = OUTLINED_FUNCTION_37_40(v574, v575, v576, v577, v578, v579, v580, v581, v688, v731, v775, v819, v863, v906, v949, v992, v1034, v1078, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    memcpy(v582, v583, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v592 = OUTLINED_FUNCTION_28_1(v584, v585, v586, v587, v588, v589, v590, v591, v689, v732, v776, v820, v864, v907, v950, v993, v1035, v1079, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    v593(v592, 0);

    v594 = *MEMORY[0x1E69DDCF8];
    v595 = objc_opt_self();
    v596 = [v595 configurationWithTextStyle_];
    v908 = v544;
    v951 = v543;
    v544();
    OUTLINED_FUNCTION_2_1();
    v598 = (*(v597 + 2408))();

    v599 = [objc_opt_self() vui:v598 fontFromTextLayout:?];
    if (v599)
    {
      v600 = v599;
      [v599 pointSize];
      v601 = [v595 configurationWithPointSize:7 weight:?];
    }

    else
    {
      v601 = [v595 configurationWithTextStyle_];
    }

    v821 = v601;
    v602 = [v595 configurationWithPointSize:7 weight:31.0];
    v603 = v1080;
    v1080();
    *&v1094 = v596;
    *&v1082 = 0;
    v1111[0] = 0;
    *&v1108 = v602;
    *&v1105 = v821;
    v604 = sub_1E3280A90(0, &qword_1EE23AFA8, 0x1E69DCAD8);
    v777 = v596;
    v733 = v602;
    v605 = sub_1E3C3DE00();
    *&v1100 = v1103;
    v613 = OUTLINED_FUNCTION_1_165(v605, v606, v607, v608, v609, v610, v611, v612, v690, v733, v777, v821, v598, v908, v951, v994, v1036, v1080, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    sub_1E3C2FCB8(v613, v614, v615, v616, &v1105, &v1100, v604, v617);
    v618 = v1112;
    v619 = v1113;
    v620 = v1114;
    v1094 = v1112;
    v1095 = v1113;
    v1096 = v1114;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v629 = OUTLINED_FUNCTION_28_1(v621, v622, v623, v624, v625, v626, v627, v628, v691, v734, v778, v822, v865, v909, v952, v995, v1037, v1081, v1082, *(&v1082 + 1), v1083, *(&v1083 + 1), v1084, *(&v1084 + 1), v1085, v1086, *(&v1086 + 1), v1087, *(&v1087 + 1), v1088, *(&v1088 + 1), v1089, v1090, v1091, v1092, v1093, v1094);
    v630(v629, 88);

    v631 = v603();
    v910();
    OUTLINED_FUNCTION_2_1();
    v633 = (*(v632 + 1688))();

    (*(*v631 + 2072))(v633);

    v635 = (v603)(v634);
    v910();
    OUTLINED_FUNCTION_2_1();
    v637 = (*(v636 + 1784))();

    (*(*v635 + 2168))(v637);

    v639 = (v603)(v638);
    v640 = sub_1E3E60824();
    v641 = *v640;
    v642 = *(*v639 + 872);
    v643 = *v640;
    v642(v641);

    (v910)(v644);
    OUTLINED_FUNCTION_15_11();
    v645 = *v640;
    v647 = *(*v646 + 872);
    v648 = *v640;
    v647(v645);
  }
}

double sub_1E3BC2748()
{
  OUTLINED_FUNCTION_8();
  v1 += 256;
  v2 = *v1;
  v3 = (*v1)();
  sub_1E3E60700();
  OUTLINED_FUNCTION_7_16();
  v4 = *(*v3 + 680);
  v5 = v0;
  v4(v0);

  v7 = (v2)(v6);
  sub_1E3E608EC();
  OUTLINED_FUNCTION_7_16();
  v8 = *(*v7 + 872);
  v9 = v0;
  v8(v0);

  (v2)(v10);
  OUTLINED_FUNCTION_2_1();
  (*(v11 + 1696))(15);

  (v2)(v12);
  OUTLINED_FUNCTION_2_1();
  v13 = OUTLINED_FUNCTION_15_8();
  v14(v13);

  (v2)(v15);
  OUTLINED_FUNCTION_2_1();
  v16 = OUTLINED_FUNCTION_15_8();
  v17(v16);

  return result;
}

double sub_1E3BC2954(char a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(10, a2, a3) & 1) != 0 || (sub_1E39DFFC8())
  {
    OUTLINED_FUNCTION_111();
    v4 += 256;
    v5 = *v4;
    (*v4)();
    OUTLINED_FUNCTION_30();
    (*(v6 + 1696))(15);

    (v5)(v7);
    OUTLINED_FUNCTION_2_1();
    (*(v8 + 1792))(6);

    (v5)(v9);
    OUTLINED_FUNCTION_2_1();
    (*(v10 + 1984))(1);

    (v5)(v11);
    OUTLINED_FUNCTION_2_1();
    (*(v12 + 1720))(10);

    (v5)(v13);
    sub_1E3BC41F0();
    v81 = v72;
    v80 = v71;
    v79 = v70;
    v73 = v70;
    v74 = v71;
    v75 = v72;
    v14 = sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_3_11();
    (*(v15 + 1600))(&v73, 21, v16 & 1, v14);

    OUTLINED_FUNCTION_59_17(&v79);
    OUTLINED_FUNCTION_59_17(&v79 + 8);
    OUTLINED_FUNCTION_59_17(&v80);
    OUTLINED_FUNCTION_59_17(&v80 + 8);
    OUTLINED_FUNCTION_59_17(&v81);
    v17 = OUTLINED_FUNCTION_59_17(&v81 + 8);
    v18 = (v5)(v17);
    sub_1E3BC445C(v18);
    v78 = v75;
    v77 = v74;
    v76 = v73;
    v69 = v73;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v27 = OUTLINED_FUNCTION_30_3(v19, v20, v21, v22, v23, v24, v25, v26, v69);
    v28(v27, 29);

    OUTLINED_FUNCTION_59_17(&v76);
    OUTLINED_FUNCTION_59_17(&v76 + 8);
    OUTLINED_FUNCTION_59_17(&v77);
    OUTLINED_FUNCTION_59_17(&v77 + 8);
    OUTLINED_FUNCTION_59_17(&v78);
    v29 = OUTLINED_FUNCTION_59_17(&v78 + 8);
    if (a1 != 2)
    {
      if (a1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_10_91();
        v29 = OUTLINED_FUNCTION_84_11();
      }
    }

    (v5)(v29);
    OUTLINED_FUNCTION_30();
    v40 = OUTLINED_FUNCTION_36_2();
    v41(v40);

    (v5)(v42);
    OUTLINED_FUNCTION_2_1();
    v43 = OUTLINED_FUNCTION_36_2();
    v44(v43);

    (v5)(v45);
    OUTLINED_FUNCTION_2_1();
    v46 = OUTLINED_FUNCTION_36_2();
    v47(v46);

    v49 = (v5)(v48);
    v50 = *sub_1E3E60364();
    v51 = *(*v49 + 920);
    v52 = v50;
    v51(v50);
  }

  else
  {
    OUTLINED_FUNCTION_111();
    v30 += 256;
    v31 = *v30;
    (*v30)();
    OUTLINED_FUNCTION_30();
    (*(v32 + 1696))(15);

    (v31)(v33);
    OUTLINED_FUNCTION_2_1();
    (*(v34 + 1792))(7);

    (v31)(v35);
    OUTLINED_FUNCTION_2_1();
    (*(v36 + 1984))(1);

    (v31)(v37);
    OUTLINED_FUNCTION_2_1();
    (*(v38 + 1720))(7);

    if (a1 != 2)
    {
      if (a1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_10_91();
        v39 = OUTLINED_FUNCTION_84_11();
      }
    }

    (v31)(v39);
    sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
    OUTLINED_FUNCTION_11_12();
    sub_1E4206F24();
    OUTLINED_FUNCTION_3_11();
    (*(v54 + 680))();

    (v31)(v55);
    OUTLINED_FUNCTION_2_1();
    v56 = OUTLINED_FUNCTION_36_2();
    v57(v56);

    (v31)(v58);
    OUTLINED_FUNCTION_2_1();
    v59 = OUTLINED_FUNCTION_36_2();
    v60(v59);

    (v31)(v61);
    OUTLINED_FUNCTION_2_1();
    v62 = OUTLINED_FUNCTION_36_2();
    v63(v62);

    v65 = (v31)(v64);
    v66 = *sub_1E3E60364();
    v67 = *(*v65 + 920);
    v68 = v66;
    v67(v66);
  }

  return result;
}

void *sub_1E3BC31C0@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 1784))();
  OUTLINED_FUNCTION_38_15();
  if (v4)
  {
    v30 = 0;
    v31 = 1;
    v11 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_23_55();
    sub_1E3C3DE00();
    v22 = v24;
    v23 = v25;
    sub_1E3C3DE00();
    v18 = v20;
    v19 = v21;
    OUTLINED_FUNCTION_100_4();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_64_17();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_26_59();
    v6 = &v26;
    v7 = &v22;
    v8 = &v18;
    v9 = &v15;
    v10 = &v13;
LABEL_6:
    v5 = v11;
    goto LABEL_7;
  }

  if (v3 != 1)
  {
    v30 = 0;
    v31 = 1;
    v28 = 0x4059000000000000;
    v29 = 0;
    v11 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    v24 = v26;
    v25 = v27;
    sub_1E3C3DE00();
    v20 = v22;
    v21 = v23;
    sub_1E3C3DE00();
    v16 = v18;
    v17 = v19;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_101_6();
    v6 = &v24;
    v7 = &v20;
    v8 = &v28;
    v9 = &v16;
    v10 = &v14;
    goto LABEL_6;
  }

  v30 = 0;
  v31 = 1;
  v28 = 0x4064000000000000;
  v29 = 0;
  v26 = 0x4064000000000000;
  v27 = 0;
  v24 = 0x406B800000000000;
  v25 = 0;
  v22 = 0x4060400000000000;
  v23 = 0;
  v20 = 0x4066800000000000;
  v21 = 0;
  v5 = MEMORY[0x1E69E7DE0];
  v6 = &v28;
  v7 = &v26;
  v8 = &v24;
  v9 = &v22;
  v10 = &v20;
LABEL_7:
  sub_1E3C2FCB8(&v30, v6, v7, v8, v9, v10, v5, __src);
  return memcpy(a1, __src, 0x59uLL);
}

void *sub_1E3BC33E4@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  if (((*(v2 + 1784))() - 1) > 1u)
  {
    v22 = 0x4070900000000000;
    v23 = 0;
    v20 = 0x4070900000000000;
    v21 = 0;
    v18 = 0x408E000000000000;
    v19 = 0;
    v16 = 0x406E000000000000;
    v17 = 0;
    v14 = 0x4076800000000000;
    v15 = 0;
    v3 = MEMORY[0x1E69E7DE0];
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_101_6();
    v4 = &v12;
    v5 = &v22;
    v6 = &v20;
    v7 = &v18;
    v8 = &v16;
    v9 = &v14;
  }

  else
  {
    v22 = 0x4070900000000000;
    v23 = 0;
    v20 = 0x4078600000000000;
    v21 = 0;
    v18 = 0x406E000000000000;
    v19 = 0;
    v16 = 0x4076800000000000;
    v17 = 0;
    v3 = MEMORY[0x1E69E7DE0];
    OUTLINED_FUNCTION_100_4();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_64_17();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_26_59();
    v4 = &v22;
    v5 = &v13;
    v6 = &v11;
    v7 = &v20;
    v8 = &v18;
    v9 = &v16;
  }

  sub_1E3C2FCB8(v4, v5, v6, v7, v8, v9, v3, __src);
  return memcpy(a1, __src, 0x59uLL);
}

double sub_1E3BC3548()
{
  OUTLINED_FUNCTION_8();
  v0 += 256;
  v1 = *v0;
  (*v0)();
  v95 = 0.65;
  LOBYTE(v96) = 0;
  v90 = 0.65;
  LOBYTE(v91) = 0;
  v85 = 0.65;
  LOBYTE(v86) = 0;
  v2 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  *&v79 = v80;
  BYTE8(v79) = v81;
  v3 = sub_1E3C3DE00();
  v101 = v73;
  v102 = v74;
  v11 = OUTLINED_FUNCTION_106_11(v3, v4, v5, v6, v7, v8, v9, v10, 0);
  sub_1E3C2FCB8(v11, v12, v13, &v79, &v101, &v85, v2, v14);
  memcpy(v72, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v23 = OUTLINED_FUNCTION_30_3(v15, v16, v17, v18, v19, v20, v21, v22, *v72);
  v24(v23, 65);

  (v1)(v25);
  *&v26 = OUTLINED_FUNCTION_45_24();
  *v72 = v26;
  *&v72[16] = v26;
  v72[32] = 1;
  v95 = sub_1E3952C64();
  v96 = v27;
  v97 = v28;
  v98 = v29;
  v99 = 0;
  v90 = sub_1E3952C64();
  v91 = v30;
  v92 = v31;
  v93 = v32;
  v94 = 0;
  v85 = sub_1E3952C64();
  v86 = v33;
  v87 = v34;
  v88 = v35;
  v89 = 0;
  v80 = sub_1E3952C64();
  v81 = v36;
  v82 = v37;
  v83 = v38;
  v84 = 0;
  type metadata accessor for UIEdgeInsets();
  v40 = v39;
  v41 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_107(v41, v42, v43, v44, v45, v46, v47, v48, *v72, *&v72[8], *&v72[16], *&v72[24], *&v72[32], *&v72[40], *&v72[48], *&v72[56], *&v72[64], *&v72[72], *&v72[80], *&v72[88], *&v72[96], *&v72[104], *&v72[112], *&v72[120], *&v72[128], *&v72[136], *&v72[144], *&v72[152], *&v72[160], *&v72[168], *&v72[176], *&v72[184], *&v72[192], *&v72[200], *&v72[208], *&v72[216], *&v72[224], *&v72[232], v73, v74, v75, v76, v77, v78, v79);
  v57 = OUTLINED_FUNCTION_106_11(v49, v50, v51, v52, v53, v54, v55, v56, *v72);
  sub_1E3C2FCB8(v57, v58, v59, &v85, &v80, &v73, v40, v60);
  memcpy(v72, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v69 = OUTLINED_FUNCTION_30_3(v61, v62, v63, v64, v65, v66, v67, v68, *v72);
  v70(v69, 0);

  return result;
}

double sub_1E3BC37A8()
{
  v1 = *(*v0 + 2096);
  v1();
  OUTLINED_FUNCTION_2_1();
  v2 = OUTLINED_FUNCTION_52_27();
  v3(v2);

  (v1)(v4);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_52_27();
  v6(v5);

  (v1)(v7);
  sub_1E3BC41F0();
  v79 = v70;
  v78 = v69;
  v77 = v68;
  __src[0] = v68;
  __src[1] = v69;
  __src[2] = v70;
  v8 = sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13();
  (*(v9 + 1600))(__src, 21, v10 & 1, v8);

  OUTLINED_FUNCTION_60_19(&v77);
  OUTLINED_FUNCTION_60_19(&v77 + 8);
  OUTLINED_FUNCTION_60_19(&v78);
  OUTLINED_FUNCTION_60_19(&v78 + 8);
  OUTLINED_FUNCTION_60_19(&v79);
  v11 = OUTLINED_FUNCTION_60_19(&v79 + 8);
  v12 = (v1)(v11);
  sub_1E3BC445C(v12);
  v76 = v73;
  v75 = v72;
  v74 = v71;
  __src[0] = v71;
  __src[1] = v72;
  __src[2] = v73;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_108_6();
  v13();

  OUTLINED_FUNCTION_60_19(&v74);
  OUTLINED_FUNCTION_60_19(&v74 + 8);
  OUTLINED_FUNCTION_60_19(&v75);
  OUTLINED_FUNCTION_60_19(&v75 + 8);
  OUTLINED_FUNCTION_60_19(&v76);
  v14 = OUTLINED_FUNCTION_60_19(&v76 + 8);
  (v1)(v14);
  *&v15 = OUTLINED_FUNCTION_45_24();
  __dst[0] = v15;
  __dst[1] = v15;
  LOBYTE(__dst[2]) = 1;
  v65[0] = sub_1E3952C64();
  v65[1] = v16;
  v65[2] = v17;
  v65[3] = v18;
  v66 = 0;
  v63[0] = sub_1E3952C64();
  v63[1] = v19;
  v63[2] = v20;
  v63[3] = v21;
  v64 = 0;
  v61[0] = sub_1E3952C64();
  v61[1] = v22;
  v61[2] = v23;
  v61[3] = v24;
  v62 = 0;
  v59[0] = sub_1E3952C64();
  v59[1] = v25;
  v59[2] = v26;
  v59[3] = v27;
  v60 = 0;
  type metadata accessor for UIEdgeInsets();
  v29 = v28;
  sub_1E3C3DE00();
  v54[0] = v56;
  v54[1] = v57;
  v55 = v58;
  sub_1E3C2FCB8(__dst, v65, v63, v61, v59, v54, v29, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v30 + 1600))(__dst, 0, v31 & 1, v29);

  (v1)(v32);
  LOBYTE(__dst[0]) = 7;
  LOBYTE(v65[0]) = 15;
  LOBYTE(v63[0]) = 3;
  LOBYTE(v61[0]) = 27;
  sub_1E3C2FC98();
  LOBYTE(v56) = v59[0];
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_44_37();
  sub_1E3C2FCB8(v33, v34, v35, v36, v37, v38, &qword_1F5D549D8, v39);
  OUTLINED_FUNCTION_99_8();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v40 + 1600))(__dst, 96, v41 & 1, &qword_1F5D549D8);

  (v1)(v42);
  LOBYTE(__dst[0]) = 10;
  LOBYTE(v65[0]) = 7;
  LOBYTE(v63[0]) = 10;
  LOBYTE(v61[0]) = 11;
  sub_1E3C2FC98();
  LOBYTE(v56) = v59[0];
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_44_37();
  sub_1E3C2FCB8(v43, v44, v45, v46, v47, v48, &qword_1F5D54AF8, v49);
  OUTLINED_FUNCTION_99_8();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v50 + 1600))(__dst, 97, v51 & 1, &qword_1F5D54AF8);

  return result;
}

double sub_1E3BC3D48()
{
  OUTLINED_FUNCTION_8();
  v0 += 268;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 1800))(10, 0);

  (v1)(v3);
  sub_1E3BC41F0();
  v120 = v117;
  v119 = v116;
  v118 = v115;
  *__src = v115;
  v113 = v116;
  v114 = v117;
  v5 = OUTLINED_FUNCTION_95_9(v4, &qword_1EE23AE20);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_11();
  (*(v6 + 1600))(__src, 21, v7 & 1, v5);

  OUTLINED_FUNCTION_87_7(&v118);
  OUTLINED_FUNCTION_87_7(&v118 + 8);
  OUTLINED_FUNCTION_87_7(&v119);
  OUTLINED_FUNCTION_87_7(&v119 + 8);
  OUTLINED_FUNCTION_87_7(&v120);
  v8 = OUTLINED_FUNCTION_87_7(&v120 + 8);
  v9 = (v1)(v8);
  v10 = *(MEMORY[0x1E69DDCE0] + 16);
  v121[0] = *MEMORY[0x1E69DDCE0];
  v121[1] = v10;
  v122 = 0;
  (*(*v9 + 184))(v121);

  (v1)(v11);
  *__dst = 0x4014000000000000;
  LOBYTE(v87) = 0;
  v110 = 0x4020000000000000;
  LOBYTE(v111) = 0;
  v108 = 0x4020000000000000;
  LOBYTE(v109) = 0;
  v106 = 0x4020000000000000;
  LOBYTE(v107) = 0;
  v12 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_20_65();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_23_55();
  sub_1E3C2FCB8(__dst, &v110, &v108, &v106, &v102, &v98, v12, __src);
  OUTLINED_FUNCTION_85_10(v13, v14, v15, v16, v17, v18, v19, v20, v66, v71, v76, v81, *__dst, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v21 + 1600))(__dst, 6, v22 & 1, v12);

  (v1)(v23);
  *__dst = 0x4049000000000000;
  LOBYTE(v87) = 0;
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_75_12();
  OUTLINED_FUNCTION_20_65();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_23_55();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_26_59();
  OUTLINED_FUNCTION_61_16(v24, v25, v26, v27, v28, v29, v30, v31, v67, v72, v77, v82, *__dst, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
  OUTLINED_FUNCTION_85_10(v32, v33, v34, v35, v36, v37, v38, v39, v68, v73, v78, v83, *__dst, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v40 + 1600))(__dst, 2, v41 & 1, v12);

  (v1)(v42);
  *__dst = 0x4051800000000000;
  LOBYTE(v87) = 0;
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_75_12();
  OUTLINED_FUNCTION_20_65();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_23_55();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_26_59();
  OUTLINED_FUNCTION_61_16(v43, v44, v45, v46, v47, v48, v49, v50, v69, v74, v79, v84, *__dst, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
  OUTLINED_FUNCTION_85_10(v51, v52, v53, v54, v55, v56, v57, v58, v70, v75, v80, v85, *__dst, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v59 + 1600))(__dst, 4, v60 & 1, v12);

  (v1)(v61);
  v62 = [OUTLINED_FUNCTION_93_7() blackColor];
  v63 = [v62 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_36();
  (*(v64 + 752))(v63);

  return result;
}

double sub_1E3BC41F0()
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 1784))();
  OUTLINED_FUNCTION_38_15();
  if (v5)
  {
    v46 = 0;
    v10 = objc_opt_self();
    v45 = [v10 whiteColor];
    v44 = [v10 whiteColor];
    v43 = [v10 whiteColor];
    v42 = [v10 whiteColor];
    v11 = sub_1E3E5FD88();
    v41 = *v11;
    v0 = OUTLINED_FUNCTION_94_10(v11, &qword_1EE23AE20);
    v12 = v41;
    v13 = &v47;
    v14 = &v46;
    v15 = &v45;
    v16 = &v44;
    v17 = &v43;
    v18 = &v42;
    v19 = &v41;
  }

  else
  {
    if (v4 == 1)
    {
      OUTLINED_FUNCTION_95_9(v3, &qword_1EE23AE20);
      v6 = OUTLINED_FUNCTION_93_7();
      v7 = [v6 whiteColor];
      v8 = OUTLINED_FUNCTION_86_1([v6 blackColor]);

      v46 = v8;
    }

    else
    {
      v20 = sub_1E3E60700();
      v46 = *v20;
      OUTLINED_FUNCTION_95_9(v20, &qword_1EE23AE20);
      v6 = OUTLINED_FUNCTION_93_7();
      v21 = v46;
    }

    v9 = [v6 blackColor];
    v22 = OUTLINED_FUNCTION_90_10([v6 whiteColor]);

    v45 = v22;
    v44 = *sub_1E3E5FD88();
    v23 = v44;
    OUTLINED_FUNCTION_100_4();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_62_18();
    OUTLINED_FUNCTION_47_36();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_16_86();
    v18 = v40;
    v19 = &v44;
  }

  sub_1E3C2FCB8(v14, v15, v16, v17, v18, v19, v0, v13);
  *&result = OUTLINED_FUNCTION_40_43(v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v39, v40[0], v40[1], v40[2], v41, v42, v43, v44, v45, v46, v35, v36, v37).n128_u64[0];
  return result;
}

double sub_1E3BC445C(uint64_t a1)
{
  v28 = 0;
  OUTLINED_FUNCTION_95_9(a1, &qword_1EE23AE20);
  v2 = OUTLINED_FUNCTION_93_7();
  v3 = [v2 whiteColor];
  v4 = OUTLINED_FUNCTION_90_10([v2 blackColor]);

  v27 = v4;
  sub_1E3C2FC98();
  v25 = v26;
  sub_1E3C3DE00();
  v23 = v24;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_114_5();
  v20 = v21;
  sub_1E3C2FCB8(&v28, &v25, &v23, &v27, v22, &v20, v1, v29);
  *&result = OUTLINED_FUNCTION_40_43(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22[0], v22[1], v23, v24, v25, v26, v27, v28, v16, v17, v18).n128_u64[0];
  return result;
}

double sub_1E3BC4560()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1784))();
  OUTLINED_FUNCTION_38_15();
  if (v1)
  {
    v33 = *sub_1E3E5FA50();
    v2 = objc_opt_self();
    v3 = v33;
    v31 = 0;
    v32 = [v2 whiteColor];
    v5 = OUTLINED_FUNCTION_94_10(v32, &qword_1EE23AE20);
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_62_18();
    OUTLINED_FUNCTION_47_36();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_16_86();
    v12 = v30;
    v13 = &v31;
  }

  else
  {
    v33 = *sub_1E3E60480();
    v4 = v33;
    v31 = *sub_1E3E5FA50();
    v32 = v31;
    v5 = sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
    v6 = v31;
    OUTLINED_FUNCTION_100_4();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_62_18();
    OUTLINED_FUNCTION_47_36();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_16_86();
    v12 = &v31;
    v13 = v30;
  }

  sub_1E3C2FCB8(v7, v8, v9, v10, v12, v13, v5, v11);
  *&result = OUTLINED_FUNCTION_40_43(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v31, v32, v33, v25, v26, v27).n128_u64[0];
  return result;
}

double sub_1E3BC46A0@<D0>(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  (*(v4 + 1784))();
  OUTLINED_FUNCTION_38_15();
  if (v7)
  {
    v32 = objc_opt_self();
    v33 = [v32 whiteColor];
    v34 = [v33 colorWithAlphaComponent_];

    v71 = v34;
    v35 = [v32 whiteColor];
    v36 = [v35 colorWithAlphaComponent_];

    v37 = [v32 blackColor];
    v38 = [v37 colorWithAlphaComponent_];

    v1 = OUTLINED_FUNCTION_94_10(v39, &qword_1EE23AE20);
    sub_1E3C3DE00();
    v40 = OUTLINED_FUNCTION_114_5();
    v25 = OUTLINED_FUNCTION_29_53(v40, v41, v42, v43, v44, v45, v46, v47, v66, v66, v67, v68, v38, v36, v71, 0);
    v30 = &v67;
    v31 = &v65;
  }

  else if (v6 == 1)
  {
    OUTLINED_FUNCTION_95_9(v5, &qword_1EE23AE20);
    v8 = OUTLINED_FUNCTION_93_7();
    v9 = [v8 blackColor];
    v10 = OUTLINED_FUNCTION_86_1([v8 whiteColor]);

    v71 = v10;
    v11 = [v8 blackColor];
    v12 = OUTLINED_FUNCTION_86_1([v8 whiteColor]);

    v13 = [v8 blackColor];
    v14 = [v13 colorWithAlphaComponent_];

    v69 = v14;
    v15 = [v8 blackColor];
    v16 = OUTLINED_FUNCTION_90_10([v8 whiteColor]);

    v17 = sub_1E3C3DE00();
    v25 = OUTLINED_FUNCTION_29_53(v17, v18, v19, v20, v21, v22, v23, v24, v65, v67, v67, v16, v69, v12, v71, 0);
    v30 = &v68;
    v31 = &v66;
  }

  else
  {
    v72 = 0;
    v70 = *sub_1E3E604E4();
    v71 = v70;
    v48 = objc_opt_self();
    v49 = v70;
    v50 = [v48 blackColor];
    v51 = [v50 colorWithAlphaComponent_];

    v69 = v51;
    v68 = [v48 tertiarySystemFillColor];
    v52 = sub_1E3E6069C();
    v53 = *v52;
    v1 = OUTLINED_FUNCTION_94_10(v52, &qword_1EE23AE20);
    v54 = v53;
    v25 = OUTLINED_FUNCTION_29_53(v54, v55, v56, v57, v58, v59, v60, v61, v65, v66, v53, v68, v51, v70, v70, 0);
    v30 = &v68;
    v31 = &v67;
  }

  sub_1E3C2FCB8(v25, v26, v27, v28, v30, v31, v1, v29);
  result = *&v73;
  v63 = v74;
  v64 = v75;
  *a1 = v73;
  a1[1] = v63;
  a1[2] = v64;
  return result;
}

uint64_t sub_1E3BC4A34()
{
  sub_1E39DFFC8();
  OUTLINED_FUNCTION_8();
  v1 = (v0 + 360);
  if (v2)
  {
    (*v1)(0x4042000000000000, 0);
    OUTLINED_FUNCTION_36();
    (*(v3 + 256))(0x4042000000000000, 0);
    _s8VideosUI26VUIBarButtonItemConfigObjCC021symbolConfigureForBardE0So26UIImageSymbolConfigurationCyFZ_0();
    OUTLINED_FUNCTION_36();
    (*(v4 + 1952))();
    OUTLINED_FUNCTION_36();
    (*(v5 + 512))(1);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_51_27();
    v7(v6);
    OUTLINED_FUNCTION_36();
    v8 = OUTLINED_FUNCTION_51_27();
    v9(v8);
    v10 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:16.0];
    OUTLINED_FUNCTION_36();
    (*(v11 + 1952))();
  }

  v12 = *sub_1E3E60700();
  OUTLINED_FUNCTION_8();
  v14 = *(v13 + 680);
  v15 = v12;
  return v14(v12);
}

id _s8VideosUI26VUIBarButtonItemConfigObjCC021symbolConfigureForBardE0So26UIImageSymbolConfigurationCyFZ_0()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E383BCC0();
  (*(*v0 + 1696))(15);
  OUTLINED_FUNCTION_9_2();
  (*(v1 + 1792))(10);
  v2 = objc_opt_self();
  OUTLINED_FUNCTION_9_2();
  v4 = (*(v3 + 2408))();
  v5 = [v2 vui:v4 fontFromTextLayout:?];

  v6 = v5;
  if (!v5)
  {
    sub_1E3280A90(0, &qword_1ECF29388, 0x1E69DB878);
    v6 = sub_1E4206E74();
  }

  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 configurationWithFont:v6 scale:3];

  return v9;
}

id VUIBarButtonItemConfigObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUIBarButtonItemConfigObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUIBarButtonItemConfigObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3BC4EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF346A8;
  if (!qword_1ECF346A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF346A8);
  }

  return result;
}

unint64_t sub_1E3BC4F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF346B0;
  if (!qword_1ECF346B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF346B0);
  }

  return result;
}

unint64_t sub_1E3BC4F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF346B8;
  if (!qword_1ECF346B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF346B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ButtonLayout.ButtonShape(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ButtonLayout.ButtonSize(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ButtonLayout.ButtonType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 10);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s8VideosUI12ButtonLayoutC14UberButtonTypeOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3BC537C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1E6910F30](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1E3BC53D4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1E6910F40](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

float sub_1E3BC5454@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1E3BC5460(uint64_t a1)
{
  sub_1E3BC5568(&qword_1ECF346D8, &unk_1E42C0D40);
  sub_1E3BC5568(&qword_1ECF346E0, &unk_1E42C0CE0);
  return sub_1E4207764();
}

uint64_t sub_1E3BC5568(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_62_18()
{

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_84_11()
{
}

uint64_t OUTLINED_FUNCTION_91_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);

  return sub_1E328438C(va1, va);
}

uint64_t OUTLINED_FUNCTION_94_10(uint64_t a1, unint64_t *a2)
{

  return sub_1E3280A90(0, a2, v2);
}

uint64_t OUTLINED_FUNCTION_95_9(uint64_t a1, unint64_t *a2)
{

  return sub_1E3280A90(0, a2, v2);
}

void OUTLINED_FUNCTION_110_7()
{

  sub_1E3C2CA00();
}

uint64_t OUTLINED_FUNCTION_111_4()
{

  return sub_1E3C2FC98();
}

id OUTLINED_FUNCTION_112_7(void *a1)
{

  return sub_1E3E5F2F8(v1, a1);
}

double OUTLINED_FUNCTION_113_6@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  sub_1E3C2FCB8(a1, a2, a3, &STACK[0x200], &STACK[0x290], &STACK[0x260], v4, a4);
  return result;
}

uint64_t OUTLINED_FUNCTION_114_5()
{

  return sub_1E3C3DE00();
}

double OUTLINED_FUNCTION_117_6()
{

  return result;
}

double OUTLINED_FUNCTION_119_5()
{

  return result;
}

double OUTLINED_FUNCTION_120_5()
{

  return result;
}

double OUTLINED_FUNCTION_121_6()
{

  return result;
}

double OUTLINED_FUNCTION_122_5()
{

  return result;
}

id sub_1E3BC58B4(uint64_t *a1, uint64_t *a2, unint64_t *a3, void *a4)
{
  v5 = *a1;
  v6 = *&v4[*a1];
  if (v6)
  {
    v7 = *&v4[*a1];
  }

  else
  {
    v8 = v4;
    v9 = *a2;
    sub_1E3280A90(0, a3, a4);
    v16[3] = _s14GestureManagerCMa(0);
    v16[0] = v8;
    v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v11 = v8;
    v12 = sub_1E3BC708C(v16, v9);
    [v12 setDelegate_];
    v13 = *&v8[v5];
    *&v8[v5] = v12;
    v7 = v12;

    v6 = 0;
  }

  v14 = v6;
  return v7;
}

id sub_1E3BC5998(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = sub_1E3BC59F8(*a2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1E3BC59F8(uint64_t a1)
{
  sub_1E3280A90(0, &qword_1ECF34778, 0x1E69DCD28);
  v6[3] = _s14GestureManagerCMa(0);
  v6[0] = v1;
  objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = v1;
  v4 = sub_1E3BC708C(v6, a1);
  [v4 setDelegate_];
  return v4;
}

void sub_1E3BC5ADC(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void sub_1E3BC5B9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a5;
  v60 = a4;
  v58 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34708, &qword_1E42C0DF0);
  OUTLINED_FUNCTION_0_10();
  v65 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v64 = v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34710, &qword_1E42C0DF8);
  OUTLINED_FUNCTION_0_10();
  v66 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v61 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34700, &qword_1E42A6EF8);
  OUTLINED_FUNCTION_0_10();
  v62 = v15;
  v63 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v59 = v17;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34718, &qword_1E42C0E00);
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34720, &qword_1E42C0E08);
  OUTLINED_FUNCTION_0_10();
  v56 = v24;
  v57 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v53 = v26;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C558, &unk_1E42C0DE0);
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v52 - v30;
  *&v5[OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager____lazy_storage___activityTapGesture] = 0;
  *&v5[OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager____lazy_storage___detailsPanGesture] = 0;
  *&v5[OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager____lazy_storage___playerPinchGesture] = 0;
  *&v5[OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager____lazy_storage___panGesture] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_pinchPlayerViewController] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v32 = &v5[OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_startInactivityTimer];
  *v32 = a2;
  *(v32 + 1) = a3;
  v33 = a3;
  v34 = &v5[OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_cancelInactivityTimer];
  v35 = v69;
  *v34 = v60;
  v34[1] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34728, &qword_1E42C0E10);
  v36 = *MEMORY[0x1E69E8650];
  v37 = v55;
  (*(v19 + 104))(v22, v36, v55);
  v60 = v33;

  v38 = v53;
  sub_1E4206484();
  (*(v19 + 8))(v22, v37);
  (*(v28 + 32))(&v5[OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_swipeUpdates], v31, v54);
  (*(v56 + 32))(&v5[OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_swipeContinuation], v38, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34730, &qword_1E42C0E18);
  v40 = v64;
  v39 = v65;
  v41 = v67;
  (*(v65 + 104))(v64, v36, v67);
  v42 = v59;
  v43 = v61;
  sub_1E4206484();
  (*(v39 + 8))(v40, v41);
  (*(v62 + 32))(&v5[OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_pinchUpdates], v42, v63);
  (*(v66 + 32))(&v5[OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_pinchContinuation], v43, v68);
  v44 = _s14GestureManagerCMa(0);
  v70.receiver = v5;
  v70.super_class = v44;
  v45 = objc_msgSendSuper2(&v70, sel_init);
  v46 = v58;
  v47 = [v46 view];
  if (v47)
  {
    v48 = v47;
    v49 = sub_1E3BC5858();
    [v48 addGestureRecognizer_];

    v50 = [v46 view];
    if (v50)
    {
      v51 = sub_1E3BC587C();
      [v50 addGestureRecognizer_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t _s14GestureManagerCMa(uint64_t a1)
{
  result = qword_1EE296300;
  if (!qword_1EE296300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3BC61EC(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1E3BC5984();
    [v2 addGestureRecognizer_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3BC6264(char a1)
{
  v2 = sub_1E3BC5890();
  [v2 setEnabled_];
}

void sub_1E3BC62B8(char a1)
{
  v2 = sub_1E3BC587C();
  [v2 setEnabled_];
}

void sub_1E3BC630C(void *a1)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E3BC5890();
    [v4 addGestureRecognizer_];

    v7 = *(v1 + OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_pinchPlayerViewController);
    *(v1 + OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_pinchPlayerViewController) = a1;
    v6 = a1;
  }

  else
  {
    __break(1u);
  }
}

id sub_1E3BC63AC()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_pinchPlayerViewController);
  if (!v1)
  {
    return v1;
  }

  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = sub_1E3BC5890();
    [v3 removeGestureRecognizer_];

    return v1;
  }

  __break(1u);
  return result;
}

char *sub_1E3BC6430(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34768, qword_1E42C0EB0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  v4 = MEMORY[0x1EEE9AC00](v3);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x118))(v4);
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView;
    [a1 translationInView_];
    [a1 velocityInView_];
    [a1 state];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34720, &qword_1E42C0E08);
    sub_1E4206494();

    v8 = OUTLINED_FUNCTION_13_8();
    return v9(v8);
  }

  return result;
}

void sub_1E3BC6644(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34760, &qword_1E42C0EA8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v4 = *(v1 + OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_pinchPlayerViewController);
  if (v4)
  {
    v5 = v4;
    [a1 scale];
    if ([a1 state] != 4)
    {
      [a1 state];
    }

    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34710, &qword_1E42C0DF8);
    sub_1E4206494();

    v7 = OUTLINED_FUNCTION_13_8();
    v8(v7);
  }
}

uint64_t sub_1E3BC6814(void *a1)
{
  if ([a1 state] - 3 >= 2)
  {
    v2 = &OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_cancelInactivityTimer;
  }

  else
  {
    v2 = &OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_startInactivityTimer;
  }

  return (*(v1 + *v2))();
}

BOOL sub_1E3BC68C4(id a1)
{
  v2 = v1;
  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x118))();
    if (v6)
    {
      v7 = v6;
      v8 = sub_1E3BC5858();

      if (v8 != a1)
      {
        (*(v2 + OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_cancelInactivityTimer))();
        [a1 locationInView_];
        v10 = v9;
        v12 = v11;
        v13 = sub_1E3BC587C();

        if (v13 == a1 && ([*&v7[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView] frame], v19.x = v10, v19.y = v12, CGRectContainsPoint(v20, v19)) && (v14 = objc_msgSend(a1, sel_view)) != 0)
        {
          v15 = v14;
          v16 = [v14 hitTest:0 withEvent:{v10, v12}];

          if (!v16)
          {
            return 1;
          }

          type metadata accessor for MultiPlayerContainerView();
          v17 = swift_dynamicCastClass() == 0;
          v5 = v16;
        }

        else
        {

          v17 = 1;
        }

        goto LABEL_13;
      }

      (*(v2 + OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_startInactivityTimer))();
    }

    v17 = 0;
LABEL_13:

    return v17;
  }

  return 0;
}

BOOL sub_1E3BC6AFC(id a1, void *a2)
{
  v3 = v2;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager_cancelInactivityTimer))(v10);
  v13 = sub_1E3BC5890();

  if (v13 == a1)
  {
    objc_opt_self();
    return swift_dynamicCastObjCClass() == 0;
  }

  v14 = sub_1E3BC587C();

  if (v14 != a1)
  {
    v15 = sub_1E3BC5984();

    return v15 == a1;
  }

  v18 = OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager____lazy_storage___detailsPanGesture;
  v19 = *(v3 + OBJC_IVAR____TtCC8VideosUI25MultiPlayerViewController14GestureManager____lazy_storage___detailsPanGesture);
  v20 = [a2 view];
  [v19 locationInView_];
  v22 = v21;
  v24 = v23;

  v25 = [a2 view];
  if (!v25)
  {
LABEL_16:
    [*(v3 + v18) velocityInView_];
    return fabs(v36) <= fabs(v35);
  }

  v26 = v25;
  type metadata accessor for MultiPlayerView(0);
  v27 = swift_dynamicCastClass();
  if (!v27 || (v28 = v27, objc_opt_self(), !swift_dynamicCastObjCClass()) || ((*((*MEMORY[0x1E69E7D40] & *v28) + 0x3E0))(v22, v24) & 1) == 0)
  {

    goto LABEL_16;
  }

  v29 = sub_1E324FBDC();
  (*(v8 + 16))(v12, v29, v6);
  v30 = sub_1E41FFC94();
  v31 = sub_1E42067E4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1E323F000, v30, v31, "MultiPlayerViewController:: Cancelling details pan gesture due to adjustment grabber", v32, 2u);
    MEMORY[0x1E69143B0](v32, -1, -1);
  }

  v33 = OUTLINED_FUNCTION_13_8();
  v34(v33);
  return 0;
}

id sub_1E3BC6EAC()
{
  v2.receiver = v0;
  v2.super_class = _s14GestureManagerCMa(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3BC708C(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1E4207994();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

void sub_1E3BC71D8(uint64_t a1)
{
  OUTLINED_FUNCTION_3_135(a1, &qword_1ECF34740, &qword_1ECF34728, &qword_1E42C0E10);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_2_134(v1 - 8, &qword_1ECF34748, &qword_1ECF34728, &qword_1E42C0E10);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_3_135(v3 - 8, &qword_1ECF34750, &unk_1ECF34730, &qword_1E42C0E18);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_2_134(v5 - 8, &qword_1ECF34758, &unk_1ECF34730, &qword_1E42C0E18);
        if (v7 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1E3BC7394(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1E3BC73F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI15ViewHostingCell_stackView);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 arrangedSubviews];
  sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E3BC7474()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI15ViewHostingCell_viewModelIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3BC74CC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI15ViewHostingCell_viewModelIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1E3BC752C(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8VideosUI15ViewHostingCell_stackView];
  *&v1[OBJC_IVAR____TtC8VideosUI15ViewHostingCell_stackView] = a1;
  v3 = a1;
  v4 = [v1 vuiContentView];
  [v4 vui:*&v1[OBJC_IVAR____TtC8VideosUI15ViewHostingCell_stackView] addSubview:v2 oldView:?];
}

id (*sub_1E3BC75C0())(uint64_t a1, uint64_t a2)
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI15ViewHostingCell____lazy_storage___hostedViewsActionHandler);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI15ViewHostingCell____lazy_storage___hostedViewsActionHandler);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI15ViewHostingCell____lazy_storage___hostedViewsActionHandler + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8VideosUI15ViewHostingCell____lazy_storage___hostedViewsActionHandler);
  }

  else
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *v1;
    v7 = v1[1];
    v4 = sub_1E3BC8654;
    *v1 = sub_1E3BC8654;
    v1[1] = v5;

    sub_1E34AF594(v6, v7);
  }

  sub_1E34AF604(v2, v3);
  return v4;
}

id sub_1E3BC767C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI15ViewHostingCell_stackView);
  if (v1)
  {
    return [v1 vui_sizeThatFits_];
  }

  result = sub_1E42076B4();
  __break(1u);
  return result;
}

void *sub_1E3BC7768(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1E41FFCB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v7)
  {
    v10 = *(*a1 + 464);
    v84 = v7;
    v11 = v7;
    v12 = v10();
    if (v12 && (*&v90 = v12, v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0), sub_1E3827828(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0), sub_1E38D2480(v13, v94), , (v88 = v94[0]) != 0))
    {
      v15 = *(a1 + 16);
      v14 = *(a1 + 24);
      v16 = &v11[OBJC_IVAR____TtC8VideosUI15ViewHostingCell_viewModelIdentifier];
      swift_beginAccess();
      *v16 = v15;
      *(v16 + 1) = v14;

      v17 = objc_opt_self();
      v18 = v11;
      v19 = [v17 clearColor];
      [v18 setBackgroundColor_];

      v20 = [v17 clearColor];
      [v18 setHighlightedBackgroundColor_];

      v21 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x68);
      v9 = v18;
      a1 = v21();
      v22 = v21();
      v85 = v18;
      if (v22)
      {
        v5 = v22;
        v9 = sub_1E32AE9B0(v22);
        v23 = 0;
        v24 = OBJC_IVAR____TtC8VideosUI15ViewHostingCell_stackView;
        v6 = (v5 & 0xC000000000000001);
        while (1)
        {
          if (v9 == v23)
          {

            goto LABEL_17;
          }

          if (v6)
          {
            v25 = MEMORY[0x1E6911E60](v23, v5);
          }

          else
          {
            if (v23 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_67;
            }

            v25 = *(v5 + 8 * v23 + 32);
          }

          v26 = v25;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          v27 = *&v18[v24];
          if (v27)
          {
            v28 = v27;
            [v28 removeArrangedSubview_];

            v18 = v85;
          }

          v23 = (v23 + 1);
        }

LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

LABEL_17:
      v87 = MEMORY[0x1E69E7CC0];
      v93 = MEMORY[0x1E69E7CC0];
      v5 = v88;
      v30 = sub_1E32AE9B0(v88);
      v31 = 0;
      v86 = v5 & 0xC000000000000001;
      v32 = v5 & 0xFFFFFFFFFFFFFF8;
      while (v30 != v31)
      {
        if (v86)
        {
          v33 = MEMORY[0x1E6911E60](v31, v88);
        }

        else
        {
          if (v31 >= *(v32 + 16))
          {
            goto LABEL_65;
          }

          v33 = *(v88 + 8 * v31 + 32);
        }

        if (__OFADD__(v31, 1))
        {
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (a1)
        {
          v89[1] = a1;
          *&v90 = v31;
          BYTE8(v90) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80, &qword_1E42B7720);
          sub_1E3827828(&qword_1ECF37A20, &unk_1ECF2FC80, &qword_1E42B7720);
          sub_1E38D2054(&v90, v89);
          v6 = v89[0];
        }

        else
        {
          v6 = 0;
        }

        v34 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
        v35 = *a3;
        if (*a3 == 2)
        {
          v92 = 0;
          v90 = 0u;
          v91 = 0u;
        }

        else
        {
          *(&v91 + 1) = &type metadata for CollectionViewCellContext;
          v92 = &off_1F5D621F8;
          v36 = swift_allocObject();
          *&v90 = v36;
          *(v36 + 16) = v35;
          *(v36 + 24) = *(a3 + 1);
          *(v36 + 40) = *(a3 + 3);
          *(v36 + 55) = *(a3 + 39);
        }

        v9 = v34;
        v5 = sub_1E393D9C4(v33, v6, &v90, 0);

        sub_1E373C624(&v90);
        if (v5)
        {
          ObjectType = swift_getObjectType();
          if (dynamic_cast_existential_1_conditional(v5, ObjectType, &protocol descriptor for ViewHostingCellInteractor))
          {
            v83[0] = v38;
            v83[1] = swift_getObjectType();
            v87 = v5;
            v39 = sub_1E3BC75C0();
            (*(v83[0] + 16))(v39);
          }

          else
          {
          }

          v9 = &v93;
          MEMORY[0x1E6910BF0]();
          if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E42062F4();
          }

          sub_1E4206324();
          v87 = v93;
          ++v31;
        }

        else
        {

          ++v31;
        }
      }

      v40 = *&v85[OBJC_IVAR____TtC8VideosUI15ViewHostingCell_stackView];
      if (v40)
      {
        v41 = v87;
        v9 = sub_1E32AE9B0(v87);
        v42 = v41 & 0xC000000000000001;
        v43 = v41 & 0xFFFFFFFFFFFFFF8;
        v5 = v40;
        for (i = 0; v9 != i; i = (i + 1))
        {
          if (v42)
          {
            v45 = MEMORY[0x1E6911E60](i, v87);
          }

          else
          {
            if (i >= *(v43 + 16))
            {
              goto LABEL_69;
            }

            v45 = *(v87 + i + 4);
          }

          v46 = v45;
          if (__OFADD__(i, 1))
          {
            goto LABEL_68;
          }

          [v5 addArrangedSubview_];
        }

        if (a1)
        {
          v9 = sub_1E32AE9B0(a1);
          v47 = 0;
          v48 = a1 & 0xC000000000000001;
          v6 = &selRef_processPendingChanges;
          while (v9 != v47)
          {
            sub_1E34AF4E4(v47, v48 == 0, a1);
            if (v48)
            {
              v49 = MEMORY[0x1E6911E60](v47, a1);
            }

            else
            {
              v49 = *(a1 + 8 * v47 + 32);
            }

            v50 = v49;
            if (__OFADD__(v47, 1))
            {
              goto LABEL_70;
            }

            *&v90 = v49;
            MEMORY[0x1EEE9AC00](v49);
            v81 = &v90;
            sub_1E3B805A8(sub_1E3BC8610, &v83[-4], v87);
            if ((v51 & 1) == 0)
            {
              [v50 removeFromSuperview];
            }

            ++v47;
          }
        }
      }

      else
      {

        sub_1E3280A90(0, &qword_1ECF34798, 0x1E69DCF90);
        v52 = sub_1E3BC8330(v87);
        [v52 setAxis_];
        [v52 setAlignment_];
        [v52 setDistribution_];
        [v52 setSpacing_];
        v53 = v52;
        [v53 setTranslatesAutoresizingMaskIntoConstraints_];
        v54 = v53;
        sub_1E3BC752C(v53);
        [v54 vui_layoutIfNeeded];
        [v54 vui:0.0 sizeThatFits:0.0];
        [v54 frame];
        [v54 setFrame_];
        v55 = [v54 superview];
        if (v55)
        {
          v56 = v55;
          v57 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_1E42A1E20;
          v59 = [v54 leadingAnchor];
          v60 = [v56 leadingAnchor];
          v61 = [v59 constraintGreaterThanOrEqualToAnchor_];

          *(v58 + 32) = v61;
          v62 = [v54 centerXAnchor];
          v63 = [v56 centerXAnchor];
          v64 = OUTLINED_FUNCTION_1_166();

          *(v58 + 40) = v64;
          v65 = [v54 topAnchor];
          v66 = [v56 topAnchor];
          v67 = OUTLINED_FUNCTION_1_166();

          *(v58 + 48) = v67;
          v68 = [v54 bottomAnchor];

          v69 = [v56 bottomAnchor];
          v70 = OUTLINED_FUNCTION_1_166();

          *(v58 + 56) = v70;
          sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
          v71 = sub_1E42062A4();

          [v57 activateConstraints_];
        }

        else
        {
        }
      }
    }

    else
    {

      v29 = v11;
    }

    return v84;
  }

LABEL_71:
  v73 = sub_1E324FBDC();
  (v6[2])(v9, v73, v5);

  v74 = sub_1E41FFC94();
  v75 = sub_1E42067F4();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *&v90 = v77;
    *v76 = 136315138;
    sub_1E384EE08(*(a1 + 98));
    v80 = sub_1E3270FC8(v78, v79, &v90);

    *(v76 + 4) = v80;
    _os_log_impl(&dword_1E323F000, v74, v75, "SegmentedControlCell: Failed to get correct cell for [%s]", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v77);
    MEMORY[0x1E69143B0](v77, -1, -1);
    MEMORY[0x1E69143B0](v76, -1, -1);
  }

  (v6[1])(v9, v5);
  v82 = 0;
  v81 = 59;
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

id sub_1E3BC8330(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  v2 = sub_1E42062A4();

  v3 = [v1 initWithArrangedSubviews_];

  return v3;
}

id sub_1E3BC83B8()
{
  OUTLINED_FUNCTION_0_8();
  v2 = OUTLINED_FUNCTION_0_166((v1 + OBJC_IVAR____TtC8VideosUI15ViewHostingCell_viewModelIdentifier));
  *v0 = 0;
  v0[1] = 0;
  v7 = v2;
  v3 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v4, v5, v3, v1, v7);
}

id sub_1E3BC8448(void *a1)
{
  v4 = OUTLINED_FUNCTION_0_166(&v2[OBJC_IVAR____TtC8VideosUI15ViewHostingCell_viewModelIdentifier]);
  *v1 = 0;
  v1[1] = 0;
  v7.receiver = v2;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1E3BC84F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ViewHostingCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1E3BC8654(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = [Strong vuiCollectionViewCellInteractor];
  if (v6)
  {
    v7 = v6;
    if ([v6 respondsToSelector_])
    {
      if (!a2)
      {
        sub_1E4205CB4();
      }

      v9 = sub_1E4205C44();

      v8 = [v7 vui:v5 handleActionInCell:a1 fromSubview:v9 details:?];
    }

    else
    {
      v8 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1E3BC87A0(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  sub_1E3BC87F0(a1, a2);
  return v4;
}

uint64_t sub_1E3BC87F0(uint64_t a1, void *a2)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v48 = v6;
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v2;
  *(v2 + 32) = 0;
  v15 = (v2 + 32);
  *(v15 - 2) = 0;
  *(v15 - 1) = 0;
  v45 = v15 - 1;
  v16 = sub_1E4206BA4();
  v17 = VUISignpostLogObject(v16);
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v46 = *(v11 + 8);
  v47 = v9;
  v46(v14, v9);
  v50 = a2;
  sub_1E327F454(a2, &v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0, &unk_1E42980F0);
  type metadata accessor for DocumentServiceRequestContext(0);
  if (swift_dynamicCast())
  {
    v18 = v53[0];
  }

  else
  {
    v18 = 0;
  }

  ViewModelKeys.rawValue.getter(2);
  sub_1E3277E60(v19, v20, a1, &v54);

  if (v55)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_1_167())
    {
      v21 = v53[0];
      if (*(v53[0] + 16))
      {
        ViewModelKeys.rawValue.getter(35);
        sub_1E3277E60(v22, v23, v21, &v54);

        if (v55)
        {
          if (OUTLINED_FUNCTION_1_167())
          {
            v24 = v53[0];
            OUTLINED_FUNCTION_3_0((v15 - 2), v52);
            *(v15 - 2) = v24;
          }
        }

        else
        {
          sub_1E329505C(&v54);
        }

        v55 = &type metadata for ViewModelKeys;
        v56 = &off_1F5D7BCA8;
        LOBYTE(v54) = 34;
        v36 = sub_1E39BD1A0(&v54, v21);
        __swift_destroy_boxed_opaque_existential_1(&v54);
        OUTLINED_FUNCTION_3_0(v15, &v54);
        *v15 = v36;

        if (v18)
        {
          v37 = *(*v18 + 192);

          v39 = v37(v38);

          if (v39)
          {
            v40 = type metadata accessor for ViewModel();

            v41 = sub_1E3DD5014(13, v21, v39, v40);

            v42 = v45;
            OUTLINED_FUNCTION_3_0(v45, v53);
            *v42 = v41;
          }
        }

        v43 = sub_1E4206B94();
        v44 = VUISignpostLogObject(v43);
        sub_1E41FFBE4();
        sub_1E41FFBA4();

        __swift_destroy_boxed_opaque_existential_1(v50);
        v46(v14, v47);
        return v51;
      }
    }
  }

  else
  {
    sub_1E329505C(&v54);
  }

  v25 = sub_1E324FBDC();
  v27 = v48;
  v26 = v49;
  (*(v48 + 16))(v8, v25, v49);

  v28 = sub_1E41FFC94();
  v29 = sub_1E42067F4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v54 = v31;
    *v30 = 136315138;
    v53[0] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF347A0, qword_1E42C0F00);
    v32 = sub_1E42070D4();
    v34 = sub_1E3270FC8(v32, v33, &v54);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_1E323F000, v28, v29, "DocumentFragment:: Failed to create document from JSON <%s>.", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1E69143B0](v31, -1, -1);
    MEMORY[0x1E69143B0](v30, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
  (*(v27 + 8))(v8, v26);
  return v51;
}

uint64_t sub_1E3BC8D64()
{

  return v0;
}

uint64_t sub_1E3BC8D94()
{
  sub_1E3BC8D64();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1E3BC8DC8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E3BC87A0(a1, a2);
  *a3 = result;
  return result;
}

__objc2_class **sub_1E3BC8E14()
{
  if (!*(v0 + 200))
  {
    return 0;
  }

  result = sub_1E39C408C();
  if (result && *result != _TtC8VideosUI13TextViewModel)
  {

    return 0;
  }

  return result;
}

void sub_1E3BC8E7C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v19 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80, &qword_1E42BD8B0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v7 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = (v13 - v12);
  v15 = type metadata accessor for StandardLockup(0);
  sub_1E3746E10(v14);
  v16 = sub_1E3B0352C();
  v17 = OUTLINED_FUNCTION_99_0();
  v18(v17);
  if ((v16 & 1) != 0 || (*(v3 + v15[9]) & 1) != 0 || *(v3 + v15[10]) == 1)
  {
    (*(v9 + 104))(v19, *MEMORY[0x1E697DBA8], v7);
  }

  else
  {
    sub_1E3743538(v3 + v15[8], v1, &qword_1ECF33D80, &qword_1E42BD8B0);
    if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
    {
      sub_1E379EBAC(v2);
      if (__swift_getEnumTagSinglePayload(v1, 1, v7) != 1)
      {
        sub_1E325F69C(v1, &qword_1ECF33D80);
      }
    }

    else
    {
      (*(v9 + 32))(v2, v1, v7);
    }

    (*(v9 + 32))(v19, v2, v7);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BC90F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v69 = v7;
  v70 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v68 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80, &qword_1E42BD8B0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v66 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v65 - v14;
  v16 = type metadata accessor for StandardLockup(0);
  v17 = *(v16 + 44);
  *(v5 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v18 = *(v16 + 48);
  *(v5 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  swift_storeEnumTagMultiPayload();
  *v5 = v3;
  memcpy(v77, v1, sizeof(v77));
  memcpy(v76, (v1 + 89), sizeof(v76));
  memcpy(v78, v1, 0x58uLL);
  v78[88] = 1;
  memcpy(&v78[89], (v1 + 89), 0x6AuLL);
  memcpy(v5 + 2, v78, 0xC3uLL);
  v19 = *(*v3 + 392);

  v71 = v1;
  sub_1E375C1CC(v1, v73);
  v20 = sub_1E375C1CC(v78, v73);
  if (v19(v20))
  {
    type metadata accessor for StandardLockupCellLayout();
    OUTLINED_FUNCTION_20_2();
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for StandardLockupCellLayout();
  v22 = j__OUTLINED_FUNCTION_18();
  v21 = sub_1E3D8C108(0, v22 & 1);
LABEL_5:
  v72 = v16;
  v5[1] = v21;
  v23 = sub_1E4200B44();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);

  if (sub_1E39C408C())
  {
    type metadata accessor for ImageViewModel();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      v67 = v15;
      v29 = *(*v27 + 392);
      v30 = *v27 + 392;

      v65[1] = v30;
      v32 = v29(v31);
      if (v32)
      {
        v33 = (*(*v32 + 1560))(v32);
      }

      else
      {
        v33 = 7;
      }

      v35 = (*(*v28 + 1032))(v33);
      if ((v36 & 1) == 0)
      {
        v37 = v35;
        v38 = v29;
        v39 = v67;
        sub_1E325F69C(v67, &qword_1ECF33D80);
        v40 = MEMORY[0x1E697DBA8];
        if (v37 != 2)
        {
          v40 = MEMORY[0x1E697DBB8];
        }

        v41 = v66;
        (*(*(v23 - 8) + 104))(v66, *v40, v23);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v42, v43, v44, v23);
        v45 = v39;
        v29 = v38;
        v35 = sub_1E3741EA0(v41, v45, &qword_1ECF33D80, &qword_1E42BD8B0);
      }

      v46 = v29(v35);

      if (v46)
      {
        OUTLINED_FUNCTION_8();
        v48 = (*(v47 + 1560))();
      }

      else
      {
        v48 = 7;
      }

      v15 = v67;
      v34 = (*(*v28 + 1040))(v48);
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v49 = v72;
  sub_1E3743538(v15, v5 + *(v72 + 32), &qword_1ECF33D80, &qword_1E42BD8B0);
  type metadata accessor for ContextMenuModel(0);

  v50 = sub_1E3E6CDBC();
  v52 = *v50;
  v51 = v50[1];
  v73[0] = v52;
  v73[1] = v51;

  v53 = v68;
  sub_1E4207414();
  (*(v69 + 104))(v53, *MEMORY[0x1E697E660], v70);
  v5[27] = sub_1E4188148(v3, v53);
  v54 = *(*v21 + 1864);
  v55 = v54();

  v56 = sub_1E3D88D84(v55);
  v57 = *(v49 + 40);
  v70 = v5;
  *(v5 + v57) = v56 & 1;
  if (v34)
  {

    sub_1E37E6F2C(v71);
    sub_1E325F69C(v15, &qword_1ECF33D80);
    OUTLINED_FUNCTION_46_31();
    v74 = 1;
    memcpy(v75, v76, sizeof(v75));
    sub_1E37E6F2C(v73);
    v58 = 0;
  }

  else
  {
    v67 = v15;
    v59 = sub_1E39C408C();
    v60 = sub_1E39C408C();
    v61 = sub_1E39C408C();

    if (v59 || v60 || v61)
    {
      v63 = (v54)(v62);
      v58 = sub_1E3BC988C(v63, 3, v64);

      sub_1E37E6F2C(v71);
      sub_1E325F69C(v67, &qword_1ECF33D80);
      OUTLINED_FUNCTION_46_31();
      v74 = 1;
      memcpy(v75, v76, sizeof(v75));
      sub_1E37E6F2C(v73);
    }

    else
    {
      sub_1E37E6F2C(v71);
      sub_1E325F69C(v67, &qword_1ECF33D80);
      OUTLINED_FUNCTION_46_31();
      v74 = 1;
      memcpy(v75, v76, sizeof(v75));
      sub_1E37E6F2C(v73);
      v58 = 0;
    }

    v49 = v72;
  }

  *(v70 + *(v49 + 36)) = v58 & 1;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BC988C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3BCEF40(a1, a2, a3);
  sub_1E4206254();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

void sub_1E3BC9940()
{
  OUTLINED_FUNCTION_31_1();
  v73 = v3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF347E8, &qword_1E42C1068);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v66 = v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34888, &qword_1E42C1488);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v70 = v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34890, &qword_1E42C1490);
  OUTLINED_FUNCTION_0_10();
  v65 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v64 = v10;
  OUTLINED_FUNCTION_138();
  v67 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF347B0, &qword_1E42C1038);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v69 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34898, &qword_1E42C1498);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v63 - v18;
  v20 = type metadata accessor for StandardLockupListView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_36();
  if ((*(v22 + 2224))())
  {
    memcpy(v75, (v0 + 16), 0xC3uLL);

    sub_1E375C1CC(v75, &v74);
    sub_1E3C6E960();
    sub_1E3BCEE8C(v2, v19, type metadata accessor for StandardLockupListView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_23_56();
    sub_1E3BCEDE0(v23);
    sub_1E3BCDE0C();
    OUTLINED_FUNCTION_99_0();
    sub_1E4201F44();
    sub_1E3BCEEE8(v2, type metadata accessor for StandardLockupListView);
  }

  else
  {
    v63[0] = v19;
    v63[1] = v16;
    v63[2] = v20;
    type metadata accessor for StandardLockup(0);
    sub_1E3746E10(v1);
    v24 = sub_1E3B0352C();
    (*(v12 + 8))(v1, v67);
    if (v24)
    {
      v25 = v64;
      sub_1E3BC9F70();
      v26 = v65;
      v27 = v71;
      (*(v65 + 16))(v70, v25, v71);
      swift_storeEnumTagMultiPayload();
      v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347B8, &qword_1E42C1040);
      v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347C0, &qword_1E42C1048);
      v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347C8, &qword_1E42C1050);
      v31 = sub_1E3BCDF54();
      v75[0] = v30;
      v75[1] = v31;
      OUTLINED_FUNCTION_10_6();
      v34 = OUTLINED_FUNCTION_49_30(v32, v33);
      v75[0] = v29;
      v75[1] = v34;
      OUTLINED_FUNCTION_3_8();
      v37 = OUTLINED_FUNCTION_49_30(v35, v36);
      v75[0] = v28;
      v75[1] = v37;
      OUTLINED_FUNCTION_5_15();
      OUTLINED_FUNCTION_49_30(v38, v39);
      sub_1E3BCE0F0();
      sub_1E4201F44();
      (*(v26 + 8))(v25, v27);
    }

    else
    {
      v40 = v66;
      sub_1E3BCA2FC();
      OUTLINED_FUNCTION_39_35();
      sub_1E3743538(v41, v42, v43, &qword_1E42C1068);
      swift_storeEnumTagMultiPayload();
      v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347B8, &qword_1E42C1040);
      v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347C0, &qword_1E42C1048);
      v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347C8, &qword_1E42C1050);
      v47 = sub_1E3BCDF54();
      v75[0] = v46;
      v75[1] = v47;
      OUTLINED_FUNCTION_10_6();
      v50 = OUTLINED_FUNCTION_49_30(v48, v49);
      v75[0] = v45;
      v75[1] = v50;
      OUTLINED_FUNCTION_3_8();
      v53 = OUTLINED_FUNCTION_49_30(v51, v52);
      v75[0] = v44;
      v75[1] = v53;
      OUTLINED_FUNCTION_5_15();
      OUTLINED_FUNCTION_49_30(v54, v55);
      sub_1E3BCE0F0();
      sub_1E4201F44();
      sub_1E325F69C(v40, &qword_1ECF347E8);
    }

    OUTLINED_FUNCTION_38_2();
    sub_1E3743538(v56, v57, v58, v59);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_23_56();
    sub_1E3BCEDE0(v60);
    sub_1E3BCDE0C();
    OUTLINED_FUNCTION_99_0();
    sub_1E4201F44();
    OUTLINED_FUNCTION_39_35();
    sub_1E325F69C(v61, v62);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BC9F70()
{
  OUTLINED_FUNCTION_93();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF347C8, &qword_1E42C1050);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF347C0, &qword_1E42C1048);
  OUTLINED_FUNCTION_0_10();
  v31 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_73_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF347B8, &qword_1E42C1040);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF348A0, &qword_1E42C14A0);
  sub_1E3BCAFA0();
  v11 = sub_1E4203DA4();
  v13 = v12;
  v14 = [objc_opt_self() blackColor];
  v15 = sub_1E38F08C4(v14);

  v16 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF347D0, &qword_1E42C1058) + 36));
  *v16 = v15;
  v16[1] = v11;
  v16[2] = v13;
  v17 = (v1 + *(v4 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0);
  sub_1E3BC8E7C();
  *v17 = swift_getKeyPath();
  v18 = *(v3 + 8);
  OUTLINED_FUNCTION_8();
  v20 = *(v19 + 552);

  v20(&v32, v21);

  if (v33)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v32;
  }

  v23 = sub_1E3BCDF54();
  sub_1E391F8C0(v4, v23, v22);
  sub_1E325F69C(v1, &qword_1ECF347C8);
  v24 = *(v3 + 216);
  OUTLINED_FUNCTION_10_6();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E4187EA8(v24, v6, OpaqueTypeConformance2);
  (*(v31 + 8))(v2, v6);
  OUTLINED_FUNCTION_3_8();
  v26 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_13_8();
  LOBYTE(v24) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13_8();
  v27 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13_8();
  v28 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v18, v24 & 1, v27 & 1, 0, v28 & 1, v9, v26);
  v29 = OUTLINED_FUNCTION_8_6();
  v30(v29);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3BCA2FC()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v86 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v85 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v84 = v6 - v5;
  v7 = OUTLINED_FUNCTION_138();
  v8 = type metadata accessor for StandardLockup.ImageView(v7);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34818, &qword_1E42C1098) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31_2();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34810, &qword_1E42C1090);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v71 = v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34808, &qword_1E42C1088);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v72 = v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34800, &qword_1E42C1080);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v73 = v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF347F8, &qword_1E42C1078);
  OUTLINED_FUNCTION_0_10();
  v75 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v74 = v23;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF347F0, &qword_1E42C1070);
  OUTLINED_FUNCTION_0_10();
  v80 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v78 = v26;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34930, &qword_1E42C1568);
  OUTLINED_FUNCTION_0_10();
  v81 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v79 = v29;
  v30 = sub_1E3BAE454();
  memcpy(v89, v2 + 2, 0xC3uLL);
  *(v12 + *(v9 + 32)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *v12 = v30;
  memcpy(v12 + 1, v89, 0xC3uLL);
  sub_1E375C1CC(v89, v87);
  v31 = sub_1E4203D94();
  v68 = v32;
  v33 = v1 + *(v13 + 44);
  v34 = type metadata accessor for StandardLockup(0);
  v35 = *(v34 + 32);
  v36 = *(v2 + *(v34 + 36));
  v37 = v2[1];
  v38 = type metadata accessor for StandardLockup.BackgroundGradientView(0);
  sub_1E3743538(v2 + v35, v33 + *(v38 + 24), &qword_1ECF33D80, &qword_1E42BD8B0);
  v39 = objc_opt_self();

  v40 = [v39 blackColor];
  *v33 = v36;
  *(v33 + 8) = v37;
  *(v33 + *(v38 + 28)) = v40;
  v41 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34820, &qword_1E42C10A0) + 36));
  *v41 = v31;
  v41[1] = v68;
  sub_1E3BCEE20(v12, v1);
  if (v36 == 1)
  {
    v42 = sub_1E4203D94();
  }

  else
  {
    v42 = sub_1E4203D64();
  }

  v44 = v42;
  v45 = v43;
  v46 = v71 + *(v69 + 36);
  sub_1E3BCAA94(v2, v46);
  v47 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34828, &qword_1E42C10A8) + 36));
  *v47 = v44;
  v47[1] = v45;
  sub_1E3741EA0(v1, v71, &qword_1ECF34818, &qword_1E42C1098);
  v48 = sub_1E4203D54();
  v50 = v49;
  v51 = *v2;
  sub_1E3741EA0(v71, v72, &qword_1ECF34810, &qword_1E42C1090);
  v52 = v72 + *(v70 + 36);
  *v52 = v51;
  *(v52 + 8) = v37;
  *(v52 + 16) = v36;
  *(v52 + 24) = v48;
  *(v52 + 32) = v50;
  v53 = (v73 + *(v76 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0);

  sub_1E3BC8E7C();
  *v53 = swift_getKeyPath();
  v54 = OUTLINED_FUNCTION_99_0();
  sub_1E3741EA0(v54, v55, v56, v57);
  OUTLINED_FUNCTION_36();
  v59 = *(v58 + 552);

  v59(v87, v60);

  if (v88)
  {
    v61 = 0.0;
  }

  else
  {
    v61 = *v87;
  }

  v62 = sub_1E3BCE268();
  sub_1E391F8C0(v76, v62, v61);
  sub_1E325F69C(v73, &qword_1ECF34800);
  v63 = v2[27];
  OUTLINED_FUNCTION_10_6();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E4187EA8(v63, v77, OpaqueTypeConformance2);
  (*(v75 + 8))(v74, v77);
  OUTLINED_FUNCTION_3_8();
  v65 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_8_6();
  LOBYTE(v63) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_6();
  v66 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_6();
  v67 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v37, v63 & 1, v66 & 1, 0, v67 & 1, v82, v65);
  (*(v80 + 8))(v78, v82);
  sub_1E4201C84();
  OUTLINED_FUNCTION_5_15();
  swift_getOpaqueTypeConformance2();
  sub_1E4203364();
  (*(v85 + 8))(v84, v86);
  (*(v81 + 8))(v79, v83);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3BCAA94(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34938, &qword_1E42C1570);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34940, &qword_1E42C1578);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &__src[-v9];
  if (*(a1 + *(type metadata accessor for StandardLockup(0) + 36)) == 1)
  {
    v11 = sub_1E4201D44();
  }

  else
  {
    v11 = sub_1E4201D54();
  }

  *v2 = v11;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34948, &qword_1E42C1580);
  sub_1E3BCAC7C();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_19_5();
  __src[8] = v12;
  OUTLINED_FUNCTION_13_22();
  sub_1E3741EA0(v2, v10, &qword_1ECF34938, &qword_1E42C1570);
  memcpy(&v10[*(v7 + 36)], __src, 0x70uLL);
  OUTLINED_FUNCTION_36();
  v14.n128_f64[0] = (*(v13 + 2176))();
  j_nullsub_1(v14, v15, v16, v17);
  OUTLINED_FUNCTION_3();
  sub_1E4202734();
  v18 = OUTLINED_FUNCTION_13_8();
  sub_1E3741EA0(v18, v19, v20, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34950, &qword_1E42C1588);
  OUTLINED_FUNCTION_7_3(a2 + *(v22 + 36));
}

void sub_1E3BCAC7C()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v29 = v2;
  v3 = type metadata accessor for StandardLockup.ContentLogoView(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_5();
  v30 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = type metadata accessor for StandardLockup(0);
  v12 = *(v1 + *(v11 + 36));
  v28 = v12;
  memcpy(v45, v1 + 2, 0xC3uLL);
  *&v8[*(v4 + 40)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *v8 = v10;
  *(v8 + 1) = v9;
  v8[16] = v12;
  memcpy(v8 + 24, v45, 0xC3uLL);
  swift_retain_n();

  sub_1E375C1CC(v45, v35);
  v13 = sub_1E3AE9144();
  v25[1] = v13;
  v14 = sub_1E3BC8E14();
  v27 = sub_1E3BC8E14();
  v15 = sub_1E3AE9144();
  v16 = sub_1E3BC8E14();
  v26 = sub_1E3AE9144();
  if (*(v1 + *(v11 + 40)))
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  sub_1E4203DA4();
  sub_1E4200D94();
  v18 = v30;
  sub_1E3BCEE8C(v8, v30, type metadata accessor for StandardLockup.ContentLogoView);
  v19 = v29;
  sub_1E3BCEE8C(v18, v29, type metadata accessor for StandardLockup.ContentLogoView);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34958, &qword_1E42C1590);
  v21 = v19 + *(v20 + 48);
  *v21 = 0;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  v25[2] = v14;
  *(v21 + 24) = v9;
  *(v21 + 32) = v28;
  v22 = *(v20 + 64);
  *&v34[7] = v31;
  LOBYTE(v34[0]) = 0;
  v23 = v26;
  v24 = v27;
  v34[1] = v27;
  v34[2] = v15;
  v34[3] = v16;
  v34[4] = v26;
  v34[5] = v9;
  *&v34[6] = v17;
  *&v34[9] = v32;
  *&v34[11] = v33;
  memcpy((v19 + v22), v34, 0x68uLL);

  sub_1E3743538(v34, v35, &qword_1ECF34960, &qword_1E42C1598);
  sub_1E3BCEEE8(v8, type metadata accessor for StandardLockup.ContentLogoView);
  v35[0] = 0;
  v36 = v24;
  v37 = v15;
  v38 = v16;
  v39 = v23;
  v40 = v9;
  v41 = v17;
  v42 = v31;
  v43 = v32;
  v44 = v33;
  sub_1E325F69C(v35, &qword_1ECF34960);

  sub_1E3BCEEE8(v30, type metadata accessor for StandardLockup.ContentLogoView);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3BCAFA0()
{
  OUTLINED_FUNCTION_9_4();
  v7 = v6;
  v121 = v8;
  v9 = type metadata accessor for StandardLockup.ImageView(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF348A8, &qword_1E42C14D8) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31_2();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF348B0, &qword_1E42C14E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v118 = v14;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF348B8, &qword_1E42C14E8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v120 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v116 = (&v111 - v18);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v122 = v20;
  v21 = sub_1E3BAE454();
  memcpy(v134, (v7 + 16), 0xC3uLL);
  *(v1 + *(v10 + 32)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *v1 = v21;
  memcpy(v1 + 1, v134, 0xC3uLL);
  sub_1E375C1CC(v134, v133);
  v22 = sub_1E4203DA4();
  v112 = v23;
  v113 = v22;
  v24 = v0 + *(v11 + 44);
  v25 = type metadata accessor for StandardLockup(0);
  v26 = *(v7 + *(v25 + 36));
  v27 = *(v7 + *(v25 + 40));
  v114 = v7;
  v28 = *(v7 + 8);
  v29 = objc_opt_self();

  v30 = [v29 blackColor];
  KeyPath = swift_getKeyPath();
  *(v24 + *(type metadata accessor for StandardLockup.AXTransitionGradientToSolidColorBelowImage(0) + 32)) = KeyPath;
  swift_storeEnumTagMultiPayload();
  *v24 = v26;
  LODWORD(v119) = v27;
  *(v24 + 1) = v27;
  v32 = v28;
  *(v24 + 8) = v28;
  *(v24 + 16) = v30;
  v33 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF348C0, &qword_1E42C14F0) + 36));
  v34 = v0;
  v35 = v112;
  *v33 = v113;
  v33[1] = v35;
  sub_1E3BCEE20(v1, v0);
  v36 = sub_1E4203DA4();
  v38 = v37;
  if (v26 == 1)
  {
    v39 = sub_1E4203D94();
  }

  else
  {
    v39 = sub_1E4203D64();
  }

  v41 = v118;
  v42 = (v118 + *(v115 + 36));
  *v42 = v39;
  v42[1] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF348C8, &qword_1E42C14F8);
  v43 = v114;
  sub_1E3BCBAD0();
  v44 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF348D0, &qword_1E42C1500) + 36));
  *v44 = v36;
  v44[1] = v38;
  sub_1E3741EA0(v34, v41, &qword_1ECF348A8, &qword_1E42C14D8);
  v45 = sub_1E4203D54();
  v47 = v46;
  v48 = *v43;
  v49 = v41;
  v50 = v116;
  sub_1E3741EA0(v49, v116, &qword_1ECF348B0, &qword_1E42C14E0);
  v51 = v50 + *(v117 + 36);
  *v51 = v48;
  *(v51 + 1) = v32;
  v52 = v32;
  v51[16] = v26;
  *(v51 + 3) = v45;
  *(v51 + 4) = v47;
  sub_1E3741EA0(v50, v122, &qword_1ECF348B8, &qword_1E42C14E8);
  if (v26)
  {

    v118 = sub_1E3AE9144();
    v117 = sub_1E3BC8E14();
    OUTLINED_FUNCTION_60_2();
    swift_retain_n();
    v53 = sub_1E3AE9144();
    v54 = sub_1E3BC8E14();
    v55 = sub_1E4203D94();
    v57 = v56;
    v58 = sub_1E4201D44();
    LOBYTE(v126[0]) = 0;
    v133[0] = v53;
    v130[0] = v54;
    sub_1E3743538(v133, v129, &qword_1ECF29088, &qword_1E42B7E40);
    sub_1E3743538(v130, v129, &qword_1ECF29088, &qword_1E42B7E40);
    LOBYTE(v129[0]) = 0;
    v59 = v126[0];

    v129[0] = v58;
    v129[1] = 0;
    LOBYTE(v129[2]) = v59;
    LOBYTE(v129[3]) = 0;
    v129[4] = v53;
    v129[5] = v54;
    v129[6] = v52;
    LOBYTE(v129[7]) = 1;
    v129[8] = 0;
    LOBYTE(v129[9]) = 0;
    v129[10] = v55;
    v129[11] = v57;
    memcpy(&v123[7], v129, 0x60uLL);
    v130[0] = v58;
    v130[1] = 0;
    LOBYTE(v130[2]) = v59;
    LOBYTE(v130[3]) = 0;
    v130[4] = v53;
    v130[5] = v54;
    v130[6] = v52;
    LOBYTE(v130[7]) = 1;
    v130[8] = 0;
    LOBYTE(v130[9]) = 0;
    v130[10] = v55;
    v130[11] = v57;
    v60 = v117;

    v61 = v118;

    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v62, v63, v64, v65);
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v66, v67);
    v68.n128_f64[0] = OUTLINED_FUNCTION_5_8();
    v69.n128_f64[0] = (*(*v52 + 2176))(v68);
    j_nullsub_1(v69, v70, v71, v72);
    OUTLINED_FUNCTION_3();
    LOBYTE(v55) = sub_1E4202734();

    OUTLINED_FUNCTION_60_2();

    LOBYTE(v133[0]) = 1;
    *(v133 + 1) = v126[0];
    HIDWORD(v133[0]) = *(v126 + 3);
    v133[1] = v61;
    v133[2] = v60;
    v133[3] = v52;
    LOBYTE(v133[4]) = 1;
    memcpy(&v133[4] + 1, v123, 0x67uLL);
    LOBYTE(v133[17]) = v55;
    *(&v133[17] + 1) = v131[0];
    HIDWORD(v133[17]) = *(v131 + 3);
    v133[18] = v2;
    v133[19] = v3;
    v133[20] = v4;
    v133[21] = v5;
    LOBYTE(v133[22]) = 0;
    nullsub_1();
    memcpy(v132, v133, 0xB1uLL);
  }

  else
  {
    sub_1E3BCEE84(v132);
  }

  if (v119)
  {
    v119 = sub_1E3BC8E14();
    v118 = sub_1E3AE9144();
    v117 = sub_1E3BC8E14();
    v116 = sub_1E3AE9144();
    OUTLINED_FUNCTION_60_2();
    swift_retain_n();
    v73 = sub_1E3BC8E14();
    v74 = sub_1E3AE9144();
    v75 = sub_1E3BC8E14();
    v76 = sub_1E3AE9144();
    v114 = sub_1E4203D94();
    v111 = v77;
    v78 = sub_1E4201D44();
    v125 = 0;
    v133[0] = v73;
    v130[0] = v74;
    v129[0] = v75;
    v126[0] = v76;
    LOBYTE(v128[0]) = 0;
    OUTLINED_FUNCTION_34_45(v133);
    OUTLINED_FUNCTION_34_45(v130);
    OUTLINED_FUNCTION_34_45(v129);
    OUTLINED_FUNCTION_34_45(v126);

    v127[0] = 0;
    v112 = v73;
    v113 = v74;
    *&v127[8] = v73;
    *&v127[16] = v74;
    v115 = v75;
    *&v127[24] = v75;
    *&v127[32] = v76;
    *&v127[40] = v52;
    *&v127[48] = 0;
    v127[56] = 0;
    LOBYTE(v128[0]) = 0;
    v128[1] = v73;
    v128[2] = v74;
    v128[3] = v75;
    v128[4] = v76;
    v128[5] = v52;
    v128[6] = 0;
    LOBYTE(v128[7]) = 0;
    sub_1E3743538(v127, v133, &qword_1ECF348F0, &qword_1E42C1520);
    sub_1E325F69C(v128, &qword_1ECF348F0);
    v124[3] = *&v127[41];
    *(&v124[2] + 7) = *&v127[32];
    *(&v124[1] + 7) = *&v127[16];
    *(v124 + 7) = *v127;
    v131[0] = v78;
    v131[1] = 0;
    LOBYTE(v131[2]) = v125;
    *(&v131[8] + 1) = v124[3];
    *(&v131[6] + 1) = v124[2];
    *(&v131[4] + 1) = v124[1];
    *(&v131[2] + 1) = v124[0];
    v131[11] = v114;
    v131[12] = v111;
    memcpy(v129, v131, 0x68uLL);
    v126[0] = v78;
    v126[1] = 0;
    LOBYTE(v126[2]) = v125;
    *(&v126[2] + 1) = v124[0];
    *(&v126[4] + 1) = v124[1];
    *(&v126[6] + 1) = v124[2];
    *(&v126[8] + 1) = v124[3];
    v126[11] = v114;
    v126[12] = v111;
    v79 = v116;

    v80 = v119;

    v81 = v118;

    v82 = v117;

    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v83, v84, v85, v86);
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v87, v88);
    v89.n128_f64[0] = OUTLINED_FUNCTION_5_8();
    v90.n128_f64[0] = (*(*v52 + 2176))(v89);
    j_nullsub_1(v90, v91, v92, v93);
    OUTLINED_FUNCTION_3();
    LOBYTE(v78) = sub_1E4202734();

    OUTLINED_FUNCTION_60_2();

    LOBYTE(v130[0]) = 1;
    v130[1] = v80;
    v130[2] = v81;
    v130[3] = v82;
    v130[4] = v79;
    v130[5] = v52;
    memcpy(&v130[6], v129, 0x68uLL);
    LOBYTE(v130[19]) = v78;
    v130[20] = v2;
    v130[21] = v3;
    v130[22] = v4;
    v130[23] = v5;
    LOBYTE(v130[24]) = 0;
    nullsub_1();
    memcpy(v133, v130, 0xC1uLL);
  }

  else
  {
    sub_1E3A1EE70(v133);
  }

  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v94, v95, v96, v97);
  memcpy(v127, v132, sizeof(v127));
  memcpy(v126, v133, 0xC1uLL);
  v98 = v121;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v99, v100, v101, v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF348D8, &qword_1E42C1508);
  v104 = v103[12];
  memcpy(v128, v127, 0xB1uLL);
  memcpy((v98 + v104), v127, 0xB1uLL);
  v105 = v103[16];
  memcpy(v129, v126, 0xC1uLL);
  memcpy((v98 + v105), v126, 0xC1uLL);
  v106 = v98 + v103[20];
  *v106 = 0;
  *(v106 + 8) = 0;
  sub_1E3743538(v128, v130, &qword_1ECF348E0, &qword_1E42C1510);
  sub_1E3743538(v129, v130, &qword_1ECF348E8, &qword_1E42C1518);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v107, v108);
  memcpy(v130, v126, 0xC1uLL);
  sub_1E325F69C(v130, &qword_1ECF348E8);
  memcpy(v131, v127, 0xB1uLL);
  sub_1E325F69C(v131, &qword_1ECF348E0);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v109, v110);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3BCBAD0()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v68 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34908, &qword_1E42C1540);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34910, &qword_1E42C1548);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34918, &qword_1E42C1550);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  v67 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v60 - v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v66 = v14;
  v15 = OUTLINED_FUNCTION_138();
  v16 = type metadata accessor for StandardLockup.BackgroundGradientView(v15);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_5();
  v65 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  v22 = type metadata accessor for StandardLockup(0);
  v24 = *(v22 + 32);
  v23 = *(v22 + 36);
  v60 = v22;
  v25 = *(v2 + v23);
  v26 = v2[1];
  sub_1E3743538(v2 + v24, &v21[*(v17 + 32)], &qword_1ECF33D80, &qword_1E42BD8B0);
  v27 = objc_opt_self();

  v28 = [v27 blackColor];
  *v21 = v25;
  *(v21 + 1) = v26;
  *&v21[*(v17 + 36)] = v28;
  v64 = v8;
  if (v25 == 1)
  {
    v29 = sub_1E4201D44();
  }

  else
  {
    v29 = sub_1E4201D54();
  }

  *v0 = v29;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  v30 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34920, &qword_1E42C1558) + 44);
  v31 = *v2;
  memcpy(v70, v2 + 2, 0xC3uLL);
  KeyPath = swift_getKeyPath();
  *(v30 + *(type metadata accessor for StandardLockup.ContentLogoView(0) + 32)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *v30 = v31;
  *(v30 + 8) = v26;
  *(v30 + 16) = v25;
  memcpy((v30 + 24), v70, 0xC3uLL);

  sub_1E375C1CC(v70, v69);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_19_5();
  LOBYTE(v61) = v33;
  OUTLINED_FUNCTION_13_22();
  v34 = v64;
  sub_1E3741EA0(v0, v64, &qword_1ECF34908, &qword_1E42C1540);
  memcpy((v34 + *(v61 + 36)), v69, 0x70uLL);
  OUTLINED_FUNCTION_36();
  (*(v35 + 2176))();
  v40 = 0.0;
  if ((v25 & 1) == 0 && !*(v2 + *(v60 + 40)))
  {
    v40 = v38.n128_f64[0];
  }

  v38.n128_f64[0] = v40;
  j_nullsub_1(v36, v37, v38, v39);
  OUTLINED_FUNCTION_3();
  sub_1E4202734();
  v41 = v34;
  v42 = v62;
  sub_1E3741EA0(v41, v62, &qword_1ECF34910, &qword_1E42C1548);
  OUTLINED_FUNCTION_7_3(v42 + *(v63 + 36));
  OUTLINED_FUNCTION_38_2();
  sub_1E3741EA0(v43, v44, v45, v46);
  v47 = v65;
  sub_1E3BCEE8C(v21, v65, type metadata accessor for StandardLockup.BackgroundGradientView);
  OUTLINED_FUNCTION_38_2();
  sub_1E3743538(v48, v49, v50, v51);
  sub_1E3BCEE8C(v47, v68, type metadata accessor for StandardLockup.BackgroundGradientView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34928, &qword_1E42C1560);
  OUTLINED_FUNCTION_38_2();
  sub_1E3743538(v52, v53, v54, v55);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F69C(v56, v57);
  sub_1E3BCEEE8(v21, type metadata accessor for StandardLockup.BackgroundGradientView);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F69C(v58, v59);
  sub_1E3BCEEE8(v47, type metadata accessor for StandardLockup.BackgroundGradientView);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3BCBF60@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEC0, &unk_1E42C8F40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = *v1;
  if (*v1)
  {

    sub_1E3BCC084();
    v7 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_42_3(v6, v15, v7 & 1, v2);

    sub_1E375C31C(v15);
    *(v2 + *(v4 + 36)) = 256;
    sub_1E3741EA0(v2, a1, &qword_1ECF2FEC0, &unk_1E42C8F40);
    OUTLINED_FUNCTION_114();
    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
  }

  else
  {
    OUTLINED_FUNCTION_32_2();

    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
  }
}

void sub_1E3BCC084()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  memcpy(v12, (v0 + 8), 0x5BuLL);
  memcpy(v11, (v0 + 8), sizeof(v11));
  v7 = v12[90];
  type metadata accessor for StandardLockup.ImageView(0);
  sub_1E375C2C0(v12, &v10);
  sub_1E3746E10(v6);
  sub_1E3B02B0C();
  v8 = OUTLINED_FUNCTION_52_28();
  v9(v8);
  memcpy(v2, v11, 0x58uLL);
  v2[88] = 0;
  v2[89] = v6 & 1;
  v2[90] = v7;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BCC1A8()
{
  OUTLINED_FUNCTION_31_1();
  v36 = v2;
  v3 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v32 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34880, &qword_1E42C1480) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_12();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80, &qword_1E42BD8B0);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v35 = *v0;
  v34 = *(v0 + 1);
  v33 = type metadata accessor for StandardLockup.BackgroundGradientView(0);
  v19 = *(v33 + 24);
  (*(v5 + 104))(v18, *MEMORY[0x1E697DBB8], v3);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v3);
  v23 = *(v9 + 56);
  sub_1E3743538(&v0[v19], v1, &qword_1ECF33D80, &qword_1E42BD8B0);
  sub_1E3743538(v18, v1 + v23, &qword_1ECF33D80, &qword_1E42BD8B0);
  OUTLINED_FUNCTION_63(v1);
  if (v24)
  {
    sub_1E325F69C(v18, &qword_1ECF33D80);
    OUTLINED_FUNCTION_63(v1 + v23);
    if (v24)
    {
      sub_1E325F69C(v1, &qword_1ECF33D80);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1E3743538(v1, v15, &qword_1ECF33D80, &qword_1E42BD8B0);
    OUTLINED_FUNCTION_63(v1 + v23);
    if (!v24)
    {
      v25 = v32;
      (*(v5 + 32))(v32, v1 + v23, v3);
      sub_1E3BCEDE0(&qword_1EE289EE8);
      sub_1E4205E84();
      v26 = *(v5 + 8);
      v26(v25, v3);
      sub_1E325F69C(v18, &qword_1ECF33D80);
      v26(v15, v3);
      sub_1E325F69C(v1, &qword_1ECF33D80);
      goto LABEL_10;
    }

    sub_1E325F69C(v18, &qword_1ECF33D80);
    (*(v5 + 8))(v15, v3);
  }

  sub_1E325F69C(v1, &qword_1ECF34880);
LABEL_10:
  OUTLINED_FUNCTION_8();
  (*(v27 + 2256))();
  sub_1E3A9D168();
  v28 = v39;

  v29 = 0.0;
  v30 = v38;
  if (v35)
  {
    v29 = 1.0;
  }

  v31 = v36;
  *v36 = v37;
  v31[1] = v30;
  *(v31 + 4) = v28;
  *(v31 + 5) = v29;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BCC5AC(uint64_t a1@<X8>)
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  if (*v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v1[1];
  }

  type metadata accessor for StandardLockup.AXTransitionGradientToSolidColorBelowImage(0);
  sub_1E3746E10(v6);
  sub_1E3B0352C();
  v8 = OUTLINED_FUNCTION_52_28();
  v9(v8);
  OUTLINED_FUNCTION_8();
  (*(v10 + 2056))();
  sub_1E3A9D168();

  v11 = 0.0;
  if (v6 & v7)
  {
    v11 = 1.0;
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v11;
}

void sub_1E3BCC71C()
{
  OUTLINED_FUNCTION_9_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v90 = v4;
  v91 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v89 = v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_12();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28D90, &unk_1E4298510);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34860, &qword_1E42C1460);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEC0, &unk_1E42C8F40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v95 = v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34868, &qword_1E42C1468);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v96 = v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34870, &qword_1E42C1470);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v93 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_138();
  v21 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  v25 = v0;
  if (sub_1E39C408C())
  {
    type metadata accessor for ImageViewModel();
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = v26;
      if ((*(*v26 + 392))())
      {
        type metadata accessor for ImageLayout();
        OUTLINED_FUNCTION_20_2();
        v28 = swift_dynamicCastClass();
        if (!v28)
        {
        }
      }

      else
      {
        v28 = 0;
      }

      sub_1E3EB9BB4(&v108);
      v106 = v108;
      *v107 = *v109;
      *&v107[9] = *&v109[9];
      v42 = v110;
      v104 = v111;
      v105 = v112;
      v43 = v113;
      v103 = v114;
      *v102 = *v115;
      *&v102[3] = *&v115[3];
      v44 = v116;
      v101 = v117;
      v99 = v118;
      v100 = v119;
      type metadata accessor for StandardLockup.ContentLogoView(0);
      sub_1E3746E10(v2);
      v45 = sub_1E3B0352C();
      (*(v23 + 8))(v2, v21);
      if (!v28 || (v45 & 1) == 0)
      {
        goto LABEL_26;
      }

      if (v25[80] == 1)
      {
        v43 = 0.0;
        if (v25[160])
        {
LABEL_23:
          v47 = *(*v28 + 432);

          *&v49 = COERCE_DOUBLE(v47(v48));
          v51 = v50;

          v42 = 0;
          v52 = *&v49;
          if (v51)
          {
            v52 = 1.0;
          }

          v103 = 0;
          v101 = 0;
          v44 = v43 / v52;
LABEL_26:
          v120 = v106;
          *v121 = *v107;
          *&v121[9] = *&v107[9];
          v122 = v42;
          v123 = v104;
          v124 = v105;
          v125 = v43;
          v126 = v103;
          *&v127[3] = *&v102[3];
          *v127 = *v102;
          v128 = v44;
          v129 = v101;
          v130 = v99;
          v131 = v100;
          v53 = OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_42_3(v27, &v120, v53 & 1, v95);
          v54 = (v95 + *(v92 + 36));
          *v54 = v122;
          v54[1] = 1;
          OUTLINED_FUNCTION_8();
          v56 = *(v55 + 152);

          v56(&v106, v57);

          if (v107[16])
          {
            OUTLINED_FUNCTION_5_8();
          }

          else
          {
            OUTLINED_FUNCTION_13_3(v58, v59, v60, v61);
          }

          OUTLINED_FUNCTION_3();
          sub_1E4202734();
          sub_1E3741EA0(v95, v96, &qword_1ECF2FEC0, &unk_1E42C8F40);
          OUTLINED_FUNCTION_7_3(v96 + *(v94 + 36));
          if (v25[16])
          {
            v62 = 1.0;
          }

          else
          {
            v62 = 0.0;
          }

          sub_1E3741EA0(v96, v93, &qword_1ECF34868, &qword_1E42C1468);
          *(v93 + *(v97 + 36)) = v62;
          OUTLINED_FUNCTION_18_5();
          sub_1E3741EA0(v63, v64, v65, v66);
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v67, v68, v69, v70);
          swift_storeEnumTagMultiPayload();
          sub_1E3BCEB9C();
          sub_1E3B29BB8();
          sub_1E4201F44();

          sub_1E375C31C(&v120);

          OUTLINED_FUNCTION_82();
          sub_1E325F69C(v71, v72);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34878, &qword_1E42C1478);
LABEL_38:
          OUTLINED_FUNCTION_114();
          __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
          OUTLINED_FUNCTION_10_3();
          return;
        }

        v46 = 144;
      }

      else
      {
        v46 = 72;
      }

      v43 = *&v25[v46];
      goto LABEL_23;
    }
  }

  v29 = sub_1E39C408C();
  if (v29)
  {
    if (*v29 == _TtC8VideosUI13TextViewModel)
    {
      OUTLINED_FUNCTION_18();
      sub_1E3F23370();
      OUTLINED_FUNCTION_8();
      v31 = *(v30 + 152);

      v31(&v120, v32);

      if (v121[16])
      {
        OUTLINED_FUNCTION_5_8();
      }

      else
      {
        OUTLINED_FUNCTION_13_3(v33, v34, v35, v36);
      }

      OUTLINED_FUNCTION_3();
      sub_1E4202734();
      (*(v90 + 32))(v1, v89, v91);
      OUTLINED_FUNCTION_7_3(v1 + *(v88 + 36));
      if (v0[16])
      {
        v73 = 1.0;
      }

      else
      {
        v73 = 0.0;
      }

      sub_1E3741EA0(v1, v11, &qword_1ECF28CC0, &qword_1E4298440);
      *(v11 + *(v98 + 36)) = v73;
      OUTLINED_FUNCTION_38_2();
      sub_1E3741EA0(v74, v75, v76, v77);
      OUTLINED_FUNCTION_38_2();
      sub_1E3743538(v78, v79, v80, v81);
      swift_storeEnumTagMultiPayload();
      sub_1E3BCEB9C();
      sub_1E3B29BB8();
      sub_1E4201F44();

      OUTLINED_FUNCTION_39_35();
      sub_1E325F69C(v82, v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34878, &qword_1E42C1478);
      goto LABEL_38;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34878, &qword_1E42C1478);
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
}

void sub_1E3BCD040(uint64_t a1@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v45 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_73_5();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28D90, &unk_1E4298510);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34838, &qword_1E42C1430);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34840, &qword_1E42C1438);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v21 = *v1;
  if ((*v1 & 1) != 0 && *(v1 + 2))
  {
    v41 = a1;

LABEL_6:
    if (v21 & 1 | ((v1[32] & 1) == 0))
    {
      v23 = 0.0;
    }

    else
    {
      v23 = 1.0;
    }

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_8();
    (*(v24 + 152))(v48);
    if (v49)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v28.n128_u64[0] = v48[3];
      v27.n128_u64[0] = v48[2];
      v26.n128_u64[0] = v48[1];
      v25.n128_u64[0] = v48[0];
      j_nullsub_1(v25, v26, v27, v28);
    }

    OUTLINED_FUNCTION_3();
    sub_1E4202734();
    (*(v45 + 32))(v9, v3, v46);
    OUTLINED_FUNCTION_7_3(&v9[*(v43 + 36)]);
    sub_1E3741EA0(v9, v12, &qword_1ECF28CC0, &qword_1E4298440);
    *&v12[*(v42 + 36)] = v23;
    sub_1E4203DA4();
    sub_1E4200D94();
    sub_1E3741EA0(v12, v2, &unk_1ECF28D90, &unk_1E4298510);
    v29 = (v2 + *(v44 + 36));
    v30 = v51;
    *v29 = v50;
    v29[1] = v30;
    v29[2] = v52;
    sub_1E4203DA4();
    OUTLINED_FUNCTION_13_22();

    sub_1E3741EA0(v2, v17, &qword_1ECF34838, &qword_1E42C1430);
    v31 = v47;
    memcpy((v17 + *(v47 + 36)), __src, 0x70uLL);
    sub_1E3741EA0(v17, v20, &qword_1ECF34840, &qword_1E42C1438);
    sub_1E3741EA0(v20, v41, &qword_1ECF34840, &qword_1E42C1438);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
    OUTLINED_FUNCTION_20_0();
    return;
  }

  v22 = *(v1 + 1);

  if (v22)
  {
    v41 = a1;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_20_0();

  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
}

uint64_t sub_1E3BCD4F0@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = sub_1E4201D54();
  OUTLINED_FUNCTION_8();
  (*(v6 + 152))(v20);
  v11 = 0.0;
  v12 = 0;
  if ((v21 & 1) == 0)
  {
    v9.n128_u64[0] = v20[2];
    v10.n128_u64[0] = v20[3];
    v7.n128_u64[0] = v20[0];
    v8.n128_u64[0] = v20[1];
    j_nullsub_1(v7, v8, v9, v10);
    v12 = v13;
  }

  v14 = *v2;
  v15 = *(v2 + 1);
  v16 = v3[2];
  v18 = v3[3];
  v17 = v3[4];
  if (!v14)
  {
    v11 = 1.0;
  }

  *a1 = v5;
  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  *(a1 + 48) = v14;
  *(a1 + 56) = v18;
  *(a1 + 64) = v17;
  *(a1 + 72) = 256;
  *(a1 + 80) = v11;
  return result;
}

void sub_1E3BCD5F8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v31 = v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140, &qword_1E42B7E30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF349A8, &qword_1E42C16D8);
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_31_2();
  if ((v6 & 1) != 0 && v4)
  {

LABEL_5:
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    sub_1E4203DB4();
    OUTLINED_FUNCTION_19_5();
    LOBYTE(v31) = v21;
    OUTLINED_FUNCTION_13_22();
    (*(v9 + 32))(v16, v12, v30);
    memcpy(&v16[*(v13 + 36)], v32, 0x70uLL);
    sub_1E3BCED58(&qword_1EE289C98);
    sub_1E3D4174C();
    sub_1E3D414C8(v13, v0);

    sub_1E325F69C(v16, &qword_1ECF2A140);
    (*(v19 + 32))(v31, v0, v17);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  if (v2)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

void sub_1E3BCD8D4()
{
  OUTLINED_FUNCTION_9_4();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34848, &qword_1E42C1440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34850, &unk_1E42C1448);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  if (sub_1E39C408C())
  {
    type metadata accessor for ImageViewModel();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      sub_1E3A9D424();
      v16 = sub_1E4203D54();
      v48 = v1;
      v17 = v16;
      v47 = v18;
      v19 = &v7[*(v4 + 36)];
      sub_1E3EB9BB4(v52);
      v20 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_42_3(v15, v52, v20 & 1, v19);
      v21 = sub_1E375C31C(v52);
      v22.n128_f64[0] = (*(*v3 + 2176))(v21);
      j_nullsub_1(v22, v23, v24, v25);
      OUTLINED_FUNCTION_3();
      sub_1E4202734();

      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240, &unk_1E429B770);
      OUTLINED_FUNCTION_7_3(v19 + *(v26 + 36));
      v27 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34858, &qword_1E42C1458) + 36));
      v28 = v47;
      *v27 = v17;
      v27[1] = v28;
      *(v7 + 4) = v51;
      v29 = v50;
      *v7 = v49;
      *(v7 + 1) = v29;
      if (v48)
      {
        v30 = 1.0;
      }

      else
      {
        v30 = 0.0;
      }

      sub_1E3741EA0(v7, v12, &qword_1ECF34848, &qword_1E42C1440);
      *(v12 + *(v8 + 36)) = v30;
      OUTLINED_FUNCTION_38_2();
      sub_1E3741EA0(v31, v32, v33, v34);
      OUTLINED_FUNCTION_38_2();
      sub_1E3741EA0(v35, v36, v37, v38);
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v8);
      OUTLINED_FUNCTION_10_3();
      return;
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
}

void sub_1E3BCDC00()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StandardLockupCellLayout();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel(319);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_9_95();
        sub_1E3BCEA90(319, v3, v4, MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_4_140();
          sub_1E3BCEA90(319, v6, v7, MEMORY[0x1E697DCC0]);
          if (v8 <= 0x3F)
          {
            OUTLINED_FUNCTION_9_95();
            sub_1E3BCEA90(319, v9, v10, MEMORY[0x1E697DCC0]);
            if (v11 <= 0x3F)
            {
              OUTLINED_FUNCTION_72();
              swift_cvw_initStructMetadataWithLayoutString();
              OUTLINED_FUNCTION_165();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1E3BCDD50()
{
  result = qword_1EE289040;
  if (!qword_1EE289040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347A8, &qword_1E42C1030);
    sub_1E3BCEDE0(&qword_1EE25EB50);
    sub_1E3BCDE0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289040);
  }

  return result;
}

unint64_t sub_1E3BCDE0C()
{
  result = qword_1EE288E80;
  if (!qword_1EE288E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347B0, &qword_1E42C1038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347B8, &qword_1E42C1040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347C0, &qword_1E42C1048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347C8, &qword_1E42C1050);
    sub_1E3BCDF54();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3BCE0F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E80);
  }

  return result;
}

unint64_t sub_1E3BCDF54()
{
  result = qword_1EE289540;
  if (!qword_1EE289540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347C8, &qword_1E42C1050);
    sub_1E3BCE00C();
    sub_1E37AE398(&qword_1EE2887D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289540);
  }

  return result;
}

unint64_t sub_1E3BCE00C()
{
  result = qword_1EE289780;
  if (!qword_1EE289780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347D0, &qword_1E42C1058);
    sub_1E37AE398(&unk_1EE288478);
    sub_1E37AE398(&unk_1EE289218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289780);
  }

  return result;
}

unint64_t sub_1E3BCE0F0()
{
  result = qword_1EE2899E0;
  if (!qword_1EE2899E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347E8, &qword_1E42C1068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347F0, &qword_1E42C1070);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF347F8, &qword_1E42C1078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34800, &qword_1E42C1080);
    sub_1E3BCE268();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3BCEDE0(&qword_1EE288768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899E0);
  }

  return result;
}

unint64_t sub_1E3BCE268()
{
  result = qword_1EE289440;
  if (!qword_1EE289440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34800, &qword_1E42C1080);
    sub_1E3BCE320();
    sub_1E37AE398(&qword_1EE2887D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289440);
  }

  return result;
}

unint64_t sub_1E3BCE320()
{
  result = qword_1EE2894F8;
  if (!qword_1EE2894F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34808, &qword_1E42C1088);
    sub_1E3BCE3D8();
    sub_1E37AE398(&unk_1EE289368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2894F8);
  }

  return result;
}

unint64_t sub_1E3BCE3D8()
{
  result = qword_1EE2896E8;
  if (!qword_1EE2896E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34810, &qword_1E42C1090);
    sub_1E3BCE490();
    sub_1E37AE398(&unk_1EE289310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896E8);
  }

  return result;
}

unint64_t sub_1E3BCE490()
{
  result = qword_1EE289BF8;
  if (!qword_1EE289BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34818, &qword_1E42C1098);
    sub_1E3BCE548();
    sub_1E37AE398(&unk_1EE289370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BF8);
  }

  return result;
}

unint64_t sub_1E3BCE548()
{
  result = qword_1EE2A4AC0[0];
  if (!qword_1EE2A4AC0[0])
  {
    type metadata accessor for StandardLockup.ImageView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A4AC0);
  }

  return result;
}

uint64_t sub_1E3BCE5C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 48))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 40);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E3BCE5FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3BCE6C0()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StandardLockupCellLayout();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_4_140();
      sub_1E3BCEA90(319, v2, v3, MEMORY[0x1E697DCC0]);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

void sub_1E3BCE7D0(__n128 a1)
{
  type metadata accessor for StandardLockupCellLayout();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_9_95();
    sub_1E3BCEA90(319, v2, v3, MEMORY[0x1E69E6720]);
    if (v4 <= 0x3F)
    {
      sub_1E3755B54();
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

void sub_1E3BCE8D8(__n128 a1)
{
  type metadata accessor for StandardLockupCellLayout();
  if (v1 <= 0x3F)
  {
    sub_1E3755B54();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_4_140();
      sub_1E3BCEA90(319, v3, v4, MEMORY[0x1E697DCC0]);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}