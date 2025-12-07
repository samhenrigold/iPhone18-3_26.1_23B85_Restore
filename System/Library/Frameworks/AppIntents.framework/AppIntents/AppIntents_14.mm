uint64_t sub_18F22A998()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F22AA7C()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 176);
  if (*(v0 + 160))
  {
    sub_18F0FD0B4((v0 + 136), v0 + 96);
    sub_18F0FD0B4((v0 + 96), v1);
  }

  else
  {
    sub_18F0EF1A8(v0 + 136, &qword_1EACD2FE0, &unk_18F5579C0);
    sub_18F0FD724(v0 + 56, v1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F22AB24()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F22AB80()
{
  OUTLINED_FUNCTION_69();
  sub_18F0F689C(*(v0 + 232), *(v0 + 240));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F22ABDC()
{
  OUTLINED_FUNCTION_69();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 56);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F22AC38()
{
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  sub_18F0FD724(v0 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v5);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  static AppIntent._identifier.getter(DynamicType);
  sub_18F164DD4();
  v3 = v2;

  return v3;
}

uint64_t sub_18F22AD2C()
{
  sub_18F116A7C((v0 + 2), &v8, &qword_1EACD0620, &unk_18F541850);
  if (v9)
  {
    sub_18F0FD0B4(&v8, &v10);
    sub_18F0FD724(&v10, &v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
    sub_18F52194C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v10);
  }

  else
  {
    sub_18F0EF1A8(&v8, &qword_1EACD0620, &unk_18F541850);
  }

  if (v0[7])
  {
    v1 = v0[8];
    v10 = v0[7];
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4530, &qword_18F549B50);
    v2 = sub_18F52196C();
    v4 = v3;
  }

  else
  {
    v4 = 0xE900000000000064;
    v2 = 0x656E696665646E75;
  }

  v5 = v0[1];
  v10 = *v0;
  v11 = v5;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  MEMORY[0x193ADB000](673201440, 0xE400000000000000);
  MEMORY[0x193ADB000](v2, v4);

  MEMORY[0x193ADB000](8233, 0xE200000000000000);
  v6 = OUTLINED_FUNCTION_80_0();
  MEMORY[0x193ADB000](v6);

  return v10;
}

unint64_t sub_18F22AEBC()
{
  result = qword_1ED6FF180;
  if (!qword_1ED6FF180)
  {
    sub_18F520E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FF180);
  }

  return result;
}

uint64_t sub_18F22AF14()
{
  v1 = v0 + OBJC_IVAR____TtC10AppIntents14PreparedIntent__viewIntent;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC10AppIntents14PreparedIntent__viewIntent));
  v2 = *(v1 + 8);
  sub_18F0F693C(v2, *(v1 + 16));
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_18F22AF84()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 136);
  v2 = OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent;
  sub_18F0FD724(v1 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0, &qword_18F549620);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2FC0, &qword_18F54A290);
  if (OUTLINED_FUNCTION_20_17(v3))
  {
    sub_18F0FD0B4((v0 + 96), v0 + 16);
    v4 = *(v0 + 40);
    *(v0 + 144) = v4;
    *(v0 + 160) = __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v4);
    sub_18F521EBC();
    *(v0 + 168) = sub_18F521EAC();
    v5 = sub_18F521E1C();
    v7 = v6;
    v8 = sub_18F22B19C;
LABEL_5:

    return MEMORY[0x1EEE6DFA0](v8, v5, v7);
  }

  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_18F0EF1A8(v0 + 96, &qword_1EACD2FC8, &qword_18F54A298);
  sub_18F0FD724(v1 + v2, v0 + 56);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2FD0, &qword_18F54A2A0);
  if (OUTLINED_FUNCTION_20_17(v9))
  {
    sub_18F0FD0B4((v0 + 96), v0 + 16);
    v10 = *(v0 + 40);
    *(v0 + 184) = v10;
    *(v0 + 200) = __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v10);
    sub_18F521EBC();
    *(v0 + 208) = sub_18F521EAC();
    v5 = sub_18F521E1C();
    v7 = v11;
    v8 = sub_18F22B270;
    goto LABEL_5;
  }

  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_18F0EF1A8(v0 + 96, &qword_1EACD2FD8, &qword_18F54A2A8);
  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_18F22B19C()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_80_0();
  *(v0 + 176) = sub_18F221198();
  v1 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_18F22B210()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[22];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_18F22B270()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_80_0();
  *(v0 + 216) = sub_18F22151C();
  v1 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_18F22B2E4()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[27];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_18F22B344(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC10AppIntents14PreparedIntent__viewIntent;
  os_unfair_lock_lock(v5);
  sub_18F22B3C0((v5 + 8), a1, a2);
  os_unfair_lock_unlock(v5);

  return sub_18F0F689C(a1, a2);
}

uint64_t sub_18F22B3C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    sub_18F0F689C(v6, a1[1]);
  }

  if (a2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  *a1 = a2;
  a1[1] = v7;
  return sub_18F0F693C(a2, a3);
}

id sub_18F22B420()
{
  sub_18F0FD724(v0 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0, &qword_18F549620);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2FB0, &unk_18F55C570);
  if (OUTLINED_FUNCTION_19_19(v1, v2))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v8, *(&v9 + 1));
    v3 = OUTLINED_FUNCTION_25_17();
    v5 = sub_18F3CB89C(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v8);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_18F0EF1A8(&v8, &qword_1EACD2FB8, &qword_18F54A280);
    return 0;
  }

  return v5;
}

uint64_t sub_18F22B4E0()
{
  sub_18F0FD724(v0 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0, &qword_18F549620);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2FA0, &qword_18F54A268);
  if (OUTLINED_FUNCTION_19_19(v1, v2))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v8, *(&v9 + 1));
    v3 = OUTLINED_FUNCTION_25_17();
    v5 = sub_18F3F1B8C(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v8);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_18F0EF1A8(&v8, &qword_1EACD2FA8, &unk_18F54A270);
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_18F22B5A4(__int128 *a1, uint64_t *a2)
{
  *a2 = *a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_18F22B5E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v96 = MEMORY[0x1E69E7CC0];
    sub_18F3AADEC(0, v3, 0);
    v4 = v96;
    v6 = a1 + 32;
    do
    {
      sub_18F139A94(v6, &v93);
      v8 = *(&v94 + 1);
      v7 = v95;
      __swift_project_boxed_opaque_existential_1Tm(&v93, *(&v94 + 1));
      v9 = (*(*(v7 + 8) + 16))(v8);
      if (v10)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0x6E776F6E6B6E753CLL;
      }

      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0xE90000000000003ELL;
      }

      __src[0] = v93;
      __src[1] = v94;
      __src[2] = v95;
      v96 = v4;
      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_18F3AADEC(v13 > 1, v14 + 1, 1);
        v4 = v96;
      }

      *(v4 + 16) = v14 + 1;
      v15 = v4 + (v14 << 6);
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v16 = __src[0];
      v17 = __src[2];
      *(v15 + 64) = __src[1];
      *(v15 + 80) = v17;
      *(v15 + 48) = v16;
      v6 += 48;
      --v3;
    }

    while (v3);
  }

  v18 = sub_18F461884(v4);
  v19 = *(a2 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  v86 = v18;
  if (v19)
  {
    *&v93 = MEMORY[0x1E69E7CC0];
    sub_18F3AADCC(0, v19, 0);
    v20 = v93;
    v21 = a2 + 32;
    do
    {
      sub_18F1306CC(v21, &__src[1]);
      __src[0] = __src[1];
      *&v93 = v20;
      v22 = *(v20 + 16);
      v23 = *(v20 + 24);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      if (v22 >= v23 >> 1)
      {
        sub_18F3AADCC(v23 > 1, v22 + 1, 1);
        v20 = v93;
      }

      *(v20 + 16) = v22 + 1;
      memcpy((v20 + 96 * v22 + 32), __src, 0x60uLL);
      v21 += 80;
      --v19;
    }

    while (v19);
    v24 = v86;
  }

  else
  {
    v24 = v18;
  }

  v25 = sub_18F4618AC(v20);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v26 = sub_18F1A86A0();
  v27 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v28 = sub_18F22D224(v27, v26, sub_18F22D918);

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v91 = v25;
  v29 = sub_18F1A86A0();
  v30 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v31 = sub_18F22D224(v30, v29, sub_18F22D918);

  v32 = &qword_1ED6FDFF8[1];
  v90 = v31;
  if (!*(v28 + 16))
  {

    goto LABEL_40;
  }

  if (qword_1ED6FEFE8 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v33 = sub_18F52165C();
    __swift_project_value_buffer(v33, qword_1ED7077A8);
    v34 = sub_18F52163C();
    v35 = sub_18F52223C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_18F0E9000, v34, v35, "Following parameters were not provided: ", v36, 2u);
      MEMORY[0x193ADD350](v36, -1, -1);
    }

    v37 = v28 + 56;
    v38 = 1 << *(v28 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v28 + 56);
    v41 = (v38 + 63) >> 6;

    v42 = 0;
    v88 = v28;
    while (v40)
    {
LABEL_31:
      v44 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v45 = (*(v28 + 48) + ((v42 << 10) | (16 * v44)));
      v46 = *v45;
      v47 = v45[1];
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v48 = sub_18F52163C();
      v49 = sub_18F52223C();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = v24;
        v51 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v96 = v85;
        *v51 = 136315138;
        if (!v50[2].isa || (v52 = sub_18F0F713C(v46, v47), (v53 & 1) == 0) || (sub_18F139A94(v50[7].isa + 48 * v52, __src), sub_18F0FD724(__src, &v93), sub_18F13E500(__src), v55 = *(&v94 + 1), v54 = v95, __swift_project_boxed_opaque_existential_1Tm(&v93, *(&v94 + 1)), v56 = (*(*(v54 + 8) + 16))(v55), v58 = v57, __swift_destroy_boxed_opaque_existential_1Tm(&v93), !v58))
        {

          v56 = 0x6E776F6E6B6E753CLL;
          v58 = 0xE90000000000003ELL;
        }

        v59 = sub_18F11897C(v56, v58, &v96);

        *(v51 + 4) = v59;
        _os_log_impl(&dword_18F0E9000, v48, v49, " - %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v85);
        MEMORY[0x193ADD350](v85, -1, -1);
        MEMORY[0x193ADD350](v51, -1, -1);

        v24 = v86;
        v28 = v88;
      }

      else
      {

        v28 = v88;
      }
    }

    while (1)
    {
      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      if (v43 >= v41)
      {
        break;
      }

      v40 = *(v37 + 8 * v43);
      ++v42;
      if (v40)
      {
        v42 = v43;
        goto LABEL_31;
      }
    }

    v31 = v90;
    v32 = qword_1ED6FDFF8 + 8;
LABEL_40:
    if (!*(v31 + 16))
    {
      break;
    }

    if (v32[509] != -1)
    {
      swift_once();
    }

    v60 = sub_18F52165C();
    v61 = __swift_project_value_buffer(v60, qword_1ED7077A8);
    v62 = sub_18F52163C();
    v63 = sub_18F52221C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = v31;
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_18F0E9000, v62, v63, "Following extra parameters were provided: ", v65, 2u);
      v66 = v65;
      v31 = v64;
      MEMORY[0x193ADD350](v66, -1, -1);
    }

    v67 = v31 + 56;
    v68 = 1 << *(v31 + 32);
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v70 = v69 & *(v31 + 56);
    v71 = (v68 + 63) >> 6;

    v72 = 0;
    v86 = v61;
    while (v70)
    {
LABEL_53:
      v74 = __clz(__rbit64(v70));
      v70 &= v70 - 1;
      v75 = (*(v31 + 48) + ((v72 << 10) | (16 * v74)));
      v76 = *v75;
      v28 = v75[1];
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v24 = sub_18F52163C();
      v77 = sub_18F52221C();

      if (os_log_type_enabled(v24, v77))
      {
        v87 = v76;
        v78 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *&v93 = v89;
        *v78 = 136315138;
        if (*(v91 + 16) && (v79 = sub_18F0F713C(v87, v28), (v80 & 1) != 0))
        {
          sub_18F1306CC(*(v91 + 56) + 80 * v79, __src);
          v81 = *(&__src[0] + 1);
          v82 = *&__src[0];
          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
          sub_18F130770(__src);
        }

        else
        {
          v82 = 0x6E776F6E6B6E753CLL;
          v81 = 0xE90000000000003ELL;
        }

        v83 = sub_18F11897C(v82, v81, &v93);

        *(v78 + 4) = v83;
        _os_log_impl(&dword_18F0E9000, v24, v77, " - %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        MEMORY[0x193ADD350](v89, -1, -1);
        MEMORY[0x193ADD350](v78, -1, -1);

        v31 = v90;
      }

      else
      {

        v31 = v90;
      }
    }

    while (1)
    {
      v73 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v73 >= v71)
      {
      }

      v70 = *(v67 + 8 * v73);
      ++v72;
      if (v70)
      {
        v72 = v73;
        goto LABEL_53;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }
}

uint64_t sub_18F22BEAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v4);
  result = (*(*(v3 + 8) + 16))(v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_18F22BF04(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v6 = *(v5 + 8);
  v7 = *(v6 + 24);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v7(v2, v3, v4, v6);
}

uint64_t sub_18F22BF84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10AppIntents14PreparedIntent_id;
  v5 = sub_18F520E6C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_18F22C01C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_18F22C05C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

BOOL sub_18F22C0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a1;
  v16 = a4;
  v7 = sub_18F229E24(sub_18F22D8F8, v14, a3);
  if (v8)
  {
    return 0;
  }

  v10 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v13[2] = a2;
  v13[3] = a4;
  v11 = v10 < sub_18F229E24(sub_18F22D8F8, v13, a3);
  return (v12 & 1) != 0 || v11;
}

uint64_t sub_18F22C17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAtKeyPath();
  if (!a2)
  {
    if (!v10)
    {
      v7 = 1;
      return v7 & 1;
    }

    v7 = 0;
    goto LABEL_12;
  }

  if (v10)
  {
    if (v9 == a1 && v10 == a2)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_18F522D5C();
    }

LABEL_12:

    return v7 & 1;
  }

  v7 = 0;
  return v7 & 1;
}

uint64_t sub_18F22C22C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v125 = a1;
  v136 = MEMORY[0x1E69E7CC0];
  v129 = a3;
  v11 = a3[1];
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  if (v11 >= 1)
  {
    v123 = a4;
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v132 = a5;
    v133 = a6;
    do
    {
      v14 = v12;
      v15 = v12 + 1;
      if ((v12 + 1) < v11)
      {
        v131 = v11;
        v16 = *v129;
        sub_18F139A94(*v129 + 48 * v15, v135);
        sub_18F139A94(v16 + 48 * v14, v134);
        LODWORD(v130) = sub_18F22C0B0(v135, v134, a5, a6);
        if (v7)
        {
          sub_18F13E500(v134);
          sub_18F13E500(v135);
          goto LABEL_106;
        }

        v124 = v13;
        sub_18F13E500(v134);
        sub_18F13E500(v135);
        v17 = 48 * v14;
        v18 = v16 + 48 * v14 + 96;
        v126 = v14;
        v19 = v14 + 2;
        v20 = v131;
        while (1)
        {
          v21 = v19;
          if ((v15 + 1) >= v20)
          {
            break;
          }

          v22 = v15;
          sub_18F139A94(v18, v135);
          v23 = sub_18F139A94(v18 - 48, v134);
          MEMORY[0x1EEE9AC00](v23);
          v121 = v135;
          v24 = v133;
          v122 = v133;
          v25 = sub_18F229E24(sub_18F22D8F8, v120, a5);
          if (v26)
          {
            v27 = 0;
          }

          else
          {
            v28 = v25;
            MEMORY[0x1EEE9AC00](v25);
            v121 = v134;
            v122 = v24;
            v29 = v28 < sub_18F229E24(sub_18F22D8F8, v120, a5);
            v27 = (v30 & 1) != 0 || v29;
          }

          sub_18F13E500(v134);
          sub_18F13E500(v135);
          v18 += 48;
          v15 = v22 + 1;
          v19 = v21 + 1;
          v20 = v131;
          if ((v130 & 1) != v27)
          {
            goto LABEL_15;
          }
        }

        v15 = v20;
LABEL_15:
        if (v130)
        {
          v14 = v126;
          if (v15 < v126)
          {
            goto LABEL_128;
          }

          if (v126 < v15)
          {
            if (v20 >= v21)
            {
              v31 = v21;
            }

            else
            {
              v31 = v20;
            }

            v32 = 48 * v31 - 48;
            v33 = v15;
            v34 = v126;
            do
            {
              if (v34 != --v33)
              {
                v35 = *v129;
                if (!*v129)
                {
                  goto LABEL_131;
                }

                v36 = (v35 + v17);
                v37 = (v35 + v32);
                v38 = *v36;
                v39 = v36[1];
                v40 = v36[2];
                v42 = v37[1];
                v41 = v37[2];
                *v36 = *v37;
                v36[1] = v42;
                v36[2] = v41;
                v37[1] = v39;
                v37[2] = v40;
                *v37 = v38;
              }

              ++v34;
              v32 -= 48;
              v17 += 48;
            }

            while (v34 < v33);
          }

          v13 = v124;
        }

        else
        {
          v13 = v124;
          v14 = v126;
        }
      }

      v43 = v129[1];
      if (v15 < v43)
      {
        if (__OFSUB__(v15, v14))
        {
          goto LABEL_125;
        }

        if (&v15[-v14] < v123)
        {
          v44 = (v14 + v123);
          if (__OFADD__(v14, v123))
          {
            goto LABEL_126;
          }

          if (v44 >= v43)
          {
            v44 = v129[1];
          }

          if (v44 >= v14)
          {
            if (v15 == v44)
            {
              goto LABEL_50;
            }

            v124 = v13;
            v45 = *v129;
            v46 = (*v129 + 48 * v15);
            v126 = v14;
            v47 = (v14 - v15);
            v127 = v44;
            while (1)
            {
              v128 = v15;
              v130 = v47;
              v131 = v46;
              v48 = v46;
              while (1)
              {
                sub_18F139A94(v48, v135);
                v49 = v48 - 48;
                v50 = sub_18F139A94((v48 - 48), v134);
                MEMORY[0x1EEE9AC00](v50);
                v121 = v135;
                v51 = v133;
                v122 = v133;
                v52 = sub_18F229E24(sub_18F22D8F8, v120, a5);
                if (v53)
                {
                  sub_18F13E500(v134);
                  sub_18F13E500(v135);
                  goto LABEL_48;
                }

                v54 = v52;
                MEMORY[0x1EEE9AC00](v52);
                v121 = v134;
                v122 = v51;
                v56 = sub_18F229E24(sub_18F22D8D8, v120, v55);
                if ((v57 & 1) == 0)
                {
                  break;
                }

                sub_18F13E500(v134);
                sub_18F13E500(v135);
LABEL_42:
                a5 = v132;
                if (!v45)
                {
                  goto LABEL_129;
                }

                v60 = *(v48 + 1);
                v59 = *(v48 + 2);
                v61 = *v48;
                v62 = *(v48 - 2);
                *v48 = *v49;
                *(v48 + 1) = v62;
                *(v48 + 2) = *(v48 - 1);
                *v49 = v61;
                *(v48 - 2) = v60;
                v48 -= 48;
                *(v49 + 2) = v59;
                if (__CFADD__(v47++, 1))
                {
                  goto LABEL_48;
                }
              }

              v58 = v56;
              sub_18F13E500(v134);
              sub_18F13E500(v135);
              if (v54 < v58)
              {
                goto LABEL_42;
              }

              a5 = v132;
LABEL_48:
              v15 = v128 + 1;
              v46 = v131 + 48;
              v47 = v130 - 1;
              if (v128 + 1 == v127)
              {
                v15 = v127;
                v13 = v124;
                v14 = v126;
                goto LABEL_50;
              }
            }
          }

LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:

          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_130:

          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_131:

          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_132:

          swift_bridgeObjectRelease_n();
          __break(1u);
          goto LABEL_133;
        }
      }

LABEL_50:
      if (v15 < v14)
      {
        goto LABEL_124;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v128 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_18F167414();
        v13 = v116;
      }

      v65 = *(v13 + 16);
      v66 = v65 + 1;
      if (v65 >= *(v13 + 24) >> 1)
      {
        sub_18F167414();
        v13 = v117;
      }

      *(v13 + 16) = v66;
      v67 = v13 + 32;
      v68 = (v13 + 32 + 16 * v65);
      v69 = v128;
      *v68 = v14;
      v68[1] = v69;
      v136 = v13;
      v127 = *v125;
      if (!v127)
      {
        goto LABEL_132;
      }

      if (v65)
      {
        v126 = v13 + 32;
        while (1)
        {
          v70 = v66 - 1;
          v71 = (v67 + 16 * (v66 - 1));
          v72 = (v13 + 16 * v66);
          if (v66 >= 4)
          {
            break;
          }

          if (v66 == 3)
          {
            v73 = *(v13 + 32);
            v74 = *(v13 + 40);
            v83 = __OFSUB__(v74, v73);
            v75 = v74 - v73;
            v76 = v83;
LABEL_71:
            if (v76)
            {
              goto LABEL_114;
            }

            v88 = *v72;
            v87 = v72[1];
            v89 = __OFSUB__(v87, v88);
            v90 = v87 - v88;
            v91 = v89;
            if (v89)
            {
              goto LABEL_117;
            }

            v92 = v71[1];
            v93 = v92 - *v71;
            if (__OFSUB__(v92, *v71))
            {
              goto LABEL_120;
            }

            if (__OFADD__(v90, v93))
            {
              goto LABEL_122;
            }

            if (v90 + v93 >= v75)
            {
              if (v75 < v93)
              {
                v70 = v66 - 2;
              }

              goto LABEL_93;
            }

            goto LABEL_86;
          }

          if (v66 < 2)
          {
            goto LABEL_116;
          }

          v95 = *v72;
          v94 = v72[1];
          v83 = __OFSUB__(v94, v95);
          v90 = v94 - v95;
          v91 = v83;
LABEL_86:
          if (v91)
          {
            goto LABEL_119;
          }

          v97 = *v71;
          v96 = v71[1];
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_121;
          }

          if (v98 < v90)
          {
            goto LABEL_100;
          }

LABEL_93:
          if (v70 - 1 >= v66)
          {
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          v102 = *v129;
          if (!*v129)
          {
            goto LABEL_130;
          }

          v103 = v7;
          v104 = v13;
          v105 = (v67 + 16 * (v70 - 1));
          v106 = *v105;
          v107 = v70;
          v108 = (v67 + 16 * v70);
          v109 = *v108;
          v110 = *(v108 + 1);
          v131 = (v102 + 48 * *v105);
          v111 = (v102 + 48 * v109);
          v130 = (v102 + 48 * v110);
          v112 = v132;
          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
          v113 = v133;

          sub_18F22CE10(v131, v111, v130, v127, v112, v113);
          if (v103)
          {
            v136 = v104;
            goto LABEL_106;
          }

          if (v110 < v106)
          {
            goto LABEL_109;
          }

          v13 = v104;
          v114 = *(v104 + 16);
          if (v107 > v114)
          {
            goto LABEL_110;
          }

          *v105 = v106;
          v105[1] = v110;
          if (v107 >= v114)
          {
            goto LABEL_111;
          }

          v115 = v107;
          v66 = v114 - 1;
          sub_18F3BA72C(v108 + 16, v114 - 1 - v115, v108);
          *(v104 + 16) = v114 - 1;
          a5 = v132;
          v7 = 0;
          v67 = v126;
          if (v114 <= 2)
          {
LABEL_100:
            v136 = v13;
            goto LABEL_101;
          }
        }

        v77 = v67 + 16 * v66;
        v78 = *(v77 - 64);
        v79 = *(v77 - 56);
        v83 = __OFSUB__(v79, v78);
        v80 = v79 - v78;
        if (v83)
        {
          goto LABEL_112;
        }

        v82 = *(v77 - 48);
        v81 = *(v77 - 40);
        v83 = __OFSUB__(v81, v82);
        v75 = v81 - v82;
        v76 = v83;
        if (v83)
        {
          goto LABEL_113;
        }

        v84 = v72[1];
        v85 = v84 - *v72;
        if (__OFSUB__(v84, *v72))
        {
          goto LABEL_115;
        }

        v83 = __OFADD__(v75, v85);
        v86 = v75 + v85;
        if (v83)
        {
          goto LABEL_118;
        }

        if (v86 >= v80)
        {
          v100 = *v71;
          v99 = v71[1];
          v83 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v83)
          {
            goto LABEL_123;
          }

          if (v75 < v101)
          {
            v70 = v66 - 2;
          }

          goto LABEL_93;
        }

        goto LABEL_71;
      }

LABEL_101:
      v11 = v129[1];
      v12 = v128;
      a6 = v133;
    }

    while (v128 < v11);
  }

  v118 = *v125;
  if (*v125)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

    sub_18F22CC68(&v136, v118, v129, a5, a6);
