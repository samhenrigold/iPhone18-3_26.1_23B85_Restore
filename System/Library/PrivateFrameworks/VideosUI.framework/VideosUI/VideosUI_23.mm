void sub_1E37DE5C0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_45_9(*(v0 + 184));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  OUTLINED_FUNCTION_56_7(v12);
  v13 = sub_1E3E37F30();
  v14 = *(v6 + 16);
  if ((v3 & 0x100) != 0)
  {
    v14(v10, v13, v4);
    v18 = sub_1E41FFC94();
    v19 = sub_1E42067F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v3;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      sub_1E37E113C(v22, v23, v24);
      swift_allocError();
      *v25 = v20;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v26;
      *v22 = v26;
      _os_log_impl(&dword_1E323F000, v18, v19, "FollowLiveUpdatesButton.handleUnfollowRequest failed: %@", v21, 0xCu);
      sub_1E325F69C(v22, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v10, v4);
    type metadata accessor for FollowLiveUpdatesButton(0);
    sub_1E3848650(1);
  }

  else
  {
    v14(v1, v13, v4);
    v15 = sub_1E41FFC94();
    v16 = sub_1E42067E4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_125_0();
      *v17 = 0;
      _os_log_impl(&dword_1E323F000, v15, v16, "FollowLiveUpdatesButton.handleUnfollowRequest success: state changed from 'following' to 'not following'", v17, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v1, v4);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37DE854()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A850, &qword_1E429E5F0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_67_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_48_12(v8, v9, v10, v11, v12, v13, v14, v15, v80);
  v16 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v80 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v80 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v80 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_19_7();
  v34 = *(v0 + 184);
  v82 = v0;
  OUTLINED_FUNCTION_45_9(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  OUTLINED_FUNCTION_56_7(v35);
  if ((v4 & 0x100) != 0)
  {
    switch(v4)
    {
      case 1:
        sub_1E3E37F30();
        OUTLINED_FUNCTION_48_4();
        v59(v26);
        v60 = sub_1E41FFC94();
        v61 = sub_1E42067E4();
        if (OUTLINED_FUNCTION_6_33(v61))
        {
          *OUTLINED_FUNCTION_125_0() = 0;
          OUTLINED_FUNCTION_79_5(&dword_1E323F000, v62, v63, "FollowLiveUpdatesButton.handleFollowRequest failed: Max Target Live Activities. Reverting to 'not following'");
          OUTLINED_FUNCTION_6_0();
        }

        (*(v18 + 8))(v26, v16);
        v64 = v81;
        sub_1E37DF128();
        goto LABEL_20;
      case 2:
        sub_1E3E37F30();
        OUTLINED_FUNCTION_48_4();
        v65(v2);
        v66 = sub_1E41FFC94();
        v67 = sub_1E42067E4();
        if (OUTLINED_FUNCTION_6_33(v67))
        {
          *OUTLINED_FUNCTION_125_0() = 0;
          OUTLINED_FUNCTION_79_5(&dword_1E323F000, v68, v69, "FollowLiveUpdatesButton.handleFollowRequest failed: Max Global Live Activities. Reverting to 'not following'");
          OUTLINED_FUNCTION_6_0();
        }

        (*(v18 + 8))(v2, v16);
        v64 = v81;
        sub_1E37DF37C();
LABEL_20:
        OUTLINED_FUNCTION_47_7();
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
        type metadata accessor for FollowLiveUpdatesButton(0);
        sub_1E379D7E4(v64, v80, &qword_1ECF2A850, &qword_1E429E5F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A870, &qword_1E429E600);
        sub_1E4203904();
        sub_1E325F69C(v64, &qword_1ECF2A850);
        goto LABEL_21;
      case 3:
        break;
      case 4:
        v51 = *(v82 + *(type metadata accessor for FollowLiveUpdatesButton(0) + 64));
        if (FollowLiveUpdatesRequestManager.check(for:)(v51))
        {
          sub_1E3E37F30();
          OUTLINED_FUNCTION_48_4();
          v52 = v16;
          v53(v32);
          v54 = sub_1E41FFC94();
          v55 = sub_1E42067E4();
          if (OUTLINED_FUNCTION_6_33(v55))
          {
            v56 = OUTLINED_FUNCTION_125_0();
            OUTLINED_FUNCTION_9_11(v56);
            OUTLINED_FUNCTION_15_14(&dword_1E323F000, v57, v58, "FollowLiveUpdatesButton.handleFollowRequest failed: XPC Proxy Error. Reverting to 'not following'");
            OUTLINED_FUNCTION_6_0();
          }

          v42 = *(v18 + 8);
          v43 = v32;
        }

        else
        {
          sub_1E3848650(0);
          sub_1E3E37F30();
          OUTLINED_FUNCTION_48_4();
          v52 = v16;
          v74(v29);
          v75 = sub_1E41FFC94();
          v76 = sub_1E42067E4();
          if (OUTLINED_FUNCTION_6_33(v76))
          {
            v77 = OUTLINED_FUNCTION_125_0();
            OUTLINED_FUNCTION_9_11(v77);
            OUTLINED_FUNCTION_15_14(&dword_1E323F000, v78, v79, "FollowLiveUpdatesButton.handleFollowRequest success: state changed from 'not following' to 'following'");
            OUTLINED_FUNCTION_6_0();
          }

          v42 = *(v18 + 8);
          v43 = v29;
        }

        v44 = v52;
        goto LABEL_5;
      default:
        sub_1E3E37F30();
        OUTLINED_FUNCTION_48_4();
        v45(v22);
        v46 = sub_1E41FFC94();
        v47 = sub_1E42067E4();
        if (OUTLINED_FUNCTION_6_33(v47))
        {
          v48 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_9_11(v48);
          OUTLINED_FUNCTION_15_14(&dword_1E323F000, v49, v50, "FollowLiveUpdatesButton.handleFollowRequest failed: Unknown. Reverting to 'not following'");
          OUTLINED_FUNCTION_6_0();
        }

        (*(v18 + 8))(v22, v16);
        type metadata accessor for FollowLiveUpdatesButton(0);
LABEL_21:
        sub_1E3848650(0);
        break;
    }
  }

  else
  {
    sub_1E3E37F30();
    OUTLINED_FUNCTION_48_4();
    v36(v1);
    v37 = sub_1E41FFC94();
    v38 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_6_33(v38))
    {
      v39 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v39);
      OUTLINED_FUNCTION_15_14(&dword_1E323F000, v40, v41, "FollowLiveUpdatesButton.handleFollowRequest: state changed from 'not following' to 'following'");
      OUTLINED_FUNCTION_6_0();
    }

    v42 = *(v18 + 8);
    v43 = v1;
    v44 = v16;
LABEL_5:
    v42(v43, v44);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37DEDE0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_7_49();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_21();
  v5 = sub_1E4203624();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_7();
  sub_1E4203634();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v9 = objc_opt_self();
  if (![v9 sharedInstance])
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_43_10();
  v11 = OUTLINED_FUNCTION_55_7(v10 | 0xA, "yLimitReached.Body");
  v13 = v12;

  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = sub_1E32822E0(v14, v15, v16);
  v18 = OUTLINED_FUNCTION_54_2(v17, MEMORY[0x1E69E6158]);
  v22 = OUTLINED_FUNCTION_44_16(v18, v19, v20, v21);
  sub_1E37DFA1C(v22);
  v23 = [v9 sharedInstance];
  if (!v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = v23;
  OUTLINED_FUNCTION_23();
  sub_1E3741090(0xD000000000000024, v25, v24);
  OUTLINED_FUNCTION_65_1();

  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_54_2(v26, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_1_65();
  sub_1E4203614();
  v27 = OUTLINED_FUNCTION_27_0();
  sub_1E37434B8(v27, v28, v29);

  v30 = [v9 sharedInstance];
  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v31 = v30;
  OUTLINED_FUNCTION_39_12("TV.Button.LiveUpdates.AllowInSettings");
  v33 = v32;

  if (v33)
  {
    OUTLINED_FUNCTION_54_2(v34, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_64_6();
    v35 = swift_allocObject();
    sub_1E37DFCD4(v1, v35 + v17);
    OUTLINED_FUNCTION_32_0();
    sub_1E4203614();

    v36 = OUTLINED_FUNCTION_32_0();
    sub_1E37434B8(v36, v37, v38);

    OUTLINED_FUNCTION_21_25();
    *v3 = 0;
    v39 = type metadata accessor for AlertInfo(0);
    v40 = OUTLINED_FUNCTION_41_18(v39);
    v41(v40);
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1E37DF128()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A968, &qword_1E429E828);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_41();
  sub_1E4203634();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v5 = [objc_opt_self() sharedInstance];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  OUTLINED_FUNCTION_77_2(0xD000000000000023);
  v8 = v7;

  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = sub_1E32822E0(v9, v10, v11);
  v13 = OUTLINED_FUNCTION_53_10(v12, MEMORY[0x1E69E6158]);
  v17 = OUTLINED_FUNCTION_51_8(v13, v14, v15, v16);
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v37 = v1;
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_82_1(35, v19);
  v21 = v20;

  if (!v21)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_53_10(v22, MEMORY[0x1E69E6158]);
  v23 = OUTLINED_FUNCTION_40_11();
  if (!v23)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_80_0(v23);
  v25 = v24;

  if (v25)
  {
    OUTLINED_FUNCTION_53_10(v26, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_1_65();
    sub_1E4203614();
    v27 = OUTLINED_FUNCTION_32_7();
    sub_1E37434B8(v27, v28, v29);

    sub_1E4203624();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    OUTLINED_FUNCTION_22_15();
    *v37 = 2;
    v34 = type metadata accessor for AlertInfo(0);
    v35 = OUTLINED_FUNCTION_42_16(v34);
    v36(v35);
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1E37DF37C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A968, &qword_1E429E828);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_41();
  sub_1E4203634();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v5 = [objc_opt_self() sharedInstance];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  OUTLINED_FUNCTION_77_2(0xD000000000000032);
  v8 = v7;

  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = sub_1E32822E0(v9, v10, v11);
  v13 = OUTLINED_FUNCTION_53_10(v12, MEMORY[0x1E69E6158]);
  v17 = OUTLINED_FUNCTION_51_8(v13, v14, v15, v16);
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v37 = v1;
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_82_1(50, v19);
  v21 = v20;

  if (!v21)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_53_10(v22, MEMORY[0x1E69E6158]);
  v23 = OUTLINED_FUNCTION_40_11();
  if (!v23)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_80_0(v23);
  v25 = v24;

  if (v25)
  {
    OUTLINED_FUNCTION_53_10(v26, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_1_65();
    sub_1E4203614();
    v27 = OUTLINED_FUNCTION_32_7();
    sub_1E37434B8(v27, v28, v29);

    sub_1E4203624();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    OUTLINED_FUNCTION_22_15();
    *v37 = 3;
    v34 = type metadata accessor for AlertInfo(0);
    v35 = OUTLINED_FUNCTION_42_16(v34);
    v36(v35);
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_1E37DF5D0()
{
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  sub_1E37E0EA0();
  v10 = sub_1E4205F14();
  result = sub_1E3763FC8(v10, v11);
  if (result)
  {
    v13 = result;
    sub_1E41FE3C4();

    (*(v2 + 32))(v9, v6, v0);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v14 = result;
      v15 = sub_1E41FE364();
      v16 = sub_1E4205CB4();
      sub_1E37E0EE4(v15, v16, v14);

      return (*(v2 + 8))(v9, v0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1E37DF768()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27_0();

  sub_1E3F23370();
}

void sub_1E37DF7B8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A940, &qword_1E429E7E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25[-v11];
  sub_1E3EB9BB4(v25);
  v13 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v4, v25, 0, v13 & 1, 0, 0, v12);
  v14 = sub_1E375C31C(v25);
  v15 = *(v2 + 48);
  if (v15 && (v16 = (*(*v15 + 1712))(v14), v16 != 13))
  {
    sub_1E3B033CC(v16, v8);
  }

  else
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  sub_1E3B03114(v8, v0);
  sub_1E325F69C(v8, &qword_1ECF2A250);
  OUTLINED_FUNCTION_4_34();
  sub_1E37E0C50(v21, &qword_1ECF2A940, &qword_1E429E7E8, v22);
  OUTLINED_FUNCTION_14_2();
  sub_1E374AD40(v23, &qword_1ECF2A1F8, &qword_1E429E7F0, v24);
  sub_1E4202FA4();
  sub_1E325F69C(v0, &qword_1ECF2A1F8);
  sub_1E325F69C(v12, &qword_1ECF2A940);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37DFA1C(uint64_t a1)
{
  v2 = a1;
  v3 = [objc_opt_self() sharedInstance];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      __break(1u);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_82_1(48, v5);
    OUTLINED_FUNCTION_83();
    if (v1)
    {
LABEL_7:
      sub_1E32822E0(v6, v7, v8);
      sub_1E4202C44();
      return;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_55_7(0xD00000000000003BLL, "tionBar");
  OUTLINED_FUNCTION_83();
  if (v1)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void sub_1E37DFAF0(uint64_t a1)
{
  v2 = a1;
  v3 = [objc_opt_self() sharedInstance];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      __break(1u);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_82_1(49, v5);
    OUTLINED_FUNCTION_83();
    if (v1)
    {
LABEL_7:
      sub_1E32822E0(v6, v7, v8);
      sub_1E4202C44();
      return;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_55_7(0xD00000000000003CLL, "ctivitiesMessage");
  OUTLINED_FUNCTION_83();
  if (v1)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_1E37DFC14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowLiveUpdatesButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E37DFC78(uint64_t a1)
{
  v2 = type metadata accessor for FollowLiveUpdatesButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E37DFCD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowLiveUpdatesButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E37DFD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FollowLiveUpdatesButton(0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_135_0();

  return sub_1E37DC8F8(a1, v2 + v6, a2);
}

uint64_t sub_1E37DFDB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4201A34();
  *a1 = result & 1;
  return result;
}

void sub_1E37DFE4C(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E37E00E0(319, qword_1EE282B40, type metadata accessor for ImageViewModel, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E37E00E0(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1E37E00E0(319, qword_1EE287258, type metadata accessor for TextLayout, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1E37E1190(319, &qword_1ECF2A878, &type metadata for DefaultButton, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1E37E0144();
            if (v6 <= 0x3F)
            {
              sub_1E37E1190(319, &qword_1EE288668, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_1E37E018C(319);
                if (v8 <= 0x3F)
                {
                  sub_1E41FE8D4();
                  if (v9 <= 0x3F)
                  {
                    sub_1E37E01F0(319);
                    if (v10 <= 0x3F)
                    {
                      sub_1E37E00E0(319, &qword_1ECF2A890, type metadata accessor for CGRect, MEMORY[0x1E6981948]);
                      if (v11 <= 0x3F)
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
    }
  }
}

void sub_1E37E00E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E37E0144()
{
  result = qword_1EE23ACD0;
  if (!qword_1EE23ACD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE23ACD0);
  }

  return result;
}

void sub_1E37E018C(uint64_t a1)
{
  if (!qword_1ECF2A880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A850, &qword_1E429E5F0);
    v1 = sub_1E4203924();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF2A880);
    }
  }
}

void sub_1E37E01F0(uint64_t a1)
{
  if (!qword_1ECF2A888)
  {
    type metadata accessor for FollowStateViewModel(255);
    sub_1E37DBDBC();
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF2A888);
    }
  }
}

uint64_t sub_1E37E027C(uint64_t a1)
{
  result = sub_1E4203634();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScoreboardViewModel.ScoreboardState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AlertInfo.AlertType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E37E0460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF46BD0[0];
  if (!qword_1ECF46BD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF46BD0);
  }

  return result;
}

unint64_t sub_1E37E04B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF46CE0[0];
  if (!qword_1ECF46CE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF46CE0);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  type metadata accessor for FollowLiveUpdatesButton(0);
  OUTLINED_FUNCTION_144();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  if (*(v4 + 56))
  {
  }

  v5 = v4 + v0[14];
  v6 = type metadata accessor for AlertInfo(0);
  if (!OUTLINED_FUNCTION_81_1(v6))
  {
    v7 = *(v2 + 20);
    sub_1E4203634();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v5 + v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A870, &qword_1E429E600);

  OUTLINED_FUNCTION_75_1(v0[16]);

  OUTLINED_FUNCTION_75_1(v0[19]);

  return swift_deallocObject();
}

void sub_1E37E06D8()
{
  v0 = type metadata accessor for FollowLiveUpdatesButton(0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_135_0();
  sub_1E37DD0E0();
}

unint64_t sub_1E37E0734()
{
  result = qword_1ECF2A8D8;
  if (!qword_1ECF2A8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A8D0, &qword_1E429E760);
    sub_1E37E07B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A8D8);
  }

  return result;
}

unint64_t sub_1E37E07B8()
{
  result = qword_1ECF2A8E0;
  if (!qword_1ECF2A8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A8E8, &qword_1E429E768);
    sub_1E37E083C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A8E0);
  }

  return result;
}

unint64_t sub_1E37E083C()
{
  result = qword_1ECF2A8F0;
  if (!qword_1ECF2A8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A8F8, &qword_1E429E770);
    sub_1E374AD40(&qword_1ECF2A900, &qword_1ECF2A908, &qword_1E429E778, MEMORY[0x1E697D658]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A8F0);
  }

  return result;
}

uint64_t sub_1E37E08F4()
{
  OUTLINED_FUNCTION_7_49();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E4200EA4();
  OUTLINED_FUNCTION_17_2(v3);

  return sub_1E37DDC0C(v0 + v2);
}

unint64_t sub_1E37E09C4()
{
  result = qword_1ECF2A920;
  if (!qword_1ECF2A920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A8C8, &qword_1E429E758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A8B8, &qword_1E429E748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A8B0, &qword_1E429E740);
    sub_1E374AD40(&qword_1ECF2A918, &qword_1ECF2A8B0, &qword_1E429E740, MEMORY[0x1E6981810]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E374AD40(&qword_1EE288760, &unk_1ECF2A928, &unk_1E429E7C0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A920);
  }

  return result;
}

unint64_t sub_1E37E0B30()
{
  result = qword_1ECF46D78;
  if (!qword_1ECF46D78)
  {
    type metadata accessor for AlertInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF46D78);
  }

  return result;
}

unint64_t sub_1E37E0B98()
{
  result = qword_1EE288CE8;
  if (!qword_1EE288CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A948, &qword_1E429E7F8);
    v3 = sub_1E37E0C50(&qword_1EE289158, &qword_1ECF2A950, &qword_1E429E800, sub_1E37E0CE8);
    sub_1E37E0D3C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288CE8);
  }

  return result;
}

uint64_t sub_1E37E0C50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E37E0CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2831B8[0];
  if (!qword_1EE2831B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2831B8);
  }

  return result;
}

unint64_t sub_1E37E0D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE283108[0];
  if (!qword_1EE283108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE283108);
  }

  return result;
}

void sub_1E37E0D90()
{
  v0 = type metadata accessor for FollowLiveUpdatesButton(0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_135_0();
  sub_1E37DE854();
}

double sub_1E37E0E04(__int16 a1)
{
  v3 = type metadata accessor for FollowLiveUpdatesButton(0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_135_0();

  return sub_1E37DE32C(a1 & 0x1FF, v1 + v4);
}

id sub_1E37E0E74()
{
  type metadata accessor for FollowLiveUpdatesButton(0);

  return sub_1E37DF5D0();
}

unint64_t sub_1E37E0EA0()
{
  result = qword_1ECF2A958;
  if (!qword_1ECF2A958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF2A958);
  }

  return result;
}

id sub_1E37E0EE4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1E4205C44();

  v6 = [a3 openSensitiveURL:a1 withOptions:v5];

  return v6;
}

uint64_t sub_1E37E0F68()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_7_49();
  v4 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5 = *(v4 + *(v3 + 64)) | (*(v4 + *(v3 + 64) + 1) << 8);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1E37E1058;

  return sub_1E37DE4A0(v6, v7, v8, v4, v5);
}

uint64_t sub_1E37E1058()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

unint64_t sub_1E37E113C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2A960;
  if (!qword_1ECF2A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A960);
  }

  return result;
}

void sub_1E37E1190(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_53_10(uint64_t a1, uint64_t a2)
{

  return sub_1E4202C44();
}

uint64_t OUTLINED_FUNCTION_56_7(uint64_t a1)
{

  return sub_1E4203904();
}

uint64_t OUTLINED_FUNCTION_57_6()
{

  return sub_1E37DFC14(v0, v1);
}

uint64_t OUTLINED_FUNCTION_77_2@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3741090(a1 + 2, (v1 - 32) | 0x8000000000000000, v2);
}

void OUTLINED_FUNCTION_79_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_80_0(void *a1)
{

  return sub_1E3741090(19279, 0xE200000000000000, a1);
}

uint64_t sub_1E37E12D0()
{
  result = sub_1E4205ED4();
  qword_1ECF71240 = result;
  return result;
}

uint64_t sub_1E37E1308()
{
  result = sub_1E4205ED4();
  qword_1EE2AA790 = result;
  return result;
}

uint64_t *sub_1E37E1340()
{
  if (qword_1EE28E6E8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA790;
}

uint64_t sub_1E37E1390()
{
  result = sub_1E4205ED4();
  qword_1EE2AA788 = result;
  return result;
}

uint64_t *sub_1E37E13C8()
{
  if (qword_1EE28E6E0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA788;
}

unint64_t sub_1E37E1424()
{
  result = qword_1EE279848;
  if (!qword_1EE279848)
  {
    type metadata accessor for TemplateViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE279848);
  }

  return result;
}

uint64_t sub_1E37E1484@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1E3C0EFB8();
  v5 = v4;
  v19 = v6 & 1;
  type metadata accessor for ViewMetricsRecorder();
  v7 = sub_1E3FEFA68();
  type metadata accessor for TemplateViewModel(0);
  sub_1E37E1424();

  v8 = sub_1E42010C4();
  v10 = v9;
  sub_1E39C1F18();
  v12 = v11;
  result = sub_1E32AE9B0(v11);
  if (result)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, v12);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    type metadata accessor for CollectionViewModel();
    v14 = swift_dynamicCastClass();
    if (!v14)
    {
    }
  }

  else
  {

    v14 = 0;
  }

  v15 = type metadata accessor for ViewModel();
  v16 = j___s8VideosUI9ViewModelCMa(v15);
  v17 = sub_1E39C1CF8(74, v16, v15);
  result = sub_1E32AE9B0(v17);
  if (!result)
  {

    v18 = 0;
    goto LABEL_14;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1E6911E60](0, v17);
    goto LABEL_12;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 32);

LABEL_12:

LABEL_14:
    *a2 = v8;
    *(a2 + 8) = v10;
    *(a2 + 16) = v3;
    *(a2 + 24) = v5;
    *(a2 + 32) = v19;
    *(a2 + 40) = v14;
    *(a2 + 48) = v18;
    *(a2 + 56) = 0;
    *(a2 + 64) = v7;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E37E16B0@<X0>(uint64_t a1@<X8>)
{
  v6 = v1;
  v198 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A970, &qword_1E429E840);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v186 = v9;
  v187 = sub_1E42045D4();
  OUTLINED_FUNCTION_0_10();
  v185 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  v184 = v12;
  v13 = sub_1E4204624();
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A978, &qword_1E429E848);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v183 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A980, &qword_1E429E850);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A988, &qword_1E429E858);
  OUTLINED_FUNCTION_0_10();
  v181 = v21;
  v182 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v192 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A990, &qword_1E429E860);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v180 = v26;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A998, &qword_1E429E868);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v178 - v28;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A9A0, &qword_1E429E870);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v190 = v31;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A9A8, &qword_1E429E878);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v179 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A9B0, &qword_1E429E880);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  v191 = v36;
  v37 = v1[1];
  v223[3] = &unk_1F5D5CF88;
  v223[4] = &off_1F5D5C718;
  LOBYTE(v223[0]) = 2;
  v38 = j__OUTLINED_FUNCTION_18();
  v39 = sub_1E39C29F0(v223, v38 & 1);
  v40 = __swift_destroy_boxed_opaque_existential_1(v223);
  v193 = v6[5];
  v194 = v6;
  v196 = v29;
  v197 = v24;
  if (v193)
  {
    v192 = v34;
    if (v39)
    {
      v41 = v193;

      v43 = (*(*v37 + 392))(v42);
      v44 = 0.0;
      if (v43)
      {
        OUTLINED_FUNCTION_47_0();
        v46 = *(v45 + 200);

        *&v48 = COERCE_DOUBLE(v46(v47));
        LOBYTE(v46) = v49;

        if ((v46 & 1) == 0 || (OUTLINED_FUNCTION_47_0(), v51 = *(v50 + 224), v52 = , *&v48 = COERCE_DOUBLE(v51(v52)), LOBYTE(v51) = v53, , (v51 & 1) == 0))
        {
          v44 = *&v48;
        }
      }

      if (!(*(*v41 + 392))() || (OUTLINED_FUNCTION_30(), v55 = (*(v54 + 984))(), v57 = v56, , (v57 & 1) != 0) || v55 == 21)
      {
        type metadata accessor for LayoutGrid();
        sub_1E3A258E4(v44);
      }

      else
      {
        v58 = *MEMORY[0x1E69DDCE0];
        v59 = *(MEMORY[0x1E69DDCE0] + 8);
        v60 = *(MEMORY[0x1E69DDCE0] + 16);
        v61 = *(MEMORY[0x1E69DDCE0] + 24);
      }

      v99 = sub_1E3952BE0(v58, v59, v60, v61);
      if (v43 && (OUTLINED_FUNCTION_47_0(), v101 = *(v100 + 176), v102 = , v101(v218, v102), v3 = *v218, v4 = *&v218[1], v5 = *&v218[2], v103 = *&v218[3], , (v219 & 1) == 0))
      {
        *&v106 = sub_1E3952BE0(v3, v4, v5, v103);
        v105 = 0;
        v104 = v106;
      }

      else
      {
        v104 = 0;
        v105 = 1;
      }

      v107 = sub_1E4149E0C(v104, v105, v44 - v99);
      if (v43)
      {
        OUTLINED_FUNCTION_47_0();
        v109 = *(v108 + 328);

        v111 = v109(v110);
        v113 = v112;

        v114 = *(*v43 + 352);

        v116 = v114(v115);
        v118 = v117;

        if (v118)
        {
          v119 = 0;
        }

        else
        {
          v119 = v116;
        }

        if (v113)
        {
          v111 = 0;
        }
      }

      else
      {
        v119 = 0;
        v111 = 0;
      }

      j__OUTLINED_FUNCTION_51_1();
      j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_25_20();
      v120 = OUTLINED_FUNCTION_37_13();
      sub_1E3EB9C0C(v120, v121, v122, *&v44, v111, 0, v123, 2, v124, v174, 1, 0, 1, v175, v176[0], v176[1], v176[2]);
      sub_1E375C2C0(v220, v223);
      v125 = j__OUTLINED_FUNCTION_18();
      v126 = j__OUTLINED_FUNCTION_18();
      v177 = j__OUTLINED_FUNCTION_51_1() & 1;
      OUTLINED_FUNCTION_18_15();
      OUTLINED_FUNCTION_48_13(v127, v128, v129, v130, v131, 1, 0, 0, 256, 3, 0, v125 & 1, v126 & 1, v177);
      memcpy(v199, v221, 0x60uLL);
      memcpy(v213, v222, sizeof(v213));
      v214 = 0;
      memcpy(v226, v221, sizeof(v226));
      v227 = v44;
      v228 = v119;
      v229 = 0;
      memcpy(v230, v222, sizeof(v230));
      sub_1E375C1CC(v226, v223);
      v132 = j__OUTLINED_FUNCTION_18();
      v133 = j__OUTLINED_FUNCTION_18();
      j_j__OUTLINED_FUNCTION_5_8();
      OUTLINED_FUNCTION_9_10();
      j__OUTLINED_FUNCTION_51_1();
      v134 = j__OUTLINED_FUNCTION_18();
      v135 = v134;
      v136 = sub_1E3CBD2B8(v134);
      v137 = j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_5_8();
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_18_15();
      sub_1E3EBA150(v143, v138, v139, v140, v141, v132, v133, 0, v142, v144, v145, v146, v147, v148, v149, v150, v151, 0, 1, v135 & 1, v136, v137 & 1);
      memcpy(v212, v223, sizeof(v212));
      v210[0] = v224[0];
      *(v210 + 3) = *(v224 + 3);
      memcpy(v209, v225, sizeof(v209));
      v211 = 0;
      type metadata accessor for CollectionLayoutFactory();
      sub_1E3C11D38(v193, v152, v153, v154, v155, v215);
      v156.n128_u64[0] = v215[0];
      v157.n128_u64[0] = v215[1];
      v158.n128_u64[0] = v215[2];
      v159.n128_u64[0] = v215[3];
      j_nullsub_1(v156, v157, v158, v159);
      OUTLINED_FUNCTION_9_10();
      sub_1E375C31C(v220);

      memcpy(v215, v199, 0x60uLL);
      *&v215[12] = v44;
      v215[13] = v119;
      v216 = v214;
      memcpy(v217, v213, sizeof(v217));
      sub_1E37E6F2C(v215);
      memcpy(v199, v212, sizeof(v199));
      v200 = v44;
      v201 = v119;
      v202 = v211;
      *v203 = v210[0];
      *&v203[3] = *(v210 + 3);
      v204 = v107;
      v205 = v3;
      v206 = v4;
      v207 = v5;
      memcpy(v208, v209, sizeof(v208));
      v160 = sub_1E4203D94();
      v161 = v179;
      *v179 = v160;
      *(v161 + 8) = v162;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AA58, &qword_1E429E8F0);
      sub_1E37E27E0();
      sub_1E375B760(v199);
      sub_1E3743538(v161, v190, &qword_1ECF2A9A8, &qword_1E429E878);
      swift_storeEnumTagMultiPayload();
      v163 = OUTLINED_FUNCTION_75();
      __swift_instantiateConcreteTypeFromMangledNameV2(v163, v164);
      OUTLINED_FUNCTION_17_5();
      sub_1E374AD40(v165, &qword_1ECF2A9A8, &qword_1E429E878, v166);
      OUTLINED_FUNCTION_16_22();
      sub_1E374AD40(v167, &unk_1ECF2AA38, &unk_1E429E8E0, v168);
      v98 = v191;
      sub_1E4201F44();
      sub_1E325F69C(v161, &qword_1ECF2A9A8);
    }

    else
    {
      OUTLINED_FUNCTION_64_4();
      v87 = swift_allocObject();
      v88 = v194;
      memcpy((v87 + 16), v194, 0x48uLL);
      *(v87 + 88) = v193;
      v89 = v190;
      *v190 = sub_1E37E6314;
      v89[1] = v87;
      swift_storeEnumTagMultiPayload();
      swift_retain_n();
      sub_1E37E6500(v88, v223);
      v90 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v90, v91);
      OUTLINED_FUNCTION_17_5();
      sub_1E374AD40(v92, v93, v94, v95);
      OUTLINED_FUNCTION_16_22();
      sub_1E374AD40(v96, &unk_1ECF2AA38, &unk_1E429E8E0, v97);
      v98 = v191;
      sub_1E4201F44();
    }

    v81 = &qword_1ECF2A9B0;
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v169, v170, v171, v172);
    swift_storeEnumTagMultiPayload();
    sub_1E37E60F8();
    sub_1E37E61DC();
    sub_1E4201F44();

    v86 = v98;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v40);
    sub_1E4202704();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A9B8, &qword_1E429E888);
    sub_1E37E5E4C();
    v62 = sub_1E4200AD4();
    v63 = (*(*v37 + 392))(v62);
    v64 = [objc_opt_self() isVision];
    v65 = sub_1E37E6048();
    sub_1E38838AC(v63, v64, 2, v18, v65, v192);

    sub_1E325F69C(v2, &qword_1ECF2A980);
    v66 = MEMORY[0x1E69E7CC0];
    sub_1E4205CB4();
    sub_1E4204614();
    sub_1E37E5C70(v66);
    v67 = v183;
    sub_1E4204504();
    v68 = sub_1E4204514();
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v68);
    v69 = MetricsJetEngine.shared.unsafeMutableAddressor();
    v70 = *((*MEMORY[0x1E69E7D40] & **v69) + 0x68);
    v71 = *v69;
    v72 = v184;
    v70();

    v73 = v194[8];
    (*(*v73 + 176))();
    v74 = sub_1E41FF594();
    v75 = v186;
    __swift_storeEnumTagSinglePayload(v186, 1, 1, v74);
    v223[0] = v18;
    v223[1] = v65;
    OUTLINED_FUNCTION_2_2();
    swift_getOpaqueTypeConformance2();
    v76 = v180;
    v77 = v182;
    v78 = v192;
    sub_1E4202C74();
    swift_unknownObjectRelease();
    sub_1E325F69C(v75, &qword_1ECF2A970);
    (*(v185 + 8))(v72, v187);
    sub_1E325F69C(v67, &qword_1ECF2A978);
    (*(v181 + 8))(v78, v77);
    KeyPath = swift_getKeyPath();
    v80 = (v76 + *(v197 + 36));
    *v80 = KeyPath;
    v80[1] = v73;
    v81 = &qword_1ECF2A990;
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v82, v83, v84, v85);
    swift_storeEnumTagMultiPayload();
    sub_1E37E60F8();
    sub_1E37E61DC();

    sub_1E4201F44();
    v86 = v76;
  }

  return sub_1E325F69C(v86, v81);
}

uint64_t sub_1E37E262C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_1E4176B88(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_1E37E2684(uint64_t (*a1)(void))
{
  type metadata accessor for BaseImpressionManager();
  (*(**(v1 + 64) + 176))();
  v3 = a1();
  swift_unknownObjectRelease();
  return v3;
}

void sub_1E37E27E0()
{
  OUTLINED_FUNCTION_9_4();
  v168 = v4;
  v170 = v5;
  v7 = v6;
  LODWORD(v169) = v8;
  v163 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB00, &qword_1E429EB38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v153 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB08, &qword_1E429EB40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v153 - v16;
  sub_1E4202434();
  OUTLINED_FUNCTION_0_10();
  v164 = v19;
  v165 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_3();
  v162 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB10, &qword_1E429EB48);
  OUTLINED_FUNCTION_0_10();
  v156 = v22;
  v157 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v166 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB18, &qword_1E429EB50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v158 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB20, &qword_1E429EB58);
  OUTLINED_FUNCTION_0_10();
  v159 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v167 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB28, &qword_1E429EB60);
  OUTLINED_FUNCTION_0_10();
  v161 = v33;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44();
  v160 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB30, &qword_1E429EB68);
  v37 = OUTLINED_FUNCTION_17_2(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_5();
  v172 = v38;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v39);
  v171 = v153 - v40;
  if ((v169 & 1) == 0)
  {
    memcpy(v180, v170, sizeof(v180));
    nullsub_1();
    memcpy(v181, v180, sizeof(v181));
    sub_1E3A546A4(v7, v181, 0, 0, v13);
    v56 = *(v7 + 16);
    v57 = *(v7 + 24);
    v58 = &v13[*(v10 + 52)];
    *v58 = v56;
    *(v58 + 1) = v57;
    sub_1E3743538(v13, v17, &qword_1ECF2AB00, &qword_1E429EB38);
    swift_storeEnumTagMultiPayload();
    v59 = sub_1E37E6B84();

    *&v179[0] = v25;
    *(&v179[0] + 1) = v59;
    OUTLINED_FUNCTION_2_2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v179[0] = v28;
    *(&v179[0] + 1) = OpaqueTypeConformance2;
    OUTLINED_FUNCTION_15_33();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_69();
    sub_1E374AD40(v61, &qword_1ECF2AB00, &qword_1E429EB38, v62);
    sub_1E4201F44();
    v63 = OUTLINED_FUNCTION_57();
    sub_1E325F69C(v63, v64);
    goto LABEL_29;
  }

  v41 = v14;
  v42 = v170;
  v169 = v25;
  v153[0] = v28;
  v153[1] = v41;
  v154 = v17;
  v155 = v10;
  OUTLINED_FUNCTION_26();
  v44 = (*(v43 + 392))();
  if (v44 && (OUTLINED_FUNCTION_12_6(), v46 = *(v45 + 1176), v47 = , v48 = v46(v47), v50 = v49, , (v50 & 1) == 0))
  {
    v55 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_26();
    v52 = (*(v51 + 1040))();
    if (v52)
    {
      v53 = v52;
      if (sub_1E32AE9B0(v52))
      {
        if ((v53 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](0, v53);
        }

        else
        {
          if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }
        }

        v181[3] = &unk_1F5D5D888;
        v181[4] = &off_1F5D5C918;
        LOBYTE(v181[0]) = 2;
        v48 = sub_1E39C2AB0(v181);
        v55 = v54;

        __swift_destroy_boxed_opaque_existential_1(v181);
        goto LABEL_14;
      }
    }

    v48 = 0;
    v55 = 1;
  }

LABEL_14:
  type metadata accessor for ViewModel();
  sub_1E40B99B8();
  if (v65)
  {
    v66 = v65;
  }

  else
  {
    v66 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v65);
  v153[-6] = v48;
  LOBYTE(v153[-5]) = v55 & 1;
  v153[-4] = v66;
  v153[-3] = v42;
  v151 = v44;
  sub_1E4202704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB68, &qword_1E429EB88);
  sub_1E37E6CD4();
  sub_1E4200AD4();

  if (v44 && (OUTLINED_FUNCTION_12_6(), v68 = *(v67 + 152), v69 = , v68(v181, v69), v0 = v181[0], v1 = v181[1], v2 = v181[2], v3 = v181[3], , (v181[4] & 1) == 0))
  {
    v70.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v70, v71, v72, v73);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v74 = v158;
  v170 = v44;
  v75 = sub_1E4202734();
  v76 = (*(v156 + 32))(v74, v166, v157);
  v77 = v169;
  v78 = v74 + *(v169 + 36);
  *v78 = v75;
  *(v78 + 8) = v0;
  *(v78 + 16) = v1;
  *(v78 + 24) = v2;
  *(v78 + 32) = v3;
  *(v78 + 40) = 0;
  if ((*(*v7 + 624))(v76))
  {
    OUTLINED_FUNCTION_30();
    v80 = (*(v79 + 392))();
  }

  else
  {
    v80 = 0;
  }

  v81 = v162;
  v82 = sub_1E37E6B84();
  sub_1E38838AC(v80, 2u, 2, v77, v82, v167);

  sub_1E325F69C(v74, &qword_1ECF2AB18);
  sub_1E4201F94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB88, &unk_1E42D97B0);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1E4299720;
  v84 = sub_1E4202704();
  *(v83 + 32) = v84;
  v85 = sub_1E42026E4();
  *(v83 + 33) = v85;
  sub_1E42026F4();
  sub_1E42026F4();
  if (sub_1E42026F4() != v84)
  {
    sub_1E42026F4();
  }

  sub_1E42026F4();
  if (sub_1E42026F4() != v85)
  {
    sub_1E42026F4();
  }

  v86 = v154;
  *&v180[0] = v169;
  *(&v180[0] + 1) = v82;
  OUTLINED_FUNCTION_2_2();
  v87 = swift_getOpaqueTypeConformance2();
  v88 = v160;
  v89 = v153[0];
  v90 = v167;
  sub_1E4203084();
  (*(v164 + 8))(v81, v165);
  (*(v159 + 8))(v90, v89);
  v91 = v161;
  (*(v161 + 16))(v86, v88, v32);
  swift_storeEnumTagMultiPayload();
  *&v180[0] = v89;
  *(&v180[0] + 1) = v87;
  OUTLINED_FUNCTION_15_33();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_69();
  sub_1E374AD40(v92, v93, v94, v95);
  OUTLINED_FUNCTION_43_11();
  sub_1E4201F44();

  (*(v91 + 8))(v88, v32);
LABEL_29:
  v96 = v168;
  v97 = *(v168 + 48);
  if (!v97)
  {
LABEL_33:
    v155 = 0;
    v156 = 0;
    goto LABEL_34;
  }

  *(&v180[1] + 1) = &unk_1F5D5DAC8;
  *&v180[2] = &off_1F5D5C998;
  LOBYTE(v180[0]) = 19;

  v98 = j__OUTLINED_FUNCTION_18();
  v99 = sub_1E39C29F0(v180, v98 & 1);
  __swift_destroy_boxed_opaque_existential_1(v180);
  if ((v99 & 1) == 0)
  {

    goto LABEL_33;
  }

  v100 = sub_1E3F864C8(v97);
  v156 = v101;

  v155 = v100;

