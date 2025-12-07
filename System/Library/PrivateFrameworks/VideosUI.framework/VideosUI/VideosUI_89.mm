void sub_1E3D73BE8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF381E8, &unk_1E42CF5A0);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_76();
  v72 = sub_1E4205B44();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v69 = type metadata accessor for TeamStatsViewModel.TeamStats(0);
  OUTLINED_FUNCTION_0_10();
  v68 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v70 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v67 = &v61 - v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v66 = &v61 - v28;
  v29 = (*(*v0 + 552))(v27);
  if (!v29)
  {
    v79 = 0u;
    v80 = 0u;
    goto LABEL_18;
  }

  v64 = v19;
  v78[3] = &type metadata for ViewModelKeys.Sports;
  v78[4] = &off_1F5D7BC68;
  LOBYTE(v78[0]) = 28;
  sub_1E3F9F164(v78, v29, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v78);
  if (!*(&v80 + 1))
  {
LABEL_18:
    sub_1E325F7A8(&v79, &unk_1ECF296E0, &unk_1E4298030);
LABEL_19:
    sub_1E3E37F30();
    v56 = OUTLINED_FUNCTION_23_76();
    v57(v56);
    v58 = sub_1E41FFC94();
    v59 = sub_1E42067E4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = OUTLINED_FUNCTION_125_0();
      *v60 = 0;
      _os_log_impl(&dword_1E323F000, v58, v59, "TeamStatsViewModel.makePlaceholderTeamStats: Stats Failure -- no placeholder stats in supplmentary data", v60, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v8, v2);
LABEL_22:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v31 = 0;
  v76 = *(v78[0] + 16);
  v63 = (v15 + 32);
  v74 = (v4 + 8);
  v75 = (v4 + 16);
  v77 = v78[0];
  v32 = v78[0] + 40;
  v65 = MEMORY[0x1E69E7CC0];
  *&v30 = 136315138;
  v71 = v30;
  v33 = v72;
  v62 = v78[0] + 40;
LABEL_5:
  for (i = (v32 + 16 * v31); ; i += 2)
  {
    if (v76 == v31)
    {

      goto LABEL_22;
    }

    if (v31 >= *(v77 + 16))
    {
      break;
    }

    v36 = *(i - 1);
    v35 = *i;

    sub_1E4205B34();
    if (__swift_getEnumTagSinglePayload(v1, 1, v33) != 1)
    {
      v46 = v31;
      v47 = *v63;
      v48 = v64;
      (*v63)(v64, v1, v33);
      v49 = v69;
      v50 = v67;
      v47(&v67[*(v69 + 20)], v48, v33);
      *v50 = 0;
      *(v50 + *(v49 + 24)) = 0;
      v51 = v66;
      sub_1E3D763D0(v50, v66);
      sub_1E3D763D0(v51, v70);
      v52 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1E3D75CA4(0, v52[2] + 1, 1, v52);
      }

      v65 = v52;
      v54 = v52[2];
      v53 = v52[3];
      if (v54 >= v53 >> 1)
      {
        v65 = sub_1E3D75CA4((v53 > 1), v54 + 1, 1, v65);
      }

      v31 = v46 + 1;
      v55 = v65;
      v65[2] = v54 + 1;
      sub_1E3D763D0(v70, v55 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v54);
      v32 = v62;
      goto LABEL_5;
    }

    sub_1E325F7A8(v1, &qword_1ECF381E8, &unk_1E42CF5A0);
    v37 = sub_1E3E37F30();
    (*v75)(v11, v37, v2);

    v38 = sub_1E41FFC94();
    v39 = sub_1E42067E4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v73 = v31;
      v41 = v1;
      v42 = v11;
      v43 = v2;
      v44 = v40;
      v45 = swift_slowAlloc();
      v78[0] = v45;
      *v44 = v71;
      *(v44 + 4) = sub_1E3270FC8(v36, v35, v78);
      _os_log_impl(&dword_1E323F000, v38, v39, "TeamStatsViewModel.makePlaceholderTeamStats: Stats Failure -- Can't create Placeholder TeamStats for: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      v33 = v72;
      OUTLINED_FUNCTION_6_0();
      v2 = v43;
      v11 = v42;
      v1 = v41;
      v31 = v73;
      OUTLINED_FUNCTION_6_0();
    }

    (*v74)(v11, v2);
    ++v31;
  }

  __break(1u);
}

void sub_1E3D742B8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = (v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_state);
  swift_beginAccess();
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
    v13 = v10[2];
    v14 = v10[3];
    v15 = v10[4];
    v16 = v10[5];
    v45[0] = *v10;
    v45[1] = v11;
    v46 = v13 & 1;
    v47 = v14;
    v48 = v15;
    v49 = v16;
    v17 = v10[7];
    if (v17)
    {
      v42 = v2;
      v18 = v10[6];
      v19 = v10[8];
      v20 = v10[9];
      v21 = v10[10];
      v22 = v10[11];
      v50[0] = v18;
      v50[1] = v17;
      v43 = v19;
      v44 = v22;
      v51 = v19 & 1;
      v52 = v20;
      v53 = v21;
      v23 = v21;
      v54 = v22;
      v24 = v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_prototypes;
      if (*(v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_prototypes))
      {
        v41 = &v38;
        v25 = *(v24 + 8);
        v26 = *(v24 + 16);
        MEMORY[0x1EEE9AC00](v12);
        v39 = &v38 - 8;
        *(&v38 - 6) = v45;
        *(&v38 - 5) = v27;
        *(&v38 - 4) = v25;
        *(&v38 - 3) = v26;
        *(&v38 - 2) = v50;
        v40 = v28;
        v29 = v27;
        sub_1E3D7656C(v30, v11, v31, v32, v28, v16);
        sub_1E3D7656C(v18, v17, v43, v20, v23, v44);
        sub_1E39DF2E4(v29);
        v33 = sub_1E3D74B08(0, v42, sub_1E3D765BC, v39);

        sub_1E3D72050(v33);

        goto LABEL_9;
      }

      sub_1E3D7656C(v12, v11, v13, v14, v15, v16);
      sub_1E3D7656C(v18, v17, v43, v20, v23, v44);
    }
  }

  v34 = sub_1E3E37F30();
  (*(v5 + 16))(v9, v34, v3);
  v35 = sub_1E41FFC94();
  v36 = sub_1E42067E4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_125_0();
    *v37 = 0;
    _os_log_impl(&dword_1E323F000, v35, v36, "TeamStatsViewModel.buildViewData: Stats Failure -- insufficient data to build the statViewModels", v37, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v9, v3);
LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

unsigned __int16 *sub_1E3D74600(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = v3[49];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  ViewModelKeys.rawValue.getter(14);
  *(inited + 32) = v8;
  *(inited + 40) = v9;
  if (a2)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (a2)
  {
    v11 = a2;
  }

  *(inited + 48) = v10;
  *(inited + 56) = v11;

  v12 = sub_1E4205CB4();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
  v16[0] = v12;
  v13 = (*(*v3 + 624))();
  v14 = sub_1E3C27638(v6, v16, v13, 0, 0);
  if (v14)
  {
    return v14;
  }

  return v3;
}

id sub_1E3D7476C()
{
  sub_1E4205B44();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  v1 = OUTLINED_FUNCTION_57();
  v2(v1);
  v3 = OUTLINED_FUNCTION_16_0();
  v5 = v4(v3);
  if (v5 == *MEMORY[0x1E69D3D00])
  {
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v7 = result;
      v8 = "TV.Sports.Stats.Basketball.Assists";
LABEL_4:
      v9 = (v8 - 32) | 0x8000000000000000;
      v10 = 0xD000000000000022;
LABEL_21:
      sub_1E3797E30(v10, v9, v7);

      return OUTLINED_FUNCTION_32_0();
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v5 == *MEMORY[0x1E69D3CE0])
  {
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v7 = result;
    OUTLINED_FUNCTION_5_163();
    v10 = v12 + 14;
LABEL_20:
    v9 = v11 | 0x8000000000000000;
    goto LABEL_21;
  }

  if (v5 == *MEMORY[0x1E69D3CF8])
  {
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v7 = result;
    OUTLINED_FUNCTION_5_163();
    v10 = v13 - 5;
    goto LABEL_20;
  }

  if (v5 == *MEMORY[0x1E69D3CE8])
  {
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v7 = result;
    OUTLINED_FUNCTION_5_163();
    v10 = v14 + 10;
    goto LABEL_20;
  }

  if (v5 == *MEMORY[0x1E69D3D08])
  {
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v7 = result;
    OUTLINED_FUNCTION_5_163();
    v10 = v15 | 1;
    goto LABEL_20;
  }

  if (v5 == *MEMORY[0x1E69D3CF0])
  {
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v7 = result;
    OUTLINED_FUNCTION_5_163();
    v10 = v16 - 6;
    goto LABEL_20;
  }

  if (v5 == *MEMORY[0x1E69D3D10])
  {
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v7 = result;
      v8 = "TV.Sports.Stats.Soccer.ShotsOnGoal";
      goto LABEL_4;
    }

    goto LABEL_36;
  }

  if (v5 != *MEMORY[0x1E69D3D18])
  {
    v18 = OUTLINED_FUNCTION_16_0();
    v19(v18);
    return OUTLINED_FUNCTION_32_0();
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    OUTLINED_FUNCTION_5_163();
    v10 = v17 + 2;
    goto LABEL_20;
  }

LABEL_37:
  __break(1u);
  return result;
}

void *sub_1E3D74B08(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void, char *), uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF381F8, &qword_1E42CF5B8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v26 = MEMORY[0x1E69E7CC0];
  result = sub_1E3D76434(0, 0, 0);
  v13 = 0;
  v14 = v26;
  v21 = a2;
  v24 = *(a2 + 16);
  while (a1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v24 == v13)
    {
      return v14;
    }

    v15 = *(type metadata accessor for TeamStatsViewModel.TeamStats(0) - 8);
    v16 = v21 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13;
    v17 = *(v6 + 48);
    *v8 = a1;
    sub_1E3D76744(v16, v8 + v17);
    sub_1E3D767A8(v8, v11);
    v22(__src, *v11, &v11[*(v6 + 48)]);
    sub_1E325F7A8(v11, &qword_1ECF381F8, &qword_1E42CF5B8);
    v26 = v14;
    v19 = *(v14 + 16);
    v18 = *(v14 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1E3D76434((v18 > 1), v19 + 1, 1);
      v14 = v26;
    }

    *(v14 + 16) = v19 + 1;
    result = memcpy((v14 + 96 * v19 + 32), __src, 0x60uLL);
    ++v13;
    ++a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3D74D68()
{
  v1 = OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel__teamAbbreviations;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548, &qword_1E42C02F0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel__statViewModels;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF381C8, &qword_1E42CF2C0);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel__isDisabled;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_10();
  (*(v6 + 8))(v0 + v5);
  sub_1E37EC9B0(*(v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_prototypes), *(v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_prototypes + 8), *(v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_prototypes + 16));
  sub_1E3D75C54(*(v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_state), *(v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_state + 8));
  v7 = OUTLINED_FUNCTION_32_0();
  sub_1E3D75C54(v7, v8);
}

uint64_t sub_1E3D74EC0()
{
  v0 = ViewModel.deinit();
  v1 = OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel__teamAbbreviations;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548, &qword_1E42C02F0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel__statViewModels;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF381C8, &qword_1E42CF2C0);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel__isDisabled;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_10();
  (*(v6 + 8))(v0 + v5);
  sub_1E37EC9B0(*(v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_prototypes), *(v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_prototypes + 8), *(v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_prototypes + 16));
  sub_1E3D75C54(*(v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_state), *(v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_state + 8));
  v7 = OUTLINED_FUNCTION_57();
  sub_1E3D75C54(v7, v8);

  return v0;
}

