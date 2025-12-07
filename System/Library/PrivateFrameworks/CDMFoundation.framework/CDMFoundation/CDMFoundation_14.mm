void sub_1DC3D5514()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_228_0();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_271(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v56 = v6;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v57 = v8;
  OUTLINED_FUNCTION_12();
  v9 = sub_1DC51620C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  v14 = OUTLINED_FUNCTION_10(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v55 = v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_42_3();
  v17 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_121_1(v17, v18);
  v54 = *(v11 + 104);
  v54(v1, *MEMORY[0x1E69D07E8], v9);
  OUTLINED_FUNCTION_263();
  sub_1DC51627C();
  v19 = *(v11 + 8);
  v20 = OUTLINED_FUNCTION_176();
  v19(v20);
  if (v59)
  {
    v21 = sub_1DC51190C();
    v22 = swift_dynamicCast() ^ 1;
    v23 = v0;
    v24 = 1;
    v25 = v21;
  }

  else
  {
    sub_1DC28EB30(v58, &qword_1ECC7D3F0, &qword_1DC5238B0);
    sub_1DC51190C();
    OUTLINED_FUNCTION_19();
  }

  __swift_storeEnumTagSinglePayload(v23, v22, v24, v25);
  v26 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_121_1(v26, v27);
  v54(v1, *MEMORY[0x1E69D07D0], v9);
  OUTLINED_FUNCTION_263();
  sub_1DC51627C();
  v28 = OUTLINED_FUNCTION_176();
  v19(v28);
  if (v59)
  {
    v29 = sub_1DC5167EC();
    v30 = v57;
    v31 = swift_dynamicCast() ^ 1;
    v32 = v57;
    v33 = 1;
    v34 = v29;
  }

  else
  {
    sub_1DC28EB30(v58, &qword_1ECC7D3F0, &qword_1DC5238B0);
    sub_1DC5167EC();
    v30 = v57;
    OUTLINED_FUNCTION_19();
  }

  __swift_storeEnumTagSinglePayload(v32, v31, v33, v34);
  sub_1DC28D414();
  OUTLINED_FUNCTION_18_13();
  v35();
  sub_1DC28F414(v0, v55, &unk_1ECC7D3A0, &unk_1DC522560);
  v36 = OUTLINED_FUNCTION_258();
  sub_1DC28F414(v36, v37, v38, v39);
  v40 = sub_1DC516F6C();
  v41 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_25_0(v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 67109376;
    sub_1DC51190C();
    v43 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_39(v43, v44, v45);
    if (v46)
    {
      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

    sub_1DC28EB30(v55, &unk_1ECC7D3A0, &unk_1DC522560);
    *(v42 + 4) = v47;
    *(v42 + 8) = 1024;
    v48 = sub_1DC5167EC();
    OUTLINED_FUNCTION_39(v56, 1, v48);
    if (v46)
    {
      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    sub_1DC28EB30(v56, &qword_1ECC7BFE0, &unk_1DC5253A0);
    *(v42 + 10) = v49;
    _os_log_impl(&dword_1DC287000, v40, v41, "Machine utterance fallback:  has legacy context=%{BOOL}d, has pommes context=%{BOOL}d", v42, 0xEu);
    OUTLINED_FUNCTION_102();
  }

  else
  {
    sub_1DC28EB30(v56, &qword_1ECC7BFE0, &unk_1DC5253A0);
    sub_1DC28EB30(v55, &unk_1ECC7D3A0, &unk_1DC522560);
  }

  v50 = OUTLINED_FUNCTION_149();
  v51(v50);
  v52 = sub_1DC51190C();
  OUTLINED_FUNCTION_39(v0, 1, v52);
  if (v46)
  {
    v53 = sub_1DC5167EC();
    OUTLINED_FUNCTION_39(v30, 1, v53);
  }

  sub_1DC28EB30(v30, &qword_1ECC7BFE0, &unk_1DC5253A0);
  sub_1DC28EB30(v0, &unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3D5A6C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_341();
  v6 = v5;
  v8 = v7;
  v9 = *(v1 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_instrumentationUtil);
  OUTLINED_FUNCTION_12_0();
  v11 = (*(v10 + 656))();
  (*(*v9 + 128))(v8, v6, v11, v12, v4, v3, v2, v0);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3D5B38(void *a1)
{
  v3 = v2;
  OUTLINED_FUNCTION_57_0();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC515C6C();
  if (swift_dynamicCastClass())
  {
    v14 = a1;
    sub_1DC515C5C();
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_56_3();
    v6(v2);
    v7 = sub_1DC516F6C();
    v8 = sub_1DC517BAC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_35_8();
      *v9 = 0;
      _os_log_impl(&dword_1DC287000, v7, v8, "NLBridge received an RC which is not UserID aware", v9, 2u);
      OUTLINED_FUNCTION_54_12();
    }

    v10 = OUTLINED_FUNCTION_74();
    v11(v10);
    v12 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionUserId;
    sub_1DC5162DC();
    OUTLINED_FUNCTION_35();
    (*(v13 + 16))(v1, v3 + v12);
  }
}

uint64_t sub_1DC3D5D00()
{
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC28D414();
  OUTLINED_FUNCTION_18_13();
  v2(v0);
  v3 = sub_1DC516F6C();
  sub_1DC517B9C();
  OUTLINED_FUNCTION_116();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_52_1(v5);
    OUTLINED_FUNCTION_84_5();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_58();
  }

  v11 = OUTLINED_FUNCTION_31_0();
  return v12(v11);
}

uint64_t sub_1DC3D5E08()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_35();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_284(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_rootRequestId);

  OUTLINED_FUNCTION_284(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionState));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_referenceResolutionProxy));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils));
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_284(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_selectedRcId);

  v3 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionUserId;
  sub_1DC5162DC();
  OUTLINED_FUNCTION_35();
  (*(v4 + 8))(v0 + v3);

  OUTLINED_FUNCTION_284(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_cmdPersonaManager));

  return v0;
}