LABEL_106:

    swift_bridgeObjectRelease_n();
  }

LABEL_133:

  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_18F22CC68(char **a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *a1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v22 = a5;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v8 = sub_18F3BA714();
  }

  for (*a1 = v8; ; v8 = *a1)
  {
    v9 = *(v8 + 2);
    if (v9 < 2)
    {
LABEL_11:

      swift_bridgeObjectRelease_n();
      return 1;
    }

    v10 = *a3;
    if (!*a3)
    {
      break;
    }

    v11 = v6;
    v12 = *&v8[16 * v9];
    v13 = *&v8[16 * v9 + 24];
    v14 = (v10 + 48 * v12);
    v15 = (v10 + 48 * *&v8[16 * v9 + 16]);
    v16 = (v10 + 48 * v13);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

    sub_18F22CE10(v14, v15, v16, a2, a4, v22);
    v6 = v11;
    if (v11)
    {
      goto LABEL_11;
    }

    if (v13 < v12)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_18F3BA714();
    }

    if (v9 - 2 >= *(v8 + 2))
    {
      goto LABEL_13;
    }

    v17 = &v8[16 * v9];
    *v17 = v12;
    *(v17 + 1) = v13;
    *a1 = v8;
    sub_18F3BA688(v9 - 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F22CE10(char *a1, char *a2, char *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v58 = a5;
  v59 = a6;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 48;
  v11 = (a3 - a2) / 48;
  if (v10 < v11)
  {
    sub_18F16A094(a1, (a2 - a1) / 48, a4);
    v12 = &v6[48 * v10];
    while (1)
    {
      if (v6 >= v12 || v8 >= v7)
      {
        v8 = v9;
        goto LABEL_37;
      }

      sub_18F139A94(v8, v61);
      v14 = sub_18F139A94(v6, v60);
      MEMORY[0x1EEE9AC00](v14);
      v15 = v58;
      v16 = v59;
      v54 = v61;
      v55 = v59;
      v17 = v62;
      v18 = sub_18F229E24(sub_18F22D8F8, v53, v58);
      if (v19)
      {
        break;
      }

      v24 = v18;
      v57 = v9;
      MEMORY[0x1EEE9AC00](v18);
      v54 = v60;
      v55 = v16;
      v25 = sub_18F229E24(sub_18F22D8F8, v53, v15);
      v62 = v17;
      if (v26)
      {
        sub_18F13E500(v60);
        sub_18F13E500(v61);
      }

      else
      {
        v27 = v25;
        sub_18F13E500(v60);
        sub_18F13E500(v61);
        if (v24 >= v27)
        {
          v9 = v57;
LABEL_9:
          v20 = v6;
          v21 = v9 == v6;
          v6 += 48;
          if (v21)
          {
            goto LABEL_11;
          }

LABEL_10:
          v22 = *v20;
          v23 = *(v20 + 2);
          *(v9 + 1) = *(v20 + 1);
          *(v9 + 2) = v23;
          *v9 = v22;
          goto LABEL_11;
        }
      }

      v28 = v8;
      v20 = v8;
      v9 = v57;
      v8 += 48;
      if (v57 != v28)
      {
        goto LABEL_10;
      }

LABEL_11:
      v9 += 48;
    }

    v62 = v17;
    sub_18F13E500(v60);
    sub_18F13E500(v61);
    goto LABEL_9;
  }

  sub_18F16A094(a2, (a3 - a2) / 48, a4);
  v29 = &v6[48 * v11];
  v57 = v9;
LABEL_19:
  v30 = v8 - 48;
  v31 = v7 - 48;
  for (i = v29 - 48; ; i -= 48)
  {
    v12 = i + 48;
    if (i + 48 <= v6 || v8 <= v9)
    {
      break;
    }

    v56 = v31;
    sub_18F139A94(i, v61);
    v34 = v30;
    v35 = sub_18F139A94(v30, v60);
    MEMORY[0x1EEE9AC00](v35);
    v36 = v58;
    v37 = v59;
    v54 = v61;
    v55 = v59;
    v38 = v62;
    v39 = sub_18F229E24(sub_18F22D8F8, v53, v58);
    if (v40)
    {
      v62 = v38;
      v41 = 0;
    }

    else
    {
      v42 = v39;
      MEMORY[0x1EEE9AC00](v39);
      v54 = v60;
      v55 = v37;
      v43 = sub_18F229E24(sub_18F22D8F8, v53, v36);
      v62 = v38;
      v41 = (v44 & 1) != 0 || v42 < v43;
    }

    sub_18F13E500(v60);
    sub_18F13E500(v61);
    v30 = v34;
    if (v41)
    {
      v7 = v56;
      v29 = i + 48;
      v21 = v56 + 48 == v8;
      v8 = v30;
      v9 = v57;
      if (!v21)
      {
        v48 = *v30;
        v49 = *(v30 + 2);
        *(v56 + 1) = *(v30 + 1);
        *(v7 + 2) = v49;
        *v7 = v48;
        v8 = v30;
      }

      goto LABEL_19;
    }

    v45 = v56;
    if (v12 != v56 + 48)
    {
      v46 = *i;
      v47 = *(i + 2);
      *(v56 + 1) = *(i + 1);
      *(v45 + 2) = v47;
      *v45 = v46;
    }

    v31 = v45 - 48;
    v9 = v57;
  }

LABEL_37:
  v50 = (v12 - v6) / 48;
  if (v8 != v6 || v8 >= &v6[48 * v50])
  {
    memmove(v8, v6, 48 * v50);
  }

  return 1;
}

uint64_t sub_18F22D224(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t *))
{
  v6 = a2;
  v76 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v8 = a1 + 64;
    v7 = *(a1 + 64);
    v9 = -1;
    v10 = -1 << *(a1 + 32);
    v56 = ~v10;
    v57 = a3;
    if (-v10 < 64)
    {
      v11 = ~(-1 << -v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & v7;
    v13 = (63 - v10) >> 6;
    v14 = a2 + 56;
    v15 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v16 = 0;
    v58 = v13;
    v59 = v8;
    v60 = v15;
    if (v12)
    {
LABEL_6:
      v17 = v16;
LABEL_11:
      OUTLINED_FUNCTION_22_20();
      v21 = (*(v19 + 48) + ((v17 << 10) | (16 * v20)));
      v23 = *v21;
      v22 = v21[1];
      sub_18F522EFC();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F5219CC();
      v24 = sub_18F522F4C();
      v25 = ~(-1 << *(v6 + 32));
      while (1)
      {
        v8 = v24 & v25;
        v5 = (v24 & v25) >> 6;
        v9 = 1 << (v24 & v25);
        if ((v9 & *(v14 + 8 * v5)) == 0)
        {

          v16 = v17;
          goto LABEL_6;
        }

        v26 = (*(v6 + 48) + 16 * v8);
        v27 = *v26 == v23 && v26[1] == v22;
        if (v27 || (sub_18F522D5C() & 1) != 0)
        {
          break;
        }

        v24 = v8 + 1;
      }

      v73 = v56;
      v74 = v17;
      v75 = v12;
      v4 = v59;
      v13 = v60;
      v71 = v60;
      v72 = v59;

      v29 = *(v6 + 32);
      v53 = ((1 << v29) + 63) >> 6;
      v3 = 8 * v53;
      if ((v29 & 0x3Fu) > 0xD)
      {
        goto LABEL_47;
      }

      while (1)
      {
        v54 = &v52;
        MEMORY[0x1EEE9AC00](v28);
        v8 = &v52 - ((v3 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v8, (v6 + 56), v3);
        v34 = *(v8 + 8 * v5) & ~v9;
        v35 = *(v6 + 16);
        v57 = v8;
        *(v8 + 8 * v5) = v34;
        v36 = v35 - 1;
        v37 = v58;
        while (1)
        {
          v55 = v36;
LABEL_23:
          if (!v12)
          {
            break;
          }

LABEL_28:
          OUTLINED_FUNCTION_22_20();
          v40 = (*(v13 + 48) + ((v17 << 10) | (16 * v39)));
          v3 = *v40;
          v41 = v40[1];
          sub_18F522EFC();
          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
          sub_18F5219CC();
          v42 = sub_18F522F4C();
          v43 = ~(-1 << *(v6 + 32));
          do
          {
            v5 = v42 & v43;
            v8 = (v42 & v43) >> 6;
            v9 = 1 << (v42 & v43);
            if ((v9 & *(v14 + 8 * v8)) == 0)
            {

              v4 = v59;
              v13 = v60;
              v37 = v58;
              goto LABEL_23;
            }

            v44 = (*(v6 + 48) + 16 * v5);
            if (*v44 == v3 && v44[1] == v41)
            {
              break;
            }

            v46 = sub_18F522D5C();
            v42 = v5 + 1;
          }

          while ((v46 & 1) == 0);

          v47 = *(v57 + v8);
          *(v57 + v8) = v47 & ~v9;
          v4 = v59;
          v13 = v60;
          v37 = v58;
          if ((v47 & v9) == 0)
          {
            goto LABEL_23;
          }

          v36 = v55 - 1;
          if (__OFSUB__(v55, 1))
          {
            __break(1u);
          }

          if (v55 == 1)
          {

            v6 = MEMORY[0x1E69E7CD0];
            goto LABEL_43;
          }
        }

        while (1)
        {
          v38 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v38 >= v37)
          {
            sub_18F2CDB70(v57, v53, v55, v6, v30, v31, v32, v33, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
            v6 = v48;
            goto LABEL_43;
          }

          v12 = *(v4 + 8 * v38);
          ++v17;
          if (v12)
          {
            v17 = v38;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v50 = swift_slowAlloc();
      v51 = v57(v50, v53, v6 + 56, v53, v6, v8, &v71);

      MEMORY[0x193ADD350](v50, -1, -1);
      v56 = v73;
      v6 = v51;
    }

    else
    {
      v18 = 0;
      while (1)
      {
        v17 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_46;
        }

        if (v17 >= v13)
        {
          break;
        }

        v12 = *(v8 + 8 * v17);
        ++v18;
        if (v12)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_43:
    sub_18F125D0C();
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v6;
}

void sub_18F22D6EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v31 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_18F522EFC();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F5219CC();
    v16 = sub_18F522F4C();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_18F522D5C();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = *(result + 8 * v19);
    *(result + 8 * v19) = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
      goto LABEL_23;
    }

    if (v31 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      sub_18F2CDB70(result, a2, v31, a3, v25, v26, v27, v28, a2, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, result, v43, v44, v45, v46, v47, v48, v49, v50);
      return;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_18F22D930(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_18F18C9E0;

  return AppIntentPrototype.entities<A, B>(for:intentIdentifier:parameter:matching:localeIdentifier:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t AppIntentPrototype.entities<A, B>(for:intentIdentifier:parameter:matching:localeIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 360) = v23;
  *(v9 + 368) = v8;
  *(v9 + 344) = v22;
  *(v9 + 328) = a7;
  *(v9 + 336) = a8;
  *(v9 + 312) = a5;
  *(v9 + 320) = a6;
  *(v9 + 296) = a3;
  *(v9 + 304) = a4;
  *(v9 + 288) = a2;
  v11 = *a4;
  *(v9 + 376) = *a4;
  v12 = *(v11 + *MEMORY[0x1E69E77B0]);
  *(v9 + 384) = v12;
  v13 = sub_18F52254C();
  *(v9 + 392) = v13;
  *(v9 + 400) = *(v13 - 8);
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = *(v12 - 8);
  *(v9 + 424) = swift_task_alloc();
  v14 = swift_task_alloc();
  v15 = *a1;
  v16 = a1[1];
  *(v9 + 432) = v14;
  *(v9 + 440) = v15;
  *(v9 + 448) = v16;
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_18F22DBF0()
{
  v57 = v0;
  v56[3] = *MEMORY[0x1E69E9840];
  v1 = v0[56];
  v2 = v0[48];
  v3 = v0[44];
  v4 = v0[36];
  v5 = v0[37];
  v56[0] = v0[55];
  v56[1] = v1;
  sub_18F22EF24(v4, v5, v56, v2, v3);
  v0[57] = v6;
  v0[58] = 0;
  if (!v6)
  {
    goto LABEL_19;
  }

  v54 = v6;
  v7 = v0[52];
  v8 = v0[53];
  v9 = v0[48];
  v10 = v0[46];
  v11 = v0[44];
  type metadata accessor for PreparedIntent(0);
  (*(v7 + 16))(v8, v10, v9);
  v12 = sub_18F1194F4(v8, MEMORY[0x1E69E7CC0], v9, *(v11 + 8));
  sub_18F0FD724(v12 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, (v0 + 18));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0, &qword_18F549620);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = v0[50];
    v30 = v0[51];
    v32 = v0[48];
    v31 = v0[49];

    __swift_storeEnumTagSinglePayload(v30, 1, 1, v32);
    (*(v29 + 8))(v30, v31);
LABEL_19:
    v33 = sub_18F230AE4();
    OUTLINED_FUNCTION_28(&type metadata for AppIntentPrototypeError, v33);
    *v34 = 0;
    swift_willThrow();
    goto LABEL_22;
  }

  v13 = v0[54];
  v15 = v0[51];
  v14 = v0[52];
  v16 = v0[48];
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  (*(v14 + 32))(v13, v15, v16);
  swift_getAtKeyPath();
  v17 = (v0[31] + *(*v0[31] + 152));
  v18 = v17[1];
  v55 = *v17;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  if (!v18)
  {
LABEL_21:
    v35 = v0[54];
    v36 = v0[52];
    v37 = v0[48];
    v38 = sub_18F230AE4();
    OUTLINED_FUNCTION_28(&type metadata for AppIntentPrototypeError, v38);
    *v39 = 1;
    swift_willThrow();

    (*(v36 + 8))(v35, v37);
    goto LABEL_22;
  }

  v19 = [v54 parameters];
  sub_18F0F21A8(0, &qword_1EACCDD08, 0x1E69AC688);
  v20 = sub_18F521CAC();

  v21 = sub_18F111F70(v20);
  for (i = 0; ; ++i)
  {
    if (v21 == i)
    {

      goto LABEL_21;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x193ADBE10](i, v20);
    }

    else
    {
      if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v23 = *(v20 + 8 * i + 32);
    }

    v24 = v23;
    v0[59] = v23;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
    }

    v25 = sub_18F230924(v23);
    if (!v26)
    {
      goto LABEL_16;
    }

    if (v25 == v55 && v26 == v18)
    {
      break;
    }

    v28 = sub_18F522D5C();

    if (v28)
    {
      goto LABEL_26;
    }

LABEL_16:
  }

LABEL_26:

  v42 = [objc_opt_self() policyWithActionMetadata_];
  v0[60] = v42;
  v0[32] = 0;
  v43 = [v42 connectionWithError_];
  v0[61] = v43;
  v44 = v0[32];
  if (v43)
  {
    v45 = v43;
    v46 = v0[40];
    v47 = v44;
    if (v46)
    {
      v46 = sub_18F5218AC();
    }

    v0[62] = v46;
    v52 = sub_18F5218AC();
    v0[63] = v52;
    v0[2] = v0;
    v0[7] = v0 + 33;
    v0[3] = sub_18F22E204;
    v53 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2FF0, &qword_18F54A2F0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_18F10FD1C;
    v0[13] = &block_descriptor_2;
    v0[14] = v53;
    [v45 fetchOptionsForAction:0 actionMetadata:v54 parameterMetadata:v24 searchTerm:v46 localeIdentifier:v52 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  v48 = v0[54];
  v49 = v0[52];
  v50 = v0[48];
  v51 = v44;
  sub_18F520A8C();

  swift_willThrow();
  (*(v49 + 8))(v48, v50);
LABEL_22:

  OUTLINED_FUNCTION_71();

  return v40();
}

uint64_t sub_18F22E204()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 512) = *(v3 + 48);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F22E334()
{
  v1 = v0 + 23;
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[33];

  v61 = v4;
  v5 = [v4 sections];
  sub_18F0F21A8(0, &qword_1EACCE7A0, 0x1E69ACEE0);
  v6 = sub_18F521CAC();

  v7 = sub_18F111F70(v6);
  v8 = 0;
  v70 = v6 & 0xFFFFFFFFFFFFFF8;
  v72 = v6 & 0xC000000000000001;
  v62 = v6;
  v68 = v6 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  v63 = MEMORY[0x1E69E7CC0];
  v64 = v7;
  while (v8 != v7)
  {
    if (v72)
    {
      v10 = MEMORY[0x193ADBE10](v8, v62);
    }

    else
    {
      if (v8 >= *(v70 + 16))
      {
        goto LABEL_55;
      }

      v10 = *(v68 + 8 * v8);
    }

    v11 = v10;
    v12 = __OFADD__(v8, 1);
    v13 = v8 + 1;
    if (v12)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
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
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
    }

    v75 = v13;
    v14 = [v10 options];
    sub_18F0F21A8(0, &qword_1EACCE7A8, 0x1E69ACEC0);
    v15 = sub_18F521CAC();

    if (v15 >> 62)
    {
      v16 = sub_18F5226AC();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v9 >> 62;
    if (v9 >> 62)
    {
      v18 = sub_18F5226AC();
    }

    else
    {
      v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v18 + v16;
    if (__OFADD__(v18, v16))
    {
      goto LABEL_56;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v17)
      {
LABEL_17:
        sub_18F5226AC();
      }

LABEL_18:
      v9 = sub_18F52283C();
      v20 = v9 & 0xFFFFFFFFFFFFFF8;
      v21 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_19;
    }

    if (v17)
    {
      goto LABEL_17;
    }

    v20 = v9 & 0xFFFFFFFFFFFFFF8;
    v21 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v21 < v19)
    {
      goto LABEL_18;
    }

LABEL_19:
    v22 = *(v20 + 16);
    v23 = v21 - v22;
    v24 = v20 + 8 * v22;
    v73 = v20;
    if (v15 >> 62)
    {
      v26 = sub_18F5226AC();
      if (!v26)
      {
        goto LABEL_33;
      }

      v27 = v26;
      v28 = sub_18F5226AC();
      if (v23 < v28)
      {
        goto LABEL_62;
      }

      if (v27 < 1)
      {
        goto LABEL_63;
      }

      v25 = v28;
      v66 = v9;
      v29 = v24 + 32;
      OUTLINED_FUNCTION_12_28();
      sub_18F1B8B98(&qword_1EACD3000, &qword_1EACD2FF8, &unk_18F54A2F8, v30);
      for (i = 0; i != v27; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2FF8, &unk_18F54A2F8);
        v32 = sub_18F230A50(v1, i, v15);
        v34 = *v33;
        (v32)(v1, 0);
        *(v29 + 8 * i) = v34;
      }

      v9 = v66;
      v7 = v64;
LABEL_29:

      v8 = v75;
      if (v25 < v16)
      {
        goto LABEL_57;
      }

      if (v25 > 0)
      {
        v35 = *(v73 + 16);
        v12 = __OFADD__(v35, v25);
        v36 = v35 + v25;
        if (v12)
        {
          goto LABEL_60;
        }

        *(v73 + 16) = v36;
      }
    }

    else
    {
      v25 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        if (v23 < v25)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();
        goto LABEL_29;
      }

LABEL_33:

      v8 = v75;
      if (v16 > 0)
      {
        goto LABEL_57;
      }
    }
  }

  v77 = MEMORY[0x1E69E7CC0];
  v37 = sub_18F111F70(v9);
  v38 = 0;
  v39 = v9 & 0xC000000000000001;
  v40 = v9 & 0xFFFFFFFFFFFFFF8;
  while (v37 != v38)
  {
    if (v39)
    {
      v41 = v9;
      v42 = MEMORY[0x193ADBE10](v38, v9);
    }

    else
    {
      if (v38 >= *(v40 + 16))
      {
        goto LABEL_59;
      }

      v41 = v9;
      v42 = *(v9 + 8 * v38 + 32);
    }

    v43 = v42;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_58;
    }

    v44 = [v42 value];
    v45 = [v44 value];

    sub_18F52261C();
    swift_unknownObjectRelease();
    sub_18F0F21A8(0, &qword_1ED6FE640, 0x1E69AC7C8);
    if ((swift_dynamicCast() & 1) != 0 && *(v74 + 272))
    {
      MEMORY[0x193ADB260]();
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18F521D0C();
      }

      sub_18F521D6C();
      v63 = v77;
      ++v38;
      v9 = v41;
    }

    else
    {
      ++v38;
      v9 = v41;
    }
  }

  v69 = *(v74 + 488);
  v71 = *(v74 + 480);
  v65 = *(v74 + 456);
  v67 = *(v74 + 472);
  v46 = *(v74 + 432);
  v47 = *(v74 + 416);
  v48 = *(v74 + 376);
  v49 = *(v74 + 384);
  v50 = *(v74 + 360);
  v76 = *(v74 + 344);

  *(v74 + 280) = v63;
  v51 = swift_task_alloc();
  *(v51 + 16) = v49;
  v52 = *(v48 + *MEMORY[0x1E69E77B0] + 8);
  *(v51 + 24) = *(v52 + 80);
  *(v51 + 32) = v76;
  *(v51 + 48) = *(v52 + 88);
  *(v51 + 56) = v50;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0628, &unk_18F541860);
  OUTLINED_FUNCTION_12_28();
  v56 = sub_18F1B8B98(v54, &qword_1EACD0628, &unk_18F541860, v55);
  v58 = sub_18F10C138(sub_18F230B38, v51, v53, v76, MEMORY[0x1E69E73E0], v56, MEMORY[0x1E69E7410], v57);

  (*(v47 + 8))(v46, v49);

  v59 = *(v74 + 8);

  return v59(v58);
}