uint64_t sub_1E3D75018()
{
  v0 = sub_1E3D74EC0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3D7506C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TeamStatsViewModel(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

void sub_1E3D750AC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF381D8, &qword_1E42CF590);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_25_76();
  v5 = type metadata accessor for TeamStatsViewModel.TeamStats(v4);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = *(v0 + 96);
  v16 = *(v15 + 16);
  v17 = (v15 + 40);
  v18 = MEMORY[0x1E69E7CC0];
  for (i = v0; v16; --v16)
  {
    v19 = *v17;
    v24 = *(v17 - 1);
    v25 = v19;

    sub_1E3D75884();

    if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
    {
      sub_1E325F7A8(v1, &qword_1ECF381D8, &qword_1E42CF590);
    }

    else
    {
      sub_1E3D763D0(v1, v14);
      sub_1E3D763D0(v14, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1E3D75CA4(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1E3D75CA4((v20 > 1), v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_1E3D763D0(v11, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21);
    }

    v17 += 2;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D752C4(unint64_t a1, void *a2)
{
  v4 = sub_1E32AE9B0(a1);
  for (i = 0; v4 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    v8 = sub_1E42054D4();
    v10 = v9;
    v11 = a2[1];
    if (v11 && (*a2 == v8 ? (v12 = v10 == v11) : (v12 = 0), v12 || (sub_1E42079A4() & 1) != 0))
    {

      v13 = sub_1E42054C4();
      if (v13)
      {
        v14 = v19;
        sub_1E3D75444(v13, a2);
LABEL_25:
        v19 = v14;
LABEL_26:

        continue;
      }
    }

    else
    {
      v15 = a2[7];
      if (!v15)
      {
        goto LABEL_26;
      }

      if (a2[6] == v8 && v10 == v15)
      {
      }

      else
      {
        v17 = sub_1E42079A4();

        if ((v17 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v18 = sub_1E42054C4();
      if (v18)
      {
        v14 = v19;
        sub_1E3D75664(v18, a2);
        goto LABEL_25;
      }
    }

LABEL_27:
  }
}

uint64_t sub_1E3D75444(unint64_t a1, uint64_t a2)
{
  result = sub_1E32AE9B0(a1);
  v5 = 0;
  v29 = a1 & 0xC000000000000001;
  v30 = result;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
  v28 = a1;
  v26 = a2;
  while (v30 != v5)
  {
    if (v29)
    {
      v6 = MEMORY[0x1E6911E60](v5, v28);
    }

    else
    {
      if (v5 >= *(v27 + 16))
      {
        goto LABEL_21;
      }

      v6 = *(v28 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      result = sub_1E4207A74();
      __break(1u);
      return result;
    }

    v8 = sub_1E4205A64();
    v9 = sub_1E4205B54();
    v11 = v10;

    if (*(a2 + 8))
    {
      sub_1E4205A74();
      v13 = v12;
      swift_isUniquelyReferenced_nonNull_native();
      v14 = *(a2 + 40);
      v15 = v9;
      v16 = sub_1E327D33C(v9, v11);
      if (__OFADD__(v14[2], (v17 & 1) == 0))
      {
        goto LABEL_22;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF381F0, &qword_1E42CF5B0);
      if (sub_1E4207644())
      {
        v20 = sub_1E327D33C(v15, v11);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_24;
        }

        v18 = v20;
      }

      if (v19)
      {
        *(v14[7] + 8 * v18) = v13;
      }

      else
      {
        v14[(v18 >> 6) + 8] |= 1 << v18;
        v22 = (v14[6] + 16 * v18);
        *v22 = v15;
        v22[1] = v11;
        *(v14[7] + 8 * v18) = v13;
        v23 = v14[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_23;
        }

        v14[2] = v25;
      }

      a2 = v26;
      *(v26 + 40) = v14;
    }

    ++v5;
  }

  return result;
}

uint64_t sub_1E3D75664(unint64_t a1, uint64_t a2)
{
  result = sub_1E32AE9B0(a1);
  v5 = 0;
  v29 = a1 & 0xC000000000000001;
  v30 = result;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
  v28 = a1;
  v26 = a2;
  while (v30 != v5)
  {
    if (v29)
    {
      v6 = MEMORY[0x1E6911E60](v5, v28);
    }

    else
    {
      if (v5 >= *(v27 + 16))
      {
        goto LABEL_21;
      }

      v6 = *(v28 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      result = sub_1E4207A74();
      __break(1u);
      return result;
    }

    v8 = sub_1E4205A64();
    v9 = sub_1E4205B54();
    v11 = v10;

    if (*(a2 + 56))
    {
      sub_1E4205A74();
      v13 = v12;
      swift_isUniquelyReferenced_nonNull_native();
      v14 = *(a2 + 88);
      v15 = v9;
      v16 = sub_1E327D33C(v9, v11);
      if (__OFADD__(v14[2], (v17 & 1) == 0))
      {
        goto LABEL_22;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF381F0, &qword_1E42CF5B0);
      if (sub_1E4207644())
      {
        v20 = sub_1E327D33C(v15, v11);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_24;
        }

        v18 = v20;
      }

      if (v19)
      {
        *(v14[7] + 8 * v18) = v13;
      }

      else
      {
        v14[(v18 >> 6) + 8] |= 1 << v18;
        v22 = (v14[6] + 16 * v18);
        *v22 = v15;
        v22[1] = v11;
        *(v14[7] + 8 * v18) = v13;
        v23 = v14[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_23;
        }

        v14[2] = v25;
      }

      a2 = v26;
      *(v26 + 88) = v14;
    }

    ++v5;
  }

  return result;
}

void sub_1E3D75884()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v51 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF381E8, &unk_1E42CF5A0);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = sub_1E4205B44();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = (v19 - v18);

  OUTLINED_FUNCTION_75();
  sub_1E4205B34();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1E325F7A8(v13, &qword_1ECF381E8, &unk_1E42CF5A0);
  }

  else
  {
    v50 = v3;
    v21 = v13;
    v22 = *(v16 + 32);
    v22(v20, v21, v14);
    if (*(v1 + 8))
    {
      v23 = OUTLINED_FUNCTION_75();
      v26 = sub_1E3893E78(v23, v24, v25);
      if ((v27 & 1) == 0)
      {
        v49 = v26;
        if (*(v1 + 56))
        {
          v28 = OUTLINED_FUNCTION_75();
          v31 = sub_1E3893E78(v28, v29, v30);
          if ((v32 & 1) == 0)
          {
            v46 = v31;
            v47 = type metadata accessor for TeamStatsViewModel.TeamStats(0);
            v48 = v50;
            v22(v50 + *(v47 + 20), v20, v14);
            *v48 = v49;
            *(v48 + *(v47 + 24)) = v46;
            v44 = v48;
            v45 = 0;
            v43 = v47;
            goto LABEL_11;
          }
        }
      }
    }

    (*(v16 + 8))(v20, v14);
    v3 = v50;
  }

  v33 = sub_1E3E37F30();
  (*(v5 + 16))(v9, v33, v51);

  v34 = sub_1E41FFC94();
  v35 = sub_1E42067E4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v52 = v37;
    *v36 = 136315138;
    v38 = OUTLINED_FUNCTION_75();
    *(v36 + 4) = sub_1E3270FC8(v38, v39, v40);
    _os_log_impl(&dword_1E323F000, v34, v35, "TeamStatsViewModel.State.makeTeamStats: Stats Failure -- Insufficient data to create TeamStats for: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v41 = OUTLINED_FUNCTION_57();
  v42(v41);
  v43 = type metadata accessor for TeamStatsViewModel.TeamStats(0);
  v44 = v3;
  v45 = 1;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v44, v45, 1, v43);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3D75BF0()
{
  result = qword_1ECF2D5A0;
  if (!qword_1ECF2D5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E9B0, qword_1E4298110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D5A0);
  }

  return result;
}

uint64_t sub_1E3D75C54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void *sub_1E3D75CA4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E3D75D90(v8, v7);
  v10 = *(type metadata accessor for TeamStatsViewModel.TeamStats(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3D75E8C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1E3D75D90(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF381E0, &qword_1E42CF598);
  v4 = *(type metadata accessor for TeamStatsViewModel.TeamStats(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3D75E8C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for TeamStatsViewModel.TeamStats(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for TeamStatsViewModel.TeamStats(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1E3D75F60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_1E3D75D90((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      type metadata accessor for TeamStatsViewModel.TeamStats(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_1E3D76040(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 96))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

void sub_1E3D760C4(uint64_t a1)
{
  sub_1E381A32C(319, &qword_1EE289F98, &qword_1ECF2B6E8, &qword_1E42A0FA0);
  if (v1 <= 0x3F)
  {
    sub_1E381A32C(319, &qword_1EE289F90, &qword_1ECF381C0, &qword_1E42CF270);
    if (v2 <= 0x3F)
    {
      sub_1E32A995C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8VideosUI18TeamStatsViewModelC0C0VSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E3D76224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 104))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 96);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E3D76260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E3D762C8(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_5_25(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_25(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3D76344(uint64_t a1)
{
  result = sub_1E4205B44();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E3D763D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TeamStatsViewModel.TeamStats(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1E3D76434(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3D76454(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3D76454(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38200, &qword_1E42CF5C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[96 * v8] <= v12)
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_1E3D7656C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E3D765BC@<X0>(double *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 48);
  v7 = static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
  v32 = v8;
  v33 = v7;
  sub_1E3755B54();
  sub_1E39F9114(*(v5 + 24), *(v5 + 32));
  v31 = v9;
  v10 = *a1;
  sub_1E3D71AB4(*a1);
  v30 = sub_1E3D74600(v11, v12);

  v13 = *(a1 + *(type metadata accessor for TeamStatsViewModel.TeamStats(0) + 24));
  if (v10 + v13 == 0.0)
  {
    v14 = 0.5;
  }

  else
  {
    v14 = v10 / (v10 + v13);
  }

  v15 = sub_1E3D7476C();
  v17 = sub_1E3D74600(v15, v16);

  v18 = static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
  v20 = v19;
  v21 = static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
  v23 = v22;
  sub_1E39F9114(*(v6 + 24), *(v6 + 32));
  v25 = v24;
  sub_1E3D71AB4(v13);
  v28 = sub_1E3D74600(v26, v27);

  *a2 = v33;
  *(a2 + 8) = v32;
  *(a2 + 16) = v31;
  *(a2 + 24) = v30;
  *(a2 + 32) = v14;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  *(a2 + 56) = v20;
  *(a2 + 64) = v21;
  *(a2 + 72) = v23;
  *(a2 + 80) = v25;
  *(a2 + 88) = v28;
  return result;
}

uint64_t sub_1E3D76744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TeamStatsViewModel.TeamStats(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3D767A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF381F8, &qword_1E42CF5B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3D76818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v11 = sub_1E4205ED4();

  v12 = sub_1E4205ED4();

  v13 = sub_1E4205ED4();

  v14 = [a9 formatLocalizedNumber:a1 style:v11 postiveFormat:v12 negativeFormat:v13 currencyCode:a8];

  if (!v14)
  {
    return 0;
  }

  v15 = sub_1E4205F14();

  return v15;
}

void sub_1E3D76924(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for TeamStatsViewModel.TeamStats(0);

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_1E3D769CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3D76A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = 0;
  v8 = *(a1 + 98);
  if (sub_1E38504C4(*(a1 + 98)) || sub_1E38504FC() || sub_1E3850574(v8))
  {
LABEL_5:
    OUTLINED_FUNCTION_4_183();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_1_210();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10, &qword_1E42B9000);
    sub_1E3D7960C();
    sub_1E414930C();
LABEL_6:
    v10 = v268;
    goto LABEL_7;
  }

  if (sub_1E385050C())
  {
    type metadata accessor for TextBadgeLayout(0);
    v41 = OUTLINED_FUNCTION_60_1();
    v42 = sub_1E382F6D0(v41);
    v43 = sub_1E38309BC(v8);
    v44 = sub_1E382F7FC(a1);
    v45 = sub_1E382F55C(v43, v42, v44 & 1);
LABEL_21:
    v10 = v45;
    v268 = v45;
LABEL_7:
    if (!v10)
    {
      OUTLINED_FUNCTION_71_2();
      v12 = (*(v11 + 624))();
      v258 = a2;
      if (v12)
      {
        v13 = (*(*v12 + 376))(v12);
        v15 = v14;
      }

      else
      {
        v15 = 0xE300000000000000;
        v13 = 7104878;
      }

      v16 = sub_1E324FBDC();
      (*(v5 + 16))(v7, v16, v4);
      OUTLINED_FUNCTION_2_4();
      v17 = swift_allocObject();
      v253 = v7;
      v255 = v4;
      v18 = v5;
      v19 = v17;
      v248 = v13;
      *(v17 + 16) = v13;
      *(v17 + 24) = v15;
      v260 = a1;
      swift_retain_n();
      v257 = v15;
      swift_bridgeObjectRetain_n();
      v261 = sub_1E41FFC94();
      v259 = sub_1E4206814();
      v20 = OUTLINED_FUNCTION_28_65(&unk_1F5D83960);
      *(v20 + 16) = 32;
      v21 = v20;
      v249 = OUTLINED_FUNCTION_28_65(&unk_1F5D83988);
      *(v249 + 16) = 8;
      OUTLINED_FUNCTION_2_4();
      v22 = swift_allocObject();
      *(v22 + 16) = sub_1E3D794DC;
      *(v22 + 24) = a1;
      OUTLINED_FUNCTION_2_4();
      v23 = swift_allocObject();
      *(v23 + 16) = sub_1E3D1BCC4;
      *(v23 + 24) = v22;
      v24 = OUTLINED_FUNCTION_28_65(&unk_1F5D83A00);
      *(v24 + 16) = 32;
      v25 = OUTLINED_FUNCTION_28_65(&unk_1F5D83A28);
      v256 = v18;
      v26 = v25;
      *(v25 + 16) = 8;
      OUTLINED_FUNCTION_2_4();
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1E3D79508;
      *(v27 + 24) = v19;
      OUTLINED_FUNCTION_2_4();
      v28 = swift_allocObject();
      *(v28 + 16) = sub_1E3D79818;
      *(v28 + 24) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341C8, &qword_1E42BF0D0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1E429A200;
      *(v29 + 32) = sub_1E3B8B3B0;
      *(v29 + 40) = v21;
      v30 = v21;
      v31 = v249;
      *(v29 + 48) = sub_1E3B8B494;
      *(v29 + 56) = v31;
      *(v29 + 64) = sub_1E3D1BCEC;
      *(v29 + 72) = v23;
      *(v29 + 80) = sub_1E3B8B494;
      *(v29 + 88) = v24;
      *(v29 + 96) = sub_1E3B8B494;
      *(v29 + 104) = v26;
      *(v29 + 112) = sub_1E3D79814;
      *(v29 + 120) = v28;

      v250 = v22;

      v254 = v19;

      v252 = v30;

      v251 = v24;

      if (os_log_type_enabled(v261, v259))
      {
        v32 = sub_1E3D1B860(22);
        v33 = swift_slowAlloc();
        v263[0] = v33;
        *v32 = 514;
        *(v32 + 2) = 32;

        *(v32 + 3) = 8;

        v35 = (*(*v260 + 376))(v34);
        v37 = sub_1E3270FC8(v35, v36, v263);

        *(v32 + 4) = v37;

        *(v32 + 12) = 32;

        *(v32 + 13) = 8;

        v38 = v257;

        v39 = sub_1E3270FC8(v248, v38, v263);

        *(v32 + 14) = v39;

        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_1E323F000, v261, v259, "LayoutFactory::there is no default/override layout for %s Parent: %s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E69143B0](v33, -1, -1);
        sub_1E3D1B868();
      }

      swift_bridgeObjectRelease_n();
      (*(v256 + 8))(v253, v255);
      a2 = v258;
    }

    goto LABEL_14;
  }

  LOBYTE(v266) = 0;
  OUTLINED_FUNCTION_71_2();
  v47 = *(v46 + 776);
  v48 = OUTLINED_FUNCTION_6_156();
  v47(v48);
  if (v264)
  {
    OUTLINED_FUNCTION_17_108();
    if (swift_dynamicCast())
    {
      v51 = sub_1E3ACAAF4();
      if (v51 == 4)
      {
        v52 = 2;
      }

      else
      {
        v52 = v51;
      }

      goto LABEL_29;
    }
  }

  else
  {
    sub_1E329505C(v263);
  }

  v52 = 2;
LABEL_29:
  switch(v8)
  {
    case 0:
      v146 = type metadata accessor for TemplateViewModel(0);
      v147 = OUTLINED_FUNCTION_31_21(v146);
      if (!v147)
      {
        goto LABEL_14;
      }

      v148 = v147;
      v149 = *(v147 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType);

      v151 = 0;
      switch(v149)
      {
        case 1:
          type metadata accessor for AlertPickerTemplateLayout();
          v152 = sub_1E3B20558();
          goto LABEL_148;
        case 2:
        case 6:
        case 13:
        case 14:
        case 15:
        case 17:
        case 18:
        case 19:
        case 20:
        case 23:
        case 27:
          type metadata accessor for CollectionLayoutFactory();
          v152 = sub_1E3C11B4C();
          goto LABEL_148;
        case 3:
        case 4:
        case 7:
        case 8:
        case 16:
        case 22:
        case 30:
          goto LABEL_149;
        case 5:
          type metadata accessor for ConfirmationDialogLayout();
          v152 = sub_1E41016F8();
          goto LABEL_148;
        case 9:
          type metadata accessor for DescriptionTemplateLayout();
          v152 = sub_1E3D4FAA8();
          goto LABEL_148;
        case 10:
          type metadata accessor for ErrorTemplateViewLayout();
          v243 = OUTLINED_FUNCTION_70_3();
          v152 = sub_1E3DA9A68(v243);
          goto LABEL_148;
        case 11:
          type metadata accessor for OfferSelectionTemplateLayout();

          v152 = sub_1E3DB4EF0(v244);
          goto LABEL_148;
        case 12:
          type metadata accessor for SplitOfferTemplateLayout();
          v152 = sub_1E3DBE850();
          goto LABEL_148;
        case 21:
          v236 = (*(*v148 + 1000))(v150);
          v238 = v237;
          v239 = sub_1E4205F14();
          if (!v238)
          {

            goto LABEL_364;
          }

          if (v236 == v239 && v238 == v240)
          {

            goto LABEL_366;
          }

          v242 = sub_1E42079A4();

          if ((v242 & 1) == 0)
          {
LABEL_364:
            type metadata accessor for UpsellOfferTemplateLayout();
            v152 = sub_1E4046E68();
            goto LABEL_148;
          }

LABEL_366:
          type metadata accessor for AMSUpsellLayout();
          sub_1E3BDA02C();
LABEL_148:
          v151 = v152;
LABEL_149:

          v268 = v151;
LABEL_14:
          if (a2 && *(a2 + 16) && v268)
          {
            (*(*v268 + 1616))(a2);
          }

          return v268;
        case 24:
          v245 = type metadata accessor for CollectionLayoutFactory();
          v152 = sub_1E3C11B78(v148, v245, v246);
          goto LABEL_148;
        case 25:
          type metadata accessor for OneupTemplateLayout();
          v152 = sub_1E396A0D4();
          goto LABEL_148;
        case 26:
          type metadata accessor for ShowcaseTemplateLayout();
          v152 = sub_1E40B0EA4();
          goto LABEL_148;
        case 28:
          type metadata accessor for LeagueStandingsTemplateLayout();
          v152 = sub_1E3DAEC0C();
          goto LABEL_148;
        case 29:
          type metadata accessor for ListWithDetailsViewLayout();
          v152 = sub_1E4002DB8();
          goto LABEL_148;
        default:
          type metadata accessor for AlertTemplateLayout();
          v152 = sub_1E3E29D6C();
          goto LABEL_148;
      }

    case 1:
      OUTLINED_FUNCTION_4_183();
      MEMORY[0x1EEE9AC00](v153);
      OUTLINED_FUNCTION_1_210();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10, &qword_1E42B9000);
      sub_1E3D7960C();
      sub_1E414930C();
      goto LABEL_14;
    case 2:
      type metadata accessor for ErrorContentViewLayout();
      v165 = OUTLINED_FUNCTION_70_3();
      v45 = sub_1E3DA8AD8(v165);
      goto LABEL_21;
    case 49:
      type metadata accessor for ImageLayout();
      v45 = sub_1E3BD61D8();
      goto LABEL_21;
    case 59:
    case 65:
    case 66:
      type metadata accessor for ButtonLayout();
      v45 = sub_1E3BBB724();
      goto LABEL_21;
    case 60:
      type metadata accessor for ButtonLayout();
      v156 = j__OUTLINED_FUNCTION_18();
      v140 = sub_1E3B050E8();
      v157 = j__OUTLINED_FUNCTION_18();
      v142 = v156 & 1;
      v143 = v157 & 1;
      v144 = 3;
      goto LABEL_160;
    case 63:
    case 64:
      v94 = type metadata accessor for ButtonLayout();
      v45 = sub_1E3BBF110(v94);
      goto LABEL_21;
    case 67:
      type metadata accessor for ContextMenuButtonLayout();
      v45 = sub_1E3890F28();
      goto LABEL_21;
    case 68:
      type metadata accessor for ButtonLayout();
      v170 = OUTLINED_FUNCTION_18_26();
      v45 = sub_1E3BBFC3C(v170);
      goto LABEL_21;
    case 70:
      type metadata accessor for ButtonLayout();
      v139 = j__OUTLINED_FUNCTION_18();
      v140 = sub_1E3B050E8();
      v141 = j__OUTLINED_FUNCTION_18();
      v142 = v139 & 1;
      v143 = v141 & 1;
      v144 = 10;
LABEL_160:
      v45 = sub_1E3BBD964(v144, v142, v140, v143);
      goto LABEL_21;
    case 73:
    case 95:
    case 140:
    case 145:
    case 222:
    case 231:
    case 232:
      goto LABEL_14;
    case 74:
      type metadata accessor for OfferSelectionFooterViewLayout();
      v45 = sub_1E41D7100();
      goto LABEL_21;
    case 75:
      type metadata accessor for ConnectedAppFooterLayout();
      v45 = sub_1E39EA778();
      goto LABEL_21;
    case 77:
      type metadata accessor for LeagueStandingsFooterLayout();
      v45 = sub_1E4165E8C();
      goto LABEL_21;
    case 79:
      type metadata accessor for SearchDescriptionLayout();
      v45 = sub_1E3EFF950();
      goto LABEL_21;
    case 82:
      type metadata accessor for ChannelBannerLayout();
      v45 = sub_1E4040E08();
      goto LABEL_21;
    case 83:
      LOBYTE(v266) = 0;
      v161 = OUTLINED_FUNCTION_6_156();
      v47(v161);
      if (v264)
      {
        OUTLINED_FUNCTION_17_108();
        if ((OUTLINED_FUNCTION_21_4() & 1) != 0 && sub_1E3FA5BB0() != 3)
        {
          OUTLINED_FUNCTION_9_5();
          type metadata accessor for CanonicalBannerLayout();
          v162 = OUTLINED_FUNCTION_50();
          goto LABEL_309;
        }
      }

      else
      {
        sub_1E329505C(v263);
      }

      type metadata accessor for CanonicalBannerLayout();
      v162 = OUTLINED_FUNCTION_70_3();
LABEL_309:
      v45 = sub_1E3FA6A08(v162);
      goto LABEL_21;
    case 84:
      v47(v263);
      if (v264)
      {
        OUTLINED_FUNCTION_17_108();
        if (OUTLINED_FUNCTION_21_4())
        {
          v145 = v266;
          goto LABEL_306;
        }
      }

      else
      {
        sub_1E329505C(v263);
      }

      v145 = 0;
LABEL_306:
      type metadata accessor for RoomBannerLayout();
      v45 = sub_1E37EA6B4(84, v145);
      goto LABEL_21;
    case 86:
      if (TVAppFeature.isEnabled.getter(10, v49, v50))
      {
        type metadata accessor for SportsCanonicalBannerViewLayout();
        v45 = sub_1E3D3E7F8();
        goto LABEL_21;
      }

      type metadata accessor for LegacySportsCanonicalBannerViewLayout();
      v268 = sub_1E37C2700();
      if ([objc_opt_self() isIpadInterface])
      {
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_71_2();
      v211 = (*(v210 + 672))();
      v212 = OUTLINED_FUNCTION_0_230(&type metadata for ViewModelKeys);
      sub_1E3F9F164(v212, v211, MEMORY[0x1E69E7CA0] + 8);

      if (!*(&v267 + 1))
      {
        goto LABEL_342;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      OUTLINED_FUNCTION_48_10();
      if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
      {
        goto LABEL_343;
      }

      v213 = v262;
      __swift_destroy_boxed_opaque_existential_1(v263);
      v264 = &unk_1F5D5DAC8;
      v265 = &off_1F5D5C9A8;
      v214 = OUTLINED_FUNCTION_97(48);
      sub_1E3F9F164(v214, v213, MEMORY[0x1E69E7CA0] + 8);

      if (*(&v267 + 1))
      {
        OUTLINED_FUNCTION_48_10();
        if (OUTLINED_FUNCTION_21_4())
        {
          v215 = v262;
          __swift_destroy_boxed_opaque_existential_1(v263);
          v10 = sub_1E37C2930(v215);
          goto LABEL_165;
        }

LABEL_343:
        __swift_destroy_boxed_opaque_existential_1(v263);
      }

      else
      {
LABEL_342:
        OUTLINED_FUNCTION_15_52();
      }

      goto LABEL_6;
    case 89:
      type metadata accessor for QueryDescriptionBannerLayout();
      OUTLINED_FUNCTION_60_1();

      v104 = sub_1E3A6DD04(v171);
      goto LABEL_190;
    case 90:
      type metadata accessor for AttributionTextViewLayout();
      OUTLINED_FUNCTION_60_1();

      v104 = sub_1E3C82468(v173);
      goto LABEL_190;
    case 96:
      type metadata accessor for PlaybackStatusLayout();
      v135 = OUTLINED_FUNCTION_18_26();
      v45 = sub_1E3A70EBC(v135);
      goto LABEL_21;
    case 97:
    case 99:
      goto LABEL_5;
    case 100:
      v178 = type metadata accessor for LibViewModel();
      if (OUTLINED_FUNCTION_31_21(v178))
      {
        v92 = sub_1E3C8E228();
        goto LABEL_198;
      }

      type metadata accessor for NavigationBarLayout();
      OUTLINED_FUNCTION_60_1();

      v45 = sub_1E4117E00(v231);
      goto LABEL_21;
    case 104:
      type metadata accessor for SegmentedPickerLayout();
      v45 = sub_1E3EAFB4C();
      goto LABEL_21;
    case 107:
      OUTLINED_FUNCTION_71_2();
      if (!(*(v158 + 624))())
      {
        goto LABEL_286;
      }

      type metadata accessor for TemplateViewModel(0);
      v159 = swift_dynamicCastClass();
      if (!v159 || (sub_1E3D79254(*(v159 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType), 9, sub_1E39E42E0, &type metadata for TemplateModelType) & 1) == 0)
      {

LABEL_286:
        type metadata accessor for CanonicalFooterLayout();
        v45 = sub_1E3DE9C60();
        goto LABEL_21;
      }

      type metadata accessor for CanonicalFooterLayout();
      v160 = OUTLINED_FUNCTION_26_82();
      v10 = sub_1E3DE9A08(v160);
LABEL_165:

LABEL_327:
      v268 = v10;
      goto LABEL_7;
    case 115:
      v172 = type metadata accessor for ProgressLayout();
      v45 = sub_1E3FB3220(v172);
      goto LABEL_21;
    case 117:
    case 118:
    case 119:
    case 121:
    case 122:
    case 129:
      v53 = type metadata accessor for LibCollectionViewModel();
      if (OUTLINED_FUNCTION_31_21(v53))
      {
        v45 = sub_1E3C8E278(a1, v54, v55, v56, v57, v58);
      }

      else
      {
        type metadata accessor for CollectionLayoutFactory();
        v77 = OUTLINED_FUNCTION_60_1();
        v45 = sub_1E3C11B78(v77, v78, v79);
      }

      goto LABEL_21;
    case 123:
      type metadata accessor for MediaShowcaseCollectionLayout();
      v45 = sub_1E3FC6EAC();
      goto LABEL_21;
    case 124:
      type metadata accessor for FlexibleGridCollectionLayout();
      v45 = sub_1E3822820();
      goto LABEL_21;
    case 125:
      type metadata accessor for FlexibleGridLayout();
      v45 = sub_1E3B8B8C0();
      goto LABEL_21;
    case 127:
      if (TVAppFeature.isEnabled.getter(17, v49, v50) & 1) != 0 && ((v134 = objc_opt_self(), ([v134 isPhone]) || (objc_msgSend(v134, sel_isPad) & 1) != 0 || objc_msgSend(v134, sel_isMac)))
      {
        type metadata accessor for EpicShowcaseViewLayout();
        v45 = sub_1E37E7E7C();
      }

      else
      {
        type metadata accessor for CarouselViewLayout();
        v155 = OUTLINED_FUNCTION_18_26();
LABEL_254:
        v45 = sub_1E3A2B630(v155);
      }

      goto LABEL_21;
    case 128:
      type metadata accessor for CarouselViewLayout();
      v155 = OUTLINED_FUNCTION_26_82();
      goto LABEL_254;
    case 130:
    case 131:
      type metadata accessor for EpisodeCollectionLayout();
      v80 = OUTLINED_FUNCTION_38();
      v45 = sub_1E3ACA838(v80);
      goto LABEL_21;
    case 132:
    case 133:
    case 134:
      if (TVAppFeature.isEnabled.getter(10, v49, v50))
      {
        type metadata accessor for CollectionLayoutFactory();
        v71 = OUTLINED_FUNCTION_60_1();
        v74 = sub_1E3C11B78(v71, v72, v73);
      }

      else
      {
        type metadata accessor for ViewLayout();
        v74 = sub_1E3C2F968();
      }

      v10 = v74;
      goto LABEL_327;
    case 135:
      type metadata accessor for UnifiedMessagingBannerLayout();
      v45 = sub_1E3E25EDC();
      goto LABEL_21;
    case 137:
      type metadata accessor for UnifiedMessagingBubbleTipLayout();
      v45 = sub_1E3E25EDC();
      goto LABEL_21;
    case 138:
      v136 = type metadata accessor for LibViewModel();
      if (!OUTLINED_FUNCTION_31_21(v136))
      {
        goto LABEL_204;
      }

      v92 = sub_1E3C8DC30();
      goto LABEL_198;
    case 139:
LABEL_204:
      type metadata accessor for RichHeaderViewLayout();
      v45 = sub_1E3EBACB4();
      goto LABEL_21;
    case 142:
      type metadata accessor for SearchTopResultsListHeaderLayout();
      v45 = sub_1E3913128();
      goto LABEL_21;
    case 143:
      type metadata accessor for SearchHistoryListHeaderLayout();
      v45 = sub_1E3CDAC44();
      goto LABEL_21;
    case 146:
      type metadata accessor for AskToBuyListHeaderLayout();
      v45 = sub_1E37BF9B0();
      goto LABEL_21;
    case 148:
    case 149:
      type metadata accessor for EpicInlineLayout();
      v45 = sub_1E3D48404();
      goto LABEL_21;
    case 153:
    case 157:
    case 158:
    case 159:
    case 160:
      if ([objc_opt_self() isSUIEnabled] & 1) != 0 || (TVAppFeature.isEnabled.getter(18, v59, v60))
      {
        type metadata accessor for UnifiedOverlayLayout();
        v61 = sub_1E3B050E8();
        v62 = v8;
LABEL_36:
        v45 = sub_1E3DFEB84(v62, v61);
      }

      else
      {
        type metadata accessor for OverlayLayout();
        v102 = OUTLINED_FUNCTION_38();
        v103 = sub_1E3ACC790(v102);
        v45 = sub_1E3ACC840(v103);
      }

      goto LABEL_21;
    case 154:
    case 155:
    case 156:
    case 163:
    case 165:
      type metadata accessor for UnifiedOverlayLayout();
      v62 = OUTLINED_FUNCTION_38();
      v61 = v52;
      goto LABEL_36;
    case 162:
      type metadata accessor for ChannelOfferOverlayLayout();
      v45 = sub_1E3B91818(162);
      goto LABEL_21;
    case 166:
      type metadata accessor for CanonicalInfoCardLayout();
      v125 = OUTLINED_FUNCTION_70_3();
      goto LABEL_214;
    case 167:
      type metadata accessor for FeaturedLockupCellLayout();
      v130 = OUTLINED_FUNCTION_18_26();
      v45 = sub_1E3AE152C(v130);
      goto LABEL_21;
    case 168:
      type metadata accessor for CanonicalInfoCardLayout();
      v125 = OUTLINED_FUNCTION_18_26();
      goto LABEL_214;
    case 169:
      if (TVAppFeature.isEnabled.getter(10, v49, v50))
      {
        type metadata accessor for StandardExtrasLockupCellLayout();
        v133 = 169;
        goto LABEL_209;
      }

      type metadata accessor for CardCollectionViewCellLayout();
      v93 = 14;
      goto LABEL_334;
    case 170:
      if (TVAppFeature.isEnabled.getter(10, v49, v50))
      {
        type metadata accessor for EditorialLockupLayout();
        v45 = sub_1E3C5C364();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_71_2();
      (*(v216 + 672))();
      v217 = OUTLINED_FUNCTION_0_230(&type metadata for ViewModelKeys);
      OUTLINED_FUNCTION_52_17(v217);

      if (!*(&v267 + 1))
      {
        goto LABEL_335;
      }

      v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if ((OUTLINED_FUNCTION_3_176(v218) & 1) == 0)
      {
        goto LABEL_337;
      }

      OUTLINED_FUNCTION_23_77();
      v264 = &unk_1F5D5E608;
      v265 = &off_1F5D5CC28;
      v219 = OUTLINED_FUNCTION_97_2();
      OUTLINED_FUNCTION_29_74(v219);

      if (*(&v267 + 1))
      {
        OUTLINED_FUNCTION_48_10();
        if (OUTLINED_FUNCTION_21_4())
        {
          OUTLINED_FUNCTION_10_117();
          if (v208)
          {
            type metadata accessor for CardCollectionViewCellLayout();
            v93 = 15;
            goto LABEL_334;
          }
        }

        else
        {
LABEL_337:
          __swift_destroy_boxed_opaque_existential_1(v263);
        }
      }

      else
      {
LABEL_335:
        OUTLINED_FUNCTION_15_52();
      }

      type metadata accessor for CardCollectionViewCellLayout();
      v93 = 6;
      goto LABEL_334;
    case 171:
      if (TVAppFeature.isEnabled.getter(10, v49, v50))
      {
        type metadata accessor for EpisodeLockupLayout();
        v45 = sub_1E3C62E3C();
        goto LABEL_21;
      }

      type metadata accessor for CardCollectionViewCellLayout();
      v93 = 19;
      goto LABEL_334;
    case 173:
      type metadata accessor for CardCollectionViewCellLayout();
      v93 = OUTLINED_FUNCTION_70_3();
      goto LABEL_334;
    case 174:
      type metadata accessor for FlowcaseCellLayout();
      v45 = sub_1E3D0A42C(174);
      goto LABEL_21;
    case 176:
      type metadata accessor for NavBarCellLayout();
      v45 = sub_1E38AAB84();
      goto LABEL_21;
    case 177:
      type metadata accessor for VideoItunesExtrasDescriptionCellLayout();
      v45 = sub_1E3B9D450();
      goto LABEL_21;
    case 178:
    case 213:
      if ((TVAppFeature.isEnabled.getter(10, v49, v50) & 1) == 0)
      {
        type metadata accessor for CardCollectionViewCellLayout();
        v93 = 11;
        goto LABEL_334;
      }

      v264 = &unk_1F5D5D918;
      v265 = &off_1F5D5C938;
      LOBYTE(v263[0]) = 1;
      v81 = j__OUTLINED_FUNCTION_18();
      v82 = OUTLINED_FUNCTION_19_100(v81);
      v83 = __swift_destroy_boxed_opaque_existential_1(v263);
      v264 = &unk_1F5D5E9F8;
      v265 = &off_1F5D5CCF8;
      sub_1E3BCEF40(v83, v84, v85);
      OUTLINED_FUNCTION_11_126();
      sub_1E39C2B80();
      __swift_destroy_boxed_opaque_existential_1(v263);
      if (v266 == 6)
      {
        v86 = 0;
      }

      else
      {
        v86 = v266;
      }

      type metadata accessor for StandardLockupCellLayout();
      v45 = sub_1E3D8C108(v86, v82 & 1);
      goto LABEL_21;
    case 179:
      if (TVAppFeature.isEnabled.getter(10, v49, v50))
      {
        type metadata accessor for StandardExtrasLockupCellLayout();
        v133 = 179;
        goto LABEL_209;
      }

      OUTLINED_FUNCTION_71_2();
      (*(v220 + 672))();
      v221 = OUTLINED_FUNCTION_0_230(&type metadata for ViewModelKeys);
      OUTLINED_FUNCTION_52_17(v221);

      if (!*(&v267 + 1))
      {
        goto LABEL_336;
      }

      v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if ((OUTLINED_FUNCTION_3_176(v222) & 1) == 0)
      {
        goto LABEL_339;
      }

      OUTLINED_FUNCTION_23_77();
      v264 = &unk_1F5D5E608;
      v265 = &off_1F5D5CC28;
      v223 = OUTLINED_FUNCTION_97_2();
      OUTLINED_FUNCTION_29_74(v223);

      if (*(&v267 + 1))
      {
        OUTLINED_FUNCTION_48_10();
        if (OUTLINED_FUNCTION_21_4())
        {
          OUTLINED_FUNCTION_10_117();
          if (v208)
          {
            goto LABEL_280;
          }
        }

        else
        {
LABEL_339:
          __swift_destroy_boxed_opaque_existential_1(v263);
        }
      }

      else
      {
LABEL_336:
        OUTLINED_FUNCTION_15_52();
      }

      type metadata accessor for CardCollectionViewCellLayout();
      v93 = 5;
      goto LABEL_334;
    case 180:
      type metadata accessor for OfferCardLegacyLayout();
      v45 = sub_1E3DAFF08();
      goto LABEL_21;
    case 181:
      type metadata accessor for OfferCardLayout();
      v45 = sub_1E3FB6848();
      goto LABEL_21;
    case 182:
      sub_1E39C2540();
      if (v188)
      {
        v264 = &unk_1F5D5D888;
        v265 = &off_1F5D5C918;
        LOBYTE(v263[0]) = 10;
        sub_1E3D79538(v188, v189, v190);
        OUTLINED_FUNCTION_11_126();
        sub_1E39C2B80();
        __swift_destroy_boxed_opaque_existential_1(v263);
        v191 = v266;
      }

      else
      {
        v191 = 8;
      }

      LOBYTE(v263[0]) = v191;
      v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38210, &qword_1E42D1B80);
      v233 = type metadata accessor for OfferListLockupCellLayout();
      sub_1E4148F70(sub_1E3D7933C, 0, v232, v233, &v266);
      v262 = v266;
      v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38218, &qword_1E42CF5C8);
      sub_1E4148C68(sub_1E3D79370, v234, v263);

      v10 = v263[0];
      goto LABEL_327;
    case 183:
      if ((TVAppFeature.isEnabled.getter(10, v49, v50) & 1) == 0)
      {
        type metadata accessor for CardCollectionViewCellLayout();
        v93 = 13;
        goto LABEL_334;
      }

      type metadata accessor for StandardExtrasLockupCellLayout();
      v133 = 183;
LABEL_209:
      v45 = sub_1E3890648(v133);
      goto LABEL_21;
    case 184:
    case 189:
    case 190:
      v63 = TVAppFeature.isEnabled.getter(10, v49, v50);
      if (v63)
      {
        v264 = &unk_1F5D5D528;
        v265 = &off_1F5D5C858;
        LOBYTE(v263[0]) = 13;
        sub_1E3D7958C(v63, v64, v65);
        OUTLINED_FUNCTION_11_126();
        sub_1E39C2B80();
        __swift_destroy_boxed_opaque_existential_1(v263);
        if (v266 != 4)
        {
          goto LABEL_76;
        }

        v70 = v8;
LABEL_75:
        sub_1E373F6E0(v70, 190, v66, v67, v68, v69);
LABEL_76:
        type metadata accessor for SportsLockupCellLayout();
        v108 = OUTLINED_FUNCTION_50();
        sub_1E3A0657C(v108);
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_71_2();
      v96 = (*(v95 + 536))();
      if (v96)
      {
        LOBYTE(v52) = v96;
        v264 = &unk_1F5D5E578;
        v265 = &off_1F5D5CC08;
        v97 = OUTLINED_FUNCTION_97(3);
        OUTLINED_FUNCTION_29_74(v97);

        __swift_destroy_boxed_opaque_existential_1(v263);
        if (*(&v267 + 1))
        {
          if (!OUTLINED_FUNCTION_21_4() || (v263[0] & 1) == 0)
          {
            goto LABEL_252;
          }

LABEL_249:
          type metadata accessor for CardCollectionViewCellLayout();
          v93 = 9;
LABEL_334:
          v45 = sub_1E3D2E424(v93);
          goto LABEL_21;
        }
      }

      else
      {
        v266 = 0u;
        v267 = 0u;
      }

      sub_1E329505C(&v266);
LABEL_252:
      sub_1E373F6E0(v8, 190, v98, v99, v100, v101);
      OUTLINED_FUNCTION_9_5();
      type metadata accessor for CardCollectionViewCellLayout();
      v208 = (v52 & 1) == 0;
      v209 = 4;
      goto LABEL_331;
    case 185:
    case 186:
      type metadata accessor for SportsScoreboardLayout();
      v45 = sub_1E39DF330();
      goto LABEL_21;
    case 187:
      type metadata accessor for CardCollectionViewCellLayout();
      v93 = OUTLINED_FUNCTION_18_26();
      goto LABEL_334;
    case 188:
      OUTLINED_FUNCTION_71_2();
      (*(v166 + 672))();
      v167 = OUTLINED_FUNCTION_0_230(&type metadata for ViewModelKeys);
      OUTLINED_FUNCTION_52_17(v167);

      if (!*(&v267 + 1))
      {
        goto LABEL_283;
      }

      v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if ((OUTLINED_FUNCTION_3_176(v168) & 1) == 0)
      {
        goto LABEL_292;
      }

      OUTLINED_FUNCTION_23_77();
      v264 = &unk_1F5D5E608;
      v265 = &off_1F5D5CC28;
      v169 = OUTLINED_FUNCTION_97_2();
      OUTLINED_FUNCTION_52_17(v169);

      if (*(&v267 + 1))
      {
        OUTLINED_FUNCTION_48_10();
        if (OUTLINED_FUNCTION_21_4())
        {
          OUTLINED_FUNCTION_10_117();
          if (v208)
          {
LABEL_280:
            type metadata accessor for CardCollectionViewCellLayout();
            v93 = 16;
            goto LABEL_334;
          }
        }

        else
        {
LABEL_292:
          __swift_destroy_boxed_opaque_existential_1(v263);
        }
      }

      else
      {
LABEL_283:
        OUTLINED_FUNCTION_15_52();
      }

      type metadata accessor for CardCollectionViewCellLayout();
      v93 = OUTLINED_FUNCTION_26_82();
      goto LABEL_334;
    case 191:
      type metadata accessor for SportsPlayByPlayLayout(0);
      v45 = sub_1E3754E80();
      goto LABEL_21;
    case 192:
      type metadata accessor for CanonicalInfoCardLayout();
      v125 = OUTLINED_FUNCTION_26_82();
LABEL_214:
      v45 = sub_1E4183740(v125);
      goto LABEL_21;
    case 193:
      if (TVAppFeature.isEnabled.getter(10, v49, v50) & 1) != 0 && (sub_1E373F6E0(193, 193, v179, v180, v181, v182))
      {
        type metadata accessor for UpNextLockupCellLayout();
        v45 = sub_1E3A2246C();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_71_2();
      v202 = (*(v201 + 536))();
      if (v202)
      {
        LOBYTE(v52) = v202;
        v264 = &unk_1F5D5E578;
        v265 = &off_1F5D5CC08;
        v203 = OUTLINED_FUNCTION_97(3);
        OUTLINED_FUNCTION_29_74(v203);

        __swift_destroy_boxed_opaque_existential_1(v263);
        if (*(&v267 + 1))
        {
          if (OUTLINED_FUNCTION_21_4() && (v263[0] & 1) != 0)
          {
            goto LABEL_249;
          }

LABEL_330:
          sub_1E373F6E0(193, 190, v204, v205, v206, v207);
          OUTLINED_FUNCTION_9_5();
          type metadata accessor for CardCollectionViewCellLayout();
          v208 = (v52 & 1) == 0;
          v209 = 8;
LABEL_331:
          if (v208)
          {
            v93 = v209;
          }

          else
          {
            v93 = 12;
          }

          goto LABEL_334;
        }
      }

      else
      {
        v266 = 0u;
        v267 = 0u;
      }

      sub_1E329505C(&v266);
      goto LABEL_330;
    case 194:
    case 215:
      v91 = type metadata accessor for LibViewModel();
      if (!OUTLINED_FUNCTION_31_21(v91))
      {
        type metadata accessor for MonogramLockupCellLayout();
        v200 = OUTLINED_FUNCTION_60_1();
        v192 = sub_1E3D793A4(v200);
        goto LABEL_299;
      }

      v92 = sub_1E3C8E118();
LABEL_198:
      v10 = *v92;
      v268 = *v92;

      goto LABEL_7;
    case 195:
      v47(v263);
      if (v264)
      {
        OUTLINED_FUNCTION_17_108();
        if (OUTLINED_FUNCTION_21_4())
        {
          v163 = *(&v266 + 1);
          v164 = v266;
          goto LABEL_312;
        }
      }

      else
      {
        sub_1E329505C(v263);
      }

      v227 = sub_1E3B799A8();
      v164 = *v227;
      v163 = *(v227 + 1);

LABEL_312:
      v228 = sub_1E3B799B4();
      if (v164 != *v228 || v163 != *(v228 + 1))
      {
        sub_1E42079A4();
      }

      type metadata accessor for SportsFavoriteBannerCellLayout();
      v230 = OUTLINED_FUNCTION_25_77();
      v45 = sub_1E3E732AC(v230);
      goto LABEL_21;
    case 196:
      if ((TVAppFeature.isEnabled.getter(10, v49, v50) & 1) == 0 && [objc_opt_self() isPad])
      {
        type metadata accessor for CardCollectionViewCellLayout();
        v93 = 17;
        goto LABEL_334;
      }

      type metadata accessor for SyndicationCellLayout();
      v45 = sub_1E3E0B744();
      goto LABEL_21;
    case 197:
    case 216:
      type metadata accessor for CardCollectionViewCellLayout();
      v93 = 7;
      goto LABEL_334;
    case 198:
      type metadata accessor for BrandLockupCellLayout();
      v45 = sub_1E3F818BC();
      goto LABEL_21;
    case 200:
      if (TVAppFeature.isEnabled.getter(10, v49, v50))
      {
        v264 = &unk_1F5D5D918;
        v265 = &off_1F5D5C938;
        LOBYTE(v263[0]) = 1;
        v131 = j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_19_100(v131);
        __swift_destroy_boxed_opaque_existential_1(v263);
        type metadata accessor for OrdinalLockupCellLayout();
        v132 = OUTLINED_FUNCTION_25_77();
        v45 = sub_1E3EA6698(v132);
      }

      else
      {
        type metadata accessor for OrdinalCellLayout();
        v120 = OUTLINED_FUNCTION_18_26();
LABEL_258:
        v45 = sub_1E3DE76C4(v120);
      }

      goto LABEL_21;
    case 201:
      type metadata accessor for OrdinalCellLayout();
      v120 = OUTLINED_FUNCTION_70_3();
      goto LABEL_258;
    case 202:
      type metadata accessor for OneupLockupLayout();
      v45 = sub_1E3E7E5FC();
      goto LABEL_21;
    case 203:
      type metadata accessor for ShowcaseLockupViewLayout();
      v45 = sub_1E3C8FBFC();
      goto LABEL_21;
    case 204:
      OUTLINED_FUNCTION_71_2();
      (*(v183 + 672))();
      v184 = OUTLINED_FUNCTION_0_230(&type metadata for ViewModelKeys);
      OUTLINED_FUNCTION_52_17(v184);

      if (!*(&v267 + 1))
      {
        goto LABEL_284;
      }

      v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if ((OUTLINED_FUNCTION_3_176(v185) & 1) == 0)
      {
        goto LABEL_294;
      }

      OUTLINED_FUNCTION_23_77();
      v264 = &unk_1F5D5E608;
      v265 = &off_1F5D5CC28;
      v186 = OUTLINED_FUNCTION_97_2();
      OUTLINED_FUNCTION_52_17(v186);

      if (*(&v267 + 1))
      {
        OUTLINED_FUNCTION_48_10();
        if (OUTLINED_FUNCTION_21_4())
        {
          OUTLINED_FUNCTION_10_117();
          if (v208)
          {
            type metadata accessor for PlaybackPersonViewLayout(0);
            v187 = OUTLINED_FUNCTION_70_3();
            goto LABEL_296;
          }
        }

        else
        {
LABEL_294:
          __swift_destroy_boxed_opaque_existential_1(v263);
        }
      }

      else
      {
LABEL_284:
        OUTLINED_FUNCTION_15_52();
      }

      type metadata accessor for PlaybackPersonViewLayout(0);
      v187 = OUTLINED_FUNCTION_18_26();
LABEL_296:
      v199 = 204;
      goto LABEL_297;
    case 205:
      OUTLINED_FUNCTION_71_2();
      (*(v109 + 672))();
      v110 = OUTLINED_FUNCTION_0_230(&type metadata for ViewModelKeys);
      OUTLINED_FUNCTION_52_17(v110);

      if (!*(&v267 + 1))
      {
        goto LABEL_281;
      }

      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if ((OUTLINED_FUNCTION_3_176(v111) & 1) == 0)
      {
        goto LABEL_287;
      }

      OUTLINED_FUNCTION_23_77();
      v264 = &unk_1F5D5E608;
      v265 = &off_1F5D5CC28;
      v112 = OUTLINED_FUNCTION_97_2();
      OUTLINED_FUNCTION_52_17(v112);

      if (*(&v267 + 1))
      {
        OUTLINED_FUNCTION_48_10();
        if (OUTLINED_FUNCTION_21_4())
        {
          OUTLINED_FUNCTION_10_117();
          if (v208)
          {
            type metadata accessor for PlaybackSongViewLayout(0);
            v113 = OUTLINED_FUNCTION_70_3();
            goto LABEL_289;
          }
        }

        else
        {
LABEL_287:
          __swift_destroy_boxed_opaque_existential_1(v263);
        }
      }

      else
      {
LABEL_281:
        OUTLINED_FUNCTION_15_52();
      }

      type metadata accessor for PlaybackSongViewLayout(0);
      v113 = OUTLINED_FUNCTION_18_26();
LABEL_289:
      v45 = sub_1E3FB36FC(v113);
      goto LABEL_21;
    case 206:
    case 217:
      v87 = type metadata accessor for LibViewModel();
      if (OUTLINED_FUNCTION_31_21(v87))
      {
        v268 = *sub_1E3C8E118();

        sub_1E39DFFC0(v88, v89, v90);
        goto LABEL_6;
      }

      v192 = sub_1E3D793A4(a1);
      if (TVAppFeature.isEnabled.getter(10, v193, v194))
      {
        if (sub_1E3D79254(4, 0, sub_1E38F0870, &type metadata for MonogramLayout.LayoutType))
        {
          type metadata accessor for PlaybackPersonViewLayout(0);
          v187 = OUTLINED_FUNCTION_18_26();
          v199 = v8;
LABEL_297:
          v45 = sub_1E3915434(v187, v199);
        }

        else
        {
          type metadata accessor for EntityLockupCollectionViewCellLayout();
          v235 = OUTLINED_FUNCTION_25_77();
          v45 = sub_1E3B9117C(v235, 4);
        }
      }

      else
      {
        sub_1E373F6E0(v8, 206, v195, v196, v197, v198);
        type metadata accessor for MonogramLockupCellLayout();
LABEL_299:
        v225 = OUTLINED_FUNCTION_18();
        v45 = sub_1E38EF9E8(v192 & 1, v225);
      }

      goto LABEL_21;
    case 207:
    case 208:
    case 209:
      type metadata accessor for OfferListCardLayout();
      v76 = OUTLINED_FUNCTION_38();
      v45 = sub_1E3BD9F64(v76);
      goto LABEL_21;
    case 210:
    case 211:
    case 212:
      type metadata accessor for SportsFavoritesLockupCellLayout();
      v75 = OUTLINED_FUNCTION_38();
      v45 = sub_1E37DAE90(v75);
      goto LABEL_21;
    case 214:
      v105 = TVAppFeature.isEnabled.getter(10, v49, v50);
      if ((v105 & 1) == 0)
      {
        type metadata accessor for CardCollectionViewCellLayout();
        v93 = 3;
        goto LABEL_334;
      }

      v264 = &unk_1F5D5D528;
      v265 = &off_1F5D5C858;
      LOBYTE(v263[0]) = 13;
      sub_1E3D7958C(v105, v106, v107);
      OUTLINED_FUNCTION_11_126();
      sub_1E39C2B80();
      __swift_destroy_boxed_opaque_existential_1(v263);
      if (v266 != 4)
      {
        goto LABEL_76;
      }

      v70 = 214;
      goto LABEL_75;
    case 218:
      type metadata accessor for HintListCellLayout();
      v45 = sub_1E3909774();
      goto LABEL_21;
    case 219:
      if ((TVAppFeature.isEnabled.getter(10, v49, v50) & 1) == 0)
      {
        goto LABEL_6;
      }

      type metadata accessor for SearchTopResultLockupLayout();
      goto LABEL_239;
    case 220:
      if ((sub_1E39DFFC8() & 1) == 0)
      {
        goto LABEL_6;
      }

      [objc_opt_self() isPad];
      OUTLINED_FUNCTION_9_5();
      type metadata accessor for SearchTopResultLockupLayout();
      if (v52)
      {
        v174 = 1;
LABEL_230:
        v45 = sub_1E412D104(v174);
      }

      else
      {
LABEL_239:
        v45 = sub_1E412D3D0();
      }

      goto LABEL_21;
    case 221:
      if ((TVAppFeature.isEnabled.getter(10, v49, v50) & 1) == 0)
      {
        goto LABEL_6;
      }

      type metadata accessor for SearchTopResultLockupLayout();
      v174 = OUTLINED_FUNCTION_70_3();
      goto LABEL_230;
    case 223:
      v264 = &unk_1F5D5D528;
      v265 = &off_1F5D5C858;
      LOBYTE(v263[0]) = 9;
      v126 = j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_19_100(v126);
      __swift_destroy_boxed_opaque_existential_1(v263);
      type metadata accessor for MediaShowcaseLockupLayout();
      v127 = OUTLINED_FUNCTION_25_77();
      v45 = sub_1E3AC626C(v127);
      goto LABEL_21;
    case 226:
      LOBYTE(v266) = 2;
      v128 = OUTLINED_FUNCTION_6_156();
      v47(v128);
      if (v264)
      {
        OUTLINED_FUNCTION_17_108();
        if ((OUTLINED_FUNCTION_21_4() & 1) != 0 && sub_1E3CCDE78() != 4)
        {
          OUTLINED_FUNCTION_9_5();
          type metadata accessor for PlaylistLockupLayout();
          v129 = OUTLINED_FUNCTION_50();
          goto LABEL_323;
        }
      }

      else
      {
        sub_1E329505C(v263);
      }

      type metadata accessor for PlaylistLockupLayout();
      v129 = OUTLINED_FUNCTION_18_26();
      goto LABEL_323;
    case 227:
      LOBYTE(v266) = 4;
      v175 = OUTLINED_FUNCTION_6_156();
      v47(v175);
      if (v264)
      {
        OUTLINED_FUNCTION_17_108();
        if (OUTLINED_FUNCTION_21_4())
        {
          v177 = sub_1E3D7CB28();
          goto LABEL_320;
        }
      }

      else
      {
        sub_1E329505C(v263);
      }

      v177 = 0;
LABEL_320:
      sub_1E3D7919C(v177 & 1, 0, v176);
      OUTLINED_FUNCTION_9_5();
      type metadata accessor for PlaylistLockupLayout();
      if (v52)
      {
        v129 = 6;
      }

      else
      {
        v129 = 7;
      }

LABEL_323:
      v45 = sub_1E3FB95BC(v129);
      goto LABEL_21;
    case 228:
      type metadata accessor for PlaylistLockupLayout();
      v129 = 8;
      goto LABEL_323;
    case 230:
      LOBYTE(v266) = 55;
      v137 = OUTLINED_FUNCTION_6_156();
      v47(v137);
      if (v264)
      {
        OUTLINED_FUNCTION_17_108();
        if ((OUTLINED_FUNCTION_21_4() & 1) != 0 && v266 == 1)
        {
          type metadata accessor for ContextMenuPreviewItemViewLayout();
          v138 = OUTLINED_FUNCTION_18_26();
          v45 = sub_1E3E09920(v138);
          goto LABEL_21;
        }
      }

      else
      {
        sub_1E329505C(v263);
      }

      type metadata accessor for ContextMenuPreviewItemViewLayout();
      v226 = OUTLINED_FUNCTION_18_26();
      v45 = sub_1E3E08A24(v226, 0);
      goto LABEL_21;
    case 233:
      type metadata accessor for DownloadStateIndicatorLayout();
      v45 = sub_1E3C6D918();
      goto LABEL_21;
    case 234:
      OUTLINED_FUNCTION_71_2();
      v115 = (*(v114 + 624))();
      if (v115)
      {
        v116 = *(v115 + 98);

        LOWORD(v263[0]) = v116;
        LOWORD(v266) = 86;
        sub_1E3741534(v117, v118, v119);
        sub_1E4205E84();
      }

      goto LABEL_14;
    case 241:
      type metadata accessor for SportStatsLayout();
      v45 = sub_1E3DA3A40();
      goto LABEL_21;
    case 242:
      type metadata accessor for TeamStatsLayout();
      v45 = sub_1E3DA2BF8();
      goto LABEL_21;
    case 243:
      type metadata accessor for PlayerStatsLayout();
      v45 = sub_1E4048408();
      goto LABEL_21;
    case 244:
      OUTLINED_FUNCTION_71_2();
      (*(v121 + 672))();
      v122 = OUTLINED_FUNCTION_0_230(&type metadata for ViewModelKeys);
      OUTLINED_FUNCTION_52_17(v122);

      if (!*(&v267 + 1))
      {
        goto LABEL_282;
      }

      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if ((OUTLINED_FUNCTION_3_176(v123) & 1) == 0)
      {
        goto LABEL_290;
      }

      OUTLINED_FUNCTION_23_77();
      v264 = &unk_1F5D5D888;
      v265 = &off_1F5D5C928;
      v124 = OUTLINED_FUNCTION_97(13);
      OUTLINED_FUNCTION_52_17(v124);

      if (*(&v267 + 1))
      {
        OUTLINED_FUNCTION_48_10();
        OUTLINED_FUNCTION_21_4();
LABEL_290:
        __swift_destroy_boxed_opaque_existential_1(v263);
      }

      else
      {
LABEL_282:
        OUTLINED_FUNCTION_15_52();
      }

      type metadata accessor for LeagueStandingsCardLayout();
      v224 = OUTLINED_FUNCTION_50();
      v45 = sub_1E3A6F5CC(v224);
      goto LABEL_21;
    case 248:
      type metadata accessor for EmptyStateViewLayout();
      v45 = sub_1E3F385CC();
      goto LABEL_21;
    case 249:
    case 252:
      type metadata accessor for ViewLayout();
      v45 = sub_1E3C2F968();
      goto LABEL_21;
    case 250:
      type metadata accessor for UnitTestLockupLayout();
      v45 = sub_1E3A69A28();
      goto LABEL_21;
    case 251:
      type metadata accessor for UnitTestCardLayout();
      v45 = sub_1E40038B0();
      goto LABEL_21;
    case 253:
      type metadata accessor for MainMenuViewLayout();
      v45 = sub_1E3F75090();
      goto LABEL_21;
    case 254:
      type metadata accessor for ListLockupLayout();
      v45 = sub_1E418E6F8(254);
      goto LABEL_21;
    case 255:
      type metadata accessor for ExtrasPreviewBadgeLayout();
      v104 = sub_1E4027158();
LABEL_190:
      v268 = v104;
      goto LABEL_14;
    case 256:
      v154 = sub_1E3C8DEA0();
      goto LABEL_234;
    case 257:
      v154 = sub_1E3C8DDFC();
      goto LABEL_234;
    case 258:
      v154 = sub_1E3C8DCB4();
LABEL_234:
      v268 = *v154;

      goto LABEL_14;
    case 259:
      type metadata accessor for LeagueStandingsLegendLayout();
      v45 = sub_1E3A67A5C();
      goto LABEL_21;
    case 261:
      type metadata accessor for LeagueRankLayout();
      v45 = sub_1E4001754();
      goto LABEL_21;
    default:
      goto LABEL_6;
  }
}

uint64_t sub_1E3D7919C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3D797C0(a1, a2, a3);
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

uint64_t sub_1E3D79254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  a3();
  sub_1E4206254();
  sub_1E4206254();
  if (v9 == v7 && v10 == v8)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E42079A4();
  }

  return v5 & 1;
}

uint64_t sub_1E3D79310()
{
  OUTLINED_FUNCTION_9_5();
  type metadata accessor for OfferListLockupCellLayout();
  v0 = OUTLINED_FUNCTION_50();
  return sub_1E415EF74(v0);
}

uint64_t sub_1E3D7933C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D79310();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D79370@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OfferListLockupCellLayout();
  result = sub_1E4160CD4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D793A4(uint64_t a1)
{
  (*(*a1 + 672))();
  v23 = &type metadata for ViewModelKeys;
  v24 = &off_1F5D7BCA8;
  LOBYTE(v20) = 11;
  OUTLINED_FUNCTION_52_17(&v20);

  if (!v26)
  {
    goto LABEL_6;
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_27_65(v1, v2, v3, v1, v4, v5, v6, v7, v17, v20, v21, v22, v23, v24, v25[0]) & 1) == 0)
  {
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(&v20);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_1(&v20);
  v23 = &unk_1F5D5E608;
  v24 = &off_1F5D5CC28;
  OUTLINED_FUNCTION_52_17(&v20);

  if (!v26)
  {
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(&v20);
    sub_1E329505C(v25);
    return 0;
  }

  if ((OUTLINED_FUNCTION_27_65(v8, v9, v10, MEMORY[0x1E69E6370], v11, v12, v13, v14, v18, v20, v21, v22, v23, v24, v25[0]) & 1) == 0)
  {
    goto LABEL_7;
  }

  v15 = v19;
  __swift_destroy_boxed_opaque_existential_1(&v20);
  return v15;
}

uint64_t sub_1E3D79508()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_1E3D79538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38220;
  if (!qword_1ECF38220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38220);
  }

  return result;
}

unint64_t sub_1E3D7958C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE25FE48[0];
  if (!qword_1EE25FE48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE25FE48);
  }

  return result;
}

unint64_t sub_1E3D7960C()
{
  result = qword_1EE23B610;
  if (!qword_1EE23B610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A770, &qword_1E42992B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B610);
  }

  return result;
}

double sub_1E3D7974C(void (*a1)(void), uint64_t (*a2)(void))
{
  v4 = *(v2 + 16);
  a1(0);
  *v4 = a2();

  return result;
}

unint64_t sub_1E3D797C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE27C048[0];
  if (!qword_1EE27C048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE27C048);
  }

  return result;
}

uint64_t sub_1E3D7981C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E3D79850(uint64_t a1)
{
  OUTLINED_FUNCTION_3_13(a1);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3D79890(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E3D7990C;
}

void sub_1E3D7990C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1E3D7998C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_4_0();
  v1 = swift_allocObject();
  sub_1E3D79A20(v0);
  return v1;
}

uint64_t sub_1E3D799C4(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t sub_1E3D79A20(uint64_t a1)
{
  v2 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_13(v2);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1E3D79A70()
{
  MEMORY[0x1E69144A0](v0 + 16);
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1E3D79AA4@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *a1 = qword_1ECF71640;
}

uint64_t sub_1E3D79AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3D79B30(a1, a2, a3);
  sub_1E4201AC4();
  return v4;
}

unint64_t sub_1E3D79B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE259028[0];
  if (!qword_1EE259028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE259028);
  }

  return result;
}

double sub_1E3D79BC0(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38228, &qword_1E42CF608);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  v3 = a1;
  sub_1E3D799C4(a1);
  sub_1E4202DE4();

  return result;
}

uint64_t sub_1E3D79C90()
{
  v1 = qword_1EE237CE8;
  v2 = *(v0 + qword_1EE237CE8);
  if (!v2)
  {
    return 0;
  }

  v3 = v0;
  v4 = *(*v2 + 624);

  v6 = v4(v5);

  if (v6)
  {
    type metadata accessor for EpisodeCollectionViewModel();
    OUTLINED_FUNCTION_20_2();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  if (!*(v3 + v1))
  {
    return 0;
  }

  sub_1E3D79D5C();
  OUTLINED_FUNCTION_12_1();

  return v3;
}

uint64_t sub_1E3D79D5C()
{
  v2 = (*v1 + 624);
  v3 = *v2;
  v4 = (*v2)();
  if (v4)
  {
    v0 = v4;
    type metadata accessor for CollectionViewModel();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  result = (v3)(v4);
  if (result)
  {
    sub_1E3D79D5C();
    OUTLINED_FUNCTION_12_1();

    return v0;
  }

  return result;
}

void sub_1E3D79DF8()
{
  OUTLINED_FUNCTION_21_5();
  v65 = v1;
  v3 = v2;
  v5 = v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38230, &unk_1E42CF610);
  OUTLINED_FUNCTION_0_10();
  v63 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v61 - v8;
  v67 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v66 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v15 = VUISignpostLogObject(v14);
  sub_1E41FFBC4();
  v16 = sub_1E4206BA4();
  v17 = VUISignpostLogObject(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E4297BE0;
  sub_1E384EE08(v5[49]);
  v20 = v19;
  v22 = v21;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1E3283528(v19, v21, v23);
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  OUTLINED_FUNCTION_4_184();
  sub_1E41FFB94();

  v61 = v0;
  if (v3)
  {
    v24 = v3;
  }

  else
  {
    v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v25 = _MergedGlobals_77;
  v26 = *&v24[_MergedGlobals_77];
  if (v26)
  {
    v27 = v3;
    v28 = v26;
  }

  else
  {
    type metadata accessor for HostingCellCoordinator(0);
    v28 = swift_allocObject();
    v29 = v3;
    sub_1E41FE614();
    LOBYTE(v72) = 1;
    v30 = v28 + OBJC_IVAR____TtC8VideosUIP33_634439971D7F5B6DBBCC23E0497BA8BB22HostingCellCoordinator__cellMetrics;
    *v30 = 0u;
    *(v30 + 16) = 0u;
    *(v30 + 32) = 0u;
    *(v30 + 48) = 0u;
    *(v30 + 64) = 0u;
    *(v30 + 80) = 1;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    sub_1E41FE924();
  }

  v31 = v24;

  sub_1E3D7B4C8(v24);
  *&v31[qword_1EE237CE8] = v5;

  v32 = qword_1EE237CF0;
  swift_beginAccess();

  v33 = v65;
  sub_1E3D7B728(v65, &v31[v32]);
  swift_endAccess();
  v34 = sub_1E3D79C90();
  if (v34)
  {
    v35 = v34;
    sub_1E39C4734(v33, &v72);
    if (v74 == 0.0)
    {

      sub_1E325F7A8(&v72, &qword_1ECF296C0, &unk_1E429BBE0);
    }

    else
    {
      v65 = v13;
      sub_1E3251BE8(&v72, v78);
      v37 = *&v31[qword_1EE237CF8];
      v36 = *&v31[qword_1EE237CF8 + 8];
      v74 = MEMORY[0x1E69E6158];
      *&v72 = v37;
      *(&v72 + 1) = v36;
      v38 = *(*v5 + 784);

      v38(v39, &v72, &unk_1F5D5EA88, &off_1F5D5CD18);
      sub_1E325F7A8(&v72, &unk_1ECF296E0, &unk_1E4298030);
      sub_1E327F454(v78, &v73);
      *&v72 = v5;
      *(&v72 + 1) = v35;

      v76 = *sub_1E3CD9D88();
      v77 = v28;
      v71 = 0;
      v69 = MEMORY[0x1E69E6370];
      LOBYTE(v68[0]) = 1;

      v38(&v71, v68, &unk_1F5D5E7B8, &off_1F5D5CC78);
      v40 = sub_1E325F7A8(v68, &unk_1ECF296E0, &unk_1E4298030);
      MEMORY[0x1EEE9AC00](v40);
      sub_1E3D7B7A4(v41, v42, v43);
      v44 = v31;
      v45 = v62;
      sub_1E42021C4();
      sub_1E4202734();
      v46 = v64;
      v69 = v64;
      v70 = OUTLINED_FUNCTION_5_164(&qword_1EE2888C8, &qword_1ECF38230, &unk_1E42CF610);
      __swift_allocate_boxed_opaque_existential_1(v68);
      sub_1E42021B4();
      (*(v63 + 8))(v45, v46);
      MEMORY[0x1E6911580](v68);
      if (sub_1E4206C54())
      {

        v47 = OUTLINED_FUNCTION_16_0();
        sub_1E34AF594(v47, v48);
      }

      else
      {
        *(swift_allocObject() + 16) = *(v61 + 80);
        sub_1E4206C64();
      }

      v13 = v65;
      __swift_destroy_boxed_opaque_existential_1(v78);
      sub_1E3D7B800(&v72);
    }
  }

  *&v24[v25] = v28;

  v50 = 0.0;
  if ((*(*v5 + 392))(v49))
  {
    OUTLINED_FUNCTION_30();
    (*(v51 + 552))(&v72);
    v52 = v72;
    v53 = v73;
    v54 = v74;

    if ((v75 & 1) == 0)
    {
      v50 = sub_1E3952BE8(*&v52, *(&v52 + 1), v53, v54);
    }
  }

  v55 = [v31 vuiLayer];
  [v55 setCornerRadius_];

  type metadata accessor for Accessibility();
  v56 = v31;
  sub_1E40A8408();
  if (v57)
  {
    v58 = sub_1E4205ED4();
  }

  else
  {
    v58 = 0;
  }

  [v56 setVuiAccessibilityIdentifier_];

  v59 = sub_1E4206B94();
  v60 = VUISignpostLogObject(v59);
  sub_1E41FFBA4();

  (*(v66 + 8))(v13, v67);
  OUTLINED_FUNCTION_20_0();
}

uint64_t type metadata accessor for HostingCellCoordinator(uint64_t a1)
{
  result = qword_1EE29A810;
  if (!qword_1EE29A810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3D7A610(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38230, &unk_1E42CF610);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - v11;
  if (sub_1E41FFE24() & 1) != 0 || (sub_1E41FFE04())
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1E41FFDF4();
  }

  type metadata accessor for PlatformHostingCellView(0, a3, a4, v13);
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = qword_1EE237CF0;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E39C4734(v16 + v17, v36);
    if (v37)
    {
      v18 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
      if (swift_dynamicCast())
      {
        v38 = v34;
        v39[0] = v35[0];
        *(v39 + 10) = *(v35 + 10);
        v19 = *(v16 + qword_1EE237CE8);
        if (v19)
        {

          v20 = sub_1E3D79C90();
          if (v20)
          {
            v21 = v20;
            v22 = *(v16 + _MergedGlobals_77);
            if (v22)
            {
              v33[5] = &type metadata for CollectionViewCellContext;
              v33[6] = &off_1F5D621F8;
              v23 = v22;
              v24 = swift_allocObject();
              v33[1] = v21;
              v33[2] = v24;
              v25 = v39[0];
              *(v24 + 16) = v38;
              *(v24 + 32) = v25;
              *(v24 + 42) = *(v39 + 10);
              *(v24 + 58) = v14 & 1;
              v33[0] = v19;

              v26 = sub_1E3CD9D88();
              v31[1] = v31;
              v33[7] = *v26;
              v33[8] = v23;
              MEMORY[0x1EEE9AC00](v26);
              v31[-2] = v33;
              sub_1E3D7B7A4(v27, v28, v29);
              v30 = v18;

              sub_1E42021C4();
              sub_1E4202734();
              v32[3] = v7;
              v32[4] = OUTLINED_FUNCTION_5_164(&qword_1EE2888C8, &qword_1ECF38230, &unk_1E42CF610);
              __swift_allocate_boxed_opaque_existential_1(v32);
              sub_1E42021B4();
              (*(v9 + 8))(v12, v7);
              MEMORY[0x1E6911580](v32);

              sub_1E3D7B800(v33);
              return;
            }
          }
        }
      }
    }

    else
    {
      sub_1E325F7A8(v36, &qword_1ECF296C0, &unk_1E429BBE0);
    }
  }
}

double sub_1E3D7A968(double a1, double a2)
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_8();
  v7 = VUISignpostLogObject(v6);
  sub_1E41FFBC4();
  v8 = sub_1E4206BA4();
  v9 = VUISignpostLogObject(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v10 = swift_allocObject();
  v13 = v10;
  *(v10 + 16) = xmmword_1E4297BE0;
  v14 = *&v2[qword_1EE237CE8];
  if (v14)
  {
    sub_1E384EE08(*(v14 + 98));
    v15 = v10;
    v16 = v11;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v13[7] = MEMORY[0x1E69E6158];
  v13[8] = sub_1E3283528(v10, v11, v12);
  v17 = 16718;
  if (v16)
  {
    v17 = v15;
  }

  v18 = 0xE200000000000000;
  if (v16)
  {
    v18 = v16;
  }

  v13[4] = v17;
  v13[5] = v18;
  OUTLINED_FUNCTION_4_184();
  OUTLINED_FUNCTION_7_167();
  sub_1E41FFB94();

  v19 = [v2 vuiContentView];
  [v19 sizeThatFits_];
  v21 = v20;

  v22 = sub_1E4206B94();
  v23 = VUISignpostLogObject(v22);
  OUTLINED_FUNCTION_7_167();
  sub_1E41FFBA4();

  v24 = OUTLINED_FUNCTION_16_0();
  v25(v24);
  return v21;
}

double sub_1E3D7AB8C(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_1E3D7A968(a2, a3);

  return v6;
}

void sub_1E3D7ABE0()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v40 = v12;
  v13 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v21 = VUISignpostLogObject(v20);
  sub_1E41FFBC4();
  v22 = sub_1E4206BA4();
  v23 = VUISignpostLogObject(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v24 = swift_allocObject();
  v27 = v24;
  *(v24 + 16) = xmmword_1E4297BE0;
  v28 = *(v1 + qword_1EE237CE8);
  if (v28)
  {
    sub_1E384EE08(*(v28 + 98));
    v29 = v24;
    v30 = v25;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v27[7] = MEMORY[0x1E69E6158];
  v27[8] = sub_1E3283528(v24, v25, v26);
  v31 = 16718;
  if (v30)
  {
    v31 = v29;
  }

  v32 = 0xE200000000000000;
  if (v30)
  {
    v32 = v30;
  }

  v27[4] = v31;
  v27[5] = v32;
  OUTLINED_FUNCTION_4_184();
  sub_1E41FFB94();

  sub_1E41A300C(v41);
  sub_1E41A2FE8(v33, v11, 1.79769313e308);
  v34 = _MergedGlobals_77;
  if (*(v1 + _MergedGlobals_77))
  {
    memcpy(v43, v41, 0x50uLL);
    v42[0] = 0;
    v43[80] = 0;

    sub_1E3D7B358(v43);
  }

  v35 = sub_1E3D7A968(v11, 1.79769313e308);
  sub_1E41A2FE8(v36, v35, v37);
  v41[6] = v9;
  v41[7] = v7;
  v41[8] = v5;
  v41[9] = v3;
  if (*(v1 + v34))
  {
    memcpy(v42, v41, 0x50uLL);
    v42[80] = 0;

    sub_1E3D7B358(v42);
  }

  v38 = sub_1E4206B94();
  v39 = VUISignpostLogObject(v38);
  sub_1E41FFBA4();

  (*(v15 + 8))(v19, v13);
  memcpy(v40, v41, 0x50uLL);
  OUTLINED_FUNCTION_20_0();
}

id sub_1E3D7AEBC()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  v2 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_8();
  *(v0 + _MergedGlobals_77) = 0;
  v6 = (v0 + qword_1EE237CF8);
  sub_1E41FE614();
  v7 = sub_1E41FE5E4();
  v9 = v8;
  (*(v4 + 8))(v0, v2);
  *v6 = v7;
  v6[1] = v9;
  *(v0 + qword_1EE237CE8) = 0;
  v10 = v0 + qword_1EE237CF0;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v11 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v12, v13, v11, v0, ObjectType);
}

id sub_1E3D7B020()
{
  OUTLINED_FUNCTION_12_1();
  ObjectType = swift_getObjectType();
  v3 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_8();
  *&v1[_MergedGlobals_77] = 0;
  v7 = &v1[qword_1EE237CF8];
  sub_1E41FE614();
  v8 = sub_1E41FE5E4();
  v10 = v9;
  (*(v5 + 8))(v1, v3);
  *v7 = v8;
  v7[1] = v10;
  *&v1[qword_1EE237CE8] = 0;
  v11 = &v1[qword_1EE237CF0];
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, v0);

  if (v12)
  {
  }

  return v12;
}

uint64_t sub_1E3D7B190(uint64_t a1)
{

  return sub_1E325F7A8(a1 + qword_1EE237CF0, &qword_1ECF296C0, &unk_1E429BBE0);
}

void *sub_1E3D7B240@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1E3D7CA88();
  sub_1E41FE8F4();

  return memcpy(a1, (v1 + OBJC_IVAR____TtC8VideosUIP33_634439971D7F5B6DBBCC23E0497BA8BB22HostingCellCoordinator__cellMetrics), 0x51uLL);
}

double sub_1E3D7B358(uint64_t a1)
{
  swift_getKeyPath();
  sub_1E3D7CA88();
  sub_1E41FE8E4();

  return result;
}

uint64_t sub_1E3D7B3F0()
{
  swift_getKeyPath();
  sub_1E3D7CA88();
  sub_1E41FE8F4();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E3D7B46C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D7B3F0();
  *a1 = result;
  return result;
}

void sub_1E3D7B498(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E3D7B4C8(v1);
}

void sub_1E3D7B4C8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && a1)
  {
    sub_1E373C4DC();
    v2 = Strong;
    v3 = a1;
    v4 = sub_1E4206F64();

    if ((v4 & 1) == 0)
    {
LABEL_10:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1E3D7CA88();
      sub_1E41FE8E4();

      return;
    }
  }

  else
  {

    if (Strong || a1)
    {
      goto LABEL_10;
    }
  }

  swift_unknownObjectWeakAssign();
}

uint64_t sub_1E3D7B650()
{
  v1 = OBJC_IVAR____TtC8VideosUIP33_634439971D7F5B6DBBCC23E0497BA8BB22HostingCellCoordinator_id;
  sub_1E41FE624();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUIP33_634439971D7F5B6DBBCC23E0497BA8BB22HostingCellCoordinator__sourceView);
  v3 = OBJC_IVAR____TtC8VideosUIP33_634439971D7F5B6DBBCC23E0497BA8BB22HostingCellCoordinator___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1E3D7B728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF296C0, &unk_1E429BBE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3D7B7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2A44B8[0];
  if (!qword_1EE2A44B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A44B8);
  }

  return result;
}

void *sub_1E3D7B830@<X0>(void *a1@<X8>)
{
  v85 = a1;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v69 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68 - v9;
  type metadata accessor for CollectionViewModel();
  v11 = swift_dynamicCastClass();
  v70 = v4;
  v71 = v2;
  if (v11)
  {
    OUTLINED_FUNCTION_30();
    v13 = *(v12 + 1016);

    v15 = v13(v14);
    if (v15)
    {
      v16 = v15;
      MEMORY[0x1EEE9AC00](v15);
      *(&v68 - 2) = v1;
      sub_1E3D7C090(sub_1E3D7CA48, (&v68 - 4), v16);
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v23 = ((*v1)[168])(v15);
  }

  else
  {
    type metadata accessor for EpisodeCollectionViewModel();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      OUTLINED_FUNCTION_30();
      v21 = *(v20 + 1000);

      v18 = v21(v22);
    }

    else
    {
      v18 = 0;
    }

    v23 = 263;
  }

  v24 = *(*v1[7] + 184);
  v25 = COERCE_DOUBLE((v24)(v19));
  if (v26)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v25;
  }

  sub_1E327F454((v1 + 2), v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
  v28 = swift_dynamicCast();
  v87 = v1;
  if (v28)
  {
    v27 = *&v94[1];
  }

  else
  {
    sub_1E327F454((v1 + 2), v91);
    if (swift_dynamicCast())
    {
      memcpy(v93, v94, 0x82uLL);
      sub_1E3D7C9F4(v93);
      v27 = *&v93[8];
    }
  }

  v86 = v18;
  if (v23 == 263 || (sub_1E373F6E0(v23, 119, v29, v30, v31, v32) & 1) == 0)
  {
    if (v27 <= 0.0)
    {
      v24();
    }

    v33 = &v113;
    v35 = sub_1E42012F4();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v35);
    v114 = 0u;
    v115 = 0u;
    v116 = 1;
    if (sub_1E3ABB674(*(*v87 + 49), &unk_1F5D83AB0, v36))
    {
      sub_1E327F454((v87 + 2), v93);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
      swift_dynamicCast();
    }

    v34 = &v112;
    sub_1E389BFA8();
    sub_1E325F7A8(v10, &qword_1ECF2A250, " B\r");
  }

  else
  {
    v33 = &v111;
    v114 = 0u;
    v115 = 0u;
    v116 = 1;
    v34 = &v110;
    sub_1E389CD28();
  }

  v84 = v33[32];
  v83 = v34[36];
  v82 = v33[17];
  v81 = v34[34];
  v37 = v33[16];
  v79 = *v33;
  v80 = v37;
  v78 = v34[32];
  v38 = *(v34 + 217);
  v76 = *(v34 + 216);
  v77 = v38;
  v39 = *(v34 + 112);
  v40 = *(v34 + 15);
  v41 = v34[16];
  v42 = *(v34 + 136);
  v43 = v34[18];
  v44 = *(v34 + 152);
  v45 = *(v34 + 176);
  v46 = *(v34 + 177);
  v47 = *(v34 + 178);
  v48 = v34[23];
  v72 = *(v34 + 192);
  v73 = v47;
  v49 = *(v34 + 194);
  v74 = *(v34 + 193);
  v75 = v49;
  memcpy(v109, v34, sizeof(v109));
  memcpy(v93, v109, 0x5BuLL);
  *&v93[96] = *(v34 + 6);
  v93[112] = v39 & 1;
  *&v93[120] = v40;
  *&v93[128] = v41;
  v93[136] = v42 & 1;
  *&v93[144] = v43;
  v93[152] = v44 & 1;
  *&v93[160] = *(v34 + 10);
  v93[176] = v45;
  v93[177] = v46 & 1;
  v93[178] = v73;
  *&v93[184] = v48;
  v93[192] = v72 & 1;
  v93[193] = v74 & 1;
  v93[194] = v75 & 1;
  memcpy(v94, v93, 0xC3uLL);
  v95 = *(v34 + 25);
  v96 = v76;
  v97 = v77;
  v50 = *(v34 + 15);
  v98 = *(v34 + 14);
  v99 = v50;
  v100 = v78;
  v101 = v79;
  v102 = v81;
  v103 = v80;
  v104 = v82;
  v105 = v83;
  v106 = v84;
  v51 = *(v34 + 20);
  v107 = *(v34 + 19);
  v108 = v51;
  v52 = v87;
  sub_1E375C1CC(v93, v91);
  sub_1E3D7B240(v91);
  if (v92 & 1) != 0 || v91[0] <= 0.0 || (v42)
  {
    sub_1E375B760(v94);
  }

  else if (floor(v91[0]) == floor(v40) || ceil(v91[0]) == ceil(v40))
  {

    sub_1E375B760(v94);
  }

  else
  {
    v54 = sub_1E324FBDC();
    v56 = v69;
    v55 = v70;
    v57 = v71;
    (*(v70 + 16))(v69, v54, v71);
    sub_1E3D7C9BC(v52, v90);
    v58 = sub_1E41FFC94();
    v59 = sub_1E42067F4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v89 = v61;
      *v60 = 136315138;
      v88 = *(v90[0] + 98);
      sub_1E37D144C(v61, v62, v63);
      v64 = sub_1E4207944();
      v66 = v65;
      sub_1E3D7B800(v90);
      v67 = sub_1E3270FC8(v64, v66, &v89);

      *(v60 + 4) = v67;
      _os_log_impl(&dword_1E323F000, v58, v59, "sui & uikit calculation must match for %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1E69143B0](v61, -1, -1);
      MEMORY[0x1E69143B0](v60, -1, -1);

      sub_1E375B760(v94);
      (*(v55 + 8))(v56, v57);
    }

    else
    {
      sub_1E375B760(v94);

      (*(v55 + 8))(v56, v57);
      sub_1E3D7B800(v90);
    }
  }

  return memcpy(v85, v93, 0xC3uLL);
}

void sub_1E3D7C090(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v6 = sub_1E32AE9B0(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E6911E60](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v10 = v8;
    v9 = a1(&v10);
    if (v3)
    {

      return;
    }

    if (v9)
    {
      return;
    }
  }
}

uint64_t sub_1E3D7C188()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38240, &qword_1E42CF898);
  OUTLINED_FUNCTION_5_7();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  (*(**v0 + 776))(v27, v3);
  if (v27[3])
  {
    if (swift_dynamicCast())
    {
      v6 = v25;
      v7 = v26;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E325F7A8(v27, &unk_1ECF296E0, &unk_1E4298030);
  }

  v6 = 0;
  v7 = 0;
LABEL_6:
  sub_1E3D7B830(v27);
  OUTLINED_FUNCTION_25();
  sub_1E40EA03C(v8, v9, v10, v11, v12);
  sub_1E37E6F2C(v27);
  type metadata accessor for Router(0);
  sub_1E40C4334();

  sub_1E40C49A8();
  v14 = v13;

  sub_1E3D7C7DC();
  OUTLINED_FUNCTION_20_2();
  v15 = sub_1E4200504();
  v16 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38248, &qword_1E42CF8A0) + 36)];
  *v16 = v15;
  v16[1] = v14;
  sub_1E3D7B3F0();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38228, &qword_1E42CF608);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  v18 = OUTLINED_FUNCTION_20_2();
  v19 = sub_1E3D799C4(v18);
  v20 = &v5[*(v1 + 36)];
  *v20 = KeyPath;
  v20[1] = v19;
  if (v7)
  {
    v21 = v6;
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v7;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v25 = v21;
  v26 = v22;
  sub_1E3D7C834();
  sub_1E4203184();

  return sub_1E32D32CC(v5);
}