LABEL_34:
  if (*(v96 + 56))
  {
    v170 = sub_1E4201D44();
    v178 = 0;
    v169 = sub_1E4203684();
    sub_1E4203DA4();
    sub_1E4200D94();
    *(v173 + 6) = v183;
    *(&v173[1] + 6) = v184;
    *(&v173[2] + 6) = v185;
    sub_1E4201C14();
    v152 = 256;
    v151 = 0;
    v102 = sub_1E4202C24();
    v104 = v103;
    v106 = v105;
    sub_1E4202A64();
    sub_1E4202C04();
    v167 = v107;

    sub_1E37434B8(v102, v104, v106 & 1);

    *&v180[0] = sub_1E4203684();
    v108 = sub_1E4202BA4();
    v110 = v109;
    v112 = v111;
    v168 = v113;
    v114 = OUTLINED_FUNCTION_75();
    sub_1E37434B8(v114, v115, v116);

    v117 = v169;
    *&v179[0] = v169;
    WORD4(v179[0]) = 256;
    *(v179 + 10) = v173[0];
    *(&v179[1] + 10) = v173[1];
    *(&v179[2] + 10) = v173[2];
    *(&v179[3] + 1) = *(&v173[2] + 14);
    v182 = v112 & 1;
    v176 = v179[2];
    v177 = v179[3];
    v174 = v179[0];
    v175 = v179[1];
    sub_1E3743538(v179, v180, &qword_1ECF2ABA8, &unk_1E429EBE0);
    v118 = OUTLINED_FUNCTION_39_0();
    sub_1E37E6F1C(v118, v119, v112 & 1);
    v120 = v168;

    v121 = OUTLINED_FUNCTION_39_0();
    sub_1E37434B8(v121, v122, v112 & 1);

    *&v180[0] = v117;
    WORD4(v180[0]) = 256;
    *(v180 + 10) = v173[0];
    *(&v180[1] + 10) = v173[1];
    *(&v180[2] + 10) = v173[2];
    *(&v180[3] + 1) = *(&v173[2] + 14);
    sub_1E325F69C(v180, &qword_1ECF2ABA8);
    v179[0] = v174;
    v179[1] = v175;
    v179[2] = v176;
    v179[3] = v177;
    *&v179[4] = v108;
    *(&v179[4] + 1) = v110;
    LOBYTE(v179[5]) = v112 & 1;
    DWORD1(v179[5]) = *(&v183 + 3);
    *(&v179[5] + 1) = v183;
    *(&v179[5] + 1) = v120;
    v180[2] = v176;
    v180[3] = v177;
    v180[0] = v174;
    v180[1] = v175;
    *&v180[4] = v108;
    *(&v180[4] + 1) = v110;
    LOBYTE(v180[5]) = v112 & 1;
    DWORD1(v180[5]) = *(&v183 + 3);
    *(&v180[5] + 1) = v183;
    *(&v180[5] + 1) = v120;
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v123, v124, v125, v126);
    sub_1E325F69C(v180, &unk_1ECF2AB60);
    v127 = *(&v179[0] + 1);
    v128 = *&v179[0];
    v161 = *(&v179[1] + 1);
    v162 = *&v179[1];
    v159 = *(&v179[2] + 1);
    v160 = *&v179[2];
    v168 = *(&v179[3] + 1);
    v169 = *&v179[3];
    v166 = *(&v179[4] + 1);
    v167 = *&v179[4];
    v164 = *(&v179[5] + 1);
    v165 = *&v179[5];
    v129 = v178;
  }

  else
  {
    v169 = 0;
    v170 = 0;
    v128 = 0;
    v127 = 0;
    v161 = 0;
    v162 = 0;
    v159 = 0;
    v160 = 0;
    v167 = 0;
    v168 = 0;
    v165 = 0;
    v166 = 0;
    v164 = 0;
    v129 = 0;
  }

  v158 = v129;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v130, v131, v132, v133);
  v134 = v163;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v135, v136, v137, v138);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB50, &qword_1E429EB70);
  v140 = (v134 + *(v139 + 48));
  v141 = v156;
  *v140 = v155;
  v140[1] = v141;
  v157 = *(v139 + 64);
  v179[0] = v170;
  *&v179[1] = v129;
  *(&v179[1] + 1) = v128;
  v142 = v161;
  v143 = v162;
  *&v179[2] = v127;
  *(&v179[2] + 1) = v162;
  v145 = v159;
  v144 = v160;
  *&v179[3] = v161;
  *(&v179[3] + 1) = v160;
  *&v179[4] = v159;
  *(&v179[4] + 1) = v169;
  *&v179[5] = v168;
  *(&v179[5] + 1) = v167;
  *&v179[6] = v166;
  *(&v179[6] + 1) = v165;
  *&v179[7] = v164;
  v146 = OUTLINED_FUNCTION_57();
  sub_1E37E6C3C(v146);
  sub_1E3743538(v179, v180, &qword_1ECF2AB58, &qword_1E429EB78);
  v147 = OUTLINED_FUNCTION_57();
  sub_1E37E6C80(v147, v148);
  memcpy((v134 + v157), v179, 0x78uLL);
  sub_1E325F69C(v171, &qword_1ECF2AB30);
  v180[0] = v170;
  *&v180[1] = v158;
  *(&v180[1] + 1) = v128;
  *&v180[2] = v127;
  *(&v180[2] + 1) = v143;
  *&v180[3] = v142;
  *(&v180[3] + 1) = v144;
  *&v180[4] = v145;
  *(&v180[4] + 1) = v169;
  *&v180[5] = v168;
  *(&v180[5] + 1) = v167;
  *&v180[6] = v166;
  *(&v180[6] + 1) = v165;
  *&v180[7] = v164;
  sub_1E325F69C(v180, &qword_1ECF2AB58);
  v149 = OUTLINED_FUNCTION_57();
  sub_1E37E6C80(v149, v150);
  sub_1E325F69C(v172, &qword_1ECF2AB30);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E37E36F8()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v22 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB80, &unk_1E429EB90);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  *v0 = sub_1E4201D44();
  *(v0 + 8) = v10;
  *(v0 + 16) = v8 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB90, &qword_1E429EBA0);
  v25 = v6;
  swift_getKeyPath();
  v14 = swift_allocObject();
  memcpy((v14 + 16), v4, 0x150uLL);

  sub_1E37E6E1C(v4, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB98, &unk_1E429EBD0);
  sub_1E374AD40(&qword_1EE23B548, &unk_1ECF2C790, &qword_1E42996A0, MEMORY[0x1E69E6338]);
  sub_1E375BEF4();
  sub_1E37E6E78();
  v15 = sub_1E4203B34();
  if (v2 && ((*(*v2 + 176))(v23, v15), (v24 & 1) == 0))
  {
    v18.n128_u64[0] = v23[2];
    v19.n128_u64[0] = v23[3];
    v16.n128_u64[0] = v23[0];
    v17.n128_u64[0] = v23[1];
    j_nullsub_1(v16, v17, v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v20 = sub_1E4202734();
  sub_1E3741EA0(v0, v22, &qword_1ECF2AB80, &unk_1E429EB90);
  v21 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB68, &qword_1E429EB88) + 36));
  *v21 = v20;
  OUTLINED_FUNCTION_11_4(v21);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E37E3944()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AA00, &qword_1E429E8A8);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_2();
  v7 = v0[1];
  v8 = (*(*v7 + 464))();
  v9 = MEMORY[0x1E69E7CC0];
  v56 = v2;
  if (v8)
  {
    v10 = v8;
    v54 = v7;
    v55 = v1;
    v59 = MEMORY[0x1E69E7CC0];
    v57 = sub_1E32AE9B0(v8);
    sub_1E37E6500(v2, v58);
    sub_1E37E6500(v2, v58);
    for (i = 0; ; ++i)
    {
      if (v57 == i)
      {
        v2 = v56;
        sub_1E37E6F80(v56);

        sub_1E37E6F80(v56);
        v9 = v59;
        v1 = v55;
        v7 = v54;
        goto LABEL_36;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E6911E60](i, v10);
      }

      else
      {
        if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v12 = *(v10 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      v13 = objc_opt_self();
      v14 = [v13 sharedInstance];
      v15 = [v14 multiviewPlayerCount];

      v16 = [v13 sharedInstance];
      v17 = [v16 maxMultiviewPlayerCount];

      v18 = (*(*v12 + 544))();
      v19 = v18;
      if (!v18)
      {
        break;
      }

      v20 = [v18 selectEventDataSource];

      if (!v20)
      {
        v19 = 0;
        goto LABEL_15;
      }

      v19 = [v20 action];

      if (!v19)
      {
        break;
      }

      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      v22 = v21;
      if (v21)
      {
        v23 = [v21 playType];
        v20 = sub_1E4205F14();
        v19 = v24;
      }

      else
      {

        v20 = 0;
        v19 = 0;
      }

LABEL_16:
      v25 = sub_1E4205F14();
      if (!v19)
      {

        goto LABEL_27;
      }

      if (v20 == v25 && v19 == v26)
      {
      }

      else
      {
        v28 = sub_1E42079A4();

        if ((v28 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      if (v15 == v17)
      {

LABEL_29:

        continue;
      }

LABEL_27:
      v58[3] = &unk_1F5D5D0A8;
      v58[4] = &off_1F5D5C758;
      LOBYTE(v58[0]) = 16;
      v29 = j__OUTLINED_FUNCTION_18();
      v30 = sub_1E39C29F0(v58, v29 & 1);
      __swift_destroy_boxed_opaque_existential_1(v58);
      if (v30)
      {
        v31 = sub_1E3C0EF18(*(v56 + 16), *(v56 + 24), *(v56 + 32));

        if (v31)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }

      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    v20 = 0;
LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

LABEL_36:
  v32 = (*(*v7 + 392))();
  v33 = memcpy(v58, v2, sizeof(v58));
  sub_1E37E6668(v33, v34, v35);
  v36 = sub_1E3884090(v32);
  if (v32)
  {
    OUTLINED_FUNCTION_26();
    v38 = *(v37 + 1152);

    v40 = v38(v39);
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 1;
  }

  *v1 = v36;
  *(v1 + 8) = v40;
  *(v1 + 16) = v42 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ABB8, &qword_1E429EBF8);
  v43 = sub_1E32AE9B0(v9);
  if (v43 < 0)
  {
    goto LABEL_47;
  }

  v59 = 0;
  v60 = v43;
  swift_getKeyPath();
  OUTLINED_FUNCTION_64_4();
  v44 = swift_allocObject();
  *(v44 + 16) = v9;
  memcpy((v44 + 24), v56, 0x48uLL);

  sub_1E37E6500(v56, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0, &qword_1E4297FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ABC0, &qword_1E429EC00);
  sub_1E37432DC();
  sub_1E37E6FBC();
  sub_1E4203B34();

  if (v32 && (OUTLINED_FUNCTION_26(), v46 = *(v45 + 176), v47 = , v46(v58, v47), , (v58[4] & 1) == 0))
  {
    v48.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v48, v49, v50, v51);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v52 = sub_1E4202734();

  sub_1E3741EA0(v1, v4, &qword_1ECF2AA00, &qword_1E429E8A8);
  v53 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A9F0, &qword_1E429E8A0) + 36));
  *v53 = v52;
  OUTLINED_FUNCTION_11_4(v53);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E37E402C(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_opt_self() defaultCenter];
  v6 = v5;
  if (*a1 != -1)
  {
    swift_once();
    v5 = v6;
  }

  [v5 postNotificationName:*a2 object:0];
}

void sub_1E37E40D0()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v30 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ABD0, &qword_1E429EC08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC00, &qword_1E429EC20);
  OUTLINED_FUNCTION_0_10();
  v28 = v12;
  v29 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v14 = *v7;
  sub_1E34AF4E4(v14, (v5 & 0xC000000000000001) == 0, v5);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1E6911E60](v14, v5);
  }

  else
  {
    v15 = *(v5 + 8 * v14 + 32);
  }

  sub_1E37E435C(v15, v3, v1);
  OUTLINED_FUNCTION_26();
  v16 += 49;
  v17 = *v16;
  v18 = (*v16)();
  v19 = sub_1E37E69A8(&qword_1ECF2ABD8, &qword_1ECF2ABD0, &qword_1E429EC08, sub_1E37E70B8);
  sub_1E38838AC(v18, 2u, 2, v9, v19, v0);

  v20 = sub_1E325F69C(v1, &qword_1ECF2ABD0);
  if ((v17)(v20) && (OUTLINED_FUNCTION_30(), (*(v21 + 152))(&v31), , (v32 & 1) == 0))
  {
    v22.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v22, v23, v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v26 = sub_1E4202734();

  (*(v28 + 32))(v30, v0, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ABC0, &qword_1E429EC00);
  OUTLINED_FUNCTION_40_12();
  *v27 = v26;
  OUTLINED_FUNCTION_11_4(v27);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E37E435C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v103 = a3;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8, &qword_1E4297EB0);
  OUTLINED_FUNCTION_0_10();
  v92 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v96 = v7;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC08, &qword_1E429EC28);
  OUTLINED_FUNCTION_0_10();
  v94 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v93 = v10;
  sub_1E4204874();
  OUTLINED_FUNCTION_0_10();
  v98 = v12;
  v99 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  v97 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v89 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v86 - v18;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC10, &qword_1E429EC38);
  OUTLINED_FUNCTION_0_10();
  v91 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v90 = v22;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC18, &qword_1E429EC40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v86 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC20, &qword_1E429EC48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_31_2();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ABF8, &qword_1E429EC18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v86 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878, &unk_1E429C0E0);
  OUTLINED_FUNCTION_0_10();
  v33 = v32;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v86 - v35;
  v37 = a1;
  v38 = *(a1 + 98);
  if (sub_1E385051C(v38))
  {
    v43 = swift_allocObject();
    v44 = v95;
    memcpy((v43 + 16), v95, 0x48uLL);
    sub_1E37E6500(v44, v106);
    sub_1E3EC24F4(v37, 0, sub_1E37E7270, v43);

    (*(v33 + 16))(v3, v36, v31);
    v45 = swift_storeEnumTagMultiPayload();
    v46 = OUTLINED_FUNCTION_3_30(v45);
    v49 = sub_1E37E6538(v46, v47, v48);
    *v106 = &unk_1F5D57900;
    *&v106[8] = v49;
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_39_0();
    sub_1E4201F44();
    sub_1E3743538(v30, v25, &qword_1ECF2ABF8, &qword_1E429EC18);
    swift_storeEnumTagMultiPayload();
    v50 = sub_1E37E71A0();
    v51 = OUTLINED_FUNCTION_18_2(v50);
    *v106 = v105;
    *&v106[8] = v51;
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_44_17();
    sub_1E4201F44();
    sub_1E325F69C(v30, &qword_1ECF2ABF8);
    return (*(v33 + 8))(v36, v31);
  }

  else
  {
    v86 = v26;
    v87 = v3;
    v88 = v31;
    v95 = v30;
    v53 = v100;
    v54 = v105;
    if (sub_1E373F6E0(v38, 91, v39, v40, v41, v42))
    {
      *v106 = v37;
      v55 = *(*v37 + 576);

      if (v55(v56))
      {
        OUTLINED_FUNCTION_30();
        (*(v57 + 224))();
      }

      else
      {
        v67 = sub_1E4204724();
        v58 = __swift_storeEnumTagSinglePayload(v19, 1, 1, v67);
      }

      v68 = v53;
      v69 = sub_1E37E6538(v58, v59, v60);
      v70 = v97;
      sub_1E3B29C44(&unk_1F5D57900, v69);
      v71 = v90;
      sub_1E3B29C48();
      (*(v98 + 8))(v70, v99);
      sub_1E325F69C(v19, &qword_1ECF2B7B0);

      v72 = v91;
      (*(v91 + 16))(v87, v71, v68);
      v73 = swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_3_30(v73);
      *v106 = &unk_1F5D57900;
      *&v106[8] = v69;
      swift_getOpaqueTypeConformance2();
      v74 = v95;
      sub_1E4201F44();
      sub_1E3743538(v74, v25, &qword_1ECF2ABF8, &qword_1E429EC18);
      swift_storeEnumTagMultiPayload();
      v75 = sub_1E37E71A0();
      v76 = OUTLINED_FUNCTION_18_2(v75);
      *v106 = v105;
      *&v106[8] = v76;
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_44_17();
      sub_1E4201F44();
      sub_1E325F69C(v74, &qword_1ECF2ABF8);
      return (*(v72 + 8))(v71, v68);
    }

    else
    {
      memset(v106, 0, sizeof(v106));
      v107 = 1;
      v61 = sub_1E382A9B4(v37, v106, 0, v96);
      v62 = v54;
      if ((*(*v37 + 576))(v61))
      {
        OUTLINED_FUNCTION_30();
        v64 = v89;
        (*(v63 + 224))();
        v65 = v64;
      }

      else
      {
        v77 = sub_1E4204724();
        v65 = v89;
        v66 = __swift_storeEnumTagSinglePayload(v89, 1, 1, v77);
      }

      v78 = v104;
      v79 = v25;
      v80 = OUTLINED_FUNCTION_18_2(v66);
      v81 = v97;
      sub_1E3B29C44(v62, v80);
      v82 = v93;
      OUTLINED_FUNCTION_57();
      v83 = v65;
      v84 = v96;
      sub_1E3B29C48();
      (*(v98 + 8))(v81, v99);
      sub_1E325F69C(v83, &qword_1ECF2B7B0);
      (*(v92 + 8))(v84, v62);
      v85 = v94;
      (*(v94 + 16))(v79, v82, v78);
      swift_storeEnumTagMultiPayload();
      sub_1E37E71A0();
      v108 = v62;
      v109 = v80;
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_43_11();
      sub_1E4201F44();
      return (*(v85 + 8))(v82, v78);
    }
  }
}

uint64_t sub_1E37E4D10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0, &qword_1E429A1F0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1E329504C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1E329504C(v29, v30);
    result = sub_1E42073F4();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_1E329504C(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

double sub_1E37E4FD4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*(*a1 + 392))();
  v34 = &unk_1F5D5E338;
  v35 = &off_1F5D5CB78;
  v5 = j__OUTLINED_FUNCTION_18();
  v6 = sub_1E39C29F0(&v31, v5 & 1);
  v7 = __swift_destroy_boxed_opaque_existential_1(&v31);
  if (v6)
  {
    v31 = a1;
    sub_1E37E6538(v7, v8, v9);
    v10 = sub_1E3884090(v4);
    v12 = v10;
    if (v4)
    {
      OUTLINED_FUNCTION_12_6();
      v14 = *(v13 + 1176);

      v16 = v14(v15);
      LOBYTE(v14) = v17;

      if (v14)
      {
        OUTLINED_FUNCTION_12_6();
        v10 = (*(v18 + 1152))();
        v16 = v10;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v16 = 0;
      v19 = 1;
    }

    v31 = v12;
    v32 = v16;
    v33 = v19 & 1;
    sub_1E37E65E0(v10, v19, v11);
  }

  else
  {
    v31 = a1;
    sub_1E37E6538(v7, v8, v9);
    v20 = sub_1E3884154(v4);
    v23 = v20;
    if (v4)
    {
      OUTLINED_FUNCTION_12_6();
      v25 = *(v24 + 1152);

      v27 = v25(v26);
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 1;
    }

    v31 = v23;
    v32 = v27;
    v33 = v29 & 1;
    sub_1E37E658C(v20, v21, v22);
  }

  *a2 = sub_1E4203E84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AA68, &unk_1E429E8F8);

  sub_1E37E523C(a1);

  return result;
}

uint64_t sub_1E37E523C(uint64_t a1)
{
  v2 = (*(*a1 + 464))();
  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E37E53C4(a1, v3, v4);
  result = sub_1E32AE9B0(v5);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v6 & 1;
    *(v8 + 32) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0, &qword_1E4297FE0);
    v9 = OUTLINED_FUNCTION_75();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    sub_1E37432DC();
    sub_1E374AD40(&qword_1ECF2AA80, &unk_1ECF2AA78, &unk_1E429E928, MEMORY[0x1E6981F48]);
    return sub_1E4203B34();
  }

  return result;
}

uint64_t sub_1E37E53C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = &unk_1F5D5DAC8;
  v8[4] = &off_1F5D5C998;
  LOBYTE(v8[0]) = 13;
  sub_1E37E6ADC(a1, a2, a3);
  sub_1E39C2B80();
  v3 = __swift_destroy_boxed_opaque_existential_1(v8);
  if (v9 == 8)
  {
    v6 = 0;
  }

  else
  {
    LOBYTE(v8[0]) = v9;
    sub_1E37E6B30(v3, v4, v5);
    v6 = sub_1E4205E84();
  }

  return v6 & 1;
}

void sub_1E37E5474()
{
  OUTLINED_FUNCTION_9_4();
  v61 = v1;
  v3 = v2;
  v5 = v4;
  v64 = v6;
  v69 = sub_1E4203B14();
  OUTLINED_FUNCTION_0_10();
  v60 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_3();
  v59 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AAB8, &qword_1E429EAF0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v63 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AAC0, &qword_1E429EAF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AAC8, &qword_1E429EB00);
  OUTLINED_FUNCTION_0_10();
  v66 = v18;
  v67 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v71 = v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AAD0, &qword_1E429EB08);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v62 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v56 - v27;
  v29 = *v5;
  sub_1E34AF4E4(*v5, (v3 & 0xC000000000000001) == 0, v3);
  v58 = v3;
  v68 = v28;
  v57 = v29;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x1E6911E60](v29, v3);
  }

  else
  {
    v30 = *(v3 + 8 * v29 + 32);
  }

  v31 = sub_1E37E59F0(v30);
  v32 = (*v30 + 392);
  v33 = *v32;
  v34 = (*v32)(v31);
  v35 = sub_1E37E69A8(&qword_1ECF2AAD8, &qword_1ECF2AAC0, &qword_1E429EAF8, sub_1E37E6A20);
  sub_1E38838AC(v34, 2u, 2, v15, v35, v71);

  v36 = sub_1E325F69C(v0, &qword_1ECF2AAC0);
  if (v33(v36) && (OUTLINED_FUNCTION_30(), (*(v37 + 152))(&v72), , (v73 & 1) == 0))
  {
    v38.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v38, v39, v40, v41);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v42 = v68;
  v43 = sub_1E4202734();
  (*(v66 + 32))(v25, v71, v67);
  v44 = &v25[*(v65 + 36)];
  *v44 = v43;
  OUTLINED_FUNCTION_11_4(v44);
  sub_1E3741EA0(v25, v42, &qword_1ECF2AAD0, &qword_1E429EB08);
  if (sub_1E39DFFC8())
  {
    v47 = 1;
    v48 = v69;
    v49 = v70;
LABEL_15:
    __swift_storeEnumTagSinglePayload(v49, v47, 1, v48);
    v52 = v62;
    sub_1E3743538(v42, v62, &qword_1ECF2AAD0, &qword_1E429EB08);
    v53 = v63;
    sub_1E3743538(v49, v63, &qword_1ECF2AAB8, &qword_1E429EAF0);
    v54 = v64;
    sub_1E3743538(v52, v64, &qword_1ECF2AAD0, &qword_1E429EB08);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AAF0, &unk_1E429EB18);
    sub_1E3743538(v53, v54 + *(v55 + 48), &qword_1ECF2AAB8, &qword_1E429EAF0);

    sub_1E325F69C(v49, &qword_1ECF2AAB8);
    sub_1E325F69C(v42, &qword_1ECF2AAD0);
    sub_1E325F69C(v53, &qword_1ECF2AAB8);
    sub_1E325F69C(v52, &qword_1ECF2AAD0);
    OUTLINED_FUNCTION_10_3();
    return;
  }

  v48 = v69;
  v49 = v70;
  if ((v61 & 1) == 0)
  {
    goto LABEL_12;
  }

  v50 = sub_1E32AE9B0(v58);
  if (!__OFSUB__(v50, 1))
  {
    if (v57 < v50 - 1)
    {
LABEL_13:
      v51 = v59;
      sub_1E4203B04();
      (*(v60 + 32))(v49, v51, v48);
      v47 = 0;
      goto LABEL_15;
    }

LABEL_12:
    if ((sub_1E37E53C4(v30, v45, v46) & 1) == 0)
    {
      v47 = 1;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1E37E59F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8, &qword_1E4297EB0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AAF8, &unk_1E429EB28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878, &unk_1E429C0E0);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23[-v14];
  if (sub_1E385051C(*(a1 + 98)))
  {
    sub_1E3EC24F4(a1, 0, 0, 0);
    (*(v12 + 16))(v1, v15, v10);
    v16 = swift_storeEnumTagMultiPayload();
    v17 = OUTLINED_FUNCTION_3_30(v16);
    OUTLINED_FUNCTION_18_2(v17);
    OUTLINED_FUNCTION_31_11();
    sub_1E4201F44();
    return (*(v12 + 8))(v15, v10);
  }

  else
  {
    memset(v23, 0, sizeof(v23));
    v24 = 1;
    sub_1E382A9B4(a1, v23, 0, v8);
    v19 = OUTLINED_FUNCTION_75();
    v20(v19);
    v21 = swift_storeEnumTagMultiPayload();
    v22 = OUTLINED_FUNCTION_3_30(v21);
    OUTLINED_FUNCTION_18_2(v22);
    OUTLINED_FUNCTION_31_11();
    sub_1E4201F44();
    return (*(v5 + 8))(v8, v3);
  }
}

unint64_t sub_1E37E5C70(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B470, &qword_1E42986E0);
  v2 = sub_1E4207744();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1E3743538(v6, &v15, &qword_1ECF2ABB0, &qword_1E429EBF0);
    v7 = v15;
    v8 = v16;
    result = sub_1E327D33C(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1E329504C(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_1E37E5DC4()
{
  sub_1E37E3944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A9D0, &qword_1E429E890);
  OUTLINED_FUNCTION_40_12();
  *v0 = sub_1E37E3FDC;
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A9B8, &qword_1E429E888);
  OUTLINED_FUNCTION_40_12();
  *v1 = 0;
  v1[1] = 0;
  v1[2] = sub_1E37E4004;
  v1[3] = 0;
}

unint64_t sub_1E37E5E4C()
{
  result = qword_1ECF2A9C0;
  if (!qword_1ECF2A9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A9B8, &qword_1E429E888);
    sub_1E37E5ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A9C0);
  }

  return result;
}

unint64_t sub_1E37E5ED8()
{
  result = qword_1ECF2A9C8;
  if (!qword_1ECF2A9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A9D0, &qword_1E429E890);
    sub_1E37E69A8(&qword_1ECF2A9D8, &unk_1ECF2A9E0, &unk_1E429E898, sub_1E37E5F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A9C8);
  }

  return result;
}

unint64_t sub_1E37E5F90()
{
  result = qword_1ECF2A9E8;
  if (!qword_1ECF2A9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A9F0, &qword_1E429E8A0);
    sub_1E374AD40(&qword_1ECF2A9F8, &qword_1ECF2AA00, &qword_1E429E8A8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A9E8);
  }

  return result;
}

unint64_t sub_1E37E6048()
{
  result = qword_1ECF2AA08;
  if (!qword_1ECF2AA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A980, &qword_1E429E850);
    sub_1E374AD40(&qword_1ECF2AA10, &unk_1ECF2AA18, &unk_1E429E8B0, MEMORY[0x1E697BE60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AA08);
  }

  return result;
}

unint64_t sub_1E37E60F8()
{
  result = qword_1ECF2AA20;
  if (!qword_1ECF2AA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A9B0, &qword_1E429E880);
    sub_1E374AD40(&qword_1ECF2AA28, &qword_1ECF2A9A8, &qword_1E429E878, MEMORY[0x1E6981880]);
    sub_1E374AD40(&qword_1ECF2AA30, &unk_1ECF2AA38, &unk_1E429E8E0, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AA20);
  }

  return result;
}