uint64_t sub_18F22EA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_37_2();
  v33 = *MEMORY[0x1E69E9840];
  v15 = v14[63];
  v16 = v14[61];
  v32 = v14[62];
  v18 = v14[59];
  v17 = v14[60];
  v19 = v14[57];
  v20 = v14[54];
  v21 = v14[52];
  v22 = v14[48];
  swift_willThrow();

  (*(v21 + 8))(v20, v22);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_20();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, a10, v33, a12, a13, a14);
}

uint64_t AppIntentPrototypeError.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t AppIntentPrototype.perform(targetDescriptor:identifier:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a3;
  v8 = a2[1];
  v7[8] = *a2;
  v7[9] = v8;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F22EBEC()
{
  v17 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v16[0] = v0[8];
  v16[1] = v1;
  sub_18F22EF24(v5, v3, v16, v4, v2);
  v0[10] = v6;
  if (v6)
  {
    v0[11] = sub_18F1A0DE4(v0[5], *(v0[6] + 8));
    v0[12] = sub_18F22F09C();
    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = sub_18F22ED58;
    OUTLINED_FUNCTION_20_18();

    return sub_18F22F0D4(v10, v11, v12, v13);
  }

  else
  {
    v14 = sub_18F230AE4();
    OUTLINED_FUNCTION_28(&type metadata for AppIntentPrototypeError, v14);
    *v15 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_71();

    return v7();
  }
}

uint64_t sub_18F22ED58()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F22EE5C()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F22EEBC()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);

  OUTLINED_FUNCTION_71();

  return v3();
}

void sub_18F22EF24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v20 = *a3;
  v8 = sub_18F2303BC(&v20);
  if (!v5)
  {
    v9 = v8;
    v10 = sub_18F111F70(v8);
    v11 = 0;
    v21 = v9 & 0xC000000000000001;
    while (1)
    {
      if (v10 == v11)
      {

        return;
      }

      if (v21)
      {
        v12 = MEMORY[0x193ADBE10](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = [v12 identifier];
      v15 = sub_18F5218DC();
      v17 = v16;

      if (v15 == a1 && v17 == a2)
      {

LABEL_17:

        return;
      }

      v19 = sub_18F522D5C();

      if (v19)
      {
        goto LABEL_17;
      }

      ++v11;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

id sub_18F22F09C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69ACD38]);

  return [v0 init];
}

uint64_t sub_18F22F0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;

  return MEMORY[0x1EEE6DFA0](sub_18F22F168, 0, 0);
}

uint64_t sub_18F22F168()
{
  v1 = v0[5];
  v2 = [objc_opt_self() policyWithActionMetadata_];
  v0[8] = v2;
  v3 = [v1 parameters];
  if (!v3)
  {
    sub_18F0F21A8(0, qword_1ED6FE8F8, 0x1E69AC948);
    sub_18F521CAC();
    v3 = sub_18F521C8C();
  }

  v4 = [v2 actionWithParameters_];
  v0[9] = v4;

  v0[2] = 0;
  v5 = [v2 connectionWithError_];
  v0[10] = v5;
  v6 = v0[2];
  if (v5)
  {
    v7 = v5;
    v8 = v0[7];
    v9 = v0[4];
    v0[3] = 0;
    v10 = swift_task_alloc();
    v0[11] = v10;
    v10[2] = v0 + 3;
    v10[3] = v7;
    v10[4] = v4;
    v10[5] = v8;
    *(v9 + 24) = sub_18F0F21A8(0, &qword_1ED6FC240, 0x1E69AD038);
    v11 = v6;
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_18F22F42C;
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DE38](v13);
  }

  else
  {
    v14 = v6;
    sub_18F520A8C();

    swift_willThrow();
    OUTLINED_FUNCTION_71();

    return v15();
  }
}

uint64_t sub_18F22F42C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v2 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F22F56C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F22F614()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);

  __swift_deallocate_boxed_opaque_existential_1(v3);

  OUTLINED_FUNCTION_71();

  return v4();
}

uint64_t AppIntentPrototype.perform(targetDescriptor:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v6 = a2[1];
  v5[6] = *a2;
  v5[7] = v6;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F22F6F8()
{
  v18 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[3];
  v5 = (*(v3 + 16))(v4, v3);
  v17[0] = v2;
  v17[1] = v1;
  v7 = sub_18F22FA68(v5, v6, v17, v4, v3);
  v0[8] = v7;

  if (v7)
  {
    v0[9] = sub_18F1A0DE4(v0[3], *(v0[4] + 8));
    v0[10] = sub_18F22F09C();
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_18F22F89C;
    OUTLINED_FUNCTION_20_18();

    return sub_18F22F0D4(v11, v12, v13, v14);
  }

  else
  {
    v15 = sub_18F230AE4();
    OUTLINED_FUNCTION_28(&type metadata for AppIntentPrototypeError, v15);
    *v16 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_71();

    return v8();
  }
}

uint64_t sub_18F22F89C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F22F9A0()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F22FA00()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);

  OUTLINED_FUNCTION_71();

  return v3();
}

id sub_18F22FA68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = sub_18F5218AC();
  v9 = [objc_opt_self() protocolOrNilWithIdentifier_];

  if (!v9)
  {
    return 0;
  }

  v19[0] = v6;
  v19[1] = v7;
  v10 = sub_18F2303BC(v19);
  if (v5)
  {

    return v7;
  }

  v11 = v10;
  v20 = sub_18F111F70(v10);
  for (i = 0; ; ++i)
  {
    if (v20 == i)
    {

      return 0;
    }

    sub_18F1C3ED4();
    result = (v11 & 0xC000000000000001) != 0 ? MEMORY[0x193ADBE10](i, v11) : *(v11 + 8 * i + 32);
    v7 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v14 = [result systemProtocols];
    sub_18F0F21A8(0, &unk_1ED6FCD60, 0x1E69ACA48);
    v15 = sub_18F521CAC();

    v19[0] = v9;
    MEMORY[0x1EEE9AC00](v16);
    v18[2] = v19;
    sub_18F113CBC(sub_18F11559C, v18, v15);
    LOBYTE(v14) = v17;

    if (v14)
    {

      return v7;
    }
  }

  __break(1u);
  return result;
}

void AppIntentPrototype.init()()
{
  OUTLINED_FUNCTION_19_20();
  OUTLINED_FUNCTION_8_21();
  __break(1u);
}

uint64_t sub_18F22FD50(uint64_t a1)
{
  *(v1 + 272) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  *(v1 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F230E7C, 0, 0);
}

uint64_t sub_18F22FDEC(uint64_t a1)
{
  *(v1 + 272) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  *(v1 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F22FE88, 0, 0);
}

uint64_t sub_18F22FE88()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v18 = v1;
  v3 = type metadata accessor for IntentDialog(0);
  *(v0 + 120) = 0u;
  *(v0 + 129) = 0u;
  *(v0 + 104) = 0u;
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  *(v0 + 184) = 0;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0;
  *(v0 + 232) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = xmmword_18F543360;
  *(v0 + 96) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0158, &unk_18F54A330);
  v16 = v4[17];
  __swift_storeEnumTagSinglePayload(&v2[v16], 1, 1, v3);
  v2[v4[18]] = 1;
  v5 = v4[20];
  v17 = &v2[v4[19]];
  v2[v5] = 2;
  v6 = &v2[v4[21]];
  *(v6 + 25) = 0u;
  *v6 = 0u;
  v6[1] = 0u;
  v7 = &v2[v4[22]];
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = &v2[v4[23]];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 1;
  v8[32] = 0;
  v9 = &v2[v4[24]];
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 64) = xmmword_18F543360;
  *(v9 + 80) = 0;
  v10 = &v2[v4[25]];
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v14 = v4[26];
  v15 = v4[27];
  *&v2[v15] = 0;
  v11 = &v2[v4[29]];
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *v2 = 1;
  sub_18F0FF628(v0 + 192, v11, &qword_1EACD0D70, &qword_18F555640);
  v2[v5] = 2;
  sub_18F0FF628(v0 + 104, v6, &qword_1EACD0550, &qword_18F547EB0);
  sub_18F0FF628(v0 + 232, v7, &qword_1EACD0D78, &unk_18F555790);
  sub_18F138888(*v8, *(v8 + 1), *(v8 + 2), *(v8 + 3));
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 1;
  v8[32] = 0;
  sub_18F0FF628(v0 + 16, v9, &qword_1EACD0D80, &qword_18F54A340);
  sub_18F0FF628(v18, &v2[v16], &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0FF628(v0 + 152, v10, &qword_1EACD0D70, &qword_18F555640);
  *&v2[v14] = 0;
  *v17 = 0;
  v17[1] = 0;
  *&v2[v15] = 0;
  *&v2[v4[28]] = 0;

  OUTLINED_FUNCTION_71();

  return v12();
}

uint64_t AppIntentPrototype.perform()()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 272) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  *(v0 + 280) = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_18F23020C(uint64_t a1, void **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD01F0, &qword_18F5400E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *(v10 + 16);
  v13(&v20 - v11, a1, v9);
  v14 = type metadata accessor for SystemIntentExecutorDelegate(0);
  v15 = objc_allocWithZone(v14);
  v13(&v15[OBJC_IVAR____TtC10AppIntents28SystemIntentExecutorDelegate_continuation], v12, v9);
  v22.receiver = v15;
  v22.super_class = v14;
  v16 = objc_msgSendSuper2(&v22, sel_init);
  (*(v10 + 8))(v12, v9);
  v17 = *a2;
  *a2 = v16;
  v18 = v16;

  v19 = [a3 executorForAction:a4 options:v21 delegate:v18];
  [v19 perform];
}

uint64_t sub_18F2303BC(uint64_t *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD3018, &qword_18F54A4E0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - v3;
  v5 = sub_18F1C24A0();
  sub_18F0F21A8(0, &qword_1ED6FE720, 0x1E69AC678);
  sub_18F52231C();
  v6 = sub_18F52230C();
  (*(v2 + 8))(v4, v1);

  return v6;
}

uint64_t sub_18F230508()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_1_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_46(v1);
  OUTLINED_FUNCTION_20();
  return OUTLINED_FUNCTION_7_26(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18F230588()
{
  OUTLINED_FUNCTION_69();
  v0 = OUTLINED_FUNCTION_6_4();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_43(v1);

  return v4(v3);
}

uint64_t sub_18F23060C()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_1_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_46(v1);
  OUTLINED_FUNCTION_20();
  return OUTLINED_FUNCTION_7_26(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18F23068C()
{
  OUTLINED_FUNCTION_69();
  v0 = OUTLINED_FUNCTION_6_4();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_43(v1);

  return v4(v3);
}

uint64_t sub_18F230710()
{
  OUTLINED_FUNCTION_69();
  v0 = OUTLINED_FUNCTION_6_4();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_43(v1);

  return v4(v3);
}

uint64_t sub_18F230798()
{
  OUTLINED_FUNCTION_69();
  v0 = OUTLINED_FUNCTION_6_4();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_43(v1);

  return v4(v3);
}

uint64_t sub_18F23081C()
{
  OUTLINED_FUNCTION_69();
  v0 = OUTLINED_FUNCTION_6_4();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_43(v1);

  return v4(v3);
}

uint64_t sub_18F2308A0()
{
  OUTLINED_FUNCTION_69();
  v0 = OUTLINED_FUNCTION_6_4();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_43(v1);

  return v4(v3);
}

uint64_t sub_18F230924(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F5218DC();

  return v3;
}

uint64_t sub_18F230988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_30(a1, a2, a3);
  sub_18F1C3ED4();
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_24_20();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_21_18();
}

uint64_t sub_18F2309F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_30(a1, a2, a3);
  sub_18F1C3ED4();
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_24_20();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_21_18();
}

void (*sub_18F230A50(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_18F0F5AB0(a3);
  sub_18F1C3ED4();
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x193ADBE10](a2, a3);
  }

  *a1 = v7;
  return sub_18F230ADC;
}

unint64_t sub_18F230AE4()
{
  result = qword_1EACD2FE8;
  if (!qword_1EACD2FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2FE8);
  }

  return result;
}

unint64_t sub_18F230B64()
{
  result = qword_1EACD3010;
  if (!qword_1EACD3010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3010);
  }

  return result;
}

uint64_t dispatch thunk of AppIntentPrototype.entities<A, B>(for:intentIdentifier:parameter:matching:localeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = (*(a14 + 24) + **(a14 + 24));
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_13_1(v17);
  *v18 = v19;
  v18[1] = sub_18F1B98B8;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

_BYTE *storeEnumTagSinglePayload for AppIntentPrototypeError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F230E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_30(a1, a2, a3);
  sub_18F1C3ED4();
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    OUTLINED_FUNCTION_24_20();
  }

  *v3 = v7;
  return OUTLINED_FUNCTION_21_18();
}

uint64_t StagingResult.init(result:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950, &qword_18F540020);
  sub_18F522F9C();
  OUTLINED_FUNCTION_10_0();
  v8 = *(v7 + 32);

  return v8(a4, a1, v6);
}

uint64_t StagingResult.result.getter@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950, &qword_18F540020);
  sub_18F522F9C();
  OUTLINED_FUNCTION_10_0();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t StagingResult.result.setter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950, &qword_18F540020);
  sub_18F522F9C();
  OUTLINED_FUNCTION_10_0();
  v6 = *(v5 + 40);

  return v6(v2, a1, v4);
}

uint64_t sub_18F2310E4(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950, &qword_18F540020);
  result = sub_18F522F9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18F23119C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = 8;
  if (v5 > 8)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v11 < 2)
    {
LABEL_22:
      v13 = *(a1 + v6);
      if (v13 >= 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_14:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return (v7 | v12) + 255;
}

void sub_18F231300(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v7 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v7 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v7] = -a2;
        }

        break;
    }
  }
}

uint64_t dispatch thunk of _ContextStager._stage(entities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F23162C;

  return v9(a1, a2, a3);
}

uint64_t sub_18F23162C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_18F231E18()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F231F5C()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F232004()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F232244()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v7 - v6, v1, v2);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v0();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F232438()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, v1, 0, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F232544()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, 0, v1, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F2328C8()
{
  sub_18F52288C();

  v0 = sub_18F52194C();
  v2 = v1;
  swift_getMetatypeMetadata();
  v3 = sub_18F52194C();
  MEMORY[0x193ADB000](v3);

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  MEMORY[0x193ADB000](46, 0xE100000000000000);

  v4 = sub_18F5219DC();

  sub_18F118720(v4, v0, v2);
  v5 = MEMORY[0x193ADAF70]();

  return v5;
}

void sub_18F232A00(uint64_t a1)
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  sub_18F23311C();
}

id sub_18F232A5C(void *a1)
{
  v1 = a1;

  return sub_18F2333F0(v1);
}

uint64_t sub_18F232AB4(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(char *))
{
  v4 = a1(0);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_18F239430();
  return a3(v7);
}

id sub_18F232B40(uint64_t a1, uint64_t a2)
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return sub_18F23460C(a1, a2);
}

id sub_18F232B84(uint64_t a1, uint64_t a2)
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return sub_18F234E18(a1, a2);
}

id sub_18F232BC8(void *a1)
{
  v1 = a1;

  return sub_18F235A40(v1);
}

id sub_18F232C20(uint64_t a1, uint64_t a2)
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return sub_18F235D38(a1, a2);
}

id sub_18F232C94()
{
  v0 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return sub_18F23651C(v0);
}

void sub_18F232CBC(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1(0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 16))(&v8 - v6, v4);
  sub_18F236BC0();
}

uint64_t sub_18F232D90(void (*a1)(void), uint64_t (*a2)(char *))
{
  a1(0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, v2);
  return a2(v6);
}

void ValueEncodable._asValue.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  sub_18F0F21A8(0, &unk_1ED6FE390, 0x1E69ACA88);
  (*(v5 + 16))(v9, v2, a1);
  LNValue.init<A>(_:)();
}

id LNValue.init<A>(_:displayRepresentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  (*(a4 + 24))(v16, a3, a4);
  __swift_project_boxed_opaque_existential_1Tm(v16, v16[3]);
  v9 = sub_18F522D4C();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  v10 = (*(a4 + 8))(a3, a4);
  sub_18F13FE10();
  v12 = v11;
  v13 = [v8 initWithValue:v9 valueType:v10 displayRepresentation:v11];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_0_47();
  sub_18F11CE30(a2, v14);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v13;
}

uint64_t ValueEncodable.defaultDisplayRepresentation.getter()
{
  v0 = OUTLINED_FUNCTION_4_17();
  type metadata accessor for DisplayRepresentation(v0);
  v1 = OUTLINED_FUNCTION_4_10();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void sub_18F23311C()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DisplayRepresentation(0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v33 = v7;
  v34 = v5;
  v35 = v3;
  v36 = v1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD30A0, &unk_18F5543E0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v31, v37);
    v13 = v38;
    __swift_project_boxed_opaque_existential_1Tm(v37, v38);
    OUTLINED_FUNCTION_14_26();
    v14(v13);
    sub_18F13FE10();
    v16 = v15;
    OUTLINED_FUNCTION_0_47();
    sub_18F11CE30(v12, v17);
    v18 = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  else
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_18F0EF1A8(v31, &qword_1EACD30A8, &qword_18F54A5B0);
    v18 = 0;
  }

  v19 = *(v5 + 8);
  static AppValue._identifier.getter(v7, v19);
  v20 = OUTLINED_FUNCTION_10_25();
  if (dynamic_cast_existential_1_conditional(v20, v21, v22))
  {
    if (qword_1ED6FF6D8 != -1)
    {
      swift_once();
    }

    static AppValue._identifier.getter(v7, v19);
    sub_18F164CE8();
    v24 = v23;

    v25 = v24;
    sub_18F1AF344();
  }

  v26 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  v27 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
  sub_18F166ED0();
  v29 = v28;
  v30 = [objc_allocWithZone(MEMORY[0x1E69AC7E8]) init];
  [v26 initWithValue:v29 valueType:v30 displayRepresentation:v18];

  OUTLINED_FUNCTION_16();
}

id sub_18F2333F0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26[-1] - v6;
  v8 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = type metadata accessor for DisplayRepresentation(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[3] = &type metadata for IntentFile;
  v26[4] = sub_18F2393DC();
  v26[0] = a1;
  v13 = *__swift_project_boxed_opaque_existential_1Tm(v26, &type metadata for IntentFile);
  v14 = a1;
  sub_18F52186C();
  sub_18F52185C();
  v15 = [v13 filename];
  sub_18F5218DC();

  sub_18F52183C();

  sub_18F52185C();
  sub_18F520AEC();
  v16 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v16);
  v17 = type metadata accessor for DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
  __swift_storeEnumTagSinglePayload(&v12[v10[7]], 1, 1, v16);
  __swift_storeEnumTagSinglePayload(&v12[v10[8]], 1, 1, v17);
  *&v12[v10[9]] = xmmword_18F540410;
  *&v12[v10[10]] = 0;
  *&v12[v10[11]] = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(&v12[v10[12]], 1, 1, v16);
  sub_18F0FF7A4();
  sub_18F0FF7A4();
  sub_18F13FE10();
  v19 = v18;
  sub_18F11CE30(v12, type metadata accessor for DisplayRepresentation);
  v20 = v19;
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v21 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  v26[0] = v14;
  sub_18F173D54();
  v22 = [objc_opt_self() fileValueType];
  v23 = [v21 initWithValue:v14 valueType:v22 displayRepresentation:v20];

  return v23;
}

