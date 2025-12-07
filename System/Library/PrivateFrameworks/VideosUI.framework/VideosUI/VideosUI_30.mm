void sub_1E38759B0(void *a1)
{
  OUTLINED_FUNCTION_5_16();
  v12 = v1;
  v13 = type metadata accessor for MultiPlayerViewController();
  v5 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v6, v7, a1, v5);
  OUTLINED_FUNCTION_4_0();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_141_0(v8);
  OUTLINED_FUNCTION_5_10();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v3;
  v9[4] = v2;
  v11[4] = sub_1E3879438;
  v11[5] = v9;
  OUTLINED_FUNCTION_3_4();
  v11[1] = 1107296256;
  v11[2] = sub_1E37C7850;
  v11[3] = &block_descriptor_56;
  v10 = _Block_copy(v11);

  [a1 animateAlongsideTransition:v10 completion:0];
  _Block_release(v10);
}

void sub_1E3875AB0()
{
  OUTLINED_FUNCTION_5_16();
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    OUTLINED_FUNCTION_64();
    v9 = OUTLINED_FUNCTION_6_12();
    v11 = v10(v9);
    v12 = sub_1E324FBDC();
    (*(v2 + 16))(v6, v12, v0);
    v13 = sub_1E41FFC94();
    v14 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_104(v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v45 = v16;
      *v15 = 136315394;
      OUTLINED_FUNCTION_6_12();
      v17 = sub_1E4206E64();
      v44 = v0;
      v19 = sub_1E3270FC8(v17, v18, &v45);

      *(v15 + 4) = v19;
      *(v15 + 12) = 1024;
      *(v15 + 14) = v11 & 1;
      _os_log_impl(&dword_1E323F000, v13, v14, "MultiPlayerViewController:: didCrossSupportedScreenSizeBoundary %s - %{BOOL}d", v15, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v2 + 8))(v6, v44);
    }

    else
    {

      (*(v2 + 8))(v6, v0);
    }

    OUTLINED_FUNCTION_18_1();
    if ((*(v20 + 576))())
    {
      v21 = v8;
      v22 = OUTLINED_FUNCTION_121();
      [v22 v23];

      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_21();
    v25 = (*(v24 + 264))();
    v43 = MEMORY[0x1E69E7CC0];
    v45 = MEMORY[0x1E69E7CC0];
    v26 = sub_1E32AE9B0(v25);
    v27 = 0;
    while (v26 != v27)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v33 = OUTLINED_FUNCTION_171_0();
        v28 = MEMORY[0x1E6911E60](v33);
      }

      else
      {
        if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v28 = *(v25 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_21();
      v32 = (*(v31 + 920))(v29);

      ++v27;
      if (v32)
      {
        MEMORY[0x1E6910BF0]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
        v43 = v45;
        v27 = v30;
      }
    }

    v34 = sub_1E32AE9B0(v43);
    for (i = 0; v34 != i; ++i)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1E6911E60](i, v43);
      }

      else
      {
        if (i >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v36 = *(v43 + 8 * i + 32);
      }

      v37 = v36;
      if (__OFADD__(i, 1))
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_21();
      (*(v38 + 728))(1);
    }

    OUTLINED_FUNCTION_21();
    if ((*(v39 + 608))())
    {
      OUTLINED_FUNCTION_169();
      sub_1E3874870(v40, v41, v42);
    }
  }
}

void sub_1E3876008()
{
  OUTLINED_FUNCTION_82_2();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_51_4();
  v7 = OUTLINED_FUNCTION_123_3();
  v8(v7);
  v9 = sub_1E41FFC94();
  v10 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_77_3(v10))
  {
    v11 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_168_2(v11);
    OUTLINED_FUNCTION_108_1(&dword_1E323F000, v12, v13, "MultiPlayerViewController:: starting inactivity timer");
    OUTLINED_FUNCTION_6_0();
  }

  v14 = OUTLINED_FUNCTION_127_2();
  v15(v14);
  sub_1E386CDC0(1);
  v16 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_inactivityTask;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_inactivityTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    sub_1E42064D4();
  }

  v17 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v17);
  OUTLINED_FUNCTION_4_0();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_83_1(v18);
  swift_unknownObjectWeakInit();
  sub_1E4206434();

  v19 = sub_1E4206424();
  OUTLINED_FUNCTION_5_10();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v5;

  *(v2 + v16) = sub_1E37748D8(0, 0, v1, &unk_1E42A6E08, v20);

  OUTLINED_FUNCTION_95();
}

uint64_t sub_1E3876250()
{
  OUTLINED_FUNCTION_24();
  v0[10] = v1;
  v2 = sub_1E41FFCB4();
  v0[11] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[12] = v3;
  v0[13] = OUTLINED_FUNCTION_86_0();
  v4 = sub_1E42075E4();
  v0[14] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[15] = v5;
  v0[16] = OUTLINED_FUNCTION_86_0();
  v6 = sub_1E4206434();
  v0[18] = OUTLINED_FUNCTION_162_2(v6);
  OUTLINED_FUNCTION_50();
  v7 = sub_1E42063B4();
  OUTLINED_FUNCTION_133_3(v7, v8);
  v9 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3876364()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_64();
    v2 += 76;
    v3 = *v2;
    v0[22] = *v2;
    v0[23] = v2 & 0xFFFFFFFFFFFFLL | 0x943D000000000000;
    if (v3())
    {
      sub_1E386A48C();
    }

    sub_1E4207CA4();
    sub_1E4207AA4();
    v4 = swift_task_alloc();
    v0[24] = v4;
    *v4 = v0;
    v4[1] = sub_1E38764F0;
    OUTLINED_FUNCTION_25();

    return sub_1E38786F0(v5, v6, v7, v8, 1);
  }

  else
  {

    OUTLINED_FUNCTION_202();

    OUTLINED_FUNCTION_15_12();

    return v10();
  }
}

uint64_t sub_1E38764F0()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_92_3();
  (*(v1[15] + 8))(*(v5 + 128), v1[14]);
  OUTLINED_FUNCTION_92_3();
  v7 = *(v6 + 160);
  v8 = v1[19];
  if (v0)
  {
    v9 = sub_1E387688C;
  }

  else
  {
    v9 = sub_1E3876664;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E3876664()
{
  v1 = v0[25];
  sub_1E4206514();
  v0[26] = v1;
  if (v1)
  {
    v2 = v0[21];

    OUTLINED_FUNCTION_202();

    OUTLINED_FUNCTION_54();

    return v3();
  }

  else
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    v8 = sub_1E324FBDC();
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_1E41FFC94();
    v10 = sub_1E42067E4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_125_0();
      *v11 = 0;
      _os_log_impl(&dword_1E323F000, v9, v10, "MultiPlayerViewController:: inactivity timer fired", v11, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v12 = v0[22];
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];

    v16 = (*(v14 + 8))(v13, v15);
    if ((v12(v16) & 1) != 0 && (OUTLINED_FUNCTION_21(), v18 = (*(v17 + 424))(), v19 = sub_1E32AE9B0(v18), , v19))
    {
      OUTLINED_FUNCTION_4_0();
      v20 = swift_allocObject();
      v0[27] = v20;
      OUTLINED_FUNCTION_141_0(v20);
      swift_unknownObjectWeakInit();
    }

    else
    {
      swift_unknownObjectWeakInit();
    }

    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DFA0](v21, v22, v23);
  }
}

uint64_t sub_1E387688C()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3876904()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 224) = OUTLINED_FUNCTION_203(v1);
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v2 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_1E3876974()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[26];

  sub_1E3876BFC();
  if (v1)
  {
  }

  else
  {
    MEMORY[0x1E69144A0](v0 + 9);
    v2 = v0[19];
    v3 = v0[20];

    MEMORY[0x1EEE6DFA0](sub_1E3876A14, v2, v3);
  }
}

uint64_t sub_1E3876A14()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_202();

  OUTLINED_FUNCTION_15_12();

  return v2();
}

uint64_t sub_1E3876A8C()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 232) = OUTLINED_FUNCTION_203(v1);
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v2 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3876AFC()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E386CDC0(0);
  }

  MEMORY[0x1E69144A0](v0 + 64);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1E3876B90, v3, v4);
}

uint64_t sub_1E3876B90()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_202();

  OUTLINED_FUNCTION_15_12();

  return v2();
}

void sub_1E3876BFC()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_51_4();
  v3 = OUTLINED_FUNCTION_123_3();
  v4(v3);
  v5 = sub_1E41FFC94();
  v6 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_77_3(v6))
  {
    v7 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_168_2(v7);
    OUTLINED_FUNCTION_108_1(&dword_1E323F000, v8, v9, "MultiPlayerViewController:: inactivity timer fired");
    OUTLINED_FUNCTION_6_0();
  }

  v10 = OUTLINED_FUNCTION_127_2();
  v11(v10);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_stateMachine);

    v25 = 8;
    memset(v24, 0, 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C3D8, qword_1E42A6DE8);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_82_4(inited, xmmword_1E4297BE0);
    OUTLINED_FUNCTION_2_4();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1E3879DE4;
    *(v16 + 24) = v1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
    inited[4].n128_u64[0] = v17;
    inited[2].n128_u64[1] = sub_1E37D1918;
    inited[3].n128_u64[0] = v16;
    sub_1E3879330(v17, v18, v19);

    v20 = sub_1E4205CB4();
    OUTLINED_FUNCTION_21();
    (*(v21 + 152))(&v25, v24, v20);

    sub_1E325F6F0(v24, &unk_1ECF296E0, &unk_1E4298030);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    sub_1E386CDC0(0);
  }

  OUTLINED_FUNCTION_95();
}

void sub_1E3876E80()
{
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_156_0();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v6 = OUTLINED_FUNCTION_101();
  v7(v6);
  v8 = sub_1E41FFC94();
  v9 = sub_1E42067E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_125_0();
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v8, v9, "MultiPlayerViewController:: cancelling inactivity timer", v10, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v1, v2);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_inactivityTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    sub_1E42064D4();
  }

  sub_1E386CDC0(1);
  OUTLINED_FUNCTION_95();
}

id sub_1E3877064(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MultiPlayerViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_1E38771F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  OUTLINED_FUNCTION_188();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v11 = Strong;
  if (!v1)
  {

    v50 = 0u;
    v51 = 0u;
LABEL_15:
    sub_1E325F6F0(&v50, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_16;
  }

  sub_1E38776C0(0, v1, &v50, v10);
  if (!*(&v51 + 1))
  {

    goto LABEL_15;
  }

  v12 = sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
  if ((OUTLINED_FUNCTION_107_4(v12, v13, v14, v12) & 1) == 0)
  {

LABEL_16:
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_65_7();
    v28();
    goto LABEL_17;
  }

  sub_1E38776C0(3, v1, &v50, v15);
  if (!*(&v51 + 1))
  {

    goto LABEL_15;
  }

  if ((OUTLINED_FUNCTION_107_4(v16, v17, v18, MEMORY[0x1E69E6370]) & 1) == 0)
  {

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_154();
  v48 = *(v19 + 424);
  v20 = v48();
  v21 = sub_1E32AE9B0(v20);

  if (v21 <= 3)
  {
    sub_1E38776C0(4, v1, &v50, v22);
    if (*(&v51 + 1))
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
      if (OUTLINED_FUNCTION_107_4(v23, v24, v25, v23))
      {
        OUTLINED_FUNCTION_2_4();
        v26 = swift_allocObject();
        *(v26 + 16) = v49;
        v27 = sub_1E387F690;
LABEL_24:
        v40 = v48();
        v41 = sub_1E32AE9B0(v40);

        if (v41)
        {
          sub_1E38746CC();
        }

        v42 = *&v11[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView];
        OUTLINED_FUNCTION_10_9();
        v43 = swift_allocObject();
        *(v43 + 16) = v11;
        *(v43 + 24) = v49;
        *(v43 + 32) = v27;
        *(v43 + 40) = v26;
        v44 = *((*MEMORY[0x1E69E7D40] & *v42) + 0x350);
        v45 = v42;
        v46 = v11;
        sub_1E37FAED4(v27, v26);
        v44(v49, 0, 1, v49, sub_1E387E720, v43);

        OUTLINED_FUNCTION_12_5();
        OUTLINED_FUNCTION_65_7();
        v47();
        sub_1E37FAED8(v27, v26);

        goto LABEL_17;
      }
    }

    else
    {
      sub_1E325F6F0(&v50, &unk_1ECF296E0, &unk_1E4298030);
    }

    v27 = 0;
    v26 = 0;
    goto LABEL_24;
  }

  v29 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v29, v2);
  v30 = sub_1E41FFC94();
  v31 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_104(v31))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_134_1();
    _os_log_impl(v32, v33, v34, v35, v36, 2u);
    OUTLINED_FUNCTION_79();
  }

  v37 = OUTLINED_FUNCTION_123_1();
  v38(v37);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_65_7();
  v39();

LABEL_17:
  OUTLINED_FUNCTION_25_2();
}

double sub_1E38776C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, uint64_t a4@<X2>)
{
  if (*(a2 + 16) && (v6 = sub_1E3878E40(a1, a2, a4), (v7 & 1) != 0))
  {
    v8 = *(a2 + 56) + 32 * v6;

    sub_1E328438C(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_1E3877724(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  OUTLINED_FUNCTION_105_2(a1);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    OUTLINED_FUNCTION_64();
    v7 += 53;
    v8 = *v7;
    v9 = (*v7)();
    v10 = OUTLINED_FUNCTION_124_1(v9);
    if (v3)
    {
      v3 = sub_1E3869DD4();
      OUTLINED_FUNCTION_40_17();
      v12 = (*(v11 + 608))();
      (*(*v3 + 152))(v12 & 1);
    }

    v13 = (v8)(v10);
    OUTLINED_FUNCTION_124_1(v13);
    if (v3 <= 1)
    {
      OUTLINED_FUNCTION_40_17();
      if (((*(v14 + 608))() & 1) == 0)
      {
        swift_unknownObjectWeakInit();
        MEMORY[0x1E69144A0](v22);
        v23 = 7;
        OUTLINED_FUNCTION_177();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C3D8, qword_1E42A6DE8);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_82_4(inited, xmmword_1E4297BE0);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
        inited[4].n128_u64[0] = v16;
        inited[2].n128_u64[1] = nullsub_1;
        inited[3].n128_u64[0] = 0;
        sub_1E3879330(v16, v17, v18);
        v19 = sub_1E4205CB4();
        OUTLINED_FUNCTION_154();
        (*(v20 + 152))(&v23, v22, v19);

        sub_1E325F6F0(v22, &unk_1ECF296E0, &unk_1E4298030);
      }
    }

    [v6 setNeedsFocusUpdate];
    v21 = [v6 updateFocusIfNeeded];
    if (a3)
    {
      a3(v21);
    }
  }
}

void sub_1E38779B8()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_99_4(v2);
  v12 = sub_1E38794D0;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1E37C7850;
  v11 = &block_descriptor_65;
  v3 = _Block_copy(&v8);

  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_99_4(v4);
  OUTLINED_FUNCTION_2_4();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v12 = sub_1E38795D4;
  v13 = v5;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1E37C7850;
  v11 = &block_descriptor_72_0;
  v6 = _Block_copy(&v8);
  v7 = v1;

  [v0 animateAlongsideTransition:v3 completion:v6];
  _Block_release(v6);
  _Block_release(v3);
}

void *sub_1E3877BB8(uint64_t a1, void *a2)
{
  v7 = *(v2 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView);
  v8 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_45();
  v38 = (*(v9 + 920))();
  OUTLINED_FUNCTION_39();
  (*((*v8 & v10) + 0x210))(&v43);
  v11 = v44;
  v12 = v45;
  __swift_project_boxed_opaque_existential_1(&v43, v44);
  OUTLINED_FUNCTION_191();
  v14 = *((*v8 & v13) + 0x1A8);
  v15 = v14();
  [v7 bounds];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_191();
  v17 = (*((*v8 & v16) + 0x260))();
  OUTLINED_FUNCTION_191();
  v19 = (*((*v8 & v18) + 0x258))();
  OUTLINED_FUNCTION_191();
  (*((*v8 & v20) + 0x200))();
  v22 = (*(v12 + 56))(v15, (v17 & 1) == 0, v19, v21 & 1, v11, v12, v3, v4, v5, v6);

  v23 = __swift_destroy_boxed_opaque_existential_1(&v43);
  v24 = (v14)(v23);
  sub_1E386ABC0(a1, v24);
  v26 = v25;
  v28 = v27;

  if ((v28 & 1) == 0)
  {
    v42 = v22;
    v40 = v26;
    v41 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C410, &unk_1E42A6E10);
    OUTLINED_FUNCTION_0_32();
    sub_1E32752B0(v29, &unk_1ECF2C410, &unk_1E42A6E10, v30);
    sub_1E38D2054(&v40, &v43);
    if (v45)
    {

      goto LABEL_5;
    }

    v31 = a2;
    if (a2)
    {
      if (v38 && v38 == a2)
      {
        goto LABEL_12;
      }
    }

    else if (!v38)
    {
      goto LABEL_13;
    }

    [v7 frame];
    CGRectGetMinX(v46);
    [v7 frame];
    CGRectGetMinY(v47);
    if (a2)
    {
LABEL_12:
      v32 = OUTLINED_FUNCTION_2_0();
      [v33 v34];
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_5:
  v31 = a2;
LABEL_14:
  v35 = v31;
  return v31;
}

void *sub_1E3877FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3869DD4();
  OUTLINED_FUNCTION_30();
  (*(v6 + 168))();

  v8 = v3 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_swappedPlayerIndices;
  *v8 = a2;
  *(v8 + 1) = a3;
  v8[16] = 0;
  result = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x240))(v7);
  if (result)
  {
    [result multiPlayerViewController:v3 didSwapPlayerViewControllerAtIndex:a2 withPlayerAtIndex:a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E38780E4()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 424))();
  v2 = sub_1E32AE9B0(v1);

  if (v2 <= 2)
  {
    v6 = 7;
    OUTLINED_FUNCTION_116_0();
    OUTLINED_FUNCTION_21();
    (*(v4 + 152))(&v6, v5, 0);
    return sub_1E325F6F0(v5, &unk_1ECF296E0, &unk_1E4298030);
  }

  return result;
}

void sub_1E38781C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_193();
  a25 = v27;
  a26 = v28;
  v29 = v26;
  v31 = v30;
  v33 = v32;
  OUTLINED_FUNCTION_21();
  v34 += 53;
  v35 = *v34;
  v36 = (*v34)();
  v37 = sub_1E32AE9B0(v36);

  if (v37 <= 1)
  {
    sub_1E38746CC();
  }

  sub_1E3869DD4();
  OUTLINED_FUNCTION_12_5();
  (*(v38 + 608))();
  OUTLINED_FUNCTION_26();
  (*(v39 + 152))(v40 & 1);

  a14 = sub_1E3EBABAC();
  a10 = v31;
  a11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  OUTLINED_FUNCTION_0_32();
  sub_1E32752B0(v41, &qword_1ECF2C420, &qword_1E429CDD0, v42);
  sub_1E38D2054(&a10, &a12);
  v43 = a13;
  if (a13)
  {
    v44 = a12;

    OUTLINED_FUNCTION_26();
    v46 = *(v45 + 248);

    v46(v44, v43, v31);
  }

  else
  {
  }

  OUTLINED_FUNCTION_12_5();
  v48 = (*(v47 + 576))();
  if (v48)
  {
    [v48 multiPlayerViewController:v29 didRemovePlayer:v33 atIndex:v31];
    v48 = swift_unknownObjectRelease();
  }

  v49 = (v35)(v48);
  sub_1E32AE9B0(v49);
  OUTLINED_FUNCTION_28_3();
  if (!v31)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_25();
    v50();
  }

  v51 = sub_1E386B444();
  v52 = OUTLINED_FUNCTION_189_0(v51);
  sub_1E3874790(v52, 1);
  OUTLINED_FUNCTION_140_0();
}

uint64_t sub_1E387848C()
{
  OUTLINED_FUNCTION_21();
  result = (*(v0 + 576))();
  if (result)
  {
    v2 = OUTLINED_FUNCTION_2_0();
    [v3 v4];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E3878558()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  (*(v1 + 1240))();
  v2 = sub_1E386A094();
  (*((*v0 & *v2) + 0x160))(0);
}

void sub_1E3878618()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  (*(v1 + 1232))();
  v2 = sub_1E386A094();
  (*((*v0 & *v2) + 0x160))(1);
}

uint64_t sub_1E38786F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1E42075D4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1E38787F0, 0, 0);
}

uint64_t sub_1E38787F0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1E42075E4();
  v5 = sub_1E3879E68(&unk_1ECF2C4D0, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1E4207A84();
  sub_1E3879E68(&unk_1ECF2CCD0, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1E42075F4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1E3878980;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1E3878980()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v3 + 120) = v0;

  v9 = OUTLINED_FUNCTION_35_5();
  v6(v9);
  if (v0)
  {
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {

    OUTLINED_FUNCTION_15_12();

    return v13();
  }
}

uint64_t sub_1E3878B1C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3878B80(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  sub_1E386B1A4(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_38;
  }

  if (v7)
  {
    sub_1E32AE9B0(v4);
LABEL_38:

    return;
  }

  v26 = a1;
  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v4 >> 62 ? sub_1E4207384() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_38;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1E6911E60](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      sub_1E3280A90(0, &qword_1EE23AD70, 0x1E69E58C0);
      v13 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x1F8))();
      v14 = sub_1E4206F64();

      if ((v14 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1E6911E60](v8, v4);
            v16 = MEMORY[0x1E6911E60](v9, v4);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }

            v17 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v17)
            {
              goto LABEL_45;
            }

            if (v9 >= v17)
            {
              goto LABEL_46;
            }

            v18 = *(v4 + 32 + 8 * v9);
            v15 = *(v4 + 32 + 8 * v8);
            v16 = v18;
          }

          v19 = v16;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = sub_1E37EFA58(v4);
            v20 = (v4 >> 62) & 1;
          }

          else
          {
            LODWORD(v20) = 0;
          }

          v21 = v4 & 0xFFFFFFFFFFFFFF8;
          v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v19;

          if ((v4 & 0x8000000000000000) != 0 || v20)
          {
            v4 = sub_1E37EFA58(v4);
            v21 = v4 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          if (v9 >= *(v21 + 16))
          {
            goto LABEL_43;
          }

          v23 = v21 + 8 * v9;
          v24 = *(v23 + 32);
          *(v23 + 32) = v15;

          *v26 = v4;
        }

        v25 = __OFADD__(v8++, 1);
        if (v25)
        {
          goto LABEL_42;
        }
      }

      v25 = __OFADD__(v9++, 1);
      if (v25)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

unint64_t sub_1E3878E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3879330(a1, a2, a3);
  v4 = sub_1E4205DA4();
  return sub_1E3878EAC(a1, v4, v5);
}