uint64_t sub_1E3D7C418()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))();
  v3 = v2;
  v4 = sub_1E40C4334();
  if (v1 == *v4 && v3 == v4[1])
  {
    v6 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_16_0();
    v6 = sub_1E42079A4();
  }

  return v6 & 1;
}

void __swiftcall DocumentViewController.vuifindPresentationSource(source:)(UIView_optional *__return_ptr retstr, Swift::String source)
{
  v3 = [v2 vuiView];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E4206ED4();

    if (v5)
    {
      v6 = v5;
      v7 = sub_1E4206ED4();

      if (v7)
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3D7C660(uint64_t a1)
{
  result = sub_1E41FE624();
  if (v2 <= 0x3F)
  {
    result = sub_1E41FE934();
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

unint64_t sub_1E3D7C7DC()
{
  result = qword_1EE23C228;
  if (!qword_1EE23C228)
  {
    type metadata accessor for Router(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23C228);
  }

  return result;
}

unint64_t sub_1E3D7C834()
{
  result = qword_1EE2896E0;
  if (!qword_1EE2896E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38240, &qword_1E42CF898);
    sub_1E3D7C8EC();
    sub_1E328FCF4(&qword_1EE2887F8, &qword_1ECF38238, &qword_1E42CF7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896E0);
  }

  return result;
}

unint64_t sub_1E3D7C8EC()
{
  result = qword_1EE289BF0;
  if (!qword_1EE289BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38248, &qword_1E42CF8A0);
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1EE2887F0, &unk_1ECF2A7A8, &qword_1E42B2790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BF0);
  }

  return result;
}

unint64_t sub_1E3D7CA88()
{
  result = qword_1EE29A828[0];
  if (!qword_1EE29A828[0])
  {
    type metadata accessor for HostingCellCoordinator(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29A828);
  }

  return result;
}

uint64_t sub_1E3D7CB28()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3D7CB78(char a1)
{
  if (a1)
  {
    return 0x7372656C69617274;
  }

  else
  {
    return 0x7370696C63;
  }
}

uint64_t sub_1E3D7CBD4(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3D7CC44(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D7CCC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D7CB28();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D7CCF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D7CB78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1E3D7CD1C()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = sub_1E3741090(0xD000000000000011, 0x80000001E4281970, result);
    v4 = v3;

    if (v4)
    {
      return v2;
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

  return result;
}

id sub_1E3D7CDDC()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x188))();
  v2 = [v1 prefersStatusBarHidden];

  return v2;
}