id sub_18F233794(uint64_t a1)
{
  v26 = a1;
  v1 = type metadata accessor for IntentNote(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v27[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27[-1] - v8;
  v10 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = type metadata accessor for DisplayRepresentation(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v29 = sub_18F23948C(&qword_1EACD3108, type metadata accessor for IntentNote, &protocol conformance descriptor for IntentNote);
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_18F239430();
  __swift_project_boxed_opaque_existential_1Tm(v27, v28);
  sub_18F52186C();
  sub_18F52185C();
  sub_18F52183C();
  sub_18F52185C();
  sub_18F520AEC();
  v15 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
  __swift_storeEnumTagSinglePayload(&v14[v12[7]], 1, 1, v15);
  __swift_storeEnumTagSinglePayload(&v14[v12[8]], 1, 1, v16);
  *&v14[v12[9]] = xmmword_18F540410;
  *&v14[v12[10]] = 0;
  *&v14[v12[11]] = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(&v14[v12[12]], 1, 1, v15);
  sub_18F0FF7A4();
  sub_18F0FF7A4();
  sub_18F13FE10();
  v18 = v17;
  sub_18F11CE30(v14, type metadata accessor for DisplayRepresentation);
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v20 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  sub_18F0F21A8(0, &qword_1EACD3110, 0x1E696E900);
  v21 = v26;
  sub_18F239430();
  v22 = sub_18F281BD0(v3);
  v23 = [objc_opt_self() noteValueType];
  v24 = [v20 initWithValue:v22 valueType:v23 displayRepresentation:v19];

  sub_18F11CE30(v21, type metadata accessor for IntentNote);
  return v24;
}

id sub_18F233BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v26 - v6;
  v8 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = type metadata accessor for DisplayRepresentation(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = &type metadata for IntentTimer;
  v28[4] = sub_18F23928C();
  v13 = swift_allocObject();
  v28[0] = v13;
  v14 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = *(a1 + 48);
  __swift_project_boxed_opaque_existential_1Tm(v28, &type metadata for IntentTimer);
  sub_18F1E2BB4(a1, v26);
  sub_18F52186C();
  sub_18F52185C();
  sub_18F52183C();
  sub_18F52185C();
  sub_18F520AEC();
  v15 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v16);
  __swift_storeEnumTagSinglePayload(&v12[v10[7]], 1, 1, v15);
  __swift_storeEnumTagSinglePayload(&v12[v10[8]], 1, 1, v16);
  *&v12[v10[9]] = xmmword_18F540410;
  *&v12[v10[10]] = 0;
  *&v12[v10[11]] = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(&v12[v10[12]], 1, 1, v15);
  sub_18F0FF7A4();
  sub_18F0FF7A4();
  sub_18F13FE10();
  v18 = v17;
  sub_18F11CE30(v12, type metadata accessor for DisplayRepresentation);
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  v20 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  sub_18F0F21A8(0, &qword_1EACD1A48, 0x1E696EAC0);
  v21 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v21;
  v26[2] = *(a1 + 32);
  v27 = *(a1 + 48);
  v22 = sub_18F1E2AC8(v26);
  v23 = [objc_opt_self() timerValueType];
  v24 = [v20 initWithValue:v22 valueType:v23 displayRepresentation:v19];

  return v24;
}

id sub_18F233FA8(uint64_t a1)
{
  v2 = type metadata accessor for IntentPerson(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  v4 = type metadata accessor for DisplayRepresentation(0);
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v20 = v2;
  v21 = sub_18F23948C(&qword_1EACD30B0, type metadata accessor for IntentPerson, &protocol conformance descriptor for IntentPerson);
  __swift_allocate_boxed_opaque_existential_1(v19);
  sub_18F239430();
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  IntentPerson.displayRepresentation.getter();
  sub_18F13FE10();
  v10 = v9;
  OUTLINED_FUNCTION_0_47();
  sub_18F11CE30(v8, v11);
  v12 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v13 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  sub_18F0F21A8(0, &qword_1EACD30B8, 0x1E696E940);
  sub_18F239430();
  INPerson.init(_:)();
  v15 = v14;
  v16 = [objc_opt_self() personValueType];
  v17 = [v13 initWithValue:v15 valueType:v16 displayRepresentation:v12];

  sub_18F11CE30(a1, type metadata accessor for IntentPerson);
  return v17;
}

id sub_18F2341A8(uint64_t a1)
{
  v26 = a1;
  v1 = type metadata accessor for IntentMediaItem(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v27[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27[-1] - v8;
  v10 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = type metadata accessor for DisplayRepresentation(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v29 = sub_18F23948C(&qword_1EACD3128, type metadata accessor for IntentMediaItem, &protocol conformance descriptor for IntentMediaItem);
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_18F239430();
  __swift_project_boxed_opaque_existential_1Tm(v27, v28);
  sub_18F52186C();
  sub_18F52185C();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F52183C();

  sub_18F52185C();
  sub_18F520AEC();
  v15 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
  __swift_storeEnumTagSinglePayload(&v14[v12[7]], 1, 1, v15);
  __swift_storeEnumTagSinglePayload(&v14[v12[8]], 1, 1, v16);
  *&v14[v12[9]] = xmmword_18F540410;
  *&v14[v12[10]] = 0;
  *&v14[v12[11]] = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(&v14[v12[12]], 1, 1, v15);
  sub_18F0FF7A4();
  sub_18F0FF7A4();
  sub_18F13FE10();
  v18 = v17;
  sub_18F11CE30(v14, type metadata accessor for DisplayRepresentation);
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v20 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  sub_18F0F21A8(0, &qword_1EACD1F90, 0x1E696E8E8);
  v21 = v26;
  sub_18F239430();
  v22 = sub_18F1F1864(v3);
  v23 = [objc_opt_self() mediaItemValueType];
  v24 = [v20 initWithValue:v22 valueType:v23 displayRepresentation:v19];

  sub_18F11CE30(v21, type metadata accessor for IntentMediaItem);
  return v24;
}

id sub_18F23460C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = type metadata accessor for DisplayRepresentation(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &type metadata for IntentApplication;
  v30 = sub_18F239334();
  v27 = a1;
  v28 = a2;
  __swift_project_boxed_opaque_existential_1Tm(&v27, &type metadata for IntentApplication);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F52186C();
  sub_18F52185C();
  sub_18F52183C();
  sub_18F52185C();
  sub_18F520AEC();
  v15 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
  __swift_storeEnumTagSinglePayload(&v14[v12[7]], 1, 1, v15);
  __swift_storeEnumTagSinglePayload(&v14[v12[8]], 1, 1, v16);
  *&v14[v12[9]] = xmmword_18F540410;
  *&v14[v12[10]] = 0;
  *&v14[v12[11]] = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(&v14[v12[12]], 1, 1, v15);
  sub_18F0FF7A4();
  sub_18F0FF7A4();
  sub_18F13FE10();
  v18 = v17;
  sub_18F11CE30(v14, type metadata accessor for DisplayRepresentation);
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  v20 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  v27 = a1;
  v28 = a2;
  v27 = sub_18F521AEC();
  v28 = v21;
  v22 = sub_18F522E0C();
  v23 = [objc_opt_self() applicationValueType];
  v24 = [v20 initWithValue:v22 valueType:v23 displayRepresentation:v19];
  swift_unknownObjectRelease();

  return v24;
}

id sub_18F2349B4(uint64_t a1)
{
  v26 = a1;
  v1 = type metadata accessor for IntentMediaSearch(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v27[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27[-1] - v8;
  v10 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = type metadata accessor for DisplayRepresentation(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v29 = sub_18F23948C(&qword_1EACD30F8, type metadata accessor for IntentMediaSearch, &protocol conformance descriptor for IntentMediaSearch);
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_18F239430();
  __swift_project_boxed_opaque_existential_1Tm(v27, v28);
  sub_18F52186C();
  sub_18F52185C();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F52183C();

  sub_18F52185C();
  sub_18F520AEC();
  v15 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
  __swift_storeEnumTagSinglePayload(&v14[v12[7]], 1, 1, v15);
  __swift_storeEnumTagSinglePayload(&v14[v12[8]], 1, 1, v16);
  *&v14[v12[9]] = xmmword_18F540410;
  *&v14[v12[10]] = 0;
  *&v14[v12[11]] = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(&v14[v12[12]], 1, 1, v15);
  sub_18F0FF7A4();
  sub_18F0FF7A4();
  sub_18F13FE10();
  v18 = v17;
  sub_18F11CE30(v14, type metadata accessor for DisplayRepresentation);
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v20 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  sub_18F0F21A8(0, &qword_1EACD3100, 0x1E696E8F0);
  v21 = v26;
  sub_18F239430();
  v22 = sub_18F31B564(v3);
  v23 = [objc_opt_self() mediaSearchValueType];
  v24 = [v20 initWithValue:v22 valueType:v23 displayRepresentation:v19];

  sub_18F11CE30(v21, type metadata accessor for IntentMediaSearch);
  return v24;
}

id sub_18F234E18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = type metadata accessor for DisplayRepresentation(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = &type metadata for IntentNotification;
  v29 = sub_18F239388();
  v26 = a1;
  v27 = a2;
  __swift_project_boxed_opaque_existential_1Tm(&v26, &type metadata for IntentNotification);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F52186C();
  sub_18F52185C();
  sub_18F52183C();
  sub_18F52185C();
  sub_18F520AEC();
  v15 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
  __swift_storeEnumTagSinglePayload(&v14[v12[7]], 1, 1, v15);
  __swift_storeEnumTagSinglePayload(&v14[v12[8]], 1, 1, v16);
  *&v14[v12[9]] = xmmword_18F540410;
  *&v14[v12[10]] = 0;
  *&v14[v12[11]] = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(&v14[v12[12]], 1, 1, v15);
  sub_18F0FF7A4();
  sub_18F0FF7A4();
  sub_18F13FE10();
  v18 = v17;
  sub_18F11CE30(v14, type metadata accessor for DisplayRepresentation);
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_1Tm(&v26);
  v20 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  v26 = a1;
  v27 = a2;
  v21 = sub_18F522E0C();
  v22 = [objc_opt_self() notificationValueType];
  v23 = [v20 initWithValue:v21 valueType:v22 displayRepresentation:v19];
  swift_unknownObjectRelease();

  return v23;
}

id sub_18F23519C(uint64_t a1)
{
  v26 = a1;
  v1 = type metadata accessor for IntentReminderTask(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v27[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27[-1] - v8;
  v10 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = type metadata accessor for DisplayRepresentation(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v29 = sub_18F23948C(&qword_1EACD3118, type metadata accessor for IntentReminderTask, &protocol conformance descriptor for IntentReminderTask);
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_18F239430();
  __swift_project_boxed_opaque_existential_1Tm(v27, v28);
  sub_18F52186C();
  sub_18F52185C();
  sub_18F52183C();
  sub_18F52185C();
  sub_18F520AEC();
  v15 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
  __swift_storeEnumTagSinglePayload(&v14[v12[7]], 1, 1, v15);
  __swift_storeEnumTagSinglePayload(&v14[v12[8]], 1, 1, v16);
  *&v14[v12[9]] = xmmword_18F540410;
  *&v14[v12[10]] = 0;
  *&v14[v12[11]] = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(&v14[v12[12]], 1, 1, v15);
  sub_18F0FF7A4();
  sub_18F0FF7A4();
  sub_18F13FE10();
  v18 = v17;
  sub_18F11CE30(v14, type metadata accessor for DisplayRepresentation);
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v20 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  sub_18F0F21A8(0, &qword_1EACD3120, 0x1E696EA98);
  v21 = v26;
  sub_18F239430();
  v22 = sub_18F239BF4(v3);
  v23 = [objc_opt_self() taskValueType];
  v24 = [v20 initWithValue:v22 valueType:v23 displayRepresentation:v19];

  sub_18F11CE30(v21, type metadata accessor for IntentReminderTask);
  return v24;
}

id sub_18F2355DC(uint64_t a1)
{
  v26 = a1;
  v1 = type metadata accessor for IntentCalendarEvent(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v27[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27[-1] - v8;
  v10 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = type metadata accessor for DisplayRepresentation(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v29 = sub_18F23948C(&qword_1EACD3150, type metadata accessor for IntentCalendarEvent, &protocol conformance descriptor for IntentCalendarEvent);
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_18F239430();
  __swift_project_boxed_opaque_existential_1Tm(v27, v28);
  sub_18F52186C();
  sub_18F52185C();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F52183C();

  sub_18F52185C();
  sub_18F520AEC();
  v15 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
  __swift_storeEnumTagSinglePayload(&v14[v12[7]], 1, 1, v15);
  __swift_storeEnumTagSinglePayload(&v14[v12[8]], 1, 1, v16);
  *&v14[v12[9]] = xmmword_18F540410;
  *&v14[v12[10]] = 0;
  *&v14[v12[11]] = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(&v14[v12[12]], 1, 1, v15);
  sub_18F0FF7A4();
  sub_18F0FF7A4();
  sub_18F13FE10();
  v18 = v17;
  sub_18F11CE30(v14, type metadata accessor for DisplayRepresentation);
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v20 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  sub_18F0F21A8(0, &qword_1EACD0278, 0x1E696E770);
  v21 = v26;
  sub_18F239430();
  v22 = sub_18F170EBC(v3);
  v23 = [objc_opt_self() calendarEventValueType];
  v24 = [v20 initWithValue:v22 valueType:v23 displayRepresentation:v19];

  sub_18F11CE30(v21, type metadata accessor for IntentCalendarEvent);
  return v24;
}

id sub_18F235A40(void *a1)
{
  v2 = type metadata accessor for DisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[3] = &type metadata for IntentPaymentMethod;
  v14[4] = sub_18F239238();
  v14[0] = a1;
  __swift_project_boxed_opaque_existential_1Tm(v14, &type metadata for IntentPaymentMethod);
  v5 = a1;
  IntentPaymentMethod.displayRepresentation.getter(v4);
  sub_18F13FE10();
  v7 = v6;
  sub_18F11CE30(v4, type metadata accessor for DisplayRepresentation);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  v9 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  v10 = [objc_opt_self() paymentMethodValueType];
  v11 = [v9 initWithValue:v5 valueType:v10 displayRepresentation:v8];

  return v11;
}

id sub_18F235B8C(uint64_t a1)
{
  v2 = type metadata accessor for DisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *(&v19 + 1) = &type metadata for IntentCurrencyAmount;
  v20 = sub_18F2392E0();
  v5 = swift_allocObject();
  *&v18 = v5;
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1Tm(&v18, &type metadata for IntentCurrencyAmount);
  sub_18F1DF3F4(a1, v17);
  IntentCurrencyAmount.displayRepresentation.getter(v4);
  sub_18F13FE10();
  v8 = v7;
  sub_18F11CE30(v4, type metadata accessor for DisplayRepresentation);
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_1Tm(&v18);
  v10 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  sub_18F0F21A8(0, &qword_1EACD1840, 0x1E696E7E8);
  v11 = *(a1 + 16);
  v18 = *a1;
  v19 = v11;
  v20 = *(a1 + 32);
  v12 = sub_18F1DF340(&v18);
  v13 = [objc_opt_self() currencyAmountValueType];
  v14 = [v10 initWithValue:v12 valueType:v13 displayRepresentation:v9];

  return v14;
}

id sub_18F235D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = a2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD30A0, &unk_18F5543E0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v17, v21);
    v8 = v22;
    v7 = v23;
    __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    (*(*(v7 + 8) + 16))(v8);
    sub_18F13FE10();
    v10 = v9;
    sub_18F11CE30(v6, type metadata accessor for DisplayRepresentation);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_18F0EF1A8(v17, &qword_1EACD30A8, &qword_18F54A5B0);
    v11 = 0;
  }

  v12 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  sub_18F0F21A8(0, &qword_1EACD30E0, 0x1E69AC9F0);
  v21[0] = a1;
  v21[1] = a2;
  v13 = sub_18F36B140(v21);
  v14 = [objc_opt_self() stringValueType];
  v15 = [v12 initWithValue:v13 valueType:v14 displayRepresentation:v11];

  return v15;
}

id sub_18F235F30(uint64_t a1)
{
  v26 = a1;
  v1 = type metadata accessor for IntentReminderTaskList(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v27[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27[-1] - v8;
  v10 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = type metadata accessor for DisplayRepresentation(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v29 = sub_18F23948C(&qword_1EACD30C0, type metadata accessor for IntentReminderTaskList, &protocol conformance descriptor for IntentReminderTaskList);
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_18F239430();
  __swift_project_boxed_opaque_existential_1Tm(v27, v28);
  sub_18F52186C();
  sub_18F52185C();
  sub_18F52183C();
  sub_18F52185C();
  sub_18F520AEC();
  v15 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
  __swift_storeEnumTagSinglePayload(&v14[v12[7]], 1, 1, v15);
  __swift_storeEnumTagSinglePayload(&v14[v12[8]], 1, 1, v16);
  *&v14[v12[9]] = xmmword_18F540410;
  *&v14[v12[10]] = 0;
  *&v14[v12[11]] = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(&v14[v12[12]], 1, 1, v15);
  sub_18F0FF7A4();
  sub_18F0FF7A4();
  sub_18F13FE10();
  v18 = v17;
  sub_18F11CE30(v14, type metadata accessor for DisplayRepresentation);
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v20 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  sub_18F0F21A8(0, &qword_1EACD30C8, 0x1E696EAA0);
  v21 = v26;
  sub_18F239430();
  v22 = sub_18F39B86C(v3);
  v23 = [objc_opt_self() taskListValueType];
  v24 = [v20 initWithValue:v22 valueType:v23 displayRepresentation:v19];

  sub_18F11CE30(v21, type metadata accessor for IntentReminderTaskList);
  return v24;
}

id sub_18F236370(__int128 *a1)
{
  v2 = type metadata accessor for DisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *(&v19 + 1) = &type metadata for IntentMessageConversation;
  v20 = sub_18F2391E4();
  v5 = swift_allocObject();
  *&v18 = v5;
  v6 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1Tm(&v18, &type metadata for IntentMessageConversation);
  sub_18F239188(a1, v17);
  IntentMessageConversation.displayRepresentation.getter(v4);
  sub_18F13FE10();
  v8 = v7;
  sub_18F11CE30(v4, type metadata accessor for DisplayRepresentation);
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_1Tm(&v18);
  v10 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  sub_18F0F21A8(0, &qword_1EACD30D8, 0x1E69AC8B8);
  v11 = a1[1];
  v18 = *a1;
  v19 = v11;
  v20 = *(a1 + 4);
  v12 = sub_18F395BF0(&v18);
  v13 = [objc_opt_self() messageConversationValueType];
  v14 = [v10 initWithValue:v12 valueType:v13 displayRepresentation:v9];

  return v14;
}

id sub_18F23651C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for DisplayRepresentation(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F520ACC();
  v12 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
  v13 = type metadata accessor for DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v13);
  __swift_storeEnumTagSinglePayload(&v11[v9[7]], 1, 1, v12);
  __swift_storeEnumTagSinglePayload(&v11[v9[8]], 1, 1, v13);
  *&v11[v9[9]] = xmmword_18F540410;
  *&v11[v9[10]] = 0;
  *&v11[v9[11]] = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(&v11[v9[12]], 1, 1, v12);
  sub_18F0FF7A4();
  sub_18F0FF7A4();
  sub_18F13FE10();
  v15 = v14;

  sub_18F11CE30(v11, type metadata accessor for DisplayRepresentation);
  v16 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  sub_18F0F21A8(0, &qword_1EACD30E8, 0x1E69AC928);
  v23 = a1;
  v17 = v15;
  v18 = sub_18F3572B4(&v23);
  v19 = [objc_opt_self() photoItemCollectionValueType];
  v20 = [v16 initWithValue:v18 valueType:v19 displayRepresentation:v17];

  return v20;
}

id sub_18F236824(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0, &qword_18F540EB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v27 - v3;
  v5 = type metadata accessor for DisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18F5208EC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = *(v9 + 16);
  v13(v27 - v14, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD30A0, &unk_18F5543E0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v27, v29);
    v16 = v30;
    v15 = v31;
    __swift_project_boxed_opaque_existential_1Tm(v29, v30);
    (*(*(v15 + 8) + 16))(v16);
    sub_18F13FE10();
    v18 = v17;
    sub_18F11CE30(v7, type metadata accessor for DisplayRepresentation);
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_18F0EF1A8(v27, &qword_1EACD30A8, &qword_18F54A5B0);
    AttributedString.defaultDisplayRepresentation.getter(v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_18F0EF1A8(v4, &qword_1EACD32D0, &qword_18F540EB0);
      v20 = 0;
    }

    else
    {
      sub_18F13FE10();
      v20 = v21;
      sub_18F11CE30(v4, type metadata accessor for DisplayRepresentation);
    }

    v19 = v20;
  }

  v22 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  sub_18F0F21A8(0, &qword_1EACCDD18, 0x1E696AAB0);
  v13(v12, a1, v8);
  v23 = sub_18F52234C();
  v24 = [objc_opt_self() attributedStringValueType];
  v25 = [v22 initWithValue:v23 valueType:v24 displayRepresentation:v19];

  (*(v9 + 8))(a1, v8);
  return v25;
}

void sub_18F236BC0()
{
  OUTLINED_FUNCTION_18();
  v47 = v0;
  v44 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0, &qword_18F540EB0);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = v3(0);
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v45 = (v19 - v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v44 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = *(v17 + 16);
  v46 = v5;
  v25(&v44 - v26, v5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD30A0, &unk_18F5543E0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v48, v50);
    v27 = v51;
    __swift_project_boxed_opaque_existential_1Tm(v50, v51);
    OUTLINED_FUNCTION_14_26();
    v28(v27);
    sub_18F13FE10();
    v30 = v29;
    OUTLINED_FUNCTION_0_47();
    sub_18F11CE30(v14, v31);
    v32 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v33 = v46;
  }

  else
  {
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    v34 = sub_18F0EF1A8(v48, &qword_1EACD30A8, &qword_18F54A5B0);
    v35 = v46;
    v44(v34);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
    v33 = v35;
    if (EnumTagSinglePayload == 1)
    {
      sub_18F0EF1A8(v9, &qword_1EACD32D0, &qword_18F540EB0);
      v37 = 0;
    }

    else
    {
      sub_18F13FE10();
      v37 = v38;
      OUTLINED_FUNCTION_0_47();
      sub_18F11CE30(v9, v39);
    }

    v32 = v37;
  }

  v40 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  v25(v24, v33, v15);
  v25(v45, v24, v15);
  v41 = sub_18F522E0C();
  v42 = *(v17 + 8);
  v42(v24, v15);
  v43 = [objc_opt_self() *v47];
  [v40 initWithValue:v41 valueType:v43 displayRepresentation:v32];
  swift_unknownObjectRelease();

  v42(v33, v15);
  OUTLINED_FUNCTION_16();
}

id sub_18F236F5C(uint64_t a1)
{
  v2 = type metadata accessor for DisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18F520F2C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = *(v6 + 16);
  v10(v22 - v11, a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD30A0, &unk_18F5543E0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v22, v24);
    v13 = v25;
    v12 = v26;
    __swift_project_boxed_opaque_existential_1Tm(v24, v25);
    (*(*(v12 + 8) + 16))(v13);
    sub_18F13FE10();
    v15 = v14;
    sub_18F11CE30(v4, type metadata accessor for DisplayRepresentation);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_18F0EF1A8(v22, &qword_1EACD30A8, &qword_18F54A5B0);
    v16 = 0;
  }

  v17 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  sub_18F5223AC();
  v10(v9, a1, v5);
  v18 = sub_18F52239C();
  v19 = [objc_opt_self() recurrenceRuleType];
  v20 = [v17 initWithValue:v18 valueType:v19 displayRepresentation:v16];

  (*(v6 + 8))(a1, v5);
  return v20;
}

id sub_18F237224(char a1)
{
  v2 = type metadata accessor for DisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD30A0, &unk_18F5543E0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v17, v20);
    v6 = v21;
    v5 = v22;
    __swift_project_boxed_opaque_existential_1Tm(v20, v21);
    (*(*(v5 + 8) + 16))(v6);
    sub_18F13FE10();
    v8 = v7;
    sub_18F11CE30(v4, type metadata accessor for DisplayRepresentation);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_18F0EF1A8(v17, &qword_1EACD30A8, &qword_18F54A5B0);
    v9 = 0;
  }

  if (a1)
  {
    v10 = 0x6576697463616E69;
  }

  else
  {
    v10 = 0x657669746361;
  }

  if (a1)
  {
    v11 = 0xE800000000000000;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  v12 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  v20[0] = v10;
  v20[1] = v11;
  v13 = sub_18F522E0C();
  v14 = [objc_opt_self() intentToggleStateValueType];
  v15 = [v12 initWithValue:v13 valueType:v14 displayRepresentation:v9];
  swift_unknownObjectRelease();

  return v15;
}

id sub_18F23742C(char a1)
{
  v2 = type metadata accessor for DisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD30A0, &unk_18F5543E0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v17, v20);
    v6 = v21;
    v5 = v22;
    __swift_project_boxed_opaque_existential_1Tm(v20, v21);
    (*(*(v5 + 8) + 16))(v6);
    sub_18F13FE10();
    v8 = v7;
    sub_18F11CE30(v4, type metadata accessor for DisplayRepresentation);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_18F0EF1A8(v17, &qword_1EACD30A8, &qword_18F54A5B0);
    v9 = 0;
  }

  if (a1)
  {
    v10 = 7628147;
  }

  else
  {
    v10 = 0x656C67676F74;
  }

  if (a1)
  {
    v11 = 0xE300000000000000;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  v12 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  v20[0] = v10;
  v20[1] = v11;
  v13 = sub_18F522E0C();
  v14 = [objc_opt_self() intentToggleOperationValueType];
  v15 = [v12 initWithValue:v13 valueType:v14 displayRepresentation:v9];
  swift_unknownObjectRelease();

  return v15;
}

id sub_18F23762C(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0, &qword_18F540EB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - v3;
  v5 = type metadata accessor for DisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD30A0, &unk_18F5543E0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v20, v23);
    v9 = v24;
    v8 = v25;
    __swift_project_boxed_opaque_existential_1Tm(v23, v24);
    (*(*(v8 + 8) + 16))(v9);
    sub_18F13FE10();
    v11 = v10;
    sub_18F11CE30(v7, type metadata accessor for DisplayRepresentation);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_18F0EF1A8(v20, &qword_1EACD30A8, &qword_18F54A5B0);
    Bool.defaultDisplayRepresentation.getter(v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_18F0EF1A8(v4, &qword_1EACD32D0, &qword_18F540EB0);
      v13 = 0;
    }

    else
    {
      sub_18F13FE10();
      v13 = v14;
      sub_18F11CE30(v4, type metadata accessor for DisplayRepresentation);
    }

    v12 = v13;
  }

  v15 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  LOBYTE(v23[0]) = a1 & 1;
  v16 = sub_18F522E0C();
  v17 = [objc_opt_self() BOOLValueType];
  v18 = [v15 initWithValue:v16 valueType:v17 displayRepresentation:v12];
  swift_unknownObjectRelease();

  return v18;
}

id sub_18F2378CC(double a1)
{
  v2 = type metadata accessor for DisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD30A0, &unk_18F5543E0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v18, v21);
    v6 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    (*(*(v5 + 8) + 16))(v6);
    sub_18F13FE10();
    v8 = v7;
    sub_18F11CE30(v4, type metadata accessor for DisplayRepresentation);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_18F0EF1A8(v18, &qword_1EACD30A8, &qword_18F54A5B0);
    v10 = sub_18F521FDC();
    sub_18F27C094(v10, v4);
    sub_18F13FE10();
    v12 = v11;
    sub_18F11CE30(v4, type metadata accessor for DisplayRepresentation);
    v9 = v12;
  }

  v13 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  *v21 = a1;
  v14 = sub_18F522E0C();
  v15 = [objc_opt_self() doubleValueType];
  v16 = [v13 initWithValue:v14 valueType:v15 displayRepresentation:v9];
  swift_unknownObjectRelease();

  return v16;
}

id sub_18F237AE4(uint64_t a1)
{
  v2 = type metadata accessor for DisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD30A0, &unk_18F5543E0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v18, v21);
    v6 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    (*(*(v5 + 8) + 16))(v6);
    sub_18F13FE10();
    v8 = v7;
    sub_18F11CE30(v4, type metadata accessor for DisplayRepresentation);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_18F0EF1A8(v18, &qword_1EACD30A8, &qword_18F54A5B0);
    v10 = sub_18F52209C();
    sub_18F27C094(v10, v4);
    sub_18F13FE10();
    v12 = v11;
    sub_18F11CE30(v4, type metadata accessor for DisplayRepresentation);
    v9 = v12;
  }

  v13 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  v21[0] = a1;
  v14 = sub_18F522E0C();
  v15 = [objc_opt_self() intValueType];
  v16 = [v13 initWithValue:v14 valueType:v15 displayRepresentation:v9];
  swift_unknownObjectRelease();

  return v16;
}

void LNValue.init<A>(_:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0, &qword_18F540EB0);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v32 - v13;
  OUTLINED_FUNCTION_11_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  (*(v16 + 16))(v19 - v18, v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD30A0, &unk_18F5543E0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v32, v34);
    v20 = v35;
    __swift_project_boxed_opaque_existential_1Tm(v34, v35);
    OUTLINED_FUNCTION_14_26();
    v21(v20);
    sub_18F13FE10();
    v23 = v22;
    OUTLINED_FUNCTION_0_47();
    sub_18F11CE30(v10, v24);
    v25 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  else
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_18F0EF1A8(v32, &qword_1EACD30A8, &qword_18F54A5B0);
    (*(v1 + 32))(v3, v1);
    if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
    {
      sub_18F0EF1A8(v14, &qword_1EACD32D0, &qword_18F540EB0);
      v26 = 0;
    }

    else
    {
      sub_18F13FE10();
      v26 = v27;
      OUTLINED_FUNCTION_0_47();
      sub_18F11CE30(v14, v28);
    }

    v25 = v26;
  }

  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  (*(v1 + 24))(v34, v3, v1);
  __swift_project_boxed_opaque_existential_1Tm(v34, v35);
  v30 = sub_18F522D4C();
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  v31 = (*(v1 + 8))(v3, v1);
  [v29 initWithValue:v30 valueType:v31 displayRepresentation:v25];
  swift_unknownObjectRelease();

  (*(v16 + 8))(v5, v3);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F238034()
{
  OUTLINED_FUNCTION_79();
  v2 = dynamic_cast_existential_1_conditional(v1, v1, MEMORY[0x1E69E6630]);
  if (v2)
  {
    v4 = sub_18F2389E0(v2, v3);
    if (v4)
    {
      return v4;
    }
  }

  return v0;
}

uint64_t sub_18F2380C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for IntentEnvironment;
  *a3 = a1;
  a3[1] = a2;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F2380DC()
{
  v2 = OUTLINED_FUNCTION_4_17();
  v4 = v3(v2);
  v0[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, v1, v4);
}

uint64_t sub_18F23815C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = MEMORY[0x1E69E6158];
  *a3 = a1;
  a3[1] = a2;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F238174@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = MEMORY[0x1E69E6370];
  *a2 = result;
  return result;
}

uint64_t sub_18F23819C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[3] = MEMORY[0x1E69E6530];
  *a2 = result;
  return result;
}