unint64_t sub_1E37E61DC()
{
  result = qword_1ECF2AA40;
  if (!qword_1ECF2AA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A990, &qword_1E429E860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A988, &qword_1E429E858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A980, &qword_1E429E850);
    sub_1E37E6048();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E374AD40(&qword_1ECF2AA48, &unk_1ECF2AA50, &unk_1E429E8E8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AA40);
  }

  return result;
}

void sub_1E37E6314()
{
  OUTLINED_FUNCTION_9_4();
  v1 = v0;
  sub_1E4200E64();
  v3 = v2;
  sub_1E4200E44();
  v5 = v3 + v4;
  sub_1E4200E44();
  *&v7 = v5 + v6;
  sub_1E4200E64();
  v9 = v8;
  j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_25_20();
  v10 = OUTLINED_FUNCTION_37_13();
  sub_1E3EB9C0C(v10, v11, v12, v7, v9, 0, v13, 2, v14, v40, 1, 0, 1, v41, v42[0], v42[1], v42[2]);
  sub_1E375C2C0(v45, __src);
  LOBYTE(v9) = j__OUTLINED_FUNCTION_18();
  v15 = j__OUTLINED_FUNCTION_18();
  v43 = j__OUTLINED_FUNCTION_51_1() & 1;
  OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_48_13(v16, v17, v18, v19, v20, 1, 0, 0, 256, 3, 0, v9 & 1, v15 & 1, v43);
  v21 = j__OUTLINED_FUNCTION_18();
  LOBYTE(v9) = j__OUTLINED_FUNCTION_18();
  j_j__OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_3();
  j__OUTLINED_FUNCTION_51_1();
  v22 = j__OUTLINED_FUNCTION_18();
  v23 = sub_1E3CBD2B8(v22);
  v24 = j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18_15();
  sub_1E3EBA150(v30, v25, v26, v27, v28, v21, v9, 0, v29, v31, v32, v33, v34, v35, v36, v37, v38, 0, 1, v22 & 1, v23, v24 & 1);
  sub_1E375C31C(v45);
  memcpy(__dst, __src, 0x150uLL);
  *v1 = sub_1E4203D94();
  v1[1] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AA58, &qword_1E429E8F0);
  sub_1E37E27E0();
  sub_1E375B760(__dst);
  OUTLINED_FUNCTION_10_3();
}

unint64_t sub_1E37E6538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2AA60;
  if (!qword_1ECF2AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AA60);
  }

  return result;
}

unint64_t sub_1E37E658C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE289DC8;
  if (!qword_1EE289DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289DC8);
  }

  return result;
}

unint64_t sub_1E37E65E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2AA70;
  if (!qword_1ECF2AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AA70);
  }

  return result;
}

unint64_t sub_1E37E6640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E37E6668(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E37E6668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE24EBC0;
  if (!qword_1EE24EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24EBC0);
  }

  return result;
}

uint64_t sub_1E37E6700(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E37E6740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E37E67B4()
{
  result = qword_1ECF2AA88;
  if (!qword_1ECF2AA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AA90, ",d\r");
    sub_1E37E60F8();
    sub_1E37E61DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AA88);
  }

  return result;
}

unint64_t sub_1E37E6840()
{
  result = qword_1ECF2AA98;
  if (!qword_1ECF2AA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AA68, &unk_1E429E8F8);
    sub_1E374AD40(&qword_1EE289DD0, &unk_1ECF2AAA0, &unk_1E429EAE0, MEMORY[0x1E697DDD0]);
    sub_1E37E68F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AA98);
  }

  return result;
}

unint64_t sub_1E37E68F8()
{
  result = qword_1ECF2AAA8;
  if (!qword_1ECF2AAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AAB0, &qword_1E429EAE8);
    sub_1E374AD40(&qword_1ECF2AA80, &unk_1ECF2AA78, &unk_1E429E928, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AAA8);
  }

  return result;
}

uint64_t sub_1E37E69A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E37E6A20()
{
  result = qword_1ECF2AAE0;
  if (!qword_1ECF2AAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AAE8, &qword_1E429EB10);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AAE0);
  }

  return result;
}

unint64_t sub_1E37E6ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE259C48;
  if (!qword_1EE259C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE259C48);
  }

  return result;
}

unint64_t sub_1E37E6B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE259C50;
  if (!qword_1EE259C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE259C50);
  }

  return result;
}

unint64_t sub_1E37E6B84()
{
  result = qword_1ECF2AB38;
  if (!qword_1ECF2AB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AB18, &qword_1E429EB50);
    sub_1E374AD40(&qword_1ECF2AB40, &qword_1ECF2AB10, &qword_1E429EB48, MEMORY[0x1E697BE60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AB38);
  }

  return result;
}

uint64_t sub_1E37E6C3C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_1E37E6C80(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_1E37E6CD4()
{
  result = qword_1ECF2AB70;
  if (!qword_1ECF2AB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AB68, &qword_1E429EB88);
    sub_1E374AD40(&qword_1ECF2AB78, &qword_1ECF2AB80, &unk_1E429EB90, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AB70);
  }

  return result;
}

__n128 sub_1E37E6D8C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, (v2 + 16), 0xC3uLL);
  sub_1E40EA03C(v4, __dst, 0, 0, a2);
  LOBYTE(v4) = sub_1E4202734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB98, &unk_1E429EBD0);
  OUTLINED_FUNCTION_40_12();
  *v5 = v4;
  result = *(v2 + 240);
  *(v5 + 24) = *(v2 + 256);
  *(v5 + 8) = result;
  *(v5 + 40) = 0;
  return result;
}

unint64_t sub_1E37E6E78()
{
  result = qword_1ECF2ABA0;
  if (!qword_1ECF2ABA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AB98, &unk_1E429EBD0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ABA0);
  }

  return result;
}

uint64_t sub_1E37E6F1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1E37E6FBC()
{
  result = qword_1ECF2ABC8;
  if (!qword_1ECF2ABC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ABC0, &qword_1E429EC00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ABD0, &qword_1E429EC08);
    sub_1E37E69A8(&qword_1ECF2ABD8, &qword_1ECF2ABD0, &qword_1E429EC08, sub_1E37E70B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ABC8);
  }

  return result;
}

unint64_t sub_1E37E70B8()
{
  result = qword_1ECF2ABE0;
  if (!qword_1ECF2ABE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ABE8, &qword_1E429EC10);
    sub_1E37E71A0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF289B8, &qword_1E4297EB0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ABE0);
  }

  return result;
}

unint64_t sub_1E37E71A0()
{
  result = qword_1ECF2ABF0;
  if (!qword_1ECF2ABF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ABF8, &qword_1E429EC18);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E37E6538(OpaqueTypeConformance2, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ABF0);
  }

  return result;
}

void sub_1E37E7270()
{
  v18 = &unk_1F5D5DAC8;
  v19 = &off_1F5D5C998;
  LOBYTE(v17[0]) = 52;
  v0 = sub_1E39C29A4(v17);
  v2 = v1;
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (v2)
  {
    v18 = &unk_1F5D5DAC8;
    v19 = &off_1F5D5C998;
    LOBYTE(v17[0]) = 49;
    sub_1E39C29A4(v17);
    v4 = v3;
    __swift_destroy_boxed_opaque_existential_1(v17);
    if (v4)
    {
      v5 = [objc_opt_self() standardUserDefaults];
      v6 = sub_1E4205ED4();

      v7 = sub_1E4205ED4();
      OUTLINED_FUNCTION_43_11();
      [v8 v9];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *(inited + 32) = 0xD000000000000024;
      *(inited + 40) = 0x80000001E425DBA0;
      *(inited + 48) = v0;
      *(inited + 56) = v2;
      v11 = sub_1E4205CB4();
      v12 = [objc_opt_self() defaultCenter];
      if (qword_1ECF46D80 != -1)
      {
        OUTLINED_FUNCTION_22_16(&qword_1ECF46D80);
      }

      sub_1E37E4D10(v11);

      OUTLINED_FUNCTION_43_11();
      sub_1E37E7460(v13, v14, v15, v16);
    }

    else
    {
    }
  }
}

void sub_1E37E7460(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1E4205C44();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t *OUTLINED_FUNCTION_48_13@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>, char a6, uint64_t a7, uint64_t a8, __int16 a9, char a10, uint64_t a11, char a12, char a13, char a14)
{

  return sub_1E3EB9DAC(a5, a1, a2, a3, a4, v14, 0, 0, 0, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1E37E7570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;

  v20 = sub_1E40B19D4(a1, a2, a3);
  v21 = v20;
  if (!v20)
  {
    goto LABEL_10;
  }

  v30 = v15;
  LOBYTE(v35) = 1;
  v22 = *(*v20 + 776);

  v22(aBlock, &v35, &unk_1F5D5E0F8, &off_1F5D5CAF8);
  if (!v32)
  {
    sub_1E329505C(aBlock);
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
LABEL_7:
    v23 = 0;
    goto LABEL_8;
  }

  v23 = v35;
LABEL_8:
  v35 = 0;
  v24 = sub_1E32ADE38();
  MEMORY[0x1EEE9AC00](v24);
  *(&v28 - 2) = &v35;
  sub_1E3B79200(sub_1E37E78F8, (&v28 - 4));
  if (v23 != v35)
  {
    v29 = sub_1E4206A04();
    v33 = sub_1E37E7970;
    v34 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E378AEA4;
    v32 = &block_descriptor_10;
    v25 = _Block_copy(aBlock);
    sub_1E4203FE4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E378AD28();
    sub_1E42072E4();
    v26 = v29;
    MEMORY[0x1E6911380](0, v19, v12, v25);
    _Block_release(v25);

    (*(v8 + 8))(v12, v6);
    (*(v30 + 8))(v19, v13);
    return v21;
  }

LABEL_10:

  return v21;
}

void sub_1E37E78F8()
{
  v1 = *(v0 + 16);
  v2 = sub_1E3285D14();
  v3 = *((*MEMORY[0x1E69E7D40] & **v2) + 0x78);
  v4 = *v2;
  v5 = v3();

  *v1 = v5;
}

void sub_1E37E7970()
{
  v0 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = [objc_opt_self() defaultCenter];
  v8 = *sub_1E3FC541C();
  sub_1E41FDEF4();
  v9 = sub_1E41FDED4();
  (*(v2 + 8))(v6, v0);
  [v7 postNotification_];
}

unint64_t sub_1E37E7A8C()
{
  result = qword_1EE2882E0;
  if (!qword_1EE2882E0)
  {
    sub_1E4203FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2882E0);
  }

  return result;
}

uint64_t sub_1E37E7B14()
{
  v0 = CollectionViewModel.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 402, 7);
}

__n128 sub_1E37E7B68@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  result = *(v1 + 104);
  v5 = *(v1 + 120);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_1E37E7BB8(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(v1 + 104, v5);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v4;
  *(v1 + 136) = *(a1 + 32);
  return result;
}

BOOL sub_1E37E7C00()
{
  v0 = sub_1E4207784();

  return v0 != 0;
}

uint64_t sub_1E37E7C60()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E37E7CDC(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

BOOL sub_1E37E7D30@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1E37E7C00();
  *a1 = result;
  return result;
}

unint64_t sub_1E37E7D64@<X0>(void *a1@<X8>)
{
  result = sub_1E37E7C48();
  *a1 = 0xD000000000000011;
  a1[1] = result;
  return result;
}

uint64_t sub_1E37E7DB8()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1560))();
  if (sub_1E3A24FDC(v1))
  {
    return 21;
  }

  OUTLINED_FUNCTION_8();
  (*(v3 + 984))();
  OUTLINED_FUNCTION_1_32();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4D0, &qword_1E429ED88);
  OUTLINED_FUNCTION_4_35(v4, v5, v4, v6, v7, v8);
  return v9;
}

uint64_t sub_1E37E7EB0()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 136) = 1;
  sub_1E3952C94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_3_0(v0 + 104, v38);
  *(v0 + 104) = v2;
  *(v0 + 112) = v4;
  *(v0 + 120) = v6;
  *(v0 + 128) = v8;
  *(v0 + 136) = 0;
  v9 = sub_1E3C2F9A0();
  v10 = *(*v9 + 1208);

  v10(0, 0);
  (*(*v9 + 1136))(0x3FF0000000000000, 0);
  __dst[0] = 18;
  LOBYTE(__dst[1]) = 0;
  v67[0] = 21;
  LOBYTE(v67[1]) = 0;
  type metadata accessor for VUIGridStyle(0);
  v12 = v11;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_0_39();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_3_31();
  sub_1E3C3DE00();
  *&v50[0] = *&v52[0];
  BYTE8(v50[0]) = BYTE8(v52[0]);
  sub_1E3C3DE00();
  *&v45[0] = v47;
  BYTE8(v45[0]) = BYTE8(v47);
  sub_1E3C2FCB8(__dst, v67, v58, v54, v50, v45, v12, __src);
  memcpy(__dst, __src, 0x59uLL);
  v13 = OUTLINED_FUNCTION_18();
  v14 = *(*v9 + 1600);
  v14(__dst, 40, v13 & 1, v12);
  __dst[0] = 0;
  LOBYTE(__dst[1]) = 1;
  v67[0] = 0x407C200000000000;
  LOBYTE(v67[1]) = 0;
  *&v60[0] = 0x407C200000000000;
  BYTE8(v60[0]) = 0;
  *&v58[0] = 0x4083E00000000000;
  BYTE8(v58[0]) = 0;
  *&v56[0] = 0x407CC00000000000;
  BYTE8(v56[0]) = 0;
  v15 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  *&v52[0] = *&v54[0];
  BYTE8(v52[0]) = BYTE8(v54[0]);
  sub_1E3C2FCB8(__dst, v67, v60, v58, v52, v56, v15, __src);
  memcpy(__dst, __src, 0x59uLL);
  v16 = OUTLINED_FUNCTION_18();
  v14(__dst, 6, v16 & 1, v15);
  if (TVAppFeature.isEnabled.getter(10, v17, v18))
  {
    sub_1E418A50C();
  }

  else
  {
    sub_1E418A530();
  }

  OUTLINED_FUNCTION_8();
  (*(v19 + 440))();
  v65 = 0;
  v66 = 1;
  v22 = TVAppFeature.isEnabled.getter(17, v20, v21);
  if (v22)
  {
    v25 = 0x4087700000000000;
  }

  else
  {
    v25 = 0;
  }

  v63 = v25;
  v64 = (v22 & 1) == 0;
  v26 = TVAppFeature.isEnabled.getter(17, v23, v24);
  if (v26)
  {
    v27 = 0x4087700000000000;
  }

  else
  {
    v27 = 0;
  }

  __src[0] = v27;
  LOBYTE(__src[1]) = (v26 & 1) == 0;
  __dst[0] = 0x4004BAFDC61F2A4CLL;
  LOBYTE(__dst[1]) = 0;
  v28 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_0_39();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_3_31();
  sub_1E3C2FCB8(&v65, &v63, __src, v58, v54, __dst, v28, v67);
  memcpy(__src, v67, 0x59uLL);
  v29 = OUTLINED_FUNCTION_18();
  v14(__src, 8, v29 & 1, v28);
  sub_1E3952C88();
  __dst[0] = v30;
  __dst[1] = v31;
  __dst[2] = v32;
  __dst[3] = v33;
  LOBYTE(__dst[4]) = 0;
  type metadata accessor for UIEdgeInsets();
  v35 = v34;
  sub_1E3C3DE00();
  v58[0] = v60[0];
  v58[1] = v60[1];
  v59 = v61;
  sub_1E3C2FC98();
  v54[0] = v56[0];
  v54[1] = v56[1];
  v55 = v57;
  sub_1E3C3DE00();
  v50[0] = v52[0];
  v50[1] = v52[1];
  v51 = v53;
  sub_1E3C3DE00();
  v45[0] = v47;
  v45[1] = v48;
  v46 = v49;
  sub_1E3C3DE00();
  v40[0] = v42;
  v40[1] = v43;
  v41 = v44;
  sub_1E3C2FCB8(v58, v54, v50, v45, v40, __dst, v35, __src);
  memcpy(__dst, __src, 0xE9uLL);
  v36 = OUTLINED_FUNCTION_18();
  v14(__dst, 0, v36 & 1, v35);

  return v9;
}

uint64_t sub_1E37E83C8(uint64_t a1)
{
  sub_1E3C34E14();
  v4[3] = &type metadata for EpicShowcaseViewLayout.CarouselLayoutKeys;
  v4[4] = &off_1F5D57AA0;
  sub_1E3F9F164(v4, a1, MEMORY[0x1E69E7CA0] + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  sub_1E4148DE0(sub_1E37E8478);
  sub_1E329505C(v3);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

__n128 sub_1E37E8478(uint64_t a1)
{
  sub_1E328438C(a1, v6);
  type metadata accessor for UIEdgeInsets();
  if (swift_dynamicCast())
  {
    v2 = 0;
    v4 = v8;
    v5 = v7;
  }

  else
  {
    (*(*v1 + 1696))(&v7);
    v4 = v8;
    v5 = v7;
    v2 = v9;
  }

  OUTLINED_FUNCTION_3_0(v1 + 104, v6);
  result = v4;
  *(v1 + 104) = v5;
  *(v1 + 120) = v4;
  *(v1 + 136) = v2;
  return result;
}

double sub_1E37E8538(uint64_t a1)
{
  sub_1E3C35F80();
  type metadata accessor for CarouselViewLayout();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v4 = *(*v2 + 1728);

    v4(v8, v5);

    OUTLINED_FUNCTION_3_0(v1 + 104, &v7);
    result = *v8;
    v6 = v8[1];
    *(v1 + 104) = v8[0];
    *(v1 + 120) = v6;
    *(v1 + 136) = v9;
  }

  return result;
}

uint64_t sub_1E37E85F8()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 137, 7);
}

void sub_1E37E8628(double a1)
{
  type metadata accessor for LayoutGrid();
  v3 = sub_1E37E7DB8();
  (*(*v1 + 1200))();
  OUTLINED_FUNCTION_1_32();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC28, &unk_1E42B45E0);
  v9 = OUTLINED_FUNCTION_4_35(v4, v5, v4, v6, v7, v8);
  v10 = *&v12[3];
  (*(*v1 + 1128))(v9);
  OUTLINED_FUNCTION_1_32();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
  sub_1E4148C68(sub_1E37E8790, v11, v12);
  sub_1E3A25D00(v3, v10, a1, v12[0]);
}

uint64_t sub_1E37E879C(char a1, double a2, double a3)
{
  v6 = sub_1E37E7DB8();
  result = 0;
  if (v6 != 21 && (a1 & 1) == 0)
  {
    type metadata accessor for LayoutGrid();
    v8 = sub_1E3A25C38(v6, 0, 1.0);
    sub_1E3AC6158(a2, a3);
    if ((v10 & 1) != 0 || v9 <= 0.0)
    {
      return 0;
    }

    else
    {
      return *&v8;
    }
  }

  return result;
}

double sub_1E37E8894(double a1)
{
  OUTLINED_FUNCTION_8();
  v3 += 38;
  v4 = *v3;
  v5 = COERCE_DOUBLE((*v3)());
  if (v6)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  if (TVAppFeature.isEnabled.getter(17, v6, v7))
  {
    if (sub_1E37E7DB8() == 21)
    {
      v9 = COERCE_DOUBLE(v4());
      if (v10)
      {
        return 0.0;
      }

      else
      {
        return v9;
      }
    }

    else
    {
      type metadata accessor for LayoutGrid();
      v11 = sub_1E37E7DB8();
      v12 = sub_1E3A25D00(v11, 0, a1, 1.0);
      v13 = COERCE_DOUBLE((*(*v1 + 432))());
      if (v14)
      {
        v13 = 1.0;
      }

      return v12 / v13;
    }
  }

  return v8;
}

void sub_1E37E89C8(double a1)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1560))();
  if (sub_1E3A2511C(v3))
  {
    type metadata accessor for LayoutGrid();
    sub_1E3A258E4(a1);
  }
}

uint64_t getEnumTagSinglePayload for EpicShowcaseViewLayout.CarouselLayoutKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for EpicShowcaseViewLayout.CarouselLayoutKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1E37E8B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF46E30[0];
  if (!qword_1ECF46E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF46E30);
  }

  return result;
}

uint64_t sub_1E37E8BE8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v75 = a5;
  v76 = a6;
  v74 = a4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC30, &qword_1E429EDC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v73[-v12];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC38, &qword_1E429EDD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v73[-v14];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A948, &qword_1E429E7F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v73[-v16];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  v17 = *(v83 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73[-v19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC40, &qword_1E429EDD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v73[-v22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A950, &qword_1E429E800);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v73[-v26];
  v28 = *(a1 + 98);
  if (v28 > 0x31)
  {
    goto LABEL_11;
  }

  v78 = a7;
  if (((1 << v28) & 0x18DFF80000000) != 0)
  {
    v77 = v25;
    type metadata accessor for ImageViewModel();
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      v30 = v29;
      swift_retain_n();
      sub_1E375C2C0(a2, __src);

      sub_1E39B6564(v30, a2, a3, v74 & 1, v87);
      v31 = swift_allocObject();
      v32 = v75;
      v33 = v76;
      *(v31 + 16) = v75;
      *(v31 + 24) = v33;
      sub_1E34AF604(v32, v33);
      sub_1E39B6C40(sub_1E37E9448, v31, __src);

      sub_1E37E9478(v87);
      memcpy(v23, __src, 0x98uLL);
      swift_storeEnumTagMultiPayload();
      v34 = sub_1E37E94CC(__src, v86);
      v37 = sub_1E37E0CE8(v34, v35, v36);
      OUTLINED_FUNCTION_5_1(v37);
      sub_1E4201F44();

      sub_1E37E9478(__src);
    }

    else
    {
      nullsub_1();
      v38 = v83;
      (*(v17 + 16))(v23, v20, v83);
      v39 = swift_storeEnumTagMultiPayload();
      v42 = sub_1E37E0CE8(v39, v40, v41);
      OUTLINED_FUNCTION_5_1(v42);
      sub_1E4201F44();
      (*(v17 + 8))(v20, v38);
    }

    v43 = &qword_1ECF2A950;
    v44 = &qword_1E429E800;
    sub_1E37E93E8(v27, v80, &qword_1ECF2A950, &qword_1E429E800);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_32();
    v47 = sub_1E37E9768(v45, &qword_1ECF2A950, &qword_1E429E800, v46);
    sub_1E37E0D3C(v47, v48, v49);
    v50 = v81;
    sub_1E4201F44();
    sub_1E37E93E8(v50, v85, &qword_1ECF2A948, &qword_1E429E7F8);
    swift_storeEnumTagMultiPayload();
    v51 = sub_1E37E0B98();
    OUTLINED_FUNCTION_5_1(v51);
    sub_1E4201F44();
    sub_1E325F6F0(v50, &qword_1ECF2A948, &qword_1E429E7F8);
    v52 = v27;
    return sub_1E325F6F0(v52, v43, v44);
  }

  if (v28 != 49)
  {
LABEL_11:
    nullsub_1();
    v71 = v83;
    (*(v17 + 16))(v85, v20, v83);
    swift_storeEnumTagMultiPayload();
    v72 = sub_1E37E0B98();
    OUTLINED_FUNCTION_5_1(v72);
    sub_1E4201F44();
    return (*(v17 + 8))(v20, v71);
  }

  v54 = *a2;
  v55 = *(a2 + 1);
  v56 = a2[16];
  v57 = *(a2 + 3);
  v58 = *(a2 + 4);
  v59 = a2[40];

  v60 = j__OUTLINED_FUNCTION_18();
  v61 = j__OUTLINED_FUNCTION_18();
  sub_1E3DF9EB0(v54, v55, v56, v57, v58, v59, v60 & 1, 0, v86, 0, 1, 2, 1, 0, v61 & 1, 2);
  sub_1E3DC12B0(a1, v86, __src);
  memcpy(v80, __src, 0x5AuLL);
  swift_storeEnumTagMultiPayload();
  sub_1E37E9338(__src, v87);
  OUTLINED_FUNCTION_2_32();
  v66 = sub_1E37E9768(v62, v63, v64, v65);
  sub_1E37E0D3C(v66, v67, v68);
  v69 = v81;
  sub_1E4201F44();
  v43 = &qword_1ECF2A948;
  v44 = &qword_1E429E7F8;
  sub_1E37E93E8(v69, v85, &qword_1ECF2A948, &qword_1E429E7F8);
  swift_storeEnumTagMultiPayload();
  v70 = sub_1E37E0B98();
  OUTLINED_FUNCTION_5_1(v70);
  sub_1E4201F44();
  sub_1E37E9394(__src);
  v52 = v69;
  return sub_1E325F6F0(v52, v43, v44);
}