unint64_t sub_1E3878EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ~(-1 << *(v3 + 32));
  for (i = a2 & v4; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1E387A028(a1, a2, a3);
    a1 = sub_1E4205E84();
    if (a1)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_1E3878F6C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E3878E40(a2, a2, a3);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C4E8, &unk_1E42A6EB8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E3878E40(a2, v12, v13);
  if ((v11 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v10 = v14;
LABEL_5:
  v16 = *v4;
  if (v11)
  {
    v17 = (v16[7] + 32 * v10);
    __swift_destroy_boxed_opaque_existential_1(v17);

    return sub_1E329504C(a1, v17);
  }

  else
  {

    return sub_1E387909C(v10, a2, a1, v16);
  }
}

_OWORD *sub_1E387909C(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_1E329504C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1E3879104(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((result & 1) == 0 || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_1E4207384();
    }

    result = sub_1E4207514();
    *v2 = result;
  }

  return result;
}

uint64_t sub_1E38791AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

unint64_t sub_1E38792B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2C3D0;
  if (!qword_1ECF2C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C3D0);
  }

  return result;
}

unint64_t sub_1E3879330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2C3E8;
  if (!qword_1ECF2C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C3E8);
  }

  return result;
}

void sub_1E38793A8()
{
  v1 = *(v0 + 16);
  sub_1E3874C44();
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_detailsViewController);
  if (v2)
  {
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      [v3 setHidden_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E3879444()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E3286A7C;

  return sub_1E3876250();
}

void sub_1E38794D0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    OUTLINED_FUNCTION_64();
    v4 = (*(v3 + 424))();
    sub_1E32AE9B0(v4);
    OUTLINED_FUNCTION_28_3();
    if (v0 == 1)
    {
      v7 = 7;
      OUTLINED_FUNCTION_116_0();
      OUTLINED_FUNCTION_21();
      (*(v5 + 152))(&v7, v6, 0);
      sub_1E325F6F0(v6, &unk_1ECF296E0, &unk_1E4298030);
    }
  }
}

void sub_1E38795D4(void *a1)
{
  v3 = v1[3];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (([a1 isCancelled] & 1) == 0)
    {
      OUTLINED_FUNCTION_88_0();
      v7 = *(v6 + 920);
      v9 = v8;
      v10 = OUTLINED_FUNCTION_38();
      v11 = v7(v10);

      if (v11)
      {
        OUTLINED_FUNCTION_40_17();
        (*(v12 + 688))();
        v25 = 6;
        OUTLINED_FUNCTION_177();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C3D8, qword_1E42A6DE8);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_102_5(inited, xmmword_1E4297BE0);
        v14 = sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
        inited[4].n128_u64[0] = v14;
        inited[2].n128_u64[1] = v3;
        sub_1E3879330(v14, v15, v16);
        v17 = v3;
        v18 = sub_1E4205CB4();
        OUTLINED_FUNCTION_21();
        (*(v19 + 152))(&v25, v24, v18);

        sub_1E325F6F0(v24, &unk_1ECF296E0, &unk_1E4298030);
LABEL_8:

        return;
      }
    }

    v20 = [v3 view];
    if (v20)
    {
      v21 = v20;
      [v20 setNeedsLayout];

      v22 = [v3 view];
      if (v22)
      {
        v23 = v22;
        [v22 layoutIfNeeded];

        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1E387983C()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_14:
    OUTLINED_FUNCTION_192();
    return;
  }

  v2 = Strong;
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_88_0();
  v5 = *(v4 + 488);
  v7 = v6;
  v8 = OUTLINED_FUNCTION_38();
  v5(v8);

  OUTLINED_FUNCTION_36_3();
  (*((*v3 & v9) + 0x4D0))();
  OUTLINED_FUNCTION_36_3();
  v11 = (*((*v3 & v10) + 0x1A8))();
  v12 = sub_1E32AE9B0(v11);
  if (!v12)
  {
LABEL_12:
    v14 = 0;
LABEL_13:

    v20 = sub_1E3869DD4();
    OUTLINED_FUNCTION_36_3();
    v22 = (*((*v3 & v21) + 0x260))();
    (*(*v20 + 152))(v22 & 1);

    OUTLINED_FUNCTION_8();
    v24 = *(v23 + 192);

    v24(v14);

    goto LABEL_14;
  }

  v13 = v12;
  v14 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1E6911E60](v14, v11);
    }

    else
    {
      if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v15 = *(v11 + 8 * v14 + 32);
    }

    v16 = v15;
    OUTLINED_FUNCTION_21();
    v18 = (*(v17 + 552))();

    if (v18)
    {

      if (v16 == v18)
      {
        goto LABEL_13;
      }
    }

    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    ++v14;
    if (v19 == v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

double sub_1E3879AD4(void *a1)
{
  sub_1E4203E44();
  sub_1E4200FE4();

  return result;
}

double sub_1E3879B44()
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E386AD2C();

    sub_1E3CB8ACC();
  }

  return result;
}

uint64_t sub_1E3879BB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C498, &qword_1E42A6E80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3879C28()
{
  OUTLINED_FUNCTION_27_2();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C498, &qword_1E42A6E80);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_19_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_1E386DDA8();
}

void sub_1E3879D0C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1E386B3D4();
    v5 = v4;
    v6 = 0.0;
    if (v1)
    {
      v6 = 1.0;
    }

    [v4 setAlpha_];
  }
}

uint64_t sub_1E3879D88()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(v0, v1);
  return v0;
}

void sub_1E3879DE4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsFocusUpdate];
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 updateFocusIfNeeded];
  }
}

uint64_t sub_1E3879E68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E3879EB0()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1E386A170();
    v5 = v1 ^ 1u;
    sub_1E3D31490(v5);

    if (v5)
    {
      v7 = 0.0;
    }

    else
    {
      OUTLINED_FUNCTION_12_5();
      (*(v6 + 432))();
      v7 = 1.0;
    }

    sub_1E38746CC();
    OUTLINED_FUNCTION_88_0();
    v9 = *(v8 + 432);
    v11 = v10;
    v9(v5);

    v12 = sub_1E386B308();
    [v12 setAlpha_];

    [v3 setNeedsStatusBarAppearanceUpdate];
    [v3 setNeedsUpdateOfHomeIndicatorAutoHidden];
  }
}

unint64_t sub_1E387A028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2C4F0;
  if (!qword_1ECF2C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C4F0);
  }

  return result;
}

void sub_1E387A07C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_isDetailsContentsLoaded) = 1;
    OUTLINED_FUNCTION_64();
    if ((*(v4 + 608))())
    {
      OUTLINED_FUNCTION_2_4();
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v1;
      v6 = v3;
      v7 = v1;
      sub_1E3874870(1, sub_1E387A238, v5);
    }
  }
}

void sub_1E387A168(char a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_3_49();
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v2 + 1240))();
  }

  else
  {
    OUTLINED_FUNCTION_3_49();
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v3 + 1232))();
  }
}

id sub_1E387A238()
{
  v1 = *(v0 + 24);
  sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v2);
  OUTLINED_FUNCTION_2_4();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = v1;
  OUTLINED_FUNCTION_5_11();
  OUTLINED_FUNCTION_25();
  sub_1E3B02648();

  return [v4 setContentsDidLoad_];
}

uint64_t objectdestroy_35Tm()
{

  OUTLINED_FUNCTION_16_0();

  return swift_deallocObject();
}