uint64_t ValueEncodable.projectedAsValue.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v5 = *(*(a1 - 8) + 16);

  return v5(boxed_opaque_existential_1, v2, a1);
}

uint64_t static Optional<A>.defaultResolverSpecification.getter()
{
  OUTLINED_FUNCTION_79();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_18F2383AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

id sub_18F23846C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for DisplayRepresentation(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = sub_18F52226C();
  v16 = *(v9 + 16);
  v16(v14, v3, a1);
  v17 = sub_18F52225C();
  v28[3] = v15;
  v28[0] = v17;
  v18 = sub_18F35DCE8();
  v16(v12, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD30A0, &unk_18F5543E0);
  if (swift_dynamicCast())
  {
    v20 = *(&v26 + 1);
    v19 = v27;
    __swift_project_boxed_opaque_existential_1Tm(&v25, *(&v26 + 1));
    (*(*(v19 + 8) + 16))(v20);
    sub_18F13FE10();
    v22 = v21;
    sub_18F11CE30(v8, type metadata accessor for DisplayRepresentation);
    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_18F0EF1A8(&v25, &qword_1EACD30A8, &qword_18F54A5B0);
    v22 = 0;
  }

  v23 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  return sub_18F141064(v28, v18, v22);
}

uint64_t sub_18F2386E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *(v5 + 16);
  v9(v25 - v10, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540, &qword_18F547E80);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v25, v27);
    v11 = v28;
    __swift_project_boxed_opaque_existential_1Tm(v27, v28);
    v12 = sub_18F27FDBC(v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_18F0EF1A8(v25, &qword_1EACCFCF8, &unk_18F548C10);
    (v9)(v8, a1, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3158, &qword_18F54A768);
    if (swift_dynamicCast())
    {
      v13 = v27[0];
      v14 = *(v27[0] + 16);
      if (v14)
      {
        *&v25[0] = MEMORY[0x1E69E7CC0];
        sub_18F3AA158(0, v14, 0);
        v15 = *&v25[0];
        v16 = v13 + 32;
        do
        {
          sub_18F0FD724(v16, v27);
          v17 = v28;
          __swift_project_boxed_opaque_existential_1Tm(v27, v28);
          v18 = sub_18F27FDBC(v17);
          v20 = v19;
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
          *&v25[0] = v15;
          v22 = *(v15 + 16);
          v21 = *(v15 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_18F3AA158(v21 > 1, v22 + 1, 1);
            v15 = *&v25[0];
          }

          *(v15 + 16) = v22 + 1;
          v23 = v15 + 16 * v22;
          *(v23 + 32) = v18;
          *(v23 + 40) = v20;
          v16 += 40;
          --v14;
        }

        while (v14);
      }

      else
      {

        v15 = MEMORY[0x1E69E7CC0];
      }

      v12 = MEMORY[0x193ADB2B0](v15, MEMORY[0x1E69E6158]);
    }

    else
    {
      v27[0] = 0;
      v27[1] = 0xE000000000000000;
      sub_18F522D1C();
      return v27[0];
    }
  }

  return v12;
}

id sub_18F238A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_18F35DCE8();
  v4 = [objc_allocWithZone(MEMORY[0x1E69AC6B8]) initWithMemberValueType:v3 capabilities:3];

  return v4;
}

id sub_18F238A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = a4;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = swift_getKeyPath();
  v7 = sub_18F521DBC();
  v8 = sub_18F0F21A8(0, &unk_1ED6FE390, 0x1E69ACA88);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_18F10C138(sub_18F2121E4, v15, v7, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&word_1EACD1430, &qword_18F5444A0);
  v16[0] = v11;
  v12 = sub_18F238A30(a2, a3, a4);
  v13 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  return sub_18F166E58(v16, v12);
}

id sub_18F238BD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = sub_18F23846C(*(a1 + a2 - 24), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t sub_18F238C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18F238CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t sub_18F2391E4()
{
  result = qword_1EACD30D0;
  if (!qword_1EACD30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD30D0);
  }

  return result;
}

unint64_t sub_18F239238()
{
  result = qword_1EACD30F0;
  if (!qword_1EACD30F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD30F0);
  }

  return result;
}

unint64_t sub_18F23928C()
{
  result = qword_1EACD3130;
  if (!qword_1EACD3130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3130);
  }

  return result;
}

unint64_t sub_18F2392E0()
{
  result = qword_1EACD3138;
  if (!qword_1EACD3138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3138);
  }

  return result;
}

unint64_t sub_18F239334()
{
  result = qword_1EACD3140;
  if (!qword_1EACD3140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3140);
  }

  return result;
}

unint64_t sub_18F239388()
{
  result = qword_1EACD3148;
  if (!qword_1EACD3148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3148);
  }

  return result;
}

unint64_t sub_18F2393DC()
{
  result = qword_1EACCE848;
  if (!qword_1EACCE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE848);
  }

  return result;
}

uint64_t sub_18F239430()
{
  OUTLINED_FUNCTION_79();
  v2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_18F23948C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t IntentReminderTask.trigger.getter()
{
  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_2_45();
  return sub_18F239B98(v1 + v2, v0, v3);
}

uint64_t IntentReminderTask.identifier.getter()
{
  type metadata accessor for IntentReminderTask(0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return OUTLINED_FUNCTION_56();
}

uint64_t IntentReminderTask.createdDateComponents.getter()
{
  v2 = *(OUTLINED_FUNCTION_8_23() + 36);
  sub_18F52085C();
  OUTLINED_FUNCTION_10_0();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t IntentReminderTask.modifiedDateComponents.getter()
{
  v2 = *(OUTLINED_FUNCTION_8_23() + 40);
  sub_18F52085C();
  OUTLINED_FUNCTION_10_0();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t IntentReminderTask.priority.getter()
{
  result = OUTLINED_FUNCTION_8_23();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t IntentReminderTask.init(title:status:type:trigger:identifier:createdDateComponents:modifiedDateComponents:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11)
{
  v16 = *a3;
  v17 = *a4;
  v18 = *a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v16;
  *(a9 + 17) = v17;
  v19 = type metadata accessor for IntentReminderTask(0);
  sub_18F2397E8(a5, a9 + v19[7]);
  v20 = (a9 + v19[8]);
  *v20 = a6;
  v20[1] = a7;
  v21 = v19[9];
  v22 = sub_18F52085C();
  OUTLINED_FUNCTION_10_0();
  v24 = *(v23 + 32);
  v24(a9 + v21, a8, v22);
  result = (v24)(a9 + v19[10], a10, v22);
  *(a9 + v19[11]) = v18;
  return result;
}

uint64_t sub_18F2397E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentReminderTask.TaskTrigger(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IntentReminderTask.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = sub_18F52187C();
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  sub_18F52186C();
  sub_18F52185C();
  sub_18F52183C();
  sub_18F52185C();
  sub_18F520AEC();
  v12 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = type metadata accessor for DisplayRepresentation(0);
  v21 = v20[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v12);
  v25 = v20[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v16);
  *(a1 + v20[7]) = xmmword_18F540410;
  *(a1 + v20[8]) = 0;
  *(a1 + v20[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v12);
  sub_18F0FF800(v9, a1 + v21, &qword_1EACCF7A8, &qword_18F540440);
  return sub_18F0FF800(v5, a1 + v25, &qword_1EACD0270, &unk_18F5407C0);
}

id static IntentReminderTask.valueType.getter()
{
  v0 = [objc_opt_self() taskValueType];

  return v0;
}

id IntentReminderTask.projectedAsValue.getter()
{
  v2 = OUTLINED_FUNCTION_8_23();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  v6 = (v5 - v4);
  v7 = sub_18F0F21A8(0, &qword_1EACD3120, 0x1E696EA98);
  sub_18F239B98(v1, v6, type metadata accessor for IntentReminderTask);
  result = sub_18F239BF4(v6);
  v0[3] = v7;
  *v0 = result;
  return result;
}

uint64_t sub_18F239B98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

id sub_18F239BF4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0320, &qword_18F540660);
  v3 = OUTLINED_FUNCTION_10(v2);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v49 - v7;
  v9 = sub_18F52085C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v49 - v16;
  type metadata accessor for IntentReminderTask.TaskTrigger(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  v21 = type metadata accessor for IntentReminderTask(0);
  OUTLINED_FUNCTION_2_45();
  sub_18F239B98(a1 + v22, v20, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD31F8, &qword_18F54ACC0) + 48);
    v50 = v6;
    v25 = v15;
    v26 = *(v11 + 32);
    v27 = v11;
    v26(v51, v20, v9);
    v26(v25, v20 + v24, v9);
    v28 = *(v11 + 16);
    v29 = v51;
    v28(v8, v51, v9);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    v30 = v50;
    v28(v50, v25, v9);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v9);
    v31 = objc_allocWithZone(MEMORY[0x1E696E800]);
    v32 = sub_18F23B064(v8, v30);
    v50 = [objc_allocWithZone(MEMORY[0x1E696EAA8]) initWithDateComponentsRange_];

    v33 = *(v27 + 8);
    v33(v25, v9);
    v33(v29, v9);
    v34 = 0;
  }

  else
  {
    v35 = *v20;
    v34 = [objc_allocWithZone(MEMORY[0x1E696EA48]) initWithPlacemark:*v20 event:*(v20 + 8)];

    v50 = 0;
  }

  v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18F0F21A8(0, &qword_1EACD1AA8, 0x1E696EA50);
  v37 = *a1;
  v38 = a1[1];
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v39 = sub_18F39B210(v37, v38);
  v40 = *(a1 + 16);
  v41 = *(a1 + 17);
  v42 = sub_18F52082C();
  v43 = sub_18F52082C();
  v44 = sub_18F5218AC();
  v48 = *(a1 + *(v21 + 44));
  v45 = v50;
  v46 = [v36 initWithTitle:v39 status:v40 taskType:v41 spatialEventTrigger:v34 temporalEventTrigger:v50 createdDateComponents:v42 modifiedDateComponents:v43 identifier:v44 priority:v48];

  sub_18F23B180(a1);
  return v46;
}

unint64_t sub_18F23A010()
{
  result = qword_1EACD3198;
  if (!qword_1EACD3198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3198);
  }

  return result;
}

unint64_t sub_18F23A068()
{
  result = qword_1EACD31A0;
  if (!qword_1EACD31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD31A0);
  }

  return result;
}

unint64_t sub_18F23A0C0()
{
  result = qword_1EACD31A8;
  if (!qword_1EACD31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD31A8);
  }

  return result;
}

unint64_t sub_18F23A118()
{
  result = qword_1EACD31B0;
  if (!qword_1EACD31B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD31B0);
  }

  return result;
}

uint64_t sub_18F23A16C(uint64_t a1)
{
  result = sub_18F23A1F4(&qword_1EACD31B8, &protocol conformance descriptor for IntentReminderTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F23A1B0(uint64_t a1)
{
  result = sub_18F23A1F4(&qword_1EACD31C0, &protocol conformance descriptor for IntentReminderTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F23A1F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntentReminderTask(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18F23A23C()
{
  result = qword_1EACD31C8;
  if (!qword_1EACD31C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD31D0, &qword_18F54AAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD31C8);
  }

  return result;
}

unint64_t sub_18F23A2AC()
{
  result = qword_1EACD31E0;
  if (!qword_1EACD31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD31E0);
  }

  return result;
}

uint64_t sub_18F23A300(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_18F522D5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
    if (v6 || (sub_18F522D5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_18F522D5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
        if (v8 || (sub_18F522D5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x800000018F527830 == a2;
          if (v9 || (sub_18F522D5C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x800000018F527850 == a2;
            if (v10 || (sub_18F522D5C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_18F522D5C();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_18F23A544(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x696669746E656469;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x797469726F697270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F23A610(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD31E8, &unk_18F54ACB0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F23B010();
  sub_18F522FEC();
  LOBYTE(v22) = 0;
  sub_18F522BFC();
  if (!v2)
  {
    OUTLINED_FUNCTION_1_41(1);
    OUTLINED_FUNCTION_1_41(2);
    OUTLINED_FUNCTION_1_41(3);
    v11 = v3[5];
    v22 = v3[4];
    v23 = v11;
    v21 = 4;
    v12 = sub_18F1728C8();
    v15 = OUTLINED_FUNCTION_4_35(v12, v13, v14, &_s23DateComponentsNLGParamsVN);
    v18 = v3[7];
    v22 = v3[6];
    v23 = v18;
    v21 = 5;
    OUTLINED_FUNCTION_4_35(v15, v16, v17, &_s23DateComponentsNLGParamsVN);
    OUTLINED_FUNCTION_1_41(6);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_18F23A7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F23A300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F23A810@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F23A53C();
  *a1 = result;
  return result;
}

uint64_t sub_18F23A838(uint64_t a1)
{
  v2 = sub_18F23B010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F23A874(uint64_t a1)
{
  v2 = sub_18F23B010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F23A8C8@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v4 = 0x6C706D6F43746F6ELL;
  v5 = 0x6574656C706D6F63;
  if (!*(v1 + 16))
  {
    v5 = 0x6C706D6F43746F6ELL;
  }

  v29 = v5;
  v30 = *v1;
  if (*(v1 + 16))
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xEC00000064657465;
  }

  if (!*(v1 + 17))
  {
    v4 = 0x6174656C706D6F63;
  }

  v27 = v4;
  v28 = v6;
  v7 = 0xEB00000000656C62;
  if (*(v1 + 17))
  {
    v7 = 0xEE00656C62617465;
  }

  v26 = v7;
  v8 = type metadata accessor for IntentReminderTask(0);
  v9 = (v1 + *(v8 + 32));
  v10 = v9[1];
  v25 = *v9;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v11 = sub_18F4506B8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = sub_18F4506B8();
  v22 = *(v1 + *(v8 + 44)) == 0;
  v23 = 0x6767616C46746F6ELL;
  *a1 = v30;
  a1[1] = v3;
  if (!v22)
  {
    v23 = 0x64656767616C66;
  }

  v24 = 0xEA00000000006465;
  a1[2] = v29;
  a1[3] = v28;
  a1[4] = v27;
  if (!v22)
  {
    v24 = 0xE700000000000000;
  }

  a1[5] = v26;
  a1[6] = v25;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v13 & 1;
  a1[10] = v15;
  a1[11] = v17;
  a1[12] = result;
  a1[13] = v19 & 1;
  a1[14] = v20;
  a1[15] = v21;
  a1[16] = v23;
  a1[17] = v24;
  return result;
}

uint64_t dispatch thunk of TaskRepresentableEntity.taskRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F10DF80;

  return v9(a1, a2, a3);
}

uint64_t sub_18F23AC04(uint64_t a1)
{
  result = type metadata accessor for IntentReminderTask.TaskTrigger(319);
  if (v2 <= 0x3F)
  {
    result = sub_18F52085C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_18F23ACC8(uint64_t a1)
{
  sub_18F23AD3C(319);
  if (v1 <= 0x3F)
  {
    sub_18F23ADB8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_18F23AD3C(uint64_t a1)
{
  if (!qword_1EACCDD50)
  {
    sub_18F0F21A8(255, &qword_1EACCDD48, 0x1E695FC20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EACCDD50);
    }
  }
}

void sub_18F23ADB8(uint64_t a1)
{
  if (!qword_1EACCDDD8[0])
  {
    sub_18F52085C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EACCDDD8);
    }
  }
}

_BYTE *sub_18F23AE50(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F23AF34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 144))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F23AF88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_18F23B010()
{
  result = qword_1EACD31F0;
  if (!qword_1EACD31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD31F0);
  }

  return result;
}

id sub_18F23B064(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_18F52085C();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) != 1)
  {
    v7 = sub_18F52082C();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v6) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_18F52082C();
    (*(*(v6 - 8) + 8))(a2, v6);
  }

  v9 = [v3 initWithStartDateComponents:v7 endDateComponents:v8];

  return v9;
}

uint64_t sub_18F23B180(uint64_t a1)
{
  v2 = type metadata accessor for IntentReminderTask(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for IntentDateComponentsRange.RecurrenceFrequency(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IntentReminderTask.ReminderTaskNLGParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F23B344()
{
  result = qword_1EACD3200;
  if (!qword_1EACD3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3200);
  }

  return result;
}

unint64_t sub_18F23B39C()
{
  result = qword_1EACD3208;
  if (!qword_1EACD3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3208);
  }

  return result;
}

unint64_t sub_18F23B3F4()
{
  result = qword_1EACD3210;
  if (!qword_1EACD3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3210);
  }

  return result;
}

id sub_18F23B470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[3] = a4;
  v28[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_31_0();
  (*(v9 + 32))();
  (*(a5 + 16))(a4, a5);
  if (!v10)
  {
    sub_18F0FA038(a2, &qword_1EACD0620, &unk_18F541850);
    v15 = 0;
    goto LABEL_16;
  }

  sub_18F0F9FD4(a2, v22, &qword_1EACD0620, &unk_18F541850);
  if (!v22[3])
  {
    sub_18F0FA038(v22, &qword_1EACD0620, &unk_18F541850);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540, &qword_18F547E80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
LABEL_9:
    sub_18F0FA038(&v23, &qword_1EACCFCF8, &unk_18F548C10);
    v16 = sub_18F5218AC();

    (*(a5 + 72))(&v23, a4, a5);
    if (*(&v24 + 1))
    {
      OUTLINED_FUNCTION_1_42(&v23);
      sub_18F11E26C();
      v17 = v27;
      if (v27)
      {
        OUTLINED_FUNCTION_1_42(v26);
        v18 = sub_18F142A38(v17);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        __swift_destroy_boxed_opaque_existential_1Tm(&v23);
LABEL_15:
        v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v16 value:v18];

        sub_18F0FA038(a2, &qword_1EACD0620, &unk_18F541850);
        goto LABEL_16;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v23);
      v19 = v26;
    }

    else
    {
      v19 = &v23;
    }

    sub_18F0FA038(v19, &qword_1EACD0620, &unk_18F541850);
    v18 = 0;
    goto LABEL_15;
  }

  if (!*(&v24 + 1))
  {
    goto LABEL_9;
  }

  sub_18F0FD0B4(&v23, v26);
  sub_18F0FD6C4(v28, &v23);
  sub_18F0FD6C4(v26, v22);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_18F142424(v13, v22, a3, a4, a5);
  sub_18F0FA038(a2, &qword_1EACD0620, &unk_18F541850);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(&v23);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v15;
}

uint64_t sub_18F23B848(uint64_t a1)
{
  result = sub_18F240104(&qword_1EACCEA80, _s18AppManagerObserverO23ObservationStatusStreamCMa, &unk_18F54AE18);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F23B8C4()
{
  result = qword_1EACCE908;
  if (!qword_1EACCE908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD3230, &qword_18F54AE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE908);
  }

  return result;
}

void sub_18F23B928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  MEMORY[0x193ADB000](47, 0xE100000000000000);
  MEMORY[0x193ADB000](a3, a4);
}

uint64_t sub_18F23B98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_18F522D5C(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_18F522D5C();
    }
  }

  return result;
}

uint64_t sub_18F23BA2C(uint64_t a1, uint64_t a2)
{
  sub_18F5219CC();
  OUTLINED_FUNCTION_68_0();

  return sub_18F5219CC();
}

uint64_t sub_18F23BA78(uint64_t a1)
{
  sub_18F522EFC();
  sub_18F5219CC();
  OUTLINED_FUNCTION_68_0();
  sub_18F5219CC();
  return sub_18F522F4C();
}

uint64_t sub_18F23BAFC(uint64_t a1)
{
  v2 = *v1;
  sub_18F522EFC();
  sub_18F23BA2C(v4, v2);
  return sub_18F522F4C();
}

uint64_t sub_18F23BB80(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3248, &qword_18F54AFA0);
  OUTLINED_FUNCTION_0();
  v38 = v11;
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3240, &qword_18F54AF88);
  v15 = OUTLINED_FUNCTION_10(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3238, &qword_18F54AE78);
  v18 = OUTLINED_FUNCTION_12_29();
  v37 = v19;
  __swift_storeEnumTagSinglePayload(v18, v20, v21, v19);
  sub_18F520E6C();
  v22 = OUTLINED_FUNCTION_12_29();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  if (qword_1EACCED38 != -1)
  {
    OUTLINED_FUNCTION_0_48();
    swift_once();
  }

  v26 = sub_18F52165C();
  __swift_project_value_buffer(v26, qword_1EAD0ABB0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v27 = sub_18F52163C();
  v28 = sub_18F5221FC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_9_17();
    v36 = v13;
    v30 = v29;
    v40[0] = OUTLINED_FUNCTION_52_0();
    *v30 = 136315394;
    *(v30 + 4) = sub_18F11897C(a1, a2, v40);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_18F11897C(a3, a4, v40);
    _os_log_impl(&dword_18F0E9000, v27, v28, "XPC: Starting observation status stream for: %s/%s", v30, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32();
    v13 = v36;
    OUTLINED_FUNCTION_32();
  }

  v31 = (v5 + OBJC_IVAR____TtCOV10AppIntents20AppNotificationEvent18AppManagerObserver23ObservationStatusStream_topic);
  *v31 = a1;
  v31[1] = a2;
  v31[2] = a3;
  v31[3] = a4;
  MEMORY[0x1EEE9AC00](v32);
  *(&v35 - 10) = v5;
  *(&v35 - 9) = a1;
  *(&v35 - 8) = a2;
  *(&v35 - 7) = a3;
  *(&v35 - 6) = a4;
  *(&v35 - 5) = a1;
  *(&v35 - 4) = a2;
  *(&v35 - 3) = a3;
  *(&v35 - 2) = a4;
  (*(v38 + 104))(v13, *MEMORY[0x1E69E8650], v39);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F521F3C();

  __swift_storeEnumTagSinglePayload(v17, 0, 1, v37);
  v33 = OBJC_IVAR____TtCOV10AppIntents20AppNotificationEvent18AppManagerObserver23ObservationStatusStream_wrappedStream;
  swift_beginAccess();
  sub_18F0FF690(v17, v5 + v33, &qword_1EACD3240, &qword_18F54AF88);
  swift_endAccess();
  return v5;
}

uint64_t sub_18F23BF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34 = a7;
  v35 = a8;
  v31 = a3;
  v32 = a9;
  v33 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3250, &qword_18F54AFA8);
  v30 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418, &qword_18F54AFB0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v30 - v19;
  v21 = sub_18F521EFC();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  (*(v15 + 16))(v17, a1, v14);
  v22 = (*(v15 + 80) + 104) & ~*(v15 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v30;
  v25 = v31;
  *(v23 + 4) = a2;
  *(v23 + 5) = v25;
  v27 = v33;
  v26 = v34;
  *(v23 + 6) = a4;
  *(v23 + 7) = v27;
  *(v23 + 8) = a6;
  *(v23 + 9) = v26;
  v28 = v32;
  *(v23 + 10) = v35;
  *(v23 + 11) = v28;
  *(v23 + 12) = a10;
  (*(v15 + 32))(&v23[v22], v17, v24);

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F2C309C(0, 0, v20, &unk_18F54AFC0, v23);
}

uint64_t sub_18F23C13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v17;
  *(v8 + 80) = v15;
  *(v8 + 96) = v16;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3250, &qword_18F54AFA8);
  *(v8 + 120) = v9;
  v10 = *(v9 - 8);
  *(v8 + 128) = v10;
  *(v8 + 136) = *(v10 + 64);
  *(v8 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4700, &qword_18F54AF90);
  *(v8 + 152) = swift_task_alloc();
  v11 = sub_18F520E6C();
  *(v8 + 160) = v11;
  v12 = *(v11 - 8);
  *(v8 + 168) = v12;
  *(v8 + 176) = *(v12 + 64);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F23C2E0, 0, 0);
}