id sub_1E3D7CE58()
{
  v1 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_playlistViewController;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1E3D7CEA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_playlistViewController;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_playlistViewController, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_1E3D7CEF8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  return result;
}

uint64_t sub_1E3D7CF3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_cancellables;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_cancellables, v5);
  *(v1 + v3) = a1;
}

void sub_1E3D7D02C()
{
  OUTLINED_FUNCTION_31_1();
  objc_allocWithZone(v0);
  OUTLINED_FUNCTION_32_65();
  sub_1E3D7D0A4();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D7D0A4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v49 = v2;
  v50 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v53 = v10;
  v54 = v11;
  v52 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v45 - v14;
  v15 = (v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_pageContext);
  *v15 = 0x726579616C70;
  v15[1] = 0xE600000000000000;
  v16 = v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousSubtitle;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = -2;
  v17 = v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousAlternateSubtitle;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = -2;
  v18 = (v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionTitle);
  *v18 = 0;
  v18[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_hudController) = 0;
  OUTLINED_FUNCTION_30_64(OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController);
  *(v0 + v19) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_appendContextDataRef) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_contextDataRef) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_cancellables) = MEMORY[0x1E69E7CD0];
  v20 = v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_trailersContextData;
  type metadata accessor for Document();
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v21 = sub_1E401885C();
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_document) = v21;
  type metadata accessor for CollectionViewModel();

  v22 = sub_1E40B1B68();
  if (v22)
  {
    *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel) = v22;
    *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_clipType) = 1;
    *v18 = xmmword_1E42B6850;

    v23 = v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxMovieContentRating;
    v48 = v9;
    *v23 = v9;
    v47 = v7 & 1;
    *(v23 + 8) = v7 & 1;
    v24 = v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxTVContentRating;
    *v24 = v5;
    v49 &= 1u;
    *(v24 + 8) = v49;
    OUTLINED_FUNCTION_3_0(v20, &v57);
    v25 = *v20;
    v26 = *(v20 + 8);
    v46 = v5;
    v27 = v52;
    v28 = v54;
    *v20 = v52;
    *(v20 + 8) = v28;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;

    sub_1E395F8D8(v25, v26);
    *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_allowsCellular) = v50 & 1;
    type metadata accessor for PlaylistViewController(0);
    v29 = OUTLINED_FUNCTION_5_11();
    *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_playlistViewController) = sub_1E37F23A8(v29, MEMORY[0x1E69E7CC0], 2, 0);
    v30 = type metadata accessor for ClipsTemplateViewController();
    v55 = v1;
    v56 = v30;
    OUTLINED_FUNCTION_25();
    v33 = objc_msgSendSuper2(v31, v32);
    sub_1E3D7E440();
    v34 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v34);
    sub_1E4206434();

    v35 = sub_1E4206424();
    v36 = swift_allocObject();
    v37 = MEMORY[0x1E69E85E0];
    *(v36 + 16) = v35;
    *(v36 + 24) = v37;
    *(v36 + 32) = v33;
    *(v36 + 40) = v27;
    v38 = v53;
    *(v36 + 48) = v28;
    *(v36 + 56) = v38;
    v39 = v48;
    *(v36 + 64) = v21;
    *(v36 + 72) = v39;
    *(v36 + 80) = v47;
    *(v36 + 88) = v46;
    *(v36 + 96) = v49;
    v40 = OUTLINED_FUNCTION_42_55();
    sub_1E376FE58(v40, v41, v42, v43, v44);

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3D7D434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[33] = a4;
  v9[34] = sub_1E4206434();
  v9[35] = sub_1E4206424();
  v10 = swift_task_alloc();
  v9[36] = v10;
  *v10 = v9;
  v10[1] = sub_1E3D7D558;

  return sub_1E3D83B68();
}