void sub_1E387A358()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E387A3DC()
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      [v2 setNeedsLayout];

      v4 = [v1 view];
      if (v4)
      {
        [v4 layoutIfNeeded];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

double sub_1E387A498()
{
  sub_1E386AD2C();
  sub_1E3CB8C20();

  return result;
}

void sub_1E387A7D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_18;
  }

  v9 = Strong;
  if (a4)
  {
    sub_1E38776C0(0, a4, &aBlock, v8);
    if (*(&v127 + 1))
    {
      v10 = sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
      if ((OUTLINED_FUNCTION_109_3(v10, v11, v12, v10, v13, v14, v15, v16, v97, v100, v104, v107, v111, v115, v119, v122, aBlock, *(&aBlock + 1), v127, *(&v127 + 1), v128, v129, v130, v131, v132, v133, v134[0]) & 1) == 0)
      {
LABEL_17:

        goto LABEL_18;
      }

      v18 = *&v134[0];
      sub_1E38776C0(3, a4, &aBlock, v17);
      if (*(&v127 + 1))
      {
        if (OUTLINED_FUNCTION_109_3(v19, v20, v21, MEMORY[0x1E69E6370], v22, v23, v24, v25, v98, v101, v105, v108, v112, v116, v120, v123, aBlock, *(&aBlock + 1), v127, *(&v127 + 1), v128, v129, v130, v131, v132, v133, v134[0]))
        {
          v117 = v18;
          HIDWORD(v121) = LOBYTE(v134[0]);
          OUTLINED_FUNCTION_85();
          v26 += 53;
          v27 = *v26;
          v28 = (*v26)();
          v29 = sub_1E32AE9B0(v28);

          if (v29 <= 1)
          {
            sub_1E38746CC();
          }

          sub_1E38776C0(4, a4, &aBlock, v30);
          if (*(&v127 + 1))
          {
            v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
            v38 = OUTLINED_FUNCTION_109_3(v31, v32, v33, v31, v34, v35, v36, v37, v99, v102, v106, v109, v113, v18, v121, v124, aBlock, *(&aBlock + 1), v127, *(&v127 + 1), v128, v129, v130, v131, v132, v133, v134[0]);
            if (v38)
            {
              OUTLINED_FUNCTION_2_4();
              v38 = swift_allocObject();
              v39 = v38;
              *(v38 + 16) = v134[0];
              v40 = sub_1E387F690;
            }

            else
            {
              v40 = 0;
              v39 = 0;
            }

            v125 = v40;
          }

          else
          {
            v38 = sub_1E325F6F0(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
            v125 = 0;
            v39 = 0;
          }

          v41 = (v27)(v38);
          OUTLINED_FUNCTION_124_1(v41);
          if (v4 == 1)
          {
            v42 = MEMORY[0x1E69E7D40];
            OUTLINED_FUNCTION_88_0();
            v44 = *(v43 + 864);
            v45 = v39;
            v47 = v46;
            OUTLINED_FUNCTION_25();
            v44();

            OUTLINED_FUNCTION_4_0();
            v48 = swift_allocObject();
            OUTLINED_FUNCTION_105_2(v48);
            swift_unknownObjectWeakInit();
            OUTLINED_FUNCTION_5_10();
            v49 = swift_allocObject();
            v49[2] = v47;
            v49[3] = v125;
            v49[4] = v39;
            v50 = *((*v42 & *v9) + 0x260);
            v51 = sub_1E37FAED4(v125, v45);
            if (v50(v51))
            {
              OUTLINED_FUNCTION_2_4();
              v52 = swift_allocObject();
              *(v52 + 16) = sub_1E387E404;
              *(v52 + 24) = v49;
              v128 = sub_1E37D1918;
              v129 = v52;
              OUTLINED_FUNCTION_10_35();
              *(&aBlock + 1) = 1107296256;
              OUTLINED_FUNCTION_14_1();
              *&v127 = v53;
              *(&v127 + 1) = &block_descriptor_365;
              v54 = _Block_copy(&aBlock);
            }

            else
            {
              OUTLINED_FUNCTION_5_10();
              v70 = swift_allocObject();
              v70[2] = a1;
              v70[3] = sub_1E387E404;
              v70[4] = v49;
              v128 = sub_1E387E4E8;
              v129 = v70;
              OUTLINED_FUNCTION_10_35();
              *(&aBlock + 1) = 1107296256;
              OUTLINED_FUNCTION_14_1();
              *&v127 = v71;
              *(&v127 + 1) = &block_descriptor_353;
              v54 = _Block_copy(&aBlock);
              v72 = a1;
            }

            v73 = OUTLINED_FUNCTION_173_0();
            [v73 v74];
            _Block_release(v54);
            v75 = sub_1E386B444();
            sub_1E3874790(!v75, SBYTE4(v121));
            OUTLINED_FUNCTION_131_3();
            v77 = *(v76 + 128);
            v78 = (v77)(&aBlock);
            if (aBlock == 9 || (LOBYTE(v134[0]) = aBlock, v135 = 1, sub_1E387E680(v78, v79, v80), (sub_1E4205E84() & 1) == 0))
            {
              OUTLINED_FUNCTION_4_0();
              v81 = swift_allocObject();
              *(v81 + 16) = v9;
              v128 = sub_1E387E634;
              v129 = v81;
              OUTLINED_FUNCTION_10_35();
              *(&aBlock + 1) = 1107296256;
              OUTLINED_FUNCTION_14_1();
              *&v127 = v82;
              *(&v127 + 1) = &block_descriptor_359;
              v83 = _Block_copy(&aBlock);
              v84 = v9;

              v85 = OUTLINED_FUNCTION_173_0();
              [v85 v86];
              _Block_release(v83);
            }

            v77();

            sub_1E37FAED8(v125, v45);

            goto LABEL_39;
          }

          OUTLINED_FUNCTION_4_0();
          v55 = swift_allocObject();
          OUTLINED_FUNCTION_83_1(v55);
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_27_10();
          v56 = swift_allocObject();
          *(v56 + 16) = a4;
          *(v56 + 24) = v117;
          *(v56 + 32) = BYTE4(v121);
          *(v56 + 40) = a1;
          *(v56 + 48) = v125;
          *(v56 + 56) = v39;
          v114 = v56;
          sub_1E37FAED4(v125, v39);
          v57 = a1;

          v118 = v117;
          v58 = v27();
          OUTLINED_FUNCTION_124_1(v58);
          if (v4 > 2 || (OUTLINED_FUNCTION_85(), ((*(v59 + 608))() & 1) != 0))
          {
            OUTLINED_FUNCTION_25();
            swift_beginAccess();
            v60 = swift_unknownObjectWeakLoadStrong();
            if (v60)
            {
              v61 = *(v60 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView);
              v110 = v60;
              OUTLINED_FUNCTION_4_0();
              v62 = swift_allocObject();
              swift_unknownObjectWeakInit();
              OUTLINED_FUNCTION_10_9();
              v63 = v39;
              v64 = swift_allocObject();
              v64[2] = v62;
              v64[3] = v57;
              v65 = v125;
              v64[4] = v125;
              v64[5] = v63;
              v103 = *((*MEMORY[0x1E69E7D40] & *v61) + 0x360);
              sub_1E37FAED4(v125, v63);
              v66 = v57;
              v67 = v61;

              v68 = v118;
              v69 = BYTE4(v121);
              v103(v118, HIDWORD(v121), sub_1E387E3F8, v64);
              v39 = v63;

LABEL_38:
              v94 = sub_1E386B444();
              v95 = OUTLINED_FUNCTION_189_0(v94);
              sub_1E3874790(v95, v69);

              OUTLINED_FUNCTION_131_3();
              (*(v96 + 128))();
              sub_1E37FAED8(v65, v39);

LABEL_39:
              return;
            }

            v65 = v125;
            v69 = BYTE4(v121);
          }

          else
          {

            v135 = 7;
            memset(v134, 0, sizeof(v134));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C3D8, qword_1E42A6DE8);
            inited = swift_initStackObject();
            OUTLINED_FUNCTION_82_4(inited, xmmword_1E4297BE0);
            OUTLINED_FUNCTION_2_4();
            v88 = swift_allocObject();
            *(v88 + 16) = sub_1E387E2B8;
            *(v88 + 24) = v114;
            v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
            inited[4].n128_u64[0] = v89;
            inited[2].n128_u64[1] = sub_1E37D1918;
            inited[3].n128_u64[0] = v88;
            sub_1E3879330(v89, v90, v91);

            v92 = sub_1E4205CB4();
            OUTLINED_FUNCTION_131_3();
            (*(v93 + 152))(&v135, v134, v92);

            sub_1E325F6F0(v134, &unk_1ECF296E0, &unk_1E4298030);
            v65 = v125;
            v69 = BYTE4(v121);
          }

          v68 = v118;
          goto LABEL_38;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {

    aBlock = 0u;
    v127 = 0u;
  }

  sub_1E325F6F0(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
LABEL_18:
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x80))();
}

void sub_1E387B2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v7 = Strong;
  if (a4)
  {
    sub_1E38776C0(0, a4, &v55, v6);
    if (*(&v56 + 1))
    {
      v8 = sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
      if ((OUTLINED_FUNCTION_106_4(&v53, &v55, v9, v8) & 1) == 0)
      {
LABEL_15:

        goto LABEL_16;
      }

      v11 = v53;
      sub_1E38776C0(1, a4, &v55, v10);
      if (*(&v56 + 1))
      {
        if (OUTLINED_FUNCTION_106_4(&v53, &v55, v12, MEMORY[0x1E69E6530]))
        {
          v14 = v53;
          sub_1E38776C0(4, a4, &v55, v13);
          if (*(&v56 + 1))
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
            if (OUTLINED_FUNCTION_106_4(&v53, &v55, v16, v15))
            {
              OUTLINED_FUNCTION_2_4();
              v52 = swift_allocObject();
              *(v52 + 16) = v53;
              v17 = sub_1E387F690;
            }

            else
            {
              v17 = 0;
              v52 = 0;
            }

            v51 = v17;
          }

          else
          {
            sub_1E325F6F0(&v55, &unk_1ECF296E0, &unk_1E4298030);
            v51 = 0;
            v52 = 0;
          }

          OUTLINED_FUNCTION_21();
          *&v53 = (*(v19 + 264))();
          v50 = v14;
          *&v55 = v14;
          BYTE8(v55) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C4F8, &qword_1E42A6EC8);
          OUTLINED_FUNCTION_0_32();
          sub_1E32752B0(v20, &qword_1ECF2C4F8, &qword_1E42A6EC8, v21);
          sub_1E38D2054(&v55, &v54);
          v22 = v54;

          if (v22)
          {
            OUTLINED_FUNCTION_88_0();
            v24 = *(v23 + 920);
            v26 = v25;
            v27 = v24(v22);

            if (v27)
            {
              v49 = v27;
              OUTLINED_FUNCTION_45();
              v29 = *(v28 + 328);
              v30 = v22;
              v31 = v29();

              if (v31 && (v31, v22 == v31))
              {
                v32 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController;
                OUTLINED_FUNCTION_3_0(&v7[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController], &v55);
                v33 = *&v7[v32];
                *&v7[v32] = v11;
                v34 = v11;

                OUTLINED_FUNCTION_88_0();
                v36 = *(v35 + 856);
                v38 = v37;
                v36(v34, v50, 0);

                v39 = v49;
              }

              else
              {
                v40 = v7;
                [v40 addChildViewController_];
                [v11 didMoveToParentViewController_];

                v41 = OUTLINED_FUNCTION_51_1();
                v39 = v49;
                (*((*MEMORY[0x1E69E7D40] & *v49) + 0x2C0))(v11, v41 & 1);
              }

              if (v51)
              {

                (v51)(v42);
                v43 = OUTLINED_FUNCTION_123_1();
                sub_1E37FAED8(v43, v44);
              }

              OUTLINED_FUNCTION_12_5();
              OUTLINED_FUNCTION_65_7();
              v45();

              v46 = OUTLINED_FUNCTION_123_1();
              goto LABEL_32;
            }
          }

          OUTLINED_FUNCTION_18_1();
          OUTLINED_FUNCTION_65_7();
          v48();
          v46 = v51;
          v47 = v52;
LABEL_32:
          sub_1E37FAED8(v46, v47);

          return;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {

    v55 = 0u;
    v56 = 0u;
  }

  sub_1E325F6F0(&v55, &unk_1ECF296E0, &unk_1E4298030);
LABEL_16:
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_65_7();
  v18();
}

void sub_1E387B81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_93_1();
  a29 = v31;
  a30 = v32;
  v34 = v33;
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    if (v34)
    {
      v43 = sub_1E38776C0(3, v34, &a12, v36);
      if (a14)
      {
        if (OUTLINED_FUNCTION_110_2(v38, v39, v40, MEMORY[0x1E69E6370], v41, v42, v43))
        {
          v68 = a11;
          goto LABEL_10;
        }

LABEL_9:
        v68 = 0;
LABEL_10:
        v51 = sub_1E38776C0(1, v34, &a12, v44);
        if (a14)
        {
          v52 = OUTLINED_FUNCTION_110_2(v46, v47, v48, MEMORY[0x1E69E6530], v49, v50, v51);
          if (v52)
          {
            v54 = a11;
          }

          else
          {
            v54 = 0;
          }

          v55 = v52 ^ 1u;
          goto LABEL_18;
        }

LABEL_16:
        sub_1E325F6F0(&a12, &unk_1ECF296E0, &unk_1E4298030);
        if (!v34)
        {
          v61 = v30;
          v54 = 0;
          OUTLINED_FUNCTION_148_1();
          v55 = 1;
          goto LABEL_23;
        }

        v54 = 0;
        v55 = 1;
LABEL_18:
        sub_1E38776C0(4, v34, &a12, v53);
        if (a14)
        {
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
          v61 = v30;
          if (OUTLINED_FUNCTION_110_2(v56, v57, v58, v56, v59, v60))
          {
            OUTLINED_FUNCTION_2_4();
            v62 = swift_allocObject();
            *(v62 + 16) = a11;
            v63 = sub_1E387F690;
LABEL_25:
            v64 = *&v37[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView];
            v65 = *((*MEMORY[0x1E69E7D40] & *v64) + 0x350);
            v66 = *&v37[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_ghostPlayerViewController];
            v67 = v64;
            v65(v66, v54, v55, v68, v63, v62);

            sub_1E37FAED8(v63, v62);
            *v61 = 2;
            goto LABEL_26;
          }

LABEL_24:
          v63 = 0;
          v62 = 0;
          goto LABEL_25;
        }

        v61 = v30;
LABEL_23:
        sub_1E325F6F0(&a12, &unk_1ECF296E0, &unk_1E4298030);
        goto LABEL_24;
      }
    }

    else
    {
      OUTLINED_FUNCTION_148_1();
    }

    sub_1E325F6F0(&a12, &unk_1ECF296E0, &unk_1E4298030);
    if (!v34)
    {
      v68 = 0;
      OUTLINED_FUNCTION_148_1();
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_154();
  (*(v45 + 128))();
LABEL_26:
  OUTLINED_FUNCTION_94_0();
}

void sub_1E387BFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_93_1();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    OUTLINED_FUNCTION_45();
    (*(v41 + 128))();
    goto LABEL_17;
  }

  v38 = Strong;
  if (v33)
  {
    sub_1E38776C0(3, v33, &a12, v37);
    if (a14)
    {
      OUTLINED_FUNCTION_106_4(&a11, &a12, v39, MEMORY[0x1E69E6370]);
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_148_1();
  }

  sub_1E325F6F0(&a12, &unk_1ECF296E0, &unk_1E4298030);
  if (!v33)
  {
    OUTLINED_FUNCTION_148_1();
    goto LABEL_12;
  }

LABEL_9:
  sub_1E38776C0(4, v33, &a12, v40);
  if (a14)
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
    if (OUTLINED_FUNCTION_106_4(&a11, &a12, v43, v42))
    {
      OUTLINED_FUNCTION_2_4();
      *(swift_allocObject() + 16) = a11;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_1E325F6F0(&a12, &unk_1ECF296E0, &unk_1E4298030);
LABEL_13:
  v44 = sub_1E386A9A8();
  if (v44)
  {
    v45 = v44;
    v46 = *((*MEMORY[0x1E69E7D40] & *v44) + 0x1F8);
    v53 = v35;
    v47 = *&v38[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView];
    v46();
    OUTLINED_FUNCTION_129_1();
    OUTLINED_FUNCTION_166_0();
    v48();
    v49 = OUTLINED_FUNCTION_124();
    sub_1E37FAED8(v49, v50);

    v35 = v53;
    v38 = v45;
  }

  else
  {
    v51 = OUTLINED_FUNCTION_124();
    sub_1E37FAED8(v51, v52);
  }

  *v35 = 3;
LABEL_17:
  OUTLINED_FUNCTION_94_0();
}

uint64_t sub_1E387C618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a1;
  OUTLINED_FUNCTION_21_31(a1, a2, a3, a4, a5, a6, a7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    OUTLINED_FUNCTION_85();
    return (*(v33 + 128))();
  }

  v11 = Strong;
  if (!a4)
  {
    OUTLINED_FUNCTION_25_4();
    goto LABEL_8;
  }

  v12 = OUTLINED_FUNCTION_90_3();
  sub_1E38776C0(v12, a4, v14, v13);
  if (!v45)
  {
LABEL_8:
    sub_1E325F6F0(v44, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
  if (!OUTLINED_FUNCTION_49_12(v15, v16, v17, v15, v18, v19, v20, v21, v42, v43, v44[0]))
  {
LABEL_9:
    v32 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_4();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_84_7(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v32 = sub_1E387F690;
LABEL_10:
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_4();
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = v9;
  v36 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x478);
  v37 = OUTLINED_FUNCTION_74();
  sub_1E37FAED4(v37, v38);
  v39 = OUTLINED_FUNCTION_187();
  v36(v39);

  v40 = OUTLINED_FUNCTION_74();
  sub_1E37FAED8(v40, v41);

  result = MEMORY[0x1E69144A0](v44);
  *v7 = 0;
  return result;
}

uint64_t sub_1E387C7E4@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_25_4();
    goto LABEL_6;
  }

  v5 = OUTLINED_FUNCTION_90_3();
  sub_1E38776C0(v5, v7, v8, v6);
  if (!v42)
  {
LABEL_6:
    sub_1E325F6F0(v41, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
  if (OUTLINED_FUNCTION_49_12(v9, v10, v11, v9, v12, v13, v14, v15, v40[0], v40[1], v41[0]))
  {
    OUTLINED_FUNCTION_2_4();
    v16 = swift_allocObject();
    OUTLINED_FUNCTION_84_7(v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
    v26 = sub_1E387F690;
    goto LABEL_8;
  }

LABEL_7:
  v26 = 0;
  v2 = 0;
LABEL_8:
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = v2;
    v30 = *((*MEMORY[0x1E69E7D40] & *v28) + 0x478);
    v31 = OUTLINED_FUNCTION_39_3();
    sub_1E37FAED4(v31, v32);
    v33 = OUTLINED_FUNCTION_157_1();
    v30(v33);

    v34 = OUTLINED_FUNCTION_39_3();
    sub_1E37FAED8(v34, v35);

    result = MEMORY[0x1E69144A0](v40);
    *a2 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_147_1();
    v37();
    v38 = OUTLINED_FUNCTION_39_3();
    return sub_1E37FAED8(v38, v39);
  }

  return result;
}

uint64_t sub_1E387C9C0@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_25_4();
    goto LABEL_6;
  }

  v5 = OUTLINED_FUNCTION_90_3();
  sub_1E38776C0(v5, v7, v8, v6);
  if (!v42)
  {
LABEL_6:
    sub_1E325F6F0(v41, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
  if (OUTLINED_FUNCTION_49_12(v9, v10, v11, v9, v12, v13, v14, v15, v40[0], v40[1], v41[0]))
  {
    OUTLINED_FUNCTION_2_4();
    v16 = swift_allocObject();
    OUTLINED_FUNCTION_84_7(v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
    v26 = sub_1E387F690;
    goto LABEL_8;
  }

LABEL_7:
  v26 = 0;
  v2 = 0;
LABEL_8:
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = v2;
    v30 = *((*MEMORY[0x1E69E7D40] & *v28) + 0x478);
    v31 = OUTLINED_FUNCTION_39_3();
    sub_1E37FAED4(v31, v32);
    v33 = OUTLINED_FUNCTION_157_1();
    v30(v33);

    v34 = OUTLINED_FUNCTION_39_3();
    sub_1E37FAED8(v34, v35);

    result = MEMORY[0x1E69144A0](v40);
    *a2 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_147_1();
    v37();
    v38 = OUTLINED_FUNCTION_39_3();
    return sub_1E37FAED8(v38, v39);
  }

  return result;
}

void sub_1E387CB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_23_26(v5, v6, v7, v8, v9, v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_65_7();
    v29();
    return;
  }

  v13 = Strong;
  if (!a4)
  {
    OUTLINED_FUNCTION_25_4();
    goto LABEL_10;
  }

  v14 = OUTLINED_FUNCTION_176_1();
  sub_1E38776C0(v14, a4, v16, v15);
  if (!v35)
  {
LABEL_10:
    sub_1E325F6F0(v34, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_11;
  }

  v17 = sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
  OUTLINED_FUNCTION_26_13(v17, v18, v19, v17, v20, v21, v22, v23, v31, v32);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_45();
    v25 = (*(v24 + 576))();
    if (v25)
    {
      v26 = v25;
      v27 = v13;
      [v26 multiPlayerViewController:v27 didSelectPlayerViewController:v33];
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_65_7();
    v28();

    goto LABEL_12;
  }

LABEL_11:
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_65_7();
  v30();
LABEL_12:
}

void sub_1E387CD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v8 = Strong;
  if (!a4)
  {

    aBlock = 0u;
    v68 = 0u;
LABEL_10:
    sub_1E325F6F0(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
LABEL_12:
    OUTLINED_FUNCTION_154();
    (*(v16 + 128))();
    return;
  }

  sub_1E38776C0(0, a4, &aBlock, v7);
  if (!*(&v68 + 1))
  {

    goto LABEL_10;
  }

  v9 = sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
  if ((OUTLINED_FUNCTION_106_4(v71, &aBlock, v10, v9) & 1) == 0)
  {

    goto LABEL_12;
  }

  v12 = *&v71[0];
  sub_1E38776C0(4, a4, &aBlock, v11);
  if (*(&v68 + 1))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
    if (OUTLINED_FUNCTION_106_4(v71, &aBlock, v14, v13))
    {
      OUTLINED_FUNCTION_2_4();
      v15 = swift_allocObject();
      *(v15 + 16) = v71[0];
      v62 = sub_1E387F690;
      v63 = v15;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1E325F6F0(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
  }

  v62 = 0;
  v63 = 0;
LABEL_15:
  v17 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_88_0();
  v19 = *(v18 + 920);
  v21 = v20;
  v22 = v19(v12);

  OUTLINED_FUNCTION_4_0();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = v12;
  v25 = [v24 view];
  if (!v25)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v26 = v25;
  v27 = [v25 snapshotViewAfterScreenUpdates_];

  if (v27)
  {
    v28 = [v24 view];
    if (!v28)
    {
LABEL_41:
      __break(1u);
      return;
    }

    v29 = v28;
    [v28 frame];
    OUTLINED_FUNCTION_3();

    v30 = OUTLINED_FUNCTION_6();
    [v31 v32];
    if (v22)
    {
      [v22 addSubview_];
    }

    *(v23 + 16) = v27;
  }

  v33 = [v24 view];
  if (!v33)
  {
    goto LABEL_39;
  }

  v34 = v33;
  v61 = v22;
  [v33 removeFromSuperview];

  [v24 removeFromParentViewController];
  [v24 didMoveToParentViewController_];
  v35 = [v24 vuiView];

  if (!v35)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v35 setAccessibilityElementsHidden_];

  OUTLINED_FUNCTION_67_1();
  (*((*v17 & v36) + 0x4D8))();
  v37 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController;
  OUTLINED_FUNCTION_3_0(&v8[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController], v71);
  v38 = *&v8[v37];
  *&v8[v37] = v24;
  v39 = v24;

  OUTLINED_FUNCTION_88_0();
  v41 = *(v40 + 896);
  v43 = v42;
  v41(v24);

  OUTLINED_FUNCTION_67_1();
  v45 = (*((*v17 & v44) + 0x1A8))();
  v46 = sub_1E32AE9B0(v45);
  if (!v46)
  {
    goto LABEL_35;
  }

  v47 = v46;
  v48 = 0;
  while (1)
  {
    if ((v45 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x1E6911E60](v48, v45);
      swift_unknownObjectRelease();
      if (v49 == v39)
      {
        break;
      }

      goto LABEL_30;
    }

    if (v48 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    if (*(v45 + 8 * v48 + 32) == v39)
    {
      break;
    }

LABEL_30:
    v50 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    ++v48;
    if (v50 == v47)
    {
      goto LABEL_35;
    }
  }

  v66 = sub_1E3EBABAC();
  v64 = v48;
  v65 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  OUTLINED_FUNCTION_0_32();
  sub_1E32752B0(v51, &qword_1ECF2C420, &qword_1E429CDD0, v52);
  v45 = &v66;
  sub_1E38D2054(&v64, &aBlock);
  v53 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    v54 = aBlock;

    v45 = v8;
    sub_1E3869DD4();
    OUTLINED_FUNCTION_30();
    (*(v55 + 224))(v54, v53, v48);
  }

LABEL_35:

  OUTLINED_FUNCTION_4_0();
  v56 = swift_allocObject();
  OUTLINED_FUNCTION_105_2(v56);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_89();
  v57 = swift_allocObject();
  v57[2] = v45;
  v57[3] = v39;
  v57[4] = v23;
  v57[5] = v62;
  v57[6] = v63;
  v69 = sub_1E387DEF4;
  v70 = v57;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v68 = sub_1E329EEC4;
  *(&v68 + 1) = &block_descriptor_272;
  v58 = _Block_copy(&aBlock);
  v59 = v39;
  v60 = v61;

  sub_1E37FAED4(v62, v63);

  [v59 showFullScreenPresentationFromView:v60 completion:v58];

  sub_1E37FAED8(v62, v63);
  _Block_release(v58);

  *v4 = 6;
}

void sub_1E387D46C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_21_31(a1, a2, a3, a4, a5, a6, a7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v12 = Strong;
  if (!a4)
  {

    OUTLINED_FUNCTION_116_0();
LABEL_10:
    sub_1E325F6F0(&v19, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_11;
  }

  sub_1E38776C0(0, a4, &v19, v11);
  if (!v21)
  {

    goto LABEL_10;
  }

  sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
  if (swift_dynamicCast())
  {
    v13 = v24;
    OUTLINED_FUNCTION_4_0();
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_141_0(v14);
    v22 = sub_1E387DE40;
    v23 = v14;
    *&v19 = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_62_8();
    v20 = v15;
    v21 = &block_descriptor_262;
    v16 = _Block_copy(&v19);

    [a1 executeBlockAfterCurrentStateTransition_];
    _Block_release(v16);
    OUTLINED_FUNCTION_26_3();
    v18 = (*((*MEMORY[0x1E69E7D40] & v17) + 0x240))();
    if (!v18)
    {

      goto LABEL_11;
    }

    [v18 multiPlayerViewController:v12 didEnterFullscreenWithPlayerViewController:v13];
    swift_unknownObjectRelease();
  }

LABEL_11:
  *v7 = 3;
}

void sub_1E387D658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_21_31(a1, a2, a3, a4, a5, a6, a7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a4)
    {
      v11 = OUTLINED_FUNCTION_176_1();
      sub_1E38776C0(v11, a4, v13, v12);
      if (v29)
      {
        v14 = sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
        OUTLINED_FUNCTION_26_13(v14, v15, v16, v14, v17, v18, v19, v20, v25, v26);
        if (swift_dynamicCast())
        {
          v21 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController;
          OUTLINED_FUNCTION_3_0(&v10[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController], v28);
          v22 = *&v10[v21];
          *&v10[v21] = v27;
          v23 = v27;

          sub_1E386A094();
          OUTLINED_FUNCTION_7_5();
          (*((*MEMORY[0x1E69E7D40] & v24) + 0x168))(v23);
        }

        else
        {
        }

        goto LABEL_10;
      }
    }

    else
    {

      OUTLINED_FUNCTION_25_4();
    }

    sub_1E325F6F0(v28, &unk_1ECF296E0, &unk_1E4298030);
  }

LABEL_10:
  *v7 = 3;
}

void sub_1E387D7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_21_31(a1, a2, a3, a4, a5, a6, a7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_147_1();
    v32();
    return;
  }

  v10 = Strong;
  if (!a4)
  {
    OUTLINED_FUNCTION_25_4();
    goto LABEL_8;
  }

  v11 = OUTLINED_FUNCTION_90_3();
  sub_1E38776C0(v11, a4, v13, v12);
  if (!v51)
  {
LABEL_8:
    sub_1E325F6F0(v50, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
  if (OUTLINED_FUNCTION_49_12(v14, v15, v16, v14, v17, v18, v19, v20, v48, v49, v50[0]))
  {
    OUTLINED_FUNCTION_2_4();
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_89_1(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
    v31 = sub_1E387F690;
    goto LABEL_10;
  }

LABEL_9:
  v31 = 0;
  v21 = 0;
LABEL_10:
  v33 = (v10 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_exitFullscreenCompletion);
  v34 = *(v10 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_exitFullscreenCompletion);
  v35 = *(v10 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_exitFullscreenCompletion + 8);
  *v33 = v31;
  v33[1] = v21;
  v36 = OUTLINED_FUNCTION_124();
  sub_1E37FAED4(v36, v37);
  v38 = sub_1E37FAED8(v34, v35);
  v39 = (*((*MEMORY[0x1E69E7D40] & *v10) + 0x148))(v38);
  if (v39)
  {
    v40 = v39;
    [v39 setShowsPlaybackControls_];
    v41 = OUTLINED_FUNCTION_184_0();
    [v41 v42];
    v43 = OUTLINED_FUNCTION_124();
    sub_1E37FAED8(v43, v44);

    *v7 = 7;
  }

  else
  {
    OUTLINED_FUNCTION_40_17();
    OUTLINED_FUNCTION_147_1();
    v45();
    v46 = OUTLINED_FUNCTION_124();
    sub_1E37FAED8(v46, v47);
  }
}

void sub_1E387D9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, void *a11, void *(*a12)(), void *a13, uint64_t a14, void *a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_93_1();
  a29 = v30;
  a30 = v33;
  v34 = v32;
  v36 = v35;
  v38 = v37;
  if (!v32)
  {
    OUTLINED_FUNCTION_116_0();
    goto LABEL_6;
  }

  sub_1E38776C0(4, v32, &a9, v31);
  if (!a11)
  {
LABEL_6:
    sub_1E325F6F0(&a9, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_2_4();
    v39 = swift_allocObject();
    *(v39 + 16) = a16;
    v40 = sub_1E387DE18;
    goto LABEL_8;
  }

LABEL_7:
  v40 = 0;
  v39 = 0;
LABEL_8:
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v43 = Strong;
  if (!v34)
  {

    OUTLINED_FUNCTION_116_0();
LABEL_15:
    sub_1E325F6F0(&a9, &unk_1ECF296E0, &unk_1E4298030);
LABEL_16:
    if (!v40)
    {
LABEL_18:
      OUTLINED_FUNCTION_85();
      (*(v58 + 128))();
      v59 = OUTLINED_FUNCTION_53();
      sub_1E37FAED8(v59, v60);
      goto LABEL_19;
    }

LABEL_17:

    (v40)(v55);
    v56 = OUTLINED_FUNCTION_53();
    sub_1E37FAED8(v56, v57);
    goto LABEL_18;
  }

  sub_1E38776C0(0, v34, &a9, v42);
  if (!a11)
  {

    goto LABEL_15;
  }

  sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
  if ((swift_dynamicCast() & 1) == 0)
  {

    if (!v40)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v44 = a15;
  OUTLINED_FUNCTION_10_9();
  v45 = swift_allocObject();
  v45[2] = v43;
  v45[3] = v44;
  v45[4] = v40;
  v45[5] = v39;
  a12 = sub_1E387DCCC;
  a13 = v45;
  *&a9 = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_62_8();
  a10 = v46;
  a11 = &block_descriptor_251;
  v47 = _Block_copy(&a9);
  v48 = v43;
  v49 = v44;
  v50 = OUTLINED_FUNCTION_53();
  sub_1E37FAED4(v50, v51);

  [v36 executeBlockAfterCurrentStateTransition_];
  _Block_release(v47);
  v52 = (*((*MEMORY[0x1E69E7D40] & *v48) + 0x260))();

  v53 = OUTLINED_FUNCTION_53();
  sub_1E37FAED8(v53, v54);
  *v38 = v52 & 1;
LABEL_19:
  OUTLINED_FUNCTION_94_0();
}

void *sub_1E387DCCC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController;
  OUTLINED_FUNCTION_3_0(&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController], v14);
  v5 = *&v1[v4];
  *&v1[v4] = 0;

  v6 = &v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_exitFullscreenCompletion];
  v7 = *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_exitFullscreenCompletion];
  if (v7)
  {
    v8 = v6[1];

    v7(v9);
    sub_1E37FAED8(v7, v8);
    v10 = *v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[1];
  *v6 = 0;
  v6[1] = 0;
  sub_1E37FAED8(v10, v11);
  [v1 setNeedsFocusUpdate];
  [v1 updateFocusIfNeeded];
  OUTLINED_FUNCTION_67_1();
  result = (*((*MEMORY[0x1E69E7D40] & v12) + 0x240))();
  if (result)
  {
    [result multiPlayerViewController:v1 didExitFullscreenWithPlayerViewController:v2];
    result = swift_unknownObjectRelease();
  }

  if (v3)
  {
    return v3(result);
  }

  return result;
}

void sub_1E387DE40()
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    if ((*(v1 + 664))())
    {
      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_25();
      v2();
    }
  }
}

void sub_1E387DEF4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [v1 setShowsPlaybackControls_];
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 setUserInteractionEnabled_];

      [v1 setDelegate_];
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v8 = *(v2 + 16);
      if (v8)
      {
        [v8 removeFromSuperview];
      }

      v9 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView;
      v10 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_88_0();
      v12 = *(v11 + 904);
      v14 = v13;
      v12(v1);

      v25 = 4;
      OUTLINED_FUNCTION_177();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C3D8, qword_1E42A6DE8);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_102_5(inited, xmmword_1E4297BE0);
      v16 = sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
      inited[4].n128_u64[0] = v16;
      inited[2].n128_u64[1] = v1;
      sub_1E3879330(v16, v17, v18);
      v19 = v1;
      v20 = sub_1E4205CB4();
      OUTLINED_FUNCTION_21();
      (*(v21 + 152))(&v25, v24, v20);

      v22 = sub_1E325F6F0(v24, &unk_1ECF296E0, &unk_1E4298030);
      if (v3)
      {
        v3(v22);
      }

      [*&v5[v9] setNeedsLayout];
      [*&v5[v9] layoutIfNeeded];
      sub_1E386A094();
      OUTLINED_FUNCTION_7_5();
      (*((*v10 & v23) + 0x168))(v19);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t objectdestroy_225Tm()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

uint64_t sub_1E387E1E4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1E387E214()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    OUTLINED_FUNCTION_64();
    (*(v6 + 1112))(v1, v3, v2);
  }
}

void sub_1E387E2B8()
{
  OUTLINED_FUNCTION_194();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView);
    OUTLINED_FUNCTION_4_0();
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v9);
    OUTLINED_FUNCTION_10_9();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v3;
    v10[4] = v4;
    v10[5] = v5;
    v11 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x360);
    v12 = v8;

    v13 = v3;
    sub_1E37FAED4(v4, v5);
    v11(v1, v2, sub_1E387F6D0, v10);
  }

  OUTLINED_FUNCTION_192();
}

void sub_1E387E404()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1E3869DD4();
    OUTLINED_FUNCTION_85();
    v6 = (*(v5 + 608))();
    (*(*v4 + 152))(v6 & 1);

    if (v1)
    {
      v1(v7);
    }
  }
}

uint64_t sub_1E387E4E8()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v12 = 7;
  OUTLINED_FUNCTION_177();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C3D8, qword_1E42A6DE8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_82_4(inited, xmmword_1E4297BE0);
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
  inited[4].n128_u64[0] = v5;
  inited[2].n128_u64[1] = sub_1E37D1918;
  inited[3].n128_u64[0] = v4;
  sub_1E3879330(v5, v6, v7);

  v8 = sub_1E4205CB4();
  OUTLINED_FUNCTION_21();
  (*(v9 + 152))(&v12, v11, v8);

  return sub_1E325F6F0(v11, &unk_1ECF296E0, &unk_1E4298030);
}

id sub_1E387E634()
{
  v1 = *(v0 + 16);
  [v1 setNeedsFocusUpdate];

  return [v1 updateFocusIfNeeded];
}

unint64_t sub_1E387E680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2C508;
  if (!qword_1ECF2C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C508);
  }

  return result;
}

uint64_t objectdestroy_303Tm()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

void sub_1E387E720()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_1E386B444();
  v4 = OUTLINED_FUNCTION_189_0(v3);
  sub_1E3874790(v4, v1);
  v5 = sub_1E3869DD4();
  OUTLINED_FUNCTION_67_1();
  v7 = (*((*MEMORY[0x1E69E7D40] & v6) + 0x260))();
  (*(*v5 + 152))(v7 & 1);

  if (v2)
  {
    v2(v8);
  }
}

id sub_1E387E80C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView);
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

void sub_1E387E864()
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    if ((*(v1 + 608))())
    {
      OUTLINED_FUNCTION_169();
      sub_1E3874870(v2, v3, v4);
    }
  }
}

uint64_t sub_1E387E8EC()
{
  OUTLINED_FUNCTION_27_2();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C510, &qword_1E42A6ED0);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_19_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_1E386FB54();
}