uint64_t sub_1E37E93E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E37E9448()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

id sub_1E37E9528(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 1000))(a2, 0.0, 0.0);
  v5 = 0;
  if (v4 != 255)
  {
    v6 = v3;
    if (!v4)
    {
      v7 = (*(*a2 + 1944))();
      if (!v7)
      {
        v8 = (*(*a2 + 2016))();
        if (v9)
        {
          v10 = -1;
        }

        else
        {
          v10 = v8;
        }

        v7 = [objc_opt_self() configurationWithScale_];
      }

      v11 = [v6 name];
      v12 = sub_1E4205F14();
      v14 = v13;

      sub_1E37E96A4();
      v5 = sub_1E37E96E8(v12, v14, v7);
      v4 = 0;
    }

    sub_1E379098C(v6, v4);
  }

  return v5;
}

unint64_t sub_1E37E96A4()
{
  result = qword_1EE23AE00;
  if (!qword_1EE23AE00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AE00);
  }

  return result;
}

id sub_1E37E96E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

uint64_t sub_1E37E9768(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v7 = a4();
    OUTLINED_FUNCTION_5_1(v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*sub_1E37E9824(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = sub_1E37E97EC();
  a1[1] = v3;
  return sub_1E37E986C;
}

uint64_t sub_1E37E98B0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  result = a1();
  if (!v4)
  {
    return a2(result);
  }

  return result;
}

uint64_t (*sub_1E37E98F0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = sub_1E37E9884();
  a1[1] = v3;
  return sub_1E37E9938;
}

uint64_t sub_1E37E9950(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

id sub_1E37E99D0()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___episodeCount);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___episodeCount + 9) & 1) == 0)
  {
    return *v1;
  }

  result = [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity_mediaCollection) count];
  *v1 = result;
  v1[4] = 0;
  return result;
}

uint64_t sub_1E37E9A34(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___episodeCount;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  *(v3 + 9) = 0;
  return result;
}

uint64_t (*sub_1E37E9A54(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = sub_1E37E99D0();
  *(a1 + 8) = v3 & 1;
  return sub_1E37E9AA4;
}

uint64_t sub_1E37E9AA4(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___episodeCount;
  *v2 = *result;
  *(v2 + 8) = v1;
  return result;
}

unint64_t sub_1E37E9ACC()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___storeID;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___storeID + 5))
  {
    v2 = sub_1E3A28BAC();
    *v1 = v2;
    v3 = HIDWORD(v2) & 1;
    *(v1 + 4) = BYTE4(v2) & 1;
    *(v1 + 5) = 0;
  }

  else
  {
    LODWORD(v2) = *v1;
    LOBYTE(v3) = *(v1 + 4) & 1;
  }

  return v2 | (v3 << 32);
}

uint64_t sub_1E37E9B4C(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___storeID;
  *(v2 + 4) = BYTE4(result) & 1;
  *v2 = result;
  *(v2 + 5) = 0;
  return result;
}

uint64_t (*sub_1E37E9B6C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = sub_1E37E9ACC();
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3) & 1;
  return sub_1E37E9BBC;
}

uint64_t sub_1E37E9BBC(uint64_t result)
{
  v1 = *(result + 12) != 0;
  v2 = *result + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___storeID;
  *v2 = *(result + 8);
  *(v2 + 4) = v1;
  *(v2 + 5) = 0;
  return result;
}

uint64_t sub_1E37E9C3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity_seasons;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E37E9CF4()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id + 8);
  v4 = v2;
  if (v3 == 1)
  {
    if ([*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) valueForProperty_])
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        *&v13[0] = v10;
        v4 = sub_1E4207944();
        v6 = v5;
LABEL_10:
        v7 = *v1;
        v8 = v1[1];
        *v1 = v4;
        v1[1] = v6;

        sub_1E37E9E48(v7, v8);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1E329505C(v13);
    }

    v4 = 0;
    v6 = 0;
    goto LABEL_10;
  }

LABEL_11:
  sub_1E37EA628(v2, v3);
  return v4;
}

uint64_t sub_1E37E9E48(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1E37E9E5C()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title + 8);
  v4 = v2;
  if (v3 == 1)
  {
    if ([*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) valueForProperty_])
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        v4 = v9;
        v5 = v10;
LABEL_10:
        v6 = *v1;
        v7 = v1[1];
        *v1 = v4;
        v1[1] = v5;

        sub_1E37E9E48(v6, v7);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1E329505C(v13);
    }

    v4 = 0;
    v5 = 0;
    goto LABEL_10;
  }

LABEL_11:
  sub_1E37EA628(v2, v3);
  return v4;
}

uint64_t sub_1E37E9FC8(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___episodeCount;
  *v3 = 0;
  *(v3 + 8) = 256;
  v4 = v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___storeID;
  *(v4 + 4) = 256;
  *v4 = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity_seasons) = 0;
  v5 = (v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id);
  *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id) = xmmword_1E4297170;
  v6 = (v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title);
  *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title) = xmmword_1E4297170;
  v7 = [a1 representativeItem];
  if (v7)
  {
    v8 = v7;
    if ([a1 mediaTypes] == 512)
    {
      *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity_mediaCollection) = a1;
      return sub_1E4028B38(v8);
    }
  }

  sub_1E37E9E48(*v5, v5[1]);
  sub_1E37E9E48(*v6, v6[1]);
  type metadata accessor for LibMPShowMediaEntity(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t type metadata accessor for LibMPShowMediaEntity(uint64_t a1)
{
  result = qword_1EE29D590;
  if (!qword_1EE29D590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E37EA17C()
{

  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id), *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id + 8));
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title + 8);

  return sub_1E37E9E48(v1, v2);
}

uint64_t *sub_1E37EA1EC()
{
  v0 = sub_1E4028C28();

  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id), *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id + 8));
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title), *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title + 8));
  return v0;
}

uint64_t sub_1E37EA25C()
{
  v0 = sub_1E37EA1EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1E37EA380(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 632))();
  return sub_1E37C4BF8;
}

unint64_t sub_1E37EA400()
{
  OUTLINED_FUNCTION_5_2();
  v1 = (*(v0 + 592))();
  return v1 | ((HIDWORD(v1) & 1) << 32);
}

void (*sub_1E37EA4B0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 608))();
  return sub_1E37C55D4;
}

unint64_t sub_1E37EA530(uint64_t a1)
{
  result = sub_1E37EA558();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E37EA558()
{
  result = qword_1EE26C488[0];
  if (!qword_1EE26C488[0])
  {
    type metadata accessor for LibMPShowMediaEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE26C488);
  }

  return result;
}

uint64_t sub_1E37EA628(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double sub_1E37EA63C()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 120);
  }

  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  return OUTLINED_FUNCTION_5_11();
}

double sub_1E37EA664()
{
  if ((*(v0 + 144) & 1) == 0)
  {
    return *(v0 + 136);
  }

  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return OUTLINED_FUNCTION_5_11();
}

double sub_1E37EA68C()
{
  if ((*(v0 + 160) & 1) == 0)
  {
    return *(v0 + 152);
  }

  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  return OUTLINED_FUNCTION_5_11();
}

uint64_t sub_1E37EA6B4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_allocObject();
  return sub_1E37EA700(a1, v2);
}

uint64_t sub_1E37EA700(uint64_t a1, char a2)
{
  HIDWORD(v127) = a1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 1;
  *(v2 + 136) = 0;
  *(v2 + 144) = 1;
  *(v2 + 152) = 0;
  *(v2 + 160) = 1;
  *(v2 + 98) = a2;
  v3 = sub_1E3C2F9A0();

  v170 = 0;
  v171 = 1;
  v5 = *(v4 + 98) == 0;
  v6 = 0x4067200000000000;
  if (*(v4 + 98))
  {
    v6 = 0x405A000000000000;
  }

  v168 = v6;
  v169 = 0;
  v7 = 0x4063400000000000;
  if (v5)
  {
    v7 = 0x4070400000000000;
  }

  v166 = v7;
  v167 = 0;
  v8 = 0x407A400000000000;
  if (!v5)
  {
    v8 = 0x4070400000000000;
  }

  v165[0] = v8;
  LOBYTE(v165[1]) = 0;
  v136[0] = 0x4070400000000000;
  LOBYTE(v136[1]) = 0;
  __dst[0] = 0x4073400000000000;
  LOBYTE(__dst[1]) = 0;
  v9 = MEMORY[0x1E69E7DE0];
  v10 = 2;
  if (v5)
  {
    v10 = 3;
  }

  v114 = v10;
  sub_1E3C2FCB8(&v170, &v168, &v166, v165, v136, __dst, MEMORY[0x1E69E7DE0], __src);
  memcpy(__dst, __src, 0x59uLL);
  memcpy(v165, __src, 0x59uLL);
  v11 = OUTLINED_FUNCTION_18();
  v12 = (*(*v3 + 1600))(v165, 7, v11 & 1, v9);
  v13 = (*v3 + 1736);
  v14 = *v13;
  (*v13)(v12);
  memcpy(v165, __dst, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v15 + 1600))(v165, 6, v16 & 1, v9);

  v119 = v14;
  v14(v17);
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 1808))(3);

  v19 = sub_1E3E5FDEC();
  v136[0] = *v19;
  v20 = v136[0];
  v21 = *sub_1E3E5FD88();
  v143[0] = v21;
  v159 = v21;
  v22 = *v19;
  v154 = v22;
  v23 = sub_1E3755B54();
  v24 = v21;
  v25 = v22;
  sub_1E3C2FC98();
  *&v149 = *&v152[0];
  v26 = sub_1E3C3DE00();
  *&v144 = *&v147[0];
  v34 = OUTLINED_FUNCTION_3_32(v26, v27, v28, v29, v30, v31, v32, v33, v111, v114, v117, v119, v122, v13, v125, v127, v130, v133, v136[0]);
  sub_1E3C2FCB8(v34, v35, v36, v37, v38, v39, v23, v40);
  v131 = v165[0];
  v134 = v165[1];
  v41 = v165[2];
  v42 = v165[3];
  v43 = v165[4];
  v112 = v165[5];
  sub_1E3952C58();
  v136[0] = v44;
  v136[1] = v45;
  v136[2] = v46;
  v136[3] = v47;
  LOBYTE(v136[4]) = 0;
  sub_1E3952C94();
  v143[0] = v48;
  v143[1] = v49;
  v143[2] = v50;
  v143[3] = v51;
  LOBYTE(v143[4]) = 0;
  sub_1E3952C94();
  v159 = v52;
  v160 = v53;
  v161 = v54;
  v162 = v55;
  v163 = 0;
  sub_1E3952C94();
  v154 = v56;
  v155 = v57;
  v156 = v58;
  v157 = v59;
  v158 = 0;
  type metadata accessor for UIEdgeInsets();
  v61 = v60;
  sub_1E3C2FC98();
  v149 = v152[0];
  v150 = v152[1];
  v151 = v153;
  v62 = sub_1E3C3DE00();
  v144 = v147[0];
  v145 = v147[1];
  v146 = v148;
  v70 = OUTLINED_FUNCTION_3_32(v62, v63, v64, v65, v66, v67, v68, v69, v112, v115, v118, v120, v123, v124, v126, v128, v131, v134, v136[0]);
  sub_1E3C2FCB8(v70, v71, v72, v73, v74, v75, v61, v76);
  v77 = *(*v3 + 1760);
  v77();
  LOBYTE(v143[0]) = 17;
  LOBYTE(v159) = 15;
  LOBYTE(v154) = 3;
  LOBYTE(v152[0]) = 15;
  sub_1E3C2FC98();
  LOBYTE(v147[0]) = v149;
  sub_1E3C3DE00();
  LOBYTE(v141) = v144;
  sub_1E3C2FCB8(v143, v147, &v141, &v159, &v154, v152, &qword_1F5D549D8, v136);
  LODWORD(v143[0]) = v136[0];
  WORD2(v143[0]) = WORD2(v136[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v78 + 1600))(v143, 48, v79 & 1, &qword_1F5D549D8);

  (v77)(v80);
  v136[0] = v132;
  v136[1] = v135;
  v136[2] = v41;
  v136[3] = v42;
  v136[4] = v43;
  v136[5] = v113;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v81 + 1600))(v136, 21, v82 & 1, v23);

  (v77)(v83);
  v136[0] = v116;
  LOBYTE(v136[1]) = 0;
  v159 = 2;
  LOBYTE(v160) = 0;
  v84 = MEMORY[0x1E69E6810];
  sub_1E3C2FC98();
  *&v152[0] = v154;
  BYTE8(v152[0]) = v155;
  sub_1E3C3DE00();
  *&v147[0] = v149;
  BYTE8(v147[0]) = BYTE8(v149);
  sub_1E3C3DE00();
  v141 = v144;
  v142 = BYTE8(v144);
  sub_1E3C3DE00();
  v137 = v139;
  v138 = v140;
  sub_1E3C2FCB8(v136, v152, v147, &v141, &v137, &v159, v84, v143);
  memcpy(v136, v143, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v85 + 1600))(v136, 62, v86 & 1, v84);

  (v77)(v87);
  OUTLINED_FUNCTION_2_1();
  (*(v88 + 968))(0);

  (v77)(v89);
  memcpy(v136, v165, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v90 + 1600))(v136, 0, v91 & 1, v61);

  (v77)(v92);
  OUTLINED_FUNCTION_2_1();
  (*(v93 + 1984))(4);

  if (sub_1E373F6E0(v129, 85, v94, v95, v96, v97))
  {
    (*(*v3 + 336))(0x4051400000000000, 0);
    sub_1E3952C94();
    v136[0] = v102;
    v136[1] = v103;
    v136[2] = v104;
    v136[3] = v105;
    LOBYTE(v136[4]) = 0;
    v106 = (*(*v3 + 184))(v136);
  }

  else
  {
    v106 = sub_1E373F6E0(v129, 84, v98, v99, v100, v101);
  }

  v107 = v121(v106);
  sub_1E3C37CBC(v107, 39);

  v109 = (v77)(v108);
  sub_1E3C37CBC(v109, 9);

  return v3;
}

void sub_1E37EB008()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E37EB084()
{
  v0 = sub_1E37BD5C4();

  return MEMORY[0x1EEE6BDC0](v0, 161, 7);
}

uint64_t sub_1E37EB0D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v17 = type metadata accessor for TimeBoundarySubscription(0, v15, v16, v15);
  (*(v10 + 16))(v14, a1, a4);
  v18 = a3;

  v19 = sub_1E37EB238(v18, a2, v14);
  v21[3] = v17;
  v21[4] = swift_getWitnessTable();
  v21[0] = v19;
  sub_1E4200464();
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1E37EB238(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1E37EB2A0(a1, a2, a3);
  return v6;
}

uint64_t *sub_1E37EB2A0(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = *v3;
  v7 = *(v28 + 80);
  OUTLINED_FUNCTION_1_2();
  v9 = v8;
  v27 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  sub_1E42003F4();
  v13 = (v3 + qword_1ECF71258);
  *v13 = 0u;
  v13[1] = 0u;
  *(v3 + qword_1ECF71250) = a1;
  OUTLINED_FUNCTION_8();
  v15 = *(v9 + 16);
  v15(v3 + *(v14 + 120), a3, v7);
  v16 = a1;
  sub_1E37EB640(a2);

  v17 = sub_1E42062A4();

  v18 = swift_allocObject();
  swift_weakInit();
  v29 = a3;
  v15(v12, a3, v7);
  v19 = v27;
  v20 = (*(v27 + 80) + 40) & ~*(v27 + 80);
  v21 = swift_allocObject();
  v22 = v28;
  *(v21 + 2) = v7;
  *(v21 + 3) = *(v22 + 88);
  *(v21 + 4) = v18;
  (*(v19 + 32))(&v21[v20], v12, v7);
  v33 = sub_1E37EB73C;
  v34 = v21;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v32 = sub_1E37EB82C;
  *(&v32 + 1) = &block_descriptor_11;
  v23 = _Block_copy(&aBlock);

  v24 = [v16 addBoundaryTimeObserverForTimes:v17 withHandler:v23];
  _Block_release(v23);

  if (v24)
  {
    sub_1E4207264();

    swift_unknownObjectRelease();
    (*(v19 + 8))(v29, v7);
  }

  else
  {
    (*(v19 + 8))(v29, v7);

    aBlock = 0u;
    v32 = 0u;
  }

  v25 = qword_1ECF71258;
  OUTLINED_FUNCTION_11_3(v3 + qword_1ECF71258, v30);
  sub_1E37EB5D0(&aBlock, v3 + v25);
  swift_endAccess();
  return v3;
}

uint64_t sub_1E37EB5D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E37EB640(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1E37EBF70(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E37EBF70((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1E329504C(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1E37EB73C(char a1)
{
  OUTLINED_FUNCTION_5_0(*(v1 + 32) + 16, v4);
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + qword_1ECF71250);

    [v3 elapsedTime];

    return sub_1E4200474();
  }

  return result;
}

double sub_1E37EB82C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

char *sub_1E37EB880()
{
  v1 = *v0;
  sub_1E37EB958();
  v2 = qword_1ECF71248;
  sub_1E4200404();
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(&v0[v2]);

  sub_1E329505C(&v0[qword_1ECF71258]);
  OUTLINED_FUNCTION_8();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v4 + 120)]);
  return v0;
}