uint64_t sub_1E3D7D558()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  v3[37] = v0;

  v7 = sub_1E42063B4();
  v3[38] = v7;
  v3[39] = v6;
  if (v0)
  {
    v8 = sub_1E3D7DB90;
  }

  else
  {
    v8 = sub_1E3D7D6A8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E3D7D6A8()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 264);
  *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel) = *(v0 + 16);

  v2 = *(v0 + 32);
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionTitle);
  *v3 = *(v0 + 24);
  v3[1] = v2;

  v5 = sub_1E3D7CFDC();
  if (*(v4 + 8))
  {
    v6 = *(v0 + 64);
    *(v0 + 232) = v6;
    *(v4 + 16) = v6;
    sub_1E37C5830(v0 + 232, v0 + 248, &qword_1ECF3D960, &unk_1E4298000);
  }

  (v5)(v0 + 176, 0);

  return MEMORY[0x1EEE6DFA0](sub_1E3D7D7B4, 0, 0);
}

uint64_t sub_1E3D7D7B4()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 320) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3D7D838, v2, v1);
}

uint64_t sub_1E3D7D838()
{
  v1 = v0[33];

  if (*(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_clipType))
  {
    v2 = OUTLINED_FUNCTION_13_126();

    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {

    v3 = 1;
  }

  v4 = v0[33];
  type metadata accessor for PlaylistViewController(0);
  v5 = v0[7];

  v6 = OUTLINED_FUNCTION_5_11();
  v7 = sub_1E37F23A8(v6, v5, v3, 0);
  v8 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_playlistViewController;
  OUTLINED_FUNCTION_3_0(v4 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_playlistViewController, (v0 + 26));
  v9 = *(v4 + v8);
  *(v4 + v8) = v7;

  sub_1E3D7E5B8(v0[6], v5);
  OUTLINED_FUNCTION_36_3();
  v11 = (*((*MEMORY[0x1E69E7D40] & v10) + 0x188))();
  v12 = [v11 vuiView];

  if (v12)
  {
    [v12 setVuiAlpha_];

    v16 = objc_opt_self();
    OUTLINED_FUNCTION_4_0();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v0[14] = sub_1E3D82CF8;
    v0[15] = v17;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1E378AEA4;
    v0[13] = &block_descriptor_67_1;
    v18 = _Block_copy(v0 + 10);

    OUTLINED_FUNCTION_4_0();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v0[20] = sub_1E3D82128;
    v0[21] = v19;
    v0[16] = MEMORY[0x1E69E9820];
    v0[17] = 1107296256;
    v0[18] = sub_1E37EB82C;
    v0[19] = &block_descriptor_71;
    v20 = _Block_copy(v0 + 16);

    [v16 vui:v18 animateWithDuration:v20 animations:0.25 completion:?];
    _Block_release(v20);
    _Block_release(v18);
    v14 = v0[38];
    v15 = v0[39];
    v13 = sub_1E3D7DB30;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1E3D7DB30()
{
  OUTLINED_FUNCTION_24();

  sub_1E3D82CA4(v0 + 16);
  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3D7DB90()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 296);

  sub_1E3D7DC00();

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E3D7DC00()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E324FBDC();
  v11 = OUTLINED_FUNCTION_33_61();
  v12(v11);
  v13 = v3;
  v14 = sub_1E41FFC94();
  v15 = sub_1E42067F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v3;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_1E323F000, v14, v15, "ClipsTemplateViewController:: trailer fetch failed %@", v16, 0xCu);
    sub_1E325F748(v17, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v6 + 8))(v10, v4);
  [v1 dismissViewControllerAnimated:1 completion:0];
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3D7DDA4(unint64_t a1, uint64_t (*a2)(uint64_t), unint64_t a3, char a4, unint64_t a5, char a6, uint64_t a7)
{
  v8 = a7;
  v15 = objc_allocWithZone(v7);
  return sub_1E3D7DE20(a1, a2, a3, a4 & 1, a5, a6 & 1, v8);
}

id sub_1E3D7DE20(unint64_t a1, uint64_t (*a2)(uint64_t), unint64_t a3, char a4, unint64_t a5, char a6, char a7)
{
  v8 = v7;
  swift_getObjectType();
  v11 = (v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_pageContext);
  *v11 = 0x726579616C70;
  v11[1] = 0xE600000000000000;
  v12 = v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousSubtitle;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = -2;
  v13 = v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousAlternateSubtitle;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = -2;
  v14 = (v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionTitle);
  *v14 = 0;
  v14[1] = 0;
  v35 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_hudController;
  *(v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_hudController) = 0;
  v37 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController;
  OUTLINED_FUNCTION_30_64(OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController);
  *(v7 + v15) = 0;
  v48 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_appendContextDataRef;
  *(v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_appendContextDataRef) = 0;
  v49 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_contextDataRef;
  *(v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_contextDataRef) = 0;
  *(v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_cancellables) = MEMORY[0x1E69E7CD0];
  v16 = v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_trailersContextData;
  type metadata accessor for Document();
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v17 = sub_1E401885C();
  *(v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_document) = v17;
  swift_retain_n();
  v18 = a1;
  v46 = a3;
  v39 = a4 & 1;
  v42 = a6 & 1;
  sub_1E388A9D0(a2, v18, v17, a3, a4 & 1, a5, v42, v53);

  v19 = v53[0];
  if (v53[0])
  {
    v47 = v55;
    v44 = v56;
    v20 = v54;
    *(v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel) = v53[0];
    v36 = v53[1];
    v38 = v53[2];
    *(v7 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_clipType) = v20 & 1;
    OUTLINED_FUNCTION_3_0(v16, v52);
    v21 = *v16;
    v22 = *(v16 + 8);
    *v16 = 0u;
    *(v16 + 16) = 0u;

    sub_1E37C5830(v53, v51, &qword_1ECF38268, &unk_1E42CF908);
    sub_1E395F8D8(v21, v22);
    *v14 = v36;
    v14[1] = v38;

    v24 = v8 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxMovieContentRating;
    *v24 = v46;
    *(v24 + 8) = v39;
    v25 = v8 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxTVContentRating;
    *v25 = a5;
    *(v25 + 8) = v42;
    *(v8 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_allowsCellular) = a7 & 1;
    *(v8 + v48) = (*(*v19 + 1160))(v23);

    OUTLINED_FUNCTION_3_11();
    *(v8 + v49) = (*(v26 + 1136))();

    OUTLINED_FUNCTION_3_11();
    (*(v27 + 1328))(0);
    if (v20)
    {
      v28 = OUTLINED_FUNCTION_13_126();

      if (v28)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }
    }

    else
    {

      v29 = 1;
    }

    type metadata accessor for PlaylistViewController(0);

    v31 = OUTLINED_FUNCTION_5_11();
    *(v8 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_playlistViewController) = sub_1E37F23A8(v31, v47, v29, 0);
    type metadata accessor for ClipsTemplateViewController();
    OUTLINED_FUNCTION_25();
    v30 = objc_msgSendSuper2(v32, v33);
    sub_1E3D7E440();
    sub_1E3D7E5B8(v44, v47);

    sub_1E325F748(v53, &qword_1ECF38268, &unk_1E42CF908);
  }

  else
  {

    sub_1E3D82108(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24));
    sub_1E3D82108(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24));

    sub_1E395F8D8(*v16, *(v16 + 8));
    type metadata accessor for ClipsTemplateViewController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v30;
}

void sub_1E3D7E310()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_pageContext);
  *v1 = 0x726579616C70;
  v1[1] = 0xE600000000000000;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousSubtitle;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = -2;
  v3 = v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousAlternateSubtitle;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = -2;
  v4 = (v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionTitle);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_hudController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_paginateOffset) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_serviceRequest) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_appendContextDataRef) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_contextDataRef) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_cancellables) = MEMORY[0x1E69E7CD0];
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_trailersContextData);
  *v5 = 0u;
  v5[1] = 0u;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3D7E440()
{
  [v0 setVuiModalPresentationCapturesStatusBarAppearance_];
  [v0 setVuiModalPresentationStyle_];
  [v0 vui:2 setOverrideUserInterfaceStyle:?];
  result = [objc_opt_self() isPhone];
  if (result)
  {
    [v0 _setIgnoreAppSupportedOrientations_];

    return [v0 setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  return result;
}

uint64_t sub_1E3D7E4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_30_0(v9);
  *v10 = v11;
  v10[1] = sub_1E3286A7C;
  OUTLINED_FUNCTION_23_78();

  return sub_1E3D7D434(v12, v13, v14, v15, v16, v17, v18, v19, a9);
}

void sub_1E3D7E5B8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_document];
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 appController];

  if (v8)
  {
    v9 = [v8 appContext];
  }

  else
  {
    v9 = 0;
  }

  OUTLINED_FUNCTION_3_0(v6 + 48, v79);
  swift_unknownObjectWeakAssign();

  v10 = [objc_opt_self() isFeatureEnabled_];
  v11 = MEMORY[0x1E69E7D40];
  if (!v10)
  {
    if (!sub_1E32AE9B0(a2))
    {
      goto LABEL_13;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_33;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_10;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_16_1();
  v13 = v3;
  (*(v12 + 392))();
  OUTLINED_FUNCTION_7_5();
  v15.n128_u64[0] = 0x7FF0000000000000;
  (*((*v11 & v14) + 0x240))(v15);
LABEL_12:

LABEL_13:
  while (sub_1E32AE9B0(a2))
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, a2);
LABEL_17:
      sub_1E39C2F7C(16, MEMORY[0x1E69E63B0], &v77);

      if ((v78 & 1) == 0)
      {
        v20 = v77;
        OUTLINED_FUNCTION_16_1();
        (*(v21 + 392))();
        OUTLINED_FUNCTION_7_5();
        (*((*v11 & v22) + 0x258))(v20, 0);
      }

      break;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_17;
    }

    __break(1u);
LABEL_33:
    MEMORY[0x1E6911E60](0, a2);
LABEL_10:
    sub_1E39C2F7C(15, MEMORY[0x1E69E63B0], &v77);

    if ((v78 & 1) == 0)
    {
      v16 = v77;
      OUTLINED_FUNCTION_16_1();
      v13 = v3;
      (*(v17 + 392))();
      OUTLINED_FUNCTION_7_5();
      v19.n128_u64[0] = v16;
      (*((*v11 & v18) + 0x240))(v19);
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_16_1();
  v23 += 49;
  v24 = *v23;
  v25 = (*v23)();
  OUTLINED_FUNCTION_4_0();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v26);
  OUTLINED_FUNCTION_26_3();
  v28 = *((*v11 & v27) + 0x3F0);

  v28(sub_1E3D826C8, v26);

  v24();
  OUTLINED_FUNCTION_7_5();
  (*((*v11 & v29) + 0x2C0))(0);

  v24();
  OUTLINED_FUNCTION_7_5();
  (*((*v11 & v30) + 0x368))(1);

  v24();
  OUTLINED_FUNCTION_7_5();
  (*((*v11 & v31) + 0x2D8))(0);

  v24();
  OUTLINED_FUNCTION_7_5();
  (*((*v11 & v32) + 0x2A8))(1);

  v33 = (v24)();
  (*((*v11 & *v33) + 0x338))(*MEMORY[0x1E69874E8]);

  v34 = (v24)();
  sub_1E4205F14();
  OUTLINED_FUNCTION_26_3();
  (*((*v11 & v35) + 0x350))();

  v36 = (v24)();
  (*((*v11 & *v36) + 0x380))(v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_allowsCellular]);

  v24();
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_4_0();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v37);
  OUTLINED_FUNCTION_26_3();
  v39 = *((*v11 & v38) + 0x408);

  v39(sub_1E37FADC0, v37);

  v40 = [v3 vuiView];
  if (!v40)
  {
    goto LABEL_35;
  }

  v41 = v40;
  v42 = (v24)();
  v43 = [v42 vuiView];

  [v41 vui:v43 addSubview:0 oldView:?];
  v44 = (v24)();
  [v3 vui:v44 addChildViewController:?];

  v45 = (v24)();
  [v45 vui:v3 didMoveToParentViewController:?];

  v24();
  OUTLINED_FUNCTION_7_5();
  (*((*v11 & v46) + 0x228))(1);

  v24();
  OUTLINED_FUNCTION_7_5();
  (*((*v11 & v47) + 0x288))(a1);

  sub_1E3D81984(a1);
  type metadata accessor for TemplateViewModel(0);
  v48 = sub_1E4205CB4();
  sub_1E410D4C8(18, v48, 0);
  if (!v49)
  {
LABEL_30:
    sub_1E3D7F628();
    sub_1E3D7F2A0();
    return;
  }

  v50 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1E4298880;
  *(v51 + 32) = *&v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel];
  v52 = *(*v50 + 472);

  v52(v51);
  type metadata accessor for ClipsTabViewController(0);
  OUTLINED_FUNCTION_4_0();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v53);
  OUTLINED_FUNCTION_4_0();
  v54 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v54);

  sub_1E3840BF0(v55, sub_1E3D823C0, v53, sub_1E3D82568, v54);
  v57 = v56;
  sub_1E3280A90(0, &qword_1EE23AD50, 0x1E69DCEB0);
  v58.n128_f64[0] = sub_1E41DA724();
  (*((*v11 & *v57) + 0x8B0))(v58);
  v59 = v57;
  v60 = [v59 vuiView];
  if (!v60)
  {
    goto LABEL_36;
  }

  v61 = v60;
  [v60 setVuiClipsToBounds_];

  v76 = a1;
  (*((*v11 & *v59) + 0xA58))(a1);
  v62 = [objc_allocWithZone(VUIHUDViewController) init];
  [v62 setPlayerViewSize_];
  [v62 setHudContentViewController_];
  v63 = v62;
  v64 = [v63 vuiView];
  if (v64)
  {
    v65 = v64;
    [v64 setVuiClipsToBounds_];

    v66 = &v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionTitle];
    if (*&v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionTitle + 8])
    {

      v67 = sub_1E4205ED4();
    }

    else
    {
      v67 = 0;
    }

    [v63 setTitle_];

    v68 = *&v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_hudController];
    *&v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_hudController] = v63;
    v69 = v63;

    OUTLINED_FUNCTION_36_3();
    v71 = (*((*v11 & v70) + 0x188))();
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1E4298880;
    *(v72 + 32) = v69;
    (*((*v11 & *v71) + 0x518))();

    if (*(v66 + 1))
    {
      v73 = *v66;

      sub_1E4205ED4();
      OUTLINED_FUNCTION_16_5();
    }

    else
    {
      v73 = 0;
    }

    [v59 setTitle_];

    v74 = *&v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController];
    *&v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController] = v57;
    v75 = v59;

    sub_1E3D81C00(v76);

    goto LABEL_30;
  }

LABEL_37:
  __break(1u);
}

void sub_1E3D7F2A0()
{
  OUTLINED_FUNCTION_31_1();
  v23 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v22 - v2;
  v4 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00, &unk_1E42A2900);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  v17 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v18 = sub_1E4206A04();
  v24[0] = v18;
  v19 = sub_1E42069A4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v19);
  sub_1E3274B88(&qword_1EE23B130, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F748(v3, &unk_1ECF2D2B0, &unk_1E429D3D0);

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00, &unk_1E42A2900, MEMORY[0x1E695BE98]);
  sub_1E4200844();

  (*(v13 + 8))(v16, v11);
  OUTLINED_FUNCTION_36_3();
  v21 = (*((*MEMORY[0x1E69E7D40] & v20) + 0x258))(v24);
  sub_1E42004C4();

  v21(v24, 0);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3D7F628()
{
  [v0 setVuiModalPresentationStyle_];
  [v0 vui:2 setOverrideUserInterfaceStyle:?];
  result = [objc_opt_self() isPhone];
  if (result)
  {
    [v0 _setIgnoreAppSupportedOrientations_];

    return [v0 setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  return result;
}

void sub_1E3D7F6B8()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for ClipsTemplateViewController();
  objc_msgSendSuper2(&v12, sel_vui_viewDidLoad);
  v2 = [v0 vuiView];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() blackColor];
    [v3 setVuiBackgroundColor_];

    v5 = [objc_opt_self() sharedInstance];
    [v5 setDelegate_];

    type metadata accessor for LayoutGrid();
    sub_1E3A256EC();
    type metadata accessor for PlayerCollectionViewModel();
    if (swift_dynamicCastClass())
    {
      sub_1E3280A90(0, &qword_1EE23AD50, 0x1E69DCEB0);

      sub_1E41DA724();
      OUTLINED_FUNCTION_3_11();
      (*(v6 + 1664))();
      v7 = [v1 traitCollection];
      sub_1E3C2AE10();
      v9 = v8;
      OUTLINED_FUNCTION_3_11();
      (*(v10 + 1656))(v11);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3D7F8FC(uint64_t a1)
{
  v13 = type metadata accessor for ClipsTemplateViewController();
  v3 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v4, v5, a1, v3, v1, v13);
  v6 = OUTLINED_FUNCTION_6_12();
  [v7 v8];
  v9 = *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController);
  if (v9)
  {
    v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x8B0);
    v11 = v9;
    v12 = OUTLINED_FUNCTION_6_12();
    v10(v12);
  }
}

void sub_1E3D7FA50()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for ClipsTemplateViewController();
  objc_msgSendSuper2(&v23, sel_vui_viewDidAppear_, v3 & 1);
  if (*(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_clipType) == 1)
  {
  }

  else
  {
    v18 = OUTLINED_FUNCTION_14_124();

    if ((v18 & 1) == 0)
    {
      sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      v21 = sub_1E4206A04();
      OUTLINED_FUNCTION_4_0();
      v19 = swift_allocObject();
      OUTLINED_FUNCTION_45_2(v19);
      v22[4] = sub_1E3D82128;
      v22[5] = v19;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 1107296256;
      v22[2] = sub_1E378AEA4;
      v22[3] = &block_descriptor_105;
      v20 = _Block_copy(v22);

      sub_1E4203FE4();
      v22[0] = MEMORY[0x1E69E7CC0];
      sub_1E3274B88(&qword_1EE2882E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
      sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000, MEMORY[0x1E69E6328]);
      sub_1E42072E4();
      MEMORY[0x1E6911380](0, v17, v10, v20);
      _Block_release(v20);

      (*(v6 + 8))(v10, v4);
      (*(v13 + 8))(v17, v11);
    }
  }

  [v1 setNeedsStatusBarAppearanceUpdate];
  [v1 setNeedsUpdateOfHomeIndicatorAutoHidden];
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3D7FDBC(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ClipsTemplateViewController();
  return objc_msgSendSuper2(&v4, sel_vui_viewDidDisappear_, a1 & 1);
}