void sub_1E387E9D0()
{
  OUTLINED_FUNCTION_194();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView);
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_26_3();
    (*((*MEMORY[0x1E69E7D40] & v6) + 0x358))(v1, 0, v7 & 1);

    *&v4[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_presentationPlayerViewControllers] = 0;

    v8 = sub_1E32AE9B0(v2);
    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {

        goto LABEL_15;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E6911E60](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(v2 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_21();
      v13 = (*(v12 + 920))(v11);
      if (v13)
      {
        v14 = v13;
        OUTLINED_FUNCTION_85();
        if ((*(v15 + 576))())
        {
          [v14 frame];
          v16 = OUTLINED_FUNCTION_121();
          [v16 v17];
          swift_unknownObjectRelease();
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_15:
    OUTLINED_FUNCTION_192();
  }
}

uint64_t sub_1E387EC0C()
{
  OUTLINED_FUNCTION_27_2();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34700, &qword_1E42A6EF8);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_19_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_1E386F488();
}

void sub_1E387ECF0()
{
  v1 = [*(v0 + 16) view];
  if (v1)
  {
    v2 = v1;
    v3 = *(MEMORY[0x1E695EFD0] + 16);
    v4[0] = *MEMORY[0x1E695EFD0];
    v4[1] = v3;
    v4[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v1 setTransform_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E387ED78(uint64_t a1, double a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_64();
    v12 = (*(v11 + 424))();
    v13 = sub_1E32AE9B0(v12);

    if (v13 >= 2)
    {
      v54 = a3;
      OUTLINED_FUNCTION_18_1();
      v14 += 72;
      v15 = *v14;
      v16 = (*v14)();
      if (v16)
      {
        [v16 detailsViewHeightForMultiPlayerViewController_];
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0.0;
      }

      OUTLINED_FUNCTION_8();
      (*(v19 + 1712))();
      OUTLINED_FUNCTION_30();
      (*(v20 + 176))(v55);
      v21 = *&v55[2];

      v22 = *(MEMORY[0x1E69DDCE0] + 16);
      if (v56)
      {
        v23 = *(MEMORY[0x1E69DDCE0] + 16);
      }

      else
      {
        v23 = v21;
      }

      OUTLINED_FUNCTION_8();
      (*(v24 + 1736))();
      OUTLINED_FUNCTION_30();
      (*(v25 + 176))(v57);
      v26 = *&v57[2];

      if (v58)
      {
        v27 = v22;
      }

      else
      {
        v27 = v26;
      }

      v28 = v18 + v27;
      v29 = sub_1E386B308();
      [v29 frame];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v59.origin.x = v31;
      v59.origin.y = v33;
      v59.size.width = v35;
      v59.size.height = v37;
      v38 = v23 + CGRectGetMaxY(v59);
      v39 = *((*v10 & *v9) + 0x260);
      if (v39())
      {
        v38 = v28;
      }

      if ((a1 - 3) < 2)
      {
        OUTLINED_FUNCTION_18_1();
        v51 = (*(v50 + 1232))();
        sub_1E387057C(v51, v54, v52, a5, v18 * 0.333333333);
      }

      else if (a1 == 2)
      {
        if ((v39() & 1) != 0 && v54 > 0.0 || (v39() & 1) == 0 && v54 < 0.0)
        {
          sub_1E3870360(v53, v54, -v38);
        }
      }

      else if (a1 == 1)
      {
        OUTLINED_FUNCTION_18_1();
        (*(v40 + 1240))();
        v41 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_detailsViewController;
        v42 = *(v9 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_detailsViewController);
        if (v42)
        {
          v43 = [v42 view];
          if (!v43)
          {
            __break(1u);
            return;
          }

          v44 = v43;
          [v43 setHidden_];
        }

        if ((v39() & 1) == 0)
        {
          v45 = *(v9 + v41);
          if (v45)
          {
            v46 = v45;
            if (v15())
            {
              v47 = v9;
              v48 = OUTLINED_FUNCTION_123_3();
              [v48 v49];
              swift_unknownObjectRelease();
            }

            else
            {
            }
          }
        }
      }
    }
  }
}

uint64_t objectdestroy_404Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  swift_unknownObjectRelease();
  (*(v5 + 8))(v2 + v6, v3);

  return swift_deallocObject();
}

uint64_t sub_1E387F2AC()
{
  OUTLINED_FUNCTION_27_2();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C558, &unk_1E42C0DE0);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_19_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_1E386EDA8();
}

void sub_1E387F390()
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v2 = Strong;
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 552))();
  if (v4)
  {
    v0 = v4;
LABEL_9:
    if (v0 != *&v2[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_ghostPlayerViewController])
    {
      OUTLINED_FUNCTION_12_5();
      OUTLINED_FUNCTION_169();
      v8();

LABEL_15:
      return;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_12_5();
  v6 = (*(v5 + 424))();
  if (!sub_1E32AE9B0(v6))
  {

LABEL_13:

LABEL_14:
    v0 = [objc_opt_self() sharedInstance];
    [v0 dismissPlaybackAnimated:1 leaveGroupActivitySession:1 completion:0];
    goto LABEL_15;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v6);
    goto LABEL_8;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_8:
    OUTLINED_FUNCTION_28_3();
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1E387F548()
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v1 + 1232))();
  }
}

void sub_1E387F5C0()
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v1 + 1240))();
  }
}

uint64_t OUTLINED_FUNCTION_32_26(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_77_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1E37748D8(0, 0, v4, a4, v5);
}

uint64_t OUTLINED_FUNCTION_80_3(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E69E8868];

  return sub_1E32752B0(a1, a2, a3, v4);
}

__n128 *OUTLINED_FUNCTION_82_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 4;
  return result;
}

__n128 OUTLINED_FUNCTION_84_7(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  return result;
}

void OUTLINED_FUNCTION_103_3()
{
  v1 = *(v0 + 26);
  v2 = *(v0 + 128) + *(v0 + 28);
  *v2 = *(v0 + 192);
  *(v2 + 8) = v1;
}

uint64_t OUTLINED_FUNCTION_106_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_107_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_108_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_109_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_110_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_111_1()
{

  return sub_1E4206544();
}

double OUTLINED_FUNCTION_117_2@<D0>(char a1@<W8>)
{
  *(v1 - 225) = a1;
  result = 0.0;
  *(v1 - 256) = 0u;
  *(v1 - 272) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_133_3(uint64_t result, uint64_t a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_162_2(uint64_t a1)
{
  *(v1 + 136) = a1;

  return sub_1E4206424();
}

id OUTLINED_FUNCTION_165_2()
{

  return [v0 (v1 + 2808)];
}

void *OUTLINED_FUNCTION_195(int a1, int a2, int a3, int a4, void *aBlock)
{

  return _Block_copy(aBlock);
}

void *OUTLINED_FUNCTION_196(int a1, int a2, int a3, int a4, void *aBlock)
{

  return _Block_copy(aBlock);
}

uint64_t OUTLINED_FUNCTION_197(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_198_0()
{

  return sub_1E4206554();
}

uint64_t OUTLINED_FUNCTION_202()
{
}

uint64_t OUTLINED_FUNCTION_203(uint64_t a1)
{

  return sub_1E4206424();
}

void sub_1E387FB88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C598, &qword_1E42A7000);
  OUTLINED_FUNCTION_3_6(v10, v97 + 8);
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v75 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5A0, &qword_1E42A7008);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5A8, &qword_1E42A7010);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5B0, &qword_1E42A7018);
  OUTLINED_FUNCTION_3_6(v23, v100);
  v83 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_17_3(&v75 - v26);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5B8, &qword_1E42A7020);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_17_3(&v75 - v28);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5C0, &qword_1E42A7028);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17_3(&v75 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5C8, &unk_1E42A7030);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v32);
  v87 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_17_3(&v75 - v35);

  if (sub_1E39C408C())
  {
    v76 = v31;
    v77 = a3;

    v37 = (*(*a2 + 1832))(v36);
    swift_retain_n();
    v38 = sub_1E397F070(a1, v37, &v89);
    v97[0] = v89;
    v97[1] = v90;
    v98 = v91;
    v39 = *(*(*v37 + 2096))(v38);
    (*(v39 + 2016))();

    v99 = v90;
    v100[0] = v91;
    sub_1E3880454(v40, v41, v42);
    sub_1E39B9610();

    sub_1E38804A8(&v99);
    v43 = (*(v12 + 32))(v19, v15, v78);
    v19[*(v16 + 36)] = 0;
    (*(*v37 + 176))(v92, v43);
    if (v93)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v47.n128_u64[0] = v92[3];
      v46.n128_u64[0] = v92[2];
      v45.n128_u64[0] = v92[1];
      v44.n128_u64[0] = v92[0];
      j_nullsub_1(v44, v45, v46, v47);
    }

    OUTLINED_FUNCTION_3();
    v53 = v81;
    v54 = v79;
    v55 = sub_1E4202734();
    v56 = sub_1E379E528(v19, v22, &qword_1ECF2C5A0, &qword_1E42A7008);
    v57 = &v22[*(v54 + 36)];
    *v57 = v55;
    *(v57 + 1) = v3;
    *(v57 + 2) = v4;
    *(v57 + 3) = v5;
    *(v57 + 4) = v6;
    v57[40] = 0;
    v58 = (*(*v37 + 744))(v56);
    v59 = v77;
    v60 = v76;
    if (!v58)
    {
      v58 = [objc_opt_self() clearColor];
    }

    v61 = v58;
    v62 = sub_1E38806D8(&qword_1EE289628, &qword_1ECF2C5A8, &qword_1E42A7010, sub_1E3880510);
    sub_1E39B87A4(v61, v54, v62);

    v63 = sub_1E32B741C(v22);
    (*(*v37 + 552))(v94, v63);
    v64 = 0.0;
    if ((v95 & 1) == 0)
    {
      v64 = sub_1E3952BE8(v94[0], v94[1], v94[2], v94[3]);
    }

    v65 = v84;
    v66 = (v84 + *(v80 + 36));
    v67 = *(sub_1E4201534() + 20);
    v68 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v69 + 104))(v66 + v67, v68);
    *v66 = v64;
    v66[1] = v64;
    *(v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0) + 36)) = 256;
    (*(v83 + 32))(v65, v53, v85);
    sub_1E4202744();
    v70 = *(*v37 + 152);
    v70(v96);
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    v71 = v65;
    v72 = v88;
    sub_1E379E528(v71, v88, &qword_1ECF2C5B8, &qword_1E42A7020);
    OUTLINED_FUNCTION_4_52(v72 + *(v82 + 36));
    sub_1E4202784();
    v70(v97);

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v73 = v87;
    sub_1E379E528(v72, v87, &qword_1ECF2C5C0, &qword_1E42A7028);
    OUTLINED_FUNCTION_4_52(v73 + *(v60 + 36));
    v74 = v86;
    sub_1E379E528(v73, v86, &qword_1ECF2C5C8, &unk_1E42A7030);
    sub_1E379E528(v74, v59, &qword_1ECF2C5C8, &unk_1E42A7030);
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
    OUTLINED_FUNCTION_20_0();
  }

  else
  {

    OUTLINED_FUNCTION_20_0();

    __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  }
}

unint64_t sub_1E3880454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2882D0;
  if (!qword_1EE2882D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2882D0);
  }

  return result;
}

uint64_t sub_1E38804A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5D0, &qword_1E42E7120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3880510()
{
  result = qword_1EE289A00;
  if (!qword_1EE289A00)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5A0, &qword_1E42A7008);
    sub_1E3880454(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE2889E0, &qword_1ECF2C5D8, qword_1E42A7040, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A00);
  }

  return result;
}

unint64_t sub_1E3880628()
{
  result = qword_1EE2894B8;
  if (!qword_1EE2894B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5E0, &unk_1E42A70F0);
    sub_1E38806D8(&qword_1EE2894C0, &qword_1ECF2C5C8, &unk_1E42A7030, sub_1E388075C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2894B8);
  }

  return result;
}

uint64_t sub_1E38806D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_1E388078C()
{
  result = qword_1EE2899D0;
  if (!qword_1EE2899D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5B8, &qword_1E42A7020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5A8, &qword_1E42A7010);
    sub_1E38806D8(&qword_1EE289628, &qword_1ECF2C5A8, &qword_1E42A7010, sub_1E3880510);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289E08, &qword_1ECF298B0, &unk_1E42AC0E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899D0);
  }

  return result;
}

uint64_t sub_1E38808B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5E8, &qword_1E42A7100);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v114 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5F0, &unk_1E42A7108);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_2_5();
  v127 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17_3(&v114 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  v119 = type metadata accessor for CanonicalFooterAiringInfo(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_3(&v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C5F8, &qword_1E42A7118);
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_2_5();
  v120 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17_3(&v114 - v21);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C600, &qword_1E42A7120);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v23);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C608, &qword_1E42A7128);
  OUTLINED_FUNCTION_0_10();
  v128 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C610, &qword_1E42A7130);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v28);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C618, &qword_1E42A7138);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v30);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C620, &unk_1E42A7140);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v32);
  v33 = *(v1 + 8);
  v34 = 0.0;
  if (!sub_1E374E8E4(v33, 2))
  {
    v144 = *(v1 + 3);
    v145 = v1[8];
    __src[0] = *(v1 + 3);
    *&__src[1] = v1[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
    sub_1E42038F4();
    if (v139 == 0.0 && v140 == 0.0)
    {
      v35 = v1[2];
      if (!v35)
      {
LABEL_50:
        type metadata accessor for AppEnvironment(0);
        OUTLINED_FUNCTION_2_49();
        sub_1E3882C50(v112, v113, &unk_1E42BD340);
        OUTLINED_FUNCTION_21_1();
        result = sub_1E4201744();
        __break(1u);
        return result;
      }

      v36 = *(*v35 + 184);

      v38 = v36(v37);
      v40 = v39;

      if ((v40 & 1) == 0)
      {
        v34 = *&v38;
      }
    }

    else
    {
      __src[0] = v144;
      *&__src[1] = v145;
      sub_1E42038F4();
      v34 = v139;
    }
  }

  v133 = v9;
  v134 = v6;
  v135 = v4;
  v136 = a1;
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v34);
  j_nullsub_1(v41, v42, v43, v44);
  v46 = v45;
  v48 = v47;
  v49 = sub_1E374E8E4(v33, 2);
  if (v49)
  {
    v50 = 0.0;
  }

  else
  {
    v50 = v46;
  }

  if (v49)
  {
    v51 = 0.0;
  }

  else
  {
    v51 = v48;
  }

  v138 = v2;
  v52 = *(**v2 + 464);
  v115 = *v2;
  v53 = v52();
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
  }

  v142 = v54;
  v55 = sub_1E32AE9B0(v54);
  for (i = 0; ; ++i)
  {
    if (v55 == i)
    {
      v57 = 0;
      goto LABEL_32;
    }

    if ((v54 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x1E6911E60](i, v54);
      v57 = v58;
    }

    else
    {
      if (i >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v57 = *(v54 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    LOWORD(v141) = *(v57 + 98);
    v146 = 108;
    sub_1E3742F1C(v58, v59, v60);
    sub_1E4206254();
    sub_1E4206254();
    if (*&__src[0] == *&v139 && *(&__src[0] + 1) == *&v140)
    {
      break;
    }

    v62 = sub_1E42079A4();

    if (v62)
    {
      goto LABEL_32;
    }
  }

LABEL_32:

  sub_1E3882660(&v142, v57);
  v64 = v63;
  v65 = sub_1E32AE9B0(v142);
  v66 = v138;
  if (v65 < v64)
  {
    goto LABEL_49;
  }

  sub_1E3882AB0(v64, v65);
  v67 = sub_1E374E8E4(v66[8], 2);
  v68 = sub_1E42036E4();
  if (!v67)
  {
    LOBYTE(v139) = 13;
    v67 = v115;
    (*(*v115 + 776))(__src, &v139, &unk_1F5D5DAC8, &off_1F5D5C998);
    if (*(&__src[1] + 1))
    {
      swift_dynamicCast();
      OUTLINED_FUNCTION_16_33();
      if (v69)
      {
        v70 = sub_1E3F36DEC();
        if (v70 != 8 && (sub_1E3881E80(v70, 2, v71) & 1) != 0)
        {
          v72 = *sub_1E3E5FACC();
          v73 = sub_1E4203644();

          v68 = v73;
        }
      }

      goto LABEL_41;
    }

    sub_1E325F6F0(__src, &unk_1ECF296E0, &unk_1E4298030);
  }

  OUTLINED_FUNCTION_16_33();
LABEL_41:
  *v64 = sub_1E4201D54();
  *(v64 + 8) = 0;
  *(v64 + 16) = 0;
  v118 = v68;
  if (v57)
  {

    v74 = v117;
    sub_1E414B87C();
    v75 = v116;
    sub_1E414B648(v57, v74, v116);
    sub_1E3881E1C(v75, v67);
    v76 = 0;
  }

  else
  {
    v76 = 1;
  }

  __swift_storeEnumTagSinglePayload(v67, v76, 1, v119);
  v77 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C628, &qword_1E42A7150) + 44);
  v78 = v142;

  v80 = v121;
  sub_1E3881634(v79, v121, v34, v50, v51);
  v119 = v78;

  sub_1E3294EE4(v67, v120, &qword_1ECF2C5F8, &qword_1E42A7118);
  v81 = v127;
  sub_1E3294EE4(v80, v127, &qword_1ECF2C5F0, &unk_1E42A7108);
  OUTLINED_FUNCTION_12_12();
  sub_1E3294EE4(v82, v83, v84, v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C630, &qword_1E42A7158);
  sub_1E3294EE4(v81, v77 + *(v86 + 48), &qword_1ECF2C5F0, &unk_1E42A7108);
  sub_1E325F6F0(v80, &qword_1ECF2C5F0, &unk_1E42A7108);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v87, v88, v89);
  sub_1E325F6F0(v81, &qword_1ECF2C5F0, &unk_1E42A7108);
  v90 = v138;
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v91, v92, v93);
  v94 = swift_allocObject();
  memcpy((v94 + 16), v90, 0x48uLL);
  sub_1E3881D84(v90, __src);
  OUTLINED_FUNCTION_1();
  sub_1E32752B0(v95, &qword_1ECF2C600, &qword_1E42A7120, v96);
  v97 = OUTLINED_FUNCTION_51_1();
  v98 = v126;
  v99 = v137;
  sub_1E40AB6EC(v97 & 1);

  sub_1E325F6F0(v99, &qword_1ECF2C600, &qword_1E42A7120);
  sub_1E4203DB4();
  sub_1E42015C4();
  v100 = v125;
  (*(v128 + 32))(v125, v98, v129);
  memcpy((v100 + *(v123 + 36)), __src, 0x70uLL);
  LOBYTE(v78) = sub_1E4202734();
  v101 = v132;
  sub_1E329E454(v100, v132, &qword_1ECF2C610, &qword_1E42A7130);
  v102 = v101 + *(v124 + 36);
  *v102 = v78;
  *(v102 + 8) = 0;
  *(v102 + 16) = v50;
  *(v102 + 24) = 0;
  *(v102 + 32) = v51;
  *(v102 + 40) = 0;
  v141 = v118;
  LOBYTE(v100) = sub_1E4202704();
  sub_1E42026F4();
  sub_1E42026F4();
  if (sub_1E42026F4() != v100)
  {
    sub_1E42026F4();
  }

  v103 = swift_allocObject();
  memcpy((v103 + 16), v90, 0x48uLL);
  sub_1E3881D84(v90, &v139);
  sub_1E4203DA4();
  v104 = v133;
  sub_1E42032A4();

  v105 = sub_1E4203D84();
  v107 = v106;

  v108 = v131;
  v109 = v131 + *(v130 + 36);
  (*(v134 + 32))(v109, v104, v135);
  v110 = (v109 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C640, &qword_1E42A7160) + 36));
  *v110 = v105;
  v110[1] = v107;
  sub_1E329E454(v101, v108, &qword_1ECF2C618, &qword_1E42A7138);
  sub_1E329E454(v108, v136, &qword_1ECF2C620, &unk_1E42A7140);
}

uint64_t sub_1E3881634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v6 = v5;
  v84[5] = a2;
  v84[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C668, &qword_1E42A7208);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v84 - v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C670, &qword_1E42A7210);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C678, &qword_1E42A7218);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v84 - v17;
  type metadata accessor for LayoutGrid();
  v19 = sub_1E3A2579C(a3);
  if ((sub_1E3A24FDC(v19) & 1) != 0 || sub_1E374E8E4(v5[8], 2))
  {
    sub_1E3A24FDC(v19);
    v20 = sub_1E3A24FDC(v19);
    v21 = OUTLINED_FUNCTION_13_47(v20);
    v22 = j__OUTLINED_FUNCTION_51_1();
    v23 = j__OUTLINED_FUNCTION_18();
    v24 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_12_16(v21, v22 & 1, __src, 0, 1, 0, 1, 0, 2, v23 & 1, v24 & 1);
    *v18 = sub_1E4201D54();
    *(v18 + 1) = 0;
    v18[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C6A8, &qword_1E42A7258);
    v86 = a1;
    swift_getKeyPath();
    v25 = swift_allocObject();
    memcpy((v25 + 16), __src, 0x5BuLL);
    memcpy((v25 + 112), v6, 0x48uLL);

    sub_1E375C2C0(__src, v85);
    sub_1E3881D84(v6, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    OUTLINED_FUNCTION_14_11();
    sub_1E32752B0(v26, &unk_1ECF2C790, &qword_1E42996A0, v27);
    OUTLINED_FUNCTION_4_53();
    v30 = sub_1E3882C50(v28, v29, &protocol conformance descriptor for ViewModel);
    sub_1E3882420(v30, v31, v32);
    sub_1E4203B34();
    OUTLINED_FUNCTION_12_12();
    sub_1E3294EE4(v33, v34, v35, v36);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_1();
    sub_1E32752B0(v37, v38, v39, v40);
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v41, v42, v43, v44);
    OUTLINED_FUNCTION_14_41();
    sub_1E4201F44();
    sub_1E375C31C(__src);
    OUTLINED_FUNCTION_21_1();
    return sub_1E325F6F0(v45, v46, v47);
  }

  else
  {
    v84[1] = v15;
    sub_1E3A25950(a3);
    v50 = v49;
    if (sub_1E3A24FDC(v19))
    {
      v51 = a3 - a4 - a5;
    }

    else
    {
      v51 = a3 - a4 - a5 - (v50 + v50);
    }

    v52 = sub_1E3A24FDC(v19);
    v53 = v51 / 3.0;
    if (v52)
    {
      v53 = v51;
    }

    v54 = *&v53;
    v55 = j__OUTLINED_FUNCTION_51_1();
    v56 = j__OUTLINED_FUNCTION_18();
    v57 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_12_16(v54, v55 & 1, __src, 0, 1, 0, 1, 0, 2, v56 & 1, v57 & 1);
    v58 = sub_1E42026E4();
    v59 = sub_1E42026F4();
    sub_1E42026F4();
    if (sub_1E42026F4() != v58)
    {
      v59 = sub_1E42026F4();
    }

    *v13 = sub_1E4201B64();
    v13[1] = v50;
    *(v13 + 16) = 0;
    v84[3] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C680, &unk_1E42A7220) + 44);
    v86 = a1;
    v84[2] = swift_getKeyPath();
    v60 = swift_allocObject();
    memcpy((v60 + 16), __src, 0x5BuLL);
    *(v60 + 107) = v59;
    memcpy((v60 + 112), v6, 0x48uLL);
    *(v60 + 184) = 0;
    *(v60 + 192) = a4;
    *(v60 + 200) = 0;
    *(v60 + 208) = a5;
    *(v60 + 216) = v50;
    *(v60 + 224) = v19;

    sub_1E3881D84(v6, v85);
    sub_1E375C2C0(__src, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C688, &qword_1E42A7250);
    OUTLINED_FUNCTION_14_11();
    sub_1E32752B0(v61, &unk_1ECF2C790, &qword_1E42996A0, v62);
    OUTLINED_FUNCTION_4_53();
    v65 = sub_1E3882C50(v63, v64, &protocol conformance descriptor for ViewModel);
    v68 = sub_1E3882420(v65, v66, v67);
    v85[0] = &type metadata for CanonicalFooterSection;
    v85[1] = v68;
    swift_getOpaqueTypeConformance2();
    sub_1E4203B34();
    OUTLINED_FUNCTION_12_12();
    sub_1E3294EE4(v69, v70, v71, v72);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v73, v74, v75, v76);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_21_1();
    sub_1E32752B0(v77, v78, v79, v80);
    OUTLINED_FUNCTION_14_41();
    sub_1E4201F44();
    sub_1E375C31C(__src);
    OUTLINED_FUNCTION_21_1();
    return sub_1E325F6F0(v81, v82, v83);
  }
}