uint64_t sub_1E37EB958()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E4203FF4();
  OUTLINED_FUNCTION_1_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = qword_1ECF71258;
  OUTLINED_FUNCTION_5_0(v1 + qword_1ECF71258, v33);
  sub_1E3294F34(v1 + v18, &aBlock);
  if (!v29)
  {
    return sub_1E329505C(&aBlock);
  }

  sub_1E329504C(&aBlock, v34);
  v26 = v11;
  v19 = *(v1 + qword_1ECF71250);
  sub_1E32ADE38();
  v20 = sub_1E4206A04();
  v21 = swift_allocObject();
  swift_weakInit();
  sub_1E328438C(v34, v32);
  v22 = swift_allocObject();
  *(v22 + 16) = *(v3 + 80);
  *(v22 + 24) = *(v3 + 88);
  *(v22 + 32) = v19;
  sub_1E329504C(v32, (v22 + 40));
  *(v22 + 72) = v21;
  v30 = sub_1E37EBCE0;
  v31 = v22;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v28 = sub_1E378AEA4;
  v29 = &block_descriptor_10;
  v23 = _Block_copy(&aBlock);
  v24 = v19;

  sub_1E4203FE4();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E378AD28();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v17, v10, v23);
  _Block_release(v23);

  (*(v6 + 8))(v10, v4);
  (*(v13 + 8))(v17, v26);
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_1E37EBC88()
{
  sub_1E37EB880();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double sub_1E37EBCE0()
{
  v1 = v0[4];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  [v1 removeBoundaryTimeObserverWithToken_];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5_0(v2 + 16, v9);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    memset(v8, 0, sizeof(v8));
    v6 = qword_1ECF71258;
    OUTLINED_FUNCTION_11_3(Strong + qword_1ECF71258, v7);
    sub_1E37EB5D0(v8, v5 + v6);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E37EBDC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1ECF71248;
  sub_1E4200404();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t sub_1E37EBE88(uint64_t a1)
{
  result = sub_1E4200404();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_1E37EBF70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E37EBF90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E37EBF90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_1E37EC0A4()
{
  v1 = v0;
  type metadata accessor for ImageLayout();
  v2 = sub_1E3BD61D8();

  v3 = *sub_1E3E5FD88();
  v4 = *(*v2 + 680);
  v5 = v3;
  v4(v3);
  v112 = 1;
  v113 = 0;
  v110 = 1;
  v111 = 0;
  v108 = 1;
  v109 = 0;
  type metadata accessor for SymbolScale(0);
  v7 = v6;
  sub_1E3C3DE00();
  v104 = v106;
  v105 = v107;
  v8 = sub_1E3C3DE00();
  v100 = v102;
  v101 = v103;
  v16 = OUTLINED_FUNCTION_1_66(v8, v9, v10, v11, v12, v13, v14, v15, 2);
  sub_1E3C2FCB8(v16, v17, v18, &v104, &v100, &v108, v7, v19);
  memcpy(v99, __src, 0x59uLL);
  v20 = OUTLINED_FUNCTION_18();
  v21 = *(*v2 + 1600);
  v29 = OUTLINED_FUNCTION_30_3(v20, v22, v23, v24, v25, v26, v27, v28, v99[0]);
  v21(v29, 91);
  v30 = objc_opt_self();
  if ([v30 isVision] & 1) != 0 || (objc_msgSend(v30, sel_isPad) & 1) != 0 || (objc_msgSend(v30, sel_isPhone))
  {
    v31 = 0x4020000000000000;
  }

  else if ([v30 isMac])
  {
    v31 = 0x4018000000000000;
  }

  else
  {
    v31 = 0x4024000000000000;
  }

  (*(*v2 + 2096))(10);
  (*(*v2 + 256))(v31, 0);

  LOBYTE(v99[0]) = 5;
  LOBYTE(v112) = 6;
  LOBYTE(v110) = 6;
  LOBYTE(v108) = 6;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_3_33();
  v32 = sub_1E3C3DE00();
  LOBYTE(v100) = v102;
  v40 = OUTLINED_FUNCTION_1_66(v32, v33, v34, v35, v36, v37, v38, v39, v99[0]);
  sub_1E3C2FCB8(v40, v41, v42, &v104, &v100, &v108, &qword_1F5D54AF8, v43);
  OUTLINED_FUNCTION_0_40();
  v44 = OUTLINED_FUNCTION_18();
  v52 = OUTLINED_FUNCTION_30_3(v44, v45, v46, v47, v48, v49, v50, v51, v99[0]);
  v21(v52, 97);
  type metadata accessor for TextLayout();
  v53 = sub_1E383BCC0();
  (*(*v53 + 2056))(1, 0);
  OUTLINED_FUNCTION_2_33();
  (*(v54 + 2080))(1, 0);
  OUTLINED_FUNCTION_2_33();
  (*(v55 + 2104))(1, 0);
  OUTLINED_FUNCTION_2_33();
  (*(v56 + 1984))(1);
  OUTLINED_FUNCTION_2_33();
  (*(v57 + 2008))(1);

  v58 = *sub_1E3E5FDEC();
  v59 = *(*v53 + 680);
  v60 = v58;
  v59(v58);

  OUTLINED_FUNCTION_2_33();
  (*(v61 + 1720))(7);
  LOBYTE(v99[0]) = 27;
  LOBYTE(v112) = 3;
  LOBYTE(v110) = 20;
  LOBYTE(v108) = 14;
  LOBYTE(v106) = 21;
  v62 = sub_1E3C3DE00();
  LOBYTE(v102) = v104;
  v70 = OUTLINED_FUNCTION_1_66(v62, v63, v64, v65, v66, v67, v68, v69, v99[0]);
  sub_1E3C2FCB8(v70, v71, v72, &v102, &v108, &v106, &qword_1F5D549D8, v73);
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_2_33();
  v75 = *(v74 + 1600);
  v84 = OUTLINED_FUNCTION_30_3(v76, v77, v78, v79, v80, v81, v82, v83, v99[0]);
  v75(v84, 48);
  LOBYTE(v99[0]) = 5;
  LOBYTE(v112) = 10;
  sub_1E3C2FC98();
  LOBYTE(v108) = v110;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_3_33();
  sub_1E3C3DE00();
  LOBYTE(v100) = v102;
  sub_1E3C3DE00();
  v115[0] = v115[1];
  sub_1E3C2FCB8(v99, &v108, &v104, &v100, &v112, v115, &qword_1F5D54AF8, __src);
  OUTLINED_FUNCTION_0_40();
  v85 = OUTLINED_FUNCTION_18();
  v93 = OUTLINED_FUNCTION_30_3(v85, v86, v87, v88, v89, v90, v91, v92, v99[0]);
  v75(v93, 54);
  v94 = sub_1E37EC6E4();
  swift_beginAccess();
  v95 = v1[31];
  v96 = v1[32];
  v97 = v1[33];
  v1[31] = v2;
  v1[32] = v53;
  v1[33] = v94;
  return sub_1E37EC9B0(v95, v96, v97);
}

uint64_t sub_1E37EC6E4()
{
  v0 = sub_1E42012F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  type metadata accessor for TextLayout();
  v7 = sub_1E383BCC0();
  sub_1E41480CC(v7);
  v8 = type metadata accessor for TextBadgeLayout(0);
  v10 = sub_1E39DFD8C(v6, v8, v9);
  sub_1E3831898(v10);
  sub_1E3831908(1, 9u, v6, v44);
  v11 = v44[3];
  v16 = *&v44[7];
  v17 = *&v44[5];
  (*(v1 + 8))(v3, v0);
  sub_1E37ECA8C(v6);
  v18[0] = v17;
  v18[1] = v16;
  LOBYTE(v18[2]) = 0;
  type metadata accessor for UIEdgeInsets();
  v13 = v12;
  sub_1E3C2FC98();
  v39[0] = v41;
  v39[1] = v42;
  v40 = v43;
  sub_1E3C3DE00();
  v34[0] = v36;
  v34[1] = v37;
  v35 = v38;
  sub_1E3C3DE00();
  v29[0] = v31;
  v29[1] = v32;
  v30 = v33;
  sub_1E3C3DE00();
  v24[0] = v26;
  v24[1] = v27;
  v25 = v28;
  sub_1E3C3DE00();
  v19[0] = v21;
  v19[1] = v22;
  v20 = v23;
  sub_1E3C2FCB8(v18, v39, v34, v29, v24, v19, v13, v44);
  memcpy(v18, v44, 0xE9uLL);
  v14 = OUTLINED_FUNCTION_18();
  (*(*v7 + 1600))(v18, 1, v14 & 1, v13);

  return v7;
}

double sub_1E37EC9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1E37EC9FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E37ECA3C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1E37ECA8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E37ECB08()
{
  v1 = *(v0 + 304);
  if (!v1)
  {
    v1 = sub_1E39BE330();
  }

  return v1;
}

uint64_t sub_1E37ECB4C()
{
  if (*(v0 + 320))
  {
    v1 = *(v0 + 312);
  }

  else
  {
    v1 = sub_1E3F53194();
  }

  return v1;
}

uint64_t sub_1E37ECBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_allocObject();
  return sub_1E37ECBF4(v5, a2, a3);
}

uint64_t sub_1E37ECBF4(__int16 a1, uint64_t a2, uint64_t a3)
{
  v3[38] = 0;
  v3[39] = 0;
  v3[40] = 0;
  return sub_1E3F53270(a1, a2, a3);
}

uint64_t sub_1E37ECC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = swift_allocObject();
  v10[38] = a5;
  v10[39] = a6;
  v10[40] = a7;
  return sub_1E3F537AC();
}

uint64_t sub_1E37ECC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[38] = a5;
  v7[39] = a6;
  v7[40] = a7;
  return sub_1E3F537AC();
}

uint64_t sub_1E37ECC8C(uint64_t a1, double a2, double a3)
{
  if (!a1)
  {
    if (!(*(*v3 + 392))())
    {
      return 0;
    }

    type metadata accessor for ImageLayout();
    if (!swift_dynamicCastClass())
    {
LABEL_8:

      return 0;
    }
  }

  type metadata accessor for ImageLayout();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

    goto LABEL_8;
  }

  v7 = v6;
  v8 = *(*v3 + 1152);

  v9 = v8(v7, a2, a3);

  return v9;
}

uint64_t sub_1E37ECDC0(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(v1 + 24);
  result = (v3 | v4) == 0;
  if (v3 && v4)
  {
    if (*(a1 + 16) == *(v1 + 16) && v3 == v4)
    {
      return 1;
    }

    else
    {
      return sub_1E42079A4();
    }
  }

  return result;
}

void *sub_1E37ECE04(uint64_t a1, double a2, double a3)
{
  v5 = a3;
  v6 = a2;
  if (a2 == 0.0 && a3 == 0.0)
  {
    v6 = (*(*a1 + 2288))(a1);
    v5 = v7;
  }

  sub_1E37ECFB8();
  v8 = sub_1E37ECFFC(v6, v5, v6, v5);
  v9 = v8;
  if (v8)
  {
    v10 = (*(*v3 + 1160))(v8, a1);
    (*(*v3 + 904))(v10);
    if (v11)
    {
      v12 = sub_1E4205ED4();
    }

    else
    {
      v12 = 0;
    }

    [v9 setAccessibilityText_];

    v15[3] = &unk_1F5D5D408;
    v15[4] = &off_1F5D5C818;
    LOBYTE(v15[0]) = 1;
    v13 = sub_1E39C29F0(v15, 1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    [v9 setClearsExisting_];
  }

  return v9;
}

unint64_t sub_1E37ECFB8()
{
  result = qword_1EE23B008;
  if (!qword_1EE23B008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B008);
  }

  return result;
}

id sub_1E37ECFFC(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_1E4205ED4();

  v10 = [v8 initWithSrc:v9 size:a1 containerSize:{a2, a3, a4}];

  return v10;
}

void sub_1E37ED0A0(id a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    v5 = (*(v4 + 744))();
    OUTLINED_FUNCTION_2_34(v5, sel_setBackgroundColor_);

    OUTLINED_FUNCTION_13();
    v7 = (*(v6 + 672))();
    v8 = v7;
  }

  else
  {
    v7 = [a1 setBackgroundColor_];
    v8 = 0;
  }

  OUTLINED_FUNCTION_2_34(v7, sel_setTintColor_);

  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    v10 = (*(v9 + 864))();
    OUTLINED_FUNCTION_2_34(v10, sel_setHighlightColor_);

    OUTLINED_FUNCTION_13();
    (*(v11 + 552))(v35);
    if ((v36 & 1) == 0)
    {
      [a1 setBorderRadii_];
    }

    OUTLINED_FUNCTION_47_0();
    v13 = (*(v12 + 1824))();
    v14 = v13;
  }

  else
  {
    v13 = [a1 setHighlightColor_];
    v14 = 0;
  }

  OUTLINED_FUNCTION_2_34(v13, sel_setBorderColor_);

  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    (*(v15 + 1848))(v37);
    v16 = v37[0];
    if (v38)
    {
      v16 = 0.0;
    }

    [a1 setBorderWidth_];
    OUTLINED_FUNCTION_13();
    v18 = (*(v17 + 1872))();
  }

  else
  {
    [a1 setBorderWidth_];
    v18 = 0;
  }

  [a1 setContinuousBorder_];
  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    [a1 setRenderAsTemplate_];
    OUTLINED_FUNCTION_13();
    v21 = (*(v20 + 600))();
    v22 = v21;
  }

  else
  {
    v21 = [a1 setRenderAsTemplate_];
    v22 = 0;
  }

  OUTLINED_FUNCTION_2_34(v21, sel_setShadow_);

  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    v24 = (*(v23 + 1992))();
    MEMORY[0x1EEE9AC00](v24);
    OUTLINED_FUNCTION_4_15();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC48, "Xi\r");
    v25 = OUTLINED_FUNCTION_3_34();
    sub_1E4148DE0(v25);
    OUTLINED_FUNCTION_13();
    v34 = (*(v26 + 1968))();
    MEMORY[0x1EEE9AC00](v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC50, &unk_1E42DC510);
    v27 = OUTLINED_FUNCTION_3_34();
    sub_1E4148DE0(v27);

    OUTLINED_FUNCTION_13();
    v29 = (*(v28 + 1800))();
    MEMORY[0x1EEE9AC00](v29);
    OUTLINED_FUNCTION_4_15();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC58, "^i\r");
    v30 = OUTLINED_FUNCTION_3_34();
    sub_1E4148DE0(v30);
    OUTLINED_FUNCTION_13();
    v32 = (*(v31 + 624))();
    MEMORY[0x1EEE9AC00](v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60, &qword_1E42D7E80);
    v33 = OUTLINED_FUNCTION_3_34();
    sub_1E4148DE0(v33);
  }
}

void sub_1E37ED640(char *a1)
{
  v2 = *(v1 + 16);
  sub_1E3B65098(*a1);
  v3 = sub_1E4205ED4();

  [v2 setPlaceholderSrc_];
}

id sub_1E37ED6C4(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_13_30(*a1);

  return [v2 setScaleMode_];
}

uint64_t sub_1E37ED754()
{
}

uint64_t sub_1E37ED784()
{
  v0 = sub_1E3F5527C();

  return v0;
}

uint64_t sub_1E37ED7BC()
{
  v0 = sub_1E37ED784();

  return MEMORY[0x1EEE6BDC0](v0, 328, 7);
}

uint64_t sub_1E37ED848(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_children;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = a1;
}

void sub_1E37ED914(void *a1)
{
  OUTLINED_FUNCTION_37(a1);
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1E37ED9C4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1E37EDA10(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1(a1);
  *v2 = a1;
  v2[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1E37EDAA8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_canBeSelected;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E37EDADC(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_canBeSelected;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E37EDB68()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_badgeCount;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1E37EDBB0(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_9_1(a1);
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E37EDC48(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_collapsable;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E37EDC7C(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_collapsable;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E37EDD08(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_editable;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E37EDD3C(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_editable;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E37EDDC8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showHeader;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E37EDDFC(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showHeader;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E37EDE88(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_hasDivider;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E37EDEBC(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_hasDivider;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E37EE010(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showsImageInFavorites;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E37EE044(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showsImageInFavorites;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

double sub_1E37EE11C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_37(a1);
  *(v2 + v4) = a1;

  return result;
}

uint64_t sub_1E37EE1B8(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1E37EE214(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_9_1(a1);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1E37EE2A8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isPinnedInFavorites;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E37EE2DC(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isPinnedInFavorites;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E37EE368(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isShownInFavoritesByDefault;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E37EE39C(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isShownInFavoritesByDefault;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E37EE428(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isEditableInFavorites;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E37EE45C(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isEditableInFavorites;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E37EE4E8(void *a1)
{
  v3 = *(v1 + 808);

  OUTLINED_FUNCTION_25();
  v6 = v3(v4, v5);

  return v6;
}

void sub_1E37EE614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, char a9, char a10, uint64_t a11)
{

  v16 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_children;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_children) = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_defaultChildSelectionIdentifier);
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_manager);
  v17 = v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_badgeCount;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_imageViewModel) = 0;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_secondaryImageViewModel) = 0;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showsImageInFavorites) = 0;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_favoritesImageViewModel) = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_favoritesTitle);
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isPinnedInFavorites) = 0;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isShownInFavoritesByDefault) = 0;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isEditableInFavorites) = 1;
  OUTLINED_FUNCTION_3_0(v17, v29);
  *v17 = a5;
  *(v17 + 8) = a6 & 1;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_collapsable) = a7;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_editable) = a8;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showHeader) = a9;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_hasDivider) = a10;
  OUTLINED_FUNCTION_3_0(v11 + v16, v28);
  *(v11 + v16) = a11;

  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_canBeSelected) = 1;

  v19 = sub_1E3D7141C(v18);
  v20 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_children;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v21 = *(v19 + v20);
  v22 = sub_1E32AE9B0(v21);
  v23 = v19;

  for (i = 0; ; ++i)
  {
    if (v22 == i)
    {

      return;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1E6911E60](i, v21);
    }

    else
    {
      if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v25 = *(v21 + 8 * i + 32);
    }

    v26 = v25;
    if (__OFADD__(i, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_3_0(v25 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_parent, v27);
    swift_unknownObjectWeakAssign();
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1E37EE954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, uint64_t a15)
{
  v16 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_children;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_children) = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_defaultChildSelectionIdentifier);
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_manager);
  v17 = v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_badgeCount;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_imageViewModel) = 0;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_secondaryImageViewModel) = 0;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showsImageInFavorites) = 0;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_favoritesImageViewModel) = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_favoritesTitle);
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isPinnedInFavorites) = 0;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isShownInFavoritesByDefault) = 0;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isEditableInFavorites) = 1;
  OUTLINED_FUNCTION_3_0(v17, v36);
  *v17 = a9;
  *(v17 + 8) = a10 & 1;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_collapsable) = a11;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_editable) = a12;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showHeader) = a13;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_hasDivider) = a14;
  OUTLINED_FUNCTION_3_0(v15 + v16, v35);
  *(v15 + v16) = a15;

  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_canBeSelected) = 1;
  v18 = sub_1E3D71290(a1, a2, a3, a4, a5, a6, a7, a8);
  v19 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_children;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v20 = *&v18[v19];
  v21 = sub_1E32AE9B0(v20);
  v22 = v18;

  for (i = 0; ; ++i)
  {
    if (v21 == i)
    {

      return;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1E6911E60](i, v20);
    }

    else
    {
      if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v24 = *(v20 + 8 * i + 32);
    }

    v25 = v24;
    if (__OFADD__(i, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_3_0(v24 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_parent, v34);
    swift_unknownObjectWeakAssign();
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1E37EEBDC(uint64_t a1)
{
  sub_1E3294F34(a1, v12);
  if (!v13)
  {
    sub_1E329505C(v12);
    goto LABEL_7;
  }

  v2 = type metadata accessor for LibrarySidebarItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    return v8 & 1;
  }

  v3 = v11;
  v10.receiver = v1;
  v10.super_class = v2;
  if (!objc_msgSendSuper2(&v10, sel_isEqual_, v11))
  {

    goto LABEL_7;
  }

  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 376))();
  v7 = (*((*v4 & *v3) + 0x178))();
  v8 = sub_1E37EED28(v6, v7);

  return v8 & 1;
}

uint64_t sub_1E37EED28(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v18 = 0;
      return v18 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v18 = 1;
      return v18 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for LibrarySidebarItem();
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E6911E60](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v14 = *(a1 + 8 * v11);
      }

      v15 = v14;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E6911E60](v11 - 4, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v16 = *(a2 + 8 * v11);
      }

      v17 = v16;
      v18 = sub_1E4206F64();

      if (v18)
      {
        ++v11;
        if (v13 != i)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void sub_1E37EEF54(unint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 392))(v5);
  v4 = sub_1E37EF010(a1);
  v3(v5, 0);
  OUTLINED_FUNCTION_3_0(v4 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_parent, v5);
  swift_unknownObjectWeakAssign();
}

unint64_t sub_1E37EF010(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1E37EFA58(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    memmove((v8 + 32), (v8 + 40), 8 * v7);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t sub_1E37EF0A0(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21();
  v5 = (*(v4 + 392))(v9);
  sub_1E37EFABC(a2, *v6);
  v7 = a1;
  sub_1E37EFB14(a2, a2, v7);
  v5(v9, 0);
  OUTLINED_FUNCTION_3_0(&v7[OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_parent], v9);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E37EF1E0()
{

  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_parent);

  swift_unknownObjectRelease();
}

id sub_1E37EF288(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LibrarySidebarItem();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E37EF370()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 376))();
}

uint64_t sub_1E37EF3C4@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 400))();
  *a1 = result;
  return result;
}

uint64_t sub_1E37EF420()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 424))();
}

uint64_t sub_1E37EF474()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 448))();
}

uint64_t sub_1E37EF4C8()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 472))() & 1;
}

uint64_t sub_1E37EF520()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 496))();
}

uint64_t sub_1E37EF578()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 520))() & 1;
}

uint64_t sub_1E37EF5D0()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 544))() & 1;
}

uint64_t sub_1E37EF628()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 568))() & 1;
}

uint64_t sub_1E37EF680()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 592))() & 1;
}

uint64_t sub_1E37EF6D8()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 616))();
}

uint64_t sub_1E37EF72C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 640))();
}

uint64_t sub_1E37EF780()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 664))() & 1;
}

uint64_t sub_1E37EF7D8()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 688))();
}

uint64_t sub_1E37EF82C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 712))();
}

uint64_t sub_1E37EF880()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 736))() & 1;
}

uint64_t sub_1E37EF8D8()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 760))() & 1;
}

uint64_t sub_1E37EF930()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 784))() & 1;
}

uint64_t sub_1E37EF988()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 824))();
}

uint64_t sub_1E37EF9DC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 832))();
}

uint64_t sub_1E37EFA58(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1E4207384();
  }

  return sub_1E4207514();
}

uint64_t sub_1E37EFABC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_1E37EFB14(uint64_t result, uint64_t a2, char *a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  if (sub_1E32AE9B0(*v3) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = 1 - v8;
  if (__OFSUB__(1, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1E32AE9B0(v7);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1E3797CDC(v12, 1);

  sub_1E37EFBD0(result, a2, 1, a3);
}

void sub_1E37EFBD0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  type metadata accessor for LibrarySidebarItem();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_1E4207384();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_1E4207384();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_1E37EFD10@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_collectionImpressioner;
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E3294EE4(v1 + v3, a1, &unk_1ECF296D0, &qword_1E429BAA0);
}

uint64_t sub_1E37EFD70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_collectionImpressioner;
  v4 = OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_11_3(v4, v5);
  sub_1E37FA198(a1, v1 + v3, &unk_1ECF296D0, &qword_1E429BAA0);
  return swift_endAccess();
}

uint64_t sub_1E37EFE20()
{
  OUTLINED_FUNCTION_17_21();
  OUTLINED_FUNCTION_79_6();
  OUTLINED_FUNCTION_78_2();
  if (v2 == 2)
  {
    return v0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1E37EFE84(char a1, char a2)
{
  if (a1 != 2)
  {
    if (a1 == 3)
    {
      if (a2 != 3)
      {
        return OUTLINED_FUNCTION_18();
      }
    }

    else
    {
      v3 = a2 & 0xFE;
      if (a1)
      {
        if (v3 == 2 || (a2 & 1) == 0)
        {
          return OUTLINED_FUNCTION_18();
        }
      }

      else if (v3 == 2 || (a2 & 1) != 0)
      {
        return OUTLINED_FUNCTION_18();
      }
    }

    return 1;
  }

  if (a2 == 2)
  {
    return 1;
  }

  return OUTLINED_FUNCTION_18();
}

void sub_1E37EFFB4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1E324FBDC();
  (*(v3 + 16))(v7, v8, v1);
  v9 = v0;
  v10 = sub_1E41FFC94();
  v11 = sub_1E42067E4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_6_21();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    OUTLINED_FUNCTION_17_21();
    OUTLINED_FUNCTION_79_6();
    OUTLINED_FUNCTION_78_2();
    if (v20)
    {
      v18 = v19;
    }

    if (v14 == 2)
    {
      v21 = v16;
    }

    else
    {
      v21 = v17;
    }

    if (v14 == 2)
    {
      v22 = v15;
    }

    else
    {
      v22 = v18;
    }

    v23 = sub_1E3270FC8(v21, v22, &v24);

    *(v12 + 4) = v23;
    _os_log_impl(&dword_1E323F000, v10, v11, "PlaylistViewController:: playbackState to change to %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37F0170()
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E37F01B0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataViewModels;
  OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataViewModels, a2);
  *(v2 + v4) = a1;
}

uint64_t sub_1E37F0214()
{
  v1 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_dismissOnEnd;
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E37F0250(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_dismissOnEnd;
  result = OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_dismissOnEnd, a2);
  *(v2 + v4) = a1;
  return result;
}

double sub_1E37F02E0()
{
  v1 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataTimeout;
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E37F031C(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataTimeout;
  v4 = OUTLINED_FUNCTION_46_3();
  result = OUTLINED_FUNCTION_3_0(v4, v5);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E37F03B8(uint64_t a1, char a2)
{
  v5 = OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataFadeInTime);
  result = OUTLINED_FUNCTION_3_0(v5, v6);
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

void sub_1E37F0454()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 1072))();
  v2 = sub_1E3C465D8();

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }
}