uint64_t sub_1DC3D5FFC()
{
  sub_1DC3D5E08();
  OUTLINED_FUNCTION_38_1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

char *sub_1DC3D6128(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4A8, &unk_1DC528560);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DC3D6230(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4A0, &qword_1DC528558);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DC3D6338(uint64_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), void (*a8)(uint64_t))
{
  v12 = result;
  if (a3)
  {
    v13 = *(a4 + 24);
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = *(a4 + 16);
  sub_1DC3D6440(v15, v14, a5, a6, a7);
  v16 = OUTLINED_FUNCTION_228_0();
  a8(v16);
  OUTLINED_FUNCTION_24();
  if (v12)
  {
    sub_1DC3D6538(a4 + v17, v15, v8 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v8;
}

void *sub_1DC3D6440(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(*(a5(0) - 8) + 72);
  OUTLINED_FUNCTION_185_1();
  v11 = v10 & ~v9;
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v8)
  {
    if ((result - v11) != 0x8000000000000000 || v8 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v8);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DC3D6538(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_35(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_62_2();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_62_2();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1DC3D6618()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570) - 8);
  v7 = *(*v6 + 72);
  OUTLINED_FUNCTION_185_1();
  v10 = v9 & ~v8;
  v11 = OUTLINED_FUNCTION_296();
  *(v11 + 16) = xmmword_1DC5221A0;
  v12 = v11 + v10;
  sub_1DC51680C();
  v13 = sub_1DC2A0C74();
  OUTLINED_FUNCTION_209_0(v13);
  v14 = (v12 + v7 + v6[14]);

  sub_1DC51687C();
  *v14 = sub_1DC2A0C80(v2);
  v14[1] = v15;
  v16 = (v12 + 2 * v7 + v6[14]);
  sub_1DC51682C();
  v17 = *(v4 + 64);
  *v16 = *(v4 + 56);
  v16[1] = v17;
  v18 = (v12 + 3 * v7 + v6[14]);

  sub_1DC5168BC();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_4_27();
  sub_1DC3D8E40(v19, v20, MEMORY[0x1E69695E0]);
  *v18 = sub_1DC51823C();
  v18[1] = v21;
  v22 = (v12 + 4 * v7 + v6[14]);
  sub_1DC5168AC();
  *v22 = v3;
  v22[1] = v5;

  OUTLINED_FUNCTION_34();
}

unint64_t sub_1DC3D67C4(uint64_t a1)
{
  sub_1DC5162DC();
  sub_1DC3D8E40(&qword_1ECC7BB10, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D0]);
  v2 = sub_1DC51767C();

  return sub_1DC3D685C(a1, v2);
}

unint64_t sub_1DC3D685C(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_1DC5162DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1DC3D8E40(&qword_1ECC7D500, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D8]);
    v9 = sub_1DC5176CC();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

double sub_1DC3D6A18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1DC2AEB04(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D508, &unk_1DC5285D0);
    sub_1DC517FFC();

    sub_1DC28F9B0((*(v9 + 56) + 40 * v7), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D328, &qword_1DC5283A8);
    sub_1DC51800C();
    *v3 = v9;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DC3D6B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1DC2AEB04(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4E0, &qword_1DC5285B0);
    sub_1DC517FFC();

    v8 = *(v14 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
    sub_1DC3D80AC(v8 + *(*(v9 - 8) + 72) * v7, a3);
    sub_1DC51800C();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_1DC3D6C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1DC2AEB04(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4E8, &qword_1DC5285B8);
    sub_1DC517FFC();

    v8 = *(v14 + 56);
    v9 = type metadata accessor for AssistantNLRequestHandler.NluResponseType(0);
    sub_1DC3D8D78(v8 + *(*(v9 - 8) + 72) * v7, a3);
    sub_1DC51800C();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for AssistantNLRequestHandler.NluResponseType(0);
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_1DC3D6D94(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DC2AEB04(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D508, &unk_1DC5285D0);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DC2AEB04(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 40 * v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);

    return sub_1DC28F9B0(a1, v17);
  }

  else
  {
    sub_1DC358714(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_1DC3D6EE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DC2AEB04(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4E0, &qword_1DC5285B0);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DC2AEB04(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
    return sub_1DC384434(a1, v17 + *(*(v18 - 8) + 72) * v12, &qword_1ECC7D320, &qword_1DC5283A0);
  }

  else
  {
    sub_1DC3D7418(v12, a2, a3, a1, v16);
  }
}

void sub_1DC3D7048(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DC2AEB04(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3C0, &qword_1DC528410);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DC2AEB04(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1DC51829C();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
  }

  else
  {
    sub_1DC361B0C(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_1DC3D7184(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DC2AEB04(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D518, &qword_1DC5285E0);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DC2AEB04(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_1DC361B0C(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_1DC3D72C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DC2AEB04(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4E8, &qword_1DC5285B8);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DC2AEB04(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for AssistantNLRequestHandler.NluResponseType(0) - 8) + 72) * v12;

    return sub_1DC3D8DDC(a1, v18);
  }

  else
  {
    sub_1DC3D74BC(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_1DC3D7418(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  result = sub_1DC3D80AC(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1DC3D74BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for AssistantNLRequestHandler.NluResponseType(0);
  result = sub_1DC3D8D78(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1DC3D7554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1DC3D75CC(int64_t a1, char a2)
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

    result = sub_1DC3D6338(result, v7, a2 & 1, v5, &qword_1ECC7CC48, &unk_1DC5283C0, MEMORY[0x1E69D0A28], MEMORY[0x1E69D0A28]);
    *v2 = result;
  }

  return result;
}

void (*sub_1DC3D765C(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1DC39E2D0(v6);
  v6[9] = sub_1DC3D76F4(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1DC39E054;
}

void (*sub_1DC3D76F4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  v9[3] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v9[4] = v11;
  v13 = *(v11 + 64);
  v9[5] = __swift_coroFrameAllocStub(v13);
  v9[6] = __swift_coroFrameAllocStub(v13);
  v9[7] = __swift_coroFrameAllocStub(v13);
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8) - 8) + 64);
  v9[8] = __swift_coroFrameAllocStub(v14);
  v9[9] = __swift_coroFrameAllocStub(v14);
  v15 = __swift_coroFrameAllocStub(v14);
  v9[10] = v15;
  v16 = *v4;
  v17 = sub_1DC2AEB04(a2, a3);
  *(v9 + 96) = v18 & 1;
  if (__OFADD__(*(v16 + 16), (v18 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4E0, &qword_1DC5285B0);
  if (sub_1DC517FFC())
  {
    v21 = sub_1DC2AEB04(a2, a3);
    if ((v20 & 1) == (v22 & 1))
    {
      v19 = v21;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[11] = v19;
  if (v20)
  {
    sub_1DC3D80AC(*(*v5 + 56) + *(v12 + 72) * v19, v15);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v23, 1, v10);
  return sub_1DC3D7954;
}

void sub_1DC3D7954(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(v2 + 24);
  if (a2)
  {
    sub_1DC28F414(v3, *(v2 + 64), &qword_1ECC7D388, &unk_1DC5283E8);
    v5 = OUTLINED_FUNCTION_100();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, v6, v4);
    v8 = *(v2 + 96);
    v9 = *(v2 + 64);
    if (EnumTagSinglePayload != 1)
    {
      v10 = *(v2 + 16);
      sub_1DC3D80AC(v9, *(v2 + 48));
      v11 = *v10;
      v12 = *(v2 + 88);
      v13 = *(v2 + 48);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 40);
        v15 = *(v2 + 8);
        sub_1DC3D80AC(v13, v14);
        v16 = OUTLINED_FUNCTION_187();
        sub_1DC3D7418(v16, v17, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_1DC28F414(v3, *(v2 + 72), &qword_1ECC7D388, &unk_1DC5283E8);
    v18 = OUTLINED_FUNCTION_100();
    v20 = __swift_getEnumTagSinglePayload(v18, v19, v4);
    v8 = *(v2 + 96);
    v9 = *(v2 + 72);
    if (v20 != 1)
    {
      v21 = *(v2 + 16);
      sub_1DC3D80AC(v9, *(v2 + 56));
      v11 = *v21;
      v12 = *(v2 + 88);
      v13 = *(v2 + 56);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1DC3D80AC(v13, v11[7] + *(*(v2 + 32) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_1DC28EB30(v9, &qword_1ECC7D388, &unk_1DC5283E8);
  if (v8)
  {
    sub_1DC39ED5C(*(**(v2 + 16) + 48) + 16 * *(v2 + 88));
    OUTLINED_FUNCTION_74();
    sub_1DC51800C();
  }

LABEL_10:
  v22 = *(v2 + 72);
  v23 = *(v2 + 80);
  v25 = *(v2 + 56);
  v24 = *(v2 + 64);
  v27 = *(v2 + 40);
  v26 = *(v2 + 48);
  sub_1DC28EB30(v23, &qword_1ECC7D388, &unk_1DC5283E8);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t sub_1DC3D7B44(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(*v3 + 16);
  if (v5 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __OFSUB__(1, v7);
  v9 = 1 - v7;
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v5 + v9;
  if (__OFADD__(v5, v9))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1DC3D7554(result, 1, sub_1DC3D6128);

  return sub_1DC3D7CB4(v6, a2, 1, a3);
}

uint64_t sub_1DC3D7BF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*v4 + 16);
  if (v6 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1DC3D7554(result, 1, sub_1DC3D6230);

  return sub_1DC3D7DF0(v7, a2, 1, a3, a4);
}

uint64_t sub_1DC3D7CB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  v10 = *v4;
  v11 = *v4 + 32;
  v12 = v11 + 8 * result;
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v5);
  v14 = a3 - v5;
  if (v13)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v15 = v12 + 8 * a3;
  if (!v14)
  {
    goto LABEL_12;
  }

  v16 = *(v10 + 16);
  v17 = v16 - a2;
  if (__OFSUB__(v16, a2))
  {
    goto LABEL_21;
  }

  v18 = (v11 + 8 * a2);
  if (v15 != v18 || v18 + 8 * v17 <= v15)
  {
    result = memmove((v12 + 8 * a3), v18, 8 * v17);
    v16 = *(v10 + 16);
  }

  v13 = __OFADD__(v16, v14);
  v20 = v16 + v14;
  if (v13)
  {
    goto LABEL_22;
  }

  *(v10 + 16) = v20;
LABEL_12:
  if (a3 < 1)
  {
  }

  else
  {
    v21 = v10 + 8 * v9;
    *(v21 + 32) = a4;
    if (v21 + 40 < v15)
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DC3D7DF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v14 = &v12[2 * a3];
  if (!v13)
  {
    goto LABEL_12;
  }

  v15 = *(v11 + 16);
  v16 = v15 - a2;
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_21;
  }

  v17 = (v11 + 32 + 16 * a2);
  if (v14 != v17 || v17 + 16 * v16 <= v14)
  {
    result = memmove(&v12[2 * a3], v17, 16 * v16);
    v15 = *(v11 + 16);
  }

  v19 = __OFADD__(v15, v13);
  v20 = v15 + v13;
  if (v19)
  {
    goto LABEL_22;
  }

  *(v11 + 16) = v20;
LABEL_12:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if ((v12 + 2) < v14)
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DC3D7F20(void *a1)
{
  v1 = [a1 tcuId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DC51772C();

  return v3;
}

void *sub_1DC3D7F84(void *a1, SEL *a2)
{
  v2 = a1;
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  sub_1DC51772C();
  OUTLINED_FUNCTION_123_0();

  return v2;
}

uint64_t sub_1DC3D80AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC3D8128()
{
  sub_1DC51170C();
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570) - 8);
  v1 = *(*v0 + 72);
  OUTLINED_FUNCTION_185_1();
  v4 = v3 & ~v2;
  v5 = OUTLINED_FUNCTION_296();
  *(v5 + 16) = xmmword_1DC528380;
  v6 = v5 + v4;
  sub_1DC51680C();
  v7 = sub_1DC2A0C74();
  OUTLINED_FUNCTION_209_0(v7);
  v8 = (v6 + v1 + v0[14]);

  sub_1DC51683C();
  sub_1DC517F4C();
  MEMORY[0x1E1296160](0xD000000000000024, 0x80000001DC545070);
  v9 = sub_1DC515B5C();
  MEMORY[0x1E1296160](v9);

  MEMORY[0x1E1296160](0xD00000000000001DLL, 0x80000001DC5450A0);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v10 = (v6 + 2 * v1 + v0[14]);
  sub_1DC51687C();
  *v10 = sub_1DC2A0C80(7);
  v10[1] = v11;
  v12 = (v6 + 3 * v1 + v0[14]);
  sub_1DC51682C();
  *v12 = sub_1DC515D9C();
  v12[1] = v13;
  v14 = (v6 + 4 * v1 + v0[14]);
  sub_1DC5168BC();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_4_27();
  sub_1DC3D8E40(v15, v16, MEMORY[0x1E69695E0]);
  *v14 = sub_1DC51823C();
  v14[1] = v17;
  v18 = (v6 + 5 * v1 + v0[14]);
  sub_1DC5168AC();
  *v18 = sub_1DC515D6C();
  v18[1] = v19;
  v20 = (v6 + 6 * v1 + v0[14]);
  sub_1DC51686C();
  *v20 = sub_1DC515B5C();
  v20[1] = v21;
  v22 = (v6 + 7 * v1 + v0[14]);
  sub_1DC51681C();
  sub_1DC517FEC();
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  return v5;
}

uint64_t objectdestroy_9Tm()
{
  v1 = sub_1DC51170C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1DC3D8558()
{
  sub_1DC51170C();
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570) - 8);
  v1 = *(*v0 + 72);
  OUTLINED_FUNCTION_185_1();
  v4 = v3 & ~v2;
  v5 = OUTLINED_FUNCTION_296();
  *(v5 + 16) = xmmword_1DC528390;
  v6 = v5 + v4;
  sub_1DC51680C();
  v7 = sub_1DC2A0C74();
  OUTLINED_FUNCTION_209_0(v7);
  v8 = (v6 + v1 + v0[14]);

  sub_1DC51687C();
  *v8 = sub_1DC2A0C80(5);
  v8[1] = v9;
  v10 = (v6 + 2 * v1 + v0[14]);
  sub_1DC51682C();
  *v10 = sub_1DC515D9C();
  v10[1] = v11;
  v12 = (v6 + 3 * v1 + v0[14]);
  sub_1DC5168BC();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_4_27();
  sub_1DC3D8E40(v13, v14, MEMORY[0x1E69695E0]);
  *v12 = sub_1DC51823C();
  v12[1] = v15;
  v16 = (v6 + 4 * v1 + v0[14]);
  sub_1DC5168AC();
  *v16 = sub_1DC515D6C();
  v16[1] = v17;
  v18 = (v6 + 5 * v1 + v0[14]);
  sub_1DC51686C();
  *v18 = sub_1DC515B5C();
  v18[1] = v19;
  v20 = (v6 + 6 * v1 + v0[14]);
  sub_1DC51681C();
  sub_1DC517FEC();
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  return v5;
}

void sub_1DC3D87C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();

  [a3 setAceId_];
}

uint64_t sub_1DC3D8824()
{
  v1 = OUTLINED_FUNCTION_155();
  v2(v1);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1DC3D8878()
{
  result = qword_1ECC7B9A8;
  if (!qword_1ECC7B9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC7B9A8);
  }

  return result;
}

uint64_t sub_1DC3D8944(uint64_t a1)
{
  result = sub_1DC510B6C();
  if (v2 <= 0x3F)
  {
    result = sub_1DC5162DC();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1DC3D8ACC(uint64_t a1)
{
  result = type metadata accessor for CDMNluResponse(319);
  if (v2 <= 0x3F)
  {
    result = sub_1DC5161DC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DC3D8B40(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v4(v3);
  OUTLINED_FUNCTION_35();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return a2;
}

__n128 *sub_1DC3D8BB8()
{
  OUTLINED_FUNCTION_320();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570);
  OUTLINED_FUNCTION_136_1();
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_185_1();
  v8 = v7 & ~v6;
  v9 = OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_294(v9, xmmword_1DC528390);
  v10 = sub_1DC2A0C74();
  OUTLINED_FUNCTION_209_0(v10);
  v11 = (v8 + v5 + *(v1 + 56));

  sub_1DC51687C();
  *v11 = sub_1DC2A0C80(10);
  v11[1] = v12;
  OUTLINED_FUNCTION_322();
  sub_1DC51682C();
  OUTLINED_FUNCTION_253();
  sub_1DC5168BC();
  v13 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_4_27();
  sub_1DC3D8E40(v14, v15, MEMORY[0x1E69695E0]);
  *v2 = sub_1DC51823C();
  v2[1] = v16;
  OUTLINED_FUNCTION_322();
  sub_1DC5168AC();
  OUTLINED_FUNCTION_226_0(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
  v17 = sub_1DC51689C();
  OUTLINED_FUNCTION_329(v17, v18, v19, v20, v21, v22, v23, v24, v27);
  v25 = (v3 + v13 + *(v1 + 56));

  sub_1DC51688C();
  *v25 = v28;
  v25[1] = v0;

  return v9;
}

uint64_t sub_1DC3D8D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssistantNLRequestHandler.NluResponseType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC3D8DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssistantNLRequestHandler.NluResponseType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC3D8E40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DC3D8E88(uint64_t a1)
{
  sub_1DC515A5C();
  sub_1DC3BFAC0();
}

uint64_t objectdestroy_29Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

__n128 *sub_1DC3D8F3C()
{
  OUTLINED_FUNCTION_320();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570);
  OUTLINED_FUNCTION_136_1();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_185_1();
  v7 = v6 & ~v5;
  v8 = OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_294(v8, xmmword_1DC528390);
  v9 = sub_1DC2A0C74();
  OUTLINED_FUNCTION_209_0(v9);
  v10 = (v7 + v4 + *(v0 + 56));

  sub_1DC51687C();
  *v10 = sub_1DC2A0C80(4);
  v10[1] = v11;
  OUTLINED_FUNCTION_322();
  sub_1DC51682C();
  OUTLINED_FUNCTION_253();
  sub_1DC5168BC();
  v12 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_4_27();
  sub_1DC3D8E40(v13, v14, MEMORY[0x1E69695E0]);
  *v1 = sub_1DC51823C();
  v1[1] = v15;
  OUTLINED_FUNCTION_322();
  sub_1DC5168AC();
  OUTLINED_FUNCTION_226_0(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
  v16 = sub_1DC51689C();
  OUTLINED_FUNCTION_329(v16, v17, v18, v19, v20, v21, v22, v23, v27);

  sub_1DC51688C();
  v24 = (v2 + v12 + *(v0 + 56));

  v25 = OUTLINED_FUNCTION_187();
  MEMORY[0x1E1296160](v25);

  *v24 = 0;
  v24[1] = 0xE000000000000000;
  return v8;
}

uint64_t OUTLINED_FUNCTION_73_5()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_116_3()
{
  v3 = *(v1 - 176);

  return sub_1DC291244(v3, v0, (v1 - 88));
}

void OUTLINED_FUNCTION_146_3()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_175()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_186_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 112) = a6;
  *(v8 - 104) = a7;
  *(v8 - 128) = a3;
  *(v8 - 120) = a5;
  *(v8 - 96) = *(v8 + 16);
  *(v8 - 88) = a8;
}

BOOL OUTLINED_FUNCTION_197_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_198_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_209_0(uint64_t *a1)
{
  v3 = *a1;
  result = a1[1];
  *v1 = v3;
  v1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_218_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_219_0()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_236_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

unint64_t OUTLINED_FUNCTION_249_0(uint64_t a1, unint64_t a2)
{

  return sub_1DC291244(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_251_0()
{
}

uint64_t OUTLINED_FUNCTION_253()
{
  v3 = *(v1 + 64);
  *v0 = *(v1 + 56);
  v0[1] = v3;
}

uint64_t OUTLINED_FUNCTION_254()
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_255(uint64_t a1, unint64_t a2)
{

  return sub_1DC291244(a1, a2, (v2 - 168));
}

uint64_t OUTLINED_FUNCTION_294(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_1DC51680C();
}

uint64_t *OUTLINED_FUNCTION_295(uint64_t a1)
{
  *(v1 - 96) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 128));
}

uint64_t OUTLINED_FUNCTION_296()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_297()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_298(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_300()
{
  v2 = *(v0 - 304);
}

BOOL OUTLINED_FUNCTION_301()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t *OUTLINED_FUNCTION_304(uint64_t a1)
{
  *(v1 - 104) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 136));
}

unint64_t OUTLINED_FUNCTION_305(uint64_t a1, unint64_t a2)
{

  return sub_1DC291244(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_306()
{
}

uint64_t OUTLINED_FUNCTION_347(uint64_t a1)
{
  v4 = *(v3 - 144);
  *(a1 + 16) = v1;
  *(a1 + 24) = v4;
  return a1 + v2;
}

unint64_t OUTLINED_FUNCTION_366(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 128);

  return sub_1DC291244(v5, v2, (v3 - 96));
}

unint64_t OUTLINED_FUNCTION_367(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 144);

  return sub_1DC291244(v5, v2, (v3 - 104));
}

void OUTLINED_FUNCTION_369(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_370@<X0>(uint64_t a1@<X8>)
{

  return MEMORY[0x1EEE3BE48](0xD000000000000010, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_371()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_373()
{
}

uint64_t OUTLINED_FUNCTION_374()
{
}

unint64_t OUTLINED_FUNCTION_375(uint64_t a1, unint64_t a2)
{

  return sub_1DC291244(a1, a2, (v2 - 96));
}

unint64_t OUTLINED_FUNCTION_376(uint64_t a1, unint64_t a2)
{

  return sub_1DC291244(a1, a2, (v2 - 120));
}

uint64_t OUTLINED_FUNCTION_377(uint64_t a1, uint64_t a2)
{

  return sub_1DC28F414(a1, a2, v3, v2);
}

uint64_t sub_1DC3D9B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v115 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v123 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v114 = v6 - v5;
  OUTLINED_FUNCTION_12();
  v117 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v120 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v116 = v10 - v9;
  OUTLINED_FUNCTION_12();
  v118 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v121 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v112 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v105 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v111 = v19 - v18;
  OUTLINED_FUNCTION_12();
  v20 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v102 = v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v99 = v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v101 = v92 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v92 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = v92 - v30;
  v32 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1();
  v104 = (v35 - v34);
  OUTLINED_FUNCTION_12();
  v36 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v108 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1();
  v41 = v40 - v39;
  v42 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v43 = sub_1DC2BE518();
  v44 = OUTLINED_FUNCTION_130();
  v107 = v41;
  v106 = v42;
  sub_1DC2A2ED0("HeuristicRules.AnnouncementRule", 31, 2, v43, v44 & 1, v41);

  v45 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v45 + 32), v28, &qword_1ECC7C158, &unk_1DC5234A0);
  v46 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v28, 1, v46) == 1)
  {
    sub_1DC28EB30(v28, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v32);
LABEL_4:
    sub_1DC28EB30(v31, &qword_1ECC7C160, qword_1DC5233B0);
    __swift_storeEnumTagSinglePayload(v109, 1, 1, v20);
    OUTLINED_FUNCTION_4_28();
LABEL_39:
    v91 = sub_1DC2BE518();
    sub_1DC2B8848(v15, "HeuristicRules.AnnouncementRule", 31, 2, v91);

    return (*(v41 + 8))(v15, v36);
  }

  sub_1DC28F358(v28, v31, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v28, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    goto LABEL_4;
  }

  sub_1DC2E53A4(v31, v104);
  v47 = *(type metadata accessor for HeuristicRoutingRequest(0) + 20);
  v48 = *(v102 + 16);
  v92[2] = a1;
  v92[1] = v47;
  v93 = v20;
  v48(v101, a1 + v47, v20);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v49 = sub_1DC3464CC();
  v51 = v50;
  if (v49 == sub_1DC313520(1) && v51 == v52)
  {

    v56 = v116;
    v57 = v117;
    v41 = v121;
  }

  else
  {
    v54 = sub_1DC51825C();

    v56 = v116;
    v57 = v117;
    v41 = v121;
    if ((v54 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v100 = *v104;
  v94 = *(v100 + 16);
  if (!v94)
  {
LABEL_35:
    v86 = v101;
    v87 = sub_1DC5157DC();
    sub_1DC2E5408(v104, type metadata accessor for NLRouterNLParseResponse);
    if (v87)
    {
      v88 = v93;
      (*(v102 + 8))(v86, v93);
      v89 = v109;
    }

    else
    {
      v89 = v109;
      v88 = v93;
      (*(v102 + 32))(v109, v86, v93);
    }

    OUTLINED_FUNCTION_4_28();
    __swift_storeEnumTagSinglePayload(v89, v90, 1, v88);
    goto LABEL_39;
  }

  v58 = 0;
  v98 = v100 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
  v97 = v105 + 16;
  v122 = v41 + 16;
  v119 = (v120 + 8);
  v113 = (v123 + 8);
  v95 = v105 + 8;
  v96 = v36;
  v110 = v15;
  while (1)
  {
    if (v58 >= *(v100 + 16))
    {
      goto LABEL_41;
    }

    v59 = *(v105 + 72);
    v103 = v58;
    (*(v105 + 16))(v111, v98 + v59 * v58, v112);
    result = sub_1DC5111AC();
    v60 = result;
    v61 = *(result + 16);
    v62 = v118;
    if (v61)
    {
      break;
    }

LABEL_32:
    v58 = v103 + 1;

    v80 = OUTLINED_FUNCTION_3_27();
    result = v81(v80);
    v36 = v96;
    if (v58 == v94)
    {
      goto LABEL_35;
    }
  }

  v63 = 0;
  v123 = result + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v120 = result;
  while (v63 < *(v60 + 16))
  {
    (*(v41 + 16))(v15, v123 + *(v41 + 72) * v63, v62);
    if (sub_1DC5114CC())
    {
      sub_1DC51154C();
      v64 = sub_1DC51177C();
      v65 = *v119;
      (*v119)(v56, v57);
      if ((v64 & 1) == 0)
      {
        v76 = OUTLINED_FUNCTION_5_2();
        result = v77(v76, v62);
LABEL_28:
        v60 = v120;
        v41 = v121;
        goto LABEL_31;
      }

      type metadata accessor for NLRouterBypassUtils();
      sub_1DC51154C();
      v66 = v56;
      v67 = v57;
      v68 = v114;
      sub_1DC51178C();
      v65(v66, v67);
      v69 = sub_1DC307E5C(v68);
      (*v113)(v68, v115);
      if (!v69)
      {
        v78 = OUTLINED_FUNCTION_5_2();
        v62 = v118;
        result = v79(v78, v118);
        v56 = v116;
        v57 = v117;
        goto LABEL_28;
      }

      sub_1DC51478C();

      v70 = OUTLINED_FUNCTION_5_2();
      v62 = v118;
      v71(v70, v118);
      v41 = v121;
      if (v125)
      {
        sub_1DC2BAD90(&v124, &v126);
        sub_1DC2BAD90(&v126, &v124);
        sub_1DC514C3C();
        v72 = swift_dynamicCast();
        v60 = v120;
        if ((v72 & 1) != 0 || (sub_1DC514CDC(), v73 = swift_dynamicCast(), v56 = v116, v57 = v117, v73))
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v124);
          v82 = OUTLINED_FUNCTION_3_27();
          v83(v82);
          v15 = v99;
          v41 = v101;
          sub_1DC32CDF4();
          v84 = v102;
          v85 = v93;
          (*(v102 + 8))(v41, v93);
          (*(v84 + 32))(v41, v15, v85);
          v36 = v96;
          goto LABEL_35;
        }

        result = __swift_destroy_boxed_opaque_existential_1Tm(&v124);
      }

      else
      {
        result = sub_1DC28EB30(&v124, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v56 = v116;
        v57 = v117;
        v60 = v120;
      }

      v15 = v110;
    }

    else
    {
      v74 = OUTLINED_FUNCTION_5_2();
      result = v75(v74, v62);
    }

LABEL_31:
    if (v61 == ++v63)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1DC3DA6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v138 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v130 = v118 - v3;
  OUTLINED_FUNCTION_12();
  v139 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v129 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v128 = v7 - v6;
  OUTLINED_FUNCTION_12();
  v141 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v132 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v140 = v11 - v10;
  OUTLINED_FUNCTION_12();
  sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v143 = v12;
  v144 = v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v146 = v15 - v14;
  OUTLINED_FUNCTION_12();
  v142 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v131 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v133 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = v118 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = v118 - v31;
  v33 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  v136 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v135 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1();
  v42 = v41 - v40;
  v43 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v44 = sub_1DC2BE518();
  v45 = OUTLINED_FUNCTION_130();
  v134 = v42;
  v46 = v42;
  v47 = v43;
  sub_1DC2A2ED0("HeuristicRules.PlannerPlayRule", 30, 2, v44, v45 & 1, v46);

  v48 = type metadata accessor for NLRouterServiceRequest(0);
  if (*(*(v138 + *(v48 + 24)) + 16))
  {
    OUTLINED_FUNCTION_19();
    v52 = v139;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
    v58 = v136;
    OUTLINED_FUNCTION_1_33();
    goto LABEL_8;
  }

  v126 = v26;
  v127 = v21;
  v53 = v139;
  v124 = v37;
  sub_1DC28F358(v138 + *(v48 + 32), v29, &qword_1ECC7C158, &unk_1DC5234A0);
  v54 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v29, 1, v54) == 1)
  {
    sub_1DC28EB30(v29, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v33);
LABEL_6:
    sub_1DC28EB30(v32, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
    v52 = v53;
    goto LABEL_7;
  }

  sub_1DC28F358(v29, v32, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v29, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
    goto LABEL_6;
  }

  v61 = v124;
  sub_1DC2E53A4(v32, v124);
  v21 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v62 = sub_1DC345560();
  v64 = v63;
  if (v62 == sub_1DC312FB4(0) && v64 == v65)
  {

    goto LABEL_33;
  }

  v67 = sub_1DC51825C();

  if (v67)
  {
LABEL_33:
    OUTLINED_FUNCTION_4();
    sub_1DC2E5408(v61, v91);
    v58 = v136;
    OUTLINED_FUNCTION_1_33();
    goto LABEL_34;
  }

  v118[1] = v21;
  v68 = 0;
  v69 = *v61;
  v122 = *(*v61 + 16);
  v70 = v133;
  v120 = v133 + 16;
  v71 = v131;
  v72 = (v131 + 8);
  ++v144;
  v145 = v131 + 16;
  ++v132;
  v121 = v133 + 8;
  v37 = v142;
  v73 = v143;
  v74 = v146;
  v75 = v127;
  v21 = v126;
  v118[2] = v47;
  for (i = v69; ; v69 = i)
  {
    if (v68 == v122)
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_9_25(v106, v107);
      v58 = v136;
      OUTLINED_FUNCTION_1_33();
      v53 = v139;
      goto LABEL_34;
    }

    if (v68 >= *(v69 + 16))
    {
      __break(1u);
      return result;
    }

    v76 = v69 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v77 = *(v70 + 72);
    v125 = v68;
    (*(v70 + 16))(v21, v76 + v77 * v68, v75);
    v78 = sub_1DC5111AC();
    v21 = *(v78 + 16);
    if (v21)
    {
      break;
    }

LABEL_31:
    v68 = v125 + 1;
    OUTLINED_FUNCTION_7_22();
    v21 = *(v89 - 256);
    v75 = v127;
    result = v90(v21, v127);
    v70 = v133;
  }

  v79 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v80 = v71;
  v123 = v78;
  v81 = v78 + v79;
  v82 = *(v80 + 72);
  v83 = *(v80 + 16);
  while (1)
  {
    v83(v20, v81, v37);
    if ((sub_1DC5114CC() & 1) == 0)
    {
      (*v72)(v20, v37);
      goto LABEL_27;
    }

    sub_1DC51154C();
    v84 = sub_1DC51177C();
    v85 = *v144;
    (*v144)(v74, v73);
    if ((v84 & 1) == 0 || (type metadata accessor for NLRouterBypassUtils(), sub_1DC51154C(), v86 = v140, sub_1DC51178C(), v85(v146, v143), v74 = v146, v87 = sub_1DC307E5C(v86), v88 = v86, v73 = v143, (*v132)(v88, v141), !v87))
    {
      v37 = v142;
      (*v72)(v20, v142);
      goto LABEL_27;
    }

    sub_1DC51478C();

    v37 = v142;
    (*v72)(v20, v142);
    *v147 = *&v147[5];
    *&v147[2] = v148;
    if (!*(&v148 + 1))
    {
      sub_1DC28EB30(v147, &qword_1ECC7D3F0, &qword_1DC5238B0);
      goto LABEL_27;
    }

    sub_1DC5147FC();
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_27:
    v81 += v82;
    if (!--v21)
    {

      OUTLINED_FUNCTION_6_22();
      v71 = v131;
      goto LABEL_31;
    }
  }

  OUTLINED_FUNCTION_7_22();
  v96(*(v95 - 256), v127);
  v97 = sub_1DC345560();
  v99 = sub_1DC312F68(v97, v98);
  if (v99 == 4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_9_25(v100, v101);
    v102 = v130;
    OUTLINED_FUNCTION_19();
    v53 = v139;
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v139);
    goto LABEL_40;
  }

  v102 = v130;
  sub_1DC312E7C(v99, v130);
  v53 = v139;
  if (__swift_getEnumTagSinglePayload(v102, 1, v139) == 1)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_9_25(v108, v109);
LABEL_40:
    v58 = v136;
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_6_22();
    sub_1DC28EB30(v102, &qword_1ECC7CA40, &unk_1DC5233A0);
LABEL_34:
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v53);
  }

  else
  {
    v37 = v129;
    v110 = *(v129 + 32);
    v111 = v128;
    v110(v128, v102, v53);
    type metadata accessor for HeuristicRoutingRequest(0);
    sub_1DC32FD38();
    v113 = v112;
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_9_25(v114, v115);
    if ((v113 & 1) == 0)
    {
      v117 = *(v37 + 8);
      v37 += 8;
      v117(v111, v53);
      v58 = v136;
      OUTLINED_FUNCTION_1_33();
      OUTLINED_FUNCTION_6_22();
      goto LABEL_34;
    }

    v116 = v137;
    v110(v137, v111, v53);
    __swift_storeEnumTagSinglePayload(v116, 0, 1, v53);
    v58 = v136;
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_6_22();
  }

LABEL_8:
  v59 = sub_1DC2BE518();
  sub_1DC2B8848(v37, "HeuristicRules.PlannerPlayRule", 30, 2, v59);

  return (*(v21 + 8))(v37, v58);
}

uint64_t sub_1DC3DB20C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D598, &qword_1DC528668);
  v0 = sub_1DC514BFC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DC522FA0;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  (v8)(v7, *MEMORY[0x1E69D20A8], v0);
  (v8)(v7 + v4, *MEMORY[0x1E69D20C8], v0);
  (v8)(v7 + 2 * v4, *MEMORY[0x1E69D2108], v0);
  v9 = OUTLINED_FUNCTION_140_4(3 * v4);
  v8(v9);
  (v8)(v7 + 4 * v4, *MEMORY[0x1E69D20F8], v0);
  v10 = OUTLINED_FUNCTION_140_4(5 * v4);
  v8(v10);
  (v8)(v7 + 6 * v4, *MEMORY[0x1E69D20B8], v0);
  v11 = OUTLINED_FUNCTION_140_4(7 * v4);
  v8(v11);
  (v8)(v7 + 8 * v4, *MEMORY[0x1E69D20D8], v0);
  v12 = OUTLINED_FUNCTION_140_4(9 * v4);
  v8(v12);
  (v8)(v7 + 10 * v4, *MEMORY[0x1E69D2100], v0);
  result = sub_1DC3E2EF8(v6);
  qword_1ECC8F9D0 = result;
  return result;
}

void sub_1DC3DB448()
{
  OUTLINED_FUNCTION_33();
  v359 = v0;
  v356 = v1;
  v376 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v350 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v375 = v4;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v379 = v6;
  OUTLINED_FUNCTION_12();
  v377 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v349 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v374 = v9;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v380 = v11;
  OUTLINED_FUNCTION_12();
  v378 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v365 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v361 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v381 = v16;
  OUTLINED_FUNCTION_12();
  v17 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v371 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v373 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23_1();
  v367 = v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_1();
  v368 = v24;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_1();
  v369 = v26;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_23_1();
  v370 = v28;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  v382 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  v344 = v33;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23_1();
  v347 = v35;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23_1();
  v348 = v37;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_23_1();
  v362 = v39;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_62();
  v366 = v41;
  OUTLINED_FUNCTION_12();
  v360 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_15();
  v342 = v45;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23_1();
  v383 = v47;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_23_1();
  v336 = v49;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_23_1();
  v340 = v51;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_23_1();
  v345 = v53;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_23_1();
  v337 = v55;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_23_1();
  v341 = v57;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_23_1();
  v338 = v59;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_23_1();
  v343 = v61;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_23_1();
  v339 = v63;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_23_1();
  v346 = v65;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_62();
  v351 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v68);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v331 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v72);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v331 - v74;
  v76 = OUTLINED_FUNCTION_12();
  v77 = type metadata accessor for NLRouterNLParseResponse(v76);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_2_1();
  v357 = v79;
  OUTLINED_FUNCTION_12();
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v354 = v81;
  v355 = v80;
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_1();
  v84 = v83 - v82;
  v85 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v86 = sub_1DC2BE518();
  v87 = OUTLINED_FUNCTION_130();
  v353 = v84;
  v88 = v84;
  v89 = v359;
  v358 = v85;
  sub_1DC2A2ED0("HeuristicRules.MessageRule", 26, 2, v86, v87 & 1, v88);

  v90 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v89 + *(v90 + 32), v71, &qword_1ECC7C158, &unk_1DC5234A0);
  v372 = 0;
  v91 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v71, 1, v91);
  if (v95)
  {
    sub_1DC28EB30(v71, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v77);
LABEL_6:
    sub_1DC28EB30(v75, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v360);
    v100 = v354;
    v99 = v355;
    v101 = v353;
LABEL_109:
    v243 = sub_1DC2BE518();
    sub_1DC2B8848(v101, "HeuristicRules.MessageRule", 26, 2, v243);

    (*(v100 + 8))(v101, v99);
    OUTLINED_FUNCTION_34();
    return;
  }

  sub_1DC28F358(v71, v75, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v71, type metadata accessor for NLRouterTurnProbingResult);
  OUTLINED_FUNCTION_39(v75, 1, v77);
  if (v95)
  {
    goto LABEL_6;
  }

  v332 = v90;
  sub_1DC2E53A4(v75, v357);
  v102 = *(type metadata accessor for HeuristicRoutingRequest(0) + 20);
  v103 = *(v43 + 16);
  v334 = v43 + 16;
  v335 = v102;
  isa = v360;
  v333 = v103;
  v103(v351, (v89 + v102), v360);
  v352 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v105 = v352;
  sub_1DC343440();
  OUTLINED_FUNCTION_84_6();
  OUTLINED_FUNCTION_126_1();
  if (v106)
  {
    v108 = v105 == v107;
  }

  else
  {
    v108 = 0;
  }

  v363 = v43;
  v364 = v17;
  if (v108)
  {

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_52_12();
  OUTLINED_FUNCTION_91_2();

  if (v71)
  {
    goto LABEL_19;
  }

  v109 = sub_1DC343440();
  sub_1DC312F68(v109, v110);
  OUTLINED_FUNCTION_43_0();
  if (v95)
  {
    v115 = v366;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v112, v113, v114, isa);
LABEL_18:
    sub_1DC28EB30(v115, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_19;
  }

  v115 = v366;
  sub_1DC312E7C(v111, v366);
  v116 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v116, v117, isa);
  if (v118)
  {
    goto LABEL_18;
  }

  v244 = *(v43 + 32);
  v43 += 32;
  v244(v346, v115, isa);
  OUTLINED_FUNCTION_13_22();
  v366 = v245;
  OUTLINED_FUNCTION_102_4();
  do
  {
    if (isa == v17)
    {
      OUTLINED_FUNCTION_75_5();
      OUTLINED_FUNCTION_129_1();
      v320();
      v89 = v359;
      v17 = v364;
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_142_2();
    if (v246)
    {
      goto LABEL_148;
    }

    OUTLINED_FUNCTION_23_21();
    OUTLINED_FUNCTION_101_1();
    v71 = v382;
    v247(v382);
    OUTLINED_FUNCTION_165_2();
    sub_1DC3DD07C();
    OUTLINED_FUNCTION_149_0();

    v248 = OUTLINED_FUNCTION_100_3();
    v249(v248);
  }

  while ((v86 & 1) == 0);
  v250 = sub_1DC517B9C();
  v251 = sub_1DC2BE518();
  isa = v360;
  v333(v339, v346, v360);
  if (os_log_type_enabled(v251, v250))
  {
    OUTLINED_FUNCTION_140();
    v252 = OUTLINED_FUNCTION_83_5();
    v253 = OUTLINED_FUNCTION_135_1(v252);
    *v71 = 136315394;
    OUTLINED_FUNCTION_77_5(v253, &v384);
    v254 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
    OUTLINED_FUNCTION_162_4(v254, v255);
    OUTLINED_FUNCTION_99_1();
    OUTLINED_FUNCTION_63_9();
    OUTLINED_FUNCTION_123_0();
    v256 = OUTLINED_FUNCTION_20_15();
    v257(v256);
    OUTLINED_FUNCTION_86_4();
    OUTLINED_FUNCTION_168_2();
    *(v71 + 14) = v89;
    OUTLINED_FUNCTION_157(&dword_1DC287000, v258, v259, "[MessageRule] triggered by isSendAudioMessage. Updating routing from %s to %s");
    OUTLINED_FUNCTION_62_11();
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_66();

    v260 = v359;
  }

  else
  {

    v323 = OUTLINED_FUNCTION_20_15();
    v324(v323);
    v260 = v359;
    v89 = v351;
  }

  OUTLINED_FUNCTION_142(v89, &v385);
  (*(v17 + 40))(v89, v346, isa);
  v43 = v17;
  v17 = v364;
  v89 = v260;
LABEL_19:
  v119 = v352;
  sub_1DC34461C();
  OUTLINED_FUNCTION_84_6();
  OUTLINED_FUNCTION_126_1();
  if (v95)
  {
    v121 = v119 == v120;
  }

  else
  {
    v121 = 0;
  }

  if (v121)
  {

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_52_12();
  OUTLINED_FUNCTION_91_2();

  if (v71)
  {
    goto LABEL_31;
  }

  v122 = sub_1DC34461C();
  sub_1DC312F68(v122, v123);
  OUTLINED_FUNCTION_43_0();
  if (v95)
  {
    v128 = v362;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v125, v126, v127, isa);
LABEL_30:
    sub_1DC28EB30(v128, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_31;
  }

  v128 = v362;
  sub_1DC312E7C(v124, v362);
  v129 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v129, v130, isa);
  if (v131)
  {
    goto LABEL_30;
  }

  v261 = *(v43 + 32);
  v43 += 32;
  v261(v343, v128, isa);
  OUTLINED_FUNCTION_13_22();
  v382 = v262;
  OUTLINED_FUNCTION_102_4();
  do
  {
    if (isa == v17)
    {
      OUTLINED_FUNCTION_75_5();
      OUTLINED_FUNCTION_129_1();
      v321();
      v89 = v359;
      v17 = v364;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_142_2();
    if (v246)
    {
      goto LABEL_149;
    }

    OUTLINED_FUNCTION_23_21();
    OUTLINED_FUNCTION_101_1();
    v71 = v370;
    v263 = OUTLINED_FUNCTION_99_2();
    v264(v263);
    v265 = OUTLINED_FUNCTION_165_2();
    sub_1DC3DDA34(v265, v266, v267, v268, v269, v270, v271, v272, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342);
    OUTLINED_FUNCTION_149_0();

    v273 = OUTLINED_FUNCTION_100_3();
    v274(v273);
  }

  while ((v86 & 1) == 0);
  v275 = sub_1DC517B9C();
  v276 = sub_1DC2BE518();
  isa = v360;
  v333(v338, v343, v360);
  if (os_log_type_enabled(v276, v275))
  {
    OUTLINED_FUNCTION_140();
    v277 = OUTLINED_FUNCTION_83_5();
    v278 = OUTLINED_FUNCTION_135_1(v277);
    *v71 = 136315394;
    OUTLINED_FUNCTION_77_5(v278, &v386);
    v279 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
    OUTLINED_FUNCTION_162_4(v279, v280);
    OUTLINED_FUNCTION_99_1();
    OUTLINED_FUNCTION_63_9();
    OUTLINED_FUNCTION_123_0();
    v281 = OUTLINED_FUNCTION_20_15();
    v282(v281);
    OUTLINED_FUNCTION_86_4();
    OUTLINED_FUNCTION_168_2();
    *(v71 + 14) = v89;
    OUTLINED_FUNCTION_157(&dword_1DC287000, v283, v284, "[MessageRule] triggered by isReadSummariseMessage. Updating routing from %s to %s");
    OUTLINED_FUNCTION_62_11();
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_66();

    v285 = v359;
  }

  else
  {

    v325 = OUTLINED_FUNCTION_20_15();
    v326(v325);
    v285 = v359;
    v89 = v351;
  }

  OUTLINED_FUNCTION_142(v89, &v387);
  (*(v17 + 40))(v89, v343, isa);
  v43 = v17;
  v17 = v364;
  v89 = v285;
LABEL_31:
  v132 = v352;
  sub_1DC3446F8();
  OUTLINED_FUNCTION_84_6();
  OUTLINED_FUNCTION_126_1();
  if (v95)
  {
    v134 = v132 == v133;
  }

  else
  {
    v134 = 0;
  }

  if (v134)
  {
  }

  else
  {
    OUTLINED_FUNCTION_52_12();
    OUTLINED_FUNCTION_91_2();

    if ((v71 & 1) == 0)
    {
      v135 = sub_1DC3446F8();
      sub_1DC312F68(v135, v136);
      OUTLINED_FUNCTION_43_0();
      if (v95)
      {
        v141 = v348;
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v138, v139, v140, isa);
      }

      else
      {
        v141 = v348;
        sub_1DC312E7C(v137, v348);
        v142 = OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_39(v142, v143, isa);
        if (!v144)
        {
          v286 = *(v43 + 32);
          v43 += 32;
          v286(v341, v141, isa);
          OUTLINED_FUNCTION_13_22();
          v382 = v287;
          OUTLINED_FUNCTION_102_4();
          do
          {
            if (isa == v17)
            {
              OUTLINED_FUNCTION_75_5();
              OUTLINED_FUNCTION_129_1();
              v322();
              v89 = v359;
              v17 = v364;
              goto LABEL_43;
            }

            OUTLINED_FUNCTION_142_2();
            if (v246)
            {
              goto LABEL_150;
            }

            OUTLINED_FUNCTION_23_21();
            OUTLINED_FUNCTION_101_1();
            v71 = v369;
            v288 = OUTLINED_FUNCTION_99_2();
            v289(v288);
            OUTLINED_FUNCTION_165_2();
            sub_1DC3DE3B4();
            OUTLINED_FUNCTION_149_0();

            v290 = OUTLINED_FUNCTION_100_3();
            v291(v290);
          }

          while ((v86 & 1) == 0);
          sub_1DC517B9C();
          v292 = OUTLINED_FUNCTION_160_1();
          v293 = v360;
          v333(v337, v341, v360);
          if (os_log_type_enabled(v292, v86))
          {
            OUTLINED_FUNCTION_140();
            v294 = OUTLINED_FUNCTION_83_5();
            OUTLINED_FUNCTION_135_1(v294);
            *v71 = 136315394;
            v295 = v351;
            OUTLINED_FUNCTION_36_7(v351, v388);
            v370 = v292;
            v296 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
            OUTLINED_FUNCTION_162_4(v296, v297);
            LODWORD(v369) = v86;
            OUTLINED_FUNCTION_99_1();
            OUTLINED_FUNCTION_63_9();
            OUTLINED_FUNCTION_123_0();
            OUTLINED_FUNCTION_75_5();
            v299 = *(v298 + 8);
            v300 = OUTLINED_FUNCTION_153_2();
            v299(v300);
            OUTLINED_FUNCTION_86_4();
            OUTLINED_FUNCTION_168_2();
            *(v71 + 14) = v295;
            v86 = v370;
            _os_log_impl(&dword_1DC287000, v370, v369, "[MessageRule] triggered by isCheckRequestSummariseMessageWithQuery with stringContent/subject. Updating routing from %s to %s", v71, 0x16u);
            OUTLINED_FUNCTION_62_11();
            OUTLINED_FUNCTION_42();
            v301 = v299;
            OUTLINED_FUNCTION_66();

            v302 = v359;
          }

          else
          {

            OUTLINED_FUNCTION_75_5();
            v301 = *(v327 + 8);
            v328 = OUTLINED_FUNCTION_153_2();
            v301(v328);
            v302 = v359;
            v295 = v351;
          }

          OUTLINED_FUNCTION_36_7(v295, v390);
          OUTLINED_FUNCTION_149_2();
          v329 = v341;
          sub_1DC32DE40();
          (v301)(v329, v293);
          OUTLINED_FUNCTION_142(v295, v389);
          (*(v43 + 40))(v295, v86, v293);
          v17 = v364;
          v89 = v302;
          isa = v293;
          goto LABEL_55;
        }
      }

      sub_1DC28EB30(v141, &qword_1ECC7CA40, &unk_1DC5233A0);
    }
  }

LABEL_43:
  v145 = v352;
  sub_1DC3447D4();
  OUTLINED_FUNCTION_84_6();
  OUTLINED_FUNCTION_126_1();
  if (v95)
  {
    v147 = v145 == v146;
  }

  else
  {
    v147 = 0;
  }

  if (v147)
  {
  }

  else
  {
    OUTLINED_FUNCTION_52_12();
    OUTLINED_FUNCTION_91_2();

    if ((v71 & 1) == 0)
    {
      v148 = sub_1DC3447D4();
      sub_1DC312F68(v148, v149);
      OUTLINED_FUNCTION_43_0();
      if (v95)
      {
        v154 = v347;
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v151, v152, v153, isa);
      }

      else
      {
        v154 = v347;
        sub_1DC312E7C(v150, v347);
        v155 = OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_39(v155, v156, isa);
        if (!v157)
        {
          v303 = isa;
          isa = v340;
          OUTLINED_FUNCTION_26_1();
          v304();
          v305 = v345;
          (*(v43 + 104))(v345, *MEMORY[0x1E69D02F8], v303);
          v306 = sub_1DC5157DC();
          v309 = *(v43 + 8);
          v308 = (v43 + 8);
          v307 = v309;
          (v309)(v305, v303);
          if (v306)
          {
            v369 = v307;
            v370 = v308;
            OUTLINED_FUNCTION_13_22();
            v382 = v310;
            v311 = v371;
            v312 = v364;
            do
            {
              if (isa == v17)
              {
                OUTLINED_FUNCTION_129_1();
                v369();
                v89 = v359;
                v43 = v363;
                goto LABEL_146;
              }

              OUTLINED_FUNCTION_142_2();
              if (v246)
              {
                goto LABEL_151;
              }

              OUTLINED_FUNCTION_23_21();
              v313 = v368;
              v314 = OUTLINED_FUNCTION_99_2();
              v315(v314);
              OUTLINED_FUNCTION_165_2();
              sub_1DC3DF7B4();
              OUTLINED_FUNCTION_149_0();

              (*(v311 + 8))(v313, v312);
            }

            while ((v303 & 1) == 0);
            sub_1DC517B9C();
            v197 = OUTLINED_FUNCTION_160_1();
            v167 = v336;
            isa = v340;
            v17 = v360;
            v333(v336, v340, v360);
            if (os_log_type_enabled(v197, v303))
            {
              OUTLINED_FUNCTION_140();
              v316 = OUTLINED_FUNCTION_83_5();
              v317 = OUTLINED_FUNCTION_135_1(v316);
              *v313 = 136315394;
              OUTLINED_FUNCTION_77_5(v317, v388);
              v318 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
              OUTLINED_FUNCTION_162_4(v318, v319);
              OUTLINED_FUNCTION_99_1();
              OUTLINED_FUNCTION_63_9();
              OUTLINED_FUNCTION_123_0();
              v43 = v369;
              (v369)(v167, v17);
              OUTLINED_FUNCTION_86_4();
              OUTLINED_FUNCTION_168_2();
              *(v313 + 14) = v305;
              _os_log_impl(&dword_1DC287000, v197, v303, "[MessageRule] triggered by isCheckRequestSummariseMessageWithoutQuery without stringContent/subject. Updating routing from %s to %s", v313, 0x16u);
              OUTLINED_FUNCTION_62_11();
              OUTLINED_FUNCTION_42();
              isa = v340;
              OUTLINED_FUNCTION_66();
            }

            else
            {
LABEL_144:

              v43 = v369;
              (v369)(v167, v17);
              v305 = v351;
            }

            OUTLINED_FUNCTION_36_7(v305, v390);
            OUTLINED_FUNCTION_149_2();
            sub_1DC32DE40();
            (v43)(isa, v17);
            OUTLINED_FUNCTION_142(v305, v389);
            OUTLINED_FUNCTION_75_5();
            (*(v330 + 40))(v305, v303, v17);
            v89 = v359;
            isa = v17;
LABEL_146:
            v17 = v364;
          }

          else
          {
            (v307)(isa, v303);
            v89 = v359;
            isa = v303;
            v43 = v363;
          }

          goto LABEL_55;
        }
      }

      sub_1DC28EB30(v154, &qword_1ECC7CA40, &unk_1DC5233A0);
    }
  }

LABEL_55:
  v158 = (v89 + v335);
  v159 = v383;
  v333(v383, v158, isa);
  v160 = (*(v43 + 88))(v159, isa);
  v161 = *MEMORY[0x1E69D02C8];
  v341 = *(v43 + 8);
  (v341)(v159, isa);
  v340 = (v43 + 8);
  if (v160 != v161)
  {
    v167 = v378;
LABEL_80:
    v172 = v361;
    goto LABEL_81;
  }

  v162 = sub_1DC345ED0();
  v164 = v163;
  v166 = v162 == sub_1DC313520(1) && v164 == v165;
  v167 = v378;
  if (v166)
  {
  }

  else
  {
    v168 = sub_1DC51825C();

    if ((v168 & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  v169 = 0;
  v170 = *v357;
  v347 = v371 + 16;
  v370 = v365 + 2;
  v348 = *(v170 + 16);
  v171 = v365 + 1;
  v368 = v350 + 8;
  v369 = (v349 + 8);
  v346 = (v371 + 8);
  v172 = v361;
  v173 = v381;
  v343 = v170;
  v382 = v365 + 1;
  while (1)
  {
    if (v169 == v348)
    {
      v167 = v378;
LABEL_81:
      v303 = 0;
      v196 = *v357;
      v382 = v365 + 2;
      v368 = *(v196 + 16);
      v379 = (v349 + 8);
      v374 = (v350 + 8);
      v381 = v365 + 1;
      v366 = v371 + 16;
      v367 = v371 + 8;
      v197 = v377;
      v362 = v196;
      while (v303 != v368)
      {
        if (v303 >= *(v196 + 16))
        {
          __break(1u);
          goto LABEL_144;
        }

        OUTLINED_FUNCTION_23_21();
        (*(v199 + 16))(v373, v198 + *(v199 + 72) * v303, v17);
        v200 = sub_1DC5111AC();
        isa = v200[2].isa;
        if (isa)
        {
          v369 = v303;
          v370 = v200;
          OUTLINED_FUNCTION_24();
          v203 = v201 + v202;
          v383 = *(v204 + 72);
          v205 = *(v204 + 16);
          while (1)
          {
            v205(v172, v203, v167);
            v206 = v172;
            if (sub_1DC5114CC())
            {
              v207 = v380;
              sub_1DC51154C();
              v208 = sub_1DC51177C();
              v209 = *v379;
              (*v379)(v207, v197);
              if (v208)
              {
                type metadata accessor for NLRouterBypassUtils();
                v210 = v380;
                OUTLINED_FUNCTION_163_1();
                v211 = v375;
                sub_1DC51178C();
                v212 = v210;
                v167 = v378;
                v209(v212, v377);
                v213 = sub_1DC307E5C(v211);
                v214 = v211;
                v197 = v377;
                (*v374)(v214, v376);
                if (v213)
                {
                  break;
                }
              }
            }

            v215 = OUTLINED_FUNCTION_78_6();
            v216(v215);
            v203 += v383;
            --isa;
            v172 = v206;
            if (!isa)
            {

              v43 = v363;
              v17 = v364;
LABEL_91:
              v303 = v369;
              v196 = v362;
              goto LABEL_93;
            }
          }

          sub_1DC51478C();

          v219 = OUTLINED_FUNCTION_78_6();
          v220(v219);
          v394[0] = v395;
          v394[1] = v396;
          if (!*(&v396 + 1))
          {
            sub_1DC28EB30(v394, &qword_1ECC7D3F0, &qword_1DC5238B0);

            v43 = v363;
            v17 = v364;
            v172 = v361;
            goto LABEL_91;
          }

          sub_1DC514A0C();
          v221 = swift_dynamicCast();
          v43 = v363;
          v17 = v364;
          v303 = v369;
          v196 = v362;
          if (v221)
          {

            v222 = OUTLINED_FUNCTION_132_2();
            v223(v222);
            if (sub_1DC307DE8(*(v359 + *(v332 + 24))))
            {
              sub_1DC517B9C();
              v224 = OUTLINED_FUNCTION_160_1();
              v225 = OUTLINED_FUNCTION_62_1();
              sub_1DC516F0C(v225, v226, v227, v228, 63, 2);

              v229 = v351;
              OUTLINED_FUNCTION_36_7(v351, &v392);
              OUTLINED_FUNCTION_149_2();
              sub_1DC32CDF4();
              OUTLINED_FUNCTION_142(v229, &v391);
              v230 = OUTLINED_FUNCTION_145_4();
              v231(v230);
            }

            break;
          }

          v172 = v361;
        }

        else
        {
        }

LABEL_93:
        ++v303;
        v217 = OUTLINED_FUNCTION_132_2();
        v218(v217);
      }

      v232 = sub_1DC3448B0();
      v233 = v356;
      v234 = v360;
      v235 = v351;
      if (v232)
      {
        v236 = v344;
        sub_1DC3E0BB4();
        v237 = OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_39(v237, v238, v234);
        if (v95)
        {
          sub_1DC28EB30(v236, &qword_1ECC7CA40, &unk_1DC5233A0);
        }

        else
        {
          v239 = v342;
          (*(v43 + 32))(v342, v236, v234);
          OUTLINED_FUNCTION_36_7(v235, v394);
          v240 = v345;
          sub_1DC32DE40();
          (v341)(v239, v234);
          OUTLINED_FUNCTION_142(v235, &v393);
          (*(v43 + 40))(v235, v240, v234);
        }
      }

      OUTLINED_FUNCTION_36_7(v235, &v395);
      v241 = sub_1DC5157DC();
      sub_1DC2E5408(v357, type metadata accessor for NLRouterNLParseResponse);
      if (v241)
      {
        v242 = 1;
      }

      else
      {
        v333(v233, v235, v234);
        v242 = 0;
      }

      v100 = v354;
      v99 = v355;
      v101 = v353;
      __swift_storeEnumTagSinglePayload(v233, v242, 1, v234);
      (v341)(v235, v234);
      goto LABEL_109;
    }

    if (v169 >= *(v170 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_24();
    v177 = *(v176 + 72);
    v366 = v169;
    (*(v176 + 16))(v367, v175 + v174 + v177 * v169, v17);
    isa = *(sub_1DC5111AC() + 16);
    if (isa)
    {
      OUTLINED_FUNCTION_24();
      v362 = v178;
      v180 = v178 + v179;
      v182 = *(v181 + 72);
      v183 = *(v181 + 16);
      v184 = v369;
      v383 = v183;
      while (1)
      {
        v183(v173, v180, v378);
        if (sub_1DC5114CC())
        {
          v185 = v380;
          sub_1DC51154C();
          v186 = sub_1DC51177C();
          v187 = *v184;
          v188 = v185;
          v189 = v377;
          (*v184)(v188, v377);
          if (v186)
          {
            v190 = v374;
            sub_1DC51154C();
            sub_1DC51178C();
            v187(v190, v189);
            v191 = v372;
            sub_1DC5138FC();
            if (!v191)
            {
              v372 = 0;
              v194 = OUTLINED_FUNCTION_127_2();
              v195(v194);
              sub_1DC3E1F44();
              OUTLINED_FUNCTION_149_0();

              v173 = v381;
              v171 = v382;
              (v382->isa)(v381, v378);
              v184 = v369;
              v183 = v383;
              goto LABEL_74;
            }

            v192 = OUTLINED_FUNCTION_127_2();
            v193(v192);
            v372 = 0;
            v173 = v381;
            v184 = v369;
          }

          v171 = v382;
          v183 = v383;
        }

        (v171->isa)(v173, v378);
LABEL_74:
        v180 += v182;
        if (!--isa)
        {

          v43 = v363;
          v17 = v364;
          v172 = v361;
          goto LABEL_78;
        }
      }
    }

LABEL_78:
    v169 = v366 + 1;
    (*v346)(v367, v17);
    v170 = v343;
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

void sub_1DC3DD07C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = sub_1DC514BFC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v6);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C258, &qword_1DC523078);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_0(&v81 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C260, &unk_1DC523080);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_1();
  v104 = v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  v109 = v17;
  OUTLINED_FUNCTION_12();
  v89 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v21);
  v90 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  v81 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  v34 = *(v1 + 16);
  if (!v34)
  {
LABEL_44:
    OUTLINED_FUNCTION_34();
    return;
  }

  v85 = v13;
  v35 = 0;
  v36 = v29 + 16;
  OUTLINED_FUNCTION_24();
  v107 = v1 + v37;
  v108 = v38;
  v105 = v36 - 8;
  v101 = (v23 + 8);
  v86 = v19 + 8;
  v97 = *MEMORY[0x1E69D20A8];
  v96 = v4 + 104;
  OUTLINED_FUNCTION_141_2(v4 + 32);
  v106 = *(v36 + 56);
  v39 = v81;
  OUTLINED_FUNCTION_91_3();
  v102 = v2;
  v103 = v27;
  v99 = v34;
  v100 = v36;
  while (1)
  {
    v108(v33, v107 + v106 * v35, v39);
    if (sub_1DC5114CC())
    {
      break;
    }

    v71 = OUTLINED_FUNCTION_38_11();
    v72(v71, v39);
LABEL_41:
    if (++v35 == v34)
    {
      goto LABEL_44;
    }
  }

  sub_1DC51154C();
  v40 = sub_1DC51177C();
  v41 = *v101;
  (*v101)(v27, v1);
  if ((v40 & 1) == 0)
  {
    v73 = OUTLINED_FUNCTION_38_11();
    v74(v73, v39);
LABEL_40:
    v34 = v99;
    goto LABEL_41;
  }

  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  v42 = v88;
  sub_1DC51178C();
  v41(v27, v1);
  v43 = sub_1DC307E5C(v42);
  OUTLINED_FUNCTION_37();
  v44(v42, v89);
  if (!v43)
  {
LABEL_35:
    v75 = OUTLINED_FUNCTION_38_11();
    v76(v75, v39);
    OUTLINED_FUNCTION_91_3();
    v27 = v103;
    goto LABEL_40;
  }

  sub_1DC51478C();

  sub_1DC28F358(v112, v111, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v1 = v87;
  if (!v111[3])
  {
    sub_1DC28EB30(v111, &qword_1ECC7D3F0, &qword_1DC5238B0);

    sub_1DC28EB30(v112, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_35;
  }

  v83 = v43;
  sub_1DC51497C();
  v45 = swift_dynamicCast();
  v27 = v103;
  if (!v45)
  {
    OUTLINED_FUNCTION_86();
    goto LABEL_38;
  }

  v46 = v110;

  sub_1DC51475C();

  if (!v111[0] || (v47 = sub_1DC51476C(), , !v47))
  {
    OUTLINED_FUNCTION_86();

LABEL_38:

    sub_1DC28EB30(v112, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v77 = OUTLINED_FUNCTION_38_11();
LABEL_39:
    v78(v77, v39);
    OUTLINED_FUNCTION_91_3();
    goto LABEL_40;
  }

  v95 = sub_1DC2C20B8(v47);
  v48 = 0;
  v94 = v47 & 0xC000000000000001;
  v93 = v47 & 0xFFFFFFFFFFFFFF8;
  v92 = v46;
  for (i = v47; ; v47 = i)
  {
    if (v95 == v48)
    {
      OUTLINED_FUNCTION_86();

      sub_1DC28EB30(v112, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v77 = OUTLINED_FUNCTION_38_11();
      v39 = v81;
      goto LABEL_39;
    }

    if (v94)
    {
      MEMORY[0x1E1296800](v48, v47);
    }

    else
    {
      if (v48 >= *(v93 + 16))
      {
        goto LABEL_47;
      }
    }

    if (__OFADD__(v48, 1))
    {
      break;
    }

    sub_1DC5146BC();
    if (v111[0] && (sub_1DC5148CC(), OUTLINED_FUNCTION_10_15(), v41))
    {
      sub_1DC514BEC();

      v41 = v102;
    }

    else
    {
      OUTLINED_FUNCTION_19();
      v41 = v102;
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v102);
    }

    OUTLINED_FUNCTION_37();
    v52 = v104;
    v53(v104, v97, v41);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v41);
    v57 = *(v98 + 48);
    sub_1DC28F358(v109, v1, &qword_1ECC7C260, &unk_1DC523080);
    sub_1DC28F358(v52, v1 + v57, &qword_1ECC7C260, &unk_1DC523080);
    OUTLINED_FUNCTION_39(v1, 1, v41);
    if (v64)
    {

      sub_1DC28EB30(v104, &qword_1ECC7C260, &unk_1DC523080);
      sub_1DC28EB30(v109, &qword_1ECC7C260, &unk_1DC523080);
      v58 = OUTLINED_FUNCTION_143_1();
      OUTLINED_FUNCTION_39(v58, v59, v41);
      v27 = v103;
      if (v64)
      {
        sub_1DC28EB30(v1, &qword_1ECC7C260, &unk_1DC523080);
LABEL_45:
        OUTLINED_FUNCTION_86();

        OUTLINED_FUNCTION_78();

        sub_1DC28EB30(v112, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v79 = OUTLINED_FUNCTION_38_11();
        v80(v79, v81);
        goto LABEL_44;
      }

      goto LABEL_28;
    }

    v60 = v104;
    v61 = v85;
    sub_1DC28F358(v1, v85, &qword_1ECC7C260, &unk_1DC523080);
    v62 = OUTLINED_FUNCTION_143_1();
    OUTLINED_FUNCTION_39(v62, v63, v41);
    if (v64)
    {

      sub_1DC28EB30(v60, &qword_1ECC7C260, &unk_1DC523080);
      sub_1DC28EB30(v109, &qword_1ECC7C260, &unk_1DC523080);
      OUTLINED_FUNCTION_37();
      v65(v61, v41);
      v27 = v103;
LABEL_28:
      sub_1DC28EB30(v1, &qword_1ECC7C258, &qword_1DC523078);
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_37();
    v66 = v1 + v57;
    v67 = v82;
    v68(v82, v66, v41);
    sub_1DC3E323C(&qword_1ECC7C268, MEMORY[0x1E69D2110], MEMORY[0x1E69D2120]);
    v69 = sub_1DC5176CC();

    v41 = *v84;
    v70 = v67;
    v1 = v87;
    (*v84)(v70, v102);
    sub_1DC28EB30(v60, &qword_1ECC7C260, &unk_1DC523080);
    sub_1DC28EB30(v109, &qword_1ECC7C260, &unk_1DC523080);
    v41(v61, v102);
    sub_1DC28EB30(v1, &qword_1ECC7C260, &unk_1DC523080);
    v27 = v103;
    if (v69)
    {
      goto LABEL_45;
    }

LABEL_30:
    ++v48;
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

void sub_1DC3DDA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v141 = sub_1DC5149BC();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v27);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_20_0(v131 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v31 = OUTLINED_FUNCTION_10(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  v34 = v32 - v33;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = v131 - v37;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v39);
  v145 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_1();
  v144 = v43;
  OUTLINED_FUNCTION_12();
  v149 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_1();
  v49 = v48 - v47;
  v50 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_1();
  v55 = v54 - v53;
  v56 = *(v23 + 16);
  if (!v56)
  {
    goto LABEL_28;
  }

  v139 = v38;
  v138 = v34;
  v150 = *(v52 + 16);
  OUTLINED_FUNCTION_24();
  v58 = v23 + v57;
  v60 = v59 - 8;
  v148 = (v45 + 8);
  v143 = v41 + 8;
  v135 = *MEMORY[0x1E69D1D40];
  v134 = v25 + 104;
  OUTLINED_FUNCTION_141_2(v25 + 32);
  v62 = *(v61 + 56);
  v63 = v61;
  v147 = v62;
  v133 = v61;
  while (1)
  {
    v150(v55, v58, v50);
    if (sub_1DC5114CC())
    {
      break;
    }

    v77 = OUTLINED_FUNCTION_30_16();
    v78(v77);
LABEL_17:
    v58 += v62;
    if (!--v56)
    {
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_163_1();
  v64 = sub_1DC51177C();
  v65 = *v148;
  (*v148)(v49, v149);
  if ((v64 & 1) == 0 || (type metadata accessor for NLRouterBypassUtils(), OUTLINED_FUNCTION_163_1(), v146 = v56, v66 = v55, v67 = v60, v68 = v50, v69 = v63, v70 = v144, sub_1DC51178C(), v65(v49, v149), v71 = sub_1DC307E5C(v70), OUTLINED_FUNCTION_37(), v72 = v70, v63 = v69, v50 = v68, v60 = v67, v55 = v66, v56 = v146, v73(v72, v145), !v71))
  {
    v79 = OUTLINED_FUNCTION_30_16();
    v80(v79);
LABEL_13:
    v62 = v147;
    goto LABEL_17;
  }

  sub_1DC51478C();

  sub_1DC28F358(v155, v154, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v154[3])
  {

    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v81, v82, v83);
    v84 = OUTLINED_FUNCTION_30_16();
    v85(v84);
LABEL_16:
    v62 = v147;
    sub_1DC28EB30(v154, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_17;
  }

  sub_1DC28F358(v154, v153, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC51493C();
  if (!swift_dynamicCast())
  {

    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v86, v87, v88);
    v89 = OUTLINED_FUNCTION_30_16();
    v90(v89);
    __swift_destroy_boxed_opaque_existential_1Tm(v153);
    goto LABEL_16;
  }

  v74 = v152;

  sub_1DC5148BC();
  v136 = v74;

  if (v151 && (v75 = sub_1DC51477C(), , v75))
  {
    sub_1DC5149AC();

    v76 = v141;
  }

  else
  {
    v91 = OUTLINED_FUNCTION_28_14(&a17);
    v76 = v141;
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v141);
  }

  OUTLINED_FUNCTION_37();
  v94 = v139;
  v95(v139, v135, v76);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v76);
  v99 = *(v137 + 48);
  v100 = OUTLINED_FUNCTION_34_3();
  v101 = v142;
  sub_1DC28F358(v100, v142, &qword_1ECC7C200, &qword_1DC523020);
  v140 = v99;
  sub_1DC28F358(v94, v101 + v99, &qword_1ECC7C200, &qword_1DC523020);
  v102 = v101;
  v103 = v141;
  OUTLINED_FUNCTION_39(v102, 1, v141);
  if (v113)
  {

    sub_1DC28EB30(v94, &qword_1ECC7C200, &qword_1DC523020);
    v104 = OUTLINED_FUNCTION_34_3();
    sub_1DC28EB30(v104, &qword_1ECC7C200, &qword_1DC523020);
    sub_1DC28EB30(v155, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v105 = OUTLINED_FUNCTION_30_16();
    v106(v105);
    v107 = v142;
    v108 = OUTLINED_FUNCTION_29_6(&a14);
    OUTLINED_FUNCTION_39(v108, v109, v110);
    v111 = v107;
    v63 = v133;
    if (!v113)
    {
      goto LABEL_30;
    }

    sub_1DC28EB30(v107, &qword_1ECC7C200, &qword_1DC523020);
    goto LABEL_27;
  }

  v112 = v142;
  sub_1DC28F358(v142, v138, &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_39(v112 + v140, 1, v103);
  v63 = v133;
  if (!v113)
  {
    OUTLINED_FUNCTION_37();
    v114 = v132;
    v115(v132, v112 + v140, v103);
    OUTLINED_FUNCTION_0_50();
    sub_1DC3E323C(&qword_1ECC7C208, v116, MEMORY[0x1E69D1D50]);
    OUTLINED_FUNCTION_11_23(&a12);
    LODWORD(v140) = sub_1DC5176CC();

    v136 = *v131[2];
    v136(v114, v103);
    v117 = OUTLINED_FUNCTION_69_7();
    sub_1DC28EB30(v117, &qword_1ECC7C200, &qword_1DC523020);
    v118 = OUTLINED_FUNCTION_34_3();
    sub_1DC28EB30(v118, &qword_1ECC7C200, &qword_1DC523020);
    sub_1DC28EB30(v155, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v119 = OUTLINED_FUNCTION_30_16();
    v120(v119);
    v121 = OUTLINED_FUNCTION_88_2(&a12);
    (v136)(v121);
    v56 = v146;
    sub_1DC28EB30(v142, &qword_1ECC7C200, &qword_1DC523020);
    if ((v140 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_27:
    __swift_destroy_boxed_opaque_existential_1Tm(v153);
    sub_1DC28EB30(v154, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_13;
  }

  v122 = OUTLINED_FUNCTION_11_23(&a13);
  sub_1DC28EB30(v122, v123, v124);
  v125 = OUTLINED_FUNCTION_11_23(&a17);
  sub_1DC28EB30(v125, v126, v127);
  sub_1DC28EB30(v155, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v128 = OUTLINED_FUNCTION_30_16();
  v129(v128);
  OUTLINED_FUNCTION_37();
  v130(v138, v103);
  v111 = v112;
LABEL_30:
  sub_1DC28EB30(v111, &qword_1ECC7C238, &qword_1DC527190);
LABEL_31:
  __swift_destroy_boxed_opaque_existential_1Tm(v153);
  sub_1DC28EB30(v154, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_28:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3DE3B4()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = sub_1DC5149BC();
  OUTLINED_FUNCTION_0();
  v271 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v7);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_52_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v17 = OUTLINED_FUNCTION_10(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v29);
  v270 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v34);
  v35 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v37);
  v38 = OUTLINED_FUNCTION_155_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v40);
  v41 = *(v3 + 16);
  if (!v41)
  {
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_53_13();
  v269 = v31 + 8;
  OUTLINED_FUNCTION_47_10(*MEMORY[0x1E69D1D40]);
  while (1)
  {
    v42 = OUTLINED_FUNCTION_134_1();
    v43(v42);
    if (sub_1DC5114CC())
    {
      break;
    }

    v51 = OUTLINED_FUNCTION_2_30();
    v52(v51);
LABEL_14:
    v3 += v4;
    if (!--v41)
    {
      goto LABEL_75;
    }
  }

  OUTLINED_FUNCTION_156_1();
  sub_1DC51177C();
  v44 = OUTLINED_FUNCTION_112_5();
  (v11)(v44);
  if ((v0 & 1) == 0)
  {
    v53 = OUTLINED_FUNCTION_2_30();
    v54(v53);
LABEL_12:
    v4 = v41;
LABEL_13:
    v41 = v271;
    goto LABEL_14;
  }

  v45 = type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  OUTLINED_FUNCTION_20_3();
  sub_1DC51178C();
  (v11)(v0, v35);
  sub_1DC307E5C(v0);
  v46 = OUTLINED_FUNCTION_147_2();
  v47 = (v45)(v46);
  if (!v45)
  {
    v55 = OUTLINED_FUNCTION_2_30();
    v56(v55);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_105_1(v47);
  OUTLINED_FUNCTION_119_4();
  v48 = OUTLINED_FUNCTION_133_2();
  (v11)(v48);
  OUTLINED_FUNCTION_158_1();
  if (v38)
  {

    OUTLINED_FUNCTION_34_3();

    (v45)(v45, v270);
    OUTLINED_FUNCTION_34_15();
    v49 = OUTLINED_FUNCTION_44_11();
    v50(v49);
    OUTLINED_FUNCTION_80_6();
    v35 = v1;
    v1 = v0;
LABEL_11:
    OUTLINED_FUNCTION_43_13();
    goto LABEL_12;
  }

  v57 = OUTLINED_FUNCTION_110_5();
  (v45)(v57);
  sub_1DC3E1F44();
  v4 = v41;
  if ((v58 & 1) == 0)
  {
    OUTLINED_FUNCTION_34_15();
    v0 = v266;
    v66 = OUTLINED_FUNCTION_44_11();
    v67(v66);
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_95_3();
    goto LABEL_13;
  }

  v59 = v268[0];

  sub_1DC51478C();

  v0 = &qword_1ECC7D3F0;
  v11 = &qword_1DC5238B0;
  sub_1DC28F358(&v281, v278, &qword_1ECC7D3F0, &qword_1DC5238B0);
  OUTLINED_FUNCTION_85_7();
  if (!v60)
  {

    sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_34_15();
    v68 = OUTLINED_FUNCTION_107_4();
    v69(v68);
    OUTLINED_FUNCTION_41_8();
LABEL_24:
    OUTLINED_FUNCTION_123_3();
    goto LABEL_66;
  }

  OUTLINED_FUNCTION_104_2();
  sub_1DC514A9C();
  v61 = OUTLINED_FUNCTION_15_14();
  v0 = MEMORY[0x1E69E7CA0];
  v35 = v1;
  if (OUTLINED_FUNCTION_118_2(v61, v62, v63, v64))
  {
    OUTLINED_FUNCTION_117_6();
    sub_1DC51392C();
    OUTLINED_FUNCTION_78_9();

    v65 = v272;
    OUTLINED_FUNCTION_92_3();
    if (v65 && (v0 = sub_1DC51477C(), , v0))
    {
      OUTLINED_FUNCTION_136_2();
      v65 = v0;
      sub_1DC5149AC();
    }

    else
    {
      OUTLINED_FUNCTION_136_2();
      OUTLINED_FUNCTION_22_14();
      __swift_storeEnumTagSinglePayload(v81, v82, v83, *(v80 - 256));
    }

    OUTLINED_FUNCTION_59_8();
    OUTLINED_FUNCTION_26_14();
    v84 = OUTLINED_FUNCTION_72_7();
    v85(v84);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v45);
    v45 = *(v264 + 48);
    OUTLINED_FUNCTION_74_6();
    sub_1DC28F358(v89, v90, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_152_1();
    sub_1DC28F358(v65, &qword_1DC5238B0 + v45, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_4_29(&qword_1DC5238B0);
    if (!v107)
    {
      OUTLINED_FUNCTION_82_5(&v284);
      OUTLINED_FUNCTION_74_6();
      sub_1DC28F358(v105, v106, &qword_1ECC7C200, &qword_1DC523020);
      OUTLINED_FUNCTION_151_2();
      OUTLINED_FUNCTION_4_29(v45 + v65);
      if (!v107)
      {
        OUTLINED_FUNCTION_18_19();
        v108 = OUTLINED_FUNCTION_6_23();
        v109(v108);
        OUTLINED_FUNCTION_0_50();
        sub_1DC3E323C(&qword_1ECC7C208, v110, MEMORY[0x1E69D1D50]);
        OUTLINED_FUNCTION_16_12(&v280);
        LODWORD(v259) = sub_1DC5176CC();
        OUTLINED_FUNCTION_34_3();

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_36_17();

        OUTLINED_FUNCTION_148_1();
        OUTLINED_FUNCTION_58_11();
        (qword_1DC5238B0)();
        v111 = OUTLINED_FUNCTION_39_10(&v281);
        sub_1DC28EB30(v111, v112, &qword_1DC523020);
        v113 = OUTLINED_FUNCTION_39_10(&v283);
        sub_1DC28EB30(v113, v114, &qword_1DC523020);
        sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v115 = OUTLINED_FUNCTION_2_30();
        v116(v115);
        v117 = OUTLINED_FUNCTION_37_10(&v280);
        (qword_1DC5238B0)(v117);
        v118 = OUTLINED_FUNCTION_39_10(&v284);
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_79_7();
      OUTLINED_FUNCTION_36_17();

      v224 = OUTLINED_FUNCTION_11_23(&v281);
      sub_1DC28EB30(v224, v225, v226);
      v227 = OUTLINED_FUNCTION_11_23(&v283);
      sub_1DC28EB30(v227, v228, v229);
      sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v230 = OUTLINED_FUNCTION_2_30();
      v231(v230);
      OUTLINED_FUNCTION_24_13();
      OUTLINED_FUNCTION_73_6();
LABEL_78:
      v234(v232, v233);
      v137 = v45;
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_36_17();

    v11 = &qword_1ECC7C200;
    sub_1DC28EB30(v65, &qword_1ECC7C200, &qword_1DC523020);
    v91 = OUTLINED_FUNCTION_89_4(&v283);
    sub_1DC28EB30(v91, v92, &qword_1DC523020);
    sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v93 = OUTLINED_FUNCTION_2_30();
    v94(v93);
    v79 = v265;
    v95 = OUTLINED_FUNCTION_25_13(&v267);
LABEL_44:
    OUTLINED_FUNCTION_39(v95, v96, v97);
    v137 = v79;
    if (!v107)
    {
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_90_0();
LABEL_47:
    sub_1DC28EB30(v138, v139, v140);
LABEL_65:
    v70 = OUTLINED_FUNCTION_169_2();
    v71 = &qword_1ECC7D3F0;
    v72 = &qword_1DC5238B0;
LABEL_66:
    sub_1DC28EB30(v70, v71, v72);
    OUTLINED_FUNCTION_95_3();
    goto LABEL_14;
  }

  sub_1DC514DAC();
  v73 = OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_118_2(v73, v74, v75, v76);
  OUTLINED_FUNCTION_92_3();
  if (v77)
  {
    OUTLINED_FUNCTION_117_6();
    sub_1DC5148BC();
    v259 = v59;

    v78 = v272;
    OUTLINED_FUNCTION_59_8();
    if (v78 && (v45 = sub_1DC51477C(), , v45))
    {
      v79 = v45;
      sub_1DC5149AC();

      OUTLINED_FUNCTION_81_5();
    }

    else
    {
      OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_22_14();
      v79 = *(v121 - 256);
      __swift_storeEnumTagSinglePayload(v122, v123, v124, v79);
    }

    OUTLINED_FUNCTION_26_14();
    v125 = OUTLINED_FUNCTION_66_9();
    v126(v125, v262, v79);
    OUTLINED_FUNCTION_12_20(v45);
    v11 = *(v127 + 48);
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_139_1();
    sub_1DC28F358(v128, v79, &qword_1ECC7C200, &qword_1DC523020);
    v129 = OUTLINED_FUNCTION_121_2();
    sub_1DC28F358(v129, v130, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_81_5();
    OUTLINED_FUNCTION_39(v131, 1, v79);
    if (v107)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_67_4();

      OUTLINED_FUNCTION_36_17();

      v11 = &qword_1ECC7C200;
      sub_1DC28EB30(v45, &qword_1ECC7C200, &qword_1DC523020);
      OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_90_0();
      sub_1DC28EB30(v132, v133, v134);
      sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v135 = OUTLINED_FUNCTION_2_30();
      v136(v135);
      OUTLINED_FUNCTION_139_1();
      v95 = OUTLINED_FUNCTION_29_6(v268);
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_82_5(&v279);
    OUTLINED_FUNCTION_74_6();
    sub_1DC28F358(v145, v146, &qword_1ECC7C200, &qword_1DC523020);
    v147 = OUTLINED_FUNCTION_40_14();
    OUTLINED_FUNCTION_39(v147, v148, v79);
    if (v149)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_67_4();

      OUTLINED_FUNCTION_36_17();

      v235 = OUTLINED_FUNCTION_49_11(v278);
      sub_1DC28EB30(v235, v236, &qword_1DC523020);
      v237 = OUTLINED_FUNCTION_49_11(v282);
      sub_1DC28EB30(v237, v238, &qword_1DC523020);
      sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v239 = OUTLINED_FUNCTION_2_30();
      v240(v239);
      OUTLINED_FUNCTION_24_13();
      v232 = v11;
      v233 = v79;
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_144_3();
    v150 = OUTLINED_FUNCTION_66_9();
    v151(v150);
    OUTLINED_FUNCTION_0_50();
    sub_1DC3E323C(&qword_1ECC7C208, v152, MEMORY[0x1E69D1D50]);
    OUTLINED_FUNCTION_16_12(&v277);
    v260 = sub_1DC5176CC();
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_67_4();

    OUTLINED_FUNCTION_36_17();

    OUTLINED_FUNCTION_42_12();
    OUTLINED_FUNCTION_58_11();
    v79();
    v153 = OUTLINED_FUNCTION_39_10(v278);
    sub_1DC28EB30(v153, v154, &qword_1DC523020);
    v155 = OUTLINED_FUNCTION_39_10(v282);
    sub_1DC28EB30(v155, v156, &qword_1DC523020);
    sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v157 = OUTLINED_FUNCTION_2_30();
    v158(v157);
    v159 = OUTLINED_FUNCTION_37_10(&v277);
    (v79)(v159);
    v160 = &v279;
    goto LABEL_63;
  }

  sub_1DC514B9C();
  v98 = OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_118_2(v98, v99, v100, v101);
  OUTLINED_FUNCTION_59_8();
  if (v102)
  {
    v103 = v273;

    sub_1DC514C8C();

    v104 = v272;
    OUTLINED_FUNCTION_152_1();
    if (v104 && (sub_1DC51477C(), OUTLINED_FUNCTION_10_15(), &qword_1DC5238B0))
    {
      OUTLINED_FUNCTION_159_1();
    }

    else
    {
      OUTLINED_FUNCTION_82_5(&v276);
      OUTLINED_FUNCTION_22_14();
      __swift_storeEnumTagSinglePayload(v162, v163, v164, *(v161 - 256));
    }

    OUTLINED_FUNCTION_26_14();
    v165 = OUTLINED_FUNCTION_10_22();
    v166(v165);
    OUTLINED_FUNCTION_12_20(&qword_1DC5238B0);
    v167 = OUTLINED_FUNCTION_109_4();
    sub_1DC28F358(v167, v168, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_78_9();
    sub_1DC28F358(&qword_1DC5238B0, v104 + v103, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_4_29(v103);
    if (v107)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_67_4();

      OUTLINED_FUNCTION_36_17();

      v11 = &qword_1ECC7C200;
      sub_1DC28EB30(&qword_1DC5238B0, &qword_1ECC7C200, &qword_1DC523020);
      v169 = OUTLINED_FUNCTION_89_4(&v276);
      sub_1DC28EB30(v169, v170, &qword_1DC523020);
      sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v171 = OUTLINED_FUNCTION_2_30();
      v172(v171);
      OUTLINED_FUNCTION_61_3();
      OUTLINED_FUNCTION_4_29(v103 + v173);
      v140 = &qword_1DC523020;
      v104 = v103;
      if (!v107)
      {
        goto LABEL_82;
      }

      v138 = v103;
      v139 = &qword_1ECC7C200;
      goto LABEL_47;
    }

    v179 = OUTLINED_FUNCTION_114_2();
    sub_1DC28F358(v179, v180, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_61_3();
    OUTLINED_FUNCTION_4_29(v104 + v181);
    v11 = v259;
    if (v182)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_36_17();

      v241 = OUTLINED_FUNCTION_49_11(&v274);
      sub_1DC28EB30(v241, v242, &qword_1DC523020);
      v243 = OUTLINED_FUNCTION_49_11(&v276);
      sub_1DC28EB30(v243, v244, &qword_1DC523020);
      sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v245 = OUTLINED_FUNCTION_2_30();
      v246(v245);
      v247 = OUTLINED_FUNCTION_14_12();
      v248(v247);
LABEL_82:
      v137 = v104;
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_144_3();
    v183 = OUTLINED_FUNCTION_6_23();
    v184(v183);
    OUTLINED_FUNCTION_0_50();
    sub_1DC3E323C(&qword_1ECC7C208, v185, MEMORY[0x1E69D1D50]);
    OUTLINED_FUNCTION_16_12(&v273);
    v260 = sub_1DC5176CC();
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_36_17();

    OUTLINED_FUNCTION_42_12();
    OUTLINED_FUNCTION_58_11();
    v104();
    v186 = OUTLINED_FUNCTION_39_10(&v274);
    sub_1DC28EB30(v186, v187, &qword_1DC523020);
    v188 = OUTLINED_FUNCTION_39_10(&v276);
    sub_1DC28EB30(v188, v189, &qword_1DC523020);
    sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v190 = OUTLINED_FUNCTION_2_30();
    v191(v190);
    v192 = OUTLINED_FUNCTION_37_10(&v273);
    (v104)(v192);
    v160 = &v269;
LABEL_63:
    v193 = OUTLINED_FUNCTION_39_10(v160);
    sub_1DC28EB30(v193, v194, &qword_1DC523020);
    v120 = v268;
LABEL_64:
    if ((*(v120 - 32) & 1) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_65;
  }

  sub_1DC514C4C();
  v141 = OUTLINED_FUNCTION_15_14();
  if (!OUTLINED_FUNCTION_45_6(v141, v142, v143, v144))
  {
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_36_17();

    OUTLINED_FUNCTION_123_3();
    sub_1DC28EB30(v174, v175, v176);
    v177 = OUTLINED_FUNCTION_2_30();
    v178(v177);
    __swift_destroy_boxed_opaque_existential_1Tm(&v274);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_117_6();
  sub_1DC5148BC();
  OUTLINED_FUNCTION_78_9();

  if (v272 && (sub_1DC51477C(), OUTLINED_FUNCTION_10_15(), &qword_1DC5238B0))
  {
    sub_1DC5149AC();
  }

  else
  {
    OUTLINED_FUNCTION_65_4();
    OUTLINED_FUNCTION_22_14();
    __swift_storeEnumTagSinglePayload(v196, v197, v198, *(v195 - 256));
  }

  OUTLINED_FUNCTION_26_14();
  v199 = OUTLINED_FUNCTION_10_22();
  v200(v199);
  OUTLINED_FUNCTION_12_20(&qword_1DC5238B0);
  v202 = *(v201 + 48);
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_74_6();
  sub_1DC28F358(v203, v204, &qword_1ECC7C200, &qword_1DC523020);
  v205 = OUTLINED_FUNCTION_97_4();
  sub_1DC28F358(v205, v206, &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_4_29(&qword_1DC5238B0);
  if (v107)
  {
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_36_17();

    sub_1DC28EB30(v202, &qword_1ECC7C200, &qword_1DC523020);
    v207 = OUTLINED_FUNCTION_16_12(&v275);
    sub_1DC28EB30(v207, v208, v209);
    sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v210 = OUTLINED_FUNCTION_2_30();
    v211(v210);
    v11 = v261;
    OUTLINED_FUNCTION_4_29(v259 + v261);
    if (!v107)
    {
      goto LABEL_84;
    }

    v138 = OUTLINED_FUNCTION_41();
    v140 = &qword_1DC523020;
    goto LABEL_47;
  }

  v11 = v261;
  v212 = OUTLINED_FUNCTION_41();
  sub_1DC28F358(v212, v213, &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_4_29(v11 + v202);
  if (!v214)
  {
    OUTLINED_FUNCTION_18_19();
    v215 = OUTLINED_FUNCTION_6_23();
    v216(v215);
    OUTLINED_FUNCTION_0_50();
    sub_1DC3E323C(&qword_1ECC7C208, v217, MEMORY[0x1E69D1D50]);
    OUTLINED_FUNCTION_16_12(&v285);
    LODWORD(v259) = sub_1DC5176CC();
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_36_17();

    v218 = OUTLINED_FUNCTION_76_6();
    v219(v218);
    sub_1DC28EB30(v263, &qword_1ECC7C200, &qword_1DC523020);
    v220 = OUTLINED_FUNCTION_65_4();
    sub_1DC28EB30(v220, &qword_1ECC7C200, &qword_1DC523020);
    sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v221 = OUTLINED_FUNCTION_2_30();
    v222(v221);
    v223 = OUTLINED_FUNCTION_88_2(&v285);
    (v268[0])(v223);
    v118 = v261;
    v119 = &qword_1ECC7C200;
LABEL_39:
    sub_1DC28EB30(v118, v119, &qword_1DC523020);
    v120 = &v267;
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_79_7();
  OUTLINED_FUNCTION_36_17();

  v249 = OUTLINED_FUNCTION_11_23(&v272);
  sub_1DC28EB30(v249, v250, v251);
  v252 = OUTLINED_FUNCTION_11_23(&v275);
  sub_1DC28EB30(v252, v253, v254);
  sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v255 = OUTLINED_FUNCTION_2_30();
  v256(v255);
  v257 = OUTLINED_FUNCTION_14_12();
  v258(v257);
LABEL_84:
  v137 = v11;
LABEL_79:
  sub_1DC28EB30(v137, &qword_1ECC7C238, &qword_1DC527190);
LABEL_80:
  __swift_destroy_boxed_opaque_existential_1Tm(&v274);
  sub_1DC28EB30(v278, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_75:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3DF7B4()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = sub_1DC5149BC();
  OUTLINED_FUNCTION_0();
  v271 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v7);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_52_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v17 = OUTLINED_FUNCTION_10(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v29);
  v270 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v34);
  v35 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v37);
  v38 = OUTLINED_FUNCTION_155_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v40);
  v41 = *(v3 + 16);
  if (!v41)
  {
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_53_13();
  v269 = v31 + 8;
  OUTLINED_FUNCTION_47_10(*MEMORY[0x1E69D1D40]);
  while (1)
  {
    v42 = OUTLINED_FUNCTION_134_1();
    v43(v42);
    if (sub_1DC5114CC())
    {
      break;
    }

    v51 = OUTLINED_FUNCTION_2_30();
    v52(v51);
LABEL_14:
    v3 += v4;
    if (!--v41)
    {
      goto LABEL_75;
    }
  }

  OUTLINED_FUNCTION_156_1();
  sub_1DC51177C();
  v44 = OUTLINED_FUNCTION_112_5();
  (v11)(v44);
  if ((v0 & 1) == 0)
  {
    v53 = OUTLINED_FUNCTION_2_30();
    v54(v53);
LABEL_12:
    v4 = v41;
LABEL_13:
    v41 = v271;
    goto LABEL_14;
  }

  v45 = type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  OUTLINED_FUNCTION_20_3();
  sub_1DC51178C();
  (v11)(v0, v35);
  sub_1DC307E5C(v0);
  v46 = OUTLINED_FUNCTION_147_2();
  v47 = (v45)(v46);
  if (!v45)
  {
    v55 = OUTLINED_FUNCTION_2_30();
    v56(v55);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_105_1(v47);
  OUTLINED_FUNCTION_119_4();
  v48 = OUTLINED_FUNCTION_133_2();
  (v11)(v48);
  OUTLINED_FUNCTION_158_1();
  if (v38)
  {

    OUTLINED_FUNCTION_34_3();

    (v45)(v45, v270);
    OUTLINED_FUNCTION_34_15();
    v49 = OUTLINED_FUNCTION_44_11();
    v50(v49);
    OUTLINED_FUNCTION_80_6();
    v35 = v1;
    v1 = v0;
LABEL_11:
    OUTLINED_FUNCTION_43_13();
    goto LABEL_12;
  }

  v57 = OUTLINED_FUNCTION_110_5();
  (v45)(v57);
  sub_1DC3E1F44();
  v4 = v41;
  if (v58)
  {
    OUTLINED_FUNCTION_34_15();
    v0 = v266;
    v59 = OUTLINED_FUNCTION_44_11();
    v60(v59);
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_95_3();
    goto LABEL_13;
  }

  v61 = v268[0];

  sub_1DC51478C();

  v0 = &qword_1ECC7D3F0;
  v11 = &qword_1DC5238B0;
  sub_1DC28F358(&v281, v278, &qword_1ECC7D3F0, &qword_1DC5238B0);
  OUTLINED_FUNCTION_85_7();
  if (!v62)
  {

    sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_34_15();
    v68 = OUTLINED_FUNCTION_107_4();
    v69(v68);
    OUTLINED_FUNCTION_41_8();
LABEL_24:
    OUTLINED_FUNCTION_123_3();
    goto LABEL_66;
  }

  OUTLINED_FUNCTION_104_2();
  sub_1DC514A9C();
  v63 = OUTLINED_FUNCTION_15_14();
  v0 = MEMORY[0x1E69E7CA0];
  v35 = v1;
  if (OUTLINED_FUNCTION_118_2(v63, v64, v65, v66))
  {
    OUTLINED_FUNCTION_117_6();
    sub_1DC51392C();
    OUTLINED_FUNCTION_78_9();

    v67 = v272;
    OUTLINED_FUNCTION_92_3();
    if (v67 && (v0 = sub_1DC51477C(), , v0))
    {
      OUTLINED_FUNCTION_136_2();
      v67 = v0;
      sub_1DC5149AC();
    }

    else
    {
      OUTLINED_FUNCTION_136_2();
      OUTLINED_FUNCTION_22_14();
      __swift_storeEnumTagSinglePayload(v81, v82, v83, *(v80 - 256));
    }

    OUTLINED_FUNCTION_59_8();
    OUTLINED_FUNCTION_26_14();
    v84 = OUTLINED_FUNCTION_72_7();
    v85(v84);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v45);
    v45 = *(v264 + 48);
    OUTLINED_FUNCTION_74_6();
    sub_1DC28F358(v89, v90, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_152_1();
    sub_1DC28F358(v67, &qword_1DC5238B0 + v45, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_4_29(&qword_1DC5238B0);
    if (!v107)
    {
      OUTLINED_FUNCTION_82_5(&v284);
      OUTLINED_FUNCTION_74_6();
      sub_1DC28F358(v105, v106, &qword_1ECC7C200, &qword_1DC523020);
      OUTLINED_FUNCTION_151_2();
      OUTLINED_FUNCTION_4_29(v45 + v67);
      if (!v107)
      {
        OUTLINED_FUNCTION_18_19();
        v108 = OUTLINED_FUNCTION_6_23();
        v109(v108);
        OUTLINED_FUNCTION_0_50();
        sub_1DC3E323C(&qword_1ECC7C208, v110, MEMORY[0x1E69D1D50]);
        OUTLINED_FUNCTION_16_12(&v280);
        LODWORD(v259) = sub_1DC5176CC();
        OUTLINED_FUNCTION_34_3();

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_36_17();

        OUTLINED_FUNCTION_148_1();
        OUTLINED_FUNCTION_58_11();
        (qword_1DC5238B0)();
        v111 = OUTLINED_FUNCTION_39_10(&v281);
        sub_1DC28EB30(v111, v112, &qword_1DC523020);
        v113 = OUTLINED_FUNCTION_39_10(&v283);
        sub_1DC28EB30(v113, v114, &qword_1DC523020);
        sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v115 = OUTLINED_FUNCTION_2_30();
        v116(v115);
        v117 = OUTLINED_FUNCTION_37_10(&v280);
        (qword_1DC5238B0)(v117);
        v118 = OUTLINED_FUNCTION_39_10(&v284);
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_79_7();
      OUTLINED_FUNCTION_36_17();

      v224 = OUTLINED_FUNCTION_11_23(&v281);
      sub_1DC28EB30(v224, v225, v226);
      v227 = OUTLINED_FUNCTION_11_23(&v283);
      sub_1DC28EB30(v227, v228, v229);
      sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v230 = OUTLINED_FUNCTION_2_30();
      v231(v230);
      OUTLINED_FUNCTION_24_13();
      OUTLINED_FUNCTION_73_6();
LABEL_78:
      v234(v232, v233);
      v137 = v45;
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_36_17();

    v11 = &qword_1ECC7C200;
    sub_1DC28EB30(v67, &qword_1ECC7C200, &qword_1DC523020);
    v91 = OUTLINED_FUNCTION_89_4(&v283);
    sub_1DC28EB30(v91, v92, &qword_1DC523020);
    sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v93 = OUTLINED_FUNCTION_2_30();
    v94(v93);
    v79 = v265;
    v95 = OUTLINED_FUNCTION_25_13(&v267);
LABEL_44:
    OUTLINED_FUNCTION_39(v95, v96, v97);
    v137 = v79;
    if (!v107)
    {
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_90_0();
LABEL_47:
    sub_1DC28EB30(v138, v139, v140);
LABEL_65:
    v70 = OUTLINED_FUNCTION_169_2();
    v71 = &qword_1ECC7D3F0;
    v72 = &qword_1DC5238B0;
LABEL_66:
    sub_1DC28EB30(v70, v71, v72);
    OUTLINED_FUNCTION_95_3();
    goto LABEL_14;
  }

  sub_1DC514DAC();
  v73 = OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_118_2(v73, v74, v75, v76);
  OUTLINED_FUNCTION_92_3();
  if (v77)
  {
    OUTLINED_FUNCTION_117_6();
    sub_1DC5148BC();
    v259 = v61;

    v78 = v272;
    OUTLINED_FUNCTION_59_8();
    if (v78 && (v45 = sub_1DC51477C(), , v45))
    {
      v79 = v45;
      sub_1DC5149AC();

      OUTLINED_FUNCTION_81_5();
    }

    else
    {
      OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_22_14();
      v79 = *(v121 - 256);
      __swift_storeEnumTagSinglePayload(v122, v123, v124, v79);
    }

    OUTLINED_FUNCTION_26_14();
    v125 = OUTLINED_FUNCTION_66_9();
    v126(v125, v262, v79);
    OUTLINED_FUNCTION_12_20(v45);
    v11 = *(v127 + 48);
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_139_1();
    sub_1DC28F358(v128, v79, &qword_1ECC7C200, &qword_1DC523020);
    v129 = OUTLINED_FUNCTION_121_2();
    sub_1DC28F358(v129, v130, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_81_5();
    OUTLINED_FUNCTION_39(v131, 1, v79);
    if (v107)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_67_4();

      OUTLINED_FUNCTION_36_17();

      v11 = &qword_1ECC7C200;
      sub_1DC28EB30(v45, &qword_1ECC7C200, &qword_1DC523020);
      OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_90_0();
      sub_1DC28EB30(v132, v133, v134);
      sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v135 = OUTLINED_FUNCTION_2_30();
      v136(v135);
      OUTLINED_FUNCTION_139_1();
      v95 = OUTLINED_FUNCTION_29_6(v268);
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_82_5(&v279);
    OUTLINED_FUNCTION_74_6();
    sub_1DC28F358(v145, v146, &qword_1ECC7C200, &qword_1DC523020);
    v147 = OUTLINED_FUNCTION_40_14();
    OUTLINED_FUNCTION_39(v147, v148, v79);
    if (v149)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_67_4();

      OUTLINED_FUNCTION_36_17();

      v235 = OUTLINED_FUNCTION_49_11(v278);
      sub_1DC28EB30(v235, v236, &qword_1DC523020);
      v237 = OUTLINED_FUNCTION_49_11(v282);
      sub_1DC28EB30(v237, v238, &qword_1DC523020);
      sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v239 = OUTLINED_FUNCTION_2_30();
      v240(v239);
      OUTLINED_FUNCTION_24_13();
      v232 = v11;
      v233 = v79;
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_144_3();
    v150 = OUTLINED_FUNCTION_66_9();
    v151(v150);
    OUTLINED_FUNCTION_0_50();
    sub_1DC3E323C(&qword_1ECC7C208, v152, MEMORY[0x1E69D1D50]);
    OUTLINED_FUNCTION_16_12(&v277);
    v260 = sub_1DC5176CC();
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_67_4();

    OUTLINED_FUNCTION_36_17();

    OUTLINED_FUNCTION_42_12();
    OUTLINED_FUNCTION_58_11();
    v79();
    v153 = OUTLINED_FUNCTION_39_10(v278);
    sub_1DC28EB30(v153, v154, &qword_1DC523020);
    v155 = OUTLINED_FUNCTION_39_10(v282);
    sub_1DC28EB30(v155, v156, &qword_1DC523020);
    sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v157 = OUTLINED_FUNCTION_2_30();
    v158(v157);
    v159 = OUTLINED_FUNCTION_37_10(&v277);
    (v79)(v159);
    v160 = &v279;
    goto LABEL_63;
  }

  sub_1DC514B9C();
  v98 = OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_118_2(v98, v99, v100, v101);
  OUTLINED_FUNCTION_59_8();
  if (v102)
  {
    v103 = v273;

    sub_1DC514C8C();

    v104 = v272;
    OUTLINED_FUNCTION_152_1();
    if (v104 && (sub_1DC51477C(), OUTLINED_FUNCTION_10_15(), &qword_1DC5238B0))
    {
      OUTLINED_FUNCTION_159_1();
    }

    else
    {
      OUTLINED_FUNCTION_82_5(&v276);
      OUTLINED_FUNCTION_22_14();
      __swift_storeEnumTagSinglePayload(v162, v163, v164, *(v161 - 256));
    }

    OUTLINED_FUNCTION_26_14();
    v165 = OUTLINED_FUNCTION_10_22();
    v166(v165);
    OUTLINED_FUNCTION_12_20(&qword_1DC5238B0);
    v167 = OUTLINED_FUNCTION_109_4();
    sub_1DC28F358(v167, v168, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_78_9();
    sub_1DC28F358(&qword_1DC5238B0, v104 + v103, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_4_29(v103);
    if (v107)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_67_4();

      OUTLINED_FUNCTION_36_17();

      v11 = &qword_1ECC7C200;
      sub_1DC28EB30(&qword_1DC5238B0, &qword_1ECC7C200, &qword_1DC523020);
      v169 = OUTLINED_FUNCTION_89_4(&v276);
      sub_1DC28EB30(v169, v170, &qword_1DC523020);
      sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v171 = OUTLINED_FUNCTION_2_30();
      v172(v171);
      OUTLINED_FUNCTION_61_3();
      OUTLINED_FUNCTION_4_29(v103 + v173);
      v140 = &qword_1DC523020;
      v104 = v103;
      if (!v107)
      {
        goto LABEL_82;
      }

      v138 = v103;
      v139 = &qword_1ECC7C200;
      goto LABEL_47;
    }

    v179 = OUTLINED_FUNCTION_114_2();
    sub_1DC28F358(v179, v180, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_61_3();
    OUTLINED_FUNCTION_4_29(v104 + v181);
    v11 = v259;
    if (v182)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_36_17();

      v241 = OUTLINED_FUNCTION_49_11(&v274);
      sub_1DC28EB30(v241, v242, &qword_1DC523020);
      v243 = OUTLINED_FUNCTION_49_11(&v276);
      sub_1DC28EB30(v243, v244, &qword_1DC523020);
      sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v245 = OUTLINED_FUNCTION_2_30();
      v246(v245);
      v247 = OUTLINED_FUNCTION_14_12();
      v248(v247);
LABEL_82:
      v137 = v104;
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_144_3();
    v183 = OUTLINED_FUNCTION_6_23();
    v184(v183);
    OUTLINED_FUNCTION_0_50();
    sub_1DC3E323C(&qword_1ECC7C208, v185, MEMORY[0x1E69D1D50]);
    OUTLINED_FUNCTION_16_12(&v273);
    v260 = sub_1DC5176CC();
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_36_17();

    OUTLINED_FUNCTION_42_12();
    OUTLINED_FUNCTION_58_11();
    v104();
    v186 = OUTLINED_FUNCTION_39_10(&v274);
    sub_1DC28EB30(v186, v187, &qword_1DC523020);
    v188 = OUTLINED_FUNCTION_39_10(&v276);
    sub_1DC28EB30(v188, v189, &qword_1DC523020);
    sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v190 = OUTLINED_FUNCTION_2_30();
    v191(v190);
    v192 = OUTLINED_FUNCTION_37_10(&v273);
    (v104)(v192);
    v160 = &v269;
LABEL_63:
    v193 = OUTLINED_FUNCTION_39_10(v160);
    sub_1DC28EB30(v193, v194, &qword_1DC523020);
    v120 = v268;
LABEL_64:
    if ((*(v120 - 32) & 1) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_65;
  }

  sub_1DC514C4C();
  v141 = OUTLINED_FUNCTION_15_14();
  if (!OUTLINED_FUNCTION_45_6(v141, v142, v143, v144))
  {
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_36_17();

    OUTLINED_FUNCTION_123_3();
    sub_1DC28EB30(v174, v175, v176);
    v177 = OUTLINED_FUNCTION_2_30();
    v178(v177);
    __swift_destroy_boxed_opaque_existential_1Tm(&v274);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_117_6();
  sub_1DC5148BC();
  OUTLINED_FUNCTION_78_9();

  if (v272 && (sub_1DC51477C(), OUTLINED_FUNCTION_10_15(), &qword_1DC5238B0))
  {
    sub_1DC5149AC();
  }

  else
  {
    OUTLINED_FUNCTION_65_4();
    OUTLINED_FUNCTION_22_14();
    __swift_storeEnumTagSinglePayload(v196, v197, v198, *(v195 - 256));
  }

  OUTLINED_FUNCTION_26_14();
  v199 = OUTLINED_FUNCTION_10_22();
  v200(v199);
  OUTLINED_FUNCTION_12_20(&qword_1DC5238B0);
  v202 = *(v201 + 48);
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_74_6();
  sub_1DC28F358(v203, v204, &qword_1ECC7C200, &qword_1DC523020);
  v205 = OUTLINED_FUNCTION_97_4();
  sub_1DC28F358(v205, v206, &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_4_29(&qword_1DC5238B0);
  if (v107)
  {
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_36_17();

    sub_1DC28EB30(v202, &qword_1ECC7C200, &qword_1DC523020);
    v207 = OUTLINED_FUNCTION_16_12(&v275);
    sub_1DC28EB30(v207, v208, v209);
    sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v210 = OUTLINED_FUNCTION_2_30();
    v211(v210);
    v11 = v261;
    OUTLINED_FUNCTION_4_29(v259 + v261);
    if (!v107)
    {
      goto LABEL_84;
    }

    v138 = OUTLINED_FUNCTION_41();
    v140 = &qword_1DC523020;
    goto LABEL_47;
  }

  v11 = v261;
  v212 = OUTLINED_FUNCTION_41();
  sub_1DC28F358(v212, v213, &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_4_29(v11 + v202);
  if (!v214)
  {
    OUTLINED_FUNCTION_18_19();
    v215 = OUTLINED_FUNCTION_6_23();
    v216(v215);
    OUTLINED_FUNCTION_0_50();
    sub_1DC3E323C(&qword_1ECC7C208, v217, MEMORY[0x1E69D1D50]);
    OUTLINED_FUNCTION_16_12(&v285);
    LODWORD(v259) = sub_1DC5176CC();
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_36_17();

    v218 = OUTLINED_FUNCTION_76_6();
    v219(v218);
    sub_1DC28EB30(v263, &qword_1ECC7C200, &qword_1DC523020);
    v220 = OUTLINED_FUNCTION_65_4();
    sub_1DC28EB30(v220, &qword_1ECC7C200, &qword_1DC523020);
    sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v221 = OUTLINED_FUNCTION_2_30();
    v222(v221);
    v223 = OUTLINED_FUNCTION_88_2(&v285);
    (v268[0])(v223);
    v118 = v261;
    v119 = &qword_1ECC7C200;
LABEL_39:
    sub_1DC28EB30(v118, v119, &qword_1DC523020);
    v120 = &v267;
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_79_7();
  OUTLINED_FUNCTION_36_17();

  v249 = OUTLINED_FUNCTION_11_23(&v272);
  sub_1DC28EB30(v249, v250, v251);
  v252 = OUTLINED_FUNCTION_11_23(&v275);
  sub_1DC28EB30(v252, v253, v254);
  sub_1DC28EB30(&v281, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v255 = OUTLINED_FUNCTION_2_30();
  v256(v255);
  v257 = OUTLINED_FUNCTION_14_12();
  v258(v257);
LABEL_84:
  v137 = v11;
LABEL_79:
  sub_1DC28EB30(v137, &qword_1ECC7C238, &qword_1DC527190);
LABEL_80:
  __swift_destroy_boxed_opaque_existential_1Tm(&v274);
  sub_1DC28EB30(v278, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_75:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3E0BB4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v191 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v7);
  v204 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v188 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v11);
  v203 = sub_1DC5149BC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v15);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v20 = OUTLINED_FUNCTION_10(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v184 - v23;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v28);
  v224[0] = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23_9();
  v33 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_62();
  v229 = v38;
  OUTLINED_FUNCTION_12();
  v39 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1();
  v45 = v44 - v43;
  v211 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v212 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v48);
  v213 = *v2;
  v209 = *(v213 + 16);
  if (!v209)
  {
LABEL_62:
    v160 = OUTLINED_FUNCTION_28_14(&v221);
    __swift_storeEnumTagSinglePayload(v160, v161, v162, v204);
    goto LABEL_63;
  }

  v49 = v33;
  OUTLINED_FUNCTION_80_6();
  OUTLINED_FUNCTION_24();
  v208 = v213 + v50;
  v207 = v51 + 16;
  v206 = v51 + 8;
  v230 = v41 + 8;
  v231 = v41 + 16;
  v52 = (v35 + 8);
  v223 = (v30 + 8);
  v200 = *MEMORY[0x1E69D1D40];
  v199 = v13 + 104;
  v189 = v13 + 32;
  v193 = (v13 + 8);
  v53 = 0;
  v214 = v24;
  v218 = v39;
  v216 = v0;
  v219 = v33;
  v215 = v41;
  v225 = v52;
  while (1)
  {
    if (v53 >= *(v213 + 16))
    {
      __break(1u);
      return;
    }

    v54 = v212;
    v55 = *(v212 + 72);
    v217 = v53;
    v56 = v208 + v55 * v53;
    v57 = v210;
    v58 = v211;
    (*(v212 + 16))(v210, v56, v211);
    v59 = sub_1DC5111AC();
    (*(v54 + 8))(v57, v58);
    v60 = *(v59 + 16);
    if (v60)
    {
      break;
    }

LABEL_61:
    v53 = v217 + 1;

    if (v53 == v209)
    {
      goto LABEL_62;
    }
  }

  v61 = 0;
  OUTLINED_FUNCTION_23_21();
  v232 = v62;
  v227 = v60;
  v228 = v59;
  while (1)
  {
    if (v61 >= *(v59 + 16))
    {
      __break(1u);
LABEL_65:

      v170 = v39;
      v167 = *(v188 + 32);
      v168 = v187;
      v169 = v187;
LABEL_67:
      v171 = v204;
      v167(v169, v170, v204);
      v167(v191, v168, v171);
      OUTLINED_FUNCTION_61();
      __swift_storeEnumTagSinglePayload(v172, v173, v174, v171);
      __swift_destroy_boxed_opaque_existential_1Tm(v234);
      v175 = &qword_1ECC7D3F0;
      v176 = &qword_1DC5238B0;
      v177 = v235;
      goto LABEL_70;
    }

    (*(v41 + 16))(v45, v232 + *(v41 + 72) * v61, v39);
    if (sub_1DC5114CC())
    {
      break;
    }

    v72 = OUTLINED_FUNCTION_31_14();
    v73(v72, v39);
LABEL_14:
    if (v60 == ++v61)
    {
      goto LABEL_61;
    }
  }

  v63 = v229;
  sub_1DC51154C();
  v64 = sub_1DC51177C();
  v65 = *v225;
  (*v225)(v63, v49);
  if ((v64 & 1) == 0)
  {
    OUTLINED_FUNCTION_60_11();
    v74(v45, v39);
    goto LABEL_13;
  }

  v66 = v224[1];
  OUTLINED_FUNCTION_163_1();
  sub_1DC51178C();
  v65(v66, v49);
  v67 = v49;
  v68 = v226;
  v69 = sub_1DC5138FC();
  if (v68)
  {

    OUTLINED_FUNCTION_37();
    v70(v0, v224[0]);
    OUTLINED_FUNCTION_60_11();
    v71(v45, v39);
    OUTLINED_FUNCTION_80_6();
    v49 = v67;
LABEL_13:
    v60 = v227;
    v59 = v228;
    goto LABEL_14;
  }

  v222 = v69;
  v226 = 0;
  v75 = v0;
  v0 = v223;
  v221 = *v223;
  v49 = v224[0];
  v221(v75, v224[0]);
  v220 = type metadata accessor for NLRouterBypassUtils();
  v76 = v229;
  sub_1DC51154C();
  OUTLINED_FUNCTION_20_3();
  sub_1DC51178C();
  v65(v76, v67);
  v77 = sub_1DC307E5C(v39);
  v221(v39, v49);
  if (!v77)
  {
    OUTLINED_FUNCTION_60_11();
    OUTLINED_FUNCTION_70_8();
    v88();
    OUTLINED_FUNCTION_69_7();

    OUTLINED_FUNCTION_137_1();
    v41 = v215;
    goto LABEL_13;
  }

  v49 = v222;
  v78 = sub_1DC309EB4();
  v79 = v214;
  v41 = v215;
  if ((v78 & 1) == 0)
  {
    OUTLINED_FUNCTION_60_11();
    OUTLINED_FUNCTION_70_8();
    v89();

    OUTLINED_FUNCTION_137_1();
    goto LABEL_13;
  }

  sub_1DC51478C();

  sub_1DC28F358(&v236, v235, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v49 = v219;
  v59 = v228;
  if (!v235[3])
  {

    OUTLINED_FUNCTION_69_7();

    sub_1DC28EB30(&v236, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_31_14();
    OUTLINED_FUNCTION_70_8();
    v90();
LABEL_37:
    sub_1DC28EB30(v235, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v60 = v227;
    v0 = v216;
    goto LABEL_14;
  }

  v221 = v77;
  sub_1DC28F358(v235, v234, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC51497C();
  v80 = OUTLINED_FUNCTION_15_14();
  if (OUTLINED_FUNCTION_45_6(v80, v81, v82, v83))
  {

    OUTLINED_FUNCTION_154_1(v84);
    v60 = v227;
    if (v233 && (v85 = sub_1DC51477C(), , v85))
    {
      v86 = v205;
      sub_1DC5149AC();

      v87 = v203;
    }

    else
    {
      v86 = v205;
      OUTLINED_FUNCTION_19();
      v87 = v203;
      __swift_storeEnumTagSinglePayload(v99, v100, v101, v203);
    }

    v102 = v196;
    OUTLINED_FUNCTION_18_19();
    v103(v102, v200, v87);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v87);
    v107 = *(v202 + 48);
    v108 = v86;
    v109 = v197;
    sub_1DC28F358(v108, v197, &qword_1ECC7C200, &qword_1DC523020);
    sub_1DC28F358(v102, v109 + v107, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_39(v109, 1, v87);
    v59 = v228;
    if (v113)
    {
      v110 = v102;
      v39 = &qword_1DC523020;
      sub_1DC28EB30(v110, &qword_1ECC7C200, &qword_1DC523020);
      sub_1DC28EB30(v205, &qword_1ECC7C200, &qword_1DC523020);
      OUTLINED_FUNCTION_39(v109 + v107, 1, v87);
      v111 = v109;
      v0 = v216;
      if (v113)
      {
        sub_1DC28EB30(v109, &qword_1ECC7C200, &qword_1DC523020);
        OUTLINED_FUNCTION_91_3();
LABEL_66:
        OUTLINED_FUNCTION_78();

        OUTLINED_FUNCTION_69_7();

        OUTLINED_FUNCTION_26_1();
        sub_1DC28EB30(v163, v164, v165);
        OUTLINED_FUNCTION_31_14();
        OUTLINED_FUNCTION_73_6();
        goto LABEL_69;
      }
    }

    else
    {
      sub_1DC28F358(v109, v198, &qword_1ECC7C200, &qword_1DC523020);
      OUTLINED_FUNCTION_39(v109 + v107, 1, v87);
      v0 = v216;
      if (!v113)
      {
        OUTLINED_FUNCTION_37();
        v131 = v190;
        v132(v190, v109 + v107, v87);
        OUTLINED_FUNCTION_0_50();
        sub_1DC3E323C(&qword_1ECC7C208, v133, MEMORY[0x1E69D1D50]);
        OUTLINED_FUNCTION_36_17();
        v185 = sub_1DC5176CC();
        v134 = *v193;
        v135 = v131;
        v59 = v228;
        (*v193)(v135, v87);
        v136 = v102;
        v39 = &qword_1DC523020;
        sub_1DC28EB30(v136, &qword_1ECC7C200, &qword_1DC523020);
        sub_1DC28EB30(v205, &qword_1ECC7C200, &qword_1DC523020);
        v137 = OUTLINED_FUNCTION_36_17();
        v134(v137, v87);
        v60 = v227;
        sub_1DC28EB30(v109, &qword_1ECC7C200, &qword_1DC523020);
        OUTLINED_FUNCTION_91_3();
        if (v185)
        {
          goto LABEL_66;
        }

        goto LABEL_49;
      }

      v114 = v102;
      v39 = &qword_1DC523020;
      sub_1DC28EB30(v114, &qword_1ECC7C200, &qword_1DC523020);
      v115 = OUTLINED_FUNCTION_88_2(v234);
      sub_1DC28EB30(v115, v116, &qword_1DC523020);
      OUTLINED_FUNCTION_37();
      v117(v198, v87);
      v111 = v109;
    }

    sub_1DC28EB30(v111, &qword_1ECC7C238, &qword_1DC527190);
    OUTLINED_FUNCTION_91_3();
LABEL_49:
    sub_1DC51475C();

    OUTLINED_FUNCTION_20_3();
    sub_1DC3E28A0();
    OUTLINED_FUNCTION_78();

    OUTLINED_FUNCTION_69_7();

    sub_1DC28EB30(&v236, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_31_14();
    OUTLINED_FUNCTION_73_6();
    v138();
    OUTLINED_FUNCTION_39(&qword_1DC523020, 1, v204);
    if (!v113)
    {
      goto LABEL_65;
    }

    sub_1DC28EB30(&qword_1DC523020, &qword_1ECC7CA40, &unk_1DC5233A0);
    v39 = v218;
    goto LABEL_60;
  }

  sub_1DC514A1C();
  v91 = OUTLINED_FUNCTION_15_14();
  if (!OUTLINED_FUNCTION_45_6(v91, v92, v93, v94))
  {
    OUTLINED_FUNCTION_78();

    OUTLINED_FUNCTION_69_7();

    sub_1DC28EB30(&v236, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_31_14();
    OUTLINED_FUNCTION_70_8();
    v112();
    __swift_destroy_boxed_opaque_existential_1Tm(v234);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_154_1(v95);
  if (v233 && (v96 = sub_1DC51477C(), , v96))
  {
    v97 = v194;
    sub_1DC5149AC();

    v98 = v203;
  }

  else
  {
    v97 = v194;
    OUTLINED_FUNCTION_19();
    v98 = v203;
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v203);
  }

  OUTLINED_FUNCTION_18_19();
  v121(v79, v200, v98);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v98);
  v125 = *(v202 + 48);
  v126 = v192;
  sub_1DC28F358(v97, v192, &qword_1ECC7C200, &qword_1DC523020);
  sub_1DC28F358(v79, v126 + v125, &qword_1ECC7C200, &qword_1DC523020);
  v127 = v98;
  OUTLINED_FUNCTION_39(v126, 1, v98);
  if (!v113)
  {
    sub_1DC28F358(v126, v195, &qword_1ECC7C200, &qword_1DC523020);
    v139 = OUTLINED_FUNCTION_143_1();
    OUTLINED_FUNCTION_39(v139, v140, v98);
    v0 = v216;
    if (!v141)
    {
      OUTLINED_FUNCTION_37();
      v149(v190, v126 + v125, v127);
      OUTLINED_FUNCTION_0_50();
      sub_1DC3E323C(&qword_1ECC7C208, v150, MEMORY[0x1E69D1D50]);
      OUTLINED_FUNCTION_67_4();
      v185 = sub_1DC5176CC();
      v184 = *v193;
      v151 = OUTLINED_FUNCTION_78_6();
      v152(v151);
      v153 = OUTLINED_FUNCTION_86();
      sub_1DC28EB30(v153, &qword_1ECC7C200, &qword_1DC523020);
      v154 = OUTLINED_FUNCTION_88_2(v224);
      sub_1DC28EB30(v154, v155, &qword_1DC523020);
      v156 = OUTLINED_FUNCTION_67_4();
      v184(v156, v127);
      sub_1DC28EB30(v126, &qword_1ECC7C200, &qword_1DC523020);
      v39 = v218;
      v59 = v228;
      if (v185)
      {
        goto LABEL_68;
      }

LABEL_57:
      sub_1DC51475C();

      sub_1DC3E28A0();

      OUTLINED_FUNCTION_69_7();

      sub_1DC28EB30(&v236, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v157 = OUTLINED_FUNCTION_31_14();
      v158(v157, v39);
      OUTLINED_FUNCTION_39(v201, 1, v204);
      if (!v113)
      {

        v167 = *(v188 + 32);
        v168 = v186;
        v169 = v186;
        v170 = v201;
        goto LABEL_67;
      }

      sub_1DC28EB30(v201, &qword_1ECC7CA40, &unk_1DC5233A0);
      v60 = v227;
LABEL_60:
      v159 = OUTLINED_FUNCTION_169_2();
      sub_1DC28EB30(v159, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v49 = v219;
      goto LABEL_14;
    }

    v142 = OUTLINED_FUNCTION_49_11(&v237);
    sub_1DC28EB30(v142, v143, &qword_1DC523020);
    v144 = OUTLINED_FUNCTION_11_23(v224);
    sub_1DC28EB30(v144, v145, v146);
    OUTLINED_FUNCTION_37();
    v147 = OUTLINED_FUNCTION_78_6();
    v148(v147);
    v130 = v126;
    v39 = v218;
    v59 = v228;
LABEL_55:
    sub_1DC28EB30(v130, &qword_1ECC7C238, &qword_1DC527190);
    goto LABEL_57;
  }

  sub_1DC28EB30(v79, &qword_1ECC7C200, &qword_1DC523020);
  sub_1DC28EB30(v97, &qword_1ECC7C200, &qword_1DC523020);
  v128 = OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_39(v128, v129, v98);
  v130 = v126;
  v39 = v218;
  v0 = v216;
  v59 = v228;
  if (!v113)
  {
    goto LABEL_55;
  }

  sub_1DC28EB30(v126, &qword_1ECC7C200, &qword_1DC523020);
LABEL_68:

  OUTLINED_FUNCTION_69_7();

  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v178, v179, v180);
  OUTLINED_FUNCTION_31_14();
LABEL_69:
  v166();
  v181 = OUTLINED_FUNCTION_28_14(&v221);
  __swift_storeEnumTagSinglePayload(v181, v182, v183, v204);
  OUTLINED_FUNCTION_169_2();
  OUTLINED_FUNCTION_26_1();
LABEL_70:
  sub_1DC28EB30(v177, v175, v176);
LABEL_63:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3E1F44()
{
  OUTLINED_FUNCTION_33();
  sub_1DC514ECC();
  OUTLINED_FUNCTION_0();
  v133 = v3;
  v134 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  v128 = v4;
  OUTLINED_FUNCTION_12();
  v141 = sub_1DC514E7C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v130 = v8;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23_1();
  v136 = v10;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_1();
  v127 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_9();
  v14 = sub_1DC514E3C();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v135 = v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  v138 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23_1();
  v131 = v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v122 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A0, &qword_1DC522F80);
  v27 = OUTLINED_FUNCTION_10(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  v125 = v28;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_23_1();
  v126 = v30;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_23_1();
  v137 = v32;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_62();
  v132 = v34;
  v129 = v0;
  v35 = sub_1DC514EEC();
  v36 = 0;
  v37 = *(v35 + 16);
  v38 = (v6 + 8);
  v139 = (v16 + 8);
  v140 = v16 + 16;
  v142 = v14;
  while (1)
  {
    if (v37 == v36)
    {

      v45 = 1;
      v46 = v133;
      v47 = v134;
      v48 = v132;
      goto LABEL_13;
    }

    if (v36 >= *(v35 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_23_21();
    (*(v16 + 16))(v25, v39 + *(v16 + 72) * v36, v14);
    sub_1DC514E0C();
    v40 = sub_1DC514E6C();
    v42 = v41;
    (*v38)(v1, v141);
    v43 = v40 == 1802723700 && v42 == 0xE400000000000000;
    if (v43)
    {
      break;
    }

    v44 = sub_1DC51825C();

    if (v44)
    {
      goto LABEL_12;
    }

    v14 = v142;
    (*v139)(v25, v142);
    ++v36;
  }

LABEL_12:

  v48 = v132;
  v14 = v142;
  (*(v16 + 32))(v132, v25, v142);
  v45 = 0;
  v46 = v133;
  v47 = v134;
LABEL_13:
  v49 = v137;
  __swift_storeEnumTagSinglePayload(v48, v45, 1, v14);
  sub_1DC28F358(v48, v49, &qword_1ECC7C1A0, &qword_1DC522F80);
  v50 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v50, v51, v14);
  if (v43)
  {
    sub_1DC28EB30(v48, &qword_1ECC7C1A0, &qword_1DC522F80);
    v48 = v49;
LABEL_44:
    sub_1DC28EB30(v48, &qword_1ECC7C1A0, &qword_1DC522F80);
    OUTLINED_FUNCTION_34();
    return;
  }

  OUTLINED_FUNCTION_62_3();
  v123 = v53;
  v124 = v52;
  v53();
  v54 = sub_1DC514EFC();
  v55 = sub_1DC514E1C();
  if ((v55 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  if (v55 < *(v54 + 16))
  {
    (*(v46 + 16))(v128, v54 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v55, v47);

    v56 = v127;
    sub_1DC514EBC();
    sub_1DC514E6C();
    v137 = *v38;
    v137(v56, v141);
    OUTLINED_FUNCTION_116_4();
    v57 = sub_1DC51795C();

    if (v57)
    {
      v58 = sub_1DC514EEC();
      v59 = 0;
      v60 = *(v58 + 16);
      v61 = v142;
      v62 = v136;
      while (v60 != v59)
      {
        if (v59 >= *(v58 + 16))
        {
          goto LABEL_46;
        }

        OUTLINED_FUNCTION_24();
        (*(v16 + 16))(v138, v58 + v63 + *(v16 + 72) * v59, v61);
        sub_1DC514E0C();
        v64 = sub_1DC514E6C();
        v66 = v65;
        v137(v62, v141);
        if (v64 == 0x6F43676E69727473 && v66 == 0xED0000746E65746ELL)
        {

LABEL_39:

          v48 = v126;
          v86 = v142;
          (v123)(v126, v138, v142);
          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v87, v88, v89, v86);
          v90 = OUTLINED_FUNCTION_103_1();
          v91(v90);
          v92 = OUTLINED_FUNCTION_68_6();
          v93(v92, v86);
          sub_1DC28EB30(v132, &qword_1ECC7C1A0, &qword_1DC522F80);
          goto LABEL_44;
        }

        v68 = sub_1DC51825C();

        if (v68)
        {
          goto LABEL_39;
        }

        v61 = v142;
        (*v139)(v138, v142);
        ++v59;
      }

      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v73, v74, v75, v61);
      v76 = sub_1DC514EEC();
      v77 = 0;
      v78 = *(v76 + 16);
      v79 = v130;
      while (1)
      {
        if (v78 == v77)
        {

          v94 = OUTLINED_FUNCTION_103_1();
          v95(v94);
          v96 = OUTLINED_FUNCTION_68_6();
          v97 = v142;
          v98(v96, v142);
          OUTLINED_FUNCTION_59_2();
          sub_1DC28EB30(v99, v100, v101);
          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v102, v103, v104, v97);
          OUTLINED_FUNCTION_59_2();
          sub_1DC28EB30(v105, v106, v107);
          goto LABEL_43;
        }

        if (v77 >= *(v76 + 16))
        {
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_23_21();
        (*(v16 + 16))(v135, v80 + *(v16 + 72) * v77, v142);
        sub_1DC514E0C();
        v81 = sub_1DC514E6C();
        v83 = v82;
        v137(v79, v141);
        if (v81 == 0x7463656A627573 && v83 == 0xE700000000000000)
        {
          break;
        }

        OUTLINED_FUNCTION_62_3();
        v85 = sub_1DC51825C();

        if (v85)
        {
          goto LABEL_42;
        }

        (*v139)(v135, v142);
        ++v77;
      }

LABEL_42:

      v108 = OUTLINED_FUNCTION_103_1();
      v109(v108);
      v110 = OUTLINED_FUNCTION_68_6();
      v111 = v142;
      v112(v110, v142);
      OUTLINED_FUNCTION_62_3();
      sub_1DC28EB30(v113, v114, v115);
      (v123)(v125, v135, v111);
      OUTLINED_FUNCTION_61();
      __swift_storeEnumTagSinglePayload(v116, v117, v118, v111);
      OUTLINED_FUNCTION_62_3();
      sub_1DC28EB30(v119, v120, v121);
LABEL_43:
      v48 = v126;
    }

    else
    {
      v69 = OUTLINED_FUNCTION_78_6();
      v70(v69);
      v71 = OUTLINED_FUNCTION_68_6();
      v72(v71, v142);
    }

    goto LABEL_44;
  }

LABEL_49:
  __break(1u);
}

void sub_1DC3E28A0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C260, &unk_1DC523080);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v43 - v6;
  v8 = sub_1DC514BFC();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  if (v1)
  {
    v15 = sub_1DC51476C();
    if (v15)
    {
      v16 = sub_1DC2C20B8(v15);

      if (v16 == 1)
      {
        v17 = sub_1DC51476C();
        if (v17)
        {
          v18 = v17;
          if (sub_1DC2C20B8(v17))
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1E1296800](0, v18);
            }

            else
            {
              if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_27;
              }
            }

            sub_1DC5146BC();

            if (v43[1])
            {
              if (sub_1DC5148CC())
              {
                sub_1DC514BEC();
                OUTLINED_FUNCTION_39(v7, 1, v8);
                if (!v19)
                {
                  (*(v10 + 32))(v14, v7, v8);
                  if (qword_1ECC8A170 == -1)
                  {
LABEL_20:
                    v36 = sub_1DC3E2CE0(v14, qword_1ECC8F9D0);
                    v37 = sub_1DC517B9C();
                    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
                    v38 = sub_1DC2BE518();
                    v39 = (v10 + 8);
                    if (v36)
                    {
                      sub_1DC516F0C(v37, &dword_1DC287000, v38, "[MessageRule] This query has an attachment type that is allowed to send to sirix, sending to sirix", 98, 2, MEMORY[0x1E69E7CC0]);

                      v40 = MEMORY[0x1E69D02D8];
                    }

                    else
                    {
                      sub_1DC516F0C(v37, &dword_1DC287000, v38, "[MessageRule] This query has an attachment type that is NOT allowed to send to sirix, sending to planner", 104, 2, MEMORY[0x1E69E7CC0]);

                      v40 = MEMORY[0x1E69D02F8];
                    }

                    (*v39)(v14, v8);
                    v35 = *v40;
                    goto LABEL_24;
                  }

LABEL_27:
                  OUTLINED_FUNCTION_21_13(&qword_1ECC8A170);
                  goto LABEL_20;
                }

                sub_1DC28EB30(v7, &qword_1ECC7C260, &unk_1DC523080);
                sub_1DC517B9C();
                sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
                v20 = sub_1DC2BE518();
                v21 = OUTLINED_FUNCTION_62_1();
                sub_1DC516F0C(v21, v22, v23, v24, 82, 2);

                v25 = MEMORY[0x1E69D02F8];
              }

              else
              {
                sub_1DC517B9C();
                sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
                v30 = sub_1DC2BE518();
                v31 = OUTLINED_FUNCTION_62_1();
                sub_1DC516F0C(v31, v32, v33, v34, 58, 2);

                v25 = MEMORY[0x1E69D02D8];
              }

              v35 = *v25;
LABEL_24:
              v41 = sub_1DC5157EC();
              OUTLINED_FUNCTION_35();
              (*(v42 + 104))(v3, v35, v41);
              OUTLINED_FUNCTION_61();
              v29 = v41;
              goto LABEL_16;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  sub_1DC5157EC();
  OUTLINED_FUNCTION_19();
LABEL_16:
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  OUTLINED_FUNCTION_34();
}

BOOL sub_1DC3E2CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC514BFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1DC3E323C(&qword_1ECC7D590, MEMORY[0x1E69D2110], MEMORY[0x1E69D2118]);
  v16 = a1;
  v8 = sub_1DC51767C();
  v9 = a2 + 56;
  v17 = a2;
  v10 = ~(-1 << *(a2 + 32));
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v9 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    (*(v5 + 16))(v7, *(v17 + 48) + *(v5 + 72) * v11, v4);
    sub_1DC3E323C(&qword_1ECC7C268, MEMORY[0x1E69D2110], MEMORY[0x1E69D2120]);
    v14 = sub_1DC5176CC();
    (*(v5 + 8))(v7, v4);
    v8 = v11 + 1;
  }

  while ((v14 & 1) == 0);
  return v13;
}

uint64_t sub_1DC3E2EF8(uint64_t a1)
{
  v2 = sub_1DC514BFC();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D5A0, &qword_1DC528670);
  result = sub_1DC517F0C();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_1DC3E323C(&qword_1ECC7D590, MEMORY[0x1E69D2110], MEMORY[0x1E69D2118]);
    v14 = sub_1DC51767C();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_1DC3E323C(&qword_1ECC7C268, MEMORY[0x1E69D2110], MEMORY[0x1E69D2120]);
      v21 = sub_1DC5176CC();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DC3E323C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t OUTLINED_FUNCTION_86_4()
{

  return sub_1DC291244(v0, v1, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_104_2()
{
  *(v3 - 504) = v2;

  return sub_1DC28F358(v3 - 160, v3 - 192, v0, v1);
}

uint64_t OUTLINED_FUNCTION_105_1(uint64_t a1)
{
  *(v2 - 272) = v1;

  return sub_1DC51154C();
}

uint64_t OUTLINED_FUNCTION_118_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_154_1(uint64_t a1)
{
  *(v1 - 320) = a1;

  return sub_1DC51475C();
}

uint64_t OUTLINED_FUNCTION_155_3()
{

  return sub_1DC51164C();
}

id OUTLINED_FUNCTION_160_1()
{

  return sub_1DC2BE518();
}

unint64_t OUTLINED_FUNCTION_162_4(uint64_t a1, unint64_t a2)
{

  return sub_1DC291244(a1, a2, (v2 - 128));
}

id sub_1DC3E352C()
{
  result = [*(v0 + 32) tcuId];
  if (result)
  {
    v2 = result;
    v3 = sub_1DC51772C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1DC3E3608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_1DC3E3650()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1DC3E36AC()
{

  return v0;
}

uint64_t sub_1DC3E36D4()
{
  sub_1DC3E36AC();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1DC3E3878(void (*a1)(uint64_t))
{
  v54 = a1;
  sub_1DC5160CC();
  OUTLINED_FUNCTION_0();
  v57 = v2;
  v58 = v3;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v56 = v4;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v55 = v6;
  OUTLINED_FUNCTION_12();
  v7 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v15 = v14;
  OUTLINED_FUNCTION_12();
  v16 = sub_1DC51620C();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  (*(v18 + 104))(v22, *MEMORY[0x1E69D0810], v16);
  sub_1DC51627C();
  (*(v18 + 8))(v22, v16);
  if (v63[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D5B0, "ޕ");
    if (swift_dynamicCast())
    {
      if (*(&v60 + 1))
      {
        sub_1DC28F9B0(&v59, v64);
        v23 = sub_1DC29120C();
        (*(v9 + 16))(v15, v23, v7);
        v24 = sub_1DC516F6C();
        v25 = sub_1DC517B9C();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_1DC287000, v24, v25, "Found RequestSummaries from SessionStore", v26, 2u);
          MEMORY[0x1E1298840](v26, -1, -1);
        }

        (*(v9 + 8))(v15, v7);
        __swift_project_boxed_opaque_existential_1(v64, v64[3]);
        v27 = sub_1DC51624C();
        v28 = *(v27 + 16);
        if (v28)
        {
          v63[0] = MEMORY[0x1E69E7CC0];
          sub_1DC3E4F04(0, v28, 0);
          v29 = v63[0];
          v54 = *(v58 + 16);
          v30 = (*(v58 + 80) + 32) & ~*(v58 + 80);
          v52 = v27;
          v31 = v27 + v30;
          v53 = *(v58 + 72);
          v58 += 16;
          v32 = (v58 - 8);
          do
          {
            v34 = v54;
            v33 = v55;
            v35 = v57;
            (v54)(v55, v31, v57);
            v36 = v56;
            v37 = OUTLINED_FUNCTION_11_24();
            v34(v37);
            v38 = sub_1DC3E3E24(v36, &v59);
            (*v32)(v33, v35, v38);
            v39 = v59;
            v40 = v60;
            v41 = v61;
            v42 = v62;
            v63[0] = v29;
            v44 = *(v29 + 16);
            v43 = *(v29 + 24);
            if (v44 >= v43 >> 1)
            {
              v51 = v60;
              sub_1DC3E4F04((v43 > 1), v44 + 1, 1);
              v40 = v51;
              v29 = v63[0];
            }

            *(v29 + 16) = v44 + 1;
            v45 = v29 + 48 * v44;
            *(v45 + 32) = v39;
            *(v45 + 48) = v40;
            *(v45 + 64) = v41;
            *(v45 + 72) = v42;
            v31 += v53;
            --v28;
          }

          while (v28);
        }

        else
        {

          v29 = MEMORY[0x1E69E7CC0];
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        return v29;
      }
    }

    else
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
    }
  }

  else
  {
    sub_1DC28EB30(v63, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
  }

  sub_1DC28EB30(&v59, &qword_1ECC7D5A8, "ܕ");
  v46 = sub_1DC29120C();
  (*(v9 + 16))(v13, v46, v7);
  v47 = sub_1DC516F6C();
  v48 = sub_1DC517B9C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1DC287000, v47, v48, "No history in SessionStore yet", v49, 2u);
    MEMORY[0x1E1298840](v49, -1, -1);
  }

  (*(v9 + 8))(v13, v7);
  return MEMORY[0x1E69E7CC0];
}

__n128 sub_1DC3E3E24@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v179 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  v176 = &v152 - v5;
  v6 = OUTLINED_FUNCTION_12();
  v7 = type metadata accessor for TurnSummary(v6);
  v177 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_1();
  v178 = (v9 - v8);
  OUTLINED_FUNCTION_12();
  sub_1DC515FCC();
  OUTLINED_FUNCTION_0();
  v174 = v11;
  v175 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v181 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v172 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  v16 = OUTLINED_FUNCTION_10(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v156 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v157 = v19;
  OUTLINED_FUNCTION_12();
  v162 = sub_1DC5161CC();
  OUTLINED_FUNCTION_0();
  v158 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v152 = v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  v153 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D5B8, "ޕ");
  v26 = OUTLINED_FUNCTION_10(v25);
  MEMORY[0x1EEE9AC00](v26);
  v159 = &v152 - v27;
  OUTLINED_FUNCTION_12();
  v163 = sub_1DC51605C();
  OUTLINED_FUNCTION_0();
  v160 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15();
  v154 = v30;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_62();
  v155 = v32;
  OUTLINED_FUNCTION_12();
  v161 = sub_1DC51600C();
  OUTLINED_FUNCTION_0();
  v166 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_1();
  v165 = v36 - v35;
  OUTLINED_FUNCTION_12();
  v164 = sub_1DC51601C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  v42 = OUTLINED_FUNCTION_10(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_15();
  v173 = v43;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_62();
  v180 = v45;
  OUTLINED_FUNCTION_12();
  v46 = sub_1DC51609C();
  OUTLINED_FUNCTION_0();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_1();
  v52 = v51 - v50;
  v53 = sub_1DC51606C();
  OUTLINED_FUNCTION_0();
  v55 = v54;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_1();
  v59 = v58 - v57;
  sub_1DC5160BC();
  v60 = (*(v55 + 88))(v59, v53);
  if (v60 == *MEMORY[0x1E69D06C8])
  {
    (*(v55 + 96))(v59, v53);
    (*(v48 + 32))(v52, v59, v46);
    v61 = sub_1DC51602C();
    v62 = a1;
    if (v61 && (v63 = v61, v64 = sub_1DC51622C(), v63, v64))
    {
      v170 = 0;
      v171 = 0;
      v169 = 2;
    }

    else
    {
      v66 = sub_1DC51608C();
      v170 = v67;
      v171 = v66;
      v169 = 0;
    }

    v168 = sub_1DC51607C();
    v167 = v68;
    (*(v48 + 8))(v52, v46);
  }

  else
  {
    if (v60 == *MEMORY[0x1E69D06C0])
    {
      OUTLINED_FUNCTION_13_23();
      v65 = 1;
    }

    else
    {
      (*(v55 + 8))(v59, v53);
      OUTLINED_FUNCTION_13_23();
      v65 = 2;
    }

    v169 = v65;
    v62 = a1;
  }

  v69 = v174;
  sub_1DC51603C();
  v70 = OUTLINED_FUNCTION_265();
  v72 = v71(v70);
  if (v72 == *MEMORY[0x1E69D0668])
  {
    v73 = OUTLINED_FUNCTION_265();
    v74(v73);
    v75 = v165;
    v76 = v161;
    (*(v166 + 32))(v165, v40, v161);
    v77 = v159;
    sub_1DC515FFC();
    v78 = v163;
    if (__swift_getEnumTagSinglePayload(v77, 1, v163) == 1)
    {
      sub_1DC28EB30(v77, &qword_1ECC7D5B8, "ޕ");
      v79 = 2;
      v80 = v175;
      v40 = v180;
    }

    else
    {
      OUTLINED_FUNCTION_10_23();
      v90 = v155;
      v91(v155, v77, v78);
      v92 = v157;
      sub_1DC3E4C2C(v90, v157);
      v94 = *(v75 + 8);
      v93 = v75 + 8;
      v94(v90, v78);
      OUTLINED_FUNCTION_14_13();
      v80 = v175;
      v40 = v180;
      if (v89)
      {
        sub_1DC28EB30(v92, &qword_1ECC7BF98, &qword_1DC5224C0);
        v79 = 2;
      }

      else
      {
        v100 = *(v158 + 32);
        v101 = v153;
        v100(v153, v92, v93);
        v100(v40, v101, v93);
        v79 = 0;
      }
    }

    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    __swift_storeEnumTagSinglePayload(v40, v79, 4, v102);
    type metadata accessor for TurnSummary.ExecutionSource(0);
    v103 = OUTLINED_FUNCTION_7_23();
    __swift_storeEnumTagSinglePayload(v103, v104, 1, v105);
    v106 = v165;
    v107 = sub_1DC515FEC();
    (*(v166 + 8))(v106, v76);
    LODWORD(v174) = v107 & 1;
    goto LABEL_27;
  }

  v81 = v72;
  if (v72 == *MEMORY[0x1E69D0670])
  {
    v82 = OUTLINED_FUNCTION_265();
    v83(v82);
    OUTLINED_FUNCTION_10_23();
    v84 = v154;
    v85 = v163;
    v86(v154, v40, v163);
    v87 = v156;
    sub_1DC3E4C2C(v84, v156);
    v88 = v62 + 8;
    (*(v62 + 8))(v84, v85);
    OUTLINED_FUNCTION_14_13();
    if (!v89)
    {
      v95 = *(v158 + 32);
      v96 = v152;
      v95(v152, v87, v88);
      v40 = v180;
      v95(v180, v96, v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
      v97 = OUTLINED_FUNCTION_7_23();
LABEL_26:
      __swift_storeEnumTagSinglePayload(v97, v98, 4, v99);
      type metadata accessor for TurnSummary.ExecutionSource(0);
      v108 = OUTLINED_FUNCTION_7_23();
      __swift_storeEnumTagSinglePayload(v108, v109, 1, v110);
      LODWORD(v174) = 0;
      v80 = v175;
      goto LABEL_27;
    }

    sub_1DC28EB30(v87, &qword_1ECC7BF98, &qword_1DC5224C0);
    goto LABEL_25;
  }

  if (v72 == *MEMORY[0x1E69D0678])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    v97 = OUTLINED_FUNCTION_6_24();
    v98 = 1;
    goto LABEL_26;
  }

  if (v72 == *MEMORY[0x1E69D0680])
  {
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    v97 = OUTLINED_FUNCTION_6_24();
    v98 = 2;
    goto LABEL_26;
  }

  if (v72 == *MEMORY[0x1E69D0660])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    v97 = OUTLINED_FUNCTION_6_24();
    v98 = 3;
    goto LABEL_26;
  }

  v147 = *MEMORY[0x1E69D0688];
  v148 = type metadata accessor for TurnSummary.ExecutionSource(0);
  __swift_storeEnumTagSinglePayload(v180, 1, 1, v148);
  if (v81 != v147)
  {
    v149 = OUTLINED_FUNCTION_265();
    v150(v149);
  }

  LODWORD(v174) = 0;
  v80 = v175;
  v40 = v180;
LABEL_27:
  v111 = v172;
  sub_1DC515FDC();
  sub_1DC515FBC();
  v113 = v112;
  v114 = *(v69 + 8);
  v114(v111, v80);
  if (v113)
  {

    sub_1DC515FDC();
    v115 = sub_1DC515FBC();
    v117 = v116;
    v118 = OUTLINED_FUNCTION_11_24();
    (v114)(v118);
    v119 = v62;
    sub_1DC515FDC();
    v120 = sub_1DC515F9C();
  }

  else
  {
    sub_1DC515FDC();
    v115 = sub_1DC515FAC();
    v117 = v122;
    v123 = OUTLINED_FUNCTION_11_24();
    (v114)(v123);
    v119 = v62;
    sub_1DC515FDC();
    v120 = sub_1DC515F8C();
  }

  v124 = v120;
  v125 = v121;
  v126 = OUTLINED_FUNCTION_11_24();
  (v114)(v126);
  if (!v117)
  {
    v129 = 0;
    if (v125)
    {
      goto LABEL_32;
    }

LABEL_34:
    v132 = 0;
    goto LABEL_35;
  }

  v127 = *(**sub_1DC328998() + 104);

  v115 = v127(v115, v117);
  v129 = v128;
  swift_bridgeObjectRelease_n();

  if (!v125)
  {
    goto LABEL_34;
  }

LABEL_32:

  v130 = *(**sub_1DC328998() + 104);

  v124 = v130(v124, v125);
  v132 = v131;
  swift_bridgeObjectRelease_n();

LABEL_35:
  v133 = sub_1DC3E4F24(v40, v173);
  v134 = v176;
  MEMORY[0x1E12948F0](v133);
  v151 = v134;
  v135 = v178;
  sub_1DC430668(v168, v167, v115, v129, v124, v132, v174, v178, v151);
  v136 = sub_1DC5160AC();
  v138 = v137;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D5C0, "֕");
  v139 = (*(v177 + 80) + 32) & ~*(v177 + 80);
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_1DC522F20;
  sub_1DC2DACB8(v135, v140 + v139);
  v182 = v169;
  sub_1DC432274(v136, v138, v171, v170, v140, &v182, v183);
  sub_1DC5160CC();
  OUTLINED_FUNCTION_35();
  (*(v141 + 8))(v119);
  sub_1DC3E4F94(v135);
  sub_1DC28EB30(v40, &qword_1ECC7BFC8, &unk_1DC524050);
  v142 = v183[1];
  v143 = v185;
  v144 = v186;
  result = v184;
  v146 = v179;
  v179->n128_u64[0] = v183[0];
  v146->n128_u64[1] = v142;
  v146[1] = result;
  v146[2].n128_u64[0] = v143;
  v146[2].n128_u8[8] = v144;
  return result;
}

uint64_t sub_1DC3E4C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_1DC51605C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  (*(v13 + 16))(v16 - v15, a1, v11);
  v18 = (*(v13 + 88))(v17, v11);
  if (v18 == *MEMORY[0x1E69D06A8])
  {
    v19 = MEMORY[0x1E69D0720];
LABEL_7:
    v20 = *v19;
    v21 = sub_1DC5161CC();
    OUTLINED_FUNCTION_35();
    (*(v22 + 104))(a2, v20, v21);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v21);
  }

  if (v18 == *MEMORY[0x1E69D06B8])
  {
    v19 = MEMORY[0x1E69D0730];
    goto LABEL_7;
  }

  if (v18 == *MEMORY[0x1E69D06B0])
  {
    v19 = MEMORY[0x1E69D0728];
    goto LABEL_7;
  }

  v24 = sub_1DC29120C();
  (*(v6 + 16))(v10, v24, v4);
  v25 = sub_1DC516F6C();
  v26 = sub_1DC517B9C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1DC287000, v25, v26, "No genAI tool matched", v27, 2u);
    MEMORY[0x1E1298840](v27, -1, -1);
  }

  (*(v6 + 8))(v10, v4);
  v28 = sub_1DC5161CC();
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v28);
  return (*(v13 + 8))(v17, v11);
}

char *sub_1DC3E4F04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC3E4FF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DC3E4F24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC3E4F94(uint64_t a1)
{
  v2 = type metadata accessor for TurnSummary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1DC3E4FF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D5C8, &qword_1DC529690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DC3E5104(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, void *a5)
{
  v321 = a4;
  v320 = a3;
  v322 = a2;
  v328 = sub_1DC516B8C();
  OUTLINED_FUNCTION_0();
  v329 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  v323 = &v320 - v11;
  OUTLINED_FUNCTION_12();
  v336 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v335 = v16 - v15;
  OUTLINED_FUNCTION_12();
  v341 = sub_1DC5171DC();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v340 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v23 = OUTLINED_FUNCTION_10(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v346 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v320 - v27);
  v29 = sub_1DC516C7C();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_153();
  v37 = 0;
  v347 = a1;
  v38 = *(a1 + 16);
  LODWORD(v342) = *MEMORY[0x1E69DAE70];
  LODWORD(v339) = *MEMORY[0x1E69DAE28];
  v334 = (v18 + 16);
  v333 = (v13 + 8);
  v349 = a5 + 7;
  v350 = a5;
  v39 = v18 + 8;
  v40 = v31 + 16;
  v332 = v39;
  v330 = (v31 + 32);
  v348 = v31 + 8;
  v337 = MEMORY[0x1E69E7CC0];
  v338 = v41;
  v345 = v31 + 16;
  v343 = v31;
  while (v37 != v38)
  {
    v42 = *(v31 + 72);
    (*(v31 + 16))(v5, v347 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + v42 * v37++, v29);
    sub_1DC516C5C();
    v43 = sub_1DC5172AC();
    if (__swift_getEnumTagSinglePayload(v28, 1, v43) == 1)
    {
      goto LABEL_22;
    }

    v344 = v42;
    v44 = v40;
    sub_1DC35D0B4(v28, v346);
    OUTLINED_FUNCTION_2_3();
    v46 = v45;
    v47 = OUTLINED_FUNCTION_122();
    v49 = v48(v47);
    if (v49 == v342)
    {
      (*(v46 + 8))(v346, v43);
      v63 = v29;
LABEL_15:
      v64 = v337;
      sub_1DC2BE530(v28, &qword_1ECC7BFF8, &qword_1DC522580);
      v65 = *v330;
      (*v330)(v331, v5, v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v355 = v64;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DC3E7B2C(0, *(v64 + 16) + 1, 1);
        v64 = v355;
      }

      v67 = v64;
      v29 = *(v64 + 16);
      v68 = *(v64 + 24);
      if (v29 >= v68 >> 1)
      {
        v74 = OUTLINED_FUNCTION_26(v68);
        sub_1DC3E7B2C(v74, v29 + 1, 1);
        v67 = v355;
      }

      *(v67 + 16) = v29 + 1;
      v337 = v67;
      OUTLINED_FUNCTION_18_20();
      v65(v69);
      v40 = v345;
      v31 = v343;
    }

    else
    {
      if (v49 == v339)
      {
        (*(v46 + 96))(v346, v43);
        v50 = swift_projectBox();
        (*v334)(v340, v50, v341);
        v51 = v335;
        sub_1DC5171CC();
        v52 = sub_1DC5172BC();
        v29 = v53;
        (*v333)(v51, v336);
        if (v350[2])
        {
          v54 = v350;
          sub_1DC5182FC();
          sub_1DC51769C();
          v55 = sub_1DC51833C();
          v56 = ~(-1 << *(v54 + 32));
          while (1)
          {
            v57 = v55 & v56;
            if (((*(v349 + (((v55 & v56) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v55 & v56)) & 1) == 0)
            {
              break;
            }

            v58 = (v350[6] + 16 * v57);
            v59 = *v58 == v52 && v58[1] == v29;
            if (!v59)
            {
              v60 = sub_1DC51825C();
              v55 = v57 + 1;
              if ((v60 & 1) == 0)
              {
                continue;
              }
            }

            v61 = OUTLINED_FUNCTION_12_21();
            v62(v61);

            v63 = v338;
            goto LABEL_15;
          }
        }

        v70 = OUTLINED_FUNCTION_12_21();
        v71(v70);

        OUTLINED_FUNCTION_18_20();
        v40 = v345;
        v31 = v343;
      }

      else
      {
        (*(v46 + 8))(v346, v43);
        v31 = v343;
        v40 = v44;
      }

LABEL_22:
      sub_1DC2BE530(v28, &qword_1ECC7BFF8, &qword_1DC522580);
      v72 = OUTLINED_FUNCTION_4_30();
      v73(v72);
    }
  }

  v334 = sub_1DC3E6A54(v337, v320, v321);
  v76 = v75;
  v78 = v77;
  v80 = v79;

  v81 = v80 >> 1;
  v82 = v326;
  switch(v322)
  {
    case 1:
      v149 = v81 - v78;
      if (v81 == v78)
      {
        v150 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        if (v81 <= v78)
        {
LABEL_183:
          __break(1u);
LABEL_184:
          result = sub_1DC51829C();
          __break(1u);
          return result;
        }

        v240 = v31;
        v241 = *(v31 + 72);
        v242 = *(v240 + 16);
        v243 = v76 + v78 * v241;
        v150 = MEMORY[0x1E69E7CC0];
        do
        {
          v244 = v327;
          v242(v327, v243, v29);
          v245 = sub_1DC3E6E44();
          v247 = v246;
          (*v348)(v244, v29);
          if (v247)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v251 = OUTLINED_FUNCTION_13_0();
              v150 = sub_1DC2ACCD4(v251, v252, v253, v150);
            }

            v249 = *(v150 + 2);
            v248 = *(v150 + 3);
            if (v249 >= v248 >> 1)
            {
              v254 = OUTLINED_FUNCTION_26(v248);
              v150 = sub_1DC2ACCD4(v254, v249 + 1, 1, v150);
            }

            *(v150 + 2) = v249 + 1;
            v250 = &v150[16 * v249];
            *(v250 + 4) = v245;
            *(v250 + 5) = v247;
          }

          v243 += v241;
          --v149;
        }

        while (v149);
      }

      v151 = sub_1DC322E3C(v150);
      v154 = v151;
      if (!*(v151 + 16))
      {
        goto LABEL_86;
      }

      LOBYTE(v355) = 10;
      sub_1DC30D6EC(v151, v152, v153);
      v155 = sub_1DC51823C();
      OUTLINED_FUNCTION_13_24(v155, v156);
      v157 = 1 << *(v154 + 32);
      v158 = -1;
      if (v157 < 64)
      {
        v158 = ~(-1 << v157);
      }

      v159 = v158 & *(v154 + 56);
      v160 = (v157 + 63) >> 6;

      v161 = 0;
      v162 = MEMORY[0x1E69E7CC0];
      if (v159)
      {
        goto LABEL_78;
      }

      while (1)
      {
        do
        {
          v163 = v161 + 1;
          if (__OFADD__(v161, 1))
          {
            goto LABEL_171;
          }

          if (v163 >= v160)
          {

            v355 = v162;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
            OUTLINED_FUNCTION_1_6();
            sub_1DC327B3C(v189, &qword_1ECC7C130, &unk_1DC5240F0, v190);
            OUTLINED_FUNCTION_8_18();
            sub_1DC5176AC();
            v185 = v191;

            v186 = OUTLINED_FUNCTION_21_14();
            goto LABEL_90;
          }

          v159 = *(v154 + 56 + 8 * v163);
          ++v161;
        }

        while (!v159);
        v161 = v163;
        do
        {
LABEL_78:
          v164 = (*(v154 + 48) + ((v161 << 10) | (16 * __clz(__rbit64(v159)))));
          v166 = *v164;
          v165 = v164[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v170 = OUTLINED_FUNCTION_13_0();
            v162 = sub_1DC2ACCD4(v170, v171, v172, v162);
          }

          v168 = *(v162 + 2);
          v167 = *(v162 + 3);
          if (v168 >= v167 >> 1)
          {
            v173 = OUTLINED_FUNCTION_26(v167);
            v162 = sub_1DC2ACCD4(v173, v168 + 1, 1, v162);
          }

          v159 &= v159 - 1;
          *(v162 + 2) = v168 + 1;
          v169 = &v162[16 * v168];
          *(v169 + 4) = v166;
          *(v169 + 5) = v165;
        }

        while (v159);
      }

    case 2:
      v85 = v81 - v78;
      if (v81 == v78)
      {
        v86 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        if (v81 <= v78)
        {
          goto LABEL_181;
        }

        v192 = *(v31 + 72);
        v349 = *(v31 + 16);
        v346 = v329 + 8;
        v347 = v329 + 16;
        v350 = v192;
        v193 = v76 + v78 * v192;
        v86 = MEMORY[0x1E69E7CC0];
        v194 = v325;
        do
        {
          (v349)(v194, v193, v29);
          if (*(sub_1DC516C6C() + 16))
          {
            OUTLINED_FUNCTION_11_25();
            v195 = v323;
            v196 = v328;
            v197(v323);

            v198 = sub_1DC516B4C();
            v200 = v199;
            v201 = v195;
            v194 = v325;
            v28[1](v201, v196);
            v202 = sub_1DC3E6E44();
            v204 = v203;
            v205 = OUTLINED_FUNCTION_4_30();
            v206(v205);
            if (v204)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v211 = OUTLINED_FUNCTION_13_0();
                v86 = sub_1DC303F84(v211, v212, v213, v86);
              }

              v29 = v86[2];
              v207 = v86[3];
              v28 = (v29 + 1);
              if (v29 >= v207 >> 1)
              {
                v214 = OUTLINED_FUNCTION_26(v207);
                v86 = sub_1DC303F84(v214, v29 + 1, 1, v86);
              }

              v86[2] = v28;
              v208 = &v86[4 * v29];
              v208[4] = v198;
              v208[5] = v200;
              v208[6] = v202;
              v208[7] = v204;
              OUTLINED_FUNCTION_18_20();
            }

            else
            {
            }
          }

          else
          {

            v209 = OUTLINED_FUNCTION_4_30();
            v210(v209);
          }

          v193 += v350;
          --v85;
        }

        while (v85);
      }

      v87 = 0;
      v88 = v86[2];
      v89 = v86 + 7;
      v90 = MEMORY[0x1E69E7CC0];
      while (v88 != v87)
      {
        if (v87 >= v86[2])
        {
          goto LABEL_170;
        }

        v92 = *(v89 - 1);
        v91 = *v89;
        v94 = *(v89 - 3);
        v93 = *(v89 - 2);
        OUTLINED_FUNCTION_15_15(91);

        MEMORY[0x1E1296160](v94, v93);
        MEMORY[0x1E1296160](8236, 0xE200000000000000);
        MEMORY[0x1E1296160](v92, v91);
        OUTLINED_FUNCTION_26_15();

        v95 = v352;
        v96 = v353;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = OUTLINED_FUNCTION_13_0();
          v90 = sub_1DC2ACCD4(v100, v101, v102, v90);
        }

        v98 = *(v90 + 2);
        v97 = *(v90 + 3);
        if (v98 >= v97 >> 1)
        {
          v103 = OUTLINED_FUNCTION_26(v97);
          v90 = sub_1DC2ACCD4(v103, v98 + 1, 1, v90);
        }

        *(v90 + 2) = v98 + 1;
        v99 = &v90[16 * v98];
        *(v99 + 4) = v95;
        *(v99 + 5) = v96;
        v89 += 4;
        ++v87;
      }

      v174 = sub_1DC322E3C(v90);
      v177 = v174;
      if (*(v174 + 16))
      {
        LOBYTE(v355) = 11;
        sub_1DC30D6EC(v174, v175, v176);
        v178 = sub_1DC51823C();
        OUTLINED_FUNCTION_13_24(v178, v179);
        v355 = v177;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFC8, &qword_1DC526220);
        v180 = sub_1DC327B3C(&unk_1ECC7D5E0, &qword_1ECC7CFC8, &qword_1DC526220, MEMORY[0x1E69E6508]);
        sub_1DC2A32B0(v180, v181, v182);
        OUTLINED_FUNCTION_8_18();
        v183 = sub_1DC5179DC();
        v185 = v184;

        v186 = v183;
LABEL_90:
        MEMORY[0x1E1296160](v186, v185);

        OUTLINED_FUNCTION_26_15();
        goto LABEL_162;
      }

LABEL_86:

      v187 = sub_1DC517B9C();
      sub_1DC297814();
      v84 = sub_1DC296DBC();
      sub_1DC516F0C(v187, &dword_1DC287000, v84, "Spans prompt nil - no spans after filtering", 43, 2, MEMORY[0x1E69E7CC0], v320);
LABEL_87:
      swift_unknownObjectRelease();

      return 0;
    case 3:
      v104 = v81 - v78;
      if (v81 == v78)
      {
        v350 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        if (v81 <= v78)
        {
          goto LABEL_182;
        }

        v215 = v31;
        v216 = *(v31 + 72);
        v349 = *(v215 + 16);
        v346 = v329 + 8;
        v347 = v329 + 16;
        v217 = v76 + v78 * v216;
        v350 = MEMORY[0x1E69E7CC0];
        do
        {
          (v349)(v82, v217, v29);
          if (*(sub_1DC516C6C() + 16))
          {
            OUTLINED_FUNCTION_11_25();
            v218 = v324;
            v219 = v328;
            v220(v324);

            v221 = sub_1DC516B4C();
            v223 = v222;
            v224 = v218;
            v82 = v326;
            v28[1](v224, v219);
            v225 = sub_1DC3E6E44();
            v227 = v226;
            v228 = OUTLINED_FUNCTION_4_30();
            v229(v228);
            if (v227)
            {
              v230 = v350;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v236 = OUTLINED_FUNCTION_13_0();
                v230 = sub_1DC303F84(v236, v237, v238, v230);
              }

              v29 = v230[2];
              v231 = v230[3];
              v350 = v230;
              v28 = (v29 + 1);
              if (v29 >= v231 >> 1)
              {
                v239 = OUTLINED_FUNCTION_26(v231);
                v350 = sub_1DC303F84(v239, v29 + 1, 1, v350);
              }

              v232 = v350;
              v350[2] = v28;
              v233 = &v232[4 * v29];
              v233[4] = v221;
              v233[5] = v223;
              v233[6] = v225;
              v233[7] = v227;
              OUTLINED_FUNCTION_18_20();
            }

            else
            {
            }
          }

          else
          {

            v234 = OUTLINED_FUNCTION_4_30();
            v235(v234);
          }

          v217 += v216;
          --v104;
        }

        while (v104);
      }

      v105 = v350;
      v347 = v350[2];
      if (v347)
      {
        v106 = 0;
        v107 = v350 + 7;
        v108 = MEMORY[0x1E69E7CC8];
        while (v106 < v105[2])
        {
          v110 = *(v107 - 3);
          v109 = *(v107 - 2);
          v111 = *(v107 - 1);
          v112 = *v107;
          v113 = *(v108 + 16);

          v349 = v109;
          if (v113 && (v114 = sub_1DC2AEB04(v110, v109), (v115 & 1) != 0))
          {
            v116 = *(*(v108 + 56) + 8 * v114);
          }

          else
          {
            v116 = MEMORY[0x1E69E7CC8];
          }

          v117 = v116[2];
          v343 = v108;
          if (v117)
          {
            v118 = OUTLINED_FUNCTION_19_18();
            v120 = sub_1DC2AEB04(v118, v119);
            if (v121)
            {
              v117 = *(v116[7] + 8 * v120);
            }

            else
            {
              v117 = 0;
            }
          }

          v122 = v117 + 1;
          if (__OFADD__(v117, 1))
          {
            goto LABEL_173;
          }

          v348 = v106;
          swift_isUniquelyReferenced_nonNull_native();
          v352 = v116;
          v123 = OUTLINED_FUNCTION_19_18();
          v125 = sub_1DC2AEB04(v123, v124);
          if (__OFADD__(v116[2], (v126 & 1) == 0))
          {
            goto LABEL_174;
          }

          v127 = v125;
          v128 = v126;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D5D0, &unk_1DC528818);
          if (sub_1DC517FFC())
          {
            v129 = OUTLINED_FUNCTION_19_18();
            v131 = sub_1DC2AEB04(v129, v130);
            if ((v128 & 1) != (v132 & 1))
            {
              goto LABEL_184;
            }

            v127 = v131;
          }

          if (v128)
          {

            v133 = v352;
            *(v352[7] + 8 * v127) = v122;
          }

          else
          {
            v133 = v352;
            v352[(v127 >> 6) + 8] |= 1 << v127;
            v134 = (v133[6] + 16 * v127);
            *v134 = v111;
            v134[1] = v112;
            *(v133[7] + 8 * v127) = v122;
            v135 = v133[2];
            v136 = __OFADD__(v135, 1);
            v137 = v135 + 1;
            if (v136)
            {
              goto LABEL_176;
            }

            v133[2] = v137;
          }

          v138 = v343;
          swift_isUniquelyReferenced_nonNull_native();
          v352 = v138;
          v139 = v349;
          v140 = sub_1DC2AEB04(v110, v349);
          v105 = v350;
          if (__OFADD__(*(v138 + 16), (v141 & 1) == 0))
          {
            goto LABEL_175;
          }

          v142 = v140;
          v143 = v141;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D5D8, &unk_1DC528820);
          if (sub_1DC517FFC())
          {
            v144 = sub_1DC2AEB04(v110, v139);
            if ((v143 & 1) != (v145 & 1))
            {
              goto LABEL_184;
            }

            v142 = v144;
          }

          v108 = v352;
          if (v143)
          {
            *(v352[7] + 8 * v142) = v133;
          }

          else
          {
            v352[(v142 >> 6) + 8] |= 1 << v142;
            v146 = (*(v108 + 48) + 16 * v142);
            *v146 = v110;
            v146[1] = v139;
            *(*(v108 + 56) + 8 * v142) = v133;
            v147 = *(v108 + 16);
            v136 = __OFADD__(v147, 1);
            v148 = v147 + 1;
            if (v136)
            {
              goto LABEL_177;
            }

            *(v108 + 16) = v148;
          }

          v106 = v348 + 1;
          v107 += 4;
          if (v347 == v348 + 1)
          {
            goto LABEL_128;
          }
        }

        goto LABEL_172;
      }

      v108 = MEMORY[0x1E69E7CC8];
LABEL_128:

      v258 = *(v108 + 16);
      v259 = MEMORY[0x1E69E7CC0];
      if (!v258)
      {
        v260 = MEMORY[0x1E69E7CC0];
        goto LABEL_160;
      }

      v351 = MEMORY[0x1E69E7CC0];
      sub_1DC2DF6FC(0, v258, 0);
      v260 = v351;
      v262 = sub_1DC3743F8(v108);
      v264 = v263;
      v265 = 0;
      v335 = v108 + 64;
      v343 = v108;
      v333 = v258;
      while (2)
      {
        if (v262 < 0 || v262 >= 1 << *(v108 + 32))
        {
          goto LABEL_178;
        }

        if (((*(v335 + ((v262 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v262) & 1) == 0)
        {
          goto LABEL_179;
        }

        if (*(v108 + 36) != v264)
        {
          goto LABEL_180;
        }

        LODWORD(v341) = v261;
        v342 = v265;
        v266 = (*(v108 + 48) + 16 * v262);
        v267 = *v266;
        v268 = *(*(v108 + 56) + 8 * v262);
        v269 = *(v268 + 16);
        v340 = v266[1];

        if (!v269)
        {
          goto LABEL_154;
        }

        v336 = v267;
        v337 = v264;
        v338 = v262;
        v339 = v260;
        v355 = v259;
        sub_1DC2DF6FC(0, v269, 0);
        v350 = v355;
        v272 = sub_1DC3743F8(v268);
        v273 = 0;
        v274 = v268 + 64;
        v345 = v270;
        v346 = v269;
        v344 = v268 + 72;
        v347 = v268 + 64;
        do
        {
          if (v272 < 0 || v272 >= 1 << *(v268 + 32))
          {
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          v275 = v272 >> 6;
          if ((*(v274 + 8 * (v272 >> 6)) & (1 << v272)) == 0)
          {
            goto LABEL_165;
          }

          if (*(v268 + 36) != v270)
          {
            goto LABEL_166;
          }

          v349 = v270;
          LODWORD(v348) = v271;
          v276 = (*(v268 + 48) + 16 * v272);
          v278 = *v276;
          v277 = v276[1];
          v279 = *(*(v268 + 56) + 8 * v272);
          OUTLINED_FUNCTION_15_15(91);

          MEMORY[0x1E1296160](v278, v277);
          MEMORY[0x1E1296160](8236, 0xE200000000000000);
          v354 = v279;
          v280 = sub_1DC51823C();
          MEMORY[0x1E1296160](v280);

          OUTLINED_FUNCTION_26_15();

          v282 = v352;
          v281 = v353;
          v283 = v350;
          v355 = v350;
          v285 = v350[2];
          v284 = v350[3];
          if (v285 >= v284 >> 1)
          {
            v295 = OUTLINED_FUNCTION_26(v284);
            sub_1DC2DF6FC(v295, v285 + 1, 1);
            v283 = v355;
          }

          v283[2] = v285 + 1;
          v286 = &v283[2 * v285];
          v286[4] = v282;
          v286[5] = v281;
          v287 = 1 << *(v268 + 32);
          if (v272 >= v287)
          {
            goto LABEL_167;
          }

          v274 = v347;
          v288 = *(v347 + 8 * v275);
          if ((v288 & (1 << v272)) == 0)
          {
            goto LABEL_168;
          }

          if (*(v268 + 36) != v349)
          {
            goto LABEL_169;
          }

          v350 = v283;
          v289 = v288 & (-2 << (v272 & 0x3F));
          if (v289)
          {
            v287 = __clz(__rbit64(v289)) | v272 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v290 = v275 << 6;
            v291 = (v344 + 8 * v275);
            v292 = v275 + 1;
            while (v292 < (v287 + 63) >> 6)
            {
              v294 = *v291++;
              v293 = v294;
              v290 += 64;
              ++v292;
              if (v294)
              {
                sub_1DC3EA158(v272, v349, v348 & 1);
                v287 = __clz(__rbit64(v293)) + v290;
                goto LABEL_152;
              }
            }

            sub_1DC3EA158(v272, v349, v348 & 1);
          }

LABEL_152:
          v271 = 0;
          ++v273;
          v272 = v287;
          v270 = v345;
        }

        while (v273 != v346);
        v260 = v339;
        v262 = v338;
        LODWORD(v264) = v337;
        v259 = v350;
LABEL_154:
        OUTLINED_FUNCTION_15_15(123);
        v296 = OUTLINED_FUNCTION_21_14();
        MEMORY[0x1E1296160](v296, v340);
        MEMORY[0x1E1296160](5972026, 0xE300000000000000);
        v355 = v259;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
        OUTLINED_FUNCTION_1_6();
        sub_1DC327B3C(&qword_1ECC7B9F0, &qword_1ECC7C130, &unk_1DC5240F0, v297);
        OUTLINED_FUNCTION_8_18();
        sub_1DC5176AC();
        v299 = v298;

        v300 = OUTLINED_FUNCTION_21_14();
        MEMORY[0x1E1296160](v300, v299);

        MEMORY[0x1E1296160](32093, 0xE200000000000000);
        v301 = v352;
        v302 = v353;

        v351 = v260;
        v304 = v260[2];
        v303 = v260[3];
        v305 = v342;
        if (v304 >= v303 >> 1)
        {
          v310 = OUTLINED_FUNCTION_26(v303);
          sub_1DC2DF6FC(v310, v304 + 1, 1);
          v260 = v351;
        }

        v306 = v305 + 1;
        v260[2] = v304 + 1;
        v307 = &v260[2 * v304];
        v307[4] = v301;
        v307[5] = v302;
        v108 = v343;
        v308 = sub_1DC3EA0D8(v262, v264, v341 & 1, v343);
        v262 = v308;
        v264 = v309;
        v59 = v306 == v333;
        v265 = v306;
        v259 = MEMORY[0x1E69E7CC0];
        if (!v59)
        {
          continue;
        }

        break;
      }

      v255 = sub_1DC3EA158(v308, v309, v261 & 1);
LABEL_160:
      if (v260[2])
      {
        LOBYTE(v355) = 11;
        sub_1DC30D6EC(v255, v256, v257);
        v311 = sub_1DC51823C();
        OUTLINED_FUNCTION_13_24(v311, v312);
        v355 = v260;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
        OUTLINED_FUNCTION_1_6();
        sub_1DC327B3C(v313, &qword_1ECC7C130, &unk_1DC5240F0, v314);
        OUTLINED_FUNCTION_8_18();
        sub_1DC5176AC();
        v316 = v315;

        v317 = OUTLINED_FUNCTION_21_14();
        MEMORY[0x1E1296160](v317, v316);

        OUTLINED_FUNCTION_26_15();

LABEL_162:
        swift_unknownObjectRelease();
        return v352;
      }

      else
      {

        v318 = sub_1DC517B9C();
        sub_1DC297814();
        v319 = sub_1DC296DBC();
        sub_1DC516F0C(v318, &dword_1DC287000, v319, "Spans prompt nil - no spans after filtering ", 44, 2, MEMORY[0x1E69E7CC0]);

        swift_unknownObjectRelease();
        return 0;
      }

    default:
      v83 = sub_1DC517B9C();
      sub_1DC297814();
      v84 = sub_1DC296DBC();
      sub_1DC516F0C(v83, &dword_1DC287000, v84, "Spans prompt nil - no span formatting option specified", 54, 2, MEMORY[0x1E69E7CC0], v320);
      goto LABEL_87;
  }
}

uint64_t sub_1DC3E6A54(uint64_t a1, unint64_t a2, char a3)
{
  sub_1DC516B8C();
  OUTLINED_FUNCTION_0();
  v34 = v7;
  v35 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v33 = v10 - v9;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC516C7C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_153();
  switch(a3)
  {
    case 1:
      v38 = a1;

      sub_1DC3E7D00(&v38);
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

      __break(1u);

      __break(1u);
      return result;
    case 2:
      goto LABEL_4;
    case 3:
      sub_1DC3EA01C(0, *(a1 + 16), a1);
      goto LABEL_19;
    default:
      v38 = a1;

      sub_1DC3E9D80();
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_4:
        v17 = 0;
        v18 = *&a2;
        v36 = *(a1 + 16);
        v30 = (v13 + 32);
        v31 = v16;
        v32 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v36 == v17)
          {
            sub_1DC3EA01C(0, *(v32 + 16), v32);
            OUTLINED_FUNCTION_24_14();

            return v3;
          }

          v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
          v20 = *(v13 + 72);
          (*(v13 + 16))(v4, a1 + v19 + v20 * v17, v11);
          v21 = sub_1DC516C6C();
          if (*(v21 + 16))
          {
            v3 = v11;
            (*(v35 + 16))(v33, v21 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v34);

            sub_1DC516B1C();
            v23 = v22;
            (*(v35 + 8))(v33, v34);
            if (v23 < v18)
            {
              goto LABEL_8;
            }

LABEL_10:
            v24 = *v30;
            (*v30)(v31, v4, v11);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v26 = v32;
            v38 = v32;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1DC3E7B2C(0, *(v32 + 16) + 1, 1);
              v26 = v38;
            }

            v3 = *(v26 + 16);
            v27 = *(v26 + 24);
            if (v3 >= v27 >> 1)
            {
              v28 = OUTLINED_FUNCTION_26(v27);
              sub_1DC3E7B2C(v28, v3 + 1, 1);
              v26 = v38;
            }

            ++v17;
            *(v26 + 16) = v3 + 1;
            v32 = v26;
            v24(v26 + v19 + v3 * v20, v31, v11);
          }

          else
          {

            if (v18 <= 0.0)
            {
              goto LABEL_10;
            }

LABEL_8:
            (*(v13 + 8))(v4, v11);
            ++v17;
          }
        }
      }

LABEL_18:
      sub_1DC3E7424(a2, v38);
LABEL_19:
      OUTLINED_FUNCTION_24_14();
      return v3;
  }
}

unint64_t sub_1DC3E6E44()
{
  sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v58 = v2;
  v59 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v57 = v4 - v3;
  OUTLINED_FUNCTION_12();
  sub_1DC5171DC();
  OUTLINED_FUNCTION_0();
  v55 = v6;
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_1DC51728C();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_153();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v19 = OUTLINED_FUNCTION_10(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  sub_1DC516C5C();
  v23 = sub_1DC5172AC();
  v24 = 0;
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
  {
    v25 = OUTLINED_FUNCTION_19_18();
    sub_1DC35D0B4(v25, v26);
    OUTLINED_FUNCTION_2_3();
    v27 = OUTLINED_FUNCTION_122();
    v29 = v28(v27);
    if (v29 == *MEMORY[0x1E69DAE70])
    {
      v30 = OUTLINED_FUNCTION_122();
      v31(v30);
      v32 = swift_projectBox();
      v33 = *(v12 + 16);
      v33(v0, v32, v10);
      v33(v16, v0, v10);
      v34 = OUTLINED_FUNCTION_47_0();
      v36 = v35(v34);
      if (v36 == *MEMORY[0x1E69DADE8])
      {
        v37 = *(v12 + 8);
        v37(v0, v10);
        v38 = OUTLINED_FUNCTION_47_0();
        (v37)(v38);

        v24 = 0x6550746E65746E49;
        goto LABEL_15;
      }

      if (v36 == *MEMORY[0x1E69DADA8])
      {
        v47 = *(v12 + 8);
        v47(v0, v10);
        v48 = OUTLINED_FUNCTION_47_0();
        (v47)(v48);

        v24 = 0xD000000000000011;
        goto LABEL_15;
      }

      v51 = *(v12 + 8);
      v51(v0, v10);
      v52 = OUTLINED_FUNCTION_47_0();
      (v51)(v52);
    }

    else
    {
      if (v29 != *MEMORY[0x1E69DAE28])
      {
        v49 = OUTLINED_FUNCTION_122();
        v50(v49);
LABEL_14:
        v24 = 0;
        goto LABEL_15;
      }

      v39 = OUTLINED_FUNCTION_122();
      v40(v39);
      v41 = swift_projectBox();
      v43 = v55;
      v42 = v56;
      (*(v55 + 16))(v9, v41, v56);
      v44 = v57;
      sub_1DC5171CC();
      (*(v43 + 8))(v9, v42);
      v46 = v58;
      v45 = v59;
      if ((*(v58 + 88))(v44, v59) == *MEMORY[0x1E69DB098])
      {
        (*(v46 + 96))(v44, v45);
        v24 = *(*v44 + 32);

        goto LABEL_15;
      }

      (*(v46 + 8))(v44, v45);
    }

    goto LABEL_14;
  }

LABEL_15:
  sub_1DC2BE530(v22, &qword_1ECC7BFF8, &qword_1DC522580);
  return v24;
}

uint64_t sub_1DC3E737C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DC516B8C();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

unint64_t sub_1DC3E7424(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1DC2DAEF4(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_1DC3EA01C(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1DC3E74B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D600, &unk_1DC528A30);
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = v2 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_1DC516C6C();
  sub_1DC3E737C(v8, v7);

  v9 = sub_1DC516B8C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    sub_1DC2BE530(v7, &qword_1ECC7D600, &unk_1DC528A30);
    v10 = 0.0;
  }

  else
  {
    sub_1DC516B1C();
    v10 = v11;
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  v12 = sub_1DC516C6C();
  sub_1DC3E737C(v12, v4);

  if (__swift_getEnumTagSinglePayload(v4, 1, v9) == 1)
  {
    sub_1DC2BE530(v4, &qword_1ECC7D600, &unk_1DC528A30);
    v13 = 0.0;
  }

  else
  {
    sub_1DC516B1C();
    v13 = v14;
    (*(*(v9 - 8) + 8))(v4, v9);
  }

  return v13 < v10;
}

uint64_t sub_1DC3E768C(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1DC3E76BC(uint64_t a1)
{
  sub_1DC5182FC();
  sub_1DC51831C();
  return sub_1DC51833C();
}

uint64_t sub_1DC3E7728(uint64_t a1, uint64_t a2)
{
  sub_1DC5182FC();
  sub_1DC51831C();
  return sub_1DC51833C();
}

uint64_t sub_1DC3E776C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3E768C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC3E77A4(uint64_t result)
{
  if (result >= 3u)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1DC3E77B8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3E77A4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC3E77E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC522F10;
  *(v0 + 32) = sub_1DC51772C();
  *(v0 + 40) = v1;
  result = sub_1DC51772C();
  *(v0 + 48) = result;
  *(v0 + 56) = v3;
  qword_1ECC8F9D8 = v0;
  return result;
}

uint64_t *sub_1DC3E7860()
{
  if (qword_1ECC8A180 != -1)
  {
    swift_once();
  }

  return &qword_1ECC8F9D8;
}

uint64_t sub_1DC3E78B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC523AA0;
  *(v0 + 32) = sub_1DC51772C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1DC51772C();
  *(v0 + 56) = v2;
  v3 = sub_1DC3EAA94();
  v5 = *v3;
  v4 = v3[1];
  *(v0 + 64) = v5;
  *(v0 + 72) = v4;

  v6 = sub_1DC3EAAA0();
  v8 = *v6;
  v7 = v6[1];
  *(v0 + 80) = v8;
  *(v0 + 88) = v7;

  v9 = sub_1DC3EAAAC();
  v11 = *v9;
  v10 = v9[1];
  *(v0 + 96) = v11;
  *(v0 + 104) = v10;

  v12 = sub_1DC3EAAC4();
  v14 = *v12;
  v13 = v12[1];
  *(v0 + 112) = v14;
  *(v0 + 120) = v13;

  v15 = sub_1DC3EAB00();
  v17 = *v15;
  v16 = v15[1];
  *(v0 + 128) = v17;
  *(v0 + 136) = v16;

  v18 = sub_1DC3EAB60();
  v20 = *v18;
  v19 = v18[1];
  *(v0 + 144) = v20;
  *(v0 + 152) = v19;

  v21 = sub_1DC3EAB3C();
  v23 = *v21;
  v22 = v21[1];
  *(v0 + 160) = v23;
  *(v0 + 168) = v22;

  v24 = sub_1DC3EAAD0();
  v26 = *v24;
  v25 = v24[1];
  *(v0 + 176) = v26;
  *(v0 + 184) = v25;

  v27 = sub_1DC3EAB18();
  v29 = *v27;
  v28 = v27[1];
  *(v0 + 192) = v29;
  *(v0 + 200) = v28;

  v30 = sub_1DC3EAB24();
  v32 = *v30;
  v31 = v30[1];
  *(v0 + 208) = v32;
  *(v0 + 216) = v31;

  v33 = sub_1DC3EAB48();
  v35 = *v33;
  v34 = v33[1];
  *(v0 + 224) = v35;
  *(v0 + 232) = v34;

  v36 = sub_1DC3EAB78();
  v38 = *v36;
  v37 = v36[1];
  *(v0 + 240) = v38;
  *(v0 + 248) = v37;

  v39 = sub_1DC3EAA88();
  v41 = *v39;
  v40 = v39[1];
  *(v0 + 256) = v41;
  *(v0 + 264) = v40;
  qword_1ECC8F9E0 = v0;
}

uint64_t *sub_1DC3E7A08()
{
  if (qword_1ECC8A188 != -1)
  {
    swift_once();
  }

  return &qword_1ECC8F9E0;
}

uint64_t sub_1DC3E7A58(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC516C7C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC516C7C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_1DC3E7B2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC3E7B4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DC3E7B4C(void *result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D5F8, &qword_1DC529670);
  v10 = *(sub_1DC516C7C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC516C7C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC3E7A58(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1DC3E7D00(uint64_t *a1)
{
  v2 = *(sub_1DC516C7C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DC3EA0C4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1DC3E7DA8(v6);
  *a1 = v3;
  return result;
}

char *sub_1DC3E7DA8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DC51822C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1DC516C7C();
        v6 = sub_1DC517A4C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1DC516C7C() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1DC3E83C0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DC3E7ED8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DC3E7ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D600, &unk_1DC528A30);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v49 - v12;
  v13 = sub_1DC516C7C();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v59 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v65 = &v49 - v21;
  v51 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v62 = *(v20 + 16);
    v63 = v20 + 16;
    v23 = *(v20 + 72);
    v60 = (v20 + 8);
    v61 = v11;
    v24 = v22 + v23 * (a3 - 1);
    v56 = -v23;
    v57 = (v20 + 32);
    v25 = a1 - a3;
    v58 = v22;
    v50 = v23;
    v26 = v22 + v23 * a3;
    while (2)
    {
      v54 = v24;
      v55 = a3;
      v52 = v26;
      v53 = v25;
      v27 = v25;
      do
      {
        v28 = v62;
        v62(v65, v26, v13);
        v29 = v18;
        v28(v18, v24, v13);
        v30 = sub_1DC516C6C();
        v31 = *(v30 + 16);
        v32 = sub_1DC516B8C();
        v33 = v32;
        if (v31)
        {
          v34 = v64;
          (*(*(v32 - 8) + 16))(v64, v30 + ((*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80)), v32);
          v35 = 0;
        }

        else
        {
          v35 = 1;
          v34 = v64;
        }

        __swift_storeEnumTagSinglePayload(v34, v35, 1, v33);

        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v33);
        v37 = v34;
        v18 = v29;
        if (EnumTagSinglePayload == 1)
        {
          sub_1DC2BE530(v37, &qword_1ECC7D600, &unk_1DC528A30);
          v38 = 0.0;
        }

        else
        {
          sub_1DC516B1C();
          v38 = v39;
          (*(*(v33 - 8) + 8))(v37, v33);
        }

        v40 = v61;
        v41 = sub_1DC516C6C();
        if (*(v41 + 16))
        {
          (*(*(v33 - 8) + 16))(v40, v41 + ((*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80)), v33);
          v42 = 0;
        }

        else
        {
          v42 = 1;
        }

        __swift_storeEnumTagSinglePayload(v40, v42, 1, v33);

        if (__swift_getEnumTagSinglePayload(v40, 1, v33) == 1)
        {
          sub_1DC2BE530(v40, &qword_1ECC7D600, &unk_1DC528A30);
          v43 = 0.0;
        }

        else
        {
          sub_1DC516B1C();
          v43 = v44;
          (*(*(v33 - 8) + 8))(v40, v33);
        }

        v45 = *v60;
        (*v60)(v18, v13);
        result = (v45)(v65, v13);
        if (v43 >= v38)
        {
          break;
        }

        if (!v58)
        {
          __break(1u);
          return result;
        }

        v46 = *v57;
        v47 = v59;
        (*v57)(v59, v26, v13);
        swift_arrayInitWithTakeFrontToBack();
        result = (v46)(v24, v47, v13);
        v24 += v56;
        v26 += v56;
      }

      while (!__CFADD__(v27++, 1));
      a3 = v55 + 1;
      v24 = v54 + v50;
      v25 = v53 - 1;
      v26 = v52 + v50;
      if (v55 + 1 != v51)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DC3E83C0(char **a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v162 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D600, &unk_1DC528A30);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v181 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v157 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v157 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v157 - v15;
  v17 = sub_1DC516C7C();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v165 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v179 = &v157 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v186 = &v157 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v185 = &v157 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v177 = &v157 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v175 = &v157 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  result = MEMORY[0x1EEE9AC00](v30);
  v173 = v33;
  v174 = a3;
  v35 = a3[1];
  if (v35 < 1)
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_125:
    a4 = *v162;
    if (!*v162)
    {
      goto LABEL_168;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_127;
    }

    goto LABEL_162;
  }

  v158 = &v157 - v32;
  v159 = v34;
  v167 = v16;
  v36 = 0;
  v183 = v33 + 16;
  v184 = (v33 + 8);
  v182 = (v33 + 32);
  v37 = MEMORY[0x1E69E7CC0];
  v161 = a4;
  v180 = v11;
  v168 = v14;
  while (1)
  {
    v38 = v36 + 1;
    v166 = v36;
    if (v36 + 1 >= v35)
    {
      v68 = v36;
    }

    else
    {
      v172 = v35;
      v39 = *v174;
      v40 = *(v33 + 72);
      v41 = *v174 + v40 * v38;
      v42 = *(v33 + 16);
      v43 = v158;
      v42(v158, v41, v17);
      v178 = v39;
      v44 = &v39[v40 * v166];
      v45 = v159;
      v170 = v42;
      v42(v159, v44, v17);
      LODWORD(v171) = sub_1DC3E74B8();
      if (v176)
      {
        v156 = *v184;
        (*v184)(v45, v17);
        (v156)(v43, v17);
      }

      v160 = v37;
      v46 = *v184;
      (*v184)(v45, v17);
      v169 = v46;
      result = (v46)(v43, v17);
      v47 = v166 + 2;
      v48 = &v178[v40 * (v166 + 2)];
      v49 = v40;
      v178 = v40;
      v50 = v172;
      while (1)
      {
        v37 = v47;
        if (v38 + 1 >= v50)
        {
          break;
        }

        v51 = v38;
        v52 = v170;
        (v170)(v175, v48, v17);
        v52(v177, v41, v17);
        v53 = sub_1DC516C6C();
        v54 = *(v53 + 16);
        v55 = sub_1DC516B8C();
        v56 = v55;
        if (v54)
        {
          v57 = v167;
          (*(*(v55 - 8) + 16))(v167, v53 + ((*(*(v55 - 8) + 80) + 32) & ~*(*(v55 - 8) + 80)), v55);
          v58 = 0;
        }

        else
        {
          v58 = 1;
          v57 = v167;
        }

        __swift_storeEnumTagSinglePayload(v57, v58, 1, v56);

        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v56);
        v60 = v168;
        if (EnumTagSinglePayload == 1)
        {
          sub_1DC2BE530(v57, &qword_1ECC7D600, &unk_1DC528A30);
          v61 = 0.0;
        }

        else
        {
          sub_1DC516B1C();
          v61 = v62;
          (*(*(v56 - 8) + 8))(v57, v56);
        }

        v50 = v172;
        v63 = sub_1DC516C6C();
        if (*(v63 + 16))
        {
          (*(*(v56 - 8) + 16))(v60, v63 + ((*(*(v56 - 8) + 80) + 32) & ~*(*(v56 - 8) + 80)), v56);
          v64 = 0;
        }

        else
        {
          v64 = 1;
        }

        __swift_storeEnumTagSinglePayload(v60, v64, 1, v56);

        if (__swift_getEnumTagSinglePayload(v60, 1, v56) == 1)
        {
          sub_1DC2BE530(v60, &qword_1ECC7D600, &unk_1DC528A30);
          v65 = 0.0;
        }

        else
        {
          sub_1DC516B1C();
          v65 = v66;
          (*(*(v56 - 8) + 8))(v60, v56);
        }

        v67 = v169;
        (v169)(v177, v17);
        result = (v67)(v175, v17);
        v49 = v178;
        v48 = &v178[v48];
        v41 += v178;
        v38 = v51 + 1;
        v47 = v37 + 1;
        if (((v171 ^ (v65 >= v61)) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v38 = v50;
LABEL_23:
      a4 = v161;
      if (v171)
      {
        v68 = v166;
        if (v38 < v166)
        {
          goto LABEL_161;
        }

        if (v166 >= v38)
        {
          v37 = v160;
        }

        else
        {
          v69 = v50 >= v37 ? v37 : v50;
          v70 = v49 * (v69 - 1);
          v71 = v49 * v69;
          v72 = v38;
          v73 = v166 * v49;
          v172 = v72;
          v74 = v166;
          do
          {
            if (v74 != --v72)
            {
              v75 = *v174;
              if (!*v174)
              {
                goto LABEL_166;
              }

              v76 = *v182;
              (*v182)(v165, v75 + v73, v17);
              v77 = v73 < v70 || v75 + v73 >= (v75 + v71);
              if (v77)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v73 != v70)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v76)(v75 + v70, v165, v17);
              v68 = v166;
              v49 = v178;
            }

            ++v74;
            v70 -= v49;
            v71 -= v49;
            v73 += v49;
          }

          while (v74 < v72);
          a4 = v161;
          v37 = v160;
          v38 = v172;
        }
      }

      else
      {
        v37 = v160;
        v68 = v166;
      }
    }

    v78 = v174[1];
    if (v38 < v78)
    {
      if (__OFSUB__(v38, v68))
      {
        goto LABEL_158;
      }

      if (v38 - v68 < a4)
      {
        break;
      }
    }

LABEL_73:
    if (v38 < v68)
    {
      goto LABEL_157;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DC30B0C0(0, *(v37 + 16) + 1, 1, v37);
      v37 = result;
    }

    v106 = *(v37 + 16);
    v105 = *(v37 + 24);
    v107 = v106 + 1;
    v172 = v38;
    if (v106 >= v105 >> 1)
    {
      result = sub_1DC30B0C0((v105 > 1), v106 + 1, 1, v37);
      v37 = result;
    }

    *(v37 + 16) = v107;
    v108 = v37 + 32;
    v109 = (v37 + 32 + 16 * v106);
    v110 = v172;
    *v109 = v68;
    v109[1] = v110;
    v178 = *v162;
    if (!v178)
    {
      goto LABEL_167;
    }

    if (v106)
    {
      while (1)
      {
        v111 = v107 - 1;
        v112 = (v108 + 16 * (v107 - 1));
        v113 = (v37 + 16 * v107);
        if (v107 >= 4)
        {
          break;
        }

        if (v107 == 3)
        {
          v114 = *(v37 + 32);
          v115 = *(v37 + 40);
          v124 = __OFSUB__(v115, v114);
          v116 = v115 - v114;
          v117 = v124;
LABEL_93:
          if (v117)
          {
            goto LABEL_144;
          }

          v129 = *v113;
          v128 = v113[1];
          v130 = __OFSUB__(v128, v129);
          v131 = v128 - v129;
          v132 = v130;
          if (v130)
          {
            goto LABEL_147;
          }

          v133 = v112[1];
          v134 = v133 - *v112;
          if (__OFSUB__(v133, *v112))
          {
            goto LABEL_150;
          }

          if (__OFADD__(v131, v134))
          {
            goto LABEL_152;
          }

          if (v131 + v134 >= v116)
          {
            if (v116 < v134)
            {
              v111 = v107 - 2;
            }

            goto LABEL_115;
          }

          goto LABEL_108;
        }

        if (v107 < 2)
        {
          goto LABEL_146;
        }

        v136 = *v113;
        v135 = v113[1];
        v124 = __OFSUB__(v135, v136);
        v131 = v135 - v136;
        v132 = v124;
LABEL_108:
        if (v132)
        {
          goto LABEL_149;
        }

        v138 = *v112;
        v137 = v112[1];
        v124 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v124)
        {
          goto LABEL_151;
        }

        if (v139 < v131)
        {
          goto LABEL_122;
        }

LABEL_115:
        if (v111 - 1 >= v107)
        {
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        if (!*v174)
        {
          goto LABEL_164;
        }

        v143 = v37;
        v144 = (v108 + 16 * (v111 - 1));
        v37 = *v144;
        v145 = (v108 + 16 * v111);
        v146 = v145[1];
        v147 = v176;
        sub_1DC3E92E4((*v174 + *(v173 + 72) * *v144), *v174 + *(v173 + 72) * *v145, *v174 + *(v173 + 72) * v146, v178);
        v176 = v147;
        if (v147)
        {
        }

        if (v146 < v37)
        {
          goto LABEL_139;
        }

        a4 = *(v143 + 16);
        if (v111 > a4)
        {
          goto LABEL_140;
        }

        *v144 = v37;
        v144[1] = v146;
        if (v111 >= a4)
        {
          goto LABEL_141;
        }

        v107 = (a4 - 1);
        result = memmove((v108 + 16 * v111), v145 + 2, 16 * &a4[-v111 - 1]);
        v37 = v143;
        *(v143 + 16) = a4 - 1;
        if (a4 <= 2)
        {
          goto LABEL_122;
        }
      }

      v118 = v108 + 16 * v107;
      v119 = *(v118 - 64);
      v120 = *(v118 - 56);
      v124 = __OFSUB__(v120, v119);
      v121 = v120 - v119;
      if (v124)
      {
        goto LABEL_142;
      }

      v123 = *(v118 - 48);
      v122 = *(v118 - 40);
      v124 = __OFSUB__(v122, v123);
      v116 = v122 - v123;
      v117 = v124;
      if (v124)
      {
        goto LABEL_143;
      }

      v125 = v113[1];
      v126 = v125 - *v113;
      if (__OFSUB__(v125, *v113))
      {
        goto LABEL_145;
      }

      v124 = __OFADD__(v116, v126);
      v127 = v116 + v126;
      if (v124)
      {
        goto LABEL_148;
      }

      if (v127 >= v121)
      {
        v141 = *v112;
        v140 = v112[1];
        v124 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v124)
        {
          goto LABEL_156;
        }

        if (v116 < v142)
        {
          v111 = v107 - 2;
        }

        goto LABEL_115;
      }

      goto LABEL_93;
    }

LABEL_122:
    v33 = v173;
    v35 = v174[1];
    v36 = v172;
    a4 = v161;
    if (v172 >= v35)
    {
      goto LABEL_125;
    }
  }

  v79 = &a4[v68];
  if (__OFADD__(v68, a4))
  {
    goto LABEL_159;
  }

  if (v79 >= v78)
  {
    v79 = v174[1];
  }

  if (v79 < v68)
  {
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    result = sub_1DC30D6B0(v37);
    v37 = result;
LABEL_127:
    v148 = (v37 + 16);
    v149 = *(v37 + 16);
    while (v149 >= 2)
    {
      if (!*v174)
      {
        goto LABEL_165;
      }

      v150 = v37;
      v151 = (v37 + 16 * v149);
      v37 = *v151;
      v152 = &v148[2 * v149];
      v153 = v152[1];
      v154 = v176;
      sub_1DC3E92E4((*v174 + *(v173 + 72) * *v151), *v174 + *(v173 + 72) * *v152, *v174 + *(v173 + 72) * v153, a4);
      v176 = v154;
      if (v154)
      {
        break;
      }

      if (v153 < v37)
      {
        goto LABEL_153;
      }

      if (v149 - 2 >= *v148)
      {
        goto LABEL_154;
      }

      *v151 = v37;
      v151[1] = v153;
      v155 = *v148 - v149;
      if (*v148 < v149)
      {
        goto LABEL_155;
      }

      v149 = *v148 - 1;
      result = memmove(v152, v152 + 2, 16 * v155);
      *v148 = v149;
      v37 = v150;
    }
  }

  if (v38 == v79)
  {
    goto LABEL_73;
  }

  v160 = v37;
  v80 = *v174;
  v81 = *(v173 + 72);
  v82 = *(v173 + 16);
  a4 = (*v174 + v81 * (v38 - 1));
  v83 = v38;
  v84 = -v81;
  v85 = (v68 - v83);
  v172 = v83;
  v178 = v80;
  v163 = v81;
  v86 = &v80[v83 * v81];
  v164 = v79;
LABEL_54:
  v169 = v86;
  v170 = v85;
  v171 = a4;
  while (1)
  {
    v82(v185, v86, v17);
    v82(v186, a4, v17);
    v87 = sub_1DC516C6C();
    v88 = *(v87 + 16);
    v89 = sub_1DC516B8C();
    v90 = v89;
    if (v88)
    {
      v91 = v180;
      (*(*(v89 - 8) + 16))(v180, v87 + ((*(*(v89 - 8) + 80) + 32) & ~*(*(v89 - 8) + 80)), v89);
      v92 = 0;
    }

    else
    {
      v92 = 1;
      v91 = v180;
    }

    __swift_storeEnumTagSinglePayload(v91, v92, 1, v90);

    v93 = __swift_getEnumTagSinglePayload(v91, 1, v90);
    v94 = v91;
    v95 = v181;
    if (v93 == 1)
    {
      sub_1DC2BE530(v94, &qword_1ECC7D600, &unk_1DC528A30);
      v96 = 0.0;
    }

    else
    {
      sub_1DC516B1C();
      v96 = v97;
      (*(*(v90 - 8) + 8))(v94, v90);
    }

    v98 = sub_1DC516C6C();
    if (*(v98 + 16))
    {
      (*(*(v90 - 8) + 16))(v95, v98 + ((*(*(v90 - 8) + 80) + 32) & ~*(*(v90 - 8) + 80)), v90);
      v99 = 0;
    }

    else
    {
      v99 = 1;
    }

    __swift_storeEnumTagSinglePayload(v95, v99, 1, v90);

    if (__swift_getEnumTagSinglePayload(v95, 1, v90) == 1)
    {
      sub_1DC2BE530(v95, &qword_1ECC7D600, &unk_1DC528A30);
      v100 = 0.0;
    }

    else
    {
      sub_1DC516B1C();
      v100 = v101;
      (*(*(v90 - 8) + 8))(v95, v90);
    }

    v102 = *v184;
    (*v184)(v186, v17);
    result = (v102)(v185, v17);
    if (v100 >= v96)
    {
LABEL_71:
      a4 = &v171[v163];
      v85 = v170 - 1;
      v86 = &v169[v163];
      if (++v172 == v164)
      {
        v38 = v164;
        v37 = v160;
        v68 = v166;
        goto LABEL_73;
      }

      goto LABEL_54;
    }

    if (!v178)
    {
      break;
    }

    v103 = *v182;
    v104 = v179;
    (*v182)(v179, v86, v17);
    swift_arrayInitWithTakeFrontToBack();
    v103(a4, v104, v17);
    a4 += v84;
    v86 += v84;
    v77 = __CFADD__(v85++, 1);
    if (v77)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
  return result;
}