double sub_1E3881DBC(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  sub_1E42038F4();
  return v3 + a1;
}

uint64_t sub_1E3881E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanonicalFooterAiringInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3881E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E37E6ADC(a1, a2, a3);
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

__n128 sub_1E3881F30@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_2_49();
  sub_1E3882C50(v6, v7, &unk_1E42BD340);
  v8 = sub_1E4201754();
  v10 = v9;
  sub_1E42038E4();
  type metadata accessor for CGSize(0);
  sub_1E42038E4();
  result = v12;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 9) = v12.n128_u32[0];
  *(a3 + 12) = *(v12.n128_u32 + 3);
  *(a3 + 16) = v8;
  *(a3 + 24) = v10;
  *(a3 + 32) = v12;
  *(a3 + 48) = v12;
  *(a3 + 64) = v13;
  return result;
}

unint64_t sub_1E38820A0()
{
  result = qword_1ECF2C648;
  if (!qword_1ECF2C648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C620, &unk_1E42A7140);
    sub_1E3882158();
    sub_1E32752B0(&qword_1ECF2C660, &qword_1ECF2C640, &qword_1E42A7160, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C648);
  }

  return result;
}

unint64_t sub_1E3882158()
{
  result = qword_1ECF2C650;
  if (!qword_1ECF2C650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C618, &qword_1E42A7138);
    sub_1E38821E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C650);
  }

  return result;
}

unint64_t sub_1E38821E4()
{
  result = qword_1ECF2C658;
  if (!qword_1ECF2C658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C610, &qword_1E42A7130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C600, &qword_1E42A7120);
    sub_1E32752B0(&qword_1ECF2C638, &qword_1ECF2C600, &qword_1E42A7120, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C658);
  }

  return result;
}

uint64_t sub_1E38822E0(uint64_t *a1)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  v4 = *a1;

  v10 = *(v1 + 200);
  v11 = *(v1 + 184);
  sub_1E375C2C0(v1 + 16, __dst);
  sub_1E40FF04C(v4, (v1 + 16), 0, __src);
  v5 = swift_allocObject();
  memcpy((v5 + 16), (v1 + 112), 0x48uLL);
  *(v5 + 104) = v10;
  *(v5 + 88) = v11;
  *(v5 + 120) = v2;
  *(v5 + 128) = v3;
  sub_1E3881D84(v1 + 112, __dst);
  v6 = sub_1E4203DA4();
  sub_1E3882420(v6, v7, v8);
  sub_1E42032A4();

  memcpy(__dst, __src, sizeof(__dst));
  return sub_1E388260C(__dst);
}

unint64_t sub_1E3882420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2C690;
  if (!qword_1ECF2C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C690);
  }

  return result;
}

uint64_t objectdestroy_11Tm(uint64_t a1)
{

  return swift_deallocObject();
}

void *sub_1E38824D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 120);

  sub_1E375C2C0(v2 + 16, __src);
  sub_1E40FF04C(v4, (v2 + 16), v5, __src);
  return memcpy(a2, __src, 0x78uLL);
}

uint64_t objectdestroyTm_9(uint64_t a1)
{

  return swift_deallocObject();
}

void sub_1E38825A4()
{
  v1 = *(v0 + 128);
  sub_1E3A24FDC(v1);
  v2 = sub_1E3A24FDC(v1);
  OUTLINED_FUNCTION_13_47(v2);
}

void sub_1E3882660(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  sub_1E388293C(v5, a2);
  if (v2)
  {
LABEL_2:

    return;
  }

  if (v7)
  {
    sub_1E32AE9B0(v5);

    return;
  }

  v8 = v6;
  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      if (v5 >> 62)
      {
        v10 = sub_1E4207384();
      }

      else
      {
        v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == v10)
      {
        goto LABEL_2;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v9, v5);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          break;
        }

        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }
      }

      if (a2)
      {
        type metadata accessor for ViewModel();
        sub_1E3882C50(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);

        v11 = sub_1E4205E84();

        if (v11)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }

      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1E6911E60](v8, v5);
          v13 = MEMORY[0x1E6911E60](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_48;
          }

          v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v14)
          {
            goto LABEL_49;
          }

          if (v9 >= v14)
          {
            goto LABEL_50;
          }

          v12 = *(v5 + 32 + 8 * v8);
          v13 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_1E37EFA58(v5);
          v15 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v16 = v5 & 0xFFFFFFFFFFFFFF8;
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v13;

        if ((v5 & 0x8000000000000000) != 0 || v15)
        {
          v5 = sub_1E37EFA58(v5);
          v16 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_41:
            __break(1u);
            goto LABEL_2;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v9 >= *(v16 + 16))
        {
          goto LABEL_47;
        }

        *(v16 + 8 * v9 + 32) = v12;

        *a1 = v5;
      }

      v17 = __OFADD__(v8++, 1);
      if (v17)
      {
        goto LABEL_46;
      }

LABEL_35:
      v17 = __OFADD__(v9++, 1);
      if (v17)
      {
        goto LABEL_45;
      }
    }
  }

  __break(1u);
}

void sub_1E388293C(unint64_t a1, uint64_t a2)
{
  v4 = sub_1E32AE9B0(a1);
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_8:

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v5, a1);
      goto LABEL_6;
    }

    if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_6:
    if (a2)
    {
      type metadata accessor for ViewModel();
      sub_1E3882C50(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);

      v6 = sub_1E4205E84();

      if (v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1E3882AB0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_1E32AE9B0(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_1E32AE9B0(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1E3797CDC(result, 1);

  return sub_1E3882B54(v4, a2, 0);
}

uint64_t sub_1E3882B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ViewModel();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3882C50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E3882C98()
{
  type metadata accessor for ImageMemoryCache();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v1 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + 24) = v1;
  sub_1E3883158();
  qword_1EE2AB118 = v0;
}

uint64_t *sub_1E3882D04()
{
  if (qword_1EE2A2FF0 != -1)
  {
    OUTLINED_FUNCTION_2_50(&qword_1EE2A2FF0);
  }

  return &qword_1EE2AB118;
}

id sub_1E3882D44()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_1E3882D9C();
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1E3882D9C()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 launchConfig];

  v10 = [v9 imageInMemoryCacheSizeLimitInBytes];
  if (v10 <= 0)
  {
    sub_1E3882FB0();
    v10 = v11;
  }

  sub_1E324FBDC();
  v12 = OUTLINED_FUNCTION_3_50();
  v13(v12);
  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v10;
    _os_log_impl(&dword_1E323F000, v14, v15, "ImageMemoryCache: effectiveCacheSize:%ld", v16, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v2 + 8))(v6, v0);
  [v7 setTotalCostLimit_];
  v17 = sub_1E4205ED4();
  [v7 setName_];

  return v7;
}

void sub_1E3882FB0()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 physicalMemory];

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v8 / 0x32 >= 0x11E1A300)
    {
      v9 = 300000000;
    }

    else
    {
      v9 = v8 / 0x32;
    }

    sub_1E324FBDC();
    v10 = OUTLINED_FUNCTION_3_50();
    v11(v10);
    v12 = sub_1E41FFC94();
    v13 = sub_1E4206814();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      *(v14 + 4) = v8;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v9;
      _os_log_impl(&dword_1E323F000, v12, v13, "ImageMemoryCache: physicalMemory=%llu, defaultCacheSize=%ld", v14, 0x16u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v2 + 8))(v6, v0);
  }
}

double sub_1E3883158()
{
  v0 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  swift_allocObject();
  swift_weakInit();
  sub_1E3883864(&qword_1EE23B130, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1E4200844();

  (*(v2 + 8))(v6, v0);
  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();

  return result;
}

id sub_1E3883304()
{
  v0 = sub_1E3882D44();
  v1 = sub_1E4205ED4();
  v2 = [v0 objectForKey_];

  return v2;
}

void sub_1E3883374(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = [a1 vuiCGImage];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  Width = CGImageGetWidth(v13);
  Height = CGImageGetHeight(v14);
  v17 = Width * Height;
  if ((Width * Height) >> 64 != (Width * Height) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  BitsPerPixel = CGImageGetBitsPerPixel(v14);
  if ((v17 * BitsPerPixel) >> 64 != (v17 * BitsPerPixel) >> 63)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v19 = v17 * BitsPerPixel / 8;
  v20 = sub_1E324FBDC();
  (*(v8 + 16))(v12, v20, v6);
  v21 = v14;

  v22 = v6;
  v23 = sub_1E41FFC94();
  v24 = sub_1E4206814();

  if (os_log_type_enabled(v23, v24))
  {
    v29 = v19;
    v25 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v25 = 134219010;
    *(v25 + 4) = v29;
    *(v25 + 12) = 2048;
    *(v25 + 14) = CGImageGetWidth(v21);
    *(v25 + 22) = 2048;
    *(v25 + 24) = CGImageGetHeight(v21);
    *(v25 + 32) = 2048;
    *(v25 + 34) = CGImageGetBitsPerPixel(v21);

    *(v25 + 42) = 2080;
    *(v25 + 44) = sub_1E3270FC8(a2, a3, &v30);
    _os_log_impl(&dword_1E323F000, v23, v24, "ImageMemoryCache: setImage size:%ld, wxh:%ldx%ld, bits:%ld, key:%s", v25, 0x34u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_6_0();
    v19 = v29;
    OUTLINED_FUNCTION_6_0();

    (*(v8 + 8))(v12, v22);
  }

  else
  {

    (*(v8 + 8))(v12, v22);
  }

  v26 = sub_1E3882D44();
  v27 = sub_1E4205ED4();
  [v26 setObject:a1 forKey:v27 cost:v19];
}

uint64_t sub_1E388368C()
{
  sub_1E3883664();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E38836C0()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E324FBDC();
  v7 = OUTLINED_FUNCTION_3_50();
  v8(v7);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1E323F000, v9, v10, "ImageMemoryCache: didReceiveMemoryWarning", v11, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  return (*(v2 + 8))(v6, v0);
}

double sub_1E3883810()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E38836C0();
  }

  return result;
}

uint64_t sub_1E3883864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E38838AC@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[1] = a6;
  v10 = a2;
  v11 = sub_1E42013A4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - v13;
  sub_1E3883AF4(a1, a4, a5);
  if (v10 == 2)
  {
    if (!a1)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_99();
    (*(v15 + 224))();
    if (v16)
    {
      OUTLINED_FUNCTION_99();
      (*(v17 + 248))();
    }
  }

  if (a3 == 2)
  {
    if (a1)
    {
      OUTLINED_FUNCTION_99();
      (*(v18 + 328))();
      if (v19)
      {
        OUTLINED_FUNCTION_99();
        (*(v20 + 352))();
      }
    }
  }

LABEL_10:
  v22[2] = a5;
  v22[3] = MEMORY[0x1E697EBF8];
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  sub_1E4203584();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1E3883AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && (type metadata accessor for TextLayout(), swift_dynamicCastClass()) && (OUTLINED_FUNCTION_26_0(), (*(v4 + 1976))() != 7))
  {
    sub_1E3883DA0(a1, 0);
  }

  else
  {
    sub_1E3883E84(a1);
    if (!a1)
    {
      return sub_1E4203474();
    }
  }

  (*(*a1 + 224))();
  (*(*a1 + 200))();
  (*(*a1 + 248))();
  (*(*a1 + 328))();
  (*(*a1 + 304))();
  (*(*a1 + 352))();
  return sub_1E4203474();
}

uint64_t sub_1E3883DA0(uint64_t a1, char a2)
{
  if (a1 && (type metadata accessor for TextLayout(), swift_dynamicCastClass()))
  {
    OUTLINED_FUNCTION_26_0();
    switch((*(v3 + 1976))())
    {
      case 1u:

        return sub_1E4203DA4();
      case 2u:
        if (a2)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      case 3u:
      case 4u:
      case 5u:
      case 7u:
        goto LABEL_4;
      case 6u:
        goto LABEL_10;
      default:
        if ((a2 & 1) == 0)
        {
          goto LABEL_4;
        }

LABEL_10:

        result = sub_1E4203DC4();
        break;
    }
  }

  else
  {
LABEL_4:

    return sub_1E4203DB4();
  }

  return result;
}

uint64_t sub_1E3883E84(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_26_0();
    v2 = (*(v1 + 480))();
    OUTLINED_FUNCTION_8();
    switch((*(v3 + 456))())
    {
      case 1u:
        if (v2 == 2)
        {

          result = sub_1E4203D84();
        }

        else
        {
          if (v2 != 3)
          {
            goto LABEL_3;
          }

          result = sub_1E4203D94();
        }

        break;
      case 2u:
        if (v2 == 3)
        {
          goto LABEL_24;
        }

        if (v2 != 2)
        {
          goto LABEL_36;
        }

LABEL_30:

        return sub_1E4203D44();
      case 3u:
        if (v2 == 3)
        {
          goto LABEL_27;
        }

        if (v2 != 2)
        {
          goto LABEL_33;
        }

LABEL_19:

        return sub_1E4203D54();
      case 4u:
        if (v2 == 2)
        {
          goto LABEL_30;
        }

        if (v2 == 3)
        {
LABEL_24:

          return sub_1E4203D64();
        }

        else
        {
LABEL_36:

          return sub_1E4203DB4();
        }

      case 5u:
        if (v2 == 2)
        {
          goto LABEL_19;
        }

        if (v2 == 3)
        {
LABEL_27:

          return sub_1E4203D74();
        }

        else
        {
LABEL_33:

          return sub_1E4203DC4();
        }

      default:
        goto LABEL_3;
    }
  }

  else
  {
LABEL_3:

    return sub_1E4203DA4();
  }

  return result;
}

uint64_t sub_1E3884090(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_26_0();
    switch((*(v1 + 456))())
    {
      case 2u:
      case 4u:

        result = sub_1E4201D54();
        break;
      case 3u:
      case 5u:

        result = sub_1E4201D64();
        break;
      default:
        goto LABEL_6;
    }
  }

  else
  {
LABEL_6:

    return sub_1E4201D44();
  }

  return result;
}

uint64_t sub_1E3884154(uint64_t a1)
{
  if (!a1)
  {
LABEL_7:

    return sub_1E4201B84();
  }

  OUTLINED_FUNCTION_26_0();
  v2 = (*(v1 + 480))();
  if (v2 != 3)
  {
    if (v2 == 2)
    {

      return sub_1E4201B64();
    }

    goto LABEL_7;
  }

  return sub_1E4201B74();
}

uint64_t sub_1E38841FC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_1E3883DA0(a1, a2);
  if (a1)
  {
    OUTLINED_FUNCTION_8();
    (*(v5 + 224))();
    OUTLINED_FUNCTION_8();
    (*(v6 + 200))();
    OUTLINED_FUNCTION_8();
    v8 = (*(v7 + 248))();
    v9 = (*(*a1 + 328))(v8);
    (*(*a1 + 304))(v9);
    (*(*a1 + 352))();
  }

  return sub_1E4203474();
}

double sub_1E3884424@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_0_55();
  sub_1E3885510(v6, v7, &unk_1E42BD340);
  v8 = sub_1E4201754();
  v10 = v9;
  OUTLINED_FUNCTION_8();
  v12 = *(v11 + 192);

  v12(v13);
  type metadata accessor for CGPoint(0);
  sub_1E42038E4();
  OUTLINED_FUNCTION_8();
  (*(v14 + 224))();

  sub_1E42038E4();
  result = v16;
  *a3 = a1;
  *(a3 + 1) = a2;
  a3[3] = 0.0;
  a3[4] = 0.0;
  a3[2] = 0.0;
  a3[5] = v16;
  *(a3 + 6) = v17;
  *(a3 + 7) = v18;
  a3[8] = v16;
  *(a3 + 9) = v17;
  *(a3 + 10) = v8;
  *(a3 + 11) = v10;
  return result;
}

uint64_t sub_1E3884578@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C6B0, &qword_1E42A7298);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v46 - v5;
  sub_1E3884A6C(&v46 - v5);
  v47 = sub_1E4203DA4();
  v8 = v7;
  v9 = *(v4 + 36);
  v57 = *(v1 + 16);
  v58 = *(v1 + 32);
  v48 = *(v1 + 16);
  v49 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E42038F4();
  if (*v51 <= 0.0)
  {
    if (!*(v1 + 80))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_8();
    v12 = *(v11 + 184);

    v14 = COERCE_DOUBLE(v12(v13));
    v16 = v15;

    if (v16)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_77();
    sub_1E42038F4();
    v10 = *v51;
  }

  OUTLINED_FUNCTION_1_77();
  sub_1E42038F4();
  if (*&v51[8] > 0.0)
  {
    OUTLINED_FUNCTION_1_77();
    sub_1E42038F4();
    v17 = *&v51[8];
LABEL_12:

    sub_1E3E49370(v25, &v54, v10, v17, v17, 0.0);
    *v51 = v54;
    *&v51[8] = v55;
    v52 = v56;
    v53 = 256;
    v26 = swift_allocObject();
    memcpy((v26 + 16), v1, 0x60uLL);
    sub_1E38855B4(v1, &v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C710, &qword_1E42A7370);
    sub_1E38857F4();
    v27 = OUTLINED_FUNCTION_51_1();
    sub_1E40AB6EC(v27 & 1);

    *&v6[v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C728, &qword_1E42A7378) + 36)] = 0;
    v28 = &v6[v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C6B8, &qword_1E42A72A0) + 36)];
    *v28 = v47;
    v28[1] = v8;
    *v51 = *(v1 + 16);
    *&v51[16] = *(v1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
    sub_1E4203914();
    v29 = v48;
    v30 = v49;
    v31 = v50;
    v32 = sub_1E3885320();
    v33 = OUTLINED_FUNCTION_51_1();
    sub_1E41DBF30(v29, *(&v29 + 1), v33 & 1, v4, v32, v30, v31);

    sub_1E32B752C(v6);
    OUTLINED_FUNCTION_8();
    v35 = (*(v34 + 216))();
    type metadata accessor for CGPoint(0);
    v37 = v36;
    sub_1E3885510(&qword_1ECF2C6F8, type metadata accessor for CGPoint, MEMORY[0x1E695EFB8]);
    v38 = sub_1E3B501F8(v35, v37);

    v39 = swift_allocObject();
    memcpy((v39 + 16), v2, 0x60uLL);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C700, &qword_1E42A72C0);
    *(a1 + *(v40 + 52)) = v38;
    v41 = (a1 + *(v40 + 56));
    *v41 = sub_1E3885558;
    v41[1] = v39;
    return sub_1E38855B4(v2, &v48);
  }

  if (*(v1 + 80))
  {
    OUTLINED_FUNCTION_8();
    v19 = *(v18 + 184);

    v19(v20);
    v22 = v21;
    v24 = v23;

    v17 = 0.0;
    if ((v24 & 1) == 0)
    {
      v17 = v22;
    }

    goto LABEL_12;
  }

LABEL_13:
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_0_55();
  v45 = sub_1E3885510(v43, v44, &unk_1E42BD340);
  result = OUTLINED_FUNCTION_6_46(v45);
  __break(1u);
  return result;
}

uint64_t sub_1E3884A6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v3 = sub_1E4204874();
  OUTLINED_FUNCTION_0_10();
  v74 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C6C8, &qword_1E42A72A8);
  OUTLINED_FUNCTION_0_10();
  v70 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v65 - v11;
  v13 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v65 - v19;
  OUTLINED_FUNCTION_4_54(*(v1 + 16));
  v77 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E42038F4();
  if (v91 <= 0.0)
  {
    if (!*(v1 + 80))
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_8();
    v22 = *(v21 + 184);

    v24 = COERCE_DOUBLE(v22(v23));
    LOBYTE(v22) = v25;

    if (v22)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_51();
    sub_1E42038F4();
    v20 = v91;
  }

  OUTLINED_FUNCTION_2_51();
  sub_1E42038F4();
  if (v92 > 0.0)
  {
    OUTLINED_FUNCTION_2_51();
    sub_1E42038F4();
    v26 = v92;
    goto LABEL_13;
  }

  if (!*(v1 + 80))
  {
LABEL_27:
    type metadata accessor for AppEnvironment(0);
    OUTLINED_FUNCTION_0_55();
    v64 = sub_1E3885510(v62, v63, &unk_1E42BD340);
    result = OUTLINED_FUNCTION_6_46(v64);
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_8();
  v28 = *(v27 + 184);

  v28(v29);
  v31 = v30;
  v33 = v32;

  if (v33)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v31;
  }