void sub_1E37F04C4()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 1072))();
  if ((v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    sub_1E3C4AA34(v0, 2, 1);
  }
}

uint64_t sub_1E37F0558(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  sub_1E37F0454();
  *v1 = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E37F05BC()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 1072))();
  v2 = sub_1E3C51370();

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E32AE9B0(v2);

  return v3;
}

void (*sub_1E37F0668(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E37F0644();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E37F06A8;
}

void (*sub_1E37F06F0(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  OUTLINED_FUNCTION_21();
  v2 += 134;
  v3 = *v2;
  *(v4 + 8) = *v2;
  *(v4 + 16) = v2 & 0xFFFFFFFFFFFFLL | 0xFABD000000000000;
  v5 = v3();
  v6 = sub_1E3C515D0();

  *(v1 + 24) = v6 & 1;
  return sub_1E37F0790;
}

void sub_1E37F07A8()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 1072))();
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E3C52AD4();
}

uint64_t sub_1E37F084C()
{
  v1 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_waitForUserInitiatedPlaybackStart;
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E37F08A8(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void (*sub_1E37F0934(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E37F0910();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E37F0974;
}

uint64_t sub_1E37F0998()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 1072))();
  v3 = *v0;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = v2[v3];

  return v4;
}

void (*sub_1E37F0A30(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E37F098C();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E37F0A70;
}

void sub_1E37F0A88(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a1 + 8);
  OUTLINED_FUNCTION_21();
  (*(v5 + 1072))();
  OUTLINED_FUNCTION_37_3();
  a3(v4);
}

uint64_t sub_1E37F0B50(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  OUTLINED_FUNCTION_21();
  v2 += 134;
  v3 = *v2;
  *(v4 + 16) = *v2;
  *(v4 + 24) = v2 & 0xFFFFFFFFFFFFLL | 0xFABD000000000000;
  v5 = v3();
  v6 = sub_1E3C52BE0();

  *v1 = v6;
  return OUTLINED_FUNCTION_116();
}

void sub_1E37F0BE8(uint64_t *a1)
{
  v1 = *a1;
  (a1[2])();
  OUTLINED_FUNCTION_37_3();
  sub_1E3C52C40(v1);
}

uint64_t sub_1E37F0C54()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 1072))();
  v3 = v0();

  return v3;
}

uint64_t sub_1E37F0CD8(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  OUTLINED_FUNCTION_21();
  v2 += 134;
  v3 = *v2;
  *(v4 + 16) = *v2;
  *(v4 + 24) = v2 & 0xFFFFFFFFFFFFLL | 0xFABD000000000000;
  v5 = v3();
  v6 = sub_1E3C53604();

  *v1 = v6;
  return OUTLINED_FUNCTION_116();
}

void sub_1E37F0D70(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    v3 = *a1;
    v2();
    OUTLINED_FUNCTION_97_5();
  }

  else
  {
    v2();
    OUTLINED_FUNCTION_97_5();
  }
}

uint64_t sub_1E37F0DDC()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 1072))();
  v2 = sub_1E3C4772C();

  return v2;
}

void sub_1E37F0E54()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 1072))();
  sub_1E3C47760(v1, v0);
}

uint64_t sub_1E37F0EE4(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *(v4 + 0x430);
  v3[3] = v5;
  v3[4] = (v4 + 1072) & 0xFFFFFFFFFFFFLL | 0xFABD000000000000;
  v6 = v5();
  v7 = sub_1E3C4772C();
  v9 = v8;

  *v3 = v7;
  v3[1] = v9;
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E37F0FB0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 16);
  if (a2)
  {

    (v4)(v6);
    v7 = OUTLINED_FUNCTION_38();
    sub_1E3C47760(v7, v3);
  }

  else
  {
    v4();
    v8 = OUTLINED_FUNCTION_38();
    sub_1E3C47760(v8, v3);
  }

  free(v2);
}

void sub_1E37F1040()
{
  v1 = v0;
  OUTLINED_FUNCTION_21();
  v2 += 134;
  v3 = *v2;
  v4 = (*v2)();
  v5 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isVideoOnly;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E3C51FE8(*(v1 + v5));

  v6 = v3();
  sub_1E3C52DB4((*(v1 + v5) & 1) == 0);
}

uint64_t sub_1E37F1100()
{
  v1 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isVideoOnly;
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E37F115C(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = OUTLINED_FUNCTION_14_0(v3 + *a2, a2);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1E37F11A8(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E37F1210(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1E37F126C()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 1072))();
  v3 = v0();

  return v3 & 1;
}

void (*sub_1E37F12F0(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  OUTLINED_FUNCTION_21();
  v2 += 134;
  v3 = *v2;
  *(v4 + 8) = *v2;
  *(v4 + 16) = v2 & 0xFFFFFFFFFFFFLL | 0xFABD000000000000;
  v5 = v3();
  v6 = sub_1E3C52EC0();

  *(v1 + 24) = v6 & 1;
  return sub_1E37F1390;
}

void sub_1E37F13A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a1 + 24);
  (*(a1 + 8))(a1, a2);
  OUTLINED_FUNCTION_37_3();
  a3(v4);
}

BOOL sub_1E37F1410()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 1072))();
  v2 = sub_1E3C46500();

  if (!v2 || (OUTLINED_FUNCTION_8(), v4 = (*(v3 + 552))(), , !v4))
  {
    v9 = 0u;
    v10 = 0u;
    goto LABEL_7;
  }

  v8[3] = &unk_1F5D7BE68;
  v8[4] = &off_1F5D7BC48;
  LOBYTE(v8[0]) = 8;
  sub_1E3F9F164(v8, v4, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v8);
  if (!*(&v10 + 1))
  {
LABEL_7:
    sub_1E325F6F0(&v9, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v5 = v8[0];
LABEL_9:
  v6 = *(v5 + 16);

  return v6 != 0;
}

void sub_1E37F157C()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 512))();
  OUTLINED_FUNCTION_26_3();
  v24 = v2;
  v26 = (*((*v0 & v3) + 0x280))();
  LOBYTE(v27) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
  sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0, MEMORY[0x1E69E6340]);
  sub_1E38D2054(&v26, &v29);

  if (!v29)
  {
    return;
  }

  OUTLINED_FUNCTION_8();
  v5 = (*(v4 + 488))();

  if (!v5)
  {
    return;
  }

  v7 = sub_1E373E010(224, v5, v6);

  if (!v7)
  {
    return;
  }

  v8 = *(*v7 + 488);

  v10 = v8(v9);

  if (!v10 || (v12 = sub_1E373E010(91, v10, v11), , !v12))
  {
LABEL_21:

    return;
  }

  v13 = *(*v12 + 464);

  v15 = v13(v14);

  if (!v15)
  {

    goto LABEL_21;
  }

  v16 = sub_1E32AE9B0(v15);
  v17 = 0;
  while (1)
  {
    if (v16 == v17)
    {
      goto LABEL_25;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1E6911E60](v17, v15);
      v18 = v19;
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    if (__OFADD__(v17, 1))
    {
      break;
    }

    LOWORD(v29) = *(v18 + 98);
    v28 = 68;
    sub_1E3742F1C(v19, v20, v21);
    sub_1E4206254();
    sub_1E4206254();
    if (v26 == v24 && v27 == v25)
    {

LABEL_25:

      return;
    }

    v23 = sub_1E42079A4();

    ++v17;
    if (v23)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_1E37F1B70(uint64_t *a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_33_9(*a1);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_67_0();
  a2(v3);
  return OUTLINED_FUNCTION_67_0();
}

uint64_t sub_1E37F1BE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = OUTLINED_FUNCTION_33_9(*a3);
  OUTLINED_FUNCTION_3_0(v8, v9);
  v10 = *v4;
  v11 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  return a4(v10, v11);
}

uint64_t sub_1E37F1C90(void *a1)
{
  v2 = v1 + *a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1E37F1CD4(uint64_t a1, char a2)
{
  v5 = OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataContentHeight);
  result = OUTLINED_FUNCTION_3_0(v5, v6);
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

id sub_1E37F1D24()
{
  v1 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType);
    v31 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType) == 0;
    type metadata accessor for PaginatedMediaController(0);
    OUTLINED_FUNCTION_26_3();
    v6 = MEMORY[0x1E69E7D40];
    v8 = (*((*MEMORY[0x1E69E7D40] & v7) + 0x200))();
    v9 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_backgroundMediaInfo);
    (*((*v6 & *v0) + 0x1A0))(v32, v9);
    swift_unknownObjectRetain();
    sub_1E3C487D0(0, 0, v8, v9, 0x40201u >> (8 * v5), v0, &off_1F5D57E50, v32, 0, 0);
    v11 = v10;
    v12 = [objc_opt_self() isFeatureEnabled_];
    if (v5 == 2)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = 3;
    }

    sub_1E3C52CF0(v14);
    sub_1E3C52B94(v5 == 2);
    sub_1E3C46318(1);
    sub_1E3C53324(1);
    sub_1E3C475BC(0);
    sub_1E3C52950(0);
    sub_1E3C52728(1);
    sub_1E3C52DB4(1);
    sub_1E3C53038(0);
    sub_1E3C53850(0);
    v15 = (v5 - 1) > 1;
    v16 = (v5 - 1) < 2;
    sub_1E3C523AC(v16);
    sub_1E3C531B8(1);
    sub_1E3C533E4(v16);
    sub_1E3C531E8(1);
    sub_1E3C52E74(v16);
    sub_1E3C531D0(1);
    sub_1E3C522EC(1);
    sub_1E3C467F8(v15);
    sub_1E3C5246C(v15);
    sub_1E3C52AD4();
    sub_1E3C51644(v5 != 2, v17, v18, v19, v20, v21, v22, v23, v28, v29, v30);
    sub_1E3C52C40(1);
    sub_1E3C52920(1);
    sub_1E3C4770C(v15);
    sub_1E3C5252C(v16);
    sub_1E3C51E68(v16);
    sub_1E3C51F28(v31);
    sub_1E3C5216C(0);
    v24 = *MEMORY[0x1E69874E0];
    sub_1E3C5369C();
    sub_1E3C53590(1);
    sub_1E3952C94();
    sub_1E3C534D0();
    sub_1E3C52848(1);
    v25 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v26 = v2;
  return v3;
}

void sub_1E37F2018(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController);
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController) = a1;
}

uint64_t sub_1E37F202C(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E37F1D24();
  return OUTLINED_FUNCTION_116();
}

void sub_1E37F206C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController);
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController) = v2;
}

uint64_t sub_1E37F2084()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E37F20FC@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4D8))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1E37F219C(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_1E4200684();
}

uint64_t sub_1E37F2220()
{
  v0 = OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_11_3(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD78, &qword_1E429F1C0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E37F2288(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD80, &qword_1E429F1C8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v11[-v8 - 8], a1, v3, v7);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController__contentAspectRatio, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD78, &qword_1E429F1C0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

id sub_1E37F23A8(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a3;
  v8 = objc_allocWithZone(v4);
  v9 = OUTLINED_FUNCTION_31_4();
  return sub_1E37F2400(v9, v7, a4, a1);
}

id sub_1E37F2400(uint64_t a1, char a2, void *a3, double a4)
{
  v6 = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD78, &qword_1E429F1C0);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31_2();
  v15 = (v4 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_collectionImpressioner);
  v16 = type metadata accessor for CollectionImpressionManager();
  v17 = sub_1E3F0AE3C();
  v15[3] = v16;
  v15[4] = &off_1F5D8D100;
  *v15 = v17;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden) = 0;
  v18 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_presenter;
  type metadata accessor for MediaShowcasingHeaderViewPresenter(0);
  *(v6 + v18) = sub_1E38C7E9C();
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState) = 2;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_dismissOnEnd) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataTimeout) = 0x4024000000000000;
  v19 = v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataFadeInTime;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_transportVisibilityState) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_waitForUserInitiatedPlaybackStart) = 1;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isVideoOnly) = 0;
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_65_4();
  v20 = v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataContentHeight;
  *v20 = 0;
  *(v20 + 8) = v21;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_interactionManager) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_volumeObserver) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_cancellables) = MEMORY[0x1E69E7CD0];
  v22 = (v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_boundaryObserver);
  *v22 = 0u;
  v22[1] = 0u;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_currentSizeClass) = 7;
  v23 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController__contentAspectRatio;
  v33[0] = 0;
  v33[1] = 0;
  v34 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD70, &qword_1E429F170);
  sub_1E4200634();
  (*(v13 + 32))(v6 + v23, v5, v11);
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataViewModels) = a1;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType) = a2;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_backgroundMediaInfo) = a3;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_autoPlayDuration) = a4;
  v35 = v6;
  v36 = type metadata accessor for PlaylistViewController(0);

  v24 = a3;
  OUTLINED_FUNCTION_25();
  v27 = objc_msgSendSuper2(v25, v26);
  v28 = v27 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_collectionImpressioner;
  OUTLINED_FUNCTION_11_3(v27 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_collectionImpressioner, v33);
  v29 = *(v28 + 24);
  if (v29)
  {
    v30 = *(v28 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v28, *(v28 + 24));
    (*(v30 + 72))(1, v29, v30);
  }

  swift_endAccess();
  sub_1E37F2A9C();
  if ([objc_opt_self() isPhone])
  {
    [v27 _setIgnoreAppSupportedOrientations_];
    [v27 setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  result = [v27 vuiView];
  if (result)
  {
    v32 = result;

    [v32 setAccessibilityIgnoresInvertColors_];

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E37F27C8()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD78, &qword_1E429F1C0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - v6;
  v8 = (v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_collectionImpressioner);
  v9 = type metadata accessor for CollectionImpressionManager();
  v10 = sub_1E3F0AE3C();
  v8[3] = v9;
  v8[4] = &off_1F5D8D100;
  *v8 = v10;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden) = 0;
  v11 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_presenter;
  type metadata accessor for MediaShowcasingHeaderViewPresenter(0);
  *(v1 + v11) = sub_1E38C7E9C();
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState) = 2;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_dismissOnEnd) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataTimeout) = 0x4024000000000000;
  v12 = v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataFadeInTime;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_transportVisibilityState) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_waitForUserInitiatedPlaybackStart) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isVideoOnly) = 0;
  v13 = (v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_hostMetadataView);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackDidBegin);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_initialMediaLoaded);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_indexDidChange);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_onClosePressed);
  *v17 = 0;
  v17[1] = 0;
  v18 = v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataContentHeight;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_interactionManager) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_volumeObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_cancellables) = MEMORY[0x1E69E7CD0];
  v19 = (v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_boundaryObserver);
  *v19 = 0u;
  v19[1] = 0u;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_currentSizeClass) = 7;
  v20 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController__contentAspectRatio;
  v21[1] = 0;
  v21[2] = 0;
  v22 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD70, &qword_1E429F170);
  sub_1E4200634();
  (*(v4 + 32))(v1 + v20, v7, v2);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E37F2A9C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A10, &unk_1E42BC8E0);
  OUTLINED_FUNCTION_0_10();
  v127 = v3;
  v128 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v126 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADF0, &unk_1E429F590);
  OUTLINED_FUNCTION_0_10();
  v130 = v7;
  v131 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v129 = v9;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADF8, &unk_1E42D6B40);
  OUTLINED_FUNCTION_0_10();
  v118 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE00, &unk_1E429F5A0);
  OUTLINED_FUNCTION_0_10();
  v120 = v14;
  v121 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v136 = v18;
  v137 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v125 = v20 - v19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00, &unk_1E42A2900);
  OUTLINED_FUNCTION_0_10();
  v115 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v24);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v109 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE08, &qword_1E429F5B0);
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v109 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE10, qword_1E429F5B8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_26_3();
  v37 = (*((*MEMORY[0x1E69E7D40] & v36) + 0x430))();
  v38 = sub_1E3C53ACC();

  objc_opt_self();
  v124 = v38;
  v39 = swift_dynamicCastObjCClass();
  v40 = &selRef_collectionViewCanBecomeFocused_;
  if (v39)
  {
    v135 = v39;
    swift_getKeyPath();
    sub_1E41FE2F4();

    v132 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v133 = v34;
    v41 = sub_1E4206A04();
    v134 = OUTLINED_FUNCTION_102_4(v41);
    v42 = OUTLINED_FUNCTION_23_19();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    OUTLINED_FUNCTION_8_33(&qword_1EE23AD88, &qword_1ECF2AE08, &qword_1E429F5B0);
    v46 = sub_1E3746800();
    sub_1E42007D4();
    sub_1E325F6F0(v27, &unk_1ECF2D2B0, &unk_1E429D3D0);

    (*(v30 + 8))(v33, v28);
    OUTLINED_FUNCTION_4_0();
    v47 = swift_allocObject();
    OUTLINED_FUNCTION_19_6(v47);
    OUTLINED_FUNCTION_3_15();
    v123 = v48;
    sub_1E32752B0(v49, v50, v51, v52);
    OUTLINED_FUNCTION_40_1();
    sub_1E4200844();
    OUTLINED_FUNCTION_38();

    v53 = OUTLINED_FUNCTION_102_3();
    v54(v53);
    v133 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_cancellables;
    OUTLINED_FUNCTION_27_11(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_cancellables);
    sub_1E42004C4();
    swift_endAccess();

    v122 = objc_opt_self();
    v55 = [v122 defaultCenter];
    v56 = v124;
    v110 = v56;
    v57 = v125;
    sub_1E4206C14();

    v58 = sub_1E4206A04();
    v138 = v58;
    v59 = OUTLINED_FUNCTION_23_19();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v134);
    OUTLINED_FUNCTION_5_42();
    v124 = sub_1E37FA784(v62, v63, MEMORY[0x1E6969F18]);
    v64 = v114;
    v65 = v137;
    v113 = v46;
    sub_1E42007D4();
    sub_1E325F6F0(v27, &unk_1ECF2D2B0, &unk_1E429D3D0);

    v111 = *(v136 + 8);
    v112 = v136 + 8;
    v111(v57, v65);
    OUTLINED_FUNCTION_4_0();
    v66 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v66);
    v109 = sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00, &unk_1E42A2900, v123);
    v67 = v116;
    sub_1E4200844();

    v115 = *(v115 + 8);
    (v115)(v64, v67);
    OUTLINED_FUNCTION_27_11(v1 + v133);
    sub_1E42004C4();
    swift_endAccess();

    v68 = [v122 defaultCenter];
    v69 = v110;
    v110 = v69;
    sub_1E4206C14();

    v70 = sub_1E4206A04();
    v138 = v70;
    v71 = OUTLINED_FUNCTION_23_19();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v134);
    v74 = v137;
    sub_1E42007D4();
    sub_1E325F6F0(v27, &unk_1ECF2D2B0, &unk_1E429D3D0);

    v75 = v111;
    v111(v57, v74);
    OUTLINED_FUNCTION_4_0();
    v76 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v76);
    sub_1E4200844();

    (v115)(v64, v67);
    OUTLINED_FUNCTION_27_11(v1 + v133);
    sub_1E42004C4();
    swift_endAccess();

    v77 = [v122 defaultCenter];
    v78 = v110;
    sub_1E4206C14();

    v79 = v117;
    sub_1E42006C4();
    v80 = OUTLINED_FUNCTION_102_3();
    v75(v80);
    v81 = sub_1E4206A04();
    v138 = v81;
    v82 = OUTLINED_FUNCTION_23_19();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v134);
    OUTLINED_FUNCTION_36_13(&qword_1EE28A378, &qword_1ECF2ADF8, &unk_1E42D6B40);
    v85 = v119;
    sub_1E42007D4();
    sub_1E325F6F0(v27, &unk_1ECF2D2B0, &unk_1E429D3D0);

    (*(v118 + 8))(v79, v85);
    OUTLINED_FUNCTION_4_0();
    v86 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v86);
    sub_1E32752B0(&qword_1EE28A278, &qword_1ECF2AE00, &unk_1E429F5A0, v123);
    sub_1E4200844();
    OUTLINED_FUNCTION_31_4();

    v87 = OUTLINED_FUNCTION_58_8();
    v88(v87);
    OUTLINED_FUNCTION_27_11(v1 + v133);
    sub_1E42004C4();
    swift_endAccess();

    v40 = &selRef_collectionViewCanBecomeFocused_;

    v89 = v137;
  }

  else
  {

    v89 = v137;
    v57 = v125;
  }

  v90 = [objc_opt_self() v40[372]];
  v91 = *MEMORY[0x1E69DF7E0];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v92 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v92);
  OUTLINED_FUNCTION_5_42();
  sub_1E37FA784(v93, v94, MEMORY[0x1E6969F18]);
  sub_1E42007B4();

  (*(v136 + 8))(v57, v89);
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v95 = sub_1E4206A04();
  OUTLINED_FUNCTION_102_4(v95);
  v96 = OUTLINED_FUNCTION_23_19();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
  OUTLINED_FUNCTION_34_16(&qword_1EE28A2E0, &unk_1ECF33A10, &unk_1E42BC8E0);
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F6F0(v27, &unk_1ECF2D2B0, &unk_1E429D3D0);

  v100 = OUTLINED_FUNCTION_58_8();
  v101(v100);
  OUTLINED_FUNCTION_4_0();
  v102 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v102);
  OUTLINED_FUNCTION_3_15();
  sub_1E32752B0(v103, v104, v105, v106);
  OUTLINED_FUNCTION_40_1();
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  v107 = OUTLINED_FUNCTION_102_3();
  v108(v107);
  OUTLINED_FUNCTION_27_11(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_cancellables);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

id sub_1E37F3838@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 player];
  *a2 = result;
  return result;
}

id sub_1E37F3888@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentMediaItemPresentationSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E37F38BC@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1E41FDF24();
  if (!v2)
  {
    v6 = 0u;
    v7 = 0u;
    goto LABEL_6;
  }

  v3 = v2;
  sub_1E4205F14();
  sub_1E4207414();
  sub_1E375D7E8(v3, &v6, v5);

  sub_1E375D84C(v5);
  if (!*(&v7 + 1))
  {
LABEL_6:
    result = sub_1E325F6F0(&v6, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_7:
    *a1 = 2;
  }

  return result;
}

void sub_1E37F39B8()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_21();
  (*(v2 + 1072))();
  OUTLINED_FUNCTION_37_3();
  v0(v1);
}

void sub_1E37F3A44(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  OUTLINED_FUNCTION_21();
  v4 += 134;
  v5 = *v4;
  v6 = (*v4)();
  sub_1E3C52AD4();

  v7 = v5();
  sub_1E3C53790(v3);

  v8 = v5();
  sub_1E3C53B10();

  v5();
  v9 = OUTLINED_FUNCTION_70_3();
  sub_1E3C4770C(v9);

  v5();
  OUTLINED_FUNCTION_37_3();
  sub_1E3C475BC(1);
}

void sub_1E37F3B84()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 1072))();
  v0();
}