void sub_1E3D7FE48()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ClipsTemplateViewController();
  objc_msgSendSuper2(&v14, sel_vui_viewDidLayoutSubviews);
  OUTLINED_FUNCTION_26_3();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0x188))();
  v3 = [v2 vuiView];

  if (v3)
  {
    v4 = [v0 vuiView];
    if (v4)
    {
      v5 = v4;
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [v3 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E3D8000C()
{

  OUTLINED_FUNCTION_21_84((v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousSubtitle));
  OUTLINED_FUNCTION_21_84((v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousAlternateSubtitle));

  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_trailersContextData);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_trailersContextData + 8);

  return sub_1E395F8D8(v1, v2);
}

id sub_1E3D800FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClipsTemplateViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3D80224()
{
  OUTLINED_FUNCTION_31_1();
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v32 - v3;
  v5 = &v0[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_trailersContextData];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v6 = *(v5 + 1);
  if (v6)
  {
    v7 = *v5;

    OUTLINED_FUNCTION_32_65();
    sub_1E395F9C4(v8, v9, v10, v11);
    OUTLINED_FUNCTION_32_65();
    sub_1E395F8D8(v12, v13);
    if (*(v5 + 1) && (v15 = *(v5 + 2), v14 = *(v5 + 3), OUTLINED_FUNCTION_32_65(), sub_1E395F9C4(v16, v17, v18, v19), , OUTLINED_FUNCTION_32_65(), sub_1E395F8D8(v20, v21), v14))
    {
      v22 = sub_1E4206474();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v22);
      sub_1E4206434();
      v23 = v0;
      v24 = sub_1E4206424();
      v25 = swift_allocObject();
      v26 = MEMORY[0x1E69E85E0];
      v25[2] = v24;
      v25[3] = v26;
      v25[4] = v23;
      v25[5] = v7;
      v25[6] = v6;
      v25[7] = v15;
      v25[8] = v14;
      v25[9] = ObjectType;
      v27 = OUTLINED_FUNCTION_42_55();
      sub_1E37748D8(v27, v28, v29, v30, v31);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D803D0()
{
  OUTLINED_FUNCTION_24();
  v0[16] = v1;
  v0[17] = v10;
  v0[14] = v2;
  v0[15] = v3;
  v0[12] = v4;
  v0[13] = v5;
  v0[18] = sub_1E4206434();
  v0[19] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v7 = sub_1E42063B4();
  v0[20] = v7;
  v0[21] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E3D80474, v7, v6);
}

void sub_1E3D80474()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0[12] + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel);
  v2 = *(*v1 + 1040);

  v2(v3);
  OUTLINED_FUNCTION_50();

  if (v1)
  {
    if (!sub_1E32AE9B0(v1))
    {
      v7 = 0;
      goto LABEL_10;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
      v5 = v9;
    }

    else
    {
      OUTLINED_FUNCTION_34_0();
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = *(v1 + 32);
    }

    (*(*v5 + 872))(v6);
    OUTLINED_FUNCTION_50();

    if (v5)
    {
      v7 = sub_1E32AE9B0(v5);
LABEL_10:

      goto LABEL_11;
    }
  }

  v7 = 0;
LABEL_11:
  v0[22] = v7;
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_1E3D80614;

  sub_1E3D82DD4();
}

uint64_t sub_1E3D80614()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  *(v1 + 192) = v3;
  *(v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    v5 = *(v2 + 168);
    v6 = sub_1E3D80C00;
  }

  else
  {
    v6 = sub_1E3D80728;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E3D80728()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 208) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3D807AC, v2, v1);
}

uint64_t sub_1E3D807AC()
{
  v34 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 96);

  sub_1E388A9D0(v1, v2, *(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_document), *(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxMovieContentRating), *(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxMovieContentRating + 8), *(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxTVContentRating), *(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxTVContentRating + 8), v33);
  v4 = v33[0];
  if (v33[0])
  {
    v5 = v33[4];
    v7 = sub_1E3D7CFDC();
    if (!*(v6 + 8))
    {
      goto LABEL_10;
    }

    v8 = v6;
    OUTLINED_FUNCTION_26();
    v10 = *(v9 + 1160);

    v10(v11);
    OUTLINED_FUNCTION_16_5();

    if (v4)
    {
      sub_1E3277E60(0x656B6F547478656ELL, 0xE90000000000006ELL, v4, (v0 + 48));

      if (*(v0 + 72))
      {
        v12 = swift_dynamicCast();
        v13 = *(v0 + 80);
        v14 = *(v0 + 88);
        if (!v12)
        {
          v13 = 0;
          v14 = 0;
        }

        goto LABEL_9;
      }
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    sub_1E325F748(v0 + 48, &unk_1ECF296E0, &unk_1E4298030);
    v13 = 0;
    v14 = 0;
LABEL_9:
    *(v8 + 16) = v13;
    *(v8 + 24) = v14;

LABEL_10:
    v15 = (v7)(v0 + 16, 0);
    v16 = *(v0 + 96);
    v17 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v16) + 0x188))(v15);
    OUTLINED_FUNCTION_7_5();
    (*((*v17 & v18) + 0x580))(v5);

    v19 = *(v16 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController);
    if (!v19)
    {

LABEL_22:

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_26();
    v21 = *(v20 + 1040);
    v22 = v19;

    v21(v23);
    OUTLINED_FUNCTION_16_5();

    if (v4)
    {
      if (sub_1E32AE9B0(v4))
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_41_1();
          v28 = v31;
        }

        else
        {
          OUTLINED_FUNCTION_34_0();
          if (!v27)
          {
            __break(1u);
            return MEMORY[0x1EEE6DFA0](v24, v25, v26);
          }

          v28 = *(v4 + 32);
        }

        v30 = (*(*v28 + 872))(v29);

        if (v30)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_21:
    (*((*v17 & *v22) + 0xA88))(v30);

    goto LABEL_22;
  }

LABEL_23:

  v25 = *(v0 + 160);
  v26 = *(v0 + 168);
  v24 = sub_1E3D80BA4;

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1E3D80BA4()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3D80C00()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3D80C5C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44[-v10];
  v12 = *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_appendContextDataRef);
  if (v12 && (v13 = *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_contextDataRef)) != 0)
  {

    v14 = sub_1E324FBDC();
    (*(v5 + 16))(v11, v14, v3);
    v15 = sub_1E41FFC94();
    v16 = sub_1E42067D4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1E323F000, v15, v16, "ClipsTemplateViewController:: fetching next fragment", v17, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v11, v3);
    v18 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel;
    OUTLINED_FUNCTION_3_11();
    v20 = *(v19 + 1112);

    v22 = v20(v21);
    v24 = v23;

    v25 = [objc_opt_self() sharedInstance];
    v26 = [v25 appController];

    if (v26)
    {
      v27 = [v26 appContext];
    }

    else
    {
      v27 = 0;
    }

    type metadata accessor for CollectionServiceRequestContext(0);
    v32 = v27;
    v33 = sub_1E3E3D284(2, v22, v24, v27);
    (*(*v33 + 256))(v12);
    (*(*v33 + 232))(v13);
    v34 = *(v1 + v18);
    v35 = *(*v34 + 1040);

    v37 = v35(v36);

    if (v37)
    {
      sub_1E37D027C(v37);
      OUTLINED_FUNCTION_16_5();
    }

    else
    {
      v34 = 0;
    }

    (*(*v33 + 184))(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A2A8, qword_1E429D270);
    v38 = sub_1E37B2890();
    *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_serviceRequest) = v38;

    (*(*v38 + 352))(v39);
    OUTLINED_FUNCTION_16_5();

    if (v38)
    {
      OUTLINED_FUNCTION_4_0();
      v40 = swift_allocObject();
      OUTLINED_FUNCTION_45_2(v40);
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *(v41 + 24) = ObjectType;
      sub_1E41EC148(sub_1E3D826C0, v41);

      OUTLINED_FUNCTION_36_3();
      v43 = (*((*MEMORY[0x1E69E7D40] & v42) + 0x258))(v44);
      sub_1E42004C4();

      v43(v44, 0);
    }
  }

  else
  {
    v28 = sub_1E324FBDC();
    (*(v5 + 16))(v8, v28, v3);
    v29 = sub_1E41FFC94();
    v30 = sub_1E42067D4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1E323F000, v29, v30, "ClipsTemplateViewController:: skipping fetch because append context is missing", v31, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v8, v3);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D81210()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v10 = *v1;
  v9 = v1[1];
  v11 = *(v1 + 16);
  v12 = *(v1 + 17);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_55;
  }

  v14 = Strong;
  if (v12)
  {
    sub_1E324FBDC();
    v15 = OUTLINED_FUNCTION_33_61();
    v16(v15);
    v17 = OUTLINED_FUNCTION_36_9();
    sub_1E3781F8C(v17, v18, v19);
    v20 = sub_1E41FFC94();
    v21 = sub_1E42067F4();
    v22 = OUTLINED_FUNCTION_36_9();
    sub_1E37D172C(v22, v23, v24, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v65 = v21;
      v25 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v25 = 138412290;
      sub_1E3781F38(v63, v26, v27);
      swift_allocError();
      *v28 = v10;
      *(v28 + 8) = v9;
      *(v28 + 16) = v11;
      v29 = OUTLINED_FUNCTION_36_9();
      sub_1E3781F8C(v29, v30, v31);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v32;
      *v63 = v32;
      _os_log_impl(&dword_1E323F000, v20, v65, "ClipsTemplateViewController:: failed to fetch next fragment %@", v25, 0xCu);
      sub_1E325F748(v63, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v8, v2);
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v33 = *(v10 + 32);
  if (!v33)
  {

    goto LABEL_55;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_appendContextDataRef) = *(v10 + 24);

  v64 = MEMORY[0x1E69E7CC0];
  v66 = MEMORY[0x1E69E7CC0];
  v34 = sub_1E32AE9B0(v33);
  for (i = 0; v34 != i; ++i)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1E6911E60](i, v33);
    }

    else
    {
      if (i >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v36 = *(v33 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      return;
    }

    v37 = *(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxMovieContentRating + 8);
    if (v37 == 1 && (*(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxTVContentRating + 8) & 1) != 0 || (sub_1E388A10C(v36, *(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxMovieContentRating), v37, *(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxTVContentRating), (v37 ^ 1) & *(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_maxTVContentRating + 8)) & 1) == 0)
    {
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    else
    {
    }
  }

  v38 = v66;
  v39 = MEMORY[0x1E69E7CC0];
  v67 = MEMORY[0x1E69E7CC0];
  v40 = sub_1E32AE9B0(v38);
  v41 = 0;
  while (v40 != v41)
  {
    if ((v38 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x1E6911E60](v41, v38);
      v42 = v43;
    }

    else
    {
      if (v41 >= *(v38 + 16))
      {
        goto LABEL_59;
      }

      v42 = *(v38 + 8 * v41 + 32);
    }

    if (__OFADD__(v41, 1))
    {
      goto LABEL_58;
    }

    v44 = (*(*v42 + 488))(v43);
    if (v44)
    {
      if (!*(v44 + 16) || (sub_1E3740AE8(227, v45, v46), (v47 & 1) == 0))
      {

        goto LABEL_30;
      }

      MEMORY[0x1E6910BF0](v48);
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v39 = v67;
      ++v41;
    }

    else
    {
LABEL_30:

      ++v41;
    }
  }

  v68 = MEMORY[0x1E69E7CC0];
  v49 = sub_1E32AE9B0(v39);
  v50 = 0;
  while (v49 != v50)
  {
    if ((v39 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x1E6911E60](v50, v39);
      v51 = v52;
    }

    else
    {
      if (v50 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v51 = *(v39 + 8 * v50 + 32);
    }

    if (__OFADD__(v50, 1))
    {
      goto LABEL_60;
    }

    v53 = (*(*v51 + 488))(v52);
    if (v53)
    {
      if (!*(v53 + 16) || (sub_1E3740AE8(193, v54, v55), (v56 & 1) == 0))
      {

        goto LABEL_45;
      }

      MEMORY[0x1E6910BF0](v57);
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v64 = v68;
      ++v50;
    }

    else
    {
LABEL_45:

      ++v50;
    }
  }

  v58 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v14) + 0x188))();
  OUTLINED_FUNCTION_7_5();
  (*((*v58 & v59) + 0x580))(v39);

  v60 = *(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController);
  if (v60)
  {
    v61 = *((*v58 & *v60) + 0xA88);
    v62 = v60;
    v61(v64);
  }

LABEL_54:
  *(v14 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_serviceRequest) = 0;

LABEL_55:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D81908()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_clipType) == 1)
  {

LABEL_4:

    sub_1E3D80224();
    return;
  }

  v1 = OUTLINED_FUNCTION_14_124();

  if (v1)
  {
    goto LABEL_4;
  }

  sub_1E3D80C5C();
}

void sub_1E3D81984(uint64_t a1)
{
  v2 = v1;
  v3 = v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousAlternateSubtitle;
  if (*(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousAlternateSubtitle + 24) != 254)
  {
    v4 = *v3;
    v5 = OUTLINED_FUNCTION_11_127();
    sub_1E3C270F0(v5, v6, v7);
    sub_1E3D81ED0(v4, 1);
    if (v8)
    {
      v9 = OUTLINED_FUNCTION_11_127();
      v12 = sub_1E3C2877C(v9, v10, v11);
      v14 = v13;
      v16 = v15;
      OUTLINED_FUNCTION_9_126();

      v17 = v12;
      v2 = v1;
      sub_1E37AE010(v17, v14, v16);
    }

    else
    {
      OUTLINED_FUNCTION_9_126();
    }
  }

  v18 = v2 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousSubtitle;
  if (*(v2 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_previousSubtitle + 24) != 254)
  {
    v19 = *v18;
    v20 = OUTLINED_FUNCTION_11_127();
    sub_1E3C270F0(v20, v21, v22);
    sub_1E3D81ED0(v19, 0);
    if (v23)
    {
      v24 = OUTLINED_FUNCTION_11_127();
      v27 = sub_1E3C2877C(v24, v25, v26);
      v29 = v28;
      v31 = v30;
      OUTLINED_FUNCTION_9_126();

      sub_1E37AE010(v27, v29, v31);
    }

    else
    {
      OUTLINED_FUNCTION_9_126();
    }
  }

  sub_1E3D81ED0(a1, 1);
  if (v32)
  {

    v33 = sub_1E3D7CD1C();
    v35 = sub_1E3C2877C(v33, v34, 0);
    v37 = v36;
    v39 = v38;
  }

  else
  {
    v35 = 0;
    v37 = 0;
    v39 = -1;
  }

  v40 = *v3;
  v41 = *(v3 + 8);
  v42 = *(v3 + 16);
  *v3 = a1;
  *(v3 + 8) = v35;
  *(v3 + 16) = v37;
  v43 = *(v3 + 24);
  *(v3 + 24) = v39;
  v44 = OUTLINED_FUNCTION_1_22();
  sub_1E3C270F0(v44, v45, v46);
  sub_1E3D82108(v40, v41, v42, v43);
  sub_1E3D81ED0(a1, 0);
  if (v47)
  {
    v48 = sub_1E3D7CD1C();
    v50 = sub_1E3C2877C(v48, v49, 0);
    v52 = v51;
    v54 = v53;
    v55 = OUTLINED_FUNCTION_1_22();
    sub_1E37AE010(v55, v56, v57);
  }

  else
  {
    v58 = OUTLINED_FUNCTION_1_22();
    sub_1E37AE010(v58, v59, v60);
    v50 = 0;
    v52 = 0;
    v54 = -1;
  }

  v61 = *v18;
  v62 = *(v18 + 8);
  v63 = *(v18 + 16);
  *v18 = a1;
  *(v18 + 8) = v50;
  *(v18 + 16) = v52;
  v64 = *(v18 + 24);
  *(v18 + 24) = v54;

  sub_1E3D82108(v61, v62, v63, v64);
}

void sub_1E3D81C00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *(v1 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController);
  if (!v11)
  {
    return;
  }

  v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x1B8);
  v13 = v11;
  v23 = v12();

  v14 = *(v2 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel);
  v15 = *(*v14 + 1040);

  v15(v16);
  OUTLINED_FUNCTION_16_5();

  if (!v14)
  {
    goto LABEL_12;
  }

  if (sub_1E32AE9B0(v14))
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
      v18 = v22;
    }

    else
    {
      OUTLINED_FUNCTION_34_0();
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = *(v14 + 32);
    }

    OUTLINED_FUNCTION_26();
    (*(v19 + 872))();
    OUTLINED_FUNCTION_16_5();

    if (v18)
    {
      v20 = sub_1E32AE9B0(v18);

      if (v20 > a1 && [v23 numberOfSections] >= 1)
      {
        MEMORY[0x1E6909190](a1, 0);
        v21 = sub_1E41FE7E4();
        (*(v6 + 8))(v10, v4);
        [v23 scrollToItemAtIndexPath:v21 atScrollPosition:8 animated:0];

        return;
      }
    }

LABEL_12:

    return;
  }
}

void sub_1E3D81ED0(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_collectionViewModel);
  v6 = *(*v5 + 1040);

  v6(v7);
  OUTLINED_FUNCTION_31_4();

  if (v5)
  {
    if (!sub_1E32AE9B0(v5))
    {

      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
    }

    else
    {
      OUTLINED_FUNCTION_34_0();
      if (!v8)
      {
        __break(1u);
        return;
      }
    }

    OUTLINED_FUNCTION_26();
    v10 = (*(v9 + 872))();

    if (v10)
    {
      v22[1] = v10;
      v20 = a1;
      v21 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      OUTLINED_FUNCTION_46();
      sub_1E32752B0(v11, v12, &qword_1E42996A0, v13);
      sub_1E38D2054(&v20, v22);

      if (v22[0])
      {
        v14 = *(*v22[0] + 488);

        v16 = v14(v15);

        if (!v16 || ((a2 & 1) == 0 ? (v18 = 15) : (v18 = 16), (v19 = sub_1E373E010(v18, v16, v17), , , v19) && *v19 != _TtC8VideosUI13TextViewModel))
        {
        }
      }
    }
  }
}

void sub_1E3D82108(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a4 != 254)
  {
    sub_1E37AE010(a2, a3, a4);
  }
}

void sub_1E3D82128(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_64();
    v5 = (*(v4 + 392))();

    OUTLINED_FUNCTION_36_3();
    (*((*v3 & v6) + 0x2C0))(1);
  }
}

unint64_t sub_1E3D821F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38270;
  if (!qword_1ECF38270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38270);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClipsPlaylistType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1E3D82334(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_opt_self() sharedInstance];
    [v3 setBackgroundMediaControllerForPIP_];

    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1E3D823C0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_64();
    v5 += 49;
    v6 = *v5;
    v8 = v7;
    (*v5)();
    OUTLINED_FUNCTION_7_5();
    v10 = (*((*v4 & v9) + 0x280))();

    if (v10 != a1)
    {
      v6();
      OUTLINED_FUNCTION_7_5();
      (*((*v4 & v11) + 0x288))(a1);

      sub_1E3D81984(a1);
      if (*&v3[OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController])
      {
        OUTLINED_FUNCTION_10_118();
        v13 = *(v12 + 440);
        v15 = v14;
        v16 = v13();

        [v16 reloadData];
      }

      sub_1E3D81C00(a1);
    }
  }
}

void sub_1E3D82568(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E3D81908();
  }
}

uint64_t objectdestroyTm_39(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();

  a1(*(v2 + 64));

  return swift_deallocObject();
}

uint64_t sub_1E3D82614()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E3286A7C;
  OUTLINED_FUNCTION_23_78();

  return sub_1E3D803D0();
}

void sub_1E3D826C8(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_64();
    v7 = v6;
    (*(v5 + 392))();
    OUTLINED_FUNCTION_7_5();
    v9 = (*((*v4 & v8) + 0x200))();

    sub_1E32AE9B0(v9);
    OUTLINED_FUNCTION_31_4();

    if (__OFSUB__(v7, 2))
    {
      __break(1u);
    }

    else
    {
      if (v7 - 2 <= v1 && !*(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_serviceRequest))
      {
        sub_1E3D81908();
      }

      v10 = OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController;
      if (*(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_tabViewController))
      {
        OUTLINED_FUNCTION_10_118();
        v12 = *(v11 + 2648);
        v14 = v13;
        v12(v1);
      }

      sub_1E3D81984(v1);
      if (*(v3 + v10))
      {
        OUTLINED_FUNCTION_10_118();
        v16 = *(v15 + 440);
        v18 = v17;
        v19 = v16();

        [v19 reloadData];
      }

      sub_1E3D81C00(v1);
      v20 = *((*v4 & *v3) + 0x188);
      v20();
      OUTLINED_FUNCTION_7_5();
      (*((*v4 & v21) + 0x200))();

      v20();
      OUTLINED_FUNCTION_7_5();
      v23 = (*((*v4 & v22) + 0x280))();

      v47 = v23;
      v48 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      OUTLINED_FUNCTION_46();
      sub_1E32752B0(v24, v25, &qword_1E42996A0, v26);
      sub_1E38D2054(&v47, &v49);
      v27 = v49;

      if (!v27)
      {
        goto LABEL_20;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      v29 = sub_1E39C2E98(12, v28, v28);
      if (!v29)
      {
        goto LABEL_19;
      }

      v30 = v29;
      v31 = objc_opt_self();
      v32 = sub_1E388A824(v30);

      v33 = sub_1E3D82BE4(v32, 0, v31);
      if (!v33)
      {
        goto LABEL_19;
      }

      v1 = v33;
      if (!sub_1E32AE9B0(v33))
      {

        goto LABEL_20;
      }

      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v34 = *(v1 + 32);
LABEL_17:
        v35 = v34;

        sub_1E3C823F8(v35);
        if (v36)
        {
          v37 = objc_opt_self();
          v38 = sub_1E4205ED4();

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4297BE0;
          sub_1E4205F14();
          v40 = @"PlayerPlaylist";
          v41 = MEMORY[0x1E69E6158];
          sub_1E4207414();
          v43 = *(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_pageContext);
          v42 = *(v3 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_pageContext + 8);
          *(inited + 96) = v41;
          *(inited + 72) = v43;
          *(inited + 80) = v42;

          v44 = sub_1E4205CB4();
          v45 = sub_1E38A7618(v38, v40, v44, v37);

          v46 = [objc_opt_self() sharedInstance];
          [v46 recordPage_];

LABEL_20:
          return;
        }

LABEL_19:

        goto LABEL_20;
      }
    }

    v34 = MEMORY[0x1E6911E60](0, v1);
    goto LABEL_17;
  }
}

uint64_t sub_1E3D82BE4(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
  v5 = sub_1E42062A4();

  v6 = [a3 videosPlayablesFromDictionaries:v5 andMetadataDictionary:a2];

  if (!v6)
  {
    return 0;
  }

  sub_1E3280A90(0, &qword_1EE23B1C0, off_1E8728690);
  v7 = sub_1E42062B4();

  return v7;
}

void sub_1E3D82CF8(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    OUTLINED_FUNCTION_64();
    v4 = (*(v3 + 392))();

    v5 = [v4 vuiView];
    if (v5)
    {
      [v5 setVuiAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E3D82DD4()
{
  OUTLINED_FUNCTION_24();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[7] = sub_1E4206434();
  v0[8] = sub_1E4206424();
  v6 = sub_1E42063B4();
  v0[9] = v6;
  v0[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E3D82E70, v6, v5);
}

uint64_t sub_1E3D82E70()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 appController];

  if (v2 && (v3 = [v2 appContext], *(v0 + 88) = v3, v2, v3))
  {
    v4 = *(v0 + 48);
    v5 = *(v0 + 40);
    v19 = *(v0 + 24);
    v6 = sub_1E4206424();
    *(v0 + 96) = v6;
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *(v7 + 16) = v3;
    *(v7 + 24) = v19;
    *(v7 + 40) = v5;
    *(v7 + 48) = v4;
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    *v8 = v0;
    v8[1] = sub_1E3D83078;
    v10 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v0 + 16, v6, v10, 0xD00000000000002ELL, 0x80000001E42819B0, sub_1E3D834C8, v7, v9);
  }

  else
  {

    v14 = sub_1E3D83280(v11, v12, v13);
    v15 = OUTLINED_FUNCTION_206(&unk_1F5D840E0, v14);
    OUTLINED_FUNCTION_8_137(v15, v16);
    OUTLINED_FUNCTION_54();

    return v17();
  }
}

uint64_t sub_1E3D83078()
{
  OUTLINED_FUNCTION_24();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[15] = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1E3D83200;
  }

  else
  {

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1E3D83190;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E3D83190()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E3D83200()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_54();

  return v2();
}

unint64_t sub_1E3D83280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38278;
  if (!qword_1ECF38278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38278);
  }

  return result;
}

void sub_1E3D832D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298, &qword_1E42D02F0);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  (*(v12 + 16))(&v25 - v17, a1, v10, v16);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v12 + 32))(v21 + v19, v18, v10);
  v22 = (v21 + v20);
  *v22 = a3;
  v22[1] = a4;
  v23 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v25;
  v23[1] = a6;
  aBlock[4] = sub_1E3D84F9C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E377674C;
  aBlock[3] = &block_descriptor_106;
  v24 = _Block_copy(aBlock);

  [v26 evaluate_];
  _Block_release(v24);
}