LABEL_13:
  OUTLINED_FUNCTION_4_54(*(v1 + 40));
  v77 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C708, &qword_1E42BD890);
  sub_1E42038F4();
  v34 = v92;
  v96 = *(v1 + 64);
  OUTLINED_FUNCTION_4_54(*(v1 + 64));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  sub_1E42038F4();
  v35 = v91;
  OUTLINED_FUNCTION_4_54(*(v1 + 64));
  sub_1E42038F4();
  v36 = v91;
  v88 = MEMORY[0x1E69E7CC0];
  v37 = *v1;
  v38 = *(**v1 + 576);

  v40 = v38(v39);
  if (v40)
  {
    (*(*v40 + 224))(v40);

    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      v66 = v3;
      v41 = *(v15 + 32);
      v42 = v67;
      v41(v67, v12, v13);
      (*(v15 + 16))(v68, v42, v13);
      v43 = sub_1E3885C98(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v45 = *(v43 + 2);
      v44 = *(v43 + 3);
      if (v45 >= v44 >> 1)
      {
        v43 = sub_1E3885C98((v44 > 1), v45 + 1, 1, v43);
      }

      (*(v15 + 8))(v67, v13);
      *(v43 + 2) = v45 + 1;
      v41(&v43[((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v45], v68, v13);
      v88 = v43;
      v3 = v66;
      goto LABEL_20;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  }

  sub_1E38858D4(v12);
LABEL_20:
  type metadata accessor for BaseImpressionManager();
  v46 = static BaseImpressionManager.getImpressionableChildren(_:)();
  v47 = sub_1E388593C(v46);
  v48 = *(v2 + 8);
  v49 = (*(*v48 + 136))(v47);
  sub_1E3E49370(v37, v89, v20, v36, v26, v49);
  v50 = swift_allocObject();
  v51 = v89[1];
  *(v50 + 16) = v89[0];
  *(v50 + 32) = v51;
  *(v50 + 48) = v90;
  *(v50 + 56) = v20;
  *(v50 + 64) = fmax(v34, 0.0) + v35;
  OUTLINED_FUNCTION_4_54(v96);

  sub_1E42038F4();
  sub_1E4203DA4();
  sub_1E4200D94();
  v87 = LOBYTE(v92);
  v85 = v94;
  v75 = sub_1E3885BD0;
  v76 = v50;
  v77 = v91;
  v78 = LOBYTE(v92);
  *v79 = *v86;
  *&v79[3] = *&v86[3];
  v80 = v93;
  v81 = v94;
  *v82 = *v84;
  *&v82[3] = *&v84[3];
  v52 = *(v37 + 98);
  v54 = v52 == 83 || v52 == 86;
  v83 = v95;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C6D0, &qword_1E42A72B0);
  v56 = sub_1E3885458();
  v57 = v69;
  sub_1E38D54B8(v54, v48, v55, v56);

  v75 = v55;
  v76 = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v72;
  v60 = v71;
  sub_1E3B2B2FC(v71, OpaqueTypeConformance2);
  sub_1E3B2A5DC();

  sub_1E3885BDC(v89);
  (*(v74 + 8))(v59, v3);
  return (*(v70 + 8))(v57, v60);
}

unint64_t sub_1E3885320()
{
  result = qword_1ECF2C6C0;
  if (!qword_1ECF2C6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C6B0, &qword_1E42A7298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C6C8, &qword_1E42A72A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C6D0, &qword_1E42A72B0);
    sub_1E3885458();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1ECF2C6F0, &qword_1ECF2C6B8, &qword_1E42A72A0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C6C0);
  }

  return result;
}

unint64_t sub_1E3885458()
{
  result = qword_1ECF2C6D8;
  if (!qword_1ECF2C6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C6D0, &qword_1E42A72B0);
    sub_1E32752B0(&qword_1ECF2C6E0, &qword_1ECF2C6E8, &qword_1E42A72B8, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C6D8);
  }

  return result;
}

uint64_t sub_1E3885510(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3885654(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E3885694(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_10()
{

  return swift_deallocObject();
}

void sub_1E388575C(double a1, double a2)
{
  if (a2 > 0.0)
  {
    OUTLINED_FUNCTION_8();
    (*(v2 + 232))(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
    sub_1E4203904();
  }
}

unint64_t sub_1E38857F4()
{
  result = qword_1ECF2C718;
  if (!qword_1ECF2C718)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C710, &qword_1E42A7370);
    sub_1E3885880(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C718);
  }

  return result;
}

unint64_t sub_1E3885880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2C720;
  if (!qword_1ECF2C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C720);
  }

  return result;
}

uint64_t sub_1E38858D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E388593C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1E3885C30(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1E4204724();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

double sub_1E3885A3C@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = sub_1E4201F84();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E3E6CDBC();
  v13 = v12[1];
  *&v21[0] = *v12;
  *(&v21[0] + 1) = v13;
  sub_1E4202274();
  sub_1E4200E84();
  v15 = v14;
  (*(v8 + 8))(v11, v6);
  if (v15 <= 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = -v15;
  }

  v17 = *a1;

  sub_1E4203DA4();
  sub_1E4200D94();
  *a2 = v17;
  v18 = *(a1 + 1);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 8) = v18;
  *(a2 + 40) = 0;
  *(a2 + 48) = v16;
  v19 = v21[1];
  *(a2 + 56) = v21[0];
  *(a2 + 72) = v19;
  result = *&v22;
  *(a2 + 88) = v22;
  return result;
}