void sub_1E37F3C04()
{
  v3 = v1;
  OUTLINED_FUNCTION_61_6();
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 512))();
  v7 = sub_1E32AE9B0(v6);

  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((v0 & 0x8000000000000000) == 0 && v7 > v0)
  {
    v8 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataViewModels;
    OUTLINED_FUNCTION_11_3(v3 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataViewModels, v14);
    v9 = *(v3 + v8);

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v3 + v8) = v9;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
    {
      v9 = sub_1E37EFA58(v9);
      *(v3 + v8) = v9;
    }

    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > v0)
    {
      *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v0 + 0x20) = v2;
      *(v3 + v8) = v9;
      swift_endAccess();

      v12 = *((*v4 & *v3) + 0x430);
      v13 = (v12)(v11);
      sub_1E3C465D8();

      v12();
      OUTLINED_FUNCTION_38();
      sub_1E3C4FCE0();

      return;
    }

LABEL_12:
    __break(1u);
  }
}

void sub_1E37F3DB8(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_21();
  (*(v4 + 1072))();
  OUTLINED_FUNCTION_37_3();
  a2(a1);
}

void sub_1E37F3E4C()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PlaylistViewController(0);
  objc_msgSendSuper2(&v4, sel_vui_viewDidLoad);
  v1 = [v0 vuiView];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() blackColor];
    [v2 setVuiBackgroundColor_];

    sub_1E37F5270();
    sub_1E37F6B10();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E37F3F48(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlaylistViewController(0);
  objc_msgSendSuper2(&v5, sel_vui_viewWillAppear_, a1 & 1);
  OUTLINED_FUNCTION_26_3();
  v4 = (*((*MEMORY[0x1E69E7D40] & v3) + 0x430))();
  sub_1E3C52938(*(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType) == 0);
}

id sub_1E37F4048(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for PlaylistViewController(0);
  objc_msgSendSuper2(&v9, sel_vui_viewDidAppear_, a1 & 1);
  OUTLINED_FUNCTION_36_3();
  v5 = *((*MEMORY[0x1E69E7D40] & v4) + 0x430);
  v6 = v5();
  v7 = sub_1E3C46500();

  if (v7)
  {
    if ((v2[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType] | 2) == 2)
    {
      v5();
      OUTLINED_FUNCTION_38();
      sub_1E3C4DFE0();
    }

    else
    {
    }
  }

  [v2 setNeedsStatusBarAppearanceUpdate];
  [v2 setNeedsUpdateOfHomeIndicatorAutoHidden];
  result = [objc_opt_self() isPhone];
  if (result)
  {
    [v2 _setIgnoreAppSupportedOrientations_];
    return [v2 setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  return result;
}

double sub_1E37F41F8(char a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for PlaylistViewController(0);
  objc_msgSendSuper2(&v6, sel_vui_viewDidDisappear_, a1 & 1);
  v4 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer;
  if (*&v2[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer])
  {

    sub_1E42004E4();
  }

  *&v2[v4] = 0;

  return result;
}

void sub_1E37F42D4()
{
  v2 = OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v47 - v13;
  v15 = [v1 view];
  if (v15)
  {
    v16 = v15;
    v48 = v14;
    [v15 bounds];
    OUTLINED_FUNCTION_3();

    v49.origin.x = OUTLINED_FUNCTION_6();
    Width = CGRectGetWidth(v49);
    v18 = [v0 view];
    if (v18)
    {
      [v18 frame];
      OUTLINED_FUNCTION_99_3();
      v19 = OUTLINED_FUNCTION_98_2();
      OUTLINED_FUNCTION_36_3();
      v21 = *((*MEMORY[0x1E69E7D40] & v20) + 0x430);
      v22 = v21();
      v23 = sub_1E3C511D0();

      if (v23)
      {
        OUTLINED_FUNCTION_12_5();
        *&v25 = COERCE_DOUBLE((*(v24 + 1048))());
        if ((v26 & 1) == 0 && Width < v19 && *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType) == 2)
        {
          v27 = *&v25;
          [v23 videoBounds];
          MaxY = CGRectGetMaxY(v50);
          v29 = sub_1E324FBDC();
          v30 = *(v4 + 16);
          if (MaxY <= v27)
          {
            v30(v10, v29, v2);
            v41 = sub_1E41FFC94();
            v42 = sub_1E42067E4();
            if (OUTLINED_FUNCTION_104(v42))
            {
              v43 = OUTLINED_FUNCTION_125_0();
              *v43 = 0;
              _os_log_impl(&dword_1E323F000, v41, v42, "PlaylistViewController:: updateLegibleContentInsets to zero because metadata does not overlap", v43, 2u);
              OUTLINED_FUNCTION_55();
            }

            v44 = (*(v4 + 8))(v10, v2);
            v45 = (v21)(v44);
          }

          else
          {
            v31 = v48;
            v30(v48, v29, v2);
            v32 = sub_1E41FFC94();
            v33 = sub_1E42067E4();
            if (OUTLINED_FUNCTION_104(v33))
            {
              v34 = OUTLINED_FUNCTION_6_21();
              *v34 = 134217984;
              *(v34 + 4) = v27 + 20.0;
              _os_log_impl(&dword_1E323F000, v32, v33, "PlaylistViewController:: updateLegibleContentInsets to %f", v34, 0xCu);
              OUTLINED_FUNCTION_55();
            }

            v46 = (*(v4 + 8))(v31, v2);
            v45 = (v21)(v46);
          }

          sub_1E3952C94();
          sub_1E3C534D0();

LABEL_14:
          return;
        }
      }

      v35 = sub_1E324FBDC();
      (*(v4 + 16))(v7, v35, v2);
      v36 = sub_1E41FFC94();
      v37 = sub_1E42067E4();
      if (OUTLINED_FUNCTION_104(v37))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_5_20(&dword_1E323F000, v38, v39, "PlaylistViewController:: updateLegibleContentInsets to default inset of 60");
        OUTLINED_FUNCTION_6_0();
      }

      v40 = (*(v4 + 8))(v7, v2);
      v23 = (v21)(v40);
      sub_1E3952C94();
      sub_1E3C534D0();
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E37F475C()
{
  v1 = v0;
  v91.receiver = v0;
  v91.super_class = type metadata accessor for PlaylistViewController(0);
  objc_msgSendSuper2(&v91, sel_vui_viewDidLayoutSubviews);
  OUTLINED_FUNCTION_26_3();
  v2 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + 0x430);
  v5 = v4();
  v6 = [v5 view];

  if (!v6)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = OUTLINED_FUNCTION_85_3();
  if (!v7)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v8 = v7;
  [v7 bounds];
  OUTLINED_FUNCTION_3();

  v9 = OUTLINED_FUNCTION_6();
  [v10 v11];

  v12 = OUTLINED_FUNCTION_85_3();
  if (!v12)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v13 = v12;
  type metadata accessor for LayoutGrid();
  [v13 bounds];
  OUTLINED_FUNCTION_3();

  v92.origin.x = OUTLINED_FUNCTION_6();
  Width = CGRectGetWidth(v92);
  v15 = sub_1E3A2579C(Width);
  v16 = OUTLINED_FUNCTION_85_3();
  if (!v16)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v17 = v16;
  [v16 bounds];
  OUTLINED_FUNCTION_3();

  v93.origin.x = OUTLINED_FUNCTION_6();
  v18 = CGRectGetWidth(v93);
  v19 = OUTLINED_FUNCTION_85_3();
  if (!v19)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v19 frame];
  OUTLINED_FUNCTION_99_3();
  v20 = OUTLINED_FUNCTION_98_2();
  v21 = objc_opt_self();
  if ([v21 isPad] && (v22 = sub_1E3A25310(v15), v22 != 5) && (v89 = v22, v25 = sub_1E37F9A28(v22, v23, v24), (OUTLINED_FUNCTION_75_2(v25, v26, &unk_1F5D7C258, v25, v27, v28, v29, v30, v82, v83, v85, *v87, *&v87[4], 4, v89) & 1) != 0))
  {
    *&v31 = 46.0;
  }

  else
  {
    *&v31 = 40.0;
  }

  v32 = *&v31;
  if (![v21 isPad] || (v33 = sub_1E3A25310(v15), v33 == 5) || (v90 = v33, v36 = sub_1E37F9A28(v33, v34, v35), v42 = 25.0, (OUTLINED_FUNCTION_75_2(v36, v37, &unk_1F5D7C258, v36, v38, v39, v40, v41, v82, v83, v85, *v87, *&v87[4], 4, v90) & 1) == 0))
  {
    v42 = 20.0;
  }

  v43 = v4();
  if (v18 >= v20)
  {
    v44 = v42;
  }

  else
  {
    v44 = v32;
  }

  sub_1E3C464B4(v44);

  sub_1E37F42D4();
  v48 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_currentSizeClass;
  if (*(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_currentSizeClass) == 7 || (v88 = *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_currentSizeClass), v49 = sub_1E37F99D4(v45, v46, v47), (OUTLINED_FUNCTION_75_2(v49, v50, &unk_1F5D6AC00, v49, v51, v52, v53, v54, v82, v83, v85, *v87, *&v87[4], v88, v15) & 1) == 0))
  {
    v55 = v4();
    sub_1E3C50DD4(v15, 0);

    v56 = [v1 vuiTraitCollection];
    v84 = v15;
    sub_1E3C2AE10();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v86 = v1;
    v63 = (*((*v2 & *v1) + 0x200))();
    v64 = sub_1E32AE9B0(v63);
    v65 = 0;
    v15 = (v63 & 0xC000000000000001);
    while (1)
    {
      if (v64 == v65)
      {

        v1 = v86;
        *(v86 + v48) = v84;
        goto LABEL_31;
      }

      if (v15)
      {
        v67 = MEMORY[0x1E6911E60](v65, v63);
        v66 = v67;
      }

      else
      {
        if (v65 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v66 = *(v63 + 8 * v65 + 32);
      }

      if (__OFADD__(v65, 1))
      {
        break;
      }

      v68 = (*(*v66 + 392))(v67);
      if (v68)
      {
        (*(*v68 + 1640))(v58, v60, v62);
      }

      ++v65;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_31:
  sub_1E37F4D20();
  if (*(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_interactionManager))
  {
    OUTLINED_FUNCTION_88_0();
    v70 = *(v69 + 352);
    v72 = v71;
    OUTLINED_FUNCTION_66_8();
    v73 = v70();

    if (v73)
    {
      v74 = OUTLINED_FUNCTION_85_3();
      if (!v74)
      {
LABEL_43:
        __break(1u);
        return;
      }

      v75 = v74;
      [v74 bounds];
      v77 = v76;
      v79 = v78;

      [v73 sizeThatFits_];
      [v73 setFrame_];
    }
  }
}

void sub_1E37F4D20()
{
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView];
  if (!v1)
  {
    OUTLINED_FUNCTION_81_2();
    return;
  }

  v2 = v0;
  v66 = v1;
  v3 = [v0 vuiView];
  if (!v3)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v4 = v3;
  [v3 vui:v66 bringSubviewToFront:?];

  v5 = [v2 vuiView];
  if (!v5)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;

  v9 = [v2 vuiView];
  if (!v9)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;

  v13 = [v2 view];
  if (!v13)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v14 = v13;
  v15 = [v13 window];

  if (v15 && (v16 = [v15 windowScene], v15, v16))
  {
    v17 = [v16 statusBarManager];

    if (v17)
    {
      [v17 statusBarFrame];
      CGRectGetHeight(v72);
    }
  }

  else
  {
    v17 = 0;
  }

  OUTLINED_FUNCTION_12_5();
  v19 = (*(v18 + 512))();
  if (!sub_1E32AE9B0(v19))
  {

    v23 = 0.0;
    goto LABEL_28;
  }

  if ((v19 & 0xC000000000000001) == 0)
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v19 + 32);

      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_53;
  }

  v20 = MEMORY[0x1E6911E60](0, v19);
LABEL_15:

  v22 = (*(*v20 + 392))(v21);

  v23 = 0.0;
  if (!v22)
  {
LABEL_28:
    v38 = 0.0;
    goto LABEL_29;
  }

  type metadata accessor for PlaylistLockupLayout();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {

    goto LABEL_28;
  }

  v25 = v24;
  v26 = [v2 view];
  if (!v26)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v27 = v26;
  [v26 safeAreaInsets];
  v29 = v28;
  v31 = v30;

  OUTLINED_FUNCTION_8();
  v33 = *(v32 + 176);

  v33(v67, v34);
  v35 = *v67;
  v36 = *MEMORY[0x1E69DDCE0];
  v37 = *(MEMORY[0x1E69DDCE0] + 8);
  if (v68)
  {
    v35 = *MEMORY[0x1E69DDCE0];
  }

  v65 = v35;
  if (v68)
  {
    v38 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  else
  {
    v38 = *&v67[1];
  }

  if (v8 >= v12)
  {
    OUTLINED_FUNCTION_8();
    (*(v55 + 152))(&v69);
    v40 = v69;
    v41 = v70;
    v42 = v71;
  }

  else
  {

    OUTLINED_FUNCTION_8();
    (*(v39 + 1728))(&v69);
    v40 = v69;
    v41 = v70;
    v42 = v71;
  }

  v56 = [v2 traitCollection];
  [v56 displayCornerRadius];
  v58 = v57;

  if (v58 <= 0.0)
  {
    v61 = [v2 view];
    if (!v61)
    {
LABEL_59:
      __break(1u);
      return;
    }

    v62 = v61;
    [v61 safeAreaInsets];
    v64 = v63;

    v23 = v65 * 0.5 + v64;
    if (v38 > v23)
    {
      v23 = v38;
    }
  }

  else
  {
    if (v42)
    {
      v59 = v37;
    }

    else
    {
      v59 = v41;
    }

    if (v42)
    {
      v40 = v36;
    }

    if (v59 > v31)
    {
      v38 = v59;
    }

    else
    {
      v38 = v31;
    }

    v60 = (*(*v25 + 1752))();

    if (v60 > v29)
    {
      v23 = v40;
    }

    else
    {
      v23 = v29 + v65;
    }

    if (v23 <= v29)
    {
      v23 = v29;
    }
  }

LABEL_29:
  v43 = [v2 vuiView];
  if (!v43)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v44 = v43;
  [v43 bounds];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v73.origin.x = v46;
  v73.origin.y = v48;
  v73.size.width = v50;
  v73.size.height = v52;
  [v66 setFrame_];

  OUTLINED_FUNCTION_81_2();
}

void sub_1E37F5270()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A30, &qword_1E429F570);
  OUTLINED_FUNCTION_0_10();
  v67 = v3;
  v68 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v66 = v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADE0, &qword_1E429F578);
  OUTLINED_FUNCTION_0_10();
  v70 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v69 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADE8, &unk_1E429F580);
  OUTLINED_FUNCTION_0_10();
  v73 = v10;
  v74 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v71 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v65 = v15;
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v60 = v17;
  v61 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v19 - v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A10, &unk_1E42BC8E0);
  OUTLINED_FUNCTION_0_10();
  v63 = v21;
  v64 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v62 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADF0, &unk_1E429F590);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  type metadata accessor for LayoutGrid();
  sub_1E3280A90(0, &qword_1EE23AD50, 0x1E69DCEB0);
  v25 = sub_1E41DA724();
  v26 = sub_1E3A2579C(v25);
  OUTLINED_FUNCTION_36_3();
  v28 = (*((*MEMORY[0x1E69E7D40] & v27) + 0x200))();
  v29 = sub_1E32AE9B0(v28);
  for (i = 0; ; ++i)
  {
    if (v29 == i)
    {

      *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_currentSizeClass) = v26;
      sub_1E37F6530();
      v37 = [objc_opt_self() defaultCenter];
      v38 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x430);
      v39 = v38();
      v40 = sub_1E3C53ACC();

      sub_1E4206C14();
      OUTLINED_FUNCTION_4_0();
      v41 = swift_allocObject();
      OUTLINED_FUNCTION_19_6(v41);
      OUTLINED_FUNCTION_5_42();
      sub_1E37FA784(v42, v43, MEMORY[0x1E6969F18]);
      sub_1E42007B4();

      (*(v60 + 8))(v59, v61);
      sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      v44 = sub_1E4206A04();
      v45 = OUTLINED_FUNCTION_102_4(v44);
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
      OUTLINED_FUNCTION_34_16(&qword_1EE28A2E0, &unk_1ECF33A10, &unk_1E42BC8E0);
      sub_1E3746800();
      sub_1E42007D4();
      sub_1E325F6F0(v65, &unk_1ECF2D2B0, &unk_1E429D3D0);

      (*(v63 + 8))(v62, v64);
      OUTLINED_FUNCTION_4_0();
      v49 = swift_allocObject();
      OUTLINED_FUNCTION_19_6(v49);
      v50 = MEMORY[0x1E695BE98];
      sub_1E32752B0(&qword_1EE28A250, &qword_1ECF2ADF0, &unk_1E429F590, MEMORY[0x1E695BE98]);
      OUTLINED_FUNCTION_40_1();
      sub_1E4200844();
      OUTLINED_FUNCTION_38();

      v51 = OUTLINED_FUNCTION_58_8();
      v52(v51);
      v53 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_cancellables;
      OUTLINED_FUNCTION_27_11(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_cancellables);
      sub_1E42004C4();
      swift_endAccess();

      sub_1E37F5BE0();
      v54 = v38();
      sub_1E3C47C20();

      sub_1E32752B0(&qword_1EE28A110, &qword_1ECF35A30, &qword_1E429F570, MEMORY[0x1E695C068]);
      sub_1E42006C4();
      (*(v67 + 8))(v66, v68);
      v75 = sub_1E4206A04();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v45);
      OUTLINED_FUNCTION_36_13(&qword_1EE28A380, &qword_1ECF2ADE0, &qword_1E429F578);
      sub_1E42007D4();
      sub_1E325F6F0(v65, &unk_1ECF2D2B0, &unk_1E429D3D0);

      (*(v70 + 8))(v69, v72);
      OUTLINED_FUNCTION_4_0();
      v58 = swift_allocObject();
      OUTLINED_FUNCTION_19_6(v58);
      sub_1E32752B0(&qword_1EE28A280, &qword_1ECF2ADE8, &unk_1E429F580, v50);
      OUTLINED_FUNCTION_40_1();
      sub_1E4200844();
      OUTLINED_FUNCTION_38();

      (*(v73 + 8))(v71, v74);
      OUTLINED_FUNCTION_27_11(v1 + v53);
      sub_1E42004C4();
      swift_endAccess();

      sub_1E37F66D0();
      OUTLINED_FUNCTION_25_2();
      return;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x1E6911E60](i, v28);
      v31 = v32;
    }

    else
    {
      if (i >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v31 = *(v28 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v33 = (*(*v31 + 392))(v32);
    if (v33)
    {
      v34 = v33;
      sub_1E3C2AE10();
      v36 = v35;
      (*(*v34 + 1640))();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_1E37F5BE0()
{
  OUTLINED_FUNCTION_31_1();
  v83 = sub_1E42069E4();
  OUTLINED_FUNCTION_0_10();
  v81 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v80 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD98, &qword_1E429F468);
  OUTLINED_FUNCTION_0_10();
  v78 = v6;
  v79 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v77 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADA0, &qword_1E429F470);
  OUTLINED_FUNCTION_0_10();
  v84 = v10;
  v85 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v82 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADA8, &qword_1E429F478);
  OUTLINED_FUNCTION_0_10();
  v87 = v14;
  v88 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v86 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v91 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADB0, &unk_1E42EF5F0);
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v76 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF40C90, qword_1E429F480);
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v76 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADB8, &qword_1E42EF600);
  OUTLINED_FUNCTION_0_10();
  v89 = v33;
  v90 = v32;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_31_2();
  v35 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_volumeObserver;
  v92 = v0;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_volumeObserver))
  {

    sub_1E42004E4();
  }

  v36 = [objc_opt_self() sharedInstance];
  swift_getKeyPath();
  sub_1E41FE2F4();

  OUTLINED_FUNCTION_8_33(&qword_1EE23ADB0, &qword_1ECF2ADB0, &unk_1E42EF5F0);
  sub_1E4200824();
  (*(v22 + 8))(v25, v20);
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  OUTLINED_FUNCTION_66_8();
  v37 = sub_1E4206A04();
  OUTLINED_FUNCTION_102_4(v37);
  v38 = v91;
  OUTLINED_FUNCTION_32_2();
  v76[0] = v39;
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  sub_1E32752B0(&qword_1EE28A338, &unk_1ECF40C90, qword_1E429F480, MEMORY[0x1E695BD38]);
  v76[1] = sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F6F0(v38, &unk_1ECF2D2B0, &unk_1E429D3D0);

  (*(v28 + 8))(v31, v26);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  v43 = v92;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_15();
  sub_1E32752B0(v44, v45, v46, v47);
  v48 = sub_1E4200844();

  v49 = OUTLINED_FUNCTION_102_3();
  v50(v49);
  *(v43 + v35) = v48;

  v52 = (*((*MEMORY[0x1E69E7D40] & *v43) + 0x430))(v51);
  v53 = sub_1E3C53ACC();

  objc_opt_self();
  v54 = swift_dynamicCastObjCClass();
  if (v54)
  {
    v55 = v54;
    swift_getKeyPath();
    v56 = v38;
    v57 = v77;
    v89 = v55;
    sub_1E41FE2F4();

    v90 = v53;
    v58 = v80;
    sub_1E42069B4();
    v59 = sub_1E4206A04();
    v93 = v59;
    OUTLINED_FUNCTION_8_33(&qword_1EE23AD98, &qword_1ECF2AD98, &qword_1E429F468);
    v60 = v82;
    v61 = v79;
    sub_1E4200804();

    (*(v81 + 8))(v58, v83);
    (*(v78 + 8))(v57, v61);
    v62 = sub_1E4206A04();
    v93 = v62;
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v76[0]);
    sub_1E32752B0(&qword_1EE28A2A8, &qword_1ECF2ADA0, &qword_1E429F470, MEMORY[0x1E695BE68]);
    v66 = v85;
    v67 = v86;
    sub_1E42007D4();
    sub_1E325F6F0(v56, &unk_1ECF2D2B0, &unk_1E429D3D0);

    (*(v84 + 8))(v60, v66);
    OUTLINED_FUNCTION_4_0();
    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v69 = swift_allocObject();
    *(v69 + 16) = v89;
    *(v69 + 24) = v68;
    OUTLINED_FUNCTION_3_15();
    sub_1E32752B0(v70, v71, v72, v73);
    v74 = v90;
    OUTLINED_FUNCTION_40_1();
    v75 = v88;
    sub_1E4200844();
    OUTLINED_FUNCTION_38();

    (*(v87 + 8))(v67, v75);
    OUTLINED_FUNCTION_27_11(v43 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_cancellables);
    sub_1E42004C4();
    swift_endAccess();
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_2();
}