void sub_1E3D834D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298, &qword_1E42D02F0);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v17 = sub_1E4205ED4();
  v18 = [a1 objectForKeyedSubscript_];

  if (v18)
  {
    v43 = a5;
    v48 = v18;
    v45 = *(v13 + 16);
    v46 = a3;
    v45(v16, a2, v11);
    v22 = *(v13 + 80);
    v47 = a4;
    v23 = (v22 + 16) & ~v22;
    v24 = swift_allocObject();
    v25 = *(v13 + 32);
    v25(v24 + v23, v16, v11);
    v52 = sub_1E3D85058;
    v53 = v24;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v51 = sub_1E37C7850;
    *(&v51 + 1) = &block_descriptor_21;
    v44 = _Block_copy(&aBlock);

    v45(v16, a2, v11);
    v26 = swift_allocObject();
    v27 = v26 + v23;
    v28 = v47;
    v29 = v49;
    v25(v27, v16, v11);
    v52 = sub_1E3D85260;
    v53 = v26;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v30 = v44;
    *&v51 = sub_1E37C7850;
    *(&v51 + 1) = &block_descriptor_27_1;
    v31 = _Block_copy(&aBlock);

    _Block_copy(v30);
    _Block_copy(v31);
    v32 = sub_1E4205ED4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1E4298AD0;
    v34 = MEMORY[0x1E69E6158];
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 32) = v46;
    *(v33 + 40) = v28;
    if (v29)
    {
      *(&v51 + 1) = v34;
      *&aBlock = v43;
      *(&aBlock + 1) = v29;
      sub_1E329504C(&aBlock, (v33 + 64));
    }

    else
    {
      aBlock = 0u;
      v51 = 0u;
      v38 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

      v39 = [v38 init];
      *(v33 + 88) = sub_1E3D852DC();
      *(v33 + 64) = v39;
      if (*(&v51 + 1))
      {
        sub_1E325F7A8(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
      }
    }

    *(v33 + 120) = swift_getObjectType();
    *(v33 + 96) = v30;
    *(v33 + 152) = swift_getObjectType();
    *(v33 + 128) = v31;
    _Block_copy(v30);
    _Block_copy(v31);

    v40 = v48;
    v41 = sub_1E3A49FB0(v32, v33, v48);

    _Block_release(v31);
    _Block_release(v30);
    _Block_release(v31);
    _Block_release(v30);
  }

  else
  {
    v35 = sub_1E3D83280(v19, v20, v21);
    v36 = OUTLINED_FUNCTION_206(&unk_1F5D840E0, v35);
    *v37 = 2;
    *&aBlock = v36;
    sub_1E42063C4();
  }
}

uint64_t sub_1E3D83948(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E324FBDC();
  (*(v4 + 16))(v7, v8, v2);
  swift_unknownObjectRetain();
  v9 = sub_1E41FFC94();
  v10 = sub_1E42067F4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = a1;
    v24 = v12;
    *v11 = 136315138;
    swift_unknownObjectRetain();
    v13 = sub_1E4205F84();
    v15 = sub_1E3270FC8(v13, v14, &v24);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1E323F000, v9, v10, "ClipsTemplateViewController:: failed to refresh view model %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E69143B0](v12, -1, -1);
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  v16 = (*(v4 + 8))(v7, v2);
  v19 = sub_1E3D83280(v16, v17, v18);
  v20 = OUTLINED_FUNCTION_206(&unk_1F5D840E0, v19);
  *v21 = 4;
  v24 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298, &qword_1E42D02F0);
  return sub_1E42063C4();
}

uint64_t sub_1E3D83B68()
{
  OUTLINED_FUNCTION_27_2();
  *(v1 + 545) = v13;
  *(v1 + 376) = v2;
  *(v1 + 384) = v0;
  *(v1 + 544) = v3;
  *(v1 + 360) = v4;
  *(v1 + 368) = v5;
  *(v1 + 344) = v6;
  *(v1 + 352) = v7;
  *(v1 + 328) = v8;
  *(v1 + 336) = v9;
  *(v1 + 392) = swift_getObjectType();
  *(v1 + 400) = sub_1E4206434();
  *(v1 + 408) = sub_1E4206424();
  v10 = swift_task_alloc();
  *(v1 + 416) = v10;
  *v10 = v1;
  v10[1] = sub_1E3D83C54;

  return sub_1E3D82DD4();
}

uint64_t sub_1E3D83C54(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *v5 = *v2;
  v4[53] = v1;

  if (v1)
  {
    v6 = sub_1E42063B4();
    v8 = v7;
    v9 = sub_1E3D84B64;
    v10 = v6;
    v11 = v8;
  }

  else
  {
    v4[54] = a1;
    v12 = sub_1E42063B4();
    v11 = v13;
    v4[55] = v12;
    v4[56] = v13;
    v9 = sub_1E3D83DDC;
    v10 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3D83DDC()
{
  sub_1E388A9D0(*(v0 + 432), *(v0 + 352), *(v0 + 360), *(v0 + 368), *(v0 + 544) & 1, *(v0 + 376), *(v0 + 545) & 1, (v0 + 64));

  v1 = *(v0 + 64);
  *(v0 + 456) = v1;
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  *(v0 + 472) = *(v0 + 80);
  *(v0 + 480) = v2;
  if (!v1)
  {

    v13 = sub_1E3D84C60(v10, v11, v12);
    OUTLINED_FUNCTION_206(&unk_1F5D84050, v13);
    *v14 = 0;
    swift_willThrow();
LABEL_23:
    OUTLINED_FUNCTION_54();
    goto LABEL_24;
  }

  *(v0 + 304) = v3;
  OUTLINED_FUNCTION_8();
  v5 = *(v4 + 1160);

  v6 = sub_1E3D84CB4(v0 + 64, v0 + 112);
  v7 = v5(v6);
  if (!v7)
  {
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    goto LABEL_8;
  }

  v8 = v7;
  v9 = OUTLINED_FUNCTION_10_119();
  sub_1E3277E60(v9, 0xE90000000000006ELL, v8, (v0 + 208));

  if (!*(v0 + 232))
  {
LABEL_8:
    sub_1E325F7A8(v0 + 208, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    *(v0 + 272) = 0;
    *(v0 + 280) = 0;
  }

  OUTLINED_FUNCTION_8();
  (*(v15 + 1328))(0);
  OUTLINED_FUNCTION_8();
  v16 += 130;
  v17 = *v16;
  *(v0 + 488) = *v16;
  *(v0 + 496) = v16 & 0xFFFFFFFFFFFFLL | 0x53CC000000000000;
  v18 = v17();

  if (!v18)
  {

LABEL_21:

    v42 = sub_1E3D84C60(v39, v40, v41);
    v43 = OUTLINED_FUNCTION_206(&unk_1F5D84050, v42);
    OUTLINED_FUNCTION_8_137(v43, v44);
    sub_1E325F7A8(v0 + 64, &qword_1ECF38268, &unk_1E42CF908);
LABEL_22:

    goto LABEL_23;
  }

  result = sub_1E32AE9B0(v18);
  if (!result)
  {

    goto LABEL_21;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1E6911E60](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  *(v0 + 504) = v20;

  if (!*(v0 + 280) || (v21 = *(v0 + 480), OUTLINED_FUNCTION_8(), *(v0 + 320) = (*(v22 + 872))(), v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990), sub_1E3798394(), v24 = sub_1E41491E0(v23), , v21 < v24))
  {
    v25 = *(v0 + 480);

    OUTLINED_FUNCTION_8();
    *(v0 + 312) = (*(v26 + 872))();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990);
    sub_1E3798394();
    v28 = sub_1E41491E0(v27);

    if (v25 < v28)
    {
      v30 = *(v0 + 472);
      v29 = *(v0 + 480);
      v32 = *(v0 + 456);
      v31 = *(v0 + 464);
      v33 = *(v0 + 384);
      v34 = *(v0 + 328);
      sub_1E325F7A8(v0 + 64, &qword_1ECF38268, &unk_1E42CF908);

      v35 = *(v33 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_clipType);
      v36 = *(v0 + 304);
      v37 = *(v0 + 272);
      *v34 = v32;
      *(v34 + 8) = v31;
      *(v34 + 16) = v30;
      *(v34 + 24) = v35;
      *(v34 + 32) = v29;
      *(v34 + 40) = v36;
      *(v34 + 48) = v37;
      OUTLINED_FUNCTION_54();
LABEL_24:

      return v38();
    }

    v48 = sub_1E3D84C60(v45, v46, v47);
    OUTLINED_FUNCTION_206(&unk_1F5D84050, v48);
    *v49 = 2;
    swift_willThrow();
    sub_1E325F7A8(v0 + 64, &qword_1ECF38268, &unk_1E42CF908);

    goto LABEL_22;
  }

  *(v0 + 512) = *(v0 + 280);

  v50 = swift_task_alloc();
  *(v0 + 520) = v50;
  *v50 = v0;
  OUTLINED_FUNCTION_0_231(v50);

  return sub_1E3D82DD4();
}

uint64_t sub_1E3D84304()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  v4[66] = v0;

  if (v0)
  {

    v6 = v4[55];
    v7 = v4[56];
    v8 = sub_1E3D84BC0;
  }

  else
  {
    v4[67] = v3;
    v6 = v4[55];
    v7 = v4[56];
    v8 = sub_1E3D84444;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1E3D84444()
{
  v1 = v0 + 16;
  sub_1E388A9D0(*(v0 + 536), *(v0 + 480), *(v0 + 360), *(v0 + 368), *(v0 + 544) & 1, *(v0 + 376), *(v0 + 545) & 1, (v0 + 16));

  v2 = *(v0 + 16);
  if (!v2)
  {

LABEL_20:

    v17 = sub_1E3D84C60(v14, v15, v16);
    v18 = OUTLINED_FUNCTION_206(&unk_1F5D84050, v17);
    OUTLINED_FUNCTION_8_137(v18, v19);
    sub_1E325F7A8(v0 + 64, &qword_1ECF38268, &unk_1E42CF908);
    goto LABEL_21;
  }

  v3 = *(*v2 + 1040);
  v4 = *v2 + 1040;

  v5 = sub_1E3D84CB4(v0 + 16, v0 + 160);
  v6 = v3(v5);

  if (!v6)
  {
LABEL_17:

    goto LABEL_20;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!sub_1E4207384())
  {
    goto LABEL_19;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1E6911E60](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_27:
      result = sub_1E4207384();
      if (result)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }

    v8 = *(v6 + 32);
  }

  v7 = (*(*v8 + 872))(v9);

  if (!v7)
  {
    goto LABEL_17;
  }

  v11 = (*(v0 + 488))(v10);
  if (!v11)
  {
LABEL_29:

    goto LABEL_30;
  }

  v6 = v11;
  v4 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    goto LABEL_27;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_28:

    goto LABEL_29;
  }

LABEL_12:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1E6911E60](0, v6);
  }

  else
  {
    if (!*(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v13 = *(v6 + 32);
  }

  (*(*v13 + 1016))(v7);

LABEL_30:

  sub_1E379738C(v21);
  v22 = *(*v2 + 1160);

  v24 = v22(v23);

  if (!v24)
  {
    sub_1E325F7A8(v0 + 16, &qword_1ECF38268, &unk_1E42CF908);

    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
LABEL_39:
    sub_1E325F7A8(v0 + 240, &unk_1ECF296E0, &unk_1E4298030);
    v29 = 0;
    v30 = 0;
    goto LABEL_40;
  }

  if (*(v24 + 16) && (v25 = OUTLINED_FUNCTION_10_119(), v26 = sub_1E327D33C(v25, 0xE90000000000006ELL), (v27 & 1) != 0))
  {
    sub_1E328438C(*(v24 + 56) + 32 * v26, v0 + 240);
  }

  else
  {
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
  }

  sub_1E325F7A8(v0 + 16, &qword_1ECF38268, &unk_1E42CF908);
  if (!*(v0 + 264))
  {
    goto LABEL_39;
  }

  v28 = swift_dynamicCast();
  v29 = *(v0 + 288);
  v30 = *(v0 + 296);
  if (!v28)
  {
    v29 = 0;
    v30 = 0;
  }

LABEL_40:
  *(v0 + 272) = v29;
  *(v0 + 280) = v30;

  if (!*(v0 + 280) || (v31 = *(v0 + 480), OUTLINED_FUNCTION_8(), *(v0 + 320) = (*(v32 + 872))(), v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990), sub_1E3798394(), v34 = sub_1E41491E0(v33), , v31 < v34))
  {
    v35 = *(v0 + 480);

    OUTLINED_FUNCTION_8();
    *(v0 + 312) = (*(v36 + 872))();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990);
    sub_1E3798394();
    v38 = sub_1E41491E0(v37);

    if (v35 < v38)
    {
      v40 = *(v0 + 472);
      v39 = *(v0 + 480);
      v42 = *(v0 + 456);
      v41 = *(v0 + 464);
      v43 = *(v0 + 384);
      v44 = *(v0 + 328);
      sub_1E325F7A8(v0 + 64, &qword_1ECF38268, &unk_1E42CF908);

      v45 = *(v43 + OBJC_IVAR____TtC8VideosUI27ClipsTemplateViewController_clipType);
      v46 = *(v0 + 304);
      v47 = *(v0 + 272);
      *v44 = v42;
      *(v44 + 8) = v41;
      *(v44 + 16) = v40;
      *(v44 + 24) = v45;
      *(v44 + 32) = v39;
      *(v44 + 40) = v46;
      *(v44 + 48) = v47;
      OUTLINED_FUNCTION_54();
      goto LABEL_22;
    }

    v51 = sub_1E3D84C60(v48, v49, v50);
    OUTLINED_FUNCTION_206(&unk_1F5D84050, v51);
    *v52 = 2;
    swift_willThrow();
    v1 = v0 + 64;
LABEL_21:
    sub_1E325F7A8(v1, &qword_1ECF38268, &unk_1E42CF908);

    OUTLINED_FUNCTION_54();
LABEL_22:

    return v20();
  }

  *(v0 + 512) = *(v0 + 280);

  v53 = swift_task_alloc();
  *(v0 + 520) = v53;
  *v53 = v0;
  OUTLINED_FUNCTION_0_231(v53);

  return sub_1E3D82DD4();
}

uint64_t sub_1E3D84B64()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3D84BC0()
{
  OUTLINED_FUNCTION_27_2();
  sub_1E325F7A8(v0 + 64, &qword_1ECF38268, &unk_1E42CF908);

  OUTLINED_FUNCTION_54();

  return v1();
}

unint64_t sub_1E3D84C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38280;
  if (!qword_1ECF38280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38280);
  }

  return result;
}

uint64_t sub_1E3D84CB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38268, &unk_1E42CF908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3D84D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38288;
  if (!qword_1ECF38288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38288);
  }

  return result;
}

unint64_t sub_1E3D84D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38290;
  if (!qword_1ECF38290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38290);
  }

  return result;
}

_BYTE *sub_1E3D84DD4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3D84EAC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void sub_1E3D84F9C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298, &qword_1E42D02F0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);

  sub_1E3D834D8(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_1E3D85058(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298, &qword_1E42D02F0);
  *&v13 = a1;
  swift_unknownObjectRetain();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v3 = OUTLINED_FUNCTION_9_127(v2);
  if (v3)
  {
    sub_1E384EE08(117);
    sub_1E3277E60(v6, v7, v15, &v13);

    if (v14)
    {
      v3 = OUTLINED_FUNCTION_9_127(v8);
      if (v3)
      {
        *&v13 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298, &qword_1E42D02F0);
        return sub_1E42063D4();
      }
    }

    else
    {
      v3 = sub_1E325F7A8(&v13, &unk_1ECF296E0, &unk_1E4298030);
    }
  }

  v10 = sub_1E3D83280(v3, v4, v5);
  v11 = OUTLINED_FUNCTION_206(&unk_1F5D840E0, v10);
  *v12 = 3;
  *&v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298, &qword_1E42D02F0);
  return sub_1E42063C4();
}

uint64_t objectdestroy_17Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298, &qword_1E42D02F0);
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E3D85260(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298, &qword_1E42D02F0);

  return sub_1E3D83948(a1);
}

unint64_t sub_1E3D852DC()
{
  result = qword_1ECF382A0;
  if (!qword_1ECF382A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF382A0);
  }

  return result;
}

void *sub_1E3D85330(uint64_t a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_60;
  }

  v2 = a2;
  OUTLINED_FUNCTION_26_0();
  v5 = *(v4 + 392);
  v6 = v2;
  v7 = v5();
  if (!v7)
  {
    goto LABEL_60;
  }

  if (*v7 != _TtC8VideosUI21CanonicalFooterLayout)
  {

    goto LABEL_60;
  }

  v8 = (*(*a1 + 464))();
  if (!v8)
  {
    goto LABEL_55;
  }

  v69 = v8;
  v9 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x88);

  v9(v10);
  v11 = v69;
  v12 = v6;
  [v12 vuiBounds];
  CGRectGetWidth(v75);
  v73 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_185();
  v14 = (*(v13 + 152))();
  v15 = sub_1E32AE9B0(v69);
  if (!v15)
  {

LABEL_47:
    OUTLINED_FUNCTION_4_185();
    (*(v56 + 160))();
    LOBYTE(v72) = 13;
    (*(*a1 + 776))(v74, &v72, &unk_1F5D5DAC8, &off_1F5D5C998);
    if (v74[3])
    {
      if (swift_dynamicCast())
      {
        v57 = sub_1E3F36DEC();
        if (v57 != 8 && (sub_1E3881E80(v57, 2, v58) & 1) != 0)
        {
          v59 = [v12 vuiContentView];

          v60 = *sub_1E3E5FACC();
          [v59 setVuiBackgroundColor_];

LABEL_54:
LABEL_55:

          return v2;
        }
      }
    }

    else
    {
      sub_1E325F748(v74, &unk_1ECF296E0, &unk_1E4298030);
    }

    v60 = [v12 vuiContentView];

    [v60 setVuiBackgroundColor_];
    goto LABEL_54;
  }

  v68 = v14;
  v71 = v15;
  if (v15 < 1)
  {
    goto LABEL_59;
  }

  v62 = a1;
  v16 = 0;
  v70 = 0;
  v17 = 0;
  v67 = v14 & 0xFFFFFFFFFFFFFF8;
  v63 = v14 + 32;
  v64 = v14 & 0xC000000000000001;
  v66 = v2;
  v65 = v12;
  v18 = v15;
  while (1)
  {
    if ((v69 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1E6911E60](v17, v11);
    }

    else
    {
      v19 = *(v11 + 8 * v17 + 32);
    }

    v20 = v19[49];
    if (v20 != 109)
    {
      if (v20 == 108)
      {
        type metadata accessor for CanonicalFooterFactory();
        OUTLINED_FUNCTION_4_185();
        v22 = (*(v21 + 176))();
        v23 = (*(*v19 + 488))();
        if (v23)
        {
          v24 = v23;
          if (v22)
          {
            v25 = v22;
            v26 = v22;
          }

          else
          {
            type metadata accessor for CanonicalFooterAiringView();
            v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            v25 = 0;
          }

          v34 = v25;
          sub_1E3DE9924();
          OUTLINED_FUNCTION_3_177();
          (*(v35 + 112))();
          v37 = sub_1E373E010(17, v24, v36);
          if (v37)
          {
            if (*v37 == _TtC8VideosUI13TextViewModel)
            {
              type metadata accessor for UIFactory();
              OUTLINED_FUNCTION_3_177();
              v39 = *(v38 + 128);

              v41 = v39(v40);
              sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
              v42 = OUTLINED_FUNCTION_5_165();
              v45 = sub_1E393D92C(v42, v41, v43, 0, v44);

              sub_1E325F748(v74, &qword_1ECF296C0, &unk_1E429BBE0);
              OUTLINED_FUNCTION_3_177();
              (*(v46 + 136))(v45);
            }
          }

          type metadata accessor for UIFactory();
          sub_1E373E010(39, v24, v47);

          OUTLINED_FUNCTION_3_177();
          v49 = (*(v48 + 152))();
          sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
          v50 = OUTLINED_FUNCTION_5_165();
          v53 = sub_1E393D92C(v50, v49, v51, 0, v52);

          sub_1E325F748(v74, &qword_1ECF296C0, &unk_1E429BBE0);
          OUTLINED_FUNCTION_3_177();
          (*(v54 + 160))(v53);
          v12 = v65;
          v2 = v66;
        }

        else
        {
          v26 = 0;
        }

        OUTLINED_FUNCTION_4_185();
        (*(v55 + 184))(v26);

        v11 = v69;
LABEL_41:
        v18 = v71;
        goto LABEL_42;
      }

      goto LABEL_42;
    }

    if (v68 && (v68 >> 62 ? (v27 = sub_1E4207384()) : (v27 = *(v67 + 16)), v16 = v70, v70 < v27))
    {
      if (v64)
      {

        v28 = MEMORY[0x1E6911E60](v70, v68);
      }

      else
      {
        if (v70 < 0)
        {
          goto LABEL_57;
        }

        if (v70 >= *(v67 + 16))
        {
          goto LABEL_58;
        }

        v28 = *(v63 + 8 * v70);
      }
    }

    else
    {
      v28 = 0;
    }

    if (__OFADD__(v16++, 1))
    {
      break;
    }

    type metadata accessor for CanonicalFooterFactory();
    v30 = sub_1E3DE998C();
    sub_1E3D85BF4(v19, v30, v28);
    v32 = v31;

    if (v32)
    {
      v33 = v32;
      MEMORY[0x1E6910BF0]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();

      v70 = v16;
      goto LABEL_41;
    }

    v70 = v16;
LABEL_42:
    if (v18 == ++v17)
    {

      a1 = v62;
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

void sub_1E3D85BF4(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_26_0();
  v6 = (*(v5 + 464))();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    type metadata accessor for CanonicalFooterSectionView();
    v8 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  }

  v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x118);
  v10 = a3;
  v9(a2);
  v11 = MEMORY[0x1E69E7CC0];
  v116 = MEMORY[0x1E69E7CC0];
  v12 = sub_1E32AE9B0(v7);
  if (!v12)
  {
LABEL_103:

    OUTLINED_FUNCTION_0_96();
    (*(v104 + 208))(v11);
    return;
  }

  v13 = v12;
  v14 = 0;
  v15 = v7 & 0xC000000000000001;
  v107 = v7 & 0xFFFFFFFFFFFFFF8;
  v105 = v7;
  v109 = v7 & 0xC000000000000001;
  v110 = v12;
  while (1)
  {
    if (v15)
    {
      v16 = MEMORY[0x1E6911E60](v14, v7);
    }

    else
    {
      if (v14 >= *(v107 + 16))
      {
        goto LABEL_105;
      }
    }

    if (__OFADD__(v14++, 1))
    {
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    v18 = *(v16 + 98);
    if (v18 == 112)
    {
      OUTLINED_FUNCTION_26_0();
      v38 = (*(v37 + 488))();
      if (v38)
      {
        v41 = v38;
        if (*(v38 + 16) && ((sub_1E3740AE8(9, v39, v40), (v42 & 1) != 0) || *(v41 + 16) && (sub_1E3740AE8(4, v42, v43), (v44 & 1) != 0)))
        {

          type metadata accessor for UIFactory();
          OUTLINED_FUNCTION_0_96();
          v46 = *(v45 + 176);

          v48 = v46(v47);
          v13 = v110;
          v49 = v48;
          sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
          v50 = OUTLINED_FUNCTION_0_232();
          v53 = sub_1E393D92C(v50, v49, v51, 0, v52);

          sub_1E325F748(v115, &qword_1ECF296C0, &unk_1E429BBE0);
          OUTLINED_FUNCTION_0_96();
          (*(v54 + 184))(v53);
          v15 = v109;
        }

        else
        {
        }
      }

      goto LABEL_41;
    }

    if (v18 == 111)
    {
      break;
    }

    if (v18 == 110)
    {
      OUTLINED_FUNCTION_26_0();
      v20 = (*(v19 + 488))();
      if (v20)
      {
        v112 = v11;
        if (*(v20 + 16))
        {
          v23 = v7;
          sub_1E3740AE8(23, v21, v22);
          if (v24)
          {
            v25 = v14;

LABEL_59:
            type metadata accessor for UIFactory();
            OUTLINED_FUNCTION_0_96();
            v66 = (*(v65 + 152))();
            sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
            v67 = OUTLINED_FUNCTION_0_232();
            v70 = sub_1E393D92C(v67, v66, v68, 0, v69);

            sub_1E325F748(v115, &qword_1ECF296C0, &unk_1E429BBE0);
            OUTLINED_FUNCTION_0_96();
            (*(v71 + 160))(v70);

            v14 = v25;
            v15 = v109;
            v7 = v23;
            v11 = v112;
            goto LABEL_97;
          }
        }

        else
        {
          v23 = v7;
        }

        v25 = v14;

        goto LABEL_59;
      }
    }

LABEL_41:

LABEL_97:
    if (v14 == v13)
    {
      goto LABEL_103;
    }
  }

  v108 = v14;
  v26 = v16;
  if (v11 >> 62)
  {
    v27 = sub_1E4207384();
  }

  else
  {
    v27 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  OUTLINED_FUNCTION_0_96();
  v29 = *(v28 + 200);
  v30 = v29();
  if (!v30)
  {
LABEL_44:
    type metadata accessor for CanonicalFooterSectionView.ItemViewModel();
    v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v36 = 0;
    v13 = v110;
    goto LABEL_45;
  }

  v31 = v30;
  v32 = v29();
  if (!v32)
  {
    if (v27 < 0)
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

  if (v32 >> 62)
  {
    v33 = sub_1E4207384();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v27 >= v33)
  {
LABEL_43:

    goto LABEL_44;
  }

LABEL_27:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x1E6911E60](v27, v31);
    v13 = v110;
  }

  else
  {
    v13 = v110;
    if (v27 < 0)
    {
      goto LABEL_107;
    }

    if (v27 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_108;
    }

    v34 = *(v31 + 8 * v27 + 32);
  }

  v35 = v34;
  v36 = v35;
LABEL_45:
  v114 = MEMORY[0x1E69E7CC0];
  v55 = (*(*v26 + 464))();
  if (!v55)
  {
    goto LABEL_94;
  }

  v56 = v55;
  v57 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v58 = sub_1E4207384();
  }

  else
  {
    v58 = 0;
  }

  OUTLINED_FUNCTION_7_0();
  v60 = (*(v59 + 120))();
  if (!v60)
  {
LABEL_61:
    v113 = 0;
    goto LABEL_62;
  }

  v61 = v60;
  v62 = v60 & 0xFFFFFFFFFFFFFF8;
  if (v60 >> 62)
  {
    v63 = sub_1E4207384();
  }

  else
  {
    v63 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v58 >= v63)
  {

    goto LABEL_61;
  }

  if ((v61 & 0xC000000000000001) != 0)
  {
    v64 = MEMORY[0x1E6911E60](v58, v61);
  }

  else
  {
    if (v58 < 0)
    {
      goto LABEL_109;
    }

    if (v58 >= *(v62 + 16))
    {
      goto LABEL_110;
    }

    v64 = *(v61 + 8 * v58 + 32);
  }

  v113 = v64;

LABEL_62:
  v106 = v36;
  if (!(v56 >> 62))
  {
    v72 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v72)
    {
      goto LABEL_64;
    }

LABEL_92:
    v111 = v57;
LABEL_93:

    OUTLINED_FUNCTION_7_0();
    (*(v102 + 128))(v111);

    v7 = v105;
    v13 = v110;
    v36 = v106;
LABEL_94:
    v103 = v35;
    MEMORY[0x1E6910BF0]();
    if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    sub_1E4206324();

    v11 = v116;
    v14 = v108;
    v15 = v109;
    goto LABEL_97;
  }

  v72 = sub_1E4207384();
  if (!v72)
  {
    goto LABEL_92;
  }