void *sub_1E3885C30(uint64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1E3885C98(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *sub_1E3885C98(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1E3885D84(v8, v7);
  v10 = *(sub_1E4204724() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3885E80(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1E3885D84(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35BA0, &unk_1E42A7380);
  v4 = *(sub_1E4204724() - 8);
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

uint64_t sub_1E3885E80(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1E4204724(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1E4204724();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

double sub_1E3885F70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E3886250(a1, a2);
  v7 = TVAppFeature.isEnabled.getter(10, v5, v6);
  if (v4)
  {
    if (v7)
    {
      OUTLINED_FUNCTION_5_0((v3 + 15), v42);
      v14 = v3[15];
      OUTLINED_FUNCTION_14_0((v3 + 13), v15);
      v3[13] = v14;

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_4_55(v7, v8, v9, v10, v11, v12, v13);
    if (OUTLINED_FUNCTION_20_9())
    {
      swift_endAccess();
      OUTLINED_FUNCTION_8();
      (*(v26 + 312))(0x405E000000000000, 0);
    }

    else
    {
      v27 = swift_endAccess();
    }

    OUTLINED_FUNCTION_4_55(v27, v28, v29, v30, v31, v32, v33);
    v36 = OUTLINED_FUNCTION_20_9();
    swift_endAccess();
    v43[0] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C740, &qword_1E42A75D0);
    v35 = sub_1E3887D10;
  }

  else
  {
    if (v7)
    {
      OUTLINED_FUNCTION_5_0((v3 + 14), v42);
      v16 = v3[14];
      OUTLINED_FUNCTION_14_0((v3 + 13), v17);
      v3[13] = v16;
    }

    OUTLINED_FUNCTION_4_55(v7, v8, v9, v10, v11, v12, v13);
    if (OUTLINED_FUNCTION_20_9())
    {
      swift_endAccess();
      OUTLINED_FUNCTION_8();
      (*(v18 + 312))(0x4064000000000000, 0);
    }

    else
    {
      v19 = swift_endAccess();
    }

    OUTLINED_FUNCTION_4_55(v19, v20, v21, v22, v23, v24, v25);
    v34 = OUTLINED_FUNCTION_20_9();
    swift_endAccess();
    v43[0] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C740, &qword_1E42A75D0);
    v35 = sub_1E3887EF0;
  }

  sub_1E4148DE0(v35);

LABEL_15:
  OUTLINED_FUNCTION_5_0((v3 + 16), v43);
  v38 = v3[16];
  if (v38)
  {

    v41 = sub_1E3886250(v39, v40);
    (*(*v38 + 944))(v41);
  }

  return result;
}

double sub_1E38861D0(char a1)
{
  OUTLINED_FUNCTION_3_0(v1 + 99, &v10);
  v3 = *(v1 + 99);
  *(v1 + 99) = a1;
  v4 = OUTLINED_FUNCTION_5_0(v1 + 99, v11);
  v7 = *(v1 + 99);
  if (v7 == 2)
  {
    if (v3 == 2)
    {
      return result;
    }

    return sub_1E3885F70(v4, v5);
  }

  v8 = (v7 ^ v3) & 1;
  if (v3 == 2 || v8 != 0)
  {
    return sub_1E3885F70(v4, v5);
  }

  return result;
}

uint64_t sub_1E3886250(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 99, a2);
  v3 = *(v2 + 99);
  if (v3 == 2)
  {
    v4 = sub_1E3C2F814();
    LOBYTE(v3) = sub_1E3A24FDC(v4) ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1E38862CC(uint64_t a1)
{
  *(v1 + 99) = 2;
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 104) = MEMORY[0x1E69E7CC8];
  *(v1 + 112) = v2;
  *(v1 + 120) = v2;
  *(v1 + 128) = 0;
  *(v1 + 98) = a1 & 1;
  v3 = sub_1E3C2F9A0();

  type metadata accessor for ViewGradientLayout(0);
  v4 = sub_1E40C3088();
  (*(*v4 + 1728))(0x3FE0000000000000, 0, 0);
  (*(*v4 + 1776))(1);
  v5 = *(*v4 + 312);

  v5(0x405E000000000000, 0);

  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  sub_1E38870E8(v4, v7);

  v8 = sub_1E40C3088();
  __dst[16] = 0;
  LOBYTE(v107) = 0;
  type metadata accessor for CGPoint(0);
  v10 = v9;
  sub_1E3C3DE00();
  v133 = v103;
  v134 = v104;
  sub_1E3C3DE00();
  LOBYTE(v128) = v132;
  sub_1E3C3DE00();
  LOBYTE(v120) = v124;
  v11 = sub_1E3C3DE00();
  LOBYTE(v112) = v116;
  OUTLINED_FUNCTION_7_61(v11, v12, v13, v14, v15, v16, v17, v18, v84, v88, v90, v92, v94, v96, v98, v100, v103, *(&v103 + 1), v104, v105, 0, 0x3FF0000000000000, v107, v108, 0x3FE0000000000000, 0x3FF0000000000000, *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v114, v115, v112, v113, v114, v115, v116, v117, v122, v123, v120, v121, v122, v123, v124, v125, v130, v131, v128, v129, v130);
  memcpy(__dst, __src, 0x89uLL);
  v19 = OUTLINED_FUNCTION_18();
  v20 = *(*v8 + 1600);
  v20(__dst, 115, v19 & 1, v10);
  __dst[0] = 1;
  LOBYTE(v106[0]) = 2;
  sub_1E3C3DE00();
  LOBYTE(v133) = v103;
  sub_1E3C3DE00();
  LOBYTE(v126) = v130;
  sub_1E3C3DE00();
  LOBYTE(v118) = v122;
  v21 = sub_1E3C3DE00();
  LOBYTE(v110) = v114;
  OUTLINED_FUNCTION_7_61(v21, v22, v23, v24, v25, v26, v27, v28, v85, v89, v91, v93, v95, v97, v99, v101, v103, *(&v103 + 1), v104, v105, v106[0], v106[1], v107, v108, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
  *__dst = __src[0];
  *&__dst[4] = WORD2(__src[0]);
  v29 = OUTLINED_FUNCTION_18();
  v20(__dst, 117, v29 & 1, &type metadata for ViewGradientLayout.GradientType);
  v30 = [v6 blackColor];
  sub_1E3887888(v8, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748, &qword_1E42A75D8);
  inited = swift_initStackObject();
  v86 = xmmword_1E4297BE0;
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = 2;
  *(inited + 40) = v4;
  type metadata accessor for VUIPosition(0);
  v33 = v32;
  sub_1E3887D80(&qword_1EE23B3C0, &unk_1E42A7554);

  v34 = sub_1E4205CB4();
  OUTLINED_FUNCTION_3_0(v3 + 112, v106);
  *(v3 + 112) = v34;

  v35 = [objc_opt_self() blackColor];
  v36 = MEMORY[0x1E69E7CC0];
  __src[0] = MEMORY[0x1E69E7CC0];
  v37 = v35;
  sub_1E3887DC4(0, 8, 0);
  OUTLINED_FUNCTION_17_31();
  if (!(!v41 & v40))
  {
    v79 = OUTLINED_FUNCTION_2_52();
    sub_1E3887DC4(v79, v6, 1);
    v38 = __src[0];
    v39 = *(__src[0] + 24) >> 1;
  }

  *(v38 + 16) = v6;
  *(v38 + 8 * v33 + 32) = 0;
  if (v39 < v33 + 2)
  {
    v80 = OUTLINED_FUNCTION_2_52();
    OUTLINED_FUNCTION_19_27(v80);
    v38 = __src[0];
  }

  *(v38 + 16) = v33 + 2;
  *(v38 + 8 * v6 + 32) = 0;
  v42 = *(v38 + 16);
  v43 = v42 + 1;
  if (v42 >= *(v38 + 24) >> 1)
  {
    OUTLINED_FUNCTION_3_51();
  }

  v44 = __src[0];
  *(__src[0] + 16) = v43;
  *(v44 + 8 * v42 + 32) = 0x3F9EB851EB851EB8;
  if ((v42 + 2) > *(v44 + 24) >> 1)
  {
    v81 = OUTLINED_FUNCTION_2_52();
    OUTLINED_FUNCTION_19_27(v81);
    v44 = __src[0];
  }

  *(v44 + 16) = v42 + 2;
  *(v44 + 8 * v43 + 32) = 0x3FC147AE147AE148;
  OUTLINED_FUNCTION_17_31();
  if (!(!v41 & v40))
  {
    v82 = OUTLINED_FUNCTION_2_52();
    sub_1E3887DC4(v82, v42 + 1, 1);
    v45 = __src[0];
    v46 = *(__src[0] + 24) >> 1;
  }

  v102 = v3;
  *(v45 + 16) = v43;
  *(v45 + 8 * v42 + 32) = 0x3FD147AE147AE148;
  if (v46 < (v42 + 2))
  {
    v83 = OUTLINED_FUNCTION_2_52();
    OUTLINED_FUNCTION_19_27(v83);
  }

  v47 = __src[0];
  *(__src[0] + 16) = v42 + 2;
  *(v47 + 8 * v43 + 32) = 0x3FD9EB851EB851ECLL;
  v49 = *(v47 + 16);
  v48 = *(v47 + 24);
  v50 = v48 >> 1;
  v51 = v49 + 1;
  if (v48 >> 1 <= v49)
  {
    OUTLINED_FUNCTION_3_51();
    v47 = __src[0];
    v48 = *(__src[0] + 24);
    v50 = v48 >> 1;
  }

  *(v47 + 16) = v51;
  *(v47 + 8 * v49 + 32) = 0x3FE147AE147AE148;
  if (v50 < (v49 + 2))
  {
    OUTLINED_FUNCTION_19_27((v48 > 1));
    v47 = __src[0];
  }

  *(v47 + 16) = v49 + 2;
  v52 = (v47 + 32);
  *(v47 + 32 + 8 * v51) = 0x3FE599999999999ALL;
  __src[0] = v36;
  for (i = *(v47 + 16); i; --i)
  {
    if ([v37 colorWithAlphaComponent_])
    {
      MEMORY[0x1E6910BF0]();
      if (*((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
    }

    ++v52;
  }

  v54 = sub_1E40C2E40();
  v55 = *(v102 + 98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v56 = swift_allocObject();
  v57 = v56;
  *(v56 + 16) = xmmword_1E42A73A0;
  v58 = 0.65;
  if (v55)
  {
    v58 = 0.45;
    v59 = 0.36;
  }

  else
  {
    v59 = 0.56;
  }

  *(v56 + 32) = [v37 colorWithAlphaComponent_];
  *(v57 + 40) = [v37 colorWithAlphaComponent_];
  v60 = [v37 colorWithAlphaComponent_];

  *(v57 + 48) = v60;
  v61 = sub_1E40C2E40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748, &qword_1E42A75D8);
  v62 = swift_initStackObject();
  if (v55)
  {
    *(v62 + 16) = v87;
    *(v62 + 32) = 14;
    *(v62 + 40) = v61;
    v63 = sub_1E4205CB4();
  }

  else
  {
    *(v62 + 16) = xmmword_1E4299720;
    *(v62 + 32) = 14;
    *(v62 + 40) = v61;
    *(v62 + 48) = 3;
    *(v62 + 56) = v54;
    v63 = sub_1E4205CB4();
  }

  OUTLINED_FUNCTION_3_0(v102 + 120, __src);
  *(v102 + 120) = v63;

  v64 = sub_1E40C3088();
  v65 = [objc_opt_self() effectWithStyle_];
  OUTLINED_FUNCTION_36();
  (*(v66 + 1896))();
  OUTLINED_FUNCTION_36();
  (*(v67 + 1776))(1);
  OUTLINED_FUNCTION_36();
  (*(v68 + 1728))(0x3FE0000000000000, 0, 0);
  OUTLINED_FUNCTION_36();
  (*(v69 + 1752))(0x3FE0000000000000, 0x3FF0000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v70 + 1824))(&unk_1F5D60678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1E429DCC0;
  v72 = objc_opt_self();
  *(v71 + 32) = [v72 whiteColor];
  *(v71 + 40) = [v72 clearColor];
  (*(*v64 + 1800))(v71);
  OUTLINED_FUNCTION_36();
  v74 = *(v73 + 512);

  v74(3);

  v75 = *MEMORY[0x1E69798E8];
  v76 = *(*v64 + 1944);
  v77 = *MEMORY[0x1E69798E8];
  v76(v75);

  OUTLINED_FUNCTION_3_0(v102 + 128, &v103);
  *(v102 + 128) = v64;

  return v102;
}

void sub_1E3886E78()
{
  *(v0 + 99) = 2;
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 104) = MEMORY[0x1E69E7CC8];
  *(v0 + 112) = v1;
  *(v0 + 120) = v1;
  *(v0 + 128) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3886EEC(uint64_t a1, void *a2, unsigned int a3)
{
  sub_1E3C35CF4(a1, a2);
  OUTLINED_FUNCTION_5_0(v3 + 104, v24);
  v6 = *(v3 + 104);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v3 + 104) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  if (v12)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v8 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      do
      {
LABEL_9:
        v12 &= v12 - 1;
        OUTLINED_FUNCTION_8();
        v17 = *(v16 + 1640);

        v17(a1, a2, a3);
      }

      while (v12);
      continue;
    }
  }

  v18 = OUTLINED_FUNCTION_5_0(v3 + 128, v23);
  if (*(v3 + 128))
  {
    OUTLINED_FUNCTION_8();
    v21 = *(v20 + 1640);

    v21(a1, a2, a3);
  }

  sub_1E3885F70(v18, v19);
}

uint64_t sub_1E3887098(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E3887C44(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E38870E8(uint64_t a1, void *a2)
{
  v4 = dbl_1E42A73B0[sub_1E3886250(a1, a2) == 0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E429DCC0;
  *(v5 + 32) = [a2 colorWithAlphaComponent_];
  *(v5 + 40) = [a2 colorWithAlphaComponent_];
  return (*(*a1 + 1800))(v5);
}

void sub_1E38871E0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v6 = sub_1E3886250(a1, a2);
  if (!v6)
  {
    OUTLINED_FUNCTION_18_21(v6, v7, v8, v9, v10, v11, v12, v13, v129, v137, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, *(&v178 + 1), v179);
    v14 = sub_1E3887098(2, *(v3 + 112));
    v15 = swift_endAccess();
    if (v14)
    {
      v23 = COERCE_DOUBLE((*(*v14 + 304))(v15));
      if (v24)
      {
        v25 = 120.0;
      }

      else
      {
        v25 = v23;
      }

      v181.origin.x = OUTLINED_FUNCTION_1_9();
      v26 = v25 / CGRectGetHeight(v181);
      v15 = (*(*v14 + 1752))(0x3FE0000000000000, *&v26, 0);
    }

    OUTLINED_FUNCTION_18_21(v15, v16, v17, v18, v19, v20, v21, v22, v130, v138, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, *(&v178 + 1), v179);
    v27 = sub_1E3887098(3, *(v3 + 112));
    swift_endAccess();
    if (v27)
    {

      v182.origin.x = OUTLINED_FUNCTION_1_9();
      Height = CGRectGetHeight(v182);
      *&v139 = (Height - (a3 + 10.0)) / Height;
      v183.origin.x = OUTLINED_FUNCTION_1_9();
      v29 = 700.0 / CGRectGetWidth(v183);
      v184.origin.x = OUTLINED_FUNCTION_1_9();
      v30 = CGRectGetHeight(v184) - (a3 + 182.0);
      v185.origin.x = OUTLINED_FUNCTION_1_9();
      v31 = v30 / CGRectGetHeight(v185);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38CC0, &qword_1E42A1AA0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1E4297BD0;
      *(v32 + 32) = 0;
      *(v32 + 40) = (a3 + 10.0 + -88.0) / (a3 + 10.0);
      *(v32 + 48) = 0x3FF0000000000000;
      __dst[16] = 0;
      v178 = xmmword_1E4297490;
      LOBYTE(v179) = 0;
      type metadata accessor for CGPoint(0);
      v34 = v33;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_15_43();
      OUTLINED_FUNCTION_14_42();
      v35 = OUTLINED_FUNCTION_13_48();
      LOBYTE(v148) = v152;
      v43 = OUTLINED_FUNCTION_0_56(v35, v36, v37, v38, v39, v40, v41, v42, v131, v139, 0x3FE0000000000000, 0x3FF0000000000000, *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v150, v151, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170);
      sub_1E3C2FCB8(v43, v44, v45, v46, v47, v48, v34, v49);
      memcpy(__dst, __src, 0x89uLL);
      v50 = OUTLINED_FUNCTION_18();
      v51 = *(*v27 + 1600);
      (v51)(__dst, 115, v50 & 1, v34);
      *__dst = 0x3FE0000000000000;
      *&__dst[8] = v140;
      __dst[16] = 0;
      *&v178 = v29;
      *(&v178 + 1) = v31;
      LOBYTE(v179) = 0;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_15_43();
      OUTLINED_FUNCTION_14_42();
      v52 = OUTLINED_FUNCTION_13_48();
      LOBYTE(v148) = v152;
      v60 = OUTLINED_FUNCTION_0_56(v52, v53, v54, v55, v56, v57, v58, v59, v132, v140, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v150, v151, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170);
      sub_1E3C2FCB8(v60, v61, v62, v63, v64, v65, v34, v66);
      memcpy(__dst, __src, 0x89uLL);
      v67 = OUTLINED_FUNCTION_18();
      v75 = OUTLINED_FUNCTION_12_2(v67, v68, v69, v70, v71, v72, v73, v74, v133, v141, __dst[0]);
      v51(v75, 116);
      *__dst = v32;
      *&v178 = &unk_1F5D606A8;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90, &unk_1E42A75C0);
      sub_1E3C3DE00();
      v170 = v174;
      sub_1E3C3DE00();
      v162 = v166;
      sub_1E3C3DE00();
      v154 = v158;
      v77 = sub_1E3C3DE00();
      v85 = OUTLINED_FUNCTION_0_56(v77, v78, v79, v80, v81, v82, v83, v84, v14, v27, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v150, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170);
      sub_1E3C2FCB8(v85, v86, v87, v88, v89, v90, v76, v91);
      *__dst = __src[0];
      *&__dst[16] = __src[1];
      *&__dst[32] = __src[2];
      v92 = OUTLINED_FUNCTION_18();
      v100 = OUTLINED_FUNCTION_12_2(v92, v93, v94, v95, v96, v97, v98, v99, v134, v142, __dst[0]);
      v51(v100, 114);

      __dst[0] = 1;
      LOBYTE(v178) = 2;
      sub_1E3C3DE00();
      LOBYTE(v170) = v174;
      sub_1E3C3DE00();
      LOBYTE(v162) = v166;
      sub_1E3C3DE00();
      LOBYTE(v154) = v158;
      v101 = sub_1E3C3DE00();
      LOBYTE(v146) = v150;
      v109 = OUTLINED_FUNCTION_0_56(v101, v102, v103, v104, v105, v106, v107, v108, v135, v143, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170);
      sub_1E3C2FCB8(v109, v110, v111, v112, v113, v114, &type metadata for ViewGradientLayout.GradientType, v115);
      *__dst = __src[0];
      *&__dst[4] = WORD2(__src[0]);
      v116 = OUTLINED_FUNCTION_18();
      v124 = OUTLINED_FUNCTION_12_2(v116, v117, v118, v119, v120, v121, v122, v123, v136, v144, __dst[0]);
      v51(v124, 117);
    }

    if (*(v4 + 98))
    {
      OUTLINED_FUNCTION_5_0(v4 + 128, __src);
      if (*(v4 + 128))
      {
        v125 = 100.0;
LABEL_14:
        v126 = v125 + a3;
        OUTLINED_FUNCTION_8();
        v128 = *(v127 + 312);

        v128(*&v126, 0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_0(v4 + 128, __src);
      if (*(v4 + 128))
      {
        v125 = 10.0;
        goto LABEL_14;
      }
    }
  }
}

void sub_1E3887770(void *a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(10, a2, a3))
  {
    OUTLINED_FUNCTION_10_36(v3 + 112, v5);
    v6 = sub_1E3887098(2, *(v3 + 112));
    if (v6)
    {
      v7 = v6;
      swift_endAccess();
      sub_1E38870E8(v7, a1);
    }

    else
    {
      swift_endAccess();
    }

    OUTLINED_FUNCTION_10_36(v3 + 112, v8);
    v12 = *(v3 + 112);
  }

  else
  {
    OUTLINED_FUNCTION_10_36(v3 + 104, v5);
    v9 = sub_1E3887098(2, *(v3 + 104));
    if (v9)
    {
      v10 = v9;
      swift_endAccess();
      sub_1E38870E8(v10, a1);
    }

    else
    {
      swift_endAccess();
    }

    OUTLINED_FUNCTION_10_36(v3 + 104, v11);
    v12 = *(v3 + 104);
  }

  v13 = sub_1E3887098(3, v12);
  if (v13)
  {
    v14 = v13;
    swift_endAccess();
    sub_1E3887888(v14, a1);
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1E3887888(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E42A73A0;
  *(v4 + 32) = [a2 colorWithAlphaComponent_];
  *(v4 + 40) = [a2 colorWithAlphaComponent_];
  *(v4 + 48) = [a2 colorWithAlphaComponent_];
  return (*(*a1 + 1800))(v4);
}

double sub_1E3887980()
{

  return result;
}

uint64_t sub_1E38879C0()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3887A08()
{
  v0 = sub_1E38879C0();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

unint64_t sub_1E3887A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2C730;
  if (!qword_1ECF2C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C730);
  }

  return result;
}

unint64_t sub_1E3887A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2C738;
  if (!qword_1ECF2C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C738);
  }

  return result;
}

_BYTE *_s8VideosUI10LayoutTypeOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3887C44(uint64_t a1)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a1);
  v2 = sub_1E4207BA4();

  return sub_1E3887CB0(a1, v2);
}

unint64_t sub_1E3887CB0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_1E3887D14(uint64_t *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() blackColor];
  sub_1E38870E8(v1, v2);
}

uint64_t sub_1E3887D80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VUIPosition(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1E3887DC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3887DE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3887DE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38CC0, &qword_1E42A1AA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

id sub_1E3887F00(unsigned __int16 *a1, void *a2, uint64_t a3)
{
  v3 = 0;
  if (!a1 || *a1 != _TtC8VideosUI13TextViewModel)
  {
    return v3;
  }

  if (a3)
  {
    type metadata accessor for TextLayout();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;

      goto LABEL_10;
    }
  }

  v8 = off_1EE283540[0];

  if (v8(v9, v10))
  {
    type metadata accessor for TextLayout();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      goto LABEL_10;
    }
  }

  type metadata accessor for TextLayout();
  v7 = sub_1E383BCC0();
LABEL_10:

  v11 = OUTLINED_FUNCTION_18();
  v12 = sub_1E3C287F4(v7, v11 & 1);

  v17 = sub_1E373F6E0(a1[49], 9, v13, v14, v15, v16);
  if (v17)
  {
    if (a2)
    {
      v23 = objc_opt_self();
      a2 = OUTLINED_FUNCTION_3_52(v23);
    }

    sub_1E3280A90(0, &qword_1EE23B1F8, off_1E8728188);
    v24 = (*(*v7 + 2408))(v12);
    v25 = a2;
    v26 = sub_1E38899CC(v12, v24, a2);
    v3 = v26;
    if (v26)
    {
      v112 = sub_1E3889AA4;
      v113 = a1;
      aBlock = MEMORY[0x1E69E9820];
      v109 = 1107296256;
      v110 = sub_1E3889A38;
      v111 = &block_descriptor_20;
      v32 = _Block_copy(&aBlock);

      v33 = v3;

      [v33 setSelectionHandler_];
      _Block_release(v32);
    }

    goto LABEL_33;
  }

  LOBYTE(v114[0]) = 0;
  v34 = *(*a1 + 776);
  v35 = OUTLINED_FUNCTION_2_53(v17, &unk_1F5D5DD08, &off_1F5D5CA18, v18, v19, v20, v21, v22, v102, v103, v105, v107, aBlock, v109, v110, v111, v112, v113, 0);
  v34(v35);
  v36 = v111;
  sub_1E325F748(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
  if (v36)
  {
    if (a2)
    {
      objc_opt_self();
    }

    v26 = sub_1E3888874(a1);
    goto LABEL_32;
  }

  LOBYTE(v114[0]) = 1;
  (v34)(&aBlock, v114, &unk_1F5D5DC78, &off_1F5D5C9F8);
  v37 = v111;
  v26 = sub_1E325F748(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
  if (!v37)
  {
    if (!v12)
    {
      v3 = 0;
      goto LABEL_33;
    }

    v41 = *(*v7 + 2264);
    v107 = v12;
    v42 = v41();
    if (v42 != 3)
    {
      v45 = v42;
      LOBYTE(aBlock) = v42;
      LOBYTE(v114[0]) = 0;
      sub_1E376C468(v42, v43, v44);
      if ((sub_1E4205E84() & 1) == 0)
      {
        if (a2)
        {
          v78 = objc_opt_self();
          v79 = OUTLINED_FUNCTION_3_52(v78);
          v80 = v107;
          if (v79)
          {
            v81 = [v79 label];
            v80 = v107;
            v82 = v81;
          }

          else
          {
            v82 = 0;
          }
        }

        else
        {
          v82 = 0;
          v80 = v107;
        }

        v106 = sub_1E388902C(a1, v80, v7, v82);

        v104 = j__OUTLINED_FUNCTION_13_30(v45);
        if (a2)
        {
          v83 = objc_opt_self();
          v84 = OUTLINED_FUNCTION_3_52(v83);
          if (v84)
          {
            v85 = a2;
          }
        }

        else
        {
          v84 = 0;
        }

        sub_1E3280A90(0, &unk_1EE23B110, off_1E8728698);
        v86 = v106;
        v3 = sub_1E3889360(v104, v86, 0, v84);
        v92 = OUTLINED_FUNCTION_2_53(v3, &unk_1F5D5DD98, &off_1F5D5CA38, v87, v88, v89, v90, v91, v102, v104, v106, v107, aBlock, v109, v110, v111, v112, v113, 3);
        v93 = (v34)(v92);
        if (v111)
        {
          if (OUTLINED_FUNCTION_9_38(v93, v94, v95, MEMORY[0x1E69E6370], v96, v97, v98, v99))
          {
            v100 = LOBYTE(v114[0]);
            v101 = v3;
            [v101 setDisableClippingOnTallScripts_];
          }

          else
          {
          }
        }

        else
        {

          sub_1E325F748(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
        }

        goto LABEL_33;
      }
    }

    v46 = *(*v7 + 648);

    v48 = v46(v47);

    if (v48 != 5 && ((sub_1E38887C4(v48, 3, v50) & 1) != 0 || (sub_1E4125EE8(v48) & 1) != 0 && (TVAppFeature.isEnabled.getter(10, v49, v50) & 1) != 0))
    {
      v72 = (*(*v7 + 2408))();
      if (a2)
      {
        v73 = objc_opt_self();
        v74 = OUTLINED_FUNCTION_3_52(v73);
        if (v74)
        {
          v75 = a2;
        }
      }

      else
      {
        v74 = 0;
      }

      sub_1E3280A90(0, &qword_1ECF2C750, off_1E87281D8);
      v26 = sub_1E3889680(v12, v72, v74);
      goto LABEL_32;
    }

    if (TVAppFeature.isEnabled.getter(10, v49, v50))
    {
      v51 = v107;
      if (!a2)
      {
        goto LABEL_29;
      }

      v52 = objc_opt_self();
      if (OUTLINED_FUNCTION_3_52(v52))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v51 = v107;
      if (!a2)
      {
LABEL_29:
        v53 = 0;
LABEL_53:
        v3 = sub_1E388902C(a1, v51, v7, v53);

        goto LABEL_33;
      }
    }

    v76 = objc_opt_self();
    v53 = OUTLINED_FUNCTION_3_52(v76);
    if (v53)
    {
      v77 = a2;
    }

    goto LABEL_53;
  }

  v111 = &unk_1F5D5DC78;
  v112 = &off_1F5D5C9F8;
  LOBYTE(aBlock) = 2;
  v38 = sub_1E39C29F0(&aBlock, 0);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (a2)
  {
    v39 = objc_opt_self();
    v40 = OUTLINED_FUNCTION_3_52(v39);
  }

  else
  {
    v40 = 0;
  }

  v26 = sub_1E3888D40(a1, v7, v38 & 1, v40);
LABEL_32:
  v3 = v26;
LABEL_33:
  v54 = OUTLINED_FUNCTION_2_53(v26, &unk_1F5D5DAC8, &off_1F5D5C998, v27, v28, v29, v30, v31, v102, v103, v105, v107, aBlock, v109, v110, v111, v112, v113, 1);
  v56 = v55(v54);
  if (v111)
  {
    v63 = OUTLINED_FUNCTION_9_38(v56, v57, v58, MEMORY[0x1E69E6158], v59, v60, v61, v62);
    if (v63)
    {
      v64 = v114[1];
      if (v3)
      {
        v65 = v114[0];
        [v3 vui:1 isAccessibilityElement:?];
        sub_1E37FB7F0(v65, v64, v3, &selRef_vui_setAccessibilityText_);
      }

      else
      {
      }
    }
  }

  else
  {
    v63 = sub_1E325F748(&aBlock, &unk_1ECF296E0, &unk_1E4298030);
  }

  (*(*a1 + 320))(v63);
  if (v66)
  {
    if (v3)
    {
      type metadata accessor for Accessibility();
      sub_1E40A7DC8();
      v68 = v67;
      v70 = v69;

      sub_1E37FB7F0(v68, v70, v3, &selRef_setVuiAccessibilityIdentifier_);
    }

    else
    {
    }
  }

  return v3;
}

uint64_t sub_1E38887C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3889B60(a1, a2, a3);
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

id sub_1E3888874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v17 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v34 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v35) = 0;
  v22 = *(*a1 + 776);
  v23 = OUTLINED_FUNCTION_7_62();
  v22(v23);
  if (!v37)
  {
    sub_1E325F748(v36, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  OUTLINED_FUNCTION_6_47();
  if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
  {
    return 0;
  }

  v33 = v4;
  sub_1E41FE564();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  LOBYTE(v35) = 1;
  v24 = OUTLINED_FUNCTION_7_62();
  v22(v24);
  if (v37)
  {
    OUTLINED_FUNCTION_6_47();
    if (OUTLINED_FUNCTION_21_4())
    {
      sub_1E41FE564();
      sub_1E325F748(v16, &unk_1ECF28E20, &unk_1E42986D0);
      OUTLINED_FUNCTION_4_56(v13);
      sub_1E3889AF0(v13, v16);
    }
  }

  else
  {
    sub_1E325F748(v36, &unk_1ECF296E0, &unk_1E4298030);
  }

  LOBYTE(v35) = 2;
  v26 = OUTLINED_FUNCTION_7_62();
  v22(v26);
  if (!v37)
  {
    sub_1E325F748(v36, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_47();
  if (!OUTLINED_FUNCTION_21_4())
  {
LABEL_13:
    v32 = 0;
    goto LABEL_14;
  }

  v32 = v35;
LABEL_14:
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v17);
  LOBYTE(v35) = 1;
  v27 = OUTLINED_FUNCTION_7_62();
  v22(v27);
  if (v37)
  {
    OUTLINED_FUNCTION_6_47();
    v28 = OUTLINED_FUNCTION_21_4();
    v29 = v33;
    if (v28)
    {
      sub_1E41FE564();
      sub_1E325F748(v10, &unk_1ECF28E20, &unk_1E42986D0);
      OUTLINED_FUNCTION_4_56(v13);
      sub_1E3889AF0(v13, v10);
    }
  }

  else
  {
    sub_1E325F748(v36, &unk_1ECF296E0, &unk_1E4298030);
    v29 = v33;
  }

  sub_1E3280A90(0, &unk_1ECF2C760, off_1E8728570);
  sub_1E329E324(v10, v13);
  v30 = v34;
  (*(v34 + 16))(v7, v21, v17);
  OUTLINED_FUNCTION_4_56(v7);
  sub_1E329E324(v16, v29);
  v25 = sub_1E388982C(v13, v7, v29, v32);
  sub_1E325F748(v10, &unk_1ECF28E20, &unk_1E42986D0);
  sub_1E325F748(v16, &unk_1ECF28E20, &unk_1E42986D0);
  (*(v30 + 8))(v21, v17);
  return v25;
}

id sub_1E3888D40(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v31 - v16;
  LOBYTE(v34) = 1;
  (*(*a1 + 776))(v31, &v34, &unk_1F5D5DC78, &off_1F5D5C9F8, v15);
  if (!v32)
  {
    sub_1E325F748(v31, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
  {
    return 0;
  }

  v32 = &unk_1F5D5DC78;
  v33 = &off_1F5D5C9F8;
  LOBYTE(v31[0]) = 0;
  v18 = j__OUTLINED_FUNCTION_18();
  v19 = sub_1E39C29F0(v31, v18 & 1);
  __swift_destroy_boxed_opaque_existential_1(v31);
  v22 = TVAppFeature.isEnabled.getter(10, v20, v21);
  v23 = 0xEF5446454C5F4E4FLL;
  if (v19)
  {
    v23 = 0xED00004E495F4E4FLL;
  }

  if (v22)
  {
    v24 = 0x5F53455249505845;
  }

  else
  {
    v24 = 0x4954415249505845;
  }

  if (v22)
  {
    v25 = 0xEA00000000004E49;
  }

  else
  {
    v25 = v23;
  }

  sub_1E41FE564();
  v26 = (*(v10 + 16))(v13, v17, v8);
  v27 = (*(*a2 + 2408))(v26);
  sub_1E3280A90(0, &unk_1ECF2C760, off_1E8728570);
  v28 = a4;
  v29 = sub_1E388973C(v13, v27, a4, v24, v25, a3 & 1);
  (*(v10 + 8))(v17, v8);
  return v29;
}

id sub_1E388902C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
  v8 = (*(*a3 + 2408))();
  v9 = a4;
  v10 = a2;
  v11 = sub_1E3889680(a2, v8, a4);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  v59 = sub_1E3889BB4;
  v60 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E38896EC;
  v58 = &block_descriptor_9_1;
  v15 = _Block_copy(aBlock);

  [v11 setAttributedTextProvider_];
  _Block_release(v15);
  v16 = *(*a1 + 776);
  v23 = OUTLINED_FUNCTION_1_78(v17, &unk_1F5D5DD98, &off_1F5D5CA38, v18, v19, v20, v21, v22, v51, 4);
  v24 = v16(v23);
  if (v58)
  {
    v28 = OUTLINED_FUNCTION_0_57(v24, v25, v26, MEMORY[0x1E69E6370], v27);
    if (v28 && (v54 & 1) != 0)
    {
      v28 = [v11 useExtremeSizingOnTallScripts];
    }
  }

  else
  {
    v28 = sub_1E325F748(aBlock, &unk_1ECF296E0, &unk_1E4298030);
  }

  v34 = OUTLINED_FUNCTION_1_78(v28, &unk_1F5D5DD98, &off_1F5D5CA38, v29, v30, v31, v32, v33, v52, 5);
  v35 = v16(v34);
  if (v58)
  {
    v39 = OUTLINED_FUNCTION_0_57(v35, v36, v37, MEMORY[0x1E69E6370], v38);
    if (v39)
    {
      v39 = [v11 setUseLanguageAwareMarginScaling_];
    }
  }

  else
  {
    v39 = sub_1E325F748(aBlock, &unk_1ECF296E0, &unk_1E4298030);
  }

  v45 = OUTLINED_FUNCTION_1_78(v39, &unk_1F5D5DD98, &off_1F5D5CA38, v40, v41, v42, v43, v44, v53, 6);
  v46 = v16(v45);
  if (v58)
  {
    if (OUTLINED_FUNCTION_0_57(v46, v47, v48, MEMORY[0x1E69E7DE0], v49))
    {
      [v11 setLanguageAwareSystemSpacingMultiplier_];
    }
  }

  else
  {
    sub_1E325F748(aBlock, &unk_1ECF296E0, &unk_1E4298030);
  }

  return v11;
}

id sub_1E3889360(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = [swift_getObjCClassFromMetadata() labelWithType:a1 label:a2 traitCollection:a3 existingVisualEffectLabel:a4];

  return v7;
}

id sub_1E38893DC(uint64_t a1, void *a2, void *a3)
{
  if (*a1 != _TtC8VideosUI13TextViewModel)
  {
    return 0;
  }

  if (a3)
  {

    v5 = a3;
LABEL_4:

    v6 = OUTLINED_FUNCTION_18();
    v7 = sub_1E3C287F4(v5, v6 & 1);

    if (a2)
    {
      v8 = objc_opt_self();
      v9 = OUTLINED_FUNCTION_3_52(v8);
      if (v9)
      {
        v10 = a2;
      }
    }

    else
    {
      v9 = 0;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C758, &qword_1E42A75E0);
    sub_1E4148C68(sub_1E3889644, v15, &v25);

    v16 = v25;
    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 clearColor];
    [v18 setVuiBackgroundColor_];

    [v18 setVuiAttributedText_];
    v20 = *MEMORY[0x1E69DDCE0];
    v21 = *(MEMORY[0x1E69DDCE0] + 8);
    v22 = *(MEMORY[0x1E69DDCE0] + 16);
    v23 = *(MEMORY[0x1E69DDCE0] + 24);
    v13 = v18;
    [v13 setTextContainerInset_];
    [v13 setEditable_];

    goto LABEL_12;
  }

  v11 = *(*a1 + 392);

  v13 = v11(v12);
  if (v13)
  {
    type metadata accessor for TextLayout();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v5 = v14;
      goto LABEL_4;
    }

    return 0;
  }

LABEL_12:

  return v13;
}

id sub_1E3889644@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(VUITextView) init];
  *a1 = result;
  return result;
}

id sub_1E3889680(void *a1, void *a2, void *a3)
{
  v6 = [swift_getObjCClassFromMetadata() labelWithAttributedString:a1 textLayout:a2 existingLabel:a3];

  return v6;
}

id sub_1E38896EC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_1E388973C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_1E41FE514();
  v11 = sub_1E4205ED4();

  v12 = [swift_getObjCClassFromMetadata() labelWithExpirationDate:v10 textLayout:a2 existingLabel:a3 locStringPrefix:v11 useWarningColor:a6 & 1];

  v13 = sub_1E41FE5D4();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

id sub_1E388982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E41FE5D4();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v8) != 1)
  {
    v9 = sub_1E41FE514();
    (*(*(v8 - 8) + 8))(a1, v8);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v8) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1E41FE514();
    (*(*(v8 - 8) + 8))(a2, v8);
  }

  if (__swift_getEnumTagSinglePayload(a3, 1, v8) == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1E41FE514();
    (*(*(v8 - 8) + 8))(a3, v8);
  }

  v12 = [swift_getObjCClassFromMetadata() labelForRentalExpirationDate:v9 downloadExpirationDate:v10 contentAvailabilityDate:v11 downloadStatus:a4];

  return v12;
}

id sub_1E38899CC(void *a1, void *a2, void *a3)
{
  v6 = [swift_getObjCClassFromMetadata() textViewWithAttributedString:a1 textLayout:a2 existingTextView:a3];

  return v6;
}

void sub_1E3889A38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1E3889AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3889B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE287248;
  if (!qword_1EE287248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287248);
  }

  return result;
}

uint64_t sub_1E3889BB4()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_1E3C287F4(v1, v2 & 1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1E3889D5C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x188))();
  v3 = (*((*v1 & *v2) + 0x218))();

  v4 = [v3 currentMediaItem];
  return v4;
}