uint64_t sub_18F23C2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = v4;
  v5 = *(v4 + 160);
  v6 = *(v4 + 168);
  v7 = *(v4 + 152);
  v8 = *(v4 + 40);
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  v9 = *(v6 + 16);
  OUTLINED_FUNCTION_68_0();
  v9();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  v10 = OBJC_IVAR____TtCOV10AppIntents20AppNotificationEvent18AppManagerObserver23ObservationStatusStream_observerUUID;
  swift_beginAccess();
  sub_18F0FF690(v7, v8 + v10, &qword_1EACD4700, &qword_18F54AF90);
  swift_endAccess();
  if (qword_1EACCED38 != -1)
  {
    OUTLINED_FUNCTION_0_48();
    swift_once();
  }

  v11 = *(v4 + 192);
  v12 = *(v4 + 200);
  v13 = *(v4 + 160);
  v14 = sub_18F52165C();
  __swift_project_value_buffer(v14, qword_1EAD0ABB0);
  (v9)(v11, v12, v13);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v15 = sub_18F52163C();
  v16 = sub_18F52223C();

  v63 = v9;
  if (os_log_type_enabled(v15, v16))
  {
    v67 = *(v4 + 72);
    v64 = *(v4 + 64);
    v60 = *(v4 + 48);
    v61 = *(v4 + 56);
    v17 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v17 = 136315650;
    OUTLINED_FUNCTION_1_43();
    sub_18F240104(v18, v19, MEMORY[0x1E69695E0]);
    v20 = sub_18F522C9C();
    v22 = v21;
    v23 = OUTLINED_FUNCTION_20_3();
    v62 = v24;
    (v24)(v23);
    v25 = sub_18F11897C(v20, v22, v70);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_18F11897C(v60, v61, v70);
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_18F11897C(v64, v67, v70);
    _os_log_impl(&dword_18F0E9000, v15, v16, "XPC: Starting isObserved registration %s for %s/%s", v17, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  else
  {

    v26 = OUTLINED_FUNCTION_20_3();
    v62 = v27;
    (v27)(v26);
  }

  v28 = *(v4 + 72);
  v68 = *(v4 + 64);
  v29 = *(v4 + 56);
  v65 = *(v4 + 48);
  v30 = *(v4 + 40);
  (*(*(v4 + 128) + 16))(*(v4 + 144), *(v4 + 112), *(v4 + 120));
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = v65;
  v31[4] = v29;
  v31[5] = v68;
  v31[6] = v28;
  OUTLINED_FUNCTION_68_0();
  v32();
  v33 = qword_1EACCEA60;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_4_36(&qword_1EACCEA60);
  }

  v34 = *(v4 + 200);
  v69 = *(v4 + 96);
  v66 = *(v4 + 80);
  v35 = qword_1EAD0AB88;
  v36 = swift_task_alloc();
  *(v36 + 16) = v66;
  *(v36 + 32) = v69;
  *(v36 + 48) = v34;
  *(v36 + 56) = sub_18F23FF9C;
  *(v36 + 64) = v31;

  os_unfair_lock_lock(v35 + 6);
  sub_18F24001C();
  v37 = *(v4 + 200);
  v59 = v37;
  v38 = *(v4 + 184);
  v51 = *(v4 + 176);
  v40 = *(v4 + 160);
  v39 = *(v4 + 168);
  v57 = *(v4 + 96);
  v58 = *(v4 + 104);
  v55 = *(v4 + 80);
  v56 = *(v4 + 88);
  v53 = *(v4 + 64);
  v54 = *(v4 + 72);
  v41 = *(v4 + 56);
  v52 = *(v4 + 48);
  os_unfair_lock_unlock(v35 + 6);

  (v63)(v38, v37, v40);
  v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = (v51 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v39 + 32))(v45 + v42, v38, v40);
  v46 = (v45 + v43);
  *v46 = v52;
  v46[1] = v41;
  v47 = (v45 + v44);
  *v47 = v53;
  v47[1] = v54;
  v48 = (v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v48 = v55;
  v48[1] = v56;
  v48[2] = v57;
  v48[3] = v58;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F521F0C();
  v62(v59, v40);

  OUTLINED_FUNCTION_71();

  return v49();
}

uint64_t sub_18F23C8DC(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v37 = a3;
  v38 = a5;
  v39 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3298, &qword_18F54B018);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4700, &qword_18F54AF90);
  MEMORY[0x1EEE9AC00](v36);
  v16 = &v32 - v15;
  if (qword_1EACCED38 != -1)
  {
    swift_once();
  }

  v17 = sub_18F52165C();
  __swift_project_value_buffer(v17, qword_1EAD0ABB0);

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v18 = sub_18F52163C();
  v19 = sub_18F52223C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v11;
    v21 = v20;
    v22 = swift_slowAlloc();
    v35 = a7;
    v32 = v22;
    v40 = v22;
    *v21 = 67109890;
    *(v21 + 4) = v39 & 1;
    *(v21 + 8) = 2080;
    v33 = v14;
    v23 = v12;
    v24 = OBJC_IVAR____TtCOV10AppIntents20AppNotificationEvent18AppManagerObserver23ObservationStatusStream_observerUUID;
    swift_beginAccess();
    v25 = a2 + v24;
    v12 = v23;
    sub_18F1169CC(v25, v16, &qword_1EACD4700, &qword_18F54AF90);
    v26 = sub_18F52194C();
    v28 = sub_18F11897C(v26, v27, &v40);

    *(v21 + 10) = v28;
    v14 = v33;
    *(v21 + 18) = 2080;
    *(v21 + 20) = sub_18F11897C(v37, a4, &v40);
    *(v21 + 28) = 2080;
    *(v21 + 30) = sub_18F11897C(v38, a6, &v40);
    _os_log_impl(&dword_18F0E9000, v18, v19, "XPC: Received isObserved %{BOOL}d with registration %s for %s/%s", v21, 0x26u);
    v29 = v32;
    swift_arrayDestroy();
    MEMORY[0x193ADD350](v29, -1, -1);
    v30 = v21;
    v11 = v34;
    MEMORY[0x193ADD350](v30, -1, -1);
  }

  LOBYTE(v40) = v39 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3250, &qword_18F54AFA8);
  sub_18F521F1C();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_18F23CC4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v40 = a7;
  v38 = a3;
  v15 = sub_18F520E6C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EACCED38 != -1)
  {
    swift_once();
  }

  v19 = sub_18F52165C();
  __swift_project_value_buffer(v19, qword_1EAD0ABB0);
  v20 = *(v16 + 16);
  v39 = a2;
  v20(v18, a2, v15);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v21 = sub_18F52163C();
  v22 = sub_18F52223C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v37 = a8;
    v24 = v23;
    v36 = swift_slowAlloc();
    v41[0] = v36;
    *v24 = 136315650;
    sub_18F240104(&qword_1EACCED40, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v25 = sub_18F522C9C();
    v35 = a5;
    v27 = v26;
    (*(v16 + 8))(v18, v15);
    v28 = sub_18F11897C(v25, v27, v41);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_18F11897C(v38, a4, v41);
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_18F11897C(v35, a6, v41);
    _os_log_impl(&dword_18F0E9000, v21, v22, "XPC: Stopping isObserved registration %s for %s/%s", v24, 0x20u);
    v29 = v36;
    swift_arrayDestroy();
    MEMORY[0x193ADD350](v29, -1, -1);
    v30 = v24;
    a8 = v37;
    MEMORY[0x193ADD350](v30, -1, -1);
  }

  else
  {

    v31 = (*(v16 + 8))(v18, v15);
  }

  if (qword_1EACCEA60 != -1)
  {
    v31 = swift_once();
  }

  v32 = qword_1EAD0AB88;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v39;
  *(&v35 - 6) = v40;
  *(&v35 - 5) = a8;
  *(&v35 - 4) = a9;
  *(&v35 - 3) = a10;
  *(&v35 - 2) = v33;

  os_unfair_lock_lock(v32 + 6);
  sub_18F24014C();
  os_unfair_lock_unlock(v32 + 6);
}

uint64_t sub_18F23CFE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3240, &qword_18F54AF88);
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8 - v3;
  v5 = OBJC_IVAR____TtCOV10AppIntents20AppNotificationEvent18AppManagerObserver23ObservationStatusStream_wrappedStream;
  swift_beginAccess();
  sub_18F1169CC(v0 + v5, v4, &qword_1EACD3240, &qword_18F54AF88);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3238, &qword_18F54AE78);
  result = __swift_getEnumTagSinglePayload(v4, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_18F521F2C();
    return (*(*(v6 - 8) + 8))(v4, v6);
  }

  return result;
}

uint64_t sub_18F23D114()
{
  sub_18F0EF1A8(v0 + OBJC_IVAR____TtCOV10AppIntents20AppNotificationEvent18AppManagerObserver23ObservationStatusStream_wrappedStream, &qword_1EACD3240, &qword_18F54AF88);

  sub_18F0EF1A8(v0 + OBJC_IVAR____TtCOV10AppIntents20AppNotificationEvent18AppManagerObserver23ObservationStatusStream_observerUUID, &qword_1EACD4700, &qword_18F54AF90);
  return v0;
}

uint64_t sub_18F23D194()
{
  sub_18F23D114();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_18F23D1EC()
{
  sub_18F23CFE8();
}

void sub_18F23D22C(uint64_t a1)
{
  sub_18F23D300(319);
  if (v1 <= 0x3F)
  {
    sub_18F23D364(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_18F23D300(uint64_t a1)
{
  if (!qword_1EACCE900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD3238, &qword_18F54AE78);
    v1 = sub_18F52254C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EACCE900);
    }
  }
}

void sub_18F23D364(uint64_t a1)
{
  if (!qword_1EACCF318[0])
  {
    sub_18F520E6C();
    v1 = sub_18F52254C();
    if (!v2)
    {
      atomic_store(v1, qword_1EACCF318);
    }
  }
}

unint64_t sub_18F23D3E0()
{
  result = qword_1EACCEA88;
  if (!qword_1EACCEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCEA88);
  }

  return result;
}

uint64_t sub_18F23D434()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3290, &qword_18F54B010);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EAD0AB88 = result;
  return result;
}

uint64_t sub_18F23D480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6@<X4>)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_18F181F04(a2, a3, a4, a6), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = _s18AppManagerObserverO17OnChangedObserverVMa(0);
    sub_18F24024C(v11 + *(*(v12 - 8) + 72) * v10, a5);
    v13 = a5;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v15 = _s18AppManagerObserverO17OnChangedObserverVMa(0);
    v13 = a5;
    v14 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
}

uint64_t sub_18F23D544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3280, &qword_18F54B000);
  v7[7] = swift_task_alloc();
  v8 = sub_18F520E6C();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3288, &qword_18F54B008);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3258, &qword_18F54AFC8);
  v7[16] = swift_task_alloc();
  v7[17] = _s18AppManagerObserverO17OnChangedObserverVMa(0);
  v7[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F23D714, 0, 0);
}

uint64_t sub_18F23D714()
{
  v26 = v0;
  if (qword_1EACCEA60 != -1)
  {
    OUTLINED_FUNCTION_4_36(&qword_1EACCEA60);
  }

  v2 = v0[4];
  v1 = v0[5];
  v24 = *(v0 + 1);
  v3 = qword_1EAD0AB88;
  v4 = swift_task_alloc();
  *(v4 + 16) = v24;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;

  os_unfair_lock_lock(v3 + 6);
  sub_18F2403C0();
  os_unfair_lock_unlock(v3 + 6);
  v6 = v0[16];
  v5 = v0[17];

  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    sub_18F0EF1A8(v0[16], &qword_1EACD3258, &qword_18F54AFC8);
    if (qword_1EACCED38 != -1)
    {
      OUTLINED_FUNCTION_0_48();
      swift_once();
    }

    v7 = sub_18F52165C();
    __swift_project_value_buffer(v7, qword_1EAD0ABB0);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v8 = sub_18F52163C();
    v9 = sub_18F5221FC();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[4];
      v10 = v0[5];
      v13 = v0[2];
      v12 = v0[3];
      v14 = OUTLINED_FUNCTION_9_17();
      v25[0] = OUTLINED_FUNCTION_52_0();
      *v14 = 136315394;
      *(v14 + 4) = sub_18F11897C(v13, v12, v25);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_18F11897C(v11, v10, v25);
      _os_log_impl(&dword_18F0E9000, v8, v9, "XPC: No observers registered for changes in isObserved for %s/%s", v14, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();
    }

    OUTLINED_FUNCTION_7_27();

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_18_3();

    __asm { BRAA            X1, X16 }
  }

  sub_18F24018C(v0[16], v0[18]);
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_18F23DA58;
  OUTLINED_FUNCTION_18_3();

  return static AppNotificationEvent.observationStatus(bundleIdentifier:entityType:)(v18, v19, v20, v21);
}

uint64_t sub_18F23DA58(char a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_18F23E150;
  }

  else
  {
    v4 = sub_18F23DB70;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_18F23DB70()
{
  v66 = v0;
  v57 = *(v0 + 168);
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 144) + *(*(v0 + 136) + 24));
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(*(*(v0 + 144) + *(*(v0 + 136) + 24)) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v63 = *(v0 + 48);
  v9 = (63 - v7) >> 6;
  v59 = (v1 + 16);
  v62 = (v1 + 32);
  v49 = *(v0 + 72);
  v50 = *(*(v0 + 144) + *(*(v0 + 136) + 24));
  v58 = (v1 + 8);
  result = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v11 = 0;
  v55 = v9;
  v56 = v4;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v14 = *(v0 + 96);
      v13 = *(v0 + 104);
      v15 = *(v0 + 64);
      v16 = *(v0 + 48);
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v18 = v17 | (v12 << 6);
      (*(v49 + 16))(v14, *(v50 + 48) + *(v49 + 72) * v18, v15);
      v19 = *(v63 + 48);
      v64 = *(*(v50 + 56) + 16 * v18);
      (*(v49 + 32))(v13, v14, v15);
      *(v13 + v19) = v64;
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v16);