LABEL_64:
  if (v72 >= 1)
  {
    v73 = 0;
    v111 = v57;
    while (1)
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        v74 = MEMORY[0x1E6911E60](v73, v56);
      }

      else
      {
        v74 = *(v56 + 8 * v73 + 32);
      }

      v75 = *(v74 + 98);
      switch(v75)
      {
        case 4:
        case 9:
          type metadata accessor for UIFactory();
          sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
          v87 = OUTLINED_FUNCTION_0_232();
          v90 = sub_1E393D92C(v87, v113, v88, 0, v89);
          sub_1E325F748(v115, &qword_1ECF296C0, &unk_1E429BBE0);
          if (v90)
          {
            v91 = v90;
            MEMORY[0x1E6910BF0]();
            if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();

            v111 = v114;
            goto LABEL_87;
          }

          break;
        case 23:
          type metadata accessor for UIFactory();
          OUTLINED_FUNCTION_7_0();
          v93 = *(v92 + 96);

          v95 = v93(v94);
          sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
          v96 = OUTLINED_FUNCTION_0_232();
          v99 = sub_1E393D92C(v96, v95, v97, 0, v98);

          sub_1E325F748(v115, &qword_1ECF296C0, &unk_1E429BBE0);
          OUTLINED_FUNCTION_7_0();
          (*(v100 + 104))(v99);
          break;
        case 39:
          type metadata accessor for UIFactory();
          OUTLINED_FUNCTION_7_0();
          v78 = *(v77 + 96);

          v80 = v78(v79);
          sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
          v81 = OUTLINED_FUNCTION_0_232();
          v84 = sub_1E393D92C(v81, v80, v82, 0, v83);

          sub_1E325F748(v115, &qword_1ECF296C0, &unk_1E429BBE0);
          if (v84)
          {
            objc_opt_self();
            v85 = swift_dynamicCastObjCClass();
            if (v85)
            {
              v86 = v84;
              [v85 setAdjustsLocalImageForContentSizeCategory_];
            }

            else
            {
            }
          }

          else
          {
            v85 = 0;
          }

          OUTLINED_FUNCTION_7_0();
          (*(v101 + 104))(v85);

          goto LABEL_87;
      }

LABEL_87:
      if (v72 == ++v73)
      {
        goto LABEL_93;
      }
    }
  }

LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
}

uint64_t sub_1E3D86704()
{
  v0 = type metadata accessor for TextLayout();
  sub_1E383BCC0();
  OUTLINED_FUNCTION_30();
  (*(v1 + 2056))(0, 0);
  (*(*v0 + 1984))(4);

  v2 = *sub_1E3E5FD88();
  v3 = *(*v0 + 680);
  v4 = v2;
  v3(v2);

  v58[0] = 17;
  LOBYTE(v86) = 17;
  LOBYTE(v81) = 15;
  LOBYTE(v76) = 3;
  LOBYTE(v71) = 17;
  v5 = sub_1E3C3DE00();
  LOBYTE(v59) = v65;
  OUTLINED_FUNCTION_0_233(v5, v6, v7, v8, v9, v10, v11, v12, *v58, *&v58[8], *&v58[16], *&v58[24], *&v58[32], *&v58[40], *&v58[48], *&v58[56], *&v58[64], *&v58[72], *&v58[80], *&v58[88], *&v58[96], *&v58[104], *&v58[112], *&v58[120], *&v58[128], *&v58[136], *&v58[144], *&v58[152], *&v58[160], *&v58[168], *&v58[176], *&v58[184], *&v58[192], *&v58[200], *&v58[208], *&v58[216], *&v58[224], *&v58[232], v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  *v58 = __src[0];
  *&v58[4] = __src[1];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v14 = *(v13 + 1600);
  v23 = OUTLINED_FUNCTION_30_3(v15, v16, v17, v18, v19, v20, v21, v22, *v58);
  v14(v23, 48);
  sub_1E3952C88();
  *v58 = v24;
  *&v58[8] = v25;
  *&v58[16] = v26;
  *&v58[24] = v27;
  v58[32] = 0;
  sub_1E3952C88();
  v86 = v28;
  v87 = v29;
  v88 = v30;
  v89 = v31;
  v90 = 0;
  sub_1E3952C88();
  v81 = v32;
  v82 = v33;
  v83 = v34;
  v84 = v35;
  v85 = 0;
  sub_1E3952C88();
  v76 = v36;
  v77 = v37;
  v78 = v38;
  v79 = v39;
  LOBYTE(v80) = 0;
  sub_1E3952C88();
  OUTLINED_FUNCTION_8_138();
  v40 = sub_1E3C3DE00();
  LOBYTE(v63) = v69;
  OUTLINED_FUNCTION_0_233(v40, v41, v42, v43, v44, v45, v46, v47, *v58, *&v58[8], *&v58[16], *&v58[24], *&v58[32], *&v58[40], *&v58[48], *&v58[56], *&v58[64], *&v58[72], *&v58[80], *&v58[88], *&v58[96], *&v58[104], *&v58[112], *&v58[120], *&v58[128], *&v58[136], *&v58[144], *&v58[152], *&v58[160], *&v58[168], *&v58[176], *&v58[184], *&v58[192], *&v58[200], *&v58[208], *&v58[216], *&v58[224], *&v58[232], v65, v66, v67, v68, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  memcpy(v58, __src, 0xE9uLL);
  v48 = OUTLINED_FUNCTION_18();
  v56 = OUTLINED_FUNCTION_30_3(v48, v49, v50, v51, v52, v53, v54, v55, *v58);
  v14(v56, 0);
  return v0;
}

uint64_t sub_1E3D8695C()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ScoreRowLayout();
    OUTLINED_FUNCTION_3_139();
    swift_allocObject();
    v1 = sub_1E3D86AF0();
    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E3D869CC()
{
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  return sub_1E3D86AF0();
}

uint64_t sub_1E3D869FC()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v1 = sub_1E3D86704();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3D86A58()
{
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  return sub_1E3D86A88();
}

uint64_t sub_1E3D86A88()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = sub_1E3C2F9A0();

  v2 = sub_1E3D8695C();
  sub_1E3C37CBC(v2, 235);

  v3 = sub_1E3D869FC();
  sub_1E3C37CBC(v3, 4);

  return v1;
}

uint64_t sub_1E3D86AF0()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E3D86BC8();
  v2.n128_f64[0] = sub_1E3D870B4();
  v3 = (*(*v1 + 1704))(v2);
  sub_1E3C37CBC(v3, 236);

  v5 = (*(*v1 + 1728))(v4);
  sub_1E3C37CBC(v5, 237);

  return v1;
}

void sub_1E3D86BC8()
{
  v1 = (*v0 + 1704);
  v2 = *v1;
  (*v1)();
  OUTLINED_FUNCTION_30();
  (*(v3 + 1696))(1);

  (v2)(v4);
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 1984))(4);

  (v2)(v6);
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 1792))(10);

  v9 = (v2)(v8);
  v10 = *sub_1E3E5FD88();
  v11 = *(*v9 + 680);
  v12 = v10;
  v11(v10);

  (v2)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 2056))(1, 0);

  (v2)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 2080))(1, 0);

  (v2)(v17);
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 2104))(0, 0);

  (v2)(v19);
  *v66 = 0x3FE35E50D79435E5;
  v66[8] = 0;
  v20 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  v87 = v92;
  LOBYTE(v88) = v93;
  sub_1E3C2FC98();
  v77 = v82;
  LOBYTE(v78) = v83;
  sub_1E3C3DE00();
  v67 = v71;
  v68 = v72;
  sub_1E3C3DE00();
  v102 = v104;
  v103 = v105;
  sub_1E3C3DE00();
  v98 = v100;
  v99 = v101;
  sub_1E3C2FCB8(&v87, &v77, &v67, v66, &v102, &v98, v20, __src);
  memcpy(v66, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v29 = OUTLINED_FUNCTION_30_3(v21, v22, v23, v24, v25, v26, v27, v28, *v66);
  v30(v29, 65);

  (v2)(v31);
  sub_1E3952C88();
  *v66 = v32;
  *&v66[8] = v33;
  *&v66[16] = v34;
  *&v66[24] = v35;
  v66[32] = 0;
  sub_1E3952C88();
  v92 = v36;
  v93 = v37;
  v94 = v38;
  v95 = v39;
  v96 = 0;
  sub_1E3952C88();
  v87 = v40;
  v88 = v41;
  v89 = v42;
  v90 = v43;
  v91 = 0;
  sub_1E3952C88();
  v82 = v44;
  v83 = v45;
  v84 = v46;
  v85 = v47;
  LOBYTE(v86) = 0;
  sub_1E3952C88();
  OUTLINED_FUNCTION_8_138();
  v48 = sub_1E3C3DE00();
  LOBYTE(v69) = v75;
  OUTLINED_FUNCTION_0_233(v48, v49, v50, v51, v52, v53, v54, v55, *v66, *&v66[8], *&v66[16], *&v66[24], *&v66[32], *&v66[40], *&v66[48], *&v66[56], *&v66[64], *&v66[72], *&v66[80], *&v66[88], *&v66[96], *&v66[104], *&v66[112], *&v66[120], *&v66[128], *&v66[136], *&v66[144], *&v66[152], *&v66[160], *&v66[168], *&v66[176], *&v66[184], *&v66[192], *&v66[200], *&v66[208], *&v66[216], *&v66[224], *&v66[232], v71, v72, v73, v74, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
  memcpy(v66, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v64 = OUTLINED_FUNCTION_30_3(v56, v57, v58, v59, v60, v61, v62, v63, *v66);
  v65(v64, 0);
}

double sub_1E3D870B4()
{
  [(*(*v0 + 1704))() copyWithZone_];

  sub_1E4207264();
  swift_unknownObjectRelease();
  type metadata accessor for TextLayout();
  v1 = swift_dynamicCast();
  if (v1)
  {
    v0[14] = v15;
  }

  v2 = (*v0 + 1728);
  v3 = *v2;
  (*v2)(v1);
  OUTLINED_FUNCTION_30();
  (*(v4 + 1792))(0);

  v3(v5);
  if ([objc_opt_self() isAXLargeEnabled_])
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  LOBYTE(v15) = v6;
  v14 = 2;
  v13 = 2;
  sub_1E3C3DE00();
  v12[0] = v12[1];
  sub_1E3C3DE00();
  v11[0] = v11[1];
  sub_1E3C3DE00();
  v10[0] = v10[1];
  sub_1E3C2FCB8(v12, &v15, &v14, &v13, v11, v10, &unk_1F5D54CA8, &v16);
  LODWORD(v15) = v16;
  WORD2(v15) = v17;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v7 + 1600))(&v15, 59, v8 & 1, &unk_1F5D54CA8);

  return result;
}

void sub_1E3D873F8(uint64_t a1@<X0>, const void *a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SportsScoreboardPostGameView(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  *(a3 + v6[6]) = a1;
  memcpy(a3 + v6[7], a2, 0xC3uLL);
  v8 = (a3 + v6[8]);

  sub_1E3743538(a2, &v13, &qword_1ECF28C28, &qword_1E4298330);
  type metadata accessor for SportsScoreboardLayout();
  OUTLINED_FUNCTION_0_234();
  sub_1E3D88C88(v9, v10, &unk_1E42B10C0);

  *v8 = sub_1E42010C4();
  v8[1] = v11;
  v12 = sub_1E39DF25C();
  sub_1E325F6F0(a2, &qword_1ECF28C28, &qword_1E4298330);

  *(a3 + v6[9]) = v12;
}

void *sub_1E3D87590@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF382A8, &qword_1E42CFD98);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &__src[-v4];
  *v5 = *sub_1E41F0A04();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF382B0, &qword_1E42CFDA0);
  sub_1E3D876AC(v1, &v5[*(v6 + 44)]);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_27_17();
  v7 = OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_64_3(v7, v8, v9, v10, 0x7FEFFFFFFFFFFFFFLL, v11, v12, v13, v19);
  OUTLINED_FUNCTION_21_1();
  sub_1E3741EA0(v14, v15, v16, &qword_1E42CFD98);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF382B8, &unk_1E42CFDA8);
  return memcpy((a1 + *(v17 + 36)), __src, 0x70uLL);
}

uint64_t sub_1E3D876AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D70, &qword_1E42984F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v4);
  v125 = (&v104 - v5);
  v120 = type metadata accessor for SportsScoreboardPostGameCompetitorViewNoScores(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_3();
  v109 = v7;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF382E8, &qword_1E42CFED0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v124 = &v104 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C70, &unk_1E42983D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v104 - v11;
  v13 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v104 - v21);
  v121 = type metadata accessor for SportsScoreboardCompetitorView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_3();
  v111 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF382F0, &qword_1E42CFED8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v28);
  v123 = &v104 - v29;
  v30 = type metadata accessor for SportsScoreboardPostGameView(0);
  v31 = *(a1 + *(v30 + 24));
  v32 = sub_1E3827278();
  v33 = *(a1 + *(v30 + 32) + 8);

  v126 = v33;

  v105 = sub_1E38266E4();
  v110 = v30;
  v115 = a1;
  sub_1E374709C(v22);
  v34 = *MEMORY[0x1E697E7D0];
  v35 = *(v15 + 104);
  v108 = v15 + 104;
  v107 = v35;
  v35(v19, v34, v13);
  v36 = sub_1E4201314();
  v37 = *(v15 + 8);
  v37(v19, v13);
  v113 = v13;
  v112 = v15 + 8;
  v106 = v37;
  v38 = (v37)(v22, v13);
  v104 = v12;
  if (v32)
  {
    sub_1E3B29758(v38);

    v39 = v111;
    OUTLINED_FUNCTION_21_1();
    sub_1E3B297BC(v40, v41, v105, v42, 1, v43);
    sub_1E3D88CD0(v39, v124, type metadata accessor for SportsScoreboardCompetitorView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_179();
    sub_1E3D88C88(v44, v45, &unk_1E42BBA88);
    OUTLINED_FUNCTION_1_211();
    sub_1E3D88C88(v46, v47, &unk_1E42CFE10);
    v48 = v109;
    sub_1E4201F44();
    sub_1E3D88D2C(v39, type metadata accessor for SportsScoreboardCompetitorView);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v50 = v109;
    *v109 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
    swift_storeEnumTagMultiPayload();
    v51 = v120;
    *(v50 + *(v120 + 20)) = v31;
    v52 = (v50 + v51[6]);
    type metadata accessor for SportsScoreboardLayout();
    OUTLINED_FUNCTION_0_234();
    sub_1E3D88C88(v53, v54, &unk_1E42B10C0);
    v55 = v124;

    *v52 = sub_1E42010C4();
    v52[1] = v56;
    *(v50 + v51[7]) = v105;
    *(v50 + v51[8]) = v36 & 1;
    sub_1E3D88CD0(v50, v55, type metadata accessor for SportsScoreboardPostGameCompetitorViewNoScores);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_179();
    sub_1E3D88C88(v57, v58, &unk_1E42BBA88);
    OUTLINED_FUNCTION_1_211();
    sub_1E3D88C88(v59, v60, &unk_1E42CFE10);
    v48 = v50;
    sub_1E4201F44();
    sub_1E3D88D2C(v50, type metadata accessor for SportsScoreboardPostGameCompetitorViewNoScores);
    v39 = v111;
  }

  v61 = v125;
  sub_1E41EEC10(v31, v126, v125);
  v62 = sub_1E41F0A04();
  v63 = (v61 + *(v114 + 36));
  *v63 = *v62;
  v63[1] = sub_1E374A0BC;
  v63[2] = 0;
  v64 = sub_1E3827278();

  v65 = sub_1E38266EC();
  sub_1E374709C(v22);
  v66 = v113;
  v107(v19, *MEMORY[0x1E697E7D8], v113);
  v67 = sub_1E4201314();
  v68 = v19;
  v69 = v106;
  v106(v68, v66);
  v70 = (v69)(v22, v66);
  if (v64)
  {
    v71 = v104;
    sub_1E3B29758(v70);
    sub_1E3B297BC(v71, v31, v65, v67 & 1, 1, v39);
    v72 = type metadata accessor for SportsScoreboardCompetitorView;
    sub_1E3D88CD0(v39, v124, type metadata accessor for SportsScoreboardCompetitorView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_179();
    sub_1E3D88C88(v73, v74, &unk_1E42BBA88);
    OUTLINED_FUNCTION_1_211();
    sub_1E3D88C88(v75, v76, &unk_1E42CFE10);
    OUTLINED_FUNCTION_14_125();
    sub_1E4201F44();
    v77 = v39;
  }

  else
  {
    *v48 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
    swift_storeEnumTagMultiPayload();
    v78 = v120;
    *(v48 + *(v120 + 20)) = v31;
    v79 = (v48 + v78[6]);
    type metadata accessor for SportsScoreboardLayout();
    OUTLINED_FUNCTION_0_234();
    sub_1E3D88C88(v80, v81, &unk_1E42B10C0);
    *v79 = sub_1E42010C4();
    v79[1] = v82;
    *(v48 + v78[7]) = v65;
    *(v48 + v78[8]) = v67 & 1;
    v72 = type metadata accessor for SportsScoreboardPostGameCompetitorViewNoScores;
    sub_1E3D88CD0(v48, v124, type metadata accessor for SportsScoreboardPostGameCompetitorViewNoScores);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_179();
    sub_1E3D88C88(v83, v84, &unk_1E42BBA88);
    OUTLINED_FUNCTION_1_211();
    sub_1E3D88C88(v85, v86, &unk_1E42CFE10);
    OUTLINED_FUNCTION_14_125();
    sub_1E4201F44();
    v77 = v48;
  }

  sub_1E3D88D2C(v77, v72);
  v133 = 0;
  v134 = 0;
  v135[0] = &v133;
  v87 = v117;
  sub_1E3743538(v123, v117, &qword_1ECF382F0, &qword_1E42CFED8);
  v131 = 0;
  v132 = 0;
  v135[1] = v87;
  v135[2] = &v131;
  v88 = v125;
  v89 = v119;
  sub_1E3743538(v125, v119, &qword_1ECF28D70, &qword_1E42984F0);
  v129 = 0;
  v130 = 0;
  v135[3] = v89;
  v135[4] = &v129;
  v90 = v116;
  sub_1E3743538(v22, v116, &qword_1ECF382F0, &qword_1E42CFED8);
  v127 = 0;
  v128 = 0;
  v135[5] = v90;
  v135[6] = &v127;
  sub_1E3D881A8(v135, v118);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v91, v92, v93);
  sub_1E325F6F0(v88, &qword_1ECF28D70, &qword_1E42984F0);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v94, v95, v96);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v97, v98, v99);
  sub_1E325F6F0(v89, &qword_1ECF28D70, &qword_1E42984F0);
  OUTLINED_FUNCTION_21_1();
  return sub_1E325F6F0(v100, v101, v102);
}

uint64_t sub_1E3D881A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF382F8, &qword_1E42CFEE0);
  sub_1E3743538(*(a1 + 8), a2 + v5[12], &qword_1ECF382F0, &qword_1E42CFED8);
  v6 = a2 + v5[16];
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  *v6 = v9;
  *(v6 + 8) = v8;
  sub_1E3743538(v7, a2 + v5[20], &qword_1ECF28D70, &qword_1E42984F0);
  v10 = a2 + v5[24];
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *v10 = v13;
  *(v10 + 8) = v12;
  result = sub_1E3743538(v11, a2 + v5[28], &qword_1ECF382F0, &qword_1E42CFED8);
  v15 = a2 + v5[32];
  v16 = *(a1 + 48);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *v15 = v17;
  *(v15 + 8) = v16;
  return result;
}

void *sub_1E3D882B8@<X0>(uint64_t a2@<X8>)
{
  v47 = sub_1E4201B84();
  v52 = 0;
  v4 = type metadata accessor for SportsScoreboardPostGameCompetitorViewNoScores(0);
  v5 = *(v2 + *(v4 + 32));
  if (v5 == 1)
  {
    v6 = *(v2 + *(v4 + 20));

    OUTLINED_FUNCTION_18();
    sub_1E3AC5824();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    OUTLINED_FUNCTION_20_86();
    swift_beginAccess();
    v13 = *(**(v6 + 288) + 176);

    v13(v62, v14);

    v2 = sub_1E4203DA4();
    OUTLINED_FUNCTION_27_17();
    v15 = OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_64_3(v15, v16, v17, v18, v19, v20, v21, v22, v46);
    v48[0] = 0;
    memcpy(&v56[7], __src, 0x70uLL);
    v53[0] = v8;
    v53[1] = v10;
    LOBYTE(v53[2]) = v12 & 1;
    v53[3] = 0;
    LOBYTE(v53[4]) = 0;
    memcpy(&v53[4] + 1, v56, 0x77uLL);
    nullsub_1();
    memcpy(__dst, v53, 0x98uLL);
  }

  else
  {
    sub_1E3D88C50(__dst);
  }

  nullsub_1();
  v24 = v23;
  v26 = v25;
  v27 = *sub_1E41F0A04();
  if (v5)
  {
    sub_1E3D88C60(v61);
  }

  else
  {
    OUTLINED_FUNCTION_20_86();
    swift_beginAccess();
    v28 = *(**(v2 + 288) + 176);

    v28(&v64, v29);

    sub_1E4203DA4();
    OUTLINED_FUNCTION_27_17();
    v30 = OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_64_3(v30, v31, v32, v33, v34, v35, v36, v37, v46);
    memcpy(&v60[7], v65, 0x70uLL);

    OUTLINED_FUNCTION_18();
    sub_1E3AC5824();
    v39 = v38;
    v41 = v40;
    v43 = v42 & 1;
    v53[0] = 0;
    LOBYTE(v53[1]) = 0;
    memcpy(&v53[1] + 1, v60, 0x77uLL);
    v53[16] = v39;
    v53[17] = v41;
    LOBYTE(v53[18]) = v43;
    nullsub_1();
    memcpy(v61, v53, 0x91uLL);
  }

  memcpy(v57, __dst, sizeof(v57));
  memcpy(v59, v61, 0x91uLL);
  memcpy(v48, __dst, 0x98uLL);
  memcpy(v58, v61, 0x91uLL);
  memcpy(v50, __dst, sizeof(v50));
  memcpy(v49, v61, sizeof(v49));
  sub_1E3743538(v48, v53, &qword_1ECF382D8, &qword_1E42CFEB8);

  sub_1E3743538(v58, v53, &qword_1ECF382E0, &unk_1E42CFEC0);
  sub_1E325F6F0(v59, &qword_1ECF382E0, &unk_1E42CFEC0);

  memcpy(v53, v57, 0x98uLL);
  sub_1E325F6F0(v53, &qword_1ECF382D8, &qword_1E42CFEB8);
  memcpy(v53, v50, 0x98uLL);
  v53[19] = v24;
  v53[20] = v26;
  v53[21] = v27;
  v53[22] = sub_1E374AE08;
  v53[23] = 0;
  memcpy(&v53[24], v49, 0x91uLL);
  memcpy(__dst, v50, 0x98uLL);
  __dst[19] = v24;
  __dst[20] = v26;
  __dst[21] = v27;
  __dst[22] = sub_1E374AE08;
  __dst[23] = 0;
  memcpy(v55, v49, sizeof(v55));
  sub_1E3743538(v53, v48, &qword_1ECF382C0, &qword_1E42CFDB8);
  sub_1E325F6F0(__dst, &qword_1ECF382C0, &qword_1E42CFDB8);
  memcpy(&v51[7], v53, 0x151uLL);
  v44 = v52;
  *a2 = v47;
  *(a2 + 8) = 0;
  *(a2 + 16) = v44;
  return memcpy((a2 + 17), v51, 0x158uLL);
}