uint64_t sub_1E3889E74()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x188))();
  v3 = (*((*v1 & *v2) + 0x218))();

  if (v3)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1E3889F40(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E324FBDC();
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_1E41FFC94();
  v12 = a3();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1E3270FC8(a1, a2, &v17);
    _os_log_impl(&dword_1E323F000, v11, v12, "ClipsTemplateViewController:: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E69143B0](v14, -1, -1);
    MEMORY[0x1E69143B0](v13, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

id sub_1E388A10C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = (*(*a1 + 488))();
  if (!v10 || (sub_1E373E010(227, v10, v11), OUTLINED_FUNCTION_12_1(), , !v5))
  {
    OUTLINED_FUNCTION_1_79();
    sub_1E3889F40(0xD000000000000012, v28 | 0x8000000000000000, v29);
    return 0;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v13 = sub_1E39C2E98(12, v12, v12);
  if (!v13)
  {
LABEL_15:
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_1_79();
    sub_1E3889F40(v30 + 28, v31 | 0x8000000000000000, v32);

    return 0;
  }

  v14 = v13;
  v15 = sub_1E39C2DB4();
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  v17 = objc_opt_self();
  v18 = sub_1E388A824(v14);
  v19 = sub_1E3744600(v16);
  result = sub_1E388C154(v18, v19, v17);
  if (!result)
  {
    goto LABEL_70;
  }

  v21 = result;

  result = sub_1E32AE9B0(v21);
  if (!result)
  {
LABEL_14:

    goto LABEL_15;
  }

  if ((v21 & 0xC000000000000001) == 0)
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v22 = *(v21 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v22 = MEMORY[0x1E6911E60](0, v21);
LABEL_10:
  v23 = v22;
  v83 = a4;

  v24 = v23;
  result = [v23 metadata];
  if (!result)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v25 = result;
  v26 = [result ratingValue];

  if (v26)
  {
    v27 = [v26 integerValue];
  }

  else
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result = [v24 metadata];
  if (result)
  {
    v33 = result;
    v34 = [result ratingValue];

    if (v34)
    {
      [v34 &selRef_initWithMediaLibrary_fetchRequest_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8E0, &qword_1E42E35B0);
    v35 = sub_1E4205F84();
    MEMORY[0x1E69109E0](v35);

    OUTLINED_FUNCTION_0_58();
    sub_1E3889F40(v36, 0xED00002065756C61, v37);

    if (v27)
    {
      v38 = v27;
    }

    else
    {
      v38 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_1E42074B4();

    v39 = [v24 metadata];
    if (v39 && (v40 = sub_1E388C0E4(v39), v41))
    {
      v42 = v41;
    }

    else
    {

      v42 = 0xE500000000000000;
      v40 = 0x3E6C696E3CLL;
    }

    MEMORY[0x1E69109E0](v40, v42);

    OUTLINED_FUNCTION_0_58();
    sub_1E3889F40(v43, 0xEE00206E69616D6FLL, v44);

    v45 = [v24 metadata];
    if (!v45)
    {
      goto LABEL_56;
    }

    v46 = sub_1E388C0E4(v45);
    if (!v47)
    {
      goto LABEL_56;
    }

    v48 = v46;
    v49 = v47;
    v50 = sub_1E4205F14();
    if (v48 != v50 || v49 != v51)
    {
      v81 = v38;
      v53 = OUTLINED_FUNCTION_11_39(v50, v51, v50);

      if (v53)
      {

        v38 = v81;
        goto LABEL_43;
      }

      v54 = sub_1E4205F14();
      v56 = v48 == v54 && v49 == v55;
      v38 = v81;
      if (!v56)
      {
        v57 = OUTLINED_FUNCTION_11_39(v54, v55, v54);

        if ((v57 & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_43;
      }
    }

LABEL_43:
    v58 = sub_1E4205F14();
    if (v59)
    {
      v60 = v58;
      v61 = v59;
      if (v58 == sub_1E4205F14() && v61 == v62)
      {

        if (a5)
        {
LABEL_55:

          OUTLINED_FUNCTION_7_13();
          OUTLINED_FUNCTION_0_58();
          v72 = v71 | 0xC;
LABEL_57:
          sub_1E3889F40(v72, v70 | 0x8000000000000000, v69);

          return 0;
        }
      }

      else
      {
        v82 = v24;
        v64 = v38;
        v65 = sub_1E42079A4();

        v66 = (v65 & 1) == 0;
        v38 = v64;
        v24 = v82;
        v67 = a4;
        if (v66)
        {
          v67 = a2;
        }

        v83 = v67;
        if (v66)
        {
          v68 = a3;
        }

        else
        {
          v68 = a5;
        }

        if (v68)
        {
          goto LABEL_55;
        }
      }

      sub_1E42074B4();

      MEMORY[0x1E69109E0](v60, v61);

      MEMORY[0x1E69109E0](8254, 0xE200000000000000);
      v75 = sub_1E4207944();
      MEMORY[0x1E69109E0](v75);

      MEMORY[0x1E69109E0](2113056, 0xE300000000000000);
      v76 = sub_1E4207944();
      MEMORY[0x1E69109E0](v76);

      MEMORY[0x1E69109E0](2112800, 0xE300000000000000);
      v74 = v83 < v38;
      if (v83 >= v38)
      {
        v77 = 0x65736C6166;
      }

      else
      {
        v77 = 1702195828;
      }

      if (v83 >= v38)
      {
        v78 = 0xE500000000000000;
      }

      else
      {
        v78 = 0xE400000000000000;
      }

      MEMORY[0x1E69109E0](v77, v78);

      OUTLINED_FUNCTION_0_58();
      sub_1E3889F40(v79, 0xEF3C206465746369, v80);

      return v74;
    }

LABEL_56:
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_0_58();
    v72 = v73 + 15;
    goto LABEL_57;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1E388A824(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1E382A1D8(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E382A1D8((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1E388A954(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_1E4207384();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1E6911E60](0, a1);
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
  return result;
}

void sub_1E388A9D0(uint64_t (*a1)(uint64_t)@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, unint64_t a6@<X5>, unint64_t a7@<X6>, void *a8@<X8>)
{
  LOBYTE(v10) = a5;
  v157 = a1;

  sub_1E388BFFC(0x726564616568, 0xE600000000000000, &v155);
  sub_1E329505C(&v155);
  v14 = sub_1E4205CB4();
  *(&v156 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
  *&v155 = v14;
  sub_1E329504C(&v155, &v153);
  v15 = v157;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v152 = v15;
  sub_1E32A87C0(&v153, 0x74756F79616CLL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v17 = v15;
  type metadata accessor for PlayerCollectionViewModel();

  v18 = sub_1E3FC60D0(117, v15, 0);
  v19 = v18;
  if (v10 & 1) != 0 && (a7)
  {
    if (v18)
    {
      v145 = a2;
      goto LABEL_35;
    }

    goto LABEL_13;
  }

  if (!v18)
  {
LABEL_13:

LABEL_145:
    v58 = 0;
    v43 = 0;
    v94 = 0;
    a7 = 0;
    a3 = 0;
    goto LABEL_146;
  }

  v150 = a6;
  OUTLINED_FUNCTION_47_0();
  v20 += 130;
  v21 = *v20;
  v22 = v20;

  v24 = v21(v23);

  v145 = a2;
  if (v24)
  {
    if (sub_1E32AE9B0(v24))
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        goto LABEL_218;
      }

      OUTLINED_FUNCTION_9_39();
      if (v25)
      {
        OUTLINED_FUNCTION_13_49();
        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_221;
    }

    v24 = 0;
  }

  while (1)
  {
    OUTLINED_FUNCTION_47_0();
    v27 += 130;
    v17 = *v27;
    a2 = v27;

    v22 = v17(v28);

    if (!v22)
    {
      goto LABEL_21;
    }

    if (sub_1E32AE9B0(v22))
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1E6911E60](0, v22);
        goto LABEL_20;
      }

      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v29 = *(v22 + 32);

LABEL_20:

        v31 = MEMORY[0x1EEE9AC00](v30);
        a7 = (*(*v29 + 1048))(sub_1E388C238, v31);

LABEL_21:
        if (!v24)
        {
          goto LABEL_35;
        }

LABEL_22:

        v33 = v17(v32);

        if (v33)
        {
          if (sub_1E32AE9B0(v33))
          {
            if ((v33 & 0xC000000000000001) == 0)
            {
              if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_226;
              }

              v34 = *(v33 + 32);

              goto LABEL_27;
            }

            goto LABEL_224;
          }
        }

        else
        {
LABEL_30:
        }

LABEL_34:
        v145 = 0;
        goto LABEL_35;
      }

LABEL_221:
      __break(1u);
LABEL_222:
      OUTLINED_FUNCTION_14_43();
      v24 = v137;
LABEL_103:
      v72 = (*(*v24 + 504))(&v155);
      if (*v73)
      {
        v74 = v73;
        v146 = v72;
        v154 = v22;
        *&v153 = v142;
        *(&v153 + 1) = a3;
        if (v17)
        {

          OUTLINED_FUNCTION_14_43();
          v76 = v75;
        }

        else
        {
          v76 = *a7;
        }

        type metadata accessor for TextViewModel();
        v98 = sub_1E3C27638(17, &v153, v76, 0, 0);
        if (v98)
        {
          v101 = v98;
          v102 = swift_isUniquelyReferenced_nonNull_native();
          *&v153 = *v74;
          sub_1E37518B8(v101, 17, v102);
          *v74 = v153;
        }

        else
        {
          sub_1E388BF2C(17, v99, v100);
        }

        v95 = &v155;
        v96 = 0;
        v97 = v146;
      }

      else
      {
        v95 = OUTLINED_FUNCTION_2_54();
      }

      v97(v95, v96);

      v70 = a3;
      a2 = v142;
      if (!v17)
      {
        goto LABEL_111;
      }

LABEL_154:
      MEMORY[0x1E6911E60](0, v151);
LABEL_113:
      OUTLINED_FUNCTION_8();
      (*(v79 + 488))();
      OUTLINED_FUNCTION_12_1();

      if (!v24)
      {

LABEL_142:

LABEL_144:

        v19 = 0;
        goto LABEL_145;
      }

      v147 = v19;
      v141 = v70;
      v142 = a2;
      v139 = v10;
      a7 = v24 + 64;
      v80 = 1 << *(v24 + 32);
      v81 = -1;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      a2 = v81 & *(v24 + 64);
      v82 = (v80 + 63) >> 6;

      v10 = 0;
      while (1)
      {
        if (!a2)
        {
          v19 = v147;
          while (1)
          {
            v86 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v86 >= v82)
            {

              goto LABEL_142;
            }

            a2 = *(a7 + 8 * v86);
            ++v10;
            if (a2)
            {
              v10 = v86;
              goto LABEL_123;
            }
          }

          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
          goto LABEL_211;
        }

LABEL_123:
        v87 = __clz(__rbit64(a2));
        v88 = *(*(v24 + 48) + ((v10 << 7) | (2 * v87)));
        a2 &= a2 - 1;
        LOWORD(v155) = *(*(v24 + 48) + ((v10 << 7) | (2 * v87)));
        LOWORD(v153) = 224;
        a3 = sub_1E3741534(v83, v84, v85);
        v83 = OUTLINED_FUNCTION_12_38();
        if ((v83 & 1) == 0)
        {
          LOWORD(v155) = v88;
          LOWORD(v153) = 17;
          v83 = OUTLINED_FUNCTION_12_38();
          if ((v83 & 1) == 0)
          {
            break;
          }
        }
      }

      v24 = 0;
      *&v155 = MEMORY[0x1E69E7CC0];
      a2 = v88;
      v19 = v147;
      while (1)
      {
        while (1)
        {
          a7 = v151;
          if (v150 == v24)
          {
            if (v148)
            {
              OUTLINED_FUNCTION_8();
              v103 += 61;
              v104 = *v103;
              a3 = v103;

              v104(v105);
              OUTLINED_FUNCTION_12_1();

              if (v104)
              {
                v138 = sub_1E373E010(a2, v104, v106);

                goto LABEL_161;
              }
            }

            goto LABEL_160;
          }

          if (v17)
          {
            a3 = MEMORY[0x1E6911E60](v24, v151);
          }

          else
          {
            if (v24 >= *(a4 + 16))
            {
              goto LABEL_216;
            }

            a3 = *(v151 + 8 * v24 + 32);
          }

          a7 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_206;
          }

          v89 = (*(*a3 + 488))();
          if (v89)
          {
            break;
          }

LABEL_136:

          ++v24;
        }

        if (!*(v89 + 16) || (sub_1E3740AE8(a2, v90, v91), (v92 & 1) == 0))
        {

          goto LABEL_136;
        }

        MEMORY[0x1E6910BF0](v93);
        a3 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a3 >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
        v144 = v155;
        ++v24;
      }
    }

    if (v24)
    {
      goto LABEL_22;
    }

LABEL_35:
    OUTLINED_FUNCTION_47_0();
    v42 = *(v41 + 656);

    v42(a3);

    a7 = *v19 + 1040;
    v43 = *a7;

    v45 = (v43)(v44);
    v143 = v43;
    if (!v45)
    {
      break;
    }

    v24 = v45;
    if (!sub_1E32AE9B0(v45))
    {

      break;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
LABEL_214:
      OUTLINED_FUNCTION_15_44();
LABEL_40:

      OUTLINED_FUNCTION_8();
      a3 = (*(v47 + 872))();

      if (a3)
      {
        goto LABEL_44;
      }

      break;
    }

    OUTLINED_FUNCTION_9_39();
    if (v46)
    {
      OUTLINED_FUNCTION_13_49();
      goto LABEL_40;
    }

    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    OUTLINED_FUNCTION_15_44();
LABEL_11:

    OUTLINED_FUNCTION_8();
    (*(v26 + 872))();
    OUTLINED_FUNCTION_12_1();

    if (v24)
    {
      *&v153 = v24;
      *&v155 = a2;
      BYTE8(v155) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      sub_1E3798394();
      sub_1E38D2054(&v155, &v152);

      v24 = v152;
    }
  }

  a3 = MEMORY[0x1E69E7CC0];
LABEL_44:
  a7 = MEMORY[0x1E69E7CC0];
  *&v155 = MEMORY[0x1E69E7CC0];
  v48 = sub_1E32AE9B0(a3);
  a2 = 0;
  v10 = a3 & 0xC000000000000001;
  a4 = a3 & 0xFFFFFFFFFFFFFF8;
  v144 = a7;
  while (v48 != a2)
  {
    if (v10)
    {
      v49 = MEMORY[0x1E6911E60](a2, a3);
      v43 = v49;
    }

    else
    {
      if (a2 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_159;
      }

      v43 = *(a3 + 8 * a2 + 32);
    }

    v17 = (a2 + 1);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      v138 = 0;
LABEL_161:
      v24 = 0;
      v140 = a2;
      while (v150 != v24)
      {
        if (v17)
        {
          a3 = MEMORY[0x1E6911E60](v24, a7);
        }

        else
        {
          if (v24 >= *(a4 + 16))
          {
            goto LABEL_217;
          }

          a3 = *(a7 + 8 * v24 + 32);
        }

        if (__OFADD__(v24, 1))
        {
          goto LABEL_207;
        }

        v109 = (*(*a3 + 504))(&v155);
        if (*v107)
        {
          v10 = v107;
          sub_1E3740AE8(a2, v107, v108);
          if (v110)
          {
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_10_37();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C780, &unk_1E42988B0);
            sub_1E4207644();
            v111 = v153;

            v112 = type metadata accessor for ViewModel();
            sub_1E37414E0(v112, v113, v114);
            a7 = v151;
            sub_1E4207664();
            *v10 = v111;
          }

          v115 = OUTLINED_FUNCTION_2_54();
          v109(v115);
          a2 = v140;
        }

        else
        {
          v116 = OUTLINED_FUNCTION_2_54();
          v109(v116);
        }

        ++v24;
      }

      a4 = v144;
      v24 = sub_1E32AE9B0(v144);
      a2 = 0;
      v150 = v144 & 0xC000000000000001;
      while (v24 != a2)
      {
        if (v150)
        {
          v17 = MEMORY[0x1E6911E60](a2, a4);
        }

        else
        {
          if (a2 >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_210;
          }

          v17 = *(a4 + 8 * a2 + 32);
        }

        if (__OFADD__(a2, 1))
        {
          goto LABEL_209;
        }

        v119 = (*(*v17 + 504))(&v155);
        if (*v117)
        {
          v120 = v117;
          sub_1E3740AE8(67, v117, v118);
          if (v121)
          {
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_10_37();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C780, &unk_1E42988B0);
            a4 = v144;
            sub_1E4207644();
            v122 = v153;

            v123 = type metadata accessor for ViewModel();
            sub_1E37414E0(v123, v124, v125);
            a7 = v151;
            sub_1E4207664();
            *v120 = v122;
          }
        }

        v126 = OUTLINED_FUNCTION_2_54();
        v119(v126);

        ++a2;
      }

      a2 = v143;
      v127 = v143();
      a3 = v145;
      if (v127)
      {
        v128 = v127;
        if (sub_1E32AE9B0(v127))
        {
          if ((v128 & 0xC000000000000001) == 0)
          {
            OUTLINED_FUNCTION_9_39();
            if (v129)
            {
              OUTLINED_FUNCTION_13_49();
              goto LABEL_190;
            }

            __break(1u);
LABEL_229:
            __break(1u);
LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
            return;
          }

LABEL_226:
          OUTLINED_FUNCTION_15_44();
LABEL_190:

          OUTLINED_FUNCTION_8();
          (*(v130 + 1048))(j__OUTLINED_FUNCTION_51_1, 0);
          OUTLINED_FUNCTION_12_1();
        }
      }

      v131 = (a2)(v127);
      v43 = v141;
      v58 = v142;
      if (v131)
      {
        v132 = v131;
        if (sub_1E32AE9B0(v131))
        {
          if ((v132 & 0xC000000000000001) != 0)
          {
            OUTLINED_FUNCTION_15_44();
          }

          else
          {
            OUTLINED_FUNCTION_9_39();
            if (!v133)
            {
              goto LABEL_229;
            }

            OUTLINED_FUNCTION_13_49();
          }

          OUTLINED_FUNCTION_8();
          (*(v134 + 1016))(a4);
          OUTLINED_FUNCTION_12_1();
        }
      }

      v135 = v138;
      if (!v138)
      {
        goto LABEL_203;
      }

      goto LABEL_204;
    }

    v50 = (*(*v43 + 488))(v49);
    if (v50)
    {
      if (!*(v50 + 16) || (sub_1E3740AE8(227, v51, v52), (v53 & 1) == 0))
      {

        goto LABEL_54;
      }

      MEMORY[0x1E6910BF0](v54);
      v43 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43 >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      a7 = v155;
      ++a2;
    }

    else
    {
LABEL_54:

      ++a2;
    }
  }

  OUTLINED_FUNCTION_47_0();
  v56 = (*(v55 + 960))();
  if (v56 && ((*(*v56 + 488))(v56), OUTLINED_FUNCTION_12_1(), , v48))
  {
    v148 = sub_1E373E010(227, v48, v57);
  }

  else
  {
    v148 = 0;
  }

  v24 = sub_1E32AE9B0(a7);
  v58 = 0;
  v17 = (a7 & 0xC000000000000001);
  a4 = a7 & 0xFFFFFFFFFFFFFF8;
  v151 = a7;
  a7 += 32;
  while (1)
  {
    if (v58 == v24)
    {
      v64 = sub_1E32AE9B0(v151);
      a2 = MEMORY[0x1E69E7CA0];
      v150 = v64;
      if (v64)
      {
        if (!v17)
        {
          if (*(a4 + 16))
          {

            goto LABEL_79;
          }

          __break(1u);
          goto LABEL_214;
        }

        goto LABEL_212;
      }

      v155 = 0u;
      v156 = 0u;
LABEL_84:
      sub_1E329505C(&v155);
      LOBYTE(v10) = 0;
      if (v150)
      {
        if (v17)
        {
          goto LABEL_95;
        }

LABEL_86:
        if (!*(a4 + 16))
        {
          goto LABEL_208;
        }

        goto LABEL_88;
      }

LABEL_97:
      LOBYTE(v153) = 3;
      OUTLINED_FUNCTION_47_0();
      v33 = v19;
      (*(v71 + 776))(&v155, &v153, &unk_1F5D5E848, &off_1F5D5CC98);
      if (!*(&v156 + 1))
      {
        sub_1E329505C(&v155);
LABEL_107:
        v77 = [objc_opt_self() sharedInstance];
        if (!v77)
        {
          goto LABEL_230;
        }

        v24 = v77;
        a2 = sub_1E3741090(0xD000000000000016, 0x80000001E4264220, v77);
        v70 = v78;

        if (!v70)
        {
          goto LABEL_231;
        }

        if (!v150)
        {
LABEL_143:

          goto LABEL_144;
        }

LABEL_110:
        if (v17)
        {
          goto LABEL_154;
        }

LABEL_111:
        while (!*(a4 + 16))
        {
LABEL_211:
          __break(1u);
LABEL_212:
          OUTLINED_FUNCTION_14_43();
LABEL_79:
          LOBYTE(v153) = 4;
          OUTLINED_FUNCTION_8();
          (*(v65 + 776))(&v155, &v153, &unk_1F5D5E848, &off_1F5D5CC98);

          if (!*(&v156 + 1))
          {
            goto LABEL_84;
          }

          if (swift_dynamicCast())
          {
            LOBYTE(v10) = sub_1E3D7CB28();
            if (!v17)
            {
              goto LABEL_86;
            }
          }

          else
          {
            LOBYTE(v10) = 0;
            if (!v17)
            {
              goto LABEL_86;
            }
          }

LABEL_95:
          OUTLINED_FUNCTION_14_43();
LABEL_88:
          OUTLINED_FUNCTION_8();
          (*(v66 + 488))();
          OUTLINED_FUNCTION_12_1();

          if (!v24)
          {
            goto LABEL_97;
          }

          v68 = sub_1E373E010(17, v24, v67);

          if (!v68)
          {
            goto LABEL_97;
          }

          if (*v68 != _TtC8VideosUI13TextViewModel)
          {

            goto LABEL_97;
          }

          a2 = sub_1E3C27024();
          v70 = v69;

          if (v70)
          {
            goto LABEL_110;
          }

          a2 = 0;
          v70 = 0xE000000000000000;
          if (v17)
          {
            goto LABEL_154;
          }
        }

        goto LABEL_113;
      }

      v22 = MEMORY[0x1E69E6158];
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_107;
      }

      a3 = *(&v153 + 1);
      if (!v150)
      {
        goto LABEL_143;
      }

      v142 = v153;
      if (v17)
      {
        goto LABEL_222;
      }

      if (*(a4 + 16))
      {
        v24 = *a7;

        goto LABEL_103;
      }

      __break(1u);
LABEL_224:
      v34 = MEMORY[0x1E6911E60](0, v33);
LABEL_27:

      v36 = (*(*v34 + 872))(v35);

      if (!v36)
      {
        goto LABEL_30;
      }

      sub_1E3841D9C(v24, v36);
      v38 = v37;
      v40 = v39;

      if (v40)
      {
        goto LABEL_34;
      }

      v145 = v38;
      goto LABEL_35;
    }

    if (v17)
    {
      v43 = MEMORY[0x1E6911E60](v58, v151);
    }

    else
    {
      if (v58 >= *(a4 + 16))
      {
        goto LABEL_202;
      }

      v43 = *(a7 + 8 * v58);
    }

    if (__OFADD__(v58++, 1))
    {
      break;
    }

    v61 = v43;
    do
    {
      v62 = (*(*v61 + 576))(v60);
      if (v62)
      {
        (*(*v62 + 208))(0);
      }

      v63 = (*(*v61 + 624))(v62);

      v61 = v63;
    }

    while (v63);
  }

  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  v135 = sub_1E388A954(a4);
LABEL_204:

  OUTLINED_FUNCTION_47_0();
  (*(v136 + 1616))(v135);

  v94 = v139 & 1;
LABEL_146:
  *a8 = v19;
  a8[1] = v58;
  a8[2] = v43;
  a8[3] = v94;
  a8[4] = a7;
  a8[5] = a3;
}