LABEL_10:
      v20 = *(v0 + 104);
      v21 = *(v0 + 48);
      v22 = 1;
      if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
      {
        v23 = *(v0 + 112);
        v60 = *(v63 + 48);
        v24 = *v62;
        (*v62)(*(v0 + 56), v20);
        v25 = swift_allocObject();
        *(v25 + 16) = *(v20 + v60);
        v26 = (v23 + *(v63 + 48));
        v27 = OUTLINED_FUNCTION_20_3();
        v24(v27);
        v22 = 0;
        *v26 = sub_18F24044C;
        v26[1] = v25;
        v21 = *(v0 + 48);
      }

      v29 = *(v0 + 112);
      v28 = *(v0 + 120);
      __swift_storeEnumTagSinglePayload(v29, v22, 1, v21);
      sub_18F2403DC(v29, v28);
      if (__swift_getEnumTagSinglePayload(v28, 1, v21) == 1)
      {
        break;
      }

      v61 = *(*(v0 + 120) + *(v63 + 48));
      (*v62)(*(v0 + 88));
      if (qword_1EACCED38 != -1)
      {
        OUTLINED_FUNCTION_0_48();
        swift_once();
      }

      v31 = *(v0 + 80);
      v30 = *(v0 + 88);
      v32 = *(v0 + 64);
      v33 = sub_18F52165C();
      __swift_project_value_buffer(v33, qword_1EAD0ABB0);
      (*v59)(v31, v30, v32);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v34 = sub_18F52163C();
      v35 = sub_18F5221FC();

      if (os_log_type_enabled(v34, v35))
      {
        v51 = *(v0 + 32);
        v52 = *(v0 + 40);
        log = v34;
        v37 = *(v0 + 16);
        v36 = *(v0 + 24);
        v38 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v38 = 67110146;
        *(v38 + 4) = v57;
        v53 = v35;
        *(v38 + 8) = 2080;
        *(v38 + 10) = sub_18F11897C(v37, v36, &v65);
        *(v38 + 18) = 2080;
        *(v38 + 20) = sub_18F11897C(v51, v52, &v65);
        *(v38 + 28) = 2080;
        OUTLINED_FUNCTION_1_43();
        sub_18F240104(&qword_1EACCED40, v39, MEMORY[0x1E69695E0]);
        sub_18F522C9C();
        v40 = *v58;
        v41 = OUTLINED_FUNCTION_20_3();
        v40(v41);
        v42 = OUTLINED_FUNCTION_66();
        v45 = sub_18F11897C(v42, v43, v44);

        *(v38 + 30) = v45;
        *(v38 + 38) = 1024;
        *(v38 + 40) = v57;
        _os_log_impl(&dword_18F0E9000, log, v53, "XPC: isObserved changed to %{BOOL}d for %s/%s UUID %s with status %{BOOL}d", v38, 0x2Cu);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_32();
      }

      else
      {

        v40 = *v58;
        v46 = OUTLINED_FUNCTION_20_3();
        v40(v46);
      }

      v4 = v56;
      v61(*(v0 + 168));

      v47 = OUTLINED_FUNCTION_66();
      result = (v40)(v47);
      v9 = v55;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    sub_18F2401F0(*(v0 + 144));

    OUTLINED_FUNCTION_7_27();

    OUTLINED_FUNCTION_71();

    return v48();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        __swift_storeEnumTagSinglePayload(*(v0 + 104), 1, 1, *(v0 + 48));
        v8 = 0;
        goto LABEL_10;
      }

      v8 = *(v4 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18F23E150()
{
  sub_18F2401F0(*(v0 + 144));

  OUTLINED_FUNCTION_71();

  return v1();
}

void sub_18F23E230(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = [objc_opt_self() defaultCenter];
  aBlock = qword_1EACD3220;
  v33 = off_1EACD3228;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  MEMORY[0x193ADB000](46, 0xE100000000000000);
  v11 = _s10Foundation4UUIDV10AppIntentsE22entityIdentifierStringSSvg_0();
  MEMORY[0x193ADB000](v11);

  v12 = v33;
  v30 = aBlock;
  if (qword_1EACCED38 != -1)
  {
    OUTLINED_FUNCTION_0_48();
    swift_once();
  }

  v13 = sub_18F52165C();
  __swift_project_value_buffer(v13, qword_1EAD0ABB0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v14 = sub_18F52163C();
  v15 = sub_18F5221FC();

  if (os_log_type_enabled(v14, v15))
  {
    v29 = a5;
    v16 = OUTLINED_FUNCTION_9_17();
    v28 = v10;
    v31 = OUTLINED_FUNCTION_52_0();
    aBlock = a1;
    *v16 = 136315394;
    v33 = a2;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](47, 0xE100000000000000);
    MEMORY[0x193ADB000](a3, a4);
    v17 = sub_18F11897C(aBlock, a2, &v31);
    v18 = a2;
    v19 = a4;
    v20 = a1;
    v21 = a3;
    v22 = v17;

    *(v16 + 4) = v22;
    a3 = v21;
    a1 = v20;
    a4 = v19;
    a2 = v18;
    *(v16 + 12) = 2080;
    v23 = v30;
    *(v16 + 14) = sub_18F11897C(v30, v12, &v31);
    _os_log_impl(&dword_18F0E9000, v14, v15, "XPC: Registering for %s observation status change notification: %s", v16, 0x16u);
    swift_arrayDestroy();
    v10 = v28;
    OUTLINED_FUNCTION_32();
    a5 = v29;
    OUTLINED_FUNCTION_32();
  }

  else
  {

    v23 = aBlock;
  }

  v24 = sub_18F5218AC();
  v25 = swift_allocObject();
  v25[2] = v23;
  v25[3] = v12;
  v25[4] = a1;
  v25[5] = a2;
  v25[6] = a3;
  v25[7] = a4;
  v36 = sub_18F2402DC;
  v37 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_18F23E7DC;
  v35 = &block_descriptor_3;
  v26 = _Block_copy(&aBlock);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  v27 = [v10 addObserverForName:v24 object:0 queue:0 usingBlock:v26];
  _Block_release(v26);

  a5[3] = swift_getObjectType();
  *a5 = v27;
}

uint64_t sub_18F23E598(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418, &qword_18F54AFB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - v14;
  if (qword_1EACCED38 != -1)
  {
    swift_once();
  }

  v16 = sub_18F52165C();
  __swift_project_value_buffer(v16, qword_1EAD0ABB0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v17 = sub_18F52163C();
  v18 = sub_18F5221FC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = a2;
    v22 = a4;
    v23 = a6;
    v24 = v20;
    v30 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_18F11897C(v21, a3, &v30);
    _os_log_impl(&dword_18F0E9000, v17, v18, "XPC: Received observation status change notification: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v25 = v24;
    a6 = v23;
    a4 = v22;
    MEMORY[0x193ADD350](v25, -1, -1);
    MEMORY[0x193ADD350](v19, -1, -1);
  }

  v26 = sub_18F521EFC();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = a4;
  v27[5] = a5;
  v27[6] = a6;
  v27[7] = a7;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F3A33D4(0, 0, v15, &unk_18F54AFF8, v27);
}

uint64_t sub_18F23E7DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_18F52077C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_18F52076C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_18F23E8D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v24 = qword_1EACD3220;
  v25 = off_1EACD3228;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  MEMORY[0x193ADB000](46, 0xE100000000000000);
  v10 = _s10Foundation4UUIDV10AppIntentsE22entityIdentifierStringSSvg_0();
  MEMORY[0x193ADB000](v10);

  v11 = v24;
  v12 = v25;
  if (qword_1EACCED38 != -1)
  {
    OUTLINED_FUNCTION_0_48();
    swift_once();
  }

  v13 = sub_18F52165C();
  __swift_project_value_buffer(v13, qword_1EAD0ABB0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v14 = sub_18F52163C();
  v15 = sub_18F5221FC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_9_17();
    v17 = OUTLINED_FUNCTION_52_0();
    *v16 = 136315394;
    v23 = v17;
    v24 = a1;
    v25 = a2;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](47, 0xE100000000000000);
    MEMORY[0x193ADB000](a3, a4);
    v18 = sub_18F11897C(a1, a2, &v23);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2080;
    v19 = sub_18F11897C(v11, v12, &v23);

    *(v16 + 14) = v19;
    _os_log_impl(&dword_18F0E9000, v14, v15, "XPC: Unregistering for %s observation status change notification: %s", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  else
  {
  }

  v20 = [objc_opt_self() defaultCenter];
  __swift_project_boxed_opaque_existential_1Tm(a6, a6[3]);
  [v20 removeObserver_];

  return swift_unknownObjectRelease();
}

void sub_18F23EB64(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v59 = a6;
  v60 = a8;
  v58 = a7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3270, &qword_18F54AFE0);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v49 - v13;
  v54 = sub_18F520E6C();
  v57 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3258, &qword_18F54AFC8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v49 - v19;
  v21 = _s18AppManagerObserverO17OnChangedObserverVMa(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  v62 = a2;
  sub_18F19E538(a2, a3, a4, *a1, v20, a5);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    v50 = v18;
    v55 = a4;
    sub_18F0EF1A8(v20, &qword_1EACD3258, &qword_18F54AFC8);
    if (qword_1ED6FF6D8 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(off_1ED6FF6C8 + 5, *(off_1ED6FF6C8 + 8));
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v24 = v55;
    v25 = v56;
    v26 = v62;
    v27 = v64;
    sub_18F2A93D0(v62, a3, v55, a5, v56);
    if (v27)
    {
      if (qword_1EACCED38 != -1)
      {
        swift_once();
      }

      v28 = sub_18F52165C();
      __swift_project_value_buffer(v28, qword_1EAD0ABB0);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v29 = a5;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v30 = sub_18F52163C();
      v31 = sub_18F5221FC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v63[0] = v33;
        *v32 = 136315394;
        *(v32 + 4) = sub_18F11897C(v62, a3, v63);
        *(v32 + 12) = 2080;
        *(v32 + 14) = sub_18F11897C(v55, v29, v63);
        _os_log_impl(&dword_18F0E9000, v30, v31, "XPC: Failed to register for observation status changes for %s/%s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ADD350](v33, -1, -1);
        MEMORY[0x193ADD350](v32, -1, -1);
      }
    }

    else
    {
      sub_18F23E230(v26, a3, v24, a5, v63);
      v36 = v50;
      sub_18F0FECD4(v63, v50);
      v37 = *(v21 + 20);
      v64 = 0;
      v38 = *(v57 + 16);
      v39 = v54;
      v38(v36 + v37, v25, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3278, &qword_18F54AFE8);
      v40 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v41 = swift_allocObject();
      v51 = v41;
      *(v41 + 16) = xmmword_18F53F800;
      v42 = v41 + v40;
      v43 = v52;
      v38(v52, v59, v39);
      (*(v57 + 32))(v42, v43, v39);
      v44 = (v42 + *(v53 + 48));
      v45 = swift_allocObject();
      v46 = v60;
      *(v45 + 16) = v58;
      *(v45 + 24) = v46;
      *v44 = sub_18F2402B0;
      v44[1] = v45;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3268, &qword_18F54AFD8);
      sub_18F240104(&qword_1ED6FF180, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v47 = sub_18F5216CC();
      v48 = v50;
      *&v50[*(v21 + 24)] = v47;
      __swift_storeEnumTagSinglePayload(v48, 0, 1, v21);
      sub_18F421254();
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      (*(v57 + 8))(v25, v39);
    }
  }

  else
  {
    sub_18F24018C(v20, v23);
    v34 = swift_allocObject();
    *(v34 + 16) = v58;
    *(v34 + 24) = v60;
    v35 = *(v21 + 24);

    swift_isUniquelyReferenced_nonNull_native();
    v63[0] = *&v23[v35];
    sub_18F2C0014();
    *&v23[v35] = v63[0];
    sub_18F24024C(v23, v18);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v21);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F421254();
    sub_18F2401F0(v23);
  }
}

void sub_18F23F2A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_18F520E6C();
  v14 = *(v13 - 8);
  v80 = v13;
  v81 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v78 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3258, &qword_18F54AFC8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v76[0] = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v76 - v19;
  v21 = _s18AppManagerObserverO17OnChangedObserverVMa(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76[1] = a1;
  v77 = a4;
  v24 = *a1;
  v79 = a2;
  v25 = a2;
  v27 = v26;
  v83 = a3;
  v28 = a4;
  v29 = a5;
  sub_18F19E538(v25, a3, v28, v24, v20, a5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v27);
  v82 = v6;
  if (EnumTagSinglePayload == 1)
  {
    sub_18F0EF1A8(v20, &qword_1EACD3258, &qword_18F54AFC8);
LABEL_9:
    v42 = v80;
    v41 = v81;
    v43 = v78;
    if (qword_1EACCED38 != -1)
    {
      swift_once();
    }

    v44 = sub_18F52165C();
    __swift_project_value_buffer(v44, qword_1EAD0ABB0);
    (*(v41 + 16))(v43, a6, v42);
    v45 = v83;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v46 = v29;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v47 = v45;
    v48 = sub_18F52163C();
    v49 = sub_18F52221C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v43;
      v51 = v42;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v84[0] = v53;
      *v52 = 136315650;
      *(v52 + 4) = sub_18F11897C(v79, v47, v84);
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_18F11897C(v77, v46, v84);
      *(v52 + 22) = 2080;
      sub_18F240104(&qword_1EACCED40, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v54 = sub_18F522C9C();
      v56 = v55;
      (*(v41 + 8))(v50, v51);
      v57 = sub_18F11897C(v54, v56, v84);

      *(v52 + 24) = v57;
      _os_log_impl(&dword_18F0E9000, v48, v49, "XPC: No observers while attempting to remove observer for %s/%s with registrationUUID %s", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x193ADD350](v53, -1, -1);
      MEMORY[0x193ADD350](v52, -1, -1);
    }

    else
    {

      (*(v41 + 8))(v43, v42);
    }

    return;
  }

  sub_18F24018C(v20, v23);
  v31 = *(v27 + 24);
  v32 = *(v23 + v31);
  v33 = sub_18F19E5D4(a6, v32);
  if (!v33)
  {
    sub_18F2401F0(v23);
    goto LABEL_9;
  }

  sub_18F0F689C(v33, v34);
  sub_18F181A54();
  v36 = v79;
  v37 = v81;
  if (v38)
  {
    v39 = v35;
    swift_isUniquelyReferenced_nonNull_native();
    v84[0] = *(v23 + v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3260, &qword_18F54AFD0);
    sub_18F5229DC();
    v32 = v84[0];
    (*(v37 + 8))(*(v84[0] + 48) + *(v37 + 72) * v39, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3268, &qword_18F54AFD8);
    sub_18F240104(&qword_1ED6FF180, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v36 = v79;
    sub_18F5229FC();

    *(v23 + v31) = v32;
  }

  if (*(v32 + 16))
  {
    v40 = v76[0];
    sub_18F24024C(v23, v76[0]);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v27);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F421254();
    sub_18F2401F0(v23);
  }

  else
  {
    v58 = v82;
    v59 = v29;
    if (qword_1ED6FF6D8 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(off_1ED6FF6C8 + 5, *(off_1ED6FF6C8 + 8));
    v60 = *(v27 + 20);
    v61 = v36;
    v62 = v36;
    v63 = v83;
    v64 = v77;
    v65 = v58;
    sub_18F2A9018(v61, v83, v77, v59, v23 + v60);
    if (v58)
    {
      v82 = v27;
      if (qword_1EACCED38 != -1)
      {
        swift_once();
      }

      v66 = sub_18F52165C();
      __swift_project_value_buffer(v66, qword_1EAD0ABB0);
      v67 = v83;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v68 = v67;
      v69 = sub_18F52163C();
      v70 = sub_18F5221FC();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v85 = v81;
        *v71 = 136315650;
        *(v71 + 4) = sub_18F11897C(v62, v68, &v85);
        *(v71 + 12) = 2080;
        *(v71 + 14) = sub_18F11897C(v64, v59, &v85);
        *(v71 + 22) = 2080;
        swift_beginAccess();
        sub_18F240104(&qword_1EACCED40, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v72 = sub_18F522C9C();
        v74 = sub_18F11897C(v72, v73, &v85);

        *(v71 + 24) = v74;
        _os_log_impl(&dword_18F0E9000, v69, v70, "XPC: Failed to unregister for observation status changes for %s/%s with registrationUUID %s", v71, 0x20u);
        v75 = v81;
        swift_arrayDestroy();
        MEMORY[0x193ADD350](v75, -1, -1);
        MEMORY[0x193ADD350](v71, -1, -1);
      }

      sub_18F2401F0(v23);
    }

    else
    {
      sub_18F23E8D0(v62, v63, v64, v59, v23 + v60, v23);
      __swift_storeEnumTagSinglePayload(v76[0], 1, 1, v27);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F421254();
      sub_18F2401F0(v23);
    }
  }
}

uint64_t sub_18F23FB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_18F23FB84, 0, 0);
}

uint64_t sub_18F23FB84()
{
  v1 = 0;
  v2 = *(v0 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v3 = *(v2 + 16);
  v4 = v2 + 40;
LABEL_2:
  v5 = v4 + 48 * v1;
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    ++v1;
    v5 += 48;
    if (sub_18F3A36F8())
    {
      MEMORY[0x193ADB260]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18F521D0C();
      }

      OUTLINED_FUNCTION_66();
      sub_18F521D6C();
      v1 = v6;
      goto LABEL_2;
    }
  }

  if (qword_1ED6FF6D8 == -1)
  {
    goto LABEL_11;
  }

LABEL_16:
  swift_once();
LABEL_11:
  v7 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1Tm(off_1ED6FF6C8 + 5, *(off_1ED6FF6C8 + 8));
  v8 = OUTLINED_FUNCTION_66();
  sub_18F2A84F0(v8, v9, v7);

  OUTLINED_FUNCTION_71();

  return v10();
}

uint64_t sub_18F23FD6C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3250, &qword_18F54AFA8);
  OUTLINED_FUNCTION_10(v2);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18F23FEAC;
  OUTLINED_FUNCTION_11_23();

  return sub_18F23C13C(v6, v7, v8, v9, v10, v11, v3, v4);
}

uint64_t sub_18F23FEAC()
{

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F23FF9C(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3250, &qword_18F54AFA8);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_16_22();
  v9 = *(v1 + 48);

  return sub_18F23C8DC(a1, v4, v5, v6, v7, v9, v1 + v8);
}

uint64_t sub_18F240040(uint64_t a1)
{
  v3 = *(sub_18F520E6C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_18F23CC4C(a1, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 24));
}

uint64_t sub_18F240104(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18F24018C(uint64_t a1, uint64_t a2)
{
  v4 = _s18AppManagerObserverO17OnChangedObserverVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F2401F0(uint64_t a1)
{
  v2 = _s18AppManagerObserverO17OnChangedObserverVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F24024C(uint64_t a1, uint64_t a2)
{
  v4 = _s18AppManagerObserverO17OnChangedObserverVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F2402F8()
{
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F23FEAC;
  OUTLINED_FUNCTION_11_23();

  return sub_18F23D544(v4, v5, v6, v7, v8, v9, v2);
}

uint64_t sub_18F2403DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3288, &qword_18F54B008);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F24044C(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_18F2404AC(uint64_t a1)
{
  sub_18F520E6C();
  if (v1 <= 0x3F)
  {
    sub_18F240544(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18F240544(uint64_t a1)
{
  if (!qword_1EACCE910)
  {
    sub_18F520E6C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD3268, &qword_18F54AFD8);
    sub_18F240104(&qword_1ED6FF180, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_18F52172C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EACCE910);
    }
  }
}

void IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v62[0] = v26;
  v64 = v27;
  v68 = v29;
  v69 = v28;
  v66 = v30;
  v70 = v31;
  v33 = v32;
  v63 = v32;
  v34 = a23;
  v62[6] = a22;
  v62[5] = a21;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3();
  v65 = v37;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v39);
  v67 = v23;
  v40 = *(v23 + 80);
  v41 = *(v23 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v43, &a11);
  v62[3] = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  v62[1] = v62 - v46;
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v48 = OUTLINED_FUNCTION_2_2(v47, &a16);
  v50 = v49;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  v53 = v52 - v51;
  OUTLINED_FUNCTION_19_21();
  v54(v53, v33);
  OUTLINED_FUNCTION_25_1();
  v56(v55);
  v57 = OUTLINED_FUNCTION_22_0(&a15);
  v64(v57);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_19();
  sub_18F120FCC(v40, v58, v40, v34, v41);
  v59 = v66;
  sub_18F15F1BC(v66, v62[4]);
  v60 = v68;
  sub_18F15F1BC(v68, v65);
  sub_18F12310C(v34, v71);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();

  sub_18F0EF148(v60, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v59, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_23_1();
  v61(v70, v62[2]);
  sub_18F0EF148(v69, &qword_1EACCF7A8, &qword_18F540440);
  (*(v50 + 8))(v63, v62[7]);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v26;
  a20 = v27;
  v65 = v28;
  v73 = v29;
  v76 = v30;
  OUTLINED_FUNCTION_41_11(v31, v32, v33, &a13);
  v35 = v34;
  v71 = v34;
  v36 = a23;
  OUTLINED_FUNCTION_49_1(a22);
  v69 = a21;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v38 = OUTLINED_FUNCTION_10(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3();
  v74 = v39;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v65 - v41;
  v75 = v24;
  v43 = *(v24 + 80);
  v44 = *(v24 + 88);
  OUTLINED_FUNCTION_181();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_2_2(v46, &a11);
  v68 = v47;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_23();
  v66 = v25;
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v50 = OUTLINED_FUNCTION_2_2(v49, &a16);
  v72 = v51;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  v52 = OUTLINED_FUNCTION_83_9();
  v53(v52, v35);
  v54 = OUTLINED_FUNCTION_46_24();
  v55(v54, v78, v23);
  v56 = OUTLINED_FUNCTION_22_0(&a15);
  v73(v56);
  OUTLINED_FUNCTION_181();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_19();
  sub_18F120FCC(v43, v57, v43, v36, v44);
  v58 = OUTLINED_FUNCTION_87_11(&a13);
  sub_18F116908(v58, v42, &qword_1EACCF7A0, &unk_18F53E6F0);
  v59 = v76;
  sub_18F116908(v76, v74, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F12310C(v36, v79);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();

  sub_18F0EF148(v59, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_104_10();
  sub_18F0EF148(v60, v61, v62);
  OUTLINED_FUNCTION_23_1();
  v63(v78, v67);
  sub_18F0EF148(v77, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_23_1();
  v64(v71, v70);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v58 = v31;
  v59 = v32;
  v60 = v33;
  v35 = v34;
  v57 = a21;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v39);
  v40 = v21;
  v41 = *(v21 + 88);
  v42 = *(v40 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v44);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_31_2();
  v47 = OUTLINED_FUNCTION_2_2(v46, &a18);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_34_1();
  v48 = OUTLINED_FUNCTION_28_24();
  v49(v48, v35);
  __swift_storeEnumTagSinglePayload(v22, 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_2();
  v50 = swift_getAssociatedTypeWitness();
  sub_18F12A88C(v42, v30, v50, v42, v28, v57, v41, v26);
  sub_18F15F1BC(v58, v55);
  sub_18F15F1BC(v59, v56);
  v61[3] = v28;
  v61[4] = v26;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  v52 = *(v28 - 8);
  (*(v52 + 16))(boxed_opaque_existential_1, v30, v28);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_32_18();
  sub_18F116B3C();
  (*(v52 + 8))(v30, v28);
  sub_18F0EF148(v59, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v58, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v60, &qword_1EACCF7A8, &qword_18F540440);
  v53 = OUTLINED_FUNCTION_33_13();
  v54(v53);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_18();
  a19 = v26;
  a20 = v27;
  v63[0] = v28;
  v64 = v29;
  v68 = v31;
  v69 = v30;
  v70 = v32;
  v72 = v33;
  v35 = v34;
  v66 = v34;
  v36 = a24;
  v67 = a25;
  v63[2] = a23;
  v37 = a22;
  v63[1] = a21;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v39 = OUTLINED_FUNCTION_10(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v41);
  v71 = v25;
  v42 = *(v25 + 80);
  v43 = *(v25 + 88);
  swift_getAssociatedTypeWitness();
  v44 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v44);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v63 - v46;
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v49 = OUTLINED_FUNCTION_2_2(v48, &a17);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_34_1();
  v50 = OUTLINED_FUNCTION_28_24();
  v51(v50, v35);
  OUTLINED_FUNCTION_6_0(v47);
  v52 = OUTLINED_FUNCTION_22_0(&a13);
  v64(v52, v53, v54);
  OUTLINED_FUNCTION_104();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = v68;
  sub_18F12A88C(v42, v68, AssociatedTypeWitness, v42, v37, v67, v43, v36);
  v57 = v69;
  sub_18F15F1BC(v69, v63[3]);
  v58 = v70;
  sub_18F15F1BC(v70, v65);
  v73[3] = v37;
  v73[4] = v36;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  v60 = *(v37 - 8);
  (*(v60 + 16))(boxed_opaque_existential_1, v56, v37);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();

  (*(v60 + 8))(v56, v37);
  sub_18F0EF148(v58, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v57, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v72, &qword_1EACCF7A8, &qword_18F540440);
  v61 = OUTLINED_FUNCTION_22_4();
  v62(v61);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v75 = v26;
  v81 = v27;
  v82 = v28;
  v30 = v29;
  v72 = v29;
  v84 = v31;
  v33 = v32;
  v77 = v32;
  OUTLINED_FUNCTION_11_0();
  v80 = v34;
  v35 = a21;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_4();
  v79 = v38 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v40 = OUTLINED_FUNCTION_10(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v42);
  v83 = v21;
  v43 = *(v21 + 80);
  v44 = *(v21 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v46, &a11);
  v48 = v47;
  v73 = v47;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v71 - v50;
  v71[0] = v71 - v50;
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v53 = OUTLINED_FUNCTION_2_2(v52, &a16);
  v78 = v54;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_4();
  (*(v57 + 16))(v56 - v55, v33);
  (*(v48 + 16))(v51, v30, v21);
  v58 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = v75;
  sub_18F122E1C(v43, v75, v58, v43, v25, AssociatedConformanceWitness, v44);
  sub_18F120FCC(v43, v58, v43, AssociatedConformanceWitness, v44);
  v61 = v81;
  sub_18F15F1BC(v81, v71[1]);
  v62 = v82;
  sub_18F15F1BC(v82, v74);
  v63 = v79;
  v64 = v80;
  OUTLINED_FUNCTION_19_21();
  v65(v63, v60, v25);
  DynamicOptionsProvider = type metadata accessor for EntityQueryDynamicOptionsProvider(0, v25, v35, v66);
  v85[4] = OUTLINED_FUNCTION_5_6(DynamicOptionsProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
  sub_18F123278(v63, v25, boxed_opaque_existential_1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  (*(v64 + 8))(v60, v25);
  sub_18F0EF148(v62, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v61, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_23_1();
  v69(v72, v71[2]);
  sub_18F0EF148(v84, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_23_1();
  v70(v77, v76);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v73 = v27;
  v76 = v28;
  v74 = v29;
  v77 = v30;
  v32 = v31;
  OUTLINED_FUNCTION_11_0();
  v75 = v33;
  v34 = a21;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_77();
  OUTLINED_FUNCTION_68(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v38 = OUTLINED_FUNCTION_10(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_121_6(v40);
  v42 = *(v21 + 80);
  v41 = *(v21 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v44, &a10);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_33();
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v47 = OUTLINED_FUNCTION_2_2(v46, &a15);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21_20();
  (*(v48 + 16))(v22, v32);
  OUTLINED_FUNCTION_93();
  v50(v49);
  OUTLINED_FUNCTION_4_9();
  v51 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_93();
  sub_18F122E1C(v53, v54, v55, v42, v26, AssociatedConformanceWitness, v41);
  sub_18F120FCC(v42, v51, v42, AssociatedConformanceWitness, v41);
  sub_18F116908(v74, v78, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_110_6();
  sub_18F116908(v56, v57, v58, &unk_18F53E6F0);
  OUTLINED_FUNCTION_31_10();
  v59 = OUTLINED_FUNCTION_22();
  v60(v59);
  DynamicOptionsProvider = type metadata accessor for EntityQueryDynamicOptionsProvider(0, v26, v34, v61);
  v63 = OUTLINED_FUNCTION_5_6(DynamicOptionsProvider);
  OUTLINED_FUNCTION_96_9(v63);
  v64 = OUTLINED_FUNCTION_90_0();
  sub_18F123278(v64, v26, v65);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  (*(v75 + 8))(v73, v26);
  sub_18F0EF148(v76, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v66, v67, v68);
  OUTLINED_FUNCTION_23_1();
  v69 = OUTLINED_FUNCTION_102_10();
  v70(v69);
  sub_18F0EF148(v77, &qword_1EACCF7A8, &qword_18F540440);
  v71 = OUTLINED_FUNCTION_12_62();
  v72(v71);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:size:inputConnectionBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v51 = v27;
  v52 = v28;
  v30 = v29;
  v49 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  v50 = v33;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_44_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v36, &a18);
  v38 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_31_2();
  v48 = v40;
  OUTLINED_FUNCTION_11_0();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_34_1();
  v44 = OUTLINED_FUNCTION_28_24();
  v45(v44, v30);
  OUTLINED_FUNCTION_25_1();
  v46();
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_44_7();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_19();
  sub_18F120FCC(v22, v47, v22, v26, v21);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_6_0(v20);
  OUTLINED_FUNCTION_6_0(v50);
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_32_18();
  sub_18F116B3C();
  (*(v38 + 8))(v52);
  sub_18F0EF148(v51, &qword_1EACCF7A8, &qword_18F540440);
  (*(v42 + 8))(v49, v48);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v48 = v25;
  OUTLINED_FUNCTION_41_11(v26, v27, v28, &a17);
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  v49 = v33;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_44_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v36, &a16);
  v38 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  v40 = OUTLINED_FUNCTION_20_4();
  v41 = OUTLINED_FUNCTION_2_2(v40, &a18);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_34_1();

  v42 = OUTLINED_FUNCTION_28_24();
  v43(v42, v30, v40);
  OUTLINED_FUNCTION_25_1();
  v44();
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_44_7();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_19();
  sub_18F120FCC(v22, v45, v22, v48, v21);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_6_0(v20);
  OUTLINED_FUNCTION_6_0(v49);
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_32_18();
  sub_18F116B3C();
  (*(v38 + 8))();
  sub_18F0EF148(v50, &qword_1EACCF7A8, &qword_18F540440);
  v46 = OUTLINED_FUNCTION_33_13();
  v47(v46);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v52 = v26;
  v53 = v27;
  v50 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v30 = OUTLINED_FUNCTION_10(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3();
  v51 = v31;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_44_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v34, &a18);
  v36 = v35;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_23();
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v49 = v38;
  OUTLINED_FUNCTION_11_0();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_34_1();
  v42 = OUTLINED_FUNCTION_79_9();
  v43(v42);
  OUTLINED_FUNCTION_46_24();
  OUTLINED_FUNCTION_25_1();
  v44();
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_44_7();
  swift_getAssociatedTypeWitness();
  v45 = OUTLINED_FUNCTION_24_49();
  sub_18F120FCC(v45, v46, v47, v25, v21);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_6_0(v20);
  OUTLINED_FUNCTION_5_74(v51);
  OUTLINED_FUNCTION_123_7(v48);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_70_14();
  sub_18F116B3C();
  (*(v36 + 8))(v53);
  sub_18F0EF148(v52, &qword_1EACCF7A8, &qword_18F540440);
  (*(v40 + 8))(v50, v49);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v50 = v24;
  OUTLINED_FUNCTION_41_11(v25, v26, v27, &a17);
  v49 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v30 = OUTLINED_FUNCTION_10(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3();
  v51 = v31;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_44_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v34, &a16);
  v36 = v35;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_23();
  v38 = sub_18F520B3C();
  v39 = OUTLINED_FUNCTION_2_2(v38, &a18);
  v41 = v40;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_34_1();

  v42 = OUTLINED_FUNCTION_79_9();
  v43(v42);
  OUTLINED_FUNCTION_46_24();
  OUTLINED_FUNCTION_25_1();
  v44();
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_44_7();
  swift_getAssociatedTypeWitness();
  v45 = OUTLINED_FUNCTION_24_49();
  sub_18F120FCC(v45, v46, v47, v50, v21);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_6_0(v20);
  OUTLINED_FUNCTION_5_74(v51);
  OUTLINED_FUNCTION_123_7(v48);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_70_14();
  sub_18F116B3C();
  (*(v36 + 8))();
  sub_18F0EF148(v52, &qword_1EACCF7A8, &qword_18F540440);
  (*(v41 + 8))(v49);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:size:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v52 = v24;
  v50 = v25;
  v55 = v26;
  v56 = v27;
  v29 = v28;
  v51 = v28;
  v49[2] = a21;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v31 = OUTLINED_FUNCTION_10(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3();
  v54 = v32;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21_1();
  v53 = v34;
  OUTLINED_FUNCTION_46_9();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v36, &a14);
  v38 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  v49[0] = v49 - v40;
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v42 = OUTLINED_FUNCTION_2_2(v41, &a17);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_19_21();
  v43(v21, v29);
  OUTLINED_FUNCTION_25_1();
  v44();
  OUTLINED_FUNCTION_22_0(&a15);
  v50();
  OUTLINED_FUNCTION_46_9();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_19();
  OUTLINED_FUNCTION_39_11(v45, v46);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_6_0(v53);
  OUTLINED_FUNCTION_6_0(v54);
  OUTLINED_FUNCTION_38_10();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();

  (*(v38 + 8))(v56, v49[1]);
  sub_18F0EF148(v55, &qword_1EACCF7A8, &qword_18F540440);
  v47 = OUTLINED_FUNCTION_22_4();
  v48(v47);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v55 = v24;
  v54 = v25;
  v57 = v26;
  OUTLINED_FUNCTION_41_11(v27, v28, v29, &a13);
  v31 = v30;
  v52 = v30;
  v53 = a21;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v33 = OUTLINED_FUNCTION_10(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3();
  v58 = v34;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21_1();
  v56 = v36;
  OUTLINED_FUNCTION_46_9();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v38, &a12);
  v40 = v39;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  v51[0] = v51 - v42;
  v43 = sub_18F520B3C();
  v44 = OUTLINED_FUNCTION_2_2(v43, &a14);
  v46 = v45;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_10();

  OUTLINED_FUNCTION_19_21();
  v47(v21, v31, v43);
  OUTLINED_FUNCTION_25_1();
  v48();
  OUTLINED_FUNCTION_22_0(&a16);
  v57();
  OUTLINED_FUNCTION_46_9();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_19();
  OUTLINED_FUNCTION_39_11(v49, v50);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_6_0(v56);
  OUTLINED_FUNCTION_6_0(v58);
  OUTLINED_FUNCTION_38_10();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_12_30();
  sub_18F116B3C();

  (*(v40 + 8))(v60, v51[1]);
  sub_18F0EF148(v59, &qword_1EACCF7A8, &qword_18F540440);
  (*(v46 + 8))(v52, v51[3]);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:size:inputConnectionBehavior:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v62 = v26;
  v28 = v27;
  v60 = v27;
  v66 = v29;
  v64 = v30;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4();
  v65 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v37);
  v38 = *(v20 + 80);
  OUTLINED_FUNCTION_47_4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v40, &a13);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_34_1();
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v63 = v42;
  OUTLINED_FUNCTION_11_0();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_10();
  v46 = OUTLINED_FUNCTION_43_10();
  v47(v46);
  v48 = OUTLINED_FUNCTION_28_24();
  v49(v48, v28, v40);
  OUTLINED_FUNCTION_47_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_49_7();
  OUTLINED_FUNCTION_27_20(v38);
  OUTLINED_FUNCTION_34_12();
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_6_0(v59);
  OUTLINED_FUNCTION_6_0(v61);
  OUTLINED_FUNCTION_19_21();
  v50(v65, v62, v25);
  v51 = OUTLINED_FUNCTION_104();
  DynamicOptionsProvider = type metadata accessor for EntityQueryDynamicOptionsProvider(v51, v52, v21, v53);
  v67[4] = OUTLINED_FUNCTION_5_6(DynamicOptionsProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  OUTLINED_FUNCTION_48_4(boxed_opaque_existential_1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_12_30();
  sub_18F116B3C();
  v56 = OUTLINED_FUNCTION_35_11();
  v57(v56);
  OUTLINED_FUNCTION_23_1();
  v58(v60);
  sub_18F0EF148(v66, &qword_1EACCF7A8, &qword_18F540440);
  (*(v44 + 8))(v64, v63);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  v64[6] = v23;
  v25 = v24;
  v65 = v26;
  OUTLINED_FUNCTION_41_11(v27, v28, v29, &a10);
  v64[9] = v30;
  OUTLINED_FUNCTION_11_0();
  v67 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4();
  v66 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v38);
  v68 = v20;
  v39 = *(v20 + 80);
  OUTLINED_FUNCTION_47_4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v41, &a12);
  v43 = v42;
  v64[4] = v42;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v64 - v45;
  v64[2] = v64 - v45;
  v47 = sub_18F520B3C();
  v48 = OUTLINED_FUNCTION_2_2(v47, &a17);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_10();

  v49 = OUTLINED_FUNCTION_43_10();
  v50(v49);
  (*(v43 + 16))(v46, v70, v41);
  OUTLINED_FUNCTION_47_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_49_7();
  v51 = v65;
  OUTLINED_FUNCTION_27_20(v39);
  OUTLINED_FUNCTION_34_12();
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_6_0(v64[5]);
  OUTLINED_FUNCTION_6_0(v64[7]);
  v52 = v66;
  OUTLINED_FUNCTION_19_21();
  v53(v52, v51, v25);
  v54 = OUTLINED_FUNCTION_104();
  DynamicOptionsProvider = type metadata accessor for EntityQueryDynamicOptionsProvider(v54, v55, v47, v56);
  v71[4] = OUTLINED_FUNCTION_5_6(DynamicOptionsProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
  OUTLINED_FUNCTION_48_4(boxed_opaque_existential_1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_12_30();
  sub_18F116B3C();
  v59 = OUTLINED_FUNCTION_35_11();
  v60(v59);
  OUTLINED_FUNCTION_23_1();
  v61(v70, v64[3]);
  sub_18F0EF148(v69, &qword_1EACCF7A8, &qword_18F540440);
  v62 = OUTLINED_FUNCTION_22_4();
  v63(v62);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v68 = v27;
  v71 = v28;
  v30 = v29;
  v70 = v29;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4_77();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v33 = OUTLINED_FUNCTION_10(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v35);
  v36 = *(v20 + 88);
  OUTLINED_FUNCTION_47_4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_2_2(v38, &a13);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_34_1();
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v69 = v40;
  OUTLINED_FUNCTION_11_0();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_45_0();
  v44(v22, v30);
  v45 = OUTLINED_FUNCTION_79_9();
  v46(v45);
  OUTLINED_FUNCTION_47_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_87_11(&a16);
  OUTLINED_FUNCTION_142();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_98_10(v48, v49, v50);
  OUTLINED_FUNCTION_241();
  sub_18F120FCC(v51, v52, v53, AssociatedConformanceWitness, v36);
  type metadata accessor for IntentDialog(0);
  v54 = OUTLINED_FUNCTION_89_8(&a12);
  OUTLINED_FUNCTION_6_0(v54);
  v55 = OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_6_0(v55);
  OUTLINED_FUNCTION_19_21();
  v56 = OUTLINED_FUNCTION_22();
  v57(v56);
  v58 = OUTLINED_FUNCTION_104();
  DynamicOptionsProvider = type metadata accessor for EntityQueryDynamicOptionsProvider(v58, v59, v21, v60);
  v62 = OUTLINED_FUNCTION_5_6(DynamicOptionsProvider);
  OUTLINED_FUNCTION_96_9(v62);
  v63 = OUTLINED_FUNCTION_90_0();
  sub_18F123278(v63, v26, v64);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  OUTLINED_FUNCTION_82_8();
  v65 = OUTLINED_FUNCTION_19_3();
  v66(v65);
  OUTLINED_FUNCTION_23_1();
  v67(v68);
  sub_18F0EF148(v71, &qword_1EACCF7A8, &qword_18F540440);
  (*(v42 + 8))(v70, v69);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v81[6] = v25;
  v27 = v26;
  v81[10] = v28;
  OUTLINED_FUNCTION_41_11(v29, v30, v31, &a10);
  v33 = v32;
  v81[9] = v32;
  OUTLINED_FUNCTION_11_0();
  v81[12] = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_77();
  v81[11] = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v38 = OUTLINED_FUNCTION_10(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  v40 = MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_14_52(v40, v41, v42, v43, v44, v45, v46, v47, v81[0]);
  v82 = v21;
  v48 = *(v21 + 88);
  OUTLINED_FUNCTION_47_4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_2_2(v50, &a12);
  v52 = v51;
  v81[4] = v51;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v53);
  v55 = v81 - v54;
  v81[2] = v81 - v54;
  v56 = sub_18F520B3C();
  v57 = OUTLINED_FUNCTION_2_2(v56, &a17);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_10();

  OUTLINED_FUNCTION_45_0();
  v58(v22, v33, v56);
  (*(v52 + 16))(v55, v84, v20);
  OUTLINED_FUNCTION_47_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_87_11(&a15);
  OUTLINED_FUNCTION_142();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_98_10(v60, v61, v62);
  OUTLINED_FUNCTION_241();
  sub_18F120FCC(v63, v64, v65, AssociatedConformanceWitness, v48);
  type metadata accessor for IntentDialog(0);
  v66 = OUTLINED_FUNCTION_89_8(&a14);
  OUTLINED_FUNCTION_6_0(v66);
  OUTLINED_FUNCTION_6_0(v81[7]);
  OUTLINED_FUNCTION_19_21();
  v67 = OUTLINED_FUNCTION_22();
  v68(v67);
  v69 = OUTLINED_FUNCTION_104();
  DynamicOptionsProvider = type metadata accessor for EntityQueryDynamicOptionsProvider(v69, v70, v56, v71);
  v73 = OUTLINED_FUNCTION_5_6(DynamicOptionsProvider);
  OUTLINED_FUNCTION_96_9(v73);
  v74 = OUTLINED_FUNCTION_90_0();
  sub_18F123278(v74, v27, v75);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  OUTLINED_FUNCTION_82_8();
  v76 = OUTLINED_FUNCTION_19_3();
  v77(v76);
  OUTLINED_FUNCTION_23_1();
  v78(v84, v81[3]);
  sub_18F0EF148(v83, &qword_1EACCF7A8, &qword_18F540440);
  v79 = OUTLINED_FUNCTION_22_4();
  v80(v79);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

uint64_t OUTLINED_FUNCTION_49_7()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18F242910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[11] = (*(a5 + 16))(a3, a5);
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;
  v16[9] = a5;
  v16[2] = a2;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = swift_getKeyPath();
  type metadata accessor for _AppIntentConstraint(255, a3, *(a5 + 8), v9);
  v10 = sub_18F521DBC();
  v11 = sub_18F0F21A8(0, &qword_1EACD32F8, 0x1E69AC658);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_18F10C138(sub_18F243DE8, v16, v10, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

  return v14;
}

id sub_18F242A58(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  type metadata accessor for _AppIntentConstraint.Behavior(0, *(a1 + 16), *(a1 + 24), v11);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  (*(v15 + 16))(&v26 - v13, v2 + *(a1 + 40));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD3300, &qword_18F564CA0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    v17 = 0;
    v18 = 9999;
  }

  else
  {
    v19 = (*(v6 + 32))(v10, v14, v4);
    v17 = sub_18F117248(v19);
    (*(v6 + 8))(v10, v4);
    v20 = v17;
    v18 = 1;
  }

  sub_18F0F21A8(0, &qword_1EACD32F8, 0x1E69AC658);
  v22 = *v2;
  v21 = *(v2 + 8);
  v23 = v21;
  v24 = sub_18F242C88(v22, v21, v18, v17);

  return v24;
}

id sub_18F242C44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for _AppIntentConstraint(0, *(a1 + a2 - 24), *(*(a1 + a2 - 8) + 8), a4);
  result = sub_18F242A58(v5);
  *a3 = result;
  return result;
}

id sub_18F242C88(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequirement:a1 condition:a2 behavior:a3 message:a4];

  return v7;
}

id sub_18F242D00(uint64_t a1, uint64_t a2)
{
  v70 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();
  v57 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v55 - v9;
  v62 = type metadata accessor for TypeDisplayRepresentation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3();
  v61 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v55 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  sub_18F5227CC();
  v73 = a1;
  v74 = a2;
  sub_18F0F21A8(0, &qword_1ED6FE040, 0x1E69AC828);
  swift_getAssociatedConformanceWitness();
  v69 = sub_18F521B3C();
  (*(v16 + 8))(v19, AssociatedTypeWitness);
  type metadata accessor for AppManager();
  sub_18F3E6F18(v78);
  v20 = v79;
  v81 = v78[0];
  v21 = v79;
  sub_18F0EF1A8(&v81, &qword_1EACD4470, &unk_18F53FB60);
  v80 = v78[1];
  sub_18F0EF1A8(&v80, &qword_1EACD4470, &unk_18F53FB60);

  if (v20)
  {
    v76 = v21;
    sub_18F111FC4(&v76, a1, a2, sub_18F39D174, &v77);
    v67 = v77;
  }

  else
  {
    v67 = sub_18F5216CC();
  }

  v22 = *(a2 + 8);
  v66 = static AppValue._identifier.getter(a1, v22);
  v65 = v23;
  v64 = sub_18F39D174(a1);
  v63 = v24;
  v68 = v21;
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD32A0, &unk_18F542F40);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_18F53F800;
    *(v25 + 56) = sub_18F0F21A8(0, &unk_1ED6FE300, 0x1E69AC7B0);
    *(v25 + 32) = v21;
    sub_18F0F21A8(0, &qword_1ED6FE310, 0x1E695DFB8);
    v26 = v21;
    v27 = v25;
  }

  else
  {
    sub_18F0F21A8(0, &qword_1ED6FE310, 0x1E695DFB8);
    v27 = MEMORY[0x1E69E7CC0];
  }

  v58 = MEMORY[0x193ADB7A0](v27);
  v28 = *(v22 + 16);
  v29 = *(v28 + 8);
  v30 = v59;
  v29(a1, v28);
  v31 = v5 + 16;
  v32 = *(v5 + 16);
  v33 = v60;
  v34 = v5;
  v35 = v70;
  v72 = v31;
  v71 = v32;
  v32(v60, v30, v70);
  v36 = sub_18F115498(v30, type metadata accessor for TypeDisplayRepresentation);
  v59 = sub_18F117248(v36);
  v56 = v34;
  v37 = *(v34 + 8);
  v37(v33, v35);
  v38 = v61;
  v29(a1, v28);
  v39 = *(v38 + *(v62 + 24));
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F115498(v38, type metadata accessor for TypeDisplayRepresentation);
  v40 = *(v39 + 16);
  if (v40)
  {
    v77 = MEMORY[0x1E69E7CC0];
    sub_18F5228CC();
    v41 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v62 = v39;
    v42 = v39 + v41;
    v43 = *(v56 + 72);
    v44 = v70;
    v45 = v57;
    while (1)
    {
      v71(v45, v42, v44);
      sub_18F520AAC();
      sub_18F0F21A8(0, &qword_1ED6FEEC0, 0x1E696B100);
      if (!swift_dynamicCast())
      {
        break;
      }

      v46 = v75;
      [objc_allocWithZone(MEMORY[0x1E69AC9E8]) initWithLocalizedStringResource_];

      v37(v45, v44);
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v42 += v43;
      if (!--v40)
      {

        v47 = v77;
        goto LABEL_13;
      }
    }

    result = sub_18F522A3C();
    __break(1u);
  }

  else
  {

    v47 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v48 = v68;
    v49 = objc_allocWithZone(MEMORY[0x1E69ACA68]);
    v50 = sub_18F243A1C(v59, 0, v47);
    v51 = [objc_allocWithZone(MEMORY[0x1E69ACAA8]) initWithIsDiscoverable:1 assistantOnly:0];
    v52 = objc_allocWithZone(MEMORY[0x1E69AC838]);
    v53 = sub_18F243B28(v66, v65, v64, v63, v67, v58, v50, v69, 0, 0, 0, 0, 0, 0, 0, v51, 0);

    return v53;
  }

  return result;
}