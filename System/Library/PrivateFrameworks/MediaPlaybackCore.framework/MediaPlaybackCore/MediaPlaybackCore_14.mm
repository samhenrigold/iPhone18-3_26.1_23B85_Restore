uint64_t sub_1C5DAFB80()
{
  if (*(v0 + 16))
  {
    sub_1C5C74680(0, &qword_1ED7DCAE0, MEMORY[0x1E69E7280]);

    sub_1C6016C70();
  }

  *(v0 + 16) = 0;
}

uint64_t sub_1C5DAFC14()
{
  OUTLINED_FUNCTION_0_58();
  sub_1C5DB13B0(v0 + 16, v1, v2, v3, v4);
  sub_1C5C96DF0(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return v0;
}

uint64_t sub_1C5DAFC70()
{
  sub_1C5DAFC14();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1C5DAFCC8()
{
  v1 = v0[3].u8[0];
  result = v1 >> 6;
  if ((v1 >> 6))
  {
    if (result == 1)
    {
      return 1;
    }

    else
    {
      v3 = vorrq_s8(v0[1], v0[2]);
      if (*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | v0->i64[1] | v0->i64[0])
      {
        v4 = 0;
      }

      else
      {
        v4 = v1 == 128;
      }

      if (v4)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

double sub_1C5DAFD74()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t sub_1C5DAFDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  sub_1C5DB08EC(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5DAFE7C, 0, 0);
}

uint64_t sub_1C5DAFE7C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 56);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_35_11(v4);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1C5DAFF8C;

  return v8(v2, v3);
}

uint64_t sub_1C5DAFF8C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  *(v4 + 96) = v0;

  if (v0)
  {
    v5 = sub_1C5DB01A0;
  }

  else
  {
    v5 = sub_1C5DB0098;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C5DB0098()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = sub_1C6016C30();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  sub_1C5DB0BBC(v3, v0 + 16);
  sub_1C6016C10();
  OUTLINED_FUNCTION_312();

  v6 = sub_1C6016C00();
  OUTLINED_FUNCTION_34_10();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  v7[5] = v2;
  sub_1C5C6BEFC((v0 + 16), (v7 + 6));
  OUTLINED_FUNCTION_34();
  sub_1C5CDC270();

  OUTLINED_FUNCTION_172();

  return v9();
}

uint64_t sub_1C5DB01A0()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v6);
  (*(v7 + 104))(v6, v7);
  v8 = sub_1C6016C30();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v8);
  sub_1C6016C10();

  v9 = v1;
  v10 = sub_1C6016C00();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v5;
  v11[5] = v3;
  v11[6] = v1;
  OUTLINED_FUNCTION_34();
  sub_1C5CDC270();

  OUTLINED_FUNCTION_172();

  return v13();
}

uint64_t sub_1C5DB02EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_1C6016C10();
  v6[11] = sub_1C6016C00();
  v8 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5DB0388, v8, v7);
}

uint64_t sub_1C5DB0388()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_1C5DB0BBC(v1, v0 + 16);
  *(v0 + 56) = 0;
  v2(v0 + 16);
  sub_1C5DB0838(v0 + 16);
  OUTLINED_FUNCTION_172();

  return v3();
}

uint64_t sub_1C5DB0414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_1C6016C10();
  v6[11] = sub_1C6016C00();
  v8 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5DB04B0, v8, v7);
}

uint64_t sub_1C5DB04B0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  *(v0 + 16) = v1;
  *(v0 + 56) = 1;
  v3 = v1;
  v2(v0 + 16);
  sub_1C5DB0838(v0 + 16);
  OUTLINED_FUNCTION_172();

  return v4();
}

uint64_t sub_1C5DB0544()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

void sub_1C5DB05F0(uint64_t a1)
{
  sub_1C6014B20();
  if (v1 <= 0x3F)
  {
    sub_1C5DB08EC(319, &qword_1EC1AB750, MEMORY[0x1E69E3C00], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5DB06F8(uint64_t a1)
{
  v1 = sub_1C6014A60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C5DB076C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5DB078C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

unint64_t sub_1C5DB07E4()
{
  result = qword_1EC1AB798;
  if (!qword_1EC1AB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB798);
  }

  return result;
}

uint64_t sub_1C5DB0838(uint64_t a1)
{
  sub_1C5D5CEDC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C5DB0894()
{
  result = qword_1ED7DCDE0;
  if (!qword_1ED7DCDE0)
  {
    _s3__C4CodeOMa_6();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DCDE0);
  }

  return result;
}

void sub_1C5DB08EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C5DB0950()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_0(v3);
  *v4 = v5;
  v4[1] = sub_1C5DB17B4;
  v6 = OUTLINED_FUNCTION_9_26();

  return sub_1C5DAFDB8(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_1C5DB09FC()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_0(v4);
  *v5 = v6;
  v5[1] = sub_1C5D04E2C;
  v7 = OUTLINED_FUNCTION_9_26();

  return sub_1C5DB0414(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1C5DB0AAC()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_0(v3);
  *v4 = v5;
  v4[1] = sub_1C5DB17B4;
  v6 = OUTLINED_FUNCTION_9_26();

  return sub_1C5DB02EC(v6, v7, v8, v1, v2, v9);
}

unint64_t sub_1C5DB0B58()
{
  result = qword_1EC1AB7A0;
  if (!qword_1EC1AB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB7A0);
  }

  return result;
}

unint64_t sub_1C5DB0BAC(unint64_t result)
{
  if (result >= 2)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DB0BBC(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_50_0();
  (*v3)(a2);
  return a2;
}

id sub_1C5DB0C1C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = &type metadata for TransitionProvider;
  v61 = &off_1F45443B8;
  *(a5 + 80) = 514;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 88) = 0;
  *(a5 + 112) = 1;
  *(a5 + 120) = 0;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  *(a5 + 137) = 0;
  v9 = OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_cachedSmartTransitionData;
  v10 = sub_1C60149E0();
  __swift_storeEnumTagSinglePayload(a5 + v9, 1, 1, v10);
  v11 = a5 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_delegate;
  *(a5 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionProvided;
  v13 = sub_1C6014A60();
  __swift_storeEnumTagSinglePayload(a5 + v12, 1, 2, v13);
  v14 = (a5 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionStrategy);
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_outgoingParameters;
  v16 = type metadata accessor for SmartTransitionParameters(0);
  __swift_storeEnumTagSinglePayload(a5 + v15, 1, 1, v16);
  __swift_storeEnumTagSinglePayload(a5 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_incomingParameters, 1, 1, v16);
  result = [a1 isAssetLoaded];
  if (!result)
  {
    __break(1u);
    goto LABEL_42;
  }

  result = [a2 isAssetLoaded];
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(a5 + 48) = a1;
  result = [swift_unknownObjectRetain() avPlayerItem];
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(a5 + 56) = result;
  *(a5 + 64) = a2;
  result = [swift_unknownObjectRetain() avPlayerItem];
  if (!result)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  *(a5 + 72) = result;
  *(v11 + 8) = a4;
  swift_unknownObjectWeakAssign();
  v18 = [*(a5 + 48) activeAudioFormat];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 isSpatialized];
  }

  else
  {
    v20 = 2;
  }

  *(a5 + 80) = v20;
  v21 = [*(a5 + 64) activeAudioFormat];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 isSpatialized];
  }

  else
  {
    v23 = 2;
  }

  *(a5 + 81) = v23;
  v24 = *(a5 + 56);
  v25 = sub_1C5DB1894();
  v27 = v26;
  v29 = v28;

  *(a5 + 96) = v25;
  *(a5 + 104) = v27;
  *(a5 + 112) = v29 & 1;
  v30 = [*(a5 + 56) asset];
  v31 = [v30 loggingIdentifier];

  swift_getObjectType();
  sub_1C6017830();
  swift_unknownObjectRelease();
  v32 = [*(a5 + 72) asset];
  [v32 loggingIdentifier];

  swift_getObjectType();
  sub_1C6017830();
  swift_unknownObjectRelease();
  v57 = *(a5 + 80);
  v58 = *(a5 + 81);
  sub_1C6017540();
  v33 = *(a5 + 56);
  v34 = [v33 description];
  v35 = sub_1C6016940();
  v37 = v36;

  MEMORY[0x1C69534E0](v35, v37);

  MEMORY[0x1C69534E0](0xD000000000000011, 0x80000001C6050B10);
  v38 = *(a5 + 80);
  v39 = 28526;
  if (v38)
  {
    v39 = 7562617;
    v40 = 0xE300000000000000;
  }

  else
  {
    v40 = 0xE200000000000000;
  }

  if (v38 == 2)
  {
    v41 = 0x6E776F6E6B6E75;
  }

  else
  {
    v41 = v39;
  }

  if (v38 == 2)
  {
    v42 = 0xE700000000000000;
  }

  else
  {
    v42 = v40;
  }

  MEMORY[0x1C69534E0](v41, v42);

  MEMORY[0x1C69534E0](0x208D9C80F420, 0xA600000000000000);
  v43 = *(a5 + 72);
  v44 = [v43 description];
  v45 = sub_1C6016940();
  v47 = v46;

  MEMORY[0x1C69534E0](v45, v47);

  MEMORY[0x1C69534E0](0xD000000000000011, 0x80000001C6050B10);
  v48 = *(a5 + 81);
  v49 = 7562617;
  if (v48)
  {
    v50 = 0xE300000000000000;
  }

  else
  {
    v49 = 28526;
    v50 = 0xE200000000000000;
  }

  if (v48 == 2)
  {
    v51 = 0x6E776F6E6B6E75;
  }

  else
  {
    v51 = v49;
  }

  if (v48 == 2)
  {
    v52 = 0xE700000000000000;
  }

  else
  {
    v52 = v50;
  }

  MEMORY[0x1C69534E0](v51, v52);

  MEMORY[0x1C69534E0](0xD00000000000001DLL, 0x80000001C6050B30);
  sub_1C6016D10();
  *(a5 + 16) = 0;
  *(a5 + 24) = 0xE000000000000000;
  v53 = 0xE000000000000000;
  sub_1C6017540();
  MEMORY[0x1C69534E0](91, 0xE100000000000000);
  MEMORY[0x1C69534E0](0, 0xE000000000000000);

  if (v57)
  {
    v54 = 0x6169746170732820;
  }

  else
  {
    v54 = 0;
  }

  if (v57)
  {
    v53 = 0xEA0000000000296CLL;
  }

  MEMORY[0x1C69534E0](v54, v53);

  MEMORY[0x1C69534E0](0x5B208D9C80F4205DLL, 0xA800000000000000);
  MEMORY[0x1C69534E0](0, 0xE000000000000000);

  if (v58)
  {
    v55 = 0x6169746170732820;
  }

  else
  {
    v55 = 0;
  }

  if (v58)
  {
    v56 = 0xEA0000000000296CLL;
  }

  else
  {
    v56 = 0xE000000000000000;
  }

  MEMORY[0x1C69534E0](v55, v56);

  MEMORY[0x1C69534E0](0x74657366666F205DLL, 0xEA0000000000203ALL);
  sub_1C6016D10();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(a5 + 32) = 0;
  *(a5 + 40) = 0xE000000000000000;
  sub_1C5C6BEFC(&v59, a5 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionProvider);
  return a5;
}

uint64_t sub_1C5DB12DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerItemTransitionProvided(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5DB1340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  a6(0, a3, a4, a5);
  OUTLINED_FUNCTION_50_0();
  (*(v8 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C5DB13B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_50_0();
  (*(v6 + 8))(a1);
  return a1;
}

void sub_1C5DB140C(uint64_t a1)
{
  if (!qword_1EC1A9478)
  {
    sub_1C5C64D74(255, &qword_1ED7DCCD0, 0x1E696AD98);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1A9478);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PlayerItemTransitionFactory.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C5DB1580(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5DB15C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayerItemTransitionStatus(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PlayerItemTransitionStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C5DB16A8(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C5DB16C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1C5DB16EC()
{
  result = qword_1EC1AB7A8;
  if (!qword_1EC1AB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB7A8);
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1C5DB1754(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5DB1774(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

id OUTLINED_FUNCTION_23_14(void *a1)
{

  return [a1 (v1 + 3507)];
}

uint64_t OUTLINED_FUNCTION_36_8(uint64_t a1)
{

  return sub_1C5DE3F2C(v1);
}

id OUTLINED_FUNCTION_37_5(void *a1, double a2)
{
  LODWORD(a2) = v4;

  return [a1 (v2 + 3485)];
}

id sub_1C5DB1830(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    *&a1 = 0.0;
    v5 = 0.0;
  }

  else
  {
    v5 = *&a2;
  }

  [v3 setTransitionPlaybackEndStateSourceTime_];

  return [v3 setTransitionPlaybackEndStateTargetTime_];
}

uint64_t sub_1C5DB1894()
{
  [v0 transitionPlaybackEndStateSourceTime];
  if (v1 <= 0.0)
  {
    return 0;
  }

  [v0 transitionPlaybackEndStateTargetTime];
  if (v2 <= 0.0)
  {
    return 0;
  }

  [v0 transitionPlaybackEndStateSourceTime];
  v4 = v3;
  [v0 transitionPlaybackEndStateTargetTime];
  if (v4 == v5)
  {
    return 0;
  }

  else
  {
    return *&v4;
  }
}

MediaPlaybackCore::TransitionOptions::CrossFadeDuration_optional __swiftcall TransitionOptions.CrossFadeDuration.init(rawValue:)(Swift::Double rawValue)
{
  v2 = rawValue < 1.0;
  if (rawValue > 12.0)
  {
    v2 = 1;
  }

  v3 = rawValue;
  if (v2)
  {
    v3 = 0.0;
  }

  *v1 = v3;
  *(v1 + 8) = v2;
  result.value = *&rawValue;
  return result;
}

uint64_t getEnumTagSinglePayload for TransitionOptions.CrossFadeDuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TransitionOptions.CrossFadeDuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1C5DB1A0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_146();
  v44 = v9 - v8;
  sub_1C5D2D8C8(0);
  v11 = v10;
  OUTLINED_FUNCTION_25();
  v43 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_146();
  v16 = v15 - v14;
  sub_1C5DB27A4(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_146();
  v20 = v19 - v18;
  v21 = sub_1C6014930();
  OUTLINED_FUNCTION_25();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_146();
  v27 = v26 - v25;
  v28 = [a1 playerItemType];
  if (v28 == 2)
  {
    goto LABEL_27;
  }

  if (v28 == 1)
  {
    if ([a1 contentIdentifier])
    {
      sub_1C6017390();
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    v33 = v44;
    v49 = v47;
    v50 = v48;
    if (*(&v48 + 1))
    {
      v32 = swift_dynamicCast();
      if (v32)
      {
        *a2 = v45;
        a2[1] = v46;
        v31 = type metadata accessor for TransitionProvider.TransitionableIdentifier(0);
        goto LABEL_18;
      }
    }

    else
    {
      v32 = OUTLINED_FUNCTION_0_59();
    }

    goto LABEL_20;
  }

  if (!v28)
  {
LABEL_27:
    if ([a1 contentIdentifier])
    {
      sub_1C6017390();
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    v49 = v47;
    v50 = v48;
    if (*(&v48 + 1))
    {
      v29 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v20, v29 ^ 1u, 1, v21);
      if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
      {
        v30 = *(v23 + 32);
        v30(v27, v20, v21);
        v30(a2, v27, v21);
        v31 = type metadata accessor for TransitionProvider.TransitionableIdentifier(0);
LABEL_18:
        swift_storeEnumTagMultiPayload();
        v34 = a2;
        v35 = 0;
        v36 = v31;
        return __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_59();
      __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
    }

    v32 = sub_1C5DB2848(v20, sub_1C5DB27A4);
    v33 = v44;
LABEL_20:
    MEMORY[0x1C6952D20](v32);
    sub_1C6016250();
    (*(v43 + 8))(v16, v11);
    swift_unknownObjectRetain();
    v37 = sub_1C60162B0();
    v38 = sub_1C6016F30();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v47 = v40;
      *v39 = 136446210;
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      sub_1C6017650();
      v41 = sub_1C5C6AB10(0, 0xE000000000000000, &v47);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_1C5C61000, v37, v38, "[TP] - Failed to resolve MusicContent identifier for %{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1C6956920](v40, -1, -1);
      MEMORY[0x1C6956920](v39, -1, -1);
    }

    (*(v6 + 8))(v33, v4);
    v36 = type metadata accessor for TransitionProvider.TransitionableIdentifier(0);
    v34 = a2;
    v35 = 1;
    return __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
  }

  result = sub_1C60178A0();
  __break(1u);
  return result;
}

uint64_t sub_1C5DB1F7C()
{
  OUTLINED_FUNCTION_248();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1C60148F0();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5DB2034(uint64_t a1)
{
  sub_1C6016CB0();
  v2 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_1C5DB2130;
  v4 = *(v1 + 48);

  return MEMORY[0x1EEE5F870](v4);
}

uint64_t sub_1C5DB2130()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  *(v4 + 64) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5DB2230(uint64_t a1)
{
  v2 = *(v1 + 64);
  sub_1C6016CB0();
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_6_29();
    v4(v3);

    OUTLINED_FUNCTION_172();

    return v5();
  }

  else
  {
    sub_1C60148B0();
    v7 = swift_task_alloc();
    *(v1 + 72) = v7;
    *v7 = v1;
    v7[1] = sub_1C5DB232C;

    return MEMORY[0x1EEE5F850]();
  }
}

uint64_t sub_1C5DB232C(uint64_t a1)
{
  OUTLINED_FUNCTION_8_0();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_101();
  *v7 = v6;
  v5[10] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_235();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    v5[11] = a1;
    v11 = swift_task_alloc();
    v5[12] = v11;
    *v11 = v6;
    v11[1] = sub_1C5DB24B0;
    v12 = v5[6];
    v13 = v5[2];

    return MEMORY[0x1EEE5F840](v13, v12);
  }
}

uint64_t sub_1C5DB24B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_0();
  v7 = v6;
  v8 = *v3;
  OUTLINED_FUNCTION_101();
  *v9 = v8;
  v7[13] = v2;

  if (!v2)
  {
    v7[14] = a2;
    v7[15] = a1;
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C5DB25F0()
{
  OUTLINED_FUNCTION_248();
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v3 = v0[14];
  v2 = v0[15];

  return v1(v2, v3);
}

uint64_t sub_1C5DB2670()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DB26CC()
{
  OUTLINED_FUNCTION_248();
  v0 = OUTLINED_FUNCTION_6_29();
  v1(v0);

  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5DB2738()
{
  OUTLINED_FUNCTION_248();
  v0 = OUTLINED_FUNCTION_6_29();
  v1(v0);

  OUTLINED_FUNCTION_172();

  return v2();
}

void sub_1C5DB27A4(uint64_t a1)
{
  if (!qword_1EC1AB3E0)
  {
    sub_1C6014930();
    v1 = sub_1C6017350();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1AB3E0);
    }
  }
}

uint64_t type metadata accessor for TransitionProvider.TransitionableIdentifier(uint64_t a1)
{
  result = qword_1EC1AB7B0;
  if (!qword_1EC1AB7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5DB2848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C5DB28B0(uint64_t a1)
{
  result = sub_1C6014930();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C5DB292C(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (![a1 isAssetLoaded])
  {
    __break(1u);
    goto LABEL_7;
  }

  if (![a2 isAssetLoaded])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = [swift_unknownObjectRetain() avPlayerItem];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v8 = v7;
  v9 = [a2 avPlayerItem];
  if (v9)
  {
    v10 = v9;
    swift_unknownObjectRelease();
    v11 = v10;
    v12 = [v8 description];
    v13 = sub_1C6016940();
    v15 = v14;

    v20 = v13;
    v21 = v15;
    MEMORY[0x1C69534E0](539963168, 0xE400000000000000);
    v16 = [v11 description];
    v17 = sub_1C6016940();
    v19 = v18;

    MEMORY[0x1C69534E0](v17, v19);

    *a3 = 0;
    a3[1] = v20;
    a3[2] = v21;
    a3[3] = a1;
    a3[4] = v8;
    a3[5] = a2;
    a3[6] = v11;
    return;
  }

LABEL_9:
  __break(1u);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C5DB2AD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C5DB2B10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1C5DB2B6C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x80;
  return result;
}

double sub_1C5DB2BB8@<D0>(uint64_t a1@<X8>)
{
  sub_1C5DB2B6C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1C5DB2C28()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = sub_1C5DB2CCC;

  return OUTLINED_FUNCTION_54_5();
}

uint64_t sub_1C5DB2CCC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C5DB2E2C()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C5DB2E5C()
{
  sub_1C5DB2E2C();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1C5DB3048(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF5 && *(a1 + 8))
  {
    return (*a1 + 2147483638);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 9;
  if (v4 >= 0xB)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5DB30A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    *result = a2 - 2147483638;
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 9;
    }
  }

  return result;
}

void *sub_1C5DB30F0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1C5DB3170()
{
  v3 = 0;

  sub_1C5DB6A4C(v1, v0, &v3);
  return v3;
}

void sub_1C5DB31A8(void *a1, uint64_t a2, char a3)
{
  v6 = *(a2 + 16);
  if (a1)
  {
    if (v6)
    {
      sub_1C5C64D74(0, &qword_1EC1A93C0, 0x1E6958460);
      v7 = v6;
      v8 = a1;
      v9 = sub_1C60172D0();

      if (v9)
      {
        return;
      }

      v6 = *(a2 + 16);
    }
  }

  else if (!v6)
  {
    return;
  }

  *(a2 + 16) = a1;
  v10 = a1;

  *(a2 + 24) = a3 & 1;
  v11 = *(a2 + 32);
  *(a2 + 32) = 0;

  sub_1C5DB6C08();
  if (a1)
  {
    sub_1C5CDAF64(a2 + 40, v27);
    __swift_project_boxed_opaque_existential_0(v27, v27[3]);
    v12 = 0xE000000000000000;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    v13 = v10;
    sub_1C6017540();
    v25 = __dst[0];
    v26 = __dst[1];
    MEMORY[0x1C69534E0](0xD00000000000002ALL, 0x80000001C60511A0);
    v14 = [v13 description];
    v15 = sub_1C6016940();
    v17 = v16;

    MEMORY[0x1C69534E0](v15, v17);

    MEMORY[0x1C69534E0](0xD000000000000012, 0x80000001C60511D0);
    if (a3)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (a3)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    MEMORY[0x1C69534E0](v18, v19);

    MEMORY[0x1C69534E0](0x3A657565757120, 0xE700000000000000);
    v20 = *(a2 + 88);
    if (v20)
    {
      v21 = v20;
      v22 = sub_1C6017000();
      v12 = v23;
    }

    else
    {
      v22 = 0;
    }

    MEMORY[0x1C69534E0](v22, v12);

    __src[0] = v25;
    __src[1] = v26;
    sub_1C5D7E534(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v27);
  }
}

uint64_t sub_1C5DB3424(uint64_t a1, char *a2, void *a3)
{
  v109[28] = *MEMORY[0x1E69E9840];
  v6 = sub_1C6016630();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6016690();
  v94 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6016620();
  v92 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1C60166B0();
  v16 = MEMORY[0x1EEE9AC00](v15);
  result = MEMORY[0x1EEE9AC00](v16);
  v21 = *(a1 + 16);
  if (!v21)
  {
    return result;
  }

  v83 = v20;
  v84 = v12;
  v85 = &v81 - v18;
  v86 = v19;
  v90 = v6;
  v91 = result;
  v87 = v9;
  v88 = v10;
  v89 = v7;
  v22 = v21;
  v23 = [v22 opaqueSessionID];
  sub_1C5CDAF64(a1 + 40, v108);
  __swift_project_boxed_opaque_existential_0(v108, v108[3]);
  v109[0] = 0;
  v109[1] = 0xE000000000000000;
  sub_1C6017540();
  v107[0] = v109[0];
  v107[1] = v109[1];
  MEMORY[0x1C69534E0](0xD000000000000036, 0x80000001C6051330);
  v24 = OBJC_IVAR___MFAudioSessionConfiguration_category;
  v25 = sub_1C6016940();
  v97 = a1;
  MEMORY[0x1C69534E0](v25);

  MEMORY[0x1C69534E0](0x3A65646F6D20, 0xE600000000000000);
  v26 = sub_1C6016940();
  MEMORY[0x1C69534E0](v26);

  MEMORY[0x1C69534E0](0x73736573202D205DLL, 0xEF203A44496E6F69);
  v109[3] = MEMORY[0x1E69E7668];
  LODWORD(v95) = v23;
  LODWORD(v109[0]) = v23;
  DefaultStringInterpolation.appendInterpolation(describing:default:)(v109, 4271950, 0xE300000000000000);
  sub_1C5CBCF4C(v109);
  v106[0] = v107[0];
  v106[1] = v107[1];
  sub_1C5D7E534(v106);
  memcpy(v109, v106, 0xD9uLL);
  sub_1C5DBBF0C();
  v27 = v97;

  __swift_destroy_boxed_opaque_existential_0(v108);
  v28 = *(v27 + 24);
  v29 = *&a2[v24];
  v96 = v22;
  if (v28 == 1)
  {
    v30 = *&a2[OBJC_IVAR___MFAudioSessionConfiguration_options];
    v108[0] = 0;
    v31 = [v22 setCategory:v29 mode:a3 options:v30 error:v108];
    v32 = v108[0];
    v33 = v22;
    if ((v31 & 1) == 0)
    {
LABEL_4:
      v82 = a3;
      v34 = v32;
      v35 = sub_1C6014D40();

      swift_willThrow();
      sub_1C5CDAF64(v27 + 40, v104);
      __swift_project_boxed_opaque_existential_0(v104, v104[3]);
      v108[0] = 0;
      v108[1] = 0xE000000000000000;
      sub_1C6017540();
      v107[0] = v108[0];
      v107[1] = v108[1];
      MEMORY[0x1C69534E0](0xD000000000000028, 0x80000001C6051370);
      v36 = sub_1C6016940();
      MEMORY[0x1C69534E0](v36);

      MEMORY[0x1C69534E0](0xD00000000000001FLL, 0x80000001C60513A0);
      v108[3] = MEMORY[0x1E69E7668];
      LODWORD(v108[0]) = v95;
      DefaultStringInterpolation.appendInterpolation(describing:default:)(v108, 4271950, 0xE300000000000000);
      sub_1C5CBCF4C(v108);
      MEMORY[0x1C69534E0](0x726F727265202D20, 0xEA0000000000203ALL);
      v95 = v35;
      swift_getErrorValue();
      sub_1C6017830();
      sub_1C5D45B74(v107);
      memcpy(v108, v107, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v104);
      v37 = *(v97 + 88);
      if (v37)
      {
        v81 = *(v97 + 88);
      }

      else
      {
        sub_1C5C64D74(0, &qword_1ED7DCE50, 0x1E69E9610);
        v81 = sub_1C6016FD0();
        v37 = 0;
      }

      v66 = v92;
      v67 = v37;
      v68 = v83;
      sub_1C60166A0();
      *v14 = 1;
      v69 = v84;
      (*(v66 + 13))(v14, *MEMORY[0x1E69E7F48], v84);
      v70 = v85;
      MEMORY[0x1C69531B0](v68, v14);
      (*(v66 + 1))(v14, v69);
      v92 = *(v86 + 8);
      v92(v68, v91);
      v71 = swift_allocObject();
      swift_weakInit();
      v72 = swift_allocObject();
      v72[2] = v71;
      v72[3] = a2;
      v73 = v82;
      v72[4] = v82;
      v104[4] = sub_1C5DB6F60;
      v104[5] = v72;
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 1107296256;
      v104[2] = sub_1C5DBC798;
      v104[3] = &block_descriptor_60;
      v74 = _Block_copy(v104);
      v75 = v73;

      v76 = a2;
      v77 = v93;
      sub_1C6016670();
      v102[0] = MEMORY[0x1E69E7CC0];
      sub_1C5DB6FB0(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1C5D5CF8C(0);
      sub_1C5DB6FB0(&qword_1ED7DC280, sub_1C5D5CF8C, MEMORY[0x1E69E6328]);
      v78 = v87;
      v79 = v90;
      sub_1C60173B0();
      v80 = v81;
      MEMORY[0x1C6953A80](v70, v77, v78, v74);

      _Block_release(v74);
      (*(v89 + 8))(v78, v79);
      (*(v94 + 8))(v77, v88);
      v92(v70, v91);
    }
  }

  else
  {
    v38 = *&a2[OBJC_IVAR___MFAudioSessionConfiguration_routeSharingPolicy];
    v39 = *&a2[OBJC_IVAR___MFAudioSessionConfiguration_options];
    v108[0] = 0;
    v40 = [v22 setCategory:v29 mode:a3 routeSharingPolicy:v38 options:v39 error:v108];
    v32 = v108[0];
    v33 = v22;
    if (!v40)
    {
      goto LABEL_4;
    }
  }

  v41 = v32;
  v42 = *(v27 + 32);
  *(v27 + 32) = a3;
  v43 = a3;

  sub_1C5CDAF64(v27 + 40, v105);
  __swift_project_boxed_opaque_existential_0(v105, v105[3]);
  v108[0] = 0;
  v108[1] = 0xE000000000000000;
  sub_1C6017540();
  v100 = v108[0];
  v101 = v108[1];
  MEMORY[0x1C69534E0](0xD000000000000042, 0x80000001C60513C0);
  v44 = OBJC_IVAR___MFAudioSessionConfiguration_allowEnhanceDialogue;
  if (a2[OBJC_IVAR___MFAudioSessionConfiguration_allowEnhanceDialogue])
  {
    v45 = 1702195828;
  }

  else
  {
    v45 = 0x65736C6166;
  }

  v46 = 0xE400000000000000;
  if (a2[OBJC_IVAR___MFAudioSessionConfiguration_allowEnhanceDialogue])
  {
    v47 = 0xE400000000000000;
  }

  else
  {
    v47 = 0xE500000000000000;
  }

  MEMORY[0x1C69534E0](v45, v47);

  MEMORY[0x1C69534E0](93, 0xE100000000000000);
  v104[0] = v100;
  v104[1] = v101;
  sub_1C5D7E534(v104);
  memcpy(v108, v104, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v105);
  v48 = a2[v44];
  v107[0] = 0;
  if ([v33 setAllowEnhanceDialogue:v48 error:v107])
  {
    v49 = v107[0];
  }

  else
  {
    v50 = v107[0];
    v51 = sub_1C6014D40();

    swift_willThrow();
    sub_1C5CDAF64(v27 + 40, v103);
    __swift_project_boxed_opaque_existential_0(v103, v103[3]);
    v107[0] = 0;
    v107[1] = 0xE000000000000000;
    sub_1C6017540();
    v98 = v107[0];
    v99 = v107[1];
    MEMORY[0x1C69534E0](0xD000000000000026, 0x80000001C6051410);
    if (a2[v44])
    {
      v52 = 1702195828;
    }

    else
    {
      v52 = 0x65736C6166;
    }

    if (!a2[v44])
    {
      v46 = 0xE500000000000000;
    }

    MEMORY[0x1C69534E0](v52, v46);

    MEMORY[0x1C69534E0](0x726F727265202D20, 0xEA0000000000203ALL);
    swift_getErrorValue();
    sub_1C6017830();
    v102[0] = v98;
    v102[1] = v99;
    sub_1C5D45B74(v102);
    memcpy(v107, v102, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v103);
  }

  v53 = *&a2[OBJC_IVAR___MFAudioSessionConfiguration_audioSessionMXProperties];
  v54 = 1 << *(v53 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(v53 + 64);
  v57 = (v54 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v58 = 0;
  if (v56)
  {
    while (1)
    {
      v59 = v58;
LABEL_29:
      v60 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v61 = v60 | (v59 << 6);
      v62 = (*(v53 + 48) + 16 * v61);
      v63 = *v62;
      v64 = v62[1];
      v65 = *(*(v53 + 56) + 8 * v61);

      swift_unknownObjectRetain();
      sub_1C5DB4140(v63, v64, v65, v97, v95, v96);
      swift_unknownObjectRelease();

      if (!v56)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
LABEL_25:
    v59 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
    }

    if (v59 >= v57)
    {
      break;
    }

    v56 = *(v53 + 64 + 8 * v59);
    ++v58;
    if (v56)
    {
      v58 = v59;
      goto LABEL_29;
    }
  }
}

uint64_t sub_1C5DB40B8(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v6 = a2;
    v7 = a3;
    sub_1C5DB5EF8();
  }

  return result;
}

id sub_1C5DB4140(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, void *a6)
{
  __src[28] = *MEMORY[0x1E69E9840];
  sub_1C5CDAF64(a4 + 40, v21);
  __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_1C6017540();
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  MEMORY[0x1C69534E0](0xD00000000000002FLL, 0x80000001C6051440);
  MEMORY[0x1C69534E0](a1, a2);
  MEMORY[0x1C69534E0](0x6973736573202D20, 0xEE00203A44496E6FLL);
  v11 = MEMORY[0x1E69E7668];
  __src[3] = MEMORY[0x1E69E7668];
  LODWORD(__src[0]) = a5;
  DefaultStringInterpolation.appendInterpolation(describing:default:)(__src, 4271950, 0xE300000000000000);
  sub_1C5CBCF4C(__src);
  __src[0] = __dst[0];
  __src[1] = __dst[1];
  sub_1C5D7E534(__src);
  memcpy(__dst, __src, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v21);
  v12 = sub_1C6016900();
  v21[0] = 0;
  v13 = [a6 setMXSessionProperty:v12 value:a3 error:v21];

  v14 = v21[0];
  if (v13)
  {

    return v14;
  }

  else
  {
    v16 = v21[0];
    v17 = sub_1C6014D40();

    swift_willThrow();
    sub_1C5CDAF64(a4 + 40, v19);
    __swift_project_boxed_opaque_existential_0(v19, v19[3]);
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_1C6017540();
    v20[0] = v21[0];
    v20[1] = v21[1];
    MEMORY[0x1C69534E0](0xD00000000000001FLL, 0x80000001C6051470);
    MEMORY[0x1C69534E0](a1, a2);
    MEMORY[0x1C69534E0](0x3A65756C617620, 0xE700000000000000);
    swift_getObjectType();
    v21[0] = a3;
    sub_1C6017830();
    MEMORY[0x1C69534E0](0x6973736573202D20, 0xEE00203A44496E6FLL);
    v21[3] = v11;
    LODWORD(v21[0]) = a5;
    DefaultStringInterpolation.appendInterpolation(describing:default:)(v21, 4271950, 0xE300000000000000);
    sub_1C5CBCF4C(v21);
    MEMORY[0x1C69534E0](0x726F727265202D20, 0xEA0000000000203ALL);
    swift_getErrorValue();
    sub_1C6017830();
    sub_1C5D45B74(v20);
    memcpy(v21, v20, 0xD9uLL);
    sub_1C5DBBF0C();

    return __swift_destroy_boxed_opaque_existential_0(v19);
  }
}

void sub_1C5DB4500(uint64_t a1, void *a2)
{
  __dst[28] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  if (!*(a1 + 32))
  {
    v11 = v2;
    goto LABEL_12;
  }

  v5 = sub_1C6016940();
  v7 = v6;
  if (v5 != sub_1C6016940() || v7 != v8)
  {
    v10 = sub_1C6017860();
    v21 = v2;

    if (v10)
    {

      return;
    }

LABEL_12:
    v12 = [v2 opaqueSessionID];
    sub_1C5CDAF64(a1 + 40, v25);
    __swift_project_boxed_opaque_existential_0(v25, v25[3]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    v23[0] = __dst[0];
    v23[1] = __dst[1];
    MEMORY[0x1C69534E0](0xD000000000000033, 0x80000001C6051130);
    v13 = sub_1C6016940();
    MEMORY[0x1C69534E0](v13);

    MEMORY[0x1C69534E0](0x73736573202D205DLL, 0xEF203A44496E6F69);
    v14 = MEMORY[0x1E69E7668];
    __dst[3] = MEMORY[0x1E69E7668];
    LODWORD(__dst[0]) = v12;
    DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 4271950, 0xE300000000000000);
    sub_1C5CBCF4C(__dst);
    __src[0] = v23[0];
    __src[1] = v23[1];
    sub_1C5D7E534(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v25);
    v25[0] = 0;
    if ([v2 setMode:a2 error:v25])
    {
      v15 = v25[0];

      v16 = *(a1 + 32);
      *(a1 + 32) = a2;
      v17 = a2;
    }

    else
    {
      v18 = v25[0];
      v19 = sub_1C6014D40();

      swift_willThrow();
      sub_1C5CDAF64(a1 + 40, v22);
      __swift_project_boxed_opaque_existential_0(v22, v22[3]);
      v25[0] = 0;
      v25[1] = 0xE000000000000000;
      sub_1C6017540();
      v23[0] = v25[0];
      v23[1] = v25[1];
      MEMORY[0x1C69534E0](0xD000000000000024, 0x80000001C6051170);
      v20 = sub_1C6016940();
      MEMORY[0x1C69534E0](v20);

      MEMORY[0x1C69534E0](0x6973736573202D20, 0xEE00203A44496E6FLL);
      v25[3] = v14;
      LODWORD(v25[0]) = v12;
      DefaultStringInterpolation.appendInterpolation(describing:default:)(v25, 7104878, 0xE300000000000000);
      sub_1C5CBCF4C(v25);
      MEMORY[0x1C69534E0](0x726F727265202D20, 0xEA0000000000203ALL);
      swift_getErrorValue();
      sub_1C6017830();
      sub_1C5D45B74(v23);
      memcpy(v25, v23, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    return;
  }
}

uint64_t sub_1C5DB4960(uint64_t result, char a2)
{
  __dst[28] = *MEMORY[0x1E69E9840];
  v2 = *(result + 16);
  if (v2)
  {
    v4 = result;
    __dst[0] = 0;
    v5 = v2;
    v6 = [v5 setInhibitSpeechDetection:a2 & 1 error:__dst];
    v7 = __dst[0];
    if (v6)
    {
      sub_1C5CDAF64(v4 + 40, v20);
      __swift_project_boxed_opaque_existential_0(v20, v21);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      v8 = v7;
      sub_1C6017540();
      v15 = __dst[0];
      v17 = __dst[1];
      MEMORY[0x1C69534E0](0xD000000000000043, 0x80000001C60511F0);
      if (a2)
      {
        v9 = 1702195828;
      }

      else
      {
        v9 = 0x65736C6166;
      }

      if (a2)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      MEMORY[0x1C69534E0](v9, v10);

      MEMORY[0x1C69534E0](0x656C706D6F63205DLL, 0xEB00000000646574);
      __src[0] = v15;
      __src[1] = v17;
      sub_1C5D7E534(__src);
      memcpy(__dst, __src, 0xD9uLL);
      sub_1C5DBBF0C();
    }

    else
    {
      v11 = __dst[0];
      v12 = sub_1C6014D40();

      swift_willThrow();
      sub_1C5CDAF64(v4 + 40, v20);
      __swift_project_boxed_opaque_existential_0(v20, v21);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_1C6017540();
      v16 = __dst[0];
      v18 = __dst[1];
      MEMORY[0x1C69534E0](0xD000000000000043, 0x80000001C60511F0);
      if (a2)
      {
        v13 = 1702195828;
      }

      else
      {
        v13 = 0x65736C6166;
      }

      if (a2)
      {
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0xE500000000000000;
      }

      MEMORY[0x1C69534E0](v13, v14);

      MEMORY[0x1C69534E0](0xD000000000000014, 0x80000001C6051240);
      swift_getErrorValue();
      sub_1C6017830();
      __src[0] = v16;
      __src[1] = v18;
      sub_1C5D7E534(__src);
      memcpy(__dst, __src, 0xD9uLL);
      sub_1C5DBBF0C();
    }

    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  return result;
}

uint64_t sub_1C5DB4C28(uint64_t (*a1)(uint64_t a1, void *a2), uint64_t a2)
{
  if (*(v2 + 88))
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    a1 = sub_1C5DB6F6C;
  }

  else
  {
    v5 = a2;
  }

  v6 = sub_1C5DB6BDC();

  sub_1C5DB61D4(v7, v2, v6, a1, v5);
}

uint64_t sub_1C5DB4CDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C6016630();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C6016690();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5C64D74(0, &qword_1ED7DCE50, 0x1E69E9610);
  v14 = sub_1C6016FD0();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = a2;
  aBlock[4] = sub_1C5DB6F74;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5DBC798;
  aBlock[3] = &block_descriptor_69;
  v16 = _Block_copy(aBlock);

  v17 = a2;

  sub_1C6016670();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C5DB6FB0(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1C5D5CF8C(0);
  sub_1C5DB6FB0(&qword_1ED7DC280, sub_1C5D5CF8C, MEMORY[0x1E69E6328]);
  sub_1C60173B0();
  MEMORY[0x1C6953AC0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_1C5DB4FE4(uint64_t a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v9 = *(a1 + 96);
    v10 = v6;
    v11 = v10;
    if (v9 == a2)
    {
      if (*(a1 + 80))
      {
        v12 = 0x20000000;
      }

      else
      {
        v12 = 0;
      }

      v13 = [v10 opaqueSessionID];
      sub_1C5CDAF64(a1 + 40, aBlock);
      __swift_project_boxed_opaque_existential_0(aBlock, v19);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_1C6017540();
      __src[0] = __dst[0];
      __src[1] = __dst[1];
      MEMORY[0x1C69534E0](0xD00000000000005ELL, 0x80000001C6051490);
      __dst[3] = MEMORY[0x1E69E7668];
      LODWORD(__dst[0]) = v13;
      DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 4271950, 0xE300000000000000);
      sub_1C5CBCF4C(__dst);
      MEMORY[0x1C69534E0](0x6F6974706F202D20, 0xEC000000203A736ELL);
      __dst[0] = v12;
      type metadata accessor for AVAudioSessionActivationOptions();
      sub_1C6017650();
      MEMORY[0x1C69534E0](0xD000000000000014, 0x80000001C60514F0);
      __dst[0] = a2;
      v14 = sub_1C60177D0();
      MEMORY[0x1C69534E0](v14);

      sub_1C5D7E534(__src);
      memcpy(__dst, __src, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(aBlock);
      *(a1 + 80) = 1;
      v15 = swift_allocObject();
      v15[2] = a1;
      v15[3] = a2;
      v15[4] = a3;
      v15[5] = a4;
      v20 = sub_1C5DB7038;
      v21 = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C5DB55B0;
      v19 = &block_descriptor_81;
      v16 = _Block_copy(aBlock);

      [v11 activateWithOptions:v12 completionHandler:v16];
      _Block_release(v16);

      return;
    }
  }

  sub_1C6016BE0();
  sub_1C5DB6FB0(&qword_1ED7DCF38, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  v17 = swift_allocError();
  sub_1C6016820();
  a3(0, v17);
}

uint64_t sub_1C5DB5358(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  v10 = a3 + 40;
  if (a2)
  {
    sub_1C5CDAF64(v10, v15);
    __swift_project_boxed_opaque_existential_0(v15, v16);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    v11 = a2;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000063, 0x80000001C6051580);
    swift_getErrorValue();
    sub_1C6017830();
    MEMORY[0x1C69534E0](0xD000000000000012, 0x80000001C60512B0);
    __src[0] = a4;
    v12 = sub_1C60177D0();
    MEMORY[0x1C69534E0](v12);

    __src[0] = __dst[0];
    __src[1] = __dst[1];
    sub_1C5D7E534(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();
  }

  else
  {
    sub_1C5CDAF64(v10, v15);
    __swift_project_boxed_opaque_existential_0(v15, v16);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000006CLL, 0x80000001C6051510);
    __src[0] = a4;
    v13 = sub_1C60177D0();
    MEMORY[0x1C69534E0](v13);

    __src[0] = __dst[0];
    __src[1] = __dst[1];
    sub_1C5D7E534(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();
  }

  __swift_destroy_boxed_opaque_existential_0(v15);
  if ((a1 & 1) == 0)
  {
    if (*(a3 + 96) == a4)
    {
      a4 = 0;
      *(a3 + 80) = 0;
    }

    else
    {
      a4 = 0;
    }
  }

  return a5(a4, a2);
}

void sub_1C5DB55B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1C5DB5628(uint64_t a1, char a2)
{

  sub_1C5DB6520();
}

void sub_1C5DB5670(uint64_t a1, uint64_t a2)
{
  __dst[28] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (!v2 || !a2)
  {
    return;
  }

  v5 = *(a1 + 96);
  v6 = v2;
  if (v5 == a2)
  {
    *(a1 + 80) = 0;
    v14 = v6;
    if ([v6 isActive])
    {
      __dst[0] = 0;
      v7 = [v14 setActive:0 error:__dst];
      v8 = __dst[0];
      if (v7)
      {
        sub_1C5CDAF64(a1 + 40, v15);
        __swift_project_boxed_opaque_existential_0(v15, v16);
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        v9 = v8;
        sub_1C6017540();
        MEMORY[0x1C69534E0](0xD000000000000055, 0x80000001C60512D0);
        __src[0] = a2;
        v10 = sub_1C60177D0();
        MEMORY[0x1C69534E0](v10);

        __src[0] = __dst[0];
        __src[1] = __dst[1];
        sub_1C5D7E534(__src);
        memcpy(__dst, __src, 0xD9uLL);
        sub_1C5DBBF0C();
      }

      else
      {
        v11 = __dst[0];
        v12 = sub_1C6014D40();

        swift_willThrow();
        sub_1C5CDAF64(a1 + 40, v15);
        __swift_project_boxed_opaque_existential_0(v15, v16);
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_1C6017540();
        MEMORY[0x1C69534E0](0xD00000000000004CLL, 0x80000001C6051260);
        swift_getErrorValue();
        sub_1C6017830();
        MEMORY[0x1C69534E0](0xD000000000000012, 0x80000001C60512B0);
        __src[0] = a2;
        v13 = sub_1C60177D0();
        MEMORY[0x1C69534E0](v13);

        __src[0] = __dst[0];
        __src[1] = __dst[1];
        sub_1C5D7E534(__src);
        memcpy(__dst, __src, 0xD9uLL);
        sub_1C5DBBF0C();
      }

      __swift_destroy_boxed_opaque_existential_0(v15);
      return;
    }

    v6 = v14;
  }
}

void sub_1C5DB598C()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C6016630();
  OUTLINED_FUNCTION_25();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_146();
  v12 = v11 - v10;
  v13 = sub_1C6016690();
  OUTLINED_FUNCTION_25();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_146();
  v19 = v18 - v17;
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = v1;
  v21 = *(v5 + 88);
  if (v21)
  {
    v32[4] = sub_1C5DB6EDC;
    v32[5] = v20;
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_0_61(COERCE_DOUBLE(1107296256));
    v32[2] = v22;
    v32[3] = &block_descriptor_19;
    v30 = _Block_copy(v32);
    v31 = v13;

    v23 = v1;
    v24 = v15;
    v25 = v21;

    sub_1C6016670();
    OUTLINED_FUNCTION_2_38();
    sub_1C5DB6FB0(v26, v27, MEMORY[0x1E69E7F70]);
    sub_1C5D5CF8C(0);
    OUTLINED_FUNCTION_3_38();
    sub_1C5DB6FB0(v28, v29, MEMORY[0x1E69E6328]);
    OUTLINED_FUNCTION_12_26();
    sub_1C60173B0();
    MEMORY[0x1C6953AC0](0, v19, v12, v30);
    _Block_release(v30);

    (*(v8 + 8))(v12, v6);
    (*(v24 + 8))(v19, v31);
  }

  else
  {

    sub_1C5DB4500(v3, v1);
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5DB5C40()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C6016630();
  OUTLINED_FUNCTION_25();
  v32 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_146();
  v13 = v12 - v11;
  v31 = sub_1C6016690();
  OUTLINED_FUNCTION_25();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_146();
  v19 = v18 - v17;
  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  *(v20 + 24) = v3;
  *(v20 + 32) = v1;
  v21 = *(v7 + 88);
  if (v21)
  {
    v33[4] = sub_1C5DB6EEC;
    v33[5] = v20;
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_0_61(COERCE_DOUBLE(1107296256));
    v33[2] = v22;
    v33[3] = &block_descriptor_33;
    v23 = _Block_copy(v33);
    v30 = v5;

    v24 = v21;

    sub_1C6016670();
    OUTLINED_FUNCTION_2_38();
    sub_1C5DB6FB0(v25, v26, MEMORY[0x1E69E7F70]);
    sub_1C5D5CF8C(0);
    OUTLINED_FUNCTION_3_38();
    sub_1C5DB6FB0(v27, v28, MEMORY[0x1E69E6328]);
    OUTLINED_FUNCTION_12_26();
    sub_1C60173B0();
    MEMORY[0x1C6953AC0](0, v19, v13, v23);
    _Block_release(v23);

    (*(v32 + 8))(v13, v8);
    (*(v15 + 8))(v19, v31);
  }

  else
  {
    v29 = v5;

    sub_1C5DB31A8(v5, v3, v1 & 1);
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5DB5EF8()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C6016630();
  OUTLINED_FUNCTION_25();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_146();
  v14 = v13 - v12;
  sub_1C6016690();
  OUTLINED_FUNCTION_25();
  v34 = v16;
  v35 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_146();
  v19 = v18 - v17;
  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = v3;
  v20[4] = v1;
  v21 = *(v7 + 88);
  if (v21)
  {
    v36[4] = sub_1C5DB6F0C;
    v36[5] = v20;
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_0_61(COERCE_DOUBLE(1107296256));
    v36[2] = v22;
    v36[3] = &block_descriptor_51;
    v23 = v1;
    v24 = _Block_copy(v36);

    v25 = v3;
    v26 = v23;
    v33 = v3;
    v27 = v21;

    sub_1C6016670();
    OUTLINED_FUNCTION_2_38();
    sub_1C5DB6FB0(v28, v29, MEMORY[0x1E69E7F70]);
    sub_1C5D5CF8C(0);
    OUTLINED_FUNCTION_3_38();
    sub_1C5DB6FB0(v30, v31, MEMORY[0x1E69E6328]);
    sub_1C60173B0();
    MEMORY[0x1C6953AC0](0, v19, v14, v24);
    v32 = v24;
    v1 = v23;
    _Block_release(v32);

    v3 = v33;
    (*(v10 + 8))(v14, v8);
    (*(v34 + 8))(v19, v35);
  }

  else
  {

    sub_1C5DB3424(v5, v3, v1);
  }

  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5DB61D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void *), uint64_t a5)
{
  v10 = sub_1C6016630();
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6016690();
  v21 = *(v13 - 8);
  v22 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v17 = *(a1 + 88);
  if (v17)
  {
    aBlock[4] = sub_1C5DB6FA4;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5DBC798;
    aBlock[3] = &block_descriptor_75;
    v18 = _Block_copy(aBlock);

    v19 = v17;

    sub_1C6016670();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1C5DB6FB0(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1C5D5CF8C(0);
    sub_1C5DB6FB0(&qword_1ED7DC280, sub_1C5D5CF8C, MEMORY[0x1E69E6328]);
    sub_1C60173B0();
    MEMORY[0x1C6953AC0](0, v15, v12, v18);
    _Block_release(v18);

    (*(v23 + 8))(v12, v10);
    (*(v21 + 8))(v15, v22);
  }

  else
  {

    sub_1C5DB4FE4(a2, a3, a4, a5);
  }
}

void sub_1C5DB6520()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C6016630();
  OUTLINED_FUNCTION_25();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_146();
  v12 = v11 - v10;
  v13 = sub_1C6016690();
  OUTLINED_FUNCTION_25();
  v31 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_146();
  v18 = v17 - v16;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = v1;
  v20 = *(v5 + 88);
  if (v20)
  {
    v32[4] = sub_1C5DB6F04;
    v32[5] = v19;
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_0_61(COERCE_DOUBLE(1107296256));
    v32[2] = v21;
    v32[3] = &block_descriptor_45_0;
    v22 = _Block_copy(v32);

    v23 = v20;

    sub_1C6016670();
    OUTLINED_FUNCTION_2_38();
    sub_1C5DB6FB0(v24, v25, MEMORY[0x1E69E7F70]);
    sub_1C5D5CF8C(0);
    OUTLINED_FUNCTION_3_38();
    v28 = sub_1C5DB6FB0(v26, v27, MEMORY[0x1E69E6328]);
    OUTLINED_FUNCTION_7_31(v28);
    OUTLINED_FUNCTION_9_27();
    _Block_release(v22);

    (*(v8 + 8))(v12, v6);
    (*(v31 + 8))(v18, v13);

    OUTLINED_FUNCTION_237();
  }

  else
  {

    sub_1C5DB5670(v29, v1);

    OUTLINED_FUNCTION_237();
  }
}

void sub_1C5DB67B4()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C6016630();
  OUTLINED_FUNCTION_25();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_146();
  v12 = v11 - v10;
  v13 = sub_1C6016690();
  OUTLINED_FUNCTION_25();
  v31 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_146();
  v18 = v17 - v16;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = v1;
  v20 = *(v5 + 88);
  if (v20)
  {
    v32[4] = sub_1C5DB6EF8;
    v32[5] = v19;
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_0_61(COERCE_DOUBLE(1107296256));
    v32[2] = v21;
    v32[3] = &block_descriptor_39_0;
    v22 = _Block_copy(v32);

    v23 = v20;

    sub_1C6016670();
    OUTLINED_FUNCTION_2_38();
    sub_1C5DB6FB0(v24, v25, MEMORY[0x1E69E7F70]);
    sub_1C5D5CF8C(0);
    OUTLINED_FUNCTION_3_38();
    v28 = sub_1C5DB6FB0(v26, v27, MEMORY[0x1E69E6328]);
    OUTLINED_FUNCTION_7_31(v28);
    OUTLINED_FUNCTION_9_27();
    _Block_release(v22);

    (*(v8 + 8))(v12, v6);
    (*(v31 + 8))(v18, v13);

    OUTLINED_FUNCTION_237();
  }

  else
  {

    sub_1C5DB4960(v29, v1 & 1);

    OUTLINED_FUNCTION_237();
  }
}

uint64_t sub_1C5DB6A4C(uint64_t a1, uint64_t a2, void *a3)
{
  v9[2] = a2;
  v9[3] = a3;
  v3 = *(a1 + 88);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1C5DB7044;
    *(v4 + 24) = v9;
    aBlock[4] = sub_1C5DB7080;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5DB3148;
    aBlock[3] = &block_descriptor_87;
    v5 = _Block_copy(aBlock);
    v6 = v3;

    dispatch_sync(v6, v5);

    _Block_release(v5);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  else
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      *a3 = [v8 renderingMode];
    }
  }

  return result;
}

unint64_t sub_1C5DB6BDC()
{
  v1 = *(v0 + 96);
  while (1)
  {
    result = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    v3 = v1;
    atomic_compare_exchange_strong_explicit((v0 + 96), &v3, result, memory_order_relaxed, memory_order_relaxed);
    v4 = v3 == v1;
    v1 = v3;
    if (v4)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C5DB6C08()
{
  v1 = *(v0 + 96);
  while (!__OFADD__(v1, 1))
  {
    v2 = v1;
    atomic_compare_exchange_strong_explicit((v0 + 96), &v2, v1 + 1, memory_order_relaxed, memory_order_relaxed);
    v3 = v2 == v1;
    v1 = v2;
    if (v3)
    {
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C5DB6C34()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return v0;
}

uint64_t sub_1C5DB6C6C()
{
  sub_1C5DB6C34();

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

id sub_1C5DB6CA0(void *a1)
{
  v1 = a1;
  AVAudioSession.description.getter();

  v2 = sub_1C6016900();

  return v2;
}

uint64_t AVAudioSession.description.getter()
{
  v1 = v0;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD000000000000019, 0x80000001C6051030);
  v2 = [v0 category];
  type metadata accessor for Category();
  OUTLINED_FUNCTION_6_30(v3, v4, v3, v5);

  MEMORY[0x1C69534E0](0x3A65646F6D20, 0xE600000000000000);
  v6 = [v1 mode];
  type metadata accessor for Mode();
  OUTLINED_FUNCTION_6_30(v7, v8, v7, v9);

  MEMORY[0x1C69534E0](0xD000000000000014, 0x80000001C6051050);
  [v1 routeSharingPolicy];
  type metadata accessor for RouteSharingPolicy();
  OUTLINED_FUNCTION_6_30(v10, v11, v10, v12);
  MEMORY[0x1C69534E0](59, 0xE100000000000000);
  return 0;
}

void sub_1C5DB6E84()
{
  if (!qword_1EC1AB840)
  {
    v0 = sub_1C6015450();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AB840);
    }
  }
}

uint64_t objectdestroy_47Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5DB6FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_71Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1C5DB7044()
{
  result = *(*(v0 + 16) + 16);
  if (result)
  {
    v2 = *(v0 + 24);
    result = [result renderingMode];
    *v2 = result;
  }

  return result;
}

uint64_t sub_1C5DB70F0()
{
  v0 = OUTLINED_FUNCTION_10_26();
  OUTLINED_FUNCTION_14_25(v0);
  return sub_1C6017A20();
}

uint64_t sub_1C5DB7124(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_10_26();
  MEMORY[0x1C69544E0](a1);
  return sub_1C6017A20();
}

uint64_t sub_1C5DB717C(char a1)
{
  OUTLINED_FUNCTION_10_26();
  MEMORY[0x1C69544E0](qword_1C6041580[a1]);
  return sub_1C6017A20();
}

uint64_t sub_1C5DB71EC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_10_26();
  v4 = a2(a1);
  OUTLINED_FUNCTION_8_29(v4, v5, v6);

  return sub_1C6017A20();
}

uint64_t sub_1C5DB7248(uint64_t a1)
{
  OUTLINED_FUNCTION_10_26();
  MEMORY[0x1C69544E0](a1);
  return sub_1C6017A20();
}

uint64_t sub_1C5DB72CC(uint64_t a1, unsigned __int8 a2)
{
  sub_1C60169F0();
}

uint64_t sub_1C5DB7370(uint64_t a1, char a2)
{
  sub_1C5D62554(a2);
  sub_1C60169F0();
}

uint64_t sub_1C5DB73C4(uint64_t a1, char a2)
{
  sub_1C60169F0();
}

uint64_t sub_1C5DB7414(uint64_t a1, char a2)
{
  sub_1C60169F0();
}

uint64_t sub_1C5DB74EC(uint64_t a1, char a2)
{
  sub_1C60179F0();
  sub_1C60169F0();

  return sub_1C6017A20();
}

uint64_t sub_1C5DB7570(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1C60179F0();
  v5 = a3(a2);
  OUTLINED_FUNCTION_8_29(v5, v6, v7);

  return sub_1C6017A20();
}

uint64_t sub_1C5DB75C4(uint64_t a1, char a2)
{
  sub_1C60179F0();
  sub_1C60169F0();

  return sub_1C6017A20();
}

uint64_t sub_1C5DB767C(uint64_t a1, char a2)
{
  sub_1C60179F0();
  MEMORY[0x1C69544E0](qword_1C6041580[a2]);
  return sub_1C6017A20();
}

uint64_t sub_1C5DB76CC(uint64_t a1, unsigned __int8 a2)
{
  sub_1C60179F0();
  MEMORY[0x1C69544E0](a2);
  return sub_1C6017A20();
}

uint64_t sub_1C5DB7710(uint64_t a1)
{
  v1 = sub_1C60179F0();
  OUTLINED_FUNCTION_14_25(v1);
  return sub_1C6017A20();
}

uint64_t sub_1C5DB7748(uint64_t a1, uint64_t a2)
{
  sub_1C60179F0();
  MEMORY[0x1C69544E0](a2);
  return sub_1C6017A20();
}

unint64_t sub_1C5DB778C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C6017720();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C5DB77FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C5DB778C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C5DB782C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5DB9B88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1C5DB7868()
{
  if (*(v0 + 16) == *MEMORY[0x1E69B1358])
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 32);
    v2 = __OFADD__(v1, 1);
    v3 = v1 + 1;
    if (!v2)
    {
      *(v0 + 32) = v3;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C5DB789C()
{
  OUTLINED_FUNCTION_3_39();
  sub_1C60169F0();
}

uint64_t sub_1C5DB7934()
{
  OUTLINED_FUNCTION_10_26();
  sub_1C5DB789C();
  return sub_1C6017A20();
}

uint64_t sub_1C5DB79B4(uint64_t a1)
{
  sub_1C60179F0();
  sub_1C5DB789C();
  return sub_1C6017A20();
}

uint64_t sub_1C5DB7A18()
{
  sub_1C6017540();
  OUTLINED_FUNCTION_3_39();
  if (!v7)
  {
    v3 = v6;
  }

  if (v1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v1)
  {
    v9 = v3;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x1C69534E0](v8, v9);

  MEMORY[0x1C69534E0](2304032, 0xE300000000000000);
  v10 = sub_1C60177D0();
  MEMORY[0x1C69534E0](v10);

  MEMORY[0x1C69534E0](0x6E656469202D2029, 0xEF3A726569666974);
  if (*(v0 + 16) == *MEMORY[0x1E69B1358])
  {
    v11 = 0xE700000000000000;
    v12 = 0x64696C61766E69;
  }

  else
  {
    v12 = sub_1C60177D0();
    v11 = v13;
  }

  MEMORY[0x1C69534E0](v12, v11);

  return 0;
}

uint64_t sub_1C5DB7BA0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for BackgroundTask();
  OUTLINED_FUNCTION_2_39();
  v9 = sub_1C5DB9C4C(v6, v7, v8, &unk_1C60414F4);
  v10 = MEMORY[0x1C6953850](3, v5, v9);
  *(v2 + 16) = a1;
  v11 = *(a2 + 16);
  *(v2 + 24) = *a2;
  *(v2 + 40) = v11;
  *(v2 + 56) = *(a2 + 32);
  *(v2 + 64) = v10;
  return v2;
}

uint64_t sub_1C5DB7C24(char a1)
{
  v2 = v1;
  sub_1C5DB9154(a1);
  v5 = v4;
  v6 = MEMORY[0x1E69B1358];
  if (v4 && *(v4 + 16) != *MEMORY[0x1E69B1358])
  {
    sub_1C5DB7868();
    OUTLINED_FUNCTION_15_20(v12, v13, v14, v15, v16, v17, v18, v19, *v98);
    if (*&v98[24])
    {
      __swift_project_boxed_opaque_existential_0(v98, *&v98[24]);
      OUTLINED_FUNCTION_4_39();
      sub_1C6017540();
      v99 = aBlock;
      v100 = v112;
      MEMORY[0x1C69534E0](0xD00000000000001ALL, 0x80000001C6051730);
      v108 = type metadata accessor for BackgroundTask();
      v105 = v5;

      OUTLINED_FUNCTION_5_33();
      DefaultStringInterpolation.appendInterpolation(describing:default:)(v20, v21, v22);
      OUTLINED_FUNCTION_1_52();
      sub_1C5DB9D8C(&v105, v24, v23 + 8, v25, sub_1C5DB9DEC);
      v26 = OUTLINED_FUNCTION_84();
      MEMORY[0x1C69534E0](v26);
      __dst[0] = v99;
      __dst[1] = v100;
      v27 = sub_1C5DB9D24(__dst);
LABEL_37:
      OUTLINED_FUNCTION_9_28(v27, v28, v29, v30, v31, v32, v33, v34, *v98, *&v98[8], *&v98[16], *&v98[24], *&v98[32], *&v98[40], *&v98[48], *&v98[56], *&v98[64], *&v98[72], *&v98[80], *&v98[88], *&v98[96], *&v98[104], *&v98[112], *&v98[120], *&v98[128], *&v98[136], *&v98[144], *&v98[152], *&v98[160], *&v98[168], *&v98[176], *&v98[184], *&v98[192], *&v98[200], *&v98[208], *&v98[216], v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, __dst[0]);
      sub_1C5DBBF0C();

      v94 = v98;
LABEL_38:
      __swift_destroy_boxed_opaque_existential_0(v94);
      return v5;
    }

    goto LABEL_23;
  }

  v7 = 0xEC000000676E6964;
  v8 = 0x616F4C7465737361;
  OUTLINED_FUNCTION_4_39();
  sub_1C6017540();

  OUTLINED_FUNCTION_89();
  aBlock = 0xD00000000000001ELL;
  v112 = v9;
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = 0xD000000000000012;
    }

    else
    {
      v10 = 0x6B63616279616C70;
    }

    if (a1 == 1)
    {
      v11 = 0x80000001C6045880;
    }

    else
    {
      v11 = 0xED00006C6C617453;
    }
  }

  else
  {
    v10 = 0x616F4C7465737361;
    v11 = 0xEC000000676E6964;
  }

  MEMORY[0x1C69534E0](v10, v11);

  v35 = *(v1 + 16);
  v36 = sub_1C6016900();

  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = a1;
  v115 = sub_1C5DB9E50;
  v116 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v112 = 1107296256;
  v113 = sub_1C5DBC798;
  v114 = &block_descriptor_20;
  v39 = _Block_copy(&aBlock);

  v40 = [v35 beginTaskWithName:v36 expirationHandler:v39];
  _Block_release(v39);

  if (v40 == *v6)
  {
    if (v5)
    {
      *(v5 + 16) = v40;
    }

    OUTLINED_FUNCTION_15_20(v41, v42, v43, v44, v45, v46, v47, v48, *v98);
    if (*&v98[24])
    {
      __swift_project_boxed_opaque_existential_0(v98, *&v98[24]);
      OUTLINED_FUNCTION_4_39();
      sub_1C6017540();

      OUTLINED_FUNCTION_89();
      v105 = 0xD00000000000002ALL;
      v106 = v49;
      if (a1)
      {
        if (a1 == 1)
        {
          v7 = 0x80000001C6045880;
          v8 = 0xD000000000000012;
        }

        else
        {
          v8 = 0x6B63616279616C70;
          v7 = 0xED00006C6C617453;
        }
      }

      MEMORY[0x1C69534E0](v8, v7);

      __dst[0] = v105;
      __dst[1] = v106;
      v27 = sub_1C5D45B74(__dst);
      goto LABEL_37;
    }

LABEL_23:
    OUTLINED_FUNCTION_0_62();
    v61 = MEMORY[0x1E69E6720];
    v62 = v98;
    goto LABEL_32;
  }

  if (v5)
  {
    OUTLINED_FUNCTION_15_20(v41, v42, v43, v44, v45, v46, v47, v48, *v98);
    if (*&v98[24])
    {
      __swift_project_boxed_opaque_existential_0(v98, *&v98[24]);
      OUTLINED_FUNCTION_4_39();

      sub_1C6017540();
      MEMORY[0x1C69534E0](0xD000000000000024, 0x80000001C60517B0);
      v50 = sub_1C5DB7A18();
      MEMORY[0x1C69534E0](v50);

      MEMORY[0x1C69534E0](0xD000000000000012, 0x80000001C60517E0);
      __dst[0] = v40;
      type metadata accessor for MSVBackgroundTaskIdentifier();
      sub_1C6017650();
      __dst[0] = aBlock;
      __dst[1] = v112;
      v51 = sub_1C5DB9D24(__dst);
      OUTLINED_FUNCTION_9_28(v51, v52, v53, v54, v55, v56, v57, v58, *v98, *&v98[8], *&v98[16], *&v98[24], *&v98[32], *&v98[40], *&v98[48], *&v98[56], *&v98[64], *&v98[72], *&v98[80], *&v98[88], *&v98[96], *&v98[104], *&v98[112], *&v98[120], *&v98[128], *&v98[136], *&v98[144], *&v98[152], *&v98[160], *&v98[168], *&v98[176], *&v98[184], *&v98[192], *&v98[200], *&v98[208], *&v98[216], v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, __dst[0]);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v98);
    }

    else
    {

      OUTLINED_FUNCTION_0_62();
      sub_1C5DB9D8C(v98, v83, v84, MEMORY[0x1E69E6720], sub_1C5DB9EC8);
    }

    *(v5 + 16) = v40;
    sub_1C5DB7868();
  }

  else
  {
    type metadata accessor for BackgroundTask();
    v5 = swift_allocObject();
    *(v5 + 32) = 1;
    *(v5 + 24) = a1;
    *(v5 + 16) = v40;
    swift_beginAccess();

    sub_1C5E1F618();
    swift_endAccess();

    OUTLINED_FUNCTION_15_20(v63, v64, v65, v66, v67, v68, v69, v70, *v98);
    if (*&v98[24])
    {
      __swift_project_boxed_opaque_existential_0(v98, *&v98[24]);
      OUTLINED_FUNCTION_4_39();

      sub_1C6017540();

      OUTLINED_FUNCTION_89();
      aBlock = 0xD00000000000001FLL;
      v112 = v71;
      v72 = sub_1C5DB7A18();
      v74 = v73;

      MEMORY[0x1C69534E0](v72, v74);

      __dst[0] = aBlock;
      __dst[1] = v112;
      v75 = sub_1C5DB9D24(__dst);
      OUTLINED_FUNCTION_9_28(v75, v76, v77, v78, v79, v80, v81, v82, *v98, *&v98[8], *&v98[16], *&v98[24], *&v98[32], *&v98[40], *&v98[48], *&v98[56], *&v98[64], *&v98[72], *&v98[80], *&v98[88], *&v98[96], *&v98[104], *&v98[112], *&v98[120], *&v98[128], *&v98[136], *&v98[144], *&v98[152], *&v98[160], *&v98[168], *&v98[176], *&v98[184], *&v98[192], *&v98[200], *&v98[208], *&v98[216], v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, __dst[0]);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v98);
    }

    else
    {
      OUTLINED_FUNCTION_0_62();
      sub_1C5DB9D8C(v98, v96, v97, MEMORY[0x1E69E6720], sub_1C5DB9EC8);
    }
  }

  sub_1C5D7E40C(v2 + 24, &v105);
  if (v108)
  {
    __swift_project_boxed_opaque_existential_0(&v105, v108);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    v103 = __dst[0];
    v104 = __dst[1];
    MEMORY[0x1C69534E0](0xD000000000000019, 0x80000001C6051770);
    if (v5)
    {
      v85 = type metadata accessor for BackgroundTask();
      v86 = v5;
    }

    else
    {
      v86 = 0;
      v85 = 0;
      v100 = 0;
      v101 = 0;
    }

    v99 = v86;
    v102 = v85;

    OUTLINED_FUNCTION_5_33();
    DefaultStringInterpolation.appendInterpolation(describing:default:)(v87, v88, v89);
    OUTLINED_FUNCTION_1_52();
    sub_1C5DB9D8C(&v99, v91, v90 + 8, v92, sub_1C5DB9DEC);
    v93 = OUTLINED_FUNCTION_84();
    MEMORY[0x1C69534E0](v93);
    *v98 = v103;
    *&v98[8] = v104;
    sub_1C5DB9E64(v98);
    memcpy(__dst, v98, 0xD9uLL);
    sub_1C5DBBF0C();

    v94 = &v105;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_0_62();
  v61 = MEMORY[0x1E69E6720];
  v62 = &v105;
LABEL_32:
  sub_1C5DB9D8C(v62, v59, v60, v61, sub_1C5DB9EC8);
  return v5;
}

uint64_t sub_1C5DB8464(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C6016630();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6016690();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a2;
  v13 = objc_opt_self();

  if ([v13 isMainThread])
  {
    sub_1C5DB87F8(v11, a2);
  }

  else
  {

    sub_1C5DB9E84();
    v15 = sub_1C6016FD0();
    aBlock[4] = sub_1C5DB9E78;
    aBlock[5] = v12;
    v18 = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5DBC798;
    aBlock[3] = &block_descriptor_24;
    v16 = _Block_copy(aBlock);

    sub_1C6016670();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C5DB9C4C(&qword_1ED7DC2A0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1C5DB9EC8(0, &qword_1ED7DC288, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1C5DB9F2C();
    sub_1C60173B0();
    v17 = v18;
    MEMORY[0x1C6953AC0](0, v10, v6, v16);
    _Block_release(v16);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1C5DB87F8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1C5DB9154(v2);
    if (v5)
    {
      v6 = v5;
      v7 = *MEMORY[0x1E69B1358];
      if (*(v5 + 16) == *MEMORY[0x1E69B1358])
      {
      }

      else
      {
        sub_1C5D7E40C(v4 + 24, v17);
        if (v18)
        {
          __swift_project_boxed_opaque_existential_0(v17, v18);
          __dst[0] = 0;
          __dst[1] = 0xE000000000000000;
          sub_1C6017540();
          __src[0] = __dst[0];
          __src[1] = __dst[1];
          MEMORY[0x1C69534E0](0xD000000000000019, 0x80000001C6051880);
          __dst[3] = type metadata accessor for BackgroundTask();
          __dst[0] = v6;

          DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
          sub_1C5DB9D8C(__dst, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C5DB9DEC);
          MEMORY[0x1C69534E0](41, 0xE100000000000000);
          sub_1C5DB9E3C(__src);
          memcpy(__dst, __src, 0xD9uLL);
          sub_1C5DBBF0C();

          __swift_destroy_boxed_opaque_existential_0(v17);
        }

        else
        {
          sub_1C5DB9D8C(v17, &qword_1ED7DF410, sub_1C5D83EF4, MEMORY[0x1E69E6720], sub_1C5DB9EC8);
        }

        [*(v4 + 16) endTask_];

        *(v6 + 16) = v7;
      }
    }

    else
    {
      sub_1C5D7E40C(v4 + 24, v17);
      if (v18)
      {
        __swift_project_boxed_opaque_existential_0(v17, v18);
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_1C6017540();
        v15 = __dst[0];
        v16 = __dst[1];
        MEMORY[0x1C69534E0](0xD00000000000004ALL, 0x80000001C6051830);
        if (v2)
        {
          if (v2 == 1)
          {
            v8 = 0xD000000000000012;
          }

          else
          {
            v8 = 0x6B63616279616C70;
          }

          if (v2 == 1)
          {
            v9 = 0x80000001C6045880;
          }

          else
          {
            v9 = 0xED00006C6C617453;
          }
        }

        else
        {
          v9 = 0xEC000000676E6964;
          v8 = 0x616F4C7465737361;
        }

        MEMORY[0x1C69534E0](v8, v9);

        MEMORY[0x1C69534E0](0x736B736174202D20, 0xE90000000000003ALL);
        swift_beginAccess();
        type metadata accessor for BackgroundTask();
        sub_1C5DB9C4C(qword_1ED7DF4E0, v10, type metadata accessor for BackgroundTask, &unk_1C60414F4);

        v11 = sub_1C6016D60();
        v13 = v12;

        MEMORY[0x1C69534E0](v11, v13);

        __src[0] = v15;
        __src[1] = v16;
        sub_1C5DB9D24(__src);
        memcpy(__dst, __src, 0xD9uLL);
        sub_1C5DBBF0C();

        return __swift_destroy_boxed_opaque_existential_0(v17);
      }

      else
      {

        return sub_1C5DB9D8C(v17, &qword_1ED7DF410, sub_1C5D83EF4, MEMORY[0x1E69E6720], sub_1C5DB9EC8);
      }
    }
  }

  return result;
}

void sub_1C5DB8C58(uint64_t a1)
{
  v2 = a1;
  sub_1C5DB9154(a1);
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 32);
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(v3 + 32) = v7;
      if (v7)
      {
        sub_1C5D7E40C(v1 + 24, v35);
        if (v36)
        {
          __swift_project_boxed_opaque_existential_0(v35, v36);
          OUTLINED_FUNCTION_6_31();
          sub_1C6017540();
          v33 = __src[0];
          v34 = __src[1];
          MEMORY[0x1C69534E0](0xD00000000000001ELL, 0x80000001C60516F0);
          __src[3] = type metadata accessor for BackgroundTask();
          __src[0] = v4;

          OUTLINED_FUNCTION_5_33();
          DefaultStringInterpolation.appendInterpolation(describing:default:)(v8, v9, v10);
          OUTLINED_FUNCTION_1_52();
          sub_1C5DB9D8C(__src, v12, v11 + 8, v13, sub_1C5DB9DEC);
          v14 = OUTLINED_FUNCTION_84();
          MEMORY[0x1C69534E0](v14);
          __src[0] = v33;
          __src[1] = v34;
          sub_1C5DB9D24(__src);
          memcpy(__dst, __src, sizeof(__dst));
          sub_1C5DBBF0C();

          __swift_destroy_boxed_opaque_existential_0(v35);
        }

        else
        {

          OUTLINED_FUNCTION_0_62();
          sub_1C5DB9D8C(v35, v25, v26, MEMORY[0x1E69E6720], sub_1C5DB9EC8);
        }
      }

      else
      {
        swift_beginAccess();
        sub_1C5DF3E60(v4);
        swift_endAccess();

        v17 = *MEMORY[0x1E69B1358];
        if (*(v4 + 16) != *MEMORY[0x1E69B1358])
        {
          [*(v1 + 16) endTask_];
          sub_1C5D7E40C(v1 + 24, v35);
          if (v36)
          {
            __swift_project_boxed_opaque_existential_0(v35, v36);
            OUTLINED_FUNCTION_6_31();
            sub_1C6017540();
            v33 = __src[0];
            v34 = __src[1];
            MEMORY[0x1C69534E0](0xD00000000000001BLL, 0x80000001C6051710);
            __src[3] = type metadata accessor for BackgroundTask();
            __src[0] = v4;

            OUTLINED_FUNCTION_5_33();
            DefaultStringInterpolation.appendInterpolation(describing:default:)(v18, v19, v20);
            OUTLINED_FUNCTION_1_52();
            sub_1C5DB9D8C(__src, v22, v21 + 8, v23, sub_1C5DB9DEC);
            v24 = OUTLINED_FUNCTION_84();
            MEMORY[0x1C69534E0](v24);
            __src[0] = v33;
            __src[1] = v34;
            sub_1C5DB9E3C(__src);
            memcpy(v37, __src, sizeof(v37));
            sub_1C5DBBF0C();

            __swift_destroy_boxed_opaque_existential_0(v35);
          }

          else
          {
            OUTLINED_FUNCTION_0_62();
            sub_1C5DB9D8C(v35, v30, v31, MEMORY[0x1E69E6720], sub_1C5DB9EC8);
          }

          *(v4 + 16) = v17;
        }
      }
    }
  }

  else
  {
    sub_1C5D7E40C(v1 + 24, v35);
    if (v36)
    {
      __swift_project_boxed_opaque_existential_0(v35, v36);
      OUTLINED_FUNCTION_6_31();
      sub_1C6017540();
      v33 = __src[0];
      v34 = __src[1];
      MEMORY[0x1C69534E0](0xD00000000000003FLL, 0x80000001C60516B0);
      if (v2)
      {
        if (v2 == 1)
        {
          v15 = 0xD000000000000012;
        }

        else
        {
          v15 = 0x6B63616279616C70;
        }

        if (v2 == 1)
        {
          v16 = 0x80000001C6045880;
        }

        else
        {
          v16 = 0xED00006C6C617453;
        }
      }

      else
      {
        v16 = 0xEC000000676E6964;
        v15 = OUTLINED_FUNCTION_7_32();
      }

      MEMORY[0x1C69534E0](v15, v16);

      __src[0] = v33;
      __src[1] = v34;
      sub_1C5D45B74(__src);
      memcpy(v39, __src, sizeof(v39));
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v35);
    }

    else
    {
      OUTLINED_FUNCTION_0_62();
      sub_1C5DB9D8C(v35, v27, v28, MEMORY[0x1E69E6720], sub_1C5DB9EC8);
    }

    sub_1C5DB9D38();
    swift_allocError();
    *v29 = v2;
    swift_willThrow();
  }
}

void sub_1C5DB9154(char a1)
{
  swift_beginAccess();
  v2 = *(v1 + 64);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1C6017400();
    type metadata accessor for BackgroundTask();
    OUTLINED_FUNCTION_2_39();
    sub_1C5DB9C4C(v3, v4, v5, &unk_1C60414F4);
    sub_1C6016D90();
    v2 = v29;
    v6 = v30;
    v7 = v31;
    v8 = v32;
    v9 = v33;
  }

  else
  {
    v6 = v2 + 56;
    v10 = ~(-1 << *(v2 + 32));
    OUTLINED_FUNCTION_12_27();
    v9 = v11 & v12;
    swift_bridgeObjectRetain_n();
    v7 = v10;
    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  OUTLINED_FUNCTION_89();
  v25 = v14;
  if (v2 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v15 = v8;
  v16 = v9;
  v17 = v8;
  if (v9)
  {
LABEL_9:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v2 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (v19)
    {
      while (1)
      {
        if (*(v19 + 24))
        {
          if (*(v19 + 24) == 1)
          {
            v20 = 0xD000000000000012;
            v21 = v25;
          }

          else
          {
            v20 = 0x6B63616279616C70;
            v21 = 0xED00006C6C617453;
          }
        }

        else
        {
          v20 = OUTLINED_FUNCTION_7_32();
          v21 = 0xEC000000676E6964;
        }

        if (a1)
        {
          v22 = a1 == 1 ? 0xD000000000000012 : 0x6B63616279616C70;
          v23 = a1 == 1 ? v25 : 0xED00006C6C617453;
        }

        else
        {
          v22 = 0x616F4C7465737361;
          v23 = 0xEC000000676E6964;
        }

        if (v20 == v22 && v21 == v23)
        {
          break;
        }

        v27 = sub_1C6017860();

        if (v27)
        {
          goto LABEL_33;
        }

        v8 = v17;
        v9 = v18;
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        if (sub_1C6017470())
        {
          type metadata accessor for BackgroundTask();
          swift_dynamicCast();
          v19 = v28;
          v17 = v8;
          v18 = v9;
          if (v28)
          {
            continue;
          }
        }

        goto LABEL_33;
      }
    }

LABEL_33:
    sub_1C5C8C7F4(v2);
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v13)
      {
        goto LABEL_33;
      }

      v16 = *(v6 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C5DB9474()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_0_62();
  sub_1C5DB9D8C(v0 + 24, v1, v2, MEMORY[0x1E69E6720], sub_1C5DB9EC8);

  return v0;
}

uint64_t sub_1C5DB94D8()
{
  sub_1C5DB9474();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

void *sub_1C5DB9530(uint64_t a1)
{
  v2 = v1;
  sub_1C5D7E40C(v1 + 24, v32);
  if (v33)
  {
    __swift_project_boxed_opaque_existential_0(v32, v33);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000002FLL, 0x80000001C6051680);
    swift_beginAccess();
    type metadata accessor for BackgroundTask();
    OUTLINED_FUNCTION_2_39();
    sub_1C5DB9C4C(v3, v4, v5, &unk_1C60414F4);

    v6 = sub_1C6016D60();
    v8 = v7;

    MEMORY[0x1C69534E0](v6, v8);

    MEMORY[0x1C69534E0](0x3A6E6F7361657220, 0xE800000000000000);
    swift_getErrorValue();
    sub_1C6017830();
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    sub_1C5DB9D24(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    sub_1C5DB9D8C(v32, v9, v10, MEMORY[0x1E69E6720], sub_1C5DB9EC8);
  }

  swift_beginAccess();
  v11 = *(v1 + 64);
  if ((v11 & 0xC000000000000001) != 0)
  {

    sub_1C6017400();
    type metadata accessor for BackgroundTask();
    OUTLINED_FUNCTION_2_39();
    sub_1C5DB9C4C(v12, v13, v14, &unk_1C60414F4);
    result = sub_1C6016D90();
    v11 = __src[0];
    v16 = __src[1];
    v17 = __src[2];
    v18 = __src[3];
    v19 = __src[4];
  }

  else
  {
    v16 = v11 + 56;
    v17 = ~(-1 << *(v11 + 32));
    OUTLINED_FUNCTION_12_27();
    v19 = v20 & v21;

    v18 = 0;
  }

  v22 = (v17 + 64) >> 6;
  v23 = *MEMORY[0x1E69B1358];
  if (v11 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v24 = v18;
    v25 = v19;
    v26 = v18;
    if (!v19)
    {
      break;
    }

LABEL_12:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v11 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

    if (!v28)
    {
LABEL_20:
      sub_1C5C8C7F4(v11);
      *(v2 + 64) = MEMORY[0x1E69E7CD0];
    }

    while (1)
    {
      if (*(v28 + 16) != v23)
      {
        [*(v2 + 16) endTask_];
      }

      v18 = v26;
      v19 = v27;
      if ((v11 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v29 = sub_1C6017470();
      if (v29)
      {
        __src[28] = v29;
        type metadata accessor for BackgroundTask();
        swift_dynamicCast();
        v28 = v31;
        v26 = v18;
        v27 = v19;
        if (v31)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      goto LABEL_20;
    }

    v25 = *(v16 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C5DB99D8()
{
  result = qword_1EC1AB848;
  if (!qword_1EC1AB848)
  {
    sub_1C5DB9DEC(255, &qword_1EC1AB850, &type metadata for BackgroundTask.Category, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB848);
  }

  return result;
}

unint64_t sub_1C5DB9A58()
{
  result = qword_1EC1AB858;
  if (!qword_1EC1AB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB858);
  }

  return result;
}

uint64_t sub_1C5DB9AAC()
{
  sub_1C5DB9EC8(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = 0x736B736174;
  *(inited + 40) = 0xE500000000000000;
  swift_beginAccess();
  v2 = *(v0 + 64);
  sub_1C5DB9C94(0);
  *(inited + 72) = v3;
  *(inited + 48) = v2;

  return sub_1C6016880();
}

uint64_t sub_1C5DB9B88(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_7_32();
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x6B63616279616C70;
}

uint64_t sub_1C5DB9C4C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C5DB9C94(uint64_t a1)
{
  if (!qword_1EC1A93E8)
  {
    type metadata accessor for BackgroundTask();
    sub_1C5DB9C4C(qword_1ED7DF4E0, v1, type metadata accessor for BackgroundTask, &unk_1C60414F4);
    v2 = sub_1C6016DA0();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC1A93E8);
    }
  }
}

unint64_t sub_1C5DB9D38()
{
  result = qword_1EC1AB860;
  if (!qword_1EC1AB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB860);
  }

  return result;
}

uint64_t sub_1C5DB9D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1C5DB9DEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C5DB9E84()
{
  result = qword_1ED7DCE50;
  if (!qword_1ED7DCE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7DCE50);
  }

  return result;
}

void sub_1C5DB9EC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C5DB9F2C()
{
  result = qword_1ED7DC280;
  if (!qword_1ED7DC280)
  {
    sub_1C5DB9EC8(255, &qword_1ED7DC288, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DC280);
  }

  return result;
}

_BYTE *sub_1C5DB9FB4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_8_29(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1C60169F0();
}

uint64_t OUTLINED_FUNCTION_14_25(uint64_t a1, ...)
{

  return sub_1C60169F0();
}

unint64_t Direction.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C5DBA104@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = Direction.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t Direction.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x647261776B636162;
  }

  if (a1 == 1)
  {
    return 0x64726177726F66;
  }

  result = sub_1C60178A0();
  __break(1u);
  return result;
}

unint64_t sub_1C5DBA1AC()
{
  result = qword_1EC1AB868;
  if (!qword_1EC1AB868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB868);
  }

  return result;
}

void sub_1C5DBA218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  OUTLINED_FUNCTION_13_24();
  v12 = v11;
  if (v11)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13 && [v13 itemError])
    {
      sub_1C5CB5808();
      sub_1C5CFF12C();
      if (swift_dynamicCast())
      {
        v12 = a11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  sub_1C5CFF12C();
  sub_1C6016940();
  sub_1C6016880();
  _s3__C4CodeOMa_6();
  sub_1C5DB0894();
  sub_1C6017280();
  OUTLINED_FUNCTION_98();

  OUTLINED_FUNCTION_12_28();
}

uint64_t sub_1C5DBA37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C5CFF12C();
  v8 = sub_1C6016940();
  v10 = v9;
  v20 = 6;
  OUTLINED_FUNCTION_2_40();
  sub_1C6017540();

  OUTLINED_FUNCTION_0_63();
  MEMORY[0x1C69534E0](a1, a2);
  MEMORY[0x1C69534E0](0x7469206874697720, 0xEC00000020736D65);
  v11 = MEMORY[0x1C6953600](a3, MEMORY[0x1E69E6158]);
  MEMORY[0x1C69534E0](v11);

  OUTLINED_FUNCTION_4_40();
  MEMORY[0x1C69534E0](0xD000000000000019);
  sub_1C6016880();
  OUTLINED_FUNCTION_8_30();
  _s3__C4CodeOMa_6();
  v13 = v12;
  v14 = sub_1C5DB0894();
  v18 = OUTLINED_FUNCTION_3_40(v8, v10, &v20, 0, a4, v15, v16, v17, v13, v14);

  return v18;
}

unint64_t sub_1C5DBA4F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_1C6016940();
  if (a3)
  {
    v10 = a3;
    sub_1C5CB5808();
    sub_1C5CFF12C();
    if (swift_dynamicCast())
    {
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1C5CFF12C();
  OUTLINED_FUNCTION_2_40();
  sub_1C6017540();

  OUTLINED_FUNCTION_0_63();
  MEMORY[0x1C69534E0](a1, a2);
  OUTLINED_FUNCTION_4_40();
  MEMORY[0x1C69534E0](0xD000000000000015);
  MEMORY[0x1C69534E0](a4, a5);
  MEMORY[0x1C69534E0](93, 0xE100000000000000);
  sub_1C6016880();
  OUTLINED_FUNCTION_124();
  _s3__C4CodeOMa_6();
  sub_1C5DB0894();
  OUTLINED_FUNCTION_5_34();
  sub_1C6017280();
  OUTLINED_FUNCTION_98();

  return v12;
}

uint64_t sub_1C5DBA6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_30();
  sub_1C5CFF12C();
  v6 = sub_1C6016940();
  v8 = v7;
  v17 = 5;
  OUTLINED_FUNCTION_2_40();
  sub_1C6017540();

  OUTLINED_FUNCTION_0_63();
  MEMORY[0x1C69534E0](v3, a2);
  OUTLINED_FUNCTION_4_40();
  MEMORY[0x1C69534E0](0xD00000000000001DLL);
  sub_1C6016880();
  OUTLINED_FUNCTION_8_30();
  _s3__C4CodeOMa_6();
  v10 = v9;
  v11 = sub_1C5DB0894();
  v15 = OUTLINED_FUNCTION_3_40(v6, v8, &v17, 0, a3, v12, v13, v14, v10, v11);

  return v15;
}

uint64_t sub_1C5DBA7C4(void *a1, uint64_t a2)
{
  sub_1C5DBB738(0, &qword_1ED7DCB58, &unk_1ED7DCF20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158]);
  inited = swift_initStackObject();
  v4 = OUTLINED_FUNCTION_1_53(inited, xmmword_1C60311E0);
  v4[2].n128_u64[0] = v5;
  v4[2].n128_u64[1] = v6;
  v7 = [a1 contentItemID];
  v8 = sub_1C6016940();
  v10 = v9;

  inited[3].n128_u64[0] = v8;
  inited[3].n128_u64[1] = v10;
  sub_1C6016880();
  v11 = [a1 adjunctErrors];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = v11;
  sub_1C5CFF12C();
  sub_1C6016B10();

  if (sub_1C5C6AA20() < 1)
  {

LABEL_5:
    sub_1C5CFF12C();
    sub_1C6016940();
    v15 = sub_1C6014D30();
    sub_1C5E10B28();

    _s3__C4CodeOMa_6();
    sub_1C5DB0894();
    v14 = sub_1C6017280();

    goto LABEL_6;
  }

  sub_1C5D3BEAC();
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1C60311F0;
  *(v13 + 32) = sub_1C6014D30();
  sub_1C5D0CDA0(v13);
  sub_1C6016940();
  sub_1C5E10B28();

  _s3__C4CodeOMa_6();
  sub_1C5DB0894();
  v14 = sub_1C6017280();

LABEL_6:

  return v14;
}

BOOL sub_1C5DBAA70(id a1, void *a2, uint64_t a3)
{
  v5 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v8, a2);
  if (sub_1C6017810())
  {
    (*(v5 + 8))(v7, a2);
  }

  else
  {
    swift_allocError();
    (*(v5 + 32))(v9, v7, a2);
  }

  sub_1C6014D30();

  v10 = [a2 domain];
  v11 = sub_1C6016940();
  v13 = v12;

  if (v11 == sub_1C6016940() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_1C6017860();

    if ((v16 & 1) == 0)
    {

      return 0;
    }
  }

  v18 = [a2 code];

  return v18 == a1;
}

void sub_1C5DBAC6C()
{
  OUTLINED_FUNCTION_13_24();
  sub_1C5CFF12C();
  sub_1C6016940();
  sub_1C6016880();
  OUTLINED_FUNCTION_8_30();
  _s3__C4CodeOMa_6();
  sub_1C5DB0894();
  sub_1C6017280();

  OUTLINED_FUNCTION_12_28();
}

BOOL sub_1C5DBAD4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_1C6017810();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_1C6014D30();

  v11 = [v10 domain];
  v12 = sub_1C6016940();
  v14 = v13;

  if (v12 == sub_1C6016940() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_1C6017860();

    if ((v17 & 1) == 0)
    {

      return 0;
    }
  }

  v19 = [v10 code];

  return v19 == 24;
}

uint64_t sub_1C5DBAF48(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_124();
  sub_1C5CFF12C();
  sub_1C6016940();
  v3 = sub_1C6014D30();
  sub_1C5DBB738(0, &qword_1EC1A9220, &qword_1EC1A9270, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_53(inited, xmmword_1C60311E0);
  v5 = MEMORY[0x1E69E6158];
  sub_1C60174C0();
  v6 = [v2 contentItemID];
  v7 = sub_1C6016940();
  v9 = v8;

  inited[6].n128_u64[0] = v5;
  inited[4].n128_u64[1] = v7;
  inited[5].n128_u64[0] = v9;
  sub_1C6016880();
  _s3__C4CodeOMa_6();
  sub_1C5DB0894();
  OUTLINED_FUNCTION_7_33();
  v10 = sub_1C6017280();

  return v10;
}

uint64_t sub_1C5DBB0DC()
{
  sub_1C5CFF12C();
  sub_1C6016940();
  sub_1C6016880();
  _s3__C4CodeOMa_6();
  sub_1C5DB0894();
  v0 = sub_1C6017280();

  qword_1EC1BE470 = v0;
  return result;
}

uint64_t sub_1C5DBB1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1C5CFF12C();
    sub_1C6016940();
    OUTLINED_FUNCTION_10_27();
    swift_unknownObjectRetain();
    sub_1C6017540();
    MEMORY[0x1C69534E0](0x7463612072657355, 0xEC000000206E6F69);
    MEMORY[0x1C69534E0](a1, a2);
    MEMORY[0x1C69534E0](0xD000000000000011, 0x80000001C6051940);
    swift_getObjectType();
    sub_1C6017830();
    OUTLINED_FUNCTION_9_29();
    sub_1C6016880();
    _s3__C4CodeOMa_6();
    sub_1C5DB0894();
    v6 = sub_1C6017280();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C5CFF12C();
    v7 = sub_1C6016940();
    v9 = v8;
    OUTLINED_FUNCTION_10_27();
    sub_1C6017540();

    MEMORY[0x1C69534E0](a1, a2);
    OUTLINED_FUNCTION_9_29();
    sub_1C6016880();
    OUTLINED_FUNCTION_8_30();
    _s3__C4CodeOMa_6();
    v11 = v10;
    v12 = sub_1C5DB0894();
    v6 = OUTLINED_FUNCTION_3_40(v7, v9, v18, 0, a4, v13, v14, v15, v11, v12);
  }

  return v6;
}

void sub_1C5DBB454()
{
  OUTLINED_FUNCTION_13_24();
  sub_1C5CFF12C();
  sub_1C6016940();
  v0 = sub_1C6014D30();
  sub_1C6016880();
  _s3__C4CodeOMa_6();
  sub_1C5DB0894();
  OUTLINED_FUNCTION_7_33();
  sub_1C6017280();

  OUTLINED_FUNCTION_12_28();
}

void sub_1C5DBB53C()
{
  OUTLINED_FUNCTION_13_24();
  sub_1C5CFF12C();
  sub_1C6016940();
  sub_1C6016880();
  OUTLINED_FUNCTION_124();
  _s3__C4CodeOMa_6();
  sub_1C5DB0894();
  OUTLINED_FUNCTION_5_34();
  sub_1C6017280();

  OUTLINED_FUNCTION_12_28();
}

unint64_t sub_1C5DBB610(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_124();
  v4 = sub_1C5CFF12C();
  sub_1C6016940();
  OUTLINED_FUNCTION_2_40();
  sub_1C6017540();

  MEMORY[0x1C69534E0](v2, a2);
  sub_1C6016880();
  OUTLINED_FUNCTION_124();
  _s3__C4CodeOMa_6();
  sub_1C5DB0894();
  OUTLINED_FUNCTION_5_34();
  sub_1C6017280();
  OUTLINED_FUNCTION_98();

  return v4;
}

void sub_1C5DBB738(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1C5D2A9A0(255, a3, a4, a5);
    v6 = sub_1C60177E0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1C5DBB7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  swift_weakInit();
  swift_weakInit();
  swift_weakAssign();

  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_weakAssign();

  return v3;
}

void sub_1C5DBB834(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  swift_getErrorValue();
  _Block_copy(a4);
  if (sub_1C5DBAA70(6, v19[33], v19[34]))
  {
    v7 = 1;
  }

  else
  {
    swift_getErrorValue();
    v7 = sub_1C5DBAA70(7, v19[29], v19[30]);
  }

  Strong = swift_weakLoadStrong();
  v9 = Strong;
  if (!Strong)
  {
    goto LABEL_10;
  }

  v10 = *(Strong + 32);
  sub_1C5DBBED4(v10);

  if (v10 != 1)
  {
    if (v10)
    {
      sub_1C5DBBEE4(v10);
    }

    goto LABEL_9;
  }

  if (v7)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (swift_weakLoadStrong())
  {
    v19[0] = 0xD00000000000007DLL;
    v19[1] = 0x80000001C6051A60;
    sub_1C5D83FAC(v19);
    memcpy(__dst, v19, sizeof(__dst));
    sub_1C5DBBF0C();
  }

  v9 = 1;
  a4[2](a4, 1);
  sub_1C5DBB454();
  v18 = v17;
  sub_1C5DBBC74(v17, a2);

LABEL_10:
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1C6014D30();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v9;
    *(v15 + 24) = v14;
    *(v15 + 32) = sub_1C5CD4510;
    *(v15 + 40) = v6;
    v19[4] = sub_1C5DBBEF4;
    v19[5] = v15;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1C5D54350;
    v19[3] = &block_descriptor_21;
    v16 = _Block_copy(v19);

    [v12 resolveError:v13 forItem:a2 completion:v16];
    swift_unknownObjectRelease();
    _Block_release(v16);
  }

  else
  {
  }

  _Block_release(a4);
}

unint64_t sub_1C5DBBB0C(unint64_t result, char a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  if ((a2 & 1) == 0)
  {
    v5 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      Strong = swift_weakLoadStrong();

      if (Strong)
      {
        v7 = *(Strong + 32);
        sub_1C5DBBED4(v7);

        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 <= 1)
            {
              v5 = 1;
            }
          }

          else
          {
            sub_1C5DBBEE4(v7);
          }
        }
      }
    }

    return a4(v5);
  }

  return result;
}

void *sub_1C5DBBC74(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_1C6014D30();
    [v4 reportCriticalError:v5 forItem:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DBBD70()
{
  sub_1C5C96DF0(v0 + 16);
  swift_weakDestroy();
  swift_weakDestroy();
  return v0;
}

uint64_t sub_1C5DBBDA0()
{
  sub_1C5DBBD70();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void *sub_1C5DBBDF8(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = sub_1C6014D30();
    [v2 resetWithReason_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C5DBBED4(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_1C5DBBEE4(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1C5DBBF0C()
{
  OUTLINED_FUNCTION_0_64(v24);
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_0_64(v23);
  v2 = sub_1C5C89D54(v23);
  sub_1C5C96E18(v23);
  switch(v2)
  {
    case 19:
    case 20:
    case 21:
      if ((v1 & 8) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    case 22:
    case 23:
    case 25:
    case 31:
    case 32:
    case 33:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    case 24:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    case 26:
      if ((v1 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    case 27:
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    case 28:
    case 29:
    case 30:
      if ((v1 & 0x80) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    default:
      if ((v1 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_9:
      OUTLINED_FUNCTION_0_64(v22);
      v3 = sub_1C5C89D54(v22);
      if (v3 > 0xB || ((1 << v3) & 0x882) == 0 || ((result = sub_1C5C96E18(v22), ((*(result + 72) >> 58) & 0x3C | (*(result + 72) >> 1) & 3) <= 0x1C) ? (v5 = ((1 << ((*(result + 72) >> 58) & 0x3C | (*(result + 72) >> 1) & 3)) & 0x18000C00) == 0) : (v5 = 1), v5))
      {
LABEL_16:
        if (sub_1C5C89D54(v24) == 27)
        {
          v6 = sub_1C6016F20();
          v7 = qword_1ED7DCBF0;
          v8 = &unk_1C60419E8;
        }

        else
        {
          v6 = sub_1C6016F30();
          v7 = qword_1ED7DCBF0;
          v8 = &unk_1C6041AF8;
        }

        v19 = v6;
        if (v7 != -1)
        {
          swift_once();
        }

        v9 = qword_1ED7E1668;
        sub_1C5D5CCF8(0);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1C6031150;
        v11 = sub_1C5DBC310();
        v13 = v12;
        v14 = MEMORY[0x1E69E6158];
        *(v10 + 56) = MEMORY[0x1E69E6158];
        v15 = sub_1C5DBC6E4();
        *(v10 + 64) = v15;
        *(v10 + 32) = v11;
        *(v10 + 40) = v13;
        OUTLINED_FUNCTION_0_64(v21);
        LODWORD(v11) = sub_1C5C89D54(v21);
        sub_1C5C96E18(v21);
        v16 = sub_1C5DBC180(v8[v11]);
        *(v10 + 96) = v14;
        *(v10 + 104) = v15;
        *(v10 + 72) = v16;
        *(v10 + 80) = 0xE200000000000000;
        v17 = sub_1C5D83FC4();
        *(v10 + 136) = v14;
        *(v10 + 144) = v15;
        *(v10 + 112) = v17;
        *(v10 + 120) = v18;
        sub_1C6016200(v19, &dword_1C5C61000, v9, "%{public}@-[%{public}@] %{public}@", 34, 2, v10);

LABEL_22:
        OUTLINED_FUNCTION_0_64(v20);
        return sub_1C60164B0();
      }

      return result;
  }
}

uint64_t sub_1C5DBC180(uint64_t a1)
{
  v3 = a1 - 1;
  if (!(!v2 & v1))
  {
    result = 19795;
    switch(v3)
    {
      case 0:
        return result;
      case 1:
        return 19536;
      case 2:
      case 4:
      case 5:
      case 6:
        return 17997;
      case 3:
        return 19521;
      case 7:
        return 19779;
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 16:
      return 22081;
    case 32:
      return 21328;
    case 64:
      return 21061;
    case 128:
      return 18242;
  }

  return 17997;
}

uint64_t sub_1C5DBC240@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C5D2AB50(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C5DBC270@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C5D8202C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C5DBC2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5DBC738();
  swift_allocObject();
  *(v3 + 16) = sub_1C60164C0();
  *(v3 + 24) = 255;
  *(v3 + 32) = 0;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 40) = a3;
  return v3;
}

uint64_t sub_1C5DBC310()
{
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      v1 = 3822427;
    }

    else
    {
      v1 = 3820891;
    }
  }

  else
  {
    v1 = 3818587;
  }

  v5 = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  MEMORY[0x1C69534E0](v2, v3);

  MEMORY[0x1C69534E0](93, 0xE100000000000000);
  return v5;
}

uint64_t sub_1C5DBC3B8()
{

  return v0;
}

uint64_t sub_1C5DBC3E8()
{
  sub_1C5DBC3B8();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

_BYTE *storeEnumTagSinglePayload for ReportingMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C5DBC530()
{
  result = qword_1EC1AB870;
  if (!qword_1EC1AB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB870);
  }

  return result;
}

unint64_t sub_1C5DBC588()
{
  result = qword_1EC1AB878;
  if (!qword_1EC1AB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB878);
  }

  return result;
}

unint64_t sub_1C5DBC5E0()
{
  result = qword_1EC1AB880;
  if (!qword_1EC1AB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB880);
  }

  return result;
}

unint64_t sub_1C5DBC638()
{
  result = qword_1EC1AB888;
  if (!qword_1EC1AB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB888);
  }

  return result;
}

unint64_t sub_1C5DBC690()
{
  result = qword_1EC1AB890;
  if (!qword_1EC1AB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB890);
  }

  return result;
}

unint64_t sub_1C5DBC6E4()
{
  result = qword_1ED7DCF40;
  if (!qword_1ED7DCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DCF40);
  }

  return result;
}

void sub_1C5DBC738()
{
  if (!qword_1ED7DCF50)
  {
    v0 = sub_1C60164D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DCF50);
    }
  }
}

uint64_t sub_1C5DBC798(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1C5DBC7DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 4);
      v5 = *(v4 - 3);
      v7 = *(v4 - 1);
      v8 = *v4;
      v10 = *(v3 - 4);
      v9 = *(v3 - 3);
      v12 = *(v3 - 2);
      v11 = *(v3 - 1);
      v13 = *v3;
      if (v8 >> 6)
      {
        if (v8 >> 6 == 1)
        {
          if ((v13 & 0xC0) != 0x40)
          {
            return 0;
          }
        }

        else
        {
          if ((v13 & 0xC0) != 0x80)
          {
            return 0;
          }

          v14 = *(v4 - 1);
          if ((v7 & 0x80) == 0)
          {
            if ((v12 & 0x80) != 0)
            {
              return 0;
            }

            v15 = OUTLINED_FUNCTION_147();
            sub_1C5CB587C(v15, v16, v12, v17, v18);
            if (v6 != v10)
            {
              return 0;
            }

            if (v14)
            {
              if ((v12 & 1) == 0)
              {
                return 0;
              }
            }

            else if (v12 & 1 | (v5 != v9))
            {
              return 0;
            }

            goto LABEL_27;
          }

          if ((v12 & 0x80) == 0)
          {
            return 0;
          }
        }

        v19 = v6 == v10 && v5 == v9;
        if (!v19 && (sub_1C6017860() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v21[0] = *(v4 - 4);
        v21[1] = v5;
        v22 = v7;
        v23 = v8;
        if (v13 >= 0x40)
        {
          return 0;
        }

        v24[0] = v10;
        v24[1] = v9;
        v24[2] = v12;
        v24[3] = v11;
        v25 = v13;
        if ((sub_1C5CAC220(v21, v24) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_27:
      v4 += 40;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_1C5DBC94C()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C60161C0();
  OUTLINED_FUNCTION_25();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = *(v3 + 16);
  if (v13 == *(v1 + 16) && v13 && v3 != v1)
  {
    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = v3 + v14;
    v16 = v1 + v14;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v19 = (v17 - 8);
    v26 = *(v17 + 56);
    v27 = v18;
    while (1)
    {
      v20 = OUTLINED_FUNCTION_38_0();
      v21 = v27;
      (v27)(v20);
      if (!v13)
      {
        break;
      }

      v22 = v17;
      v21(v10, v16, v4);
      sub_1C5DC97C4(&unk_1EC1AB8B0, MEMORY[0x1E69C4E18]);
      OUTLINED_FUNCTION_147();
      v23 = sub_1C60168F0();
      v24 = *v19;
      (*v19)(v10, v4);
      v24(v12, v4);
      if (v23)
      {
        v16 += v26;
        v15 += v26;
        v25 = v13-- == 1;
        v17 = v22;
        if (!v25)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_237();
  }
}

uint64_t sub_1C5DBCB3C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5DBCB98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C6017860() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C5DBCC24(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C6017440())
  {
    if (a2 >> 62)
    {
      result = sub_1C6017440();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
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
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1C5C64D74(0, &qword_1ED7DCEA8, 0x1E69880B0);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x1C6954040](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x1C6954040](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_1C60172D0();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
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

uint64_t sub_1C5DBCDF8()
{
  v1 = [v0 avPlayerItem];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 asset];
    [v3 loggingIdentifier];

    swift_getObjectType();
    sub_1C6017830();
    swift_unknownObjectRelease();
    MEMORY[0x1C69534E0](32, 0xE100000000000000);
    sub_1C6017650();

    return 0;
  }

  else
  {
    v5 = [v0 contentItemID];
    v4 = sub_1C6016940();
  }

  return v4;
}

uint64_t sub_1C5DBCF1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1C5DBCF70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      v10 = 0x496465766F6D6572;
      goto LABEL_15;
    case 2:
      v12 = 0;
      sub_1C6017540();
      MEMORY[0x1C69534E0](0x7561666544746573, 0xEF3A65746152746CLL);
      sub_1C6016D30();
      return v12;
    case 3:
      v12 = 0;
      MEMORY[0x1C69534E0](0x3A65746152746573, 0xE800000000000000, a3);
      sub_1C6016D30();
      if (a2)
      {
        MEMORY[0x1C69534E0](32, 0xE100000000000000);
        swift_getObjectType();
        sub_1C6017830();
      }

      MEMORY[0x1C69534E0](0, 0xE000000000000000);
      goto LABEL_16;
    case 4:
      v8 = a3 | a2;
      if (!(a3 | a2 | a1))
      {
        return 0x416465766F6D6572;
      }

      if (a1 == 1 && !v8)
      {
        return 0x6C50656D75736572;
      }

      if (a1 == 2 && v8 == 0)
      {
        return 0x6573756170;
      }

      return 0x6E776F6472616574;
    default:
      if (a2)
      {
        swift_unknownObjectRetain();
        sub_1C6017540();

        OUTLINED_FUNCTION_57_4();
        v12 = v5;
        swift_getObjectType();
        v6 = sub_1C5DBCDF8();
        MEMORY[0x1C69534E0](v6);

        MEMORY[0x1C69534E0](0x7449726574666120, 0xEB000000003A6D65);
        swift_getObjectType();
        v7 = sub_1C5DBCDF8();
        MEMORY[0x1C69534E0](v7);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_57_4();
LABEL_15:
        v12 = v10;
        swift_getObjectType();
        v11 = sub_1C5DBCDF8();
        MEMORY[0x1C69534E0](v11);
      }

LABEL_16:

      return v12;
  }
}

void sub_1C5DBD274(uint64_t a1, void *a2, float a3)
{
  OUTLINED_FUNCTION_151();
  sub_1C6017540();

  OUTLINED_FUNCTION_89();
  v8 = v7;
  MEMORY[0x1C69534E0](*a2, a2[1]);
  OUTLINED_FUNCTION_87();
  sub_1C5DBD338(0xD00000000000001FLL, v8);

  *(v3 + 168) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v3 + 32) = a3;
  sub_1C5DC6CC0();
  *(v3 + 204) = 0;
}

void sub_1C5DBD338(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = *(v2 + 80);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    if (v7)
    {

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1C5DE45E8(v3);
        swift_unknownObjectRelease();
      }

      (*(v4 + 368))(ObjectType, v4);
      sub_1C5DC9430();
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1C5DE4814(MEMORY[0x1E69E7CC0]);
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1C5DE4690(v3, v4, 0, 0, 0, 4);
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }
}

void sub_1C5DBD4B8()
{
  OUTLINED_FUNCTION_247();
  v2 = v0;
  v52 = v3;
  v5 = v4;
  if (v0[9])
  {
    v6 = v0[10];
    __swift_project_boxed_opaque_existential_0(v0 + 11, v0[14]);
    __src[0] = 0;
    sub_1C5DC9918(__src);
    memcpy(__dst, __src, 0xD9uLL);
    swift_unknownObjectRetain();
    sub_1C5DBBF0C();
    v0[21] = 0;
    swift_unknownObjectRelease();
    sub_1C5CDAF64((v0 + 11), v57);
    __swift_project_boxed_opaque_existential_0(v57, v57[3]);
    v58[0] = 0;
    v58[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000053, 0x80000001C60524C0);
    swift_getObjectType();
    v56[0] = v5;
    sub_1C6017830();
    MEMORY[0x1C69534E0]();
    ObjectType = swift_getObjectType();
    v51 = *(v6 + 328);
    v51(ObjectType, v6);
    sub_1C5C64D74(0, &qword_1ED7DCEA8, 0x1E69880B0);
    v7 = OUTLINED_FUNCTION_34_4();
    MEMORY[0x1C6953600](v7);
    OUTLINED_FUNCTION_37_6();

    v8 = OUTLINED_FUNCTION_88_0();
    MEMORY[0x1C69534E0](v8);

    v56[0] = v58[0];
    v56[1] = v58[1];
    sub_1C5DC95A4(v56);
    memcpy(v58, v56, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v57);
    v9 = [v5 avPlayerItem];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      sub_1C5DEA0B4();
      v12 = v10;
      v13 = sub_1C6016900();

      [v11 setContentItemID_];

      v10 = v12;
      v14 = v11;
      [v14 setIsVideoContent_];

      v15 = v14;
      [v15 setPrefersSeekOverSkip_];
    }

    v16 = ObjectType;
    v17 = (v51)(ObjectType, v6);
    v18 = sub_1C5C6AA20();
    v49 = v5;
    v48 = v6;
    if (v18)
    {
      v19 = v18;
      v20 = v17 & 0xC000000000000001;
      OUTLINED_FUNCTION_61_4();
      sub_1C5C8CEE0();
      if ((v17 & 0xC000000000000001) != 0)
      {
        goto LABEL_31;
      }

      for (i = *(v17 + 32); ; i = MEMORY[0x1C6954040](0, v17))
      {
        v22 = i;
        if (!v10)
        {
          v24 = 0;

          goto LABEL_12;
        }

        if (i != v10)
        {
          v23 = i;
          v24 = v10;

          goto LABEL_13;
        }

        v47 = v10;
        if (v19 < 1)
        {
          __break(1u);
        }

        else
        {
          sub_1C5D85598();
          sub_1C5D85598();
          if (v20)
          {

            if (v19 != 1)
            {
              v28 = 1;
              do
              {
                v29 = v28 + 1;
                sub_1C6017550();
                v28 = v29;
              }

              while (v19 != v29);
            }
          }

          else
          {
          }

          v46 = v22;
          v5 = v2;
          v2 = 0xD000000000000015;
          if (!(v17 >> 62))
          {
            v10 = (v17 & 0xFFFFFFFFFFFFFF8) + 32;
            v30 = 1;
            goto LABEL_24;
          }
        }

        sub_1C60176D0();
        v10 = v32;
        v30 = v33;
        v19 = v34 >> 1;
LABEL_24:
        swift_unknownObjectRetain();

        v20 = 0x80000001C6052540;
        while (1)
        {
          if (v19 == v30)
          {

            swift_unknownObjectRelease_n();
            v2 = v5;
            v16 = ObjectType;
            v24 = v47;
            goto LABEL_29;
          }

          if (v30 >= v19)
          {
            break;
          }

          v31 = *(v10 + 8 * v30++);
          v57[0] = 0;
          v57[1] = 0xE000000000000000;
          v16 = v31;
          sub_1C6017540();

          v57[0] = v2;
          v57[1] = 0x80000001C6052540;
          MEMORY[0x1C69534E0](*v52, v52[1]);
          OUTLINED_FUNCTION_87();
          v17 = v5;
          sub_1C5DBE630(v16, v57[0], v57[1]);
        }

        __break(1u);
LABEL_31:
        ;
      }
    }

    v24 = v10;
LABEL_12:

LABEL_13:
    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    sub_1C6017540();

    v57[0] = 0xD000000000000015;
    v57[1] = 0x80000001C6052540;
    v25 = *v52;
    v26 = v52[1];
    MEMORY[0x1C69534E0](*v52, v26);
    OUTLINED_FUNCTION_87();
    sub_1C5DBD338(v57[0], v57[1]);

    if (v24)
    {
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      v27 = v24;
      sub_1C6017540();

      v57[0] = 0xD000000000000015;
      v57[1] = 0x80000001C6052540;
      MEMORY[0x1C69534E0](v25, v26);
      OUTLINED_FUNCTION_87();
      sub_1C5DBE7A8(v27, 0, v57[0], v57[1]);
    }

LABEL_29:
    sub_1C5DBE948();
    sub_1C5CDAF64(v2 + 88, v53);
    __swift_project_boxed_opaque_existential_0(v53, v53[3]);
    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000054, 0x80000001C6052560);
    v54[0] = v49;
    sub_1C6017830();
    MEMORY[0x1C69534E0](0xD000000000000011, 0x80000001C6052520);
    v51(v16, v48);
    MEMORY[0x1C6953600]();

    OUTLINED_FUNCTION_82_3();

    v54[0] = v57[0];
    v54[1] = v57[1];
    sub_1C5DC95A4(v54);
    memcpy(v57, v54, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v53);
    sub_1C5DBEC50();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_237();
  }

  else
  {
    v35 = MEMORY[0x1E69E6158];
    sub_1C5DC95B8(0, &qword_1ED7DCB58);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1C6031150;
    *(v36 + 32) = 0x72656767697274;
    *(v36 + 40) = 0xE700000000000000;
    *(v36 + 48) = 0xD000000000000010;
    *(v36 + 56) = 0x80000001C6052400;
    *(v36 + 64) = 0x6E6F73616572;
    *(v36 + 72) = 0xE600000000000000;
    OUTLINED_FUNCTION_89();
    *(v37 + 80) = 0xD000000000000028;
    *(v37 + 88) = v38;
    strcpy((v37 + 96), "setQueue item");
    *(v37 + 110) = -4864;
    __dst[3] = swift_getObjectType();
    __dst[0] = v5;
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_10_0(__dst);
    v39 = MEMORY[0x1E69E7CA0];
    sub_1C5DC9938(__dst, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
    *(v36 + 112) = 0;
    *(v36 + 120) = 0xE000000000000000;

    sub_1C6016880();
    objc_opt_self();
    OUTLINED_FUNCTION_53_6();
    v40 = OUTLINED_FUNCTION_15_21();
    v41 = sub_1C6016900();
    OUTLINED_FUNCTION_2_41();
    sub_1C5C67620(0, v42, v39 + 8, v43);
    *(swift_allocObject() + 16) = xmmword_1C60311E0;
    sub_1C5CFB374(0, &qword_1EC1AB550, v35);
    OUTLINED_FUNCTION_5_35(v44);

    sub_1C5CDAF64((v0 + 11), v57);
    __swift_project_boxed_opaque_existential_0(v57, v57[3]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    MEMORY[0x1C69534E0](0xD00000000000004CLL, 0x80000001C6052470);
    sub_1C5DBDE9C();
    sub_1C6016870();

    v45 = OUTLINED_FUNCTION_38_0();
    MEMORY[0x1C69534E0](v45);

    v58[0] = __src[0];
    v58[1] = __src[1];
    sub_1C5DC95A4(v58);
    memcpy(__dst, v58, 0xD9uLL);

    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v57);
    __break(1u);
  }
}

char *sub_1C5DBDE9C()
{
  v3 = v0;
  v4 = MEMORY[0x1E69E7CA0];
  v5 = MEMORY[0x1E69E6158];
  sub_1C5DC95B8(0, &qword_1EC1A9230);
  *(swift_allocObject() + 16) = xmmword_1C6041C10;
  OUTLINED_FUNCTION_36_9();
  *(v7 + 32) = v6 & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
  *(v7 + 40) = 0xEB000000006D6574;
  v218 = v7;
  if (sub_1C5DC6AA4())
  {
    swift_getObjectType();
  }

  else
  {
    *(&v234 + 1) = 0;
    *&v235 = 0;
  }

  OUTLINED_FUNCTION_20_21();
  v16 = OUTLINED_FUNCTION_3_41(v8, v9, v10, v11, v12, v13, v14, v15);
  v17 = v228;
  v18 = v231;
  v25 = OUTLINED_FUNCTION_23_15(v16, &qword_1ED7E0200, v19, v20, v21, v22, v23, v24, v209, v218, v228, v231, v234);
  sub_1C5DC9938(v25, v26, v27);
  *(v219 + 6) = v17;
  *(v219 + 7) = v18;
  *(v219 + 9) = v5;
  *(v219 + 10) = 0x736D657449;
  *(v219 + 11) = 0xE500000000000000;
  v28 = sub_1C5DC6E60();
  v29 = sub_1C5C6AA20();
  v210 = v3;
  if (v29)
  {
    v30 = v29;
    *&v234 = MEMORY[0x1E69E7CC0];
    result = sub_1C5C66A1C(0, v29 & ~(v29 >> 63), 0);
    if (v30 < 0)
    {
      __break(1u);
      return result;
    }

    v32 = 0;
    v33 = v234;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x1C6954040](v32, v28);
      }

      else
      {
        v34 = *(v28 + 8 * v32 + 32);
        swift_unknownObjectRetain();
      }

      v35 = [v34 description];
      sub_1C6016940();
      OUTLINED_FUNCTION_37_6();
      swift_unknownObjectRelease();

      *&v234 = v33;
      v37 = *(v33 + 16);
      v36 = *(v33 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1C5C66A1C((v36 > 1), v37 + 1, 1);
        v33 = v234;
      }

      ++v32;
      *(v33 + 16) = v37 + 1;
      v38 = v33 + 16 * v37;
      *(v38 + 32) = v1;
      *(v38 + 40) = v2;
    }

    while (v30 != v32);

    v4 = MEMORY[0x1E69E7CA0];
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  v39 = MEMORY[0x1E69E6158];
  sub_1C5C67620(0, &qword_1ED7DCF10, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v40 = v219;
  *(v219 + 12) = v33;
  OUTLINED_FUNCTION_36_9();
  *(v219 + 15) = v42;
  *(v219 + 16) = v41 & 0xFFFFFFFFFFFFLL | 0x5274000000000000;
  *(v219 + 17) = 0xEB00000000657461;
  sub_1C5DC4550();
  v43 = MEMORY[0x1E69E6448];
  LOBYTE(v234) = v44;
  v53 = OUTLINED_FUNCTION_3_41(v45, v46, v47, v48, v49, v50, v51, v52);
  v61 = OUTLINED_FUNCTION_23_15(v53, v54, v55, v56, v57, v58, v59, v60, v210, v219, 0, 0xE000000000000000, v234);
  sub_1C5DC9938(v61, &qword_1ED7E0200, v62);
  *(v40 + 18) = 0;
  *(v40 + 19) = 0xE000000000000000;
  *(v40 + 21) = v39;
  strcpy(v40 + 176, "EffectiveRate");
  *(v40 + 95) = -4864;
  v63 = sub_1C5DC6C08();
  *(&v235 + 1) = v43;
  LOBYTE(v234) = LOBYTE(v63);
  v72 = OUTLINED_FUNCTION_3_41(v64, v65, v66, v67, v68, v69, v70, v71);
  v80 = OUTLINED_FUNCTION_23_15(v72, v73, v74, v75, v76, v77, v78, v79, v211, v220, 0, 0xE000000000000000, v234);
  sub_1C5DC9938(v80, &qword_1ED7E0200, v81);
  *(v40 + 24) = 0;
  *(v40 + 25) = 0xE000000000000000;
  OUTLINED_FUNCTION_89();
  *(v40 + 27) = v39;
  *(v40 + 28) = 0xD000000000000012;
  *(v40 + 29) = v82;
  v83 = sub_1C5DC6AA4();
  if (v83 && (v91 = [v83 avPlayerItem], v83 = swift_unknownObjectRelease(), v91))
  {
    v92 = sub_1C5D63FE4();
    v94 = v93;

    v95 = MEMORY[0x1E69E6158];
    *(&v235 + 1) = MEMORY[0x1E69E6158];
    *&v234 = v92;
    *(&v234 + 1) = v94;
  }

  else
  {
    v234 = 0u;
    v235 = 0u;
    v95 = MEMORY[0x1E69E6158];
  }

  v96 = OUTLINED_FUNCTION_3_41(v83, v84, v85, v86, v87, v88, v89, v90);
  v103 = OUTLINED_FUNCTION_23_15(v96, &qword_1ED7E0200, v97, v98, v99, v100, v101, v102, v212, v221, 0, 0xE000000000000000, v234);
  sub_1C5DC9938(v103, v104, v105);
  *(v222 + 240) = 0;
  *(v222 + 248) = 0xE000000000000000;
  OUTLINED_FUNCTION_89();
  v106[33] = v95;
  v106[34] = 0xD000000000000010;
  v106[35] = v107;
  v108 = sub_1C5DC6AA4();
  if (v108 && (v116 = [v108 avPlayerItem], v108 = swift_unknownObjectRelease(), v116))
  {
    v117 = sub_1C5D63CFC();
    v119 = v118;

    v120 = MEMORY[0x1E69E6158];
    *(&v235 + 1) = MEMORY[0x1E69E6158];
    *&v234 = v117;
    *(&v234 + 1) = v119;
  }

  else
  {
    v234 = 0u;
    v235 = 0u;
    v120 = MEMORY[0x1E69E6158];
  }

  v121 = OUTLINED_FUNCTION_3_41(v108, v109, v110, v111, v112, v113, v114, v115);
  v129 = OUTLINED_FUNCTION_23_15(v121, v122, v123, v124, v125, v126, v127, v128, v213, v222, 0, 0xE000000000000000, v234);
  sub_1C5DC9938(v129, &qword_1ED7E0200, v130);
  v132 = v214;
  v131 = v223;
  *(v223 + 288) = 0;
  *(v223 + 296) = 0xE000000000000000;
  *(v223 + 312) = v120;
  *(v223 + 320) = 0x6E6979616C507369;
  *(v223 + 328) = 0xE900000000000067;
  v133 = sub_1C5DC6F54();
  v134 = MEMORY[0x1E69E6370];
  *(v223 + 336) = v133;
  *(v223 + 360) = v134;
  *(v223 + 368) = 0x6570706F74537369;
  *(v223 + 376) = 0xE900000000000064;
  *(v223 + 384) = sub_1C5DC7020();
  *(v223 + 408) = v134;
  *(v223 + 416) = 0x656C6C6174537369;
  *(v223 + 424) = 0xE900000000000064;
  *(v223 + 432) = sub_1C5DC70E0();
  OUTLINED_FUNCTION_36_9();
  *(v223 + 456) = v134;
  *(v223 + 464) = v135 & 0xFFFFFFFFFFFFLL | 0x5474000000000000;
  *(v223 + 472) = 0xEB00000000656D69;
  sub_1C5DC1508();
  OUTLINED_FUNCTION_0_65(v136, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740]);
  v138 = OUTLINED_FUNCTION_56_6(v137);
  v139 = MEMORY[0x1E69E63B0];
  *(v138 + 16) = xmmword_1C60311E0;
  *(v223 + 480) = OUTLINED_FUNCTION_13_11(v138, v139);
  *(v223 + 488) = v140;
  *(v223 + 504) = v120;
  *(v223 + 512) = 0x6152746567726154;
  *(v223 + 520) = 0xEA00000000006574;
  v141 = *(v214 + 32);
  *(&v235 + 1) = v43;
  LODWORD(v234) = v141;
  v142 = DefaultStringInterpolation.appendInterpolation(describing:default:)(&v234, 0x6E776F6E6B6E75, 0xE700000000000000);
  v150 = OUTLINED_FUNCTION_23_15(v142, v143, v144, v145, v146, v147, v148, v149, v214, v223, 0, 0xE000000000000000, v234);
  v152 = sub_1C5DC9938(v150, &qword_1ED7E0200, v151);
  v131[69] = v120;
  v131[66] = 0;
  v131[67] = 0xE000000000000000;
  v131[70] = 0x7453746567726154;
  v131[71] = 0xEF656D6954747261;
  if (*(v132 + 48))
  {
    v160 = 0;
    *(&v234 + 1) = 0;
    *&v235 = 0;
    v161 = 0;
  }

  else
  {
    v161 = *(v132 + 40);
    v160 = MEMORY[0x1E69E63B0];
  }

  *&v234 = v161;
  *(&v235 + 1) = v160;
  v162 = OUTLINED_FUNCTION_3_41(v152, v153, v154, v155, v156, v157, v158, v159);
  v169 = OUTLINED_FUNCTION_23_15(v162, &qword_1ED7E0200, v163, v164, v165, v166, v167, v168, v215, v224, 0, 0xE000000000000000, v234);
  sub_1C5DC9938(v169, v170, v171);
  v225[75] = v120;
  v225[72] = 0;
  v225[73] = 0xE000000000000000;
  OUTLINED_FUNCTION_89();
  *(v172 + 608) = 0xD000000000000017;
  *(v172 + 616) = v173;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
  }

  else
  {
    *(&v234 + 1) = 0;
    *&v235 = 0;
  }

  OUTLINED_FUNCTION_20_21();
  v182 = OUTLINED_FUNCTION_3_41(v174, v175, v176, v177, v178, v179, v180, v181);
  v183 = v229;
  v184 = v232;
  v191 = OUTLINED_FUNCTION_23_15(v182, &qword_1ED7E0200, v185, v186, v187, v188, v189, v190, v216, v225, v229, v232, v234);
  sub_1C5DC9938(v191, v192, v193);
  v226[81] = v120;
  v226[78] = v183;
  v226[79] = v184;
  v226[82] = 0x726579616C50;
  v226[83] = 0xE600000000000000;
  v194 = *(v132 + 72);
  if (v194)
  {
    v195 = v4;
    v196 = [v194 stateDictionary];
    sub_1C6016860();

    sub_1C5CFB374(0, &qword_1EC1A9490, v195 + 8);
  }

  else
  {
    *(&v234 + 1) = 0;
    *&v235 = 0;
  }

  OUTLINED_FUNCTION_20_21();
  v197 = DefaultStringInterpolation.appendInterpolation(describing:default:)(&v234, 0x6579616C70206F6ELL, 0xE900000000000072);
  v198 = v230;
  v199 = v233;
  v206 = OUTLINED_FUNCTION_23_15(v197, &qword_1ED7E0200, v200, v201, v202, v203, v204, v205, v217, v226, v230, v233, v234);
  sub_1C5DC9938(v206, v207, v208);
  v227[87] = v120;
  v227[84] = v198;
  v227[85] = v199;
  return sub_1C6016880();
}

void sub_1C5DBE630(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 72);
  if (v4)
  {
    v6 = *(v3 + 80);
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRetain();
    v9 = a1;
    if (Strong)
    {
      sub_1C5DE45E8(v4);
      swift_unknownObjectRelease();
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 360))(v9, ObjectType, v6);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1C5DE4690(v4, v6, a1, 0, 0, 1);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1C5DBE7A8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 72);
  if (v5)
  {
    v8 = *(v4 + 80);
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRetain();
    v10 = a2;
    v12 = a1;
    if (Strong)
    {
      sub_1C5DE45E8(v5);
      swift_unknownObjectRelease();
    }

    ObjectType = swift_getObjectType();
    (*(v8 + 352))(v12, a2, ObjectType, v8);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1C5DE4690(v5, v8, a1, a2, 0, 0);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1C5DBE948()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 80);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 328);
    swift_unknownObjectRetain();
    v4 = v3(ObjectType, v1);
    __dst[0] = MEMORY[0x1E69E7CC0];
    v5 = sub_1C5C6AA20();
    for (i = 0; v5 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C6954040](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      if ([v7 isVideoContent])
      {
      }

      else
      {
        sub_1C60175D0();
        sub_1C6017600();
        sub_1C6017610();
        sub_1C60175E0();
      }
    }

    v9 = *(v1 + 224);
    v10 = v9(ObjectType, v1);
    v11 = sub_1C5DBCC24(v10, __dst[0]);

    if (v11)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v1 + 232))(__dst[0], ObjectType, v1);
      sub_1C5CDAF64(v17 + 88, v18);
      __swift_project_boxed_opaque_existential_0(v18, v18[3]);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_1C6017540();
      MEMORY[0x1C69534E0](0xD000000000000051, 0x80000001C60526D0);
      v12 = v9(ObjectType, v1);
      v13 = sub_1C5C64D74(0, &qword_1ED7DCEA8, 0x1E69880B0);
      v14 = MEMORY[0x1C6953600](v12, v13);
      v16 = v15;

      MEMORY[0x1C69534E0](v14, v16);

      __src[0] = __dst[0];
      __src[1] = __dst[1];
      sub_1C5DC95A4(__src);
      memcpy(__dst, __src, 0xD9uLL);
      sub_1C5DBBF0C();

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v18);
    }
  }
}

void sub_1C5DBEC50()
{
  OUTLINED_FUNCTION_247();
  v2 = v0;
  if (*(v0 + 72))
  {
    v3 = *(v0 + 80);
    sub_1C5CDAF64(v0 + 88, v59);
    __swift_project_boxed_opaque_existential_0(v59, v59[3]);
    OUTLINED_FUNCTION_35_12();
    swift_unknownObjectRetain();
    sub_1C6017540();
    v57 = __dst[0];
    v58 = __dst[1];
    MEMORY[0x1C69534E0](0xD000000000000029, 0x80000001C6052630);
    if (swift_unknownObjectWeakLoadStrong() && (v4 = sub_1C5DE4720(), swift_unknownObjectRelease(), (v4 & 1) != 0))
    {
      v5 = 0xE400000000000000;
      v6 = 1702195828;
    }

    else
    {
      v5 = 0xE500000000000000;
      v6 = 0x65736C6166;
    }

    MEMORY[0x1C69534E0](v6, v5);

    OUTLINED_FUNCTION_54_6();
    if (*(v0 + 204))
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (*(v0 + 204))
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    MEMORY[0x1C69534E0](v7, v8);

    OUTLINED_FUNCTION_54_6();
    ObjectType = swift_getObjectType();
    v47 = *(v3 + 64);
    v10 = v47(ObjectType, v3);
    v11 = AVPlayerStatus.description.getter(v10);
    MEMORY[0x1C69534E0](v11);

    MEMORY[0x1C69534E0](0x6579616C70202D20, 0xEF3A657461722E72);
    v12 = OUTLINED_FUNCTION_59_5();
    v46 = v13;
    v13(v12);
    sub_1C6016D30();
    MEMORY[0x1C69534E0](0x6572727563202D20, 0xEF3A6D657449746ELL);
    v49 = ObjectType;
    v14 = OUTLINED_FUNCTION_59_5();
    v45 = v15;
    v16 = v15(v14);
    v17 = v16;
    v48 = v2;
    if (v16)
    {
      v16 = sub_1C5C64D74(0, &qword_1ED7DCEA8, 0x1E69880B0);
    }

    else
    {
      v56[2] = 0;
      v56[1] = 0;
    }

    v56[0] = v17;
    v56[3] = v16;
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_10_0(v56);
    v18 = __dst[0];
    v19 = __dst[1];
    v20 = MEMORY[0x1E69E7CA0];
    sub_1C5DC9938(v56, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
    MEMORY[0x1C69534E0](v18, v19);

    OUTLINED_FUNCTION_1_54();
    OUTLINED_FUNCTION_32_6();
    v44 = *(v3 + 184);
    v21 = v44(v49, v3);
    __dst[3] = MEMORY[0x1E69E6158];
    __dst[0] = v21;
    __dst[1] = v22;
    OUTLINED_FUNCTION_10_0(__dst);
    sub_1C5DC9938(__dst, &qword_1ED7E0200, v20 + 8);
    __src[0] = v57;
    __src[1] = v58;
    sub_1C5DC95A4(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v59);
    if (*(v48 + 204) & 1) == 0 && swift_unknownObjectWeakLoadStrong() && (v23 = sub_1C5DE4720(), swift_unknownObjectRelease(), (v23) && (v24 = OUTLINED_FUNCTION_64(), (v47)(v24) == 1) && (v25 = OUTLINED_FUNCTION_64(), v46(v25) == 0.0))
    {
      sub_1C5CDAF64(v48 + 88, v54);
      __swift_project_boxed_opaque_existential_0(v54, v54[3]);
      v60[0] = 0;
      v60[1] = 0xE000000000000000;
      sub_1C6017540();
      v52 = v60[0];
      v53 = v60[1];
      MEMORY[0x1C69534E0](0xD00000000000002ELL, 0x80000001C60526A0);
      sub_1C6016D30();
      v26 = OUTLINED_FUNCTION_4_41();
      MEMORY[0x1C69534E0](v26);
      v27 = OUTLINED_FUNCTION_64();
      v28 = v45(v27);
      v29 = v28;
      if (v28)
      {
        v28 = sub_1C5C64D74(0, &qword_1ED7DCEA8, 0x1E69880B0);
      }

      else
      {
        v51[1] = 0;
        v51[2] = 0;
      }

      v51[0] = v29;
      v51[3] = v28;
      v60[0] = 0;
      v60[1] = 0xE000000000000000;
      OUTLINED_FUNCTION_10_0(v51);
      v30 = v60[0];
      v31 = v60[1];
      v32 = MEMORY[0x1E69E7CA0];
      sub_1C5DC9938(v51, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1C69534E0](v30, v31);

      OUTLINED_FUNCTION_1_54();
      OUTLINED_FUNCTION_32_6();
      v33 = OUTLINED_FUNCTION_59_5();
      v34 = (v44)(v33);
      v60[3] = MEMORY[0x1E69E6158];
      v60[0] = v34;
      v60[1] = v35;
      OUTLINED_FUNCTION_10_0(v60);
      sub_1C5DC9938(v60, &qword_1ED7E0200, v32 + 8);
      v50[0] = v52;
      v50[1] = v53;
      sub_1C5DC95A4(v50);
      memcpy(v60, v50, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v54);
      (*(v3 + 376))(0, 0, v49, v3, *(v48 + 200));
      swift_unknownObjectRelease();
      *(v48 + 204) = 1;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_237();
  }

  else
  {
    v36 = MEMORY[0x1E69E6158];
    sub_1C6016880();
    objc_opt_self();
    OUTLINED_FUNCTION_53_6();
    v37 = OUTLINED_FUNCTION_15_21();
    v38 = sub_1C6016900();
    v39 = MEMORY[0x1E69E7CA0];
    OUTLINED_FUNCTION_2_41();
    sub_1C5C67620(0, v40, v39 + 8, v41);
    *(swift_allocObject() + 16) = xmmword_1C60311E0;
    sub_1C5CFB374(0, &qword_1EC1AB550, v36);
    OUTLINED_FUNCTION_5_35(v42);

    sub_1C5CDAF64(v0 + 88, __src);
    __swift_project_boxed_opaque_existential_0(__src, __src[3]);
    OUTLINED_FUNCTION_35_12();
    sub_1C6017540();
    v50[0] = __dst[0];
    v50[1] = __dst[1];
    MEMORY[0x1C69534E0](0xD00000000000004ALL, 0x80000001C60525E0);
    sub_1C5DBDE9C();
    sub_1C6016870();

    v43 = OUTLINED_FUNCTION_38_0();
    MEMORY[0x1C69534E0](v43);

    v60[0] = v50[0];
    v60[1] = v50[1];
    sub_1C5DC95A4(v60);
    memcpy(__dst, v60, 0xD9uLL);

    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(__src);
    __break(1u);
  }
}

void sub_1C5DBF410()
{
  OUTLINED_FUNCTION_131();
  v7 = v0;
  v8 = *(v0 + 72);
  if (v8)
  {
    if ((*(v5 + 32) & 1) == 0)
    {
      v9 = v6;
      v64 = v4;
      v57 = v2;
      v58 = v3;
      v10 = *(v0 + 80);
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 8);
      swift_unknownObjectRetain();
      v13 = OUTLINED_FUNCTION_24_17();
      v65 = v12;
      v14 = v12(v13);
      if (v14)
      {
        v15 = v14;
        if ([v14 status] == 1 && (objc_msgSend(v15, sel_duration), (sub_1C6016810() & 1) == 0) && sub_1C5D63D08() && (v16 = sub_1C5D63D40(), objc_msgSend(v15, sel_currentTime), sub_1C6017220() < v16))
        {
          sub_1C5CDAF64(v0 + 88, aBlock);
          __swift_project_boxed_opaque_existential_0(aBlock, aBlock[3]);
          __dst[0] = 0;
          __dst[1] = 0xE000000000000000;
          sub_1C6017540();
          __src[0] = __dst[0];
          __src[1] = __dst[1];
          MEMORY[0x1C69534E0](0xD00000000000005ALL, 0x80000001C60522F0);
          __dst[3] = sub_1C5C64D74(0, &qword_1ED7DCEA8, 0x1E69880B0);
          __dst[0] = v15;
          v76[0] = 0;
          v76[1] = 0xE000000000000000;
          v59 = v15;
          OUTLINED_FUNCTION_10_0(__dst);
          v17 = MEMORY[0x1E69E7CA0];
          sub_1C5DC9938(__dst, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1C69534E0](0, 0xE000000000000000);

          OUTLINED_FUNCTION_1_54();
          OUTLINED_FUNCTION_32_6();
          v18 = OUTLINED_FUNCTION_24_17();
          v20 = v19(v18);
          __dst[3] = MEMORY[0x1E69E6158];
          __dst[0] = v20;
          __dst[1] = v21;
          OUTLINED_FUNCTION_10_0(__dst);
          sub_1C5DC9938(__dst, &qword_1ED7E0200, v17 + 8);
          sub_1C5DC95A4(__src);
          memcpy(__dst, __src, 0xD9uLL);
          sub_1C5DBBF0C();

          __swift_destroy_boxed_opaque_existential_0(aBlock);
          v22.n128_f64[0] = v16;
          v61 = sub_1C5D67CC0(v22);
          v63 = v23;
          v25 = v24;
          v26 = HIDWORD(v24);
          v27 = swift_allocObject();
          v27[2] = v0;
          v27[3] = v59;
          v27[4] = v8;
          v27[5] = v10;
          aBlock[4] = sub_1C5DC992C;
          aBlock[5] = v27;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1C5DBCF1C;
          aBlock[3] = &block_descriptor_30;
          v28 = _Block_copy(aBlock);
          swift_unknownObjectRetain();
          v29 = v59;

          aBlock[0] = v61;
          aBlock[1] = __PAIR64__(v26, v25);
          aBlock[2] = v63;
          [v29 seekToTime:aBlock completionHandler:v28];

          _Block_release(v28);
        }

        else
        {
        }
      }

      sub_1C5CDAF64(v7 + 88, v75);
      __swift_project_boxed_opaque_existential_0(v75, v75[3]);
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      sub_1C6017540();
      v73 = __src[0];
      v74 = __src[1];
      MEMORY[0x1C69534E0](0xD000000000000034, 0x80000001C6052120);
      v30 = OUTLINED_FUNCTION_24_17();
      v62 = v31;
      (v31)(v30);
      sub_1C6016D30();
      MEMORY[0x1C69534E0](540945696, 0xE400000000000000);
      sub_1C6016D30();
      MEMORY[0x1C69534E0](0x6572727563202D20, 0xEF3A6D657449746ELL);
      v32 = OUTLINED_FUNCTION_24_17();
      v33 = v65(v32);
      v34 = v33;
      if (v33)
      {
        v33 = sub_1C5C64D74(0, &qword_1ED7DCEA8, 0x1E69880B0);
      }

      else
      {
        v72[2] = 0;
        v72[1] = 0;
      }

      v72[0] = v34;
      v72[3] = v33;
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      OUTLINED_FUNCTION_10_0(v72);
      v35 = MEMORY[0x1E69E7CA0];
      sub_1C5DC9938(v72, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
      v36 = OUTLINED_FUNCTION_88_0();
      MEMORY[0x1C69534E0](v36);

      OUTLINED_FUNCTION_1_54();
      OUTLINED_FUNCTION_32_6();
      v60 = *(v10 + 184);
      v37 = v60(ObjectType, v10);
      __src[3] = MEMORY[0x1E69E6158];
      __src[0] = v37;
      __src[1] = v38;
      OUTLINED_FUNCTION_10_0(__src);
      sub_1C5DC9938(__src, &qword_1ED7E0200, v35 + 8);
      v71[0] = v73;
      v71[1] = v74;
      sub_1C5DC95A4(v71);
      memcpy(__src, v71, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v75);
      *(v7 + 32) = v9;
      sub_1C5DC6CC0();
      aBlock[0] = 0;
      aBlock[1] = 0xE000000000000000;
      sub_1C6017540();

      OUTLINED_FUNCTION_89();
      if (v64)
      {
        aBlock[0] = 0xD000000000000013;
        OUTLINED_FUNCTION_79_3(v39);
        OUTLINED_FUNCTION_87();
        sub_1C5DC0100(aBlock[0], aBlock[1], 1.5);
      }

      else
      {
        aBlock[0] = 0xD000000000000011;
        OUTLINED_FUNCTION_79_3(v39);
        OUTLINED_FUNCTION_87();
        sub_1C5DC0224(v57, v58, aBlock[0], aBlock[1], v9);

        __swift_project_boxed_opaque_existential_0((v7 + 88), *(v7 + 112));
        v76[0] = 1;
        sub_1C5DC9918(v76);
        memcpy(aBlock, v76, 0xD9uLL);
        sub_1C5DBBF0C();
      }

      sub_1C5CDAF64(v7 + 88, v70);
      __swift_project_boxed_opaque_existential_0(v70, v70[3]);
      v76[0] = 0;
      v76[1] = 0xE000000000000000;
      sub_1C6017540();
      v68 = v76[0];
      v69 = v76[1];
      MEMORY[0x1C69534E0](0xD000000000000042, 0x80000001C6052280);
      v62(ObjectType, v10);
      sub_1C6016D30();
      v40 = OUTLINED_FUNCTION_4_41();
      MEMORY[0x1C69534E0](v40);
      v41 = (v65)(ObjectType, v10);
      v42 = v41;
      if (v41)
      {
        v41 = sub_1C5C64D74(0, &qword_1ED7DCEA8, 0x1E69880B0);
      }

      else
      {
        v67[1] = 0;
        v67[2] = 0;
      }

      v67[0] = v42;
      v67[3] = v41;
      v76[0] = 0;
      v76[1] = 0xE000000000000000;
      OUTLINED_FUNCTION_10_0(v67);
      v43 = MEMORY[0x1E69E7CA0];
      sub_1C5DC9938(v67, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
      v44 = OUTLINED_FUNCTION_44_9();
      MEMORY[0x1C69534E0](v44);

      OUTLINED_FUNCTION_1_54();
      OUTLINED_FUNCTION_32_6();
      v45 = v60(ObjectType, v10);
      v76[3] = MEMORY[0x1E69E6158];
      v76[0] = v45;
      v76[1] = v46;
      OUTLINED_FUNCTION_10_0(v76);
      sub_1C5DC9938(v76, &qword_1ED7E0200, v43 + 8);
      v66[0] = v68;
      v66[1] = v69;
      sub_1C5DC95A4(v66);
      memcpy(v76, v66, 0xD9uLL);
      sub_1C5DBBF0C();

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v70);
    }

    OUTLINED_FUNCTION_130();
  }

  else
  {
    v47 = MEMORY[0x1E69E6158];
    sub_1C6016880();
    objc_opt_self();
    OUTLINED_FUNCTION_53_6();
    v48 = OUTLINED_FUNCTION_15_21();
    v49 = sub_1C6016900();
    OUTLINED_FUNCTION_2_41();
    sub_1C5C67620(0, v51, v50 + 8, v52);
    *(swift_allocObject() + 16) = xmmword_1C60311E0;
    sub_1C5CFB374(0, &qword_1EC1AB550, v47);
    OUTLINED_FUNCTION_5_35(v53);

    sub_1C5CDAF64(v0 + 88, aBlock);
    __swift_project_boxed_opaque_existential_0(aBlock, aBlock[3]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    v76[0] = __dst[0];
    v76[1] = __dst[1];
    MEMORY[0x1C69534E0](0xD000000000000047, 0x80000001C6052210);
    sub_1C5DBDE9C();
    v54 = sub_1C6016870();
    v56 = v55;

    MEMORY[0x1C69534E0](v54, v56);

    __src[0] = v76[0];
    __src[1] = v76[1];
    sub_1C5DC95A4(__src);
    memcpy(__dst, __src, 0xD9uLL);

    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(aBlock);
    __break(1u);
  }
}

uint64_t sub_1C5DBFEBC(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_1C5CDAF64(a2 + 88, v19);
  __swift_project_boxed_opaque_existential_0(v19, v19[3]);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C6017540();
  v17 = __dst[0];
  v18 = __dst[1];
  MEMORY[0x1C69534E0](0xD000000000000042, 0x80000001C6052350);
  if (a1)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (a1)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1C69534E0](v8, v9);

  MEMORY[0x1C69534E0](0x6572727563202D20, 0xEF3A6D657449746ELL);
  __dst[3] = sub_1C5C64D74(0, &qword_1ED7DCEA8, 0x1E69880B0);
  __dst[0] = a3;
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  v10 = a3;
  DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
  v11 = MEMORY[0x1E69E7CA0];
  sub_1C5DC9938(__dst, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
  MEMORY[0x1C69534E0](0, 0xE000000000000000);

  MEMORY[0x1C69534E0](0x6579616C70202D20, 0xEA00000000003A72);
  ObjectType = swift_getObjectType();
  v13 = (*(a5 + 184))(ObjectType, a5);
  __dst[3] = MEMORY[0x1E69E6158];
  __dst[0] = v13;
  __dst[1] = v14;
  DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
  sub_1C5DC9938(__dst, &qword_1ED7E0200, v11 + 8);
  __src[0] = v17;
  __src[1] = v18;
  sub_1C5DC95A4(__src);
  memcpy(__dst, __src, 0xD9uLL);
  sub_1C5DBBF0C();

  return __swift_destroy_boxed_opaque_existential_0(v19);
}

void sub_1C5DC0100(uint64_t result, uint64_t a2, double a3)
{
  v4 = *(v3 + 72);
  if (v4)
  {
    v6 = *(v3 + 80);
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRetain();
    if (Strong)
    {
      sub_1C5DE45E8(v4);
      swift_unknownObjectRelease();
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 272))(ObjectType, v6, a3);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1C5DE4690(v4, v6, 1, 0, 0, 4);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C5DC0224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v49 = a2;
  v8 = sub_1C60162D0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5D2D8C8(0);
  v12 = v11;
  v13 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v5 + 72);
  if (v17)
  {
    v45 = v9;
    v46 = v8;
    v18 = *(v5 + 80);
    v47 = v5;
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRetain();
    v20 = swift_unknownObjectRetain();
    if (Strong)
    {
      sub_1C5DE45E8(v17);
      v20 = swift_unknownObjectRelease();
    }

    if (a1)
    {
      ObjectType = swift_getObjectType();
      v22 = *(v18 + 264);
      v23 = swift_unknownObjectRetain();
      v22(v23, v49, ObjectType, v18, a5);
      swift_unknownObjectRelease();
    }

    else
    {
      MEMORY[0x1C6952D20](v20);
      v24 = v48;
      sub_1C6016250();
      (*(v13 + 8))(v16, v12);
      swift_unknownObjectRetain();
      v25 = sub_1C60162B0();
      v26 = sub_1C6016F30();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v25, v26))
      {
        v44 = v26;
        v27 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v50 = v42;
        v43 = v27;
        *v27 = 136446210;
        v28 = swift_getObjectType();
        v29 = *(v18 + 8);
        v30 = v29(v28, v18);
        if (v30)
        {
          v31 = v30;
          v32 = sub_1C5DBCDF8();
          v34 = v33;
        }

        else
        {
          v34 = 0xE700000000000000;
          v32 = 0x6E776F6E6B6E75;
        }

        v35 = sub_1C5C6AB10(v32, v34, &v50);

        v36 = v43;
        *(v43 + 1) = v35;
        _os_log_impl(&dword_1C5C61000, v25, v44, "[EST:%{public}s)] setting expected start time due to setRate with no timeContinuity", v36, 0xCu);
        v37 = v42;
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x1C6956920](v37, -1, -1);
        MEMORY[0x1C6956920](v36, -1, -1);

        (*(v45 + 8))(v48, v46);
      }

      else
      {

        (*(v45 + 8))(v24, v46);
        v29 = *(v18 + 8);
      }

      v38 = swift_getObjectType();
      v39 = v29(v38, v18);
      if (v39)
      {
        v40 = v39;
        sub_1C5D66228();
      }

      (*(v18 + 24))(v38, v18, a5);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1C5DE4690(v17, v18, LODWORD(a5), a1, v49, 3);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C5DC06A4()
{
  OUTLINED_FUNCTION_131();
  v5 = v0;
  if (v0[9])
  {
    v6 = v3;
    if ((*(v3 + 32) & 1) == 0)
    {
      v7 = v4;
      v34 = v1;
      v35 = v2;
      v8 = v0[10];
      sub_1C5CDAF64((v0 + 11), v45);
      __swift_project_boxed_opaque_existential_0(v45, v45[3]);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      swift_unknownObjectRetain();
      sub_1C6017540();
      v43 = __dst[0];
      v44 = __dst[1];
      MEMORY[0x1C69534E0](0xD000000000000034, 0x80000001C6052120);
      ObjectType = swift_getObjectType();
      v33 = *(v8 + 16);
      v33(ObjectType, v8);
      sub_1C6016D30();
      MEMORY[0x1C69534E0](0xD000000000000014, 0x80000001C6052160);
      v10 = OUTLINED_FUNCTION_10_28();
      v32 = v11;
      v12 = v11(v10);
      v13 = v12;
      if (v12)
      {
        v12 = sub_1C5C64D74(0, &qword_1ED7DCEA8, 0x1E69880B0);
      }

      else
      {
        v42[2] = 0;
        v42[1] = 0;
      }

      v42[0] = v13;
      v42[3] = v12;
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      OUTLINED_FUNCTION_10_0(v42);
      v15 = __dst[0];
      v16 = __dst[1];
      v17 = MEMORY[0x1E69E7CA0];
      sub_1C5DC9938(v42, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1C69534E0](v15, v16);

      OUTLINED_FUNCTION_32_6();
      v31 = *(v8 + 184);
      v18 = v31(ObjectType, v8);
      __dst[3] = MEMORY[0x1E69E6158];
      __dst[0] = v18;
      __dst[1] = v19;
      OUTLINED_FUNCTION_10_0(__dst);
      sub_1C5DC9938(__dst, &qword_1ED7E0200, v17 + 8);
      v41[0] = v43;
      v41[1] = v44;
      sub_1C5DC95A4(v41);
      memcpy(__dst, v41, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v45);
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      sub_1C6017540();

      OUTLINED_FUNCTION_89();
      __src[0] = 0xD000000000000013;
      __src[1] = v20;
      MEMORY[0x1C69534E0](*v6, v6[1]);
      OUTLINED_FUNCTION_87();
      sub_1C5DC0BB4(v34, v35, __src[0], __src[1], v7);

      sub_1C5CDAF64((v5 + 11), v40);
      __swift_project_boxed_opaque_existential_0(v40, v40[3]);
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      sub_1C6017540();
      v38 = __src[0];
      v39 = __src[1];
      MEMORY[0x1C69534E0](0xD000000000000043, 0x80000001C60521A0);
      v21 = OUTLINED_FUNCTION_10_28();
      (v33)(v21);
      sub_1C6016D30();
      v22 = OUTLINED_FUNCTION_4_41();
      MEMORY[0x1C69534E0](v22);
      v23 = OUTLINED_FUNCTION_10_28();
      v24 = v32(v23);
      v25 = v24;
      if (v24)
      {
        v24 = sub_1C5C64D74(0, &qword_1ED7DCEA8, 0x1E69880B0);
      }

      else
      {
        v37[1] = 0;
        v37[2] = 0;
      }

      v37[0] = v25;
      v37[3] = v24;
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      OUTLINED_FUNCTION_10_0(v37);
      v26 = MEMORY[0x1E69E7CA0];
      sub_1C5DC9938(v37, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
      v27 = OUTLINED_FUNCTION_44_9();
      MEMORY[0x1C69534E0](v27);

      OUTLINED_FUNCTION_1_54();
      OUTLINED_FUNCTION_32_6();
      v28 = OUTLINED_FUNCTION_10_28();
      v29 = (v31)(v28);
      __src[3] = MEMORY[0x1E69E6158];
      __src[0] = v29;
      __src[1] = v30;
      OUTLINED_FUNCTION_10_0(__src);
      sub_1C5DC9938(__src, &qword_1ED7E0200, v26 + 8);
      v36[0] = v38;
      v36[1] = v39;
      sub_1C5DC95A4(v36);
      memcpy(__src, v36, 0xD9uLL);
      sub_1C5DBBF0C();

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_66_8(v0 + 11, v0[14]);
    OUTLINED_FUNCTION_89();
    __src[0] = 0xD000000000000046;
    __src[1] = v14;
    sub_1C5DC95A4(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();
  }

  OUTLINED_FUNCTION_130();
}

uint64_t sub_1C5DC0BB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = *(v5 + 72);
  if (v6)
  {
    v8 = result;
    v10 = *(v5 + 80);
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRetain();
    if (Strong)
    {
      sub_1C5DE45E8(v6);
      swift_unknownObjectRelease();
    }

    ObjectType = swift_getObjectType();
    (*(v10 + 288))(v8, a2, ObjectType, v10, a5);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1C5DE4690(v6, v10, 2, 0, 0, 4);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DC0CF8(uint64_t a1, float a2)
{
  *(v2 + 32) = a2;
  sub_1C5DC6CC0();
  sub_1C5CDAF64(v2 + 88, v4);
  OUTLINED_FUNCTION_66_8(v4, v4[3]);
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_1C6017540();
  OUTLINED_FUNCTION_5_24();
  MEMORY[0x1C69534E0](0xD000000000000029);
  sub_1C6016D30();
  sub_1C5D5CCE4(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C5DBBF0C();

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

void sub_1C5DC0DDC(uint64_t a1, id a2, __int128 *a3)
{
  if (!*(v3 + 72))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a2;
  v7 = *(v3 + 80);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 8);
  swift_unknownObjectRetain();
  v10 = OUTLINED_FUNCTION_15_1();
  v32 = v9(v10);
  if (!v32)
  {
LABEL_16:
    __break(1u);
    return;
  }

  (*(v7 + 88))(2 * (a1 != 1), ObjectType, v7);
  *(v3 + 152) = 0;
  *(v3 + 160) = 1;
  if (*(a3 + 32) == 1)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (v5)
    {
      [v32 isVideoContent];
      v11 = OUTLINED_FUNCTION_15_1();
      v12(v11);
      sub_1C5C64D74(0, &qword_1ED7DCE50, 0x1E69E9610);
      v13 = sub_1C6016FD0();
      swift_allocObject();
      swift_weakInit();
      v14 = swift_allocObject();
      OUTLINED_FUNCTION_27_16(v14, v15, v16, v17, v18);
      v19 = OUTLINED_FUNCTION_44_9();
      sub_1C5C74C28(v19, v20);
      sub_1C5DC98C4();
    }

    else
    {
      if (qword_1ED7DD2B0 != -1)
      {
        OUTLINED_FUNCTION_0_8(&qword_1ED7DD2B0);
      }

      v21 = sub_1C60162D0();
      __swift_project_value_buffer(v21, qword_1ED7E1690);
      v22 = sub_1C60162B0();
      v23 = sub_1C6016F30();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1C5C61000, v22, v23, "[InternalPlayerController:JumpScan] Beginning JumpScan", v24, 2u);
        MEMORY[0x1C6956920](v24, -1, -1);
      }

      [v32 isVideoContent];
      sub_1C5C64D74(0, &qword_1ED7DCE50, 0x1E69E9610);
      v13 = sub_1C6016FD0();
      swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      OUTLINED_FUNCTION_27_16(v25, v26, v27, v28, v29);
      v30 = OUTLINED_FUNCTION_44_9();
      sub_1C5C74C28(v30, v31);
      sub_1C5DC9814();
    }

    sub_1C6016600();

    swift_beginAccess();
    sub_1C6016480();
    swift_endAccess();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C5DC11A4(float *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  if (!*(Strong + 72))
  {
    goto LABEL_7;
  }

  v6 = *(Strong + 80);
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 168))(ObjectType, v6);
  swift_unknownObjectRelease();
  if (v8)
  {
    goto LABEL_8;
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (!v9)
  {
    goto LABEL_8;
  }

  if (*(v9 + 72))
  {
    v10 = *(v9 + 80);
    swift_unknownObjectRetain();

    v11 = swift_getObjectType();
    (*(v10 + 192))(v11, v10);
    swift_unknownObjectRelease();
  }

  else
  {
LABEL_7:
  }

LABEL_8:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C6017540();

    MEMORY[0x1C69534E0](*a3, a3[1]);
    MEMORY[0x1C69534E0](93, 0xE100000000000000);
    sub_1C5DC0224(0, 0, 0xD00000000000001ALL, 0x80000001C6052080, v4);
  }

  return result;
}

uint64_t sub_1C5DC1374(double *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = sub_1C5DC1508();

    if (qword_1ED7DD2B0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C60162D0();
    __swift_project_value_buffer(v7, qword_1ED7E1690);
    v8 = sub_1C60162B0();
    v9 = sub_1C6016F30();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134218496;
      *(v10 + 4) = v4;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v6;
      *(v10 + 22) = 2048;
      *(v10 + 24) = v4 + v6;
      _os_log_impl(&dword_1C5C61000, v8, v9, "[InternalPlayerController:JumpScan] jumpInterval=%f currentTime=%f newSeekTime=%f", v10, 0x20u);
      MEMORY[0x1C6956920](v10, -1, -1);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1C5DC1730(a3, v4 + v6);
    }
  }

  return result;
}

double sub_1C5DC1508()
{
  v1 = v0;
  v2 = sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D3968], v2);
  sub_1C5DC97C4(&qword_1ED7DCF48, MEMORY[0x1E69D3970]);
  v8 = sub_1C6015290();
  (*(v4 + 8))(v7, v2);
  if ((v8 & 1) != 0 && *(v1 + 72) && (v9 = *(v1 + 80), ObjectType = swift_getObjectType(), v11 = *(v9 + 8), swift_unknownObjectRetain(), v12 = v11(ObjectType, v9), swift_unknownObjectRelease(), v12))
  {
    [v12 currentTime];
    sub_1C5D643DC();
    v13 = sub_1C6017220();
  }

  else if (*(v1 + 72))
  {
    v14 = *(v1 + 80);
    swift_getObjectType();
    v15 = *(v14 + 248);
    swift_unknownObjectRetain();
    v16 = OUTLINED_FUNCTION_147();
    v15(v16);
    swift_unknownObjectRelease();
    return sub_1C6017220();
  }

  else
  {
    return 0.0;
  }

  return v13;
}

uint64_t sub_1C5DC1730(uint64_t result, double a2)
{
  if (*(v2 + 72))
  {
    if ((*(result + 32) & 1) == 0)
    {
      return sub_1C5DC1E2C(*(result + 33), *result, *(result + 8), a2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C5DC1758()
{
  OUTLINED_FUNCTION_131();
  if (!*(v0 + 72))
  {
    __break(1u);
    return;
  }

  if (*(v2 + 32) == 1)
  {
    OUTLINED_FUNCTION_130();

    sub_1C5DC78FC();
    return;
  }

  v60 = v1;
  v61 = v2;
  swift_beginAccess();
  v4 = *(v0 + 136);
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1C6017400();
    sub_1C60164A0();
    sub_1C5DC97C4(&qword_1EC1AB898, MEMORY[0x1E695BF10]);
    sub_1C6016D90();
    v6 = v66;
    v5 = v67;
    v8 = v68;
    v7 = v69;
    v9 = v70;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v6 = v4;
  }

  v62 = v0;
  if (v6 < 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v13 = v7;
    v14 = v9;
    v15 = v7;
    if (!v9)
    {
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= ((v8 + 64) >> 6))
        {
          goto LABEL_23;
        }

        v14 = *(v5 + 8 * v15);
        ++v13;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_38:
      OUTLINED_FUNCTION_0_8(&qword_1ED7DD2B0);
      goto LABEL_26;
    }

LABEL_17:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
      break;
    }

    while (1)
    {
      sub_1C6016490();

      v7 = v15;
      v9 = v16;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      v18 = sub_1C6017470();
      if (v18)
      {
        v64 = v18;
        sub_1C60164A0();
        swift_dynamicCast();
        v15 = v7;
        v16 = v9;
        if (v71)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

LABEL_23:
  sub_1C5C8C7F4(v6);

  if (v60)
  {
    sub_1C6017540();

    OUTLINED_FUNCTION_89();
    *&v71 = 0xD000000000000018;
    *(&v71 + 1) = v19;
    MEMORY[0x1C69534E0](*v61, *(v61 + 1));
    OUTLINED_FUNCTION_87();
    v20 = OUTLINED_FUNCTION_38_8();
    sub_1C5DC0224(v20, v21, v22, v23, v24);

    goto LABEL_36;
  }

  v9 = v62;
  if (qword_1ED7DD2B0 != -1)
  {
    goto LABEL_38;
  }

LABEL_26:
  v25 = sub_1C60162D0();
  __swift_project_value_buffer(v25, qword_1ED7E1690);
  v26 = sub_1C60162B0();
  v27 = sub_1C6016F30();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1C5C61000, v26, v27, "[InternalPlayerController:JumpScan] Posting SeekToTimeCompleted", v28, 2u);
    MEMORY[0x1C6956920](v28, -1, -1);
  }

  v29 = [objc_opt_self() defaultCenter];
  if (qword_1ED7DCE20 != -1)
  {
    swift_once();
  }

  v30 = qword_1ED7E1680;
  if (*(v9 + 72))
  {
    v31 = qword_1ED7E1680;
    v32 = *(v9 + 80);
    swift_getObjectType();
    v33 = *(v32 + 8);
    swift_unknownObjectRetain();
    v34 = OUTLINED_FUNCTION_15_1();
    v35 = v33(v34);
    swift_unknownObjectRelease();
    if (v35)
    {
      *&v71 = v35;
      sub_1C5C64D74(0, &qword_1ED7DCEA8, 0x1E69880B0);
      v35 = sub_1C6017850();
    }

    v36 = v61;
    v30 = v31;
  }

  else
  {
    v35 = 0;
    v36 = v61;
  }

  sub_1C5DC95B8(0, &qword_1EC1A9220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60379A0;
  v38 = MEMORY[0x1E69E6158];
  sub_1C60174C0();
  *(inited + 96) = MEMORY[0x1E69E6370];
  *(inited + 72) = 1;
  *&v71 = 0x696669746E656469;
  *(&v71 + 1) = 0xEA00000000007265;
  sub_1C60174C0();
  v71 = *v36;
  v39 = v71;
  *(inited + 168) = v38;
  *(inited + 144) = v39;
  v64 = 0x6C616E696769726FLL;
  v65 = 0xEF656D6954646E45;
  v40 = sub_1C5CC57E0(&v71, &v63);
  OUTLINED_FUNCTION_52_6(v40, v41, v42, v43, v44);
  v45 = sub_1C5DC1508();
  v46 = MEMORY[0x1E69E63B0];
  *(inited + 240) = MEMORY[0x1E69E63B0];
  *(inited + 216) = v45;
  v64 = 0x656D6954646E65;
  v65 = 0xE700000000000000;
  OUTLINED_FUNCTION_52_6(v47, v48, v49, v50, v51);
  v52 = sub_1C5DC1508();
  *(inited + 312) = v46;
  *(inited + 288) = v52;
  v64 = 0x6D69547472617473;
  v65 = 0xE900000000000065;
  OUTLINED_FUNCTION_52_6(v53, v54, v55, v56, v57);
  v58 = sub_1C5DC1508();
  *(inited + 384) = v46;
  *(inited + 360) = v58;
  OUTLINED_FUNCTION_63_4();
  v59 = sub_1C6016880();
  sub_1C5DC96C0(v30, v35, v59, v29);

  swift_unknownObjectRelease();
LABEL_36:
  sub_1C5DC78FC();
  OUTLINED_FUNCTION_130();
}

uint64_t sub_1C5DC1D78(uint64_t result)
{
  if (*(v1 + 72))
  {
    if ((*(result + 32) & 1) == 0)
    {
      OUTLINED_FUNCTION_151();
      sub_1C6017540();

      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_78_3();
      OUTLINED_FUNCTION_87();
      v2 = OUTLINED_FUNCTION_38_8();
      sub_1C5DC0224(v2, v3, v4, v5, v6);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5DC1E2C(char a1, void *a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = sub_1C60162D0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v147 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5D2D8C8(0);
  v141 = *(v13 - 8);
  v142 = v13;
  result = MEMORY[0x1EEE9AC00](v13);
  v140 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + 72);
  if (!v16 || (objc_opt_self(), result = swift_dynamicCastObjCClass(), (*&v161 = result) == 0))
  {
    __break(1u);
    return result;
  }

  v139 = v10;
  v155 = a3;
  swift_unknownObjectRetain();
  v17 = [v161 currentItem];
  v156 = a2;
  v157 = v16;
  v138 = v11;
  if (v17)
  {
    v19 = v17;
    [v17 currentTime];

    v20 = sub_1C6017220();
  }

  else
  {
    v20 = 0.0;
  }

  v18.n128_f64[0] = a4;
  v160 = sub_1C5D67CC0(v18);
  v22 = v21;
  v24 = v23;
  v152 = HIDWORD(v21);
  v25 = swift_allocObject();
  v26 = sub_1C5C64D74(0, &qword_1ED7DCCD8, 0x1E6988098);
  v27 = v161;
  v25[2] = v161;
  v158 = v25;
  v159 = v25 + 2;
  v25[5] = v26;
  v25[6] = &off_1F4544D50;
  swift_unknownObjectRetain();
  v28 = [v27 currentItem];
  v154 = v22;
  if (!v28)
  {
    v39 = *(v5 + 168);
    if (v39)
    {
      swift_getObjectType();
      if ([swift_unknownObjectRetain() isAssetLoaded])
      {
        v40 = [v39 avPlayerItem];
        if (v40)
        {
          v41 = v40;
          v33 = v5;
          *(&v167[1] + 1) = sub_1C5C64D74(0, &qword_1ED7DCEA8, 0x1E69880B0);
          *&v167[2] = &off_1F4544D38;
          v29 = v41;
          swift_unknownObjectRelease();
          *&v167[0] = v29;
          v42 = v159;
          __swift_destroy_boxed_opaque_existential_0(v159);
          sub_1C5C6BEFC(v167, v42);
          v145 = 1;
          v35 = v160;
          v22 = v154;
LABEL_16:
          v34 = v22;
          v38 = v152;
          v37 = v24;
          goto LABEL_17;
        }
      }

      [v39 setPlaybackStartTimeOverride_];
      sub_1C5CDAF64(v5 + 88, v166);
      __swift_project_boxed_opaque_existential_0(v166, v166[3]);
      *&v167[0] = 0;
      *(&v167[0] + 1) = 0xE000000000000000;
      sub_1C6017540();
      MEMORY[0x1C69534E0](0xD00000000000006ELL, 0x80000001C6051DF0);
      v107 = sub_1C6017220();
      sub_1C5C72C04(0, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v108 = swift_allocObject();
      v161 = xmmword_1C60311E0;
      v109 = MEMORY[0x1E69E63B0];
      *(v108 + 16) = xmmword_1C60311E0;
      v110 = MEMORY[0x1E69E6438];
      *(v108 + 56) = v109;
      *(v108 + 64) = v110;
      *(v108 + 32) = v107;
      v111 = sub_1C6016960();
      v148 = v24;
      MEMORY[0x1C69534E0](v111);

      MEMORY[0x1C69534E0](0x6575657571202D20, 0xEE003A6D65746920);
      *&v165[0] = v39;
      sub_1C6017830();
      MEMORY[0x1C69534E0](0x746E656469202D20, 0xEF203A7265696669);
      v112 = v155;
      MEMORY[0x1C69534E0](v156, v155);
      v164[0] = v167[0];
      sub_1C5DC95A4(v164);
      memcpy(v167, v164, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v166);
      *(v5 + 152) = a4;
      *(v5 + 160) = 0;
      v166[0] = 0;
      v166[1] = 0xE000000000000000;
      sub_1C6017540();
      MEMORY[0x1C69534E0](0xD000000000000038, 0x80000001C6051E60);
      v113 = swift_allocObject();
      *(v113 + 16) = v161;
      *(v113 + 56) = v109;
      *(v113 + 64) = MEMORY[0x1E69E6438];
      *(v113 + 32) = a4;
      v114 = sub_1C6016960();
      MEMORY[0x1C69534E0](v114);

      MEMORY[0x1C69534E0](0xD00000000000002ELL, 0x80000001C6051EA0);
      v165[0] = *v166;
      sub_1C5DC95A4(v165);
      memcpy(v166, v165, 0xD9uLL);
      sub_1C5DC3838();

      v115 = [objc_opt_self() defaultCenter];
      if (qword_1ED7DCE20 != -1)
      {
        swift_once();
      }

      v116 = qword_1ED7E1680;
      sub_1C5DC95B8(0, &qword_1EC1A9220);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_1C60379A0;
      v162 = 0x64656873696E6966;
      v163 = 0xE800000000000000;
      v118 = MEMORY[0x1E69E6158];
      sub_1C60174C0();
      *(v117 + 96) = MEMORY[0x1E69E6370];
      *(v117 + 72) = 1;
      v162 = 0x696669746E656469;
      v163 = 0xEA00000000007265;
      sub_1C60174C0();
      *(v117 + 168) = v118;
      *(v117 + 144) = v156;
      *(v117 + 152) = v112;
      v162 = 0x6C616E696769726FLL;
      v163 = 0xEF656D6954646E45;

      sub_1C60174C0();
      v119 = sub_1C6017220();
      v120 = MEMORY[0x1E69E63B0];
      *(v117 + 240) = MEMORY[0x1E69E63B0];
      *(v117 + 216) = v119;
      v162 = 0x656D6954646E65;
      v163 = 0xE700000000000000;
      sub_1C60174C0();
      *(v117 + 312) = v120;
      *(v117 + 288) = a4;
      v162 = 0x6D69547472617473;
      v163 = 0xE900000000000065;
      sub_1C60174C0();
      *(v117 + 384) = v120;
      *(v117 + 360) = v20;
      v121 = sub_1C6016880();
      sub_1C5DC96C0(v116, 0, v121, v115);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C5CDAF64(v5 + 88, v165);
      __swift_project_boxed_opaque_existential_0(v165, *(&v165[1] + 1));
      *&v167[0] = 0;
      *(&v167[0] + 1) = 0xE000000000000000;
      sub_1C6017540();
      if (a1)
      {
        v122 = "tQueue item] - time:";
        v123 = 0xD000000000000073;
      }

      else
      {
        v122 = "JUMP TO TIME - Starting: ";
        v123 = 0xD000000000000064;
      }

      MEMORY[0x1C69534E0](v123, v122 | 0x8000000000000000);
      sub_1C5C72C04(0, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v124 = swift_allocObject();
      v125 = MEMORY[0x1E69E63B0];
      *(v124 + 16) = xmmword_1C60311E0;
      v126 = MEMORY[0x1E69E6438];
      *(v124 + 56) = v125;
      *(v124 + 64) = v126;
      *(v124 + 32) = a4;
      v127 = sub_1C6016960();
      MEMORY[0x1C69534E0](v127);

      MEMORY[0x1C69534E0](0x746E656469202D20, 0xEF203A7265696669);
      MEMORY[0x1C69534E0](v156, v155);
      *v166 = v167[0];
      sub_1C5DC95A4(v166);
      memcpy(v167, v166, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v165);
      v115 = [objc_opt_self() defaultCenter];
      if (qword_1ED7DCE20 != -1)
      {
        swift_once();
      }

      v128 = qword_1ED7E1680;
      sub_1C5DC95B8(0, &qword_1EC1A9220);
      v129 = swift_allocObject();
      *(v129 + 16) = xmmword_1C60379A0;
      v166[0] = 0x64656873696E6966;
      v166[1] = 0xE800000000000000;
      v130 = MEMORY[0x1E69E6158];
      sub_1C60174C0();
      *(v129 + 96) = MEMORY[0x1E69E6370];
      *(v129 + 72) = a1 & 1;
      v166[0] = 0x696669746E656469;
      v166[1] = 0xEA00000000007265;
      sub_1C60174C0();
      *(v129 + 168) = v130;
      v131 = v155;
      *(v129 + 144) = v156;
      *(v129 + 152) = v131;
      v166[0] = 0x6C616E696769726FLL;
      v166[1] = 0xEF656D6954646E45;

      sub_1C60174C0();
      v132 = 0.0;
      v133 = 0.0;
      if (a1)
      {
        v133 = sub_1C6017220();
        v132 = a4;
      }

      v134 = MEMORY[0x1E69E63B0];
      *(v129 + 240) = MEMORY[0x1E69E63B0];
      *(v129 + 216) = v133;
      v166[0] = 0x656D6954646E65;
      v166[1] = 0xE700000000000000;
      sub_1C60174C0();
      *(v129 + 312) = v134;
      *(v129 + 288) = v132;
      v166[0] = 0x6D69547472617473;
      v166[1] = 0xE900000000000065;
      sub_1C60174C0();
      *(v129 + 384) = v134;
      *(v129 + 360) = v20;
      v135 = sub_1C6016880();
      sub_1C5DC96C0(v128, 0, v135, v115);
    }

    return swift_unknownObjectRelease();
  }

  v29 = v28;
  v30 = [v29 isVideoContent] ^ 1;
  if (fabs(a4) < 0.01)
  {
    v30 = 1;
  }

  v145 = v30;
  v31 = [v29 seekableTimeRanges];

  sub_1C5C64D74(0, &unk_1ED7DCCE0, 0x1E696B098);
  sub_1C6016B10();

  v32 = sub_1C5C6AA20();

  if (!v32)
  {
    v33 = v5;
    v43 = sub_1C5C64D74(0, &qword_1ED7DCEA8, 0x1E69880B0);
    *&v167[2] = &off_1F4544D38;
    *(&v167[1] + 1) = v43;
    *&v167[0] = v29;
    v29 = v29;
    v44 = v159;
    __swift_destroy_boxed_opaque_existential_0(v159);
    sub_1C5C6BEFC(v167, v44);
    v35 = v160;
    goto LABEL_16;
  }

  v33 = v5;
  v35 = sub_1C5DC7D98(v29, v160, v22, v24);
  v37 = v36;
  v38 = HIDWORD(v34);
LABEL_17:
  v143 = v38;
  v144 = v34;
  v45 = v34 | (v38 << 32);
  v46 = sub_1C60171E0();
  v153 = v45;
  v148 = v24;
  v149 = v37;
  v146 = v33;
  v150 = v35;
  v151 = v29;
  if (v46)
  {
    sub_1C5CDAF64(v33 + 88, v165);
    v137 = __swift_project_boxed_opaque_existential_0(v165, *(&v165[1] + 1));
    *&v167[0] = 0;
    *(&v167[0] + 1) = 0xE000000000000000;
    sub_1C6017540();
    *v166 = v167[0];
    MEMORY[0x1C69534E0](0xD000000000000048, 0x80000001C6051F40);
    v47 = sub_1C5D63FE4();
    MEMORY[0x1C69534E0](v47);

    MEMORY[0x1C69534E0](0x656B656573202D20, 0xEB00000000203A72);
    v48 = v158[5];
    v49 = __swift_project_boxed_opaque_existential_0(v159, v48);
    v50 = *(v48 - 8);
    MEMORY[0x1EEE9AC00](v49);
    v52 = &v136 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v50 + 16))(v52);
    sub_1C6017830();
    (*(v50 + 8))(v52, v48);
    MEMORY[0x1C69534E0](0x6567726174202D20, 0xEF3A656D69742074);
    v53 = sub_1C6017220();
    sub_1C5C72C04(0, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v54 = swift_allocObject();
    v136 = xmmword_1C60311E0;
    v55 = MEMORY[0x1E69E63B0];
    *(v54 + 16) = xmmword_1C60311E0;
    v56 = MEMORY[0x1E69E6438];
    *(v54 + 56) = v55;
    *(v54 + 64) = v56;
    *(v54 + 32) = v53;
    v57 = sub_1C6016960();
    MEMORY[0x1C69534E0](v57);

    MEMORY[0x1C69534E0](0x742077656E202D20, 0xED0000203A656D69);
    v58 = sub_1C6017220();
    v59 = swift_allocObject();
    *(v59 + 16) = v136;
    *(v59 + 56) = v55;
    *(v59 + 64) = v56;
    v29 = v151;
    *(v59 + 32) = v58;
    v60 = sub_1C6016960();
    MEMORY[0x1C69534E0](v60);

    MEMORY[0x1C69534E0](0x746E656469202D20, 0xEF203A7265696669);
    v61 = v155;
    v62 = v156;
    MEMORY[0x1C69534E0](v156, v155);
    MEMORY[0x1C69534E0](0x6579616C70202D20, 0xEA00000000003A72);
    v63 = sub_1C5DD9C90();
    *(&v167[1] + 1) = MEMORY[0x1E69E6158];
    *&v167[0] = v63;
    *(&v167[0] + 1) = v64;
    DefaultStringInterpolation.appendInterpolation(describing:default:)(v167, 7104878, 0xE300000000000000);
    sub_1C5DC9938(v167, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5DC95A4(v166);
    memcpy(v167, v166, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v165);
    v65 = v29;
  }

  else
  {
    sub_1C5CDAF64(v33 + 88, v165);
    __swift_project_boxed_opaque_existential_0(v165, *(&v165[1] + 1));
    *&v167[0] = 0;
    *(&v167[0] + 1) = 0xE000000000000000;
    sub_1C6017540();
    *v166 = v167[0];
    MEMORY[0x1C69534E0](0xD00000000000004DLL, 0x80000001C6051ED0);
    v66 = sub_1C6017220();
    sub_1C5C72C04(0, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v67 = swift_allocObject();
    v68 = MEMORY[0x1E69E63B0];
    *(v67 + 16) = xmmword_1C60311E0;
    v69 = MEMORY[0x1E69E6438];
    *(v67 + 56) = v68;
    *(v67 + 64) = v69;
    *(v67 + 32) = v66;
    v70 = sub_1C6016960();
    MEMORY[0x1C69534E0](v70);

    MEMORY[0x1C69534E0](0xD000000000000018, 0x80000001C6051F20);
    v71 = v29;
    v72 = sub_1C5D63FE4();
    MEMORY[0x1C69534E0](v72);

    MEMORY[0x1C69534E0](0x6B656573202D205DLL, 0xEC000000203A7265);
    v73 = v158[5];
    v74 = __swift_project_boxed_opaque_existential_0(v159, v73);
    v75 = *(v73 - 8);
    MEMORY[0x1EEE9AC00](v74);
    v77 = &v136 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v75 + 16))(v77);
    sub_1C6017830();
    (*(v75 + 8))(v77, v73);
    MEMORY[0x1C69534E0](0x3A6D657469202D20, 0xE800000000000000);
    v78 = [v71 description];
    v79 = sub_1C6016940();
    v81 = v80;

    MEMORY[0x1C69534E0](v79, v81);

    MEMORY[0x1C69534E0](0x746E656469202D20, 0xEF203A7265696669);
    v61 = v155;
    v62 = v156;
    MEMORY[0x1C69534E0](v156, v155);
    MEMORY[0x1C69534E0](0x6579616C70202D20, 0xEA00000000003A72);
    v82 = sub_1C5DD9C90();
    *(&v167[1] + 1) = MEMORY[0x1E69E6158];
    *&v167[0] = v82;
    *(&v167[0] + 1) = v83;
    DefaultStringInterpolation.appendInterpolation(describing:default:)(v167, 7104878, 0xE300000000000000);
    sub_1C5DC9938(v167, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5DC95A4(v166);
    memcpy(v167, v166, 0xD9uLL);
    sub_1C5DBBF0C();

    v65 = __swift_destroy_boxed_opaque_existential_0(v165);
  }

  v84 = v147;
  sub_1C5D6604C(v65);
  v86 = v85;

  if ((v86 & 1) == 0)
  {
    v87 = v140;
    MEMORY[0x1C6952D20]();
    v88 = v142;
    sub_1C6016250();
    (*(v141 + 8))(v87, v88);
    v89 = v29;
    v90 = sub_1C60162B0();
    v91 = sub_1C6016F30();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v166[0] = v93;
      *v92 = 136446210;
      v94 = sub_1C5DBCDF8();
      v96 = sub_1C5C6AB10(v94, v95, v166);

      *(v92 + 4) = v96;
      _os_log_impl(&dword_1C5C61000, v90, v91, "[EST:%{public}s)] setting expected start time due to seek", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v93);
      v97 = v93;
      v61 = v155;
      MEMORY[0x1C6956920](v97, -1, -1);
      v98 = v92;
      v62 = v156;
      MEMORY[0x1C6956920](v98, -1, -1);
    }

    (*(v138 + 8))(v84, v139);
    sub_1C5D66228();
  }

  sub_1C5CDAF64(v159, v166);
  v159 = v166[3];
  v99 = v166[4];
  v156 = __swift_project_boxed_opaque_existential_0(v166, v166[3]);
  v100 = swift_allocObject();
  swift_weakInit();
  v101 = swift_allocObject();
  v102 = v158;
  *(v101 + 16) = v100;
  *(v101 + 24) = v102;
  *(v101 + 32) = v160;
  v103 = v152;
  *(v101 + 40) = v154;
  *(v101 + 44) = v103;
  v104 = v149;
  *(v101 + 48) = v148;
  *(v101 + 56) = v62;
  v105 = v161;
  *(v101 + 64) = v61;
  *(v101 + 72) = v105;
  v106 = v150;
  *(v101 + 80) = v150;
  LODWORD(v105) = v143;
  *(v101 + 88) = v144;
  *(v101 + 92) = v105;
  *(v101 + 96) = v104;
  *(v101 + 104) = v20;
  *&v161 = *(v99 + 16);
  swift_unknownObjectRetain();

  (v161)(v106, v153, v104, v145, sub_1C5DC975C, v101, v159, v99);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v166);
}

uint64_t sub_1C5DC3648(uint64_t result)
{
  if (*(v1 + 72))
  {
    if ((*(result + 32) & 1) == 0)
    {
      OUTLINED_FUNCTION_151();
      sub_1C6017540();

      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_78_3();
      OUTLINED_FUNCTION_87();
      v2 = OUTLINED_FUNCTION_38_8();
      sub_1C5DC0224(v2, v3, v4, v5, v6);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5DC370C(uint64_t result, double a2)
{
  if (*(v2 + 72))
  {
    v3 = result;
    sub_1C5CDAF64(v2 + 88, v5);
    __swift_project_boxed_opaque_existential_0(v5, v5[3]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    OUTLINED_FUNCTION_5_24();
    MEMORY[0x1C69534E0](0xD000000000000019);
    sub_1C5DC1508();
    sub_1C6016D10();
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    sub_1C5DC95A4(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    result = __swift_destroy_boxed_opaque_existential_0(v5);
    if ((*(v3 + 32) & 1) == 0)
    {
      return sub_1C5DC1E2C(*(v3 + 33), *v3, *(v3 + 8), a2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5DC3828(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_1C5DC3870()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = OUTLINED_FUNCTION_147();
    sub_1C5DE4570(v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C5DC38D8()
{
  OUTLINED_FUNCTION_131();
  v2 = v0;
  v3 = v1;
  if (*(v0 + 72))
  {
    v4 = *v1;
    v5 = v1[1];
    v6 = v1[4];
    v7 = v1[6];
    v8 = v1[7];
    v9 = v1[8];
    v10 = *(v2 + 80);
    switch((v9 >> 58) & 0x3C | (v9 >> 1) & 3)
    {
      case 1uLL:
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 5uLL:
      case 6uLL:
      case 7uLL:
      case 0xCuLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x18uLL:
      case 0x1AuLL:
      case 0x1BuLL:
      case 0x1CuLL:
      case 0x1EuLL:
      case 0x1FuLL:
      case 0x20uLL:
      case 0x21uLL:
      case 0x22uLL:
      case 0x23uLL:
      case 0x24uLL:
        v11 = v1[4];
        v12 = v1[3];
        v13 = v1[5];
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_51;
        }

        OUTLINED_FUNCTION_69_6();
        *(&v198 + 1) = v12;
        *&v199 = v11;
        *(&v199 + 1) = v13;
        *&v200 = v7;
        *(&v200 + 1) = v8;
        v201 = v9;
        goto LABEL_5;
      case 8uLL:
        OUTLINED_FUNCTION_42_8();
        sub_1C5DC45D4(v4);
        goto LABEL_21;
      case 9uLL:
        v81 = v1[3];
        v82 = v1[5];
        v173 = v1[6];
        v83 = v2;
        swift_unknownObjectRetain();
        sub_1C5DBE948();
        *(v83 + 152) = 0;
        *(v83 + 160) = 1;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_71_3();
        *(&v198 + 1) = v81;
        *&v199 = v6;
        *(&v199 + 1) = v82;
        goto LABEL_35;
      case 0xAuLL:
        swift_unknownObjectRetain();
        OUTLINED_FUNCTION_65_8();
        sub_1C5DC4968(v79, v80);
        goto LABEL_29;
      case 0xBuLL:
        swift_unknownObjectRetain();
        v47 = OUTLINED_FUNCTION_65_8();
        sub_1C5DC4F0C(v48, v49, v47);
LABEL_29:
        if (*(&__src[3] + 1) >> 1 == 0xFFFFFFFFLL && (*&__src[4] & 0xF000000000000007) == 0)
        {
          goto LABEL_8;
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          *v197 = __src[0];
          v198 = __src[1];
          v199 = __src[2];
          v200 = __src[3];
          v201 = *&__src[4];
          v202 = 1;
          memcpy(__dst, __src, 0x48uLL);
          sub_1C5D5D5AC(__dst, &v189);
          sub_1C5C89DB4(v197);
          swift_unknownObjectRelease();
          sub_1C5DC9938(__src, qword_1ED7DFBD8, &type metadata for PlayerEvent);
          swift_unknownObjectRelease();
          sub_1C5DC9938(__src, qword_1ED7DFBD8, &type metadata for PlayerEvent);
        }

        else
        {
          sub_1C5DC9938(__src, qword_1ED7DFBD8, &type metadata for PlayerEvent);
LABEL_49:
          swift_unknownObjectRelease();
        }

LABEL_51:
        OUTLINED_FUNCTION_130();
        break;
      case 0xDuLL:
      case 0xEuLL:
      case 0xFuLL:
      case 0x10uLL:
      case 0x17uLL:
        v15 = v1[8];
        v16 = v1[1];
        v17 = *v1;
        v18 = v1[4];
        v19 = v1[2];
        v20 = v1[3];
        v21 = v1[5];
        v22 = v1[6];
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_51;
        }

        *v197 = v17;
        *&v197[8] = v16;
        *&v198 = v19;
        *(&v198 + 1) = v20;
        *&v199 = v18;
        *(&v199 + 1) = v21;
        *&v200 = v22;
        *(&v200 + 1) = v8;
        v201 = v15;
LABEL_5:
        v202 = 1;
        goto LABEL_6;
      case 0x11uLL:
        v84 = v1[3];
        v85 = v1[5];
        *(v2 + 152) = 0;
        *(v2 + 160) = 1;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_51;
        }

        OUTLINED_FUNCTION_69_6();
        *(&v198 + 1) = v84;
        *&v199 = v6;
        *(&v199 + 1) = v85;
        OUTLINED_FUNCTION_29_13(v86, v87, v88, v89, v90, v91, v92, v93, v158, v160, v162, v165, v168, v172, v7);
LABEL_6:
        swift_unknownObjectRetain();
        goto LABEL_7;
      case 0x15uLL:
        v171 = *(v1 + 1);
        v164 = v1[7];
        v176 = v1[6];
        v180 = v1[5];
        if (*(v2 + 160))
        {
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          sub_1C5D8B86C(v6, v180);

          v161 = v9;
        }

        else
        {
          v94 = *(v2 + 152);
          *(v2 + 152) = 0;
          *(v2 + 160) = 1;
          OUTLINED_FUNCTION_11_20();
          v159 = v95;
          swift_unknownObjectRetain();
          sub_1C5D8B86C(v6, v180);
          sub_1C6017540();
          OUTLINED_FUNCTION_49_6();
          *&__src[0] = v96;
          *(&__src[0] + 1) = v97;
          OUTLINED_FUNCTION_8_31();
          OUTLINED_FUNCTION_48_7();
          v98 = MEMORY[0x1C69534E0]();
          OUTLINED_FUNCTION_0_65(v98, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740]);
          v100 = OUTLINED_FUNCTION_56_6(v99);
          v101 = MEMORY[0x1E69E63B0];
          *(v100 + 16) = xmmword_1C60311E0;
          v102 = OUTLINED_FUNCTION_13_11(v100, v101);
          MEMORY[0x1C69534E0](v102);

          v203.value = MEMORY[0x1C69534E0](544175136, 0xE400000000000000);
          v203.is_nil = v94;
          DefaultStringInterpolation.appendInterpolation(time:)(v203);
          OUTLINED_FUNCTION_8_31();
          OUTLINED_FUNCTION_48_7();
          MEMORY[0x1C69534E0]();
          swift_getObjectType();
          OUTLINED_FUNCTION_13_25();
          v104 = v103();
          OUTLINED_FUNCTION_12_29(v104, v105, MEMORY[0x1E69E6158]);
          OUTLINED_FUNCTION_10_0(v106);
          OUTLINED_FUNCTION_80_4(&qword_1ED7E0200, MEMORY[0x1E69E7CA0]);
          v107 = sub_1C5DC95A4(__src);
          OUTLINED_FUNCTION_26_14(v107, v108, v109, v110, v111, v112, v113, v114, v159, v160, v164, v5, v171, *(&v171 + 1), v7, v180, v181, v182, v183, v184, v185, v186, v187, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], v189, *(&v189 + 1), v190, *(&v190 + 1), v191, v192, v193, v194, v195, *&__src[0]);
          sub_1C5DC3838();
          v5 = v167;

          *(v176 + 16) = v94;
          swift_unknownObjectRetain();

          v8 = 0;
          v161 = 0x5000000000000002;
        }

        sub_1C5DC4550();
        v116 = v115;
        ObjectType = swift_getObjectType();
        if (v116 != (*(v10 + 16))(ObjectType, v10))
        {
          *&__src[0] = 0;
          *(&__src[0] + 1) = 0xE000000000000000;
          sub_1C6017540();
          OUTLINED_FUNCTION_8_31();
          OUTLINED_FUNCTION_48_7();
          v118 = MEMORY[0x1C69534E0]();
          v119 = sub_1C5D5F72C(v118);
          MEMORY[0x1C69534E0](v119);

          v120 = OUTLINED_FUNCTION_17_20();
          MEMORY[0x1C69534E0](v120, 0xE90000000000003ALL);
          sub_1C5DBDE9C();
          v121 = sub_1C6016870();
          v123 = v122;

          MEMORY[0x1C69534E0](v121, v123);

          *__dst = __src[0];
          sub_1C5D45B74(__dst);
          memcpy(__src, __dst, 0xD9uLL);
          sub_1C5DC3838();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          *__dst = v4;
          *&__dst[8] = v5;
          *&__dst[16] = v171;
          *&__dst[32] = v6;
          *&__dst[40] = v180;
          *&__dst[48] = v176;
          *&__dst[56] = v8;
          *&__dst[64] = v161;
          __dst[72] = 1;
          *&v189 = v4;
          *(&v189 + 1) = v5;
          v190 = v171;
          v191 = v6;
          v192 = v180;
          v193 = v176;
          v194 = v164;
          v195 = v9 & 0xFFFFFFFFFFFFFF9;
          sub_1C5DC99A8(&v189, &v181);
          sub_1C5C89DB4(__dst);
          sub_1C5D7EF0C(v3);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        sub_1C5D7EF0C(v3);
        goto LABEL_51;
      case 0x16uLL:
        OUTLINED_FUNCTION_72_3();
        *(v58 + 152) = *(v6 + 16);
        *(v58 + 160) = 0;
        OUTLINED_FUNCTION_11_20();
        swift_unknownObjectRetain();
        sub_1C6017540();
        OUTLINED_FUNCTION_49_6();
        *__dst = v59;
        *&__dst[8] = v60;
        v61 = MEMORY[0x1C69534E0](0xD000000000000038, 0x80000001C6051E60);
        OUTLINED_FUNCTION_0_65(v61, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740]);
        v63 = OUTLINED_FUNCTION_56_6(v62);
        v64 = MEMORY[0x1E69E63B0];
        *(v63 + 16) = xmmword_1C60311E0;
        v65 = OUTLINED_FUNCTION_13_11(v63, v64);
        MEMORY[0x1C69534E0](v65);

        MEMORY[0x1C69534E0](0xD00000000000001ELL, 0x80000001C6052810);
        swift_getObjectType();
        OUTLINED_FUNCTION_13_25();
        v67 = v66();
        OUTLINED_FUNCTION_12_29(v67, v68, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_10_0(v69);
        OUTLINED_FUNCTION_80_4(&qword_1ED7E0200, MEMORY[0x1E69E7CA0]);
        __src[0] = *__dst;
        v70 = sub_1C5DC95A4(__src);
        OUTLINED_FUNCTION_26_14(v70, v71, v72, v73, v74, v75, v76, v77, v158, v160, v162, v165, v168, v172, v173, v177, v181, v182, v183, v184, v185, v186, v187, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], v189, *(&v189 + 1), v190, *(&v190 + 1), v191, v192, v193, v194, v195, *&__src[0]);
        sub_1C5DC3838();

        goto LABEL_24;
      case 0x19uLL:
        v23 = v1[7];
        v169 = *(v1 + 1);
        v174 = v1[6];
        v178 = v1[5];
        if ((v5 & 0x7FFFFFFF) != 0)
        {
          swift_unknownObjectRetain();
        }

        else
        {
          *(v2 + 152) = *(v1[2] + 16);
          *(v2 + 160) = 0;
          OUTLINED_FUNCTION_11_20();
          swift_unknownObjectRetain();
          sub_1C6017540();
          OUTLINED_FUNCTION_49_6();
          *&__src[0] = v124;
          *(&__src[0] + 1) = v125;
          OUTLINED_FUNCTION_48_7();
          v126 = MEMORY[0x1C69534E0](0xD000000000000038);
          OUTLINED_FUNCTION_0_65(v126, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740]);
          v128 = OUTLINED_FUNCTION_56_6(v127);
          v129 = MEMORY[0x1E69E63B0];
          *(v128 + 16) = xmmword_1C60311E0;
          v130 = OUTLINED_FUNCTION_13_11(v128, v129);
          MEMORY[0x1C69534E0](v130);

          OUTLINED_FUNCTION_8_31();
          OUTLINED_FUNCTION_48_7();
          MEMORY[0x1C69534E0]();
          swift_getObjectType();
          OUTLINED_FUNCTION_13_25();
          v132 = v131();
          OUTLINED_FUNCTION_12_29(v132, v133, MEMORY[0x1E69E6158]);
          OUTLINED_FUNCTION_10_0(v134);
          OUTLINED_FUNCTION_80_4(&qword_1ED7E0200, MEMORY[0x1E69E7CA0]);
          v135 = sub_1C5DC95A4(__src);
          OUTLINED_FUNCTION_26_14(v135, v136, v137, v138, v139, v140, v141, v142, v158, v160, v162, v5, v169, *(&v169 + 1), v7, v178, v181, v182, v183, v184, v185, v186, v187, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], v189, *(&v189 + 1), v190, *(&v190 + 1), v191, v192, v193, v194, v195, *&__src[0]);
          sub_1C5DC3838();
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_49;
        }

        *&__src[0] = v4;
        *(&__src[0] + 1) = v5;
        __src[1] = v169;
        *&__src[2] = v6;
        *(&__src[2] + 1) = v178;
        *&__src[3] = v174;
        *(&__src[3] + 1) = v23;
        *&__src[4] = v9;
        BYTE8(__src[4]) = 1;
        v78 = __src;
        goto LABEL_47;
      case 0x1DuLL:
        OUTLINED_FUNCTION_72_3();
        if (v8)
        {
          *(v24 + 152) = v6;
          *(v24 + 160) = 0;
        }

        sub_1C5CDAF64(v24 + 88, __dst);
        __swift_project_boxed_opaque_existential_0(__dst, *&__dst[24]);
        OUTLINED_FUNCTION_11_20();
        swift_unknownObjectRetain();
        sub_1C6017540();
        OUTLINED_FUNCTION_49_6();
        *&v189 = v25;
        *(&v189 + 1) = v26;
        OUTLINED_FUNCTION_8_31();
        v29 = MEMORY[0x1C69534E0](v27 - 30, v28 | 0x8000000000000000);
        OUTLINED_FUNCTION_0_65(v29, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740]);
        v31 = OUTLINED_FUNCTION_56_6(v30);
        v32 = MEMORY[0x1E69E63B0];
        *(v31 + 16) = xmmword_1C60311E0;
        v33 = MEMORY[0x1E69E6438];
        *(v31 + 56) = v32;
        *(v31 + 64) = v33;
        *(v31 + 32) = v6;
        v34 = sub_1C6016960();
        MEMORY[0x1C69534E0](v34);

        OUTLINED_FUNCTION_1_54();
        OUTLINED_FUNCTION_32_6();
        swift_getObjectType();
        OUTLINED_FUNCTION_13_25();
        v36 = v35();
        OUTLINED_FUNCTION_12_29(v36, v37, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_10_0(v38);
        OUTLINED_FUNCTION_80_4(&qword_1ED7E0200, MEMORY[0x1E69E7CA0]);
        __src[0] = v189;
        v39 = sub_1C5DC95A4(__src);
        OUTLINED_FUNCTION_26_14(v39, v40, v41, v42, v43, v44, v45, v46, v158, v160, v162, v165, v168, v172, v173, v177, v181, v182, v183, v184, v185, v186, v187, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], v189, *(&v189 + 1), v190, *(&v190 + 1), v191, v192, v193, v194, v195, *&__src[0]);
        sub_1C5DBBF0C();

        __swift_destroy_boxed_opaque_existential_0(__dst);
LABEL_24:
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_49;
        }

        *__dst = v4;
        *&__dst[8] = v166;
        *&__dst[16] = v170;
        *&__dst[32] = v6;
        *&__dst[40] = v179;
        *&__dst[48] = v175;
        *&__dst[56] = v163;
        *&__dst[64] = v9;
        __dst[72] = 1;
        v78 = __dst;
LABEL_47:
        sub_1C5C89DB4(v78);
        swift_unknownObjectRelease();
        goto LABEL_49;
      default:
        OUTLINED_FUNCTION_42_8();
        sub_1C5DBEC50();
LABEL_21:
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_71_3();
        *(&v198 + 1) = v10;
        *&v199 = v6;
        *(&v199 + 1) = v3;
LABEL_35:
        OUTLINED_FUNCTION_29_13(v50, v51, v52, v53, v54, v55, v56, v57, v158, v160, v162, v165, v168, v172, v173);
LABEL_7:
        sub_1C5C89DB4(v197);
        swift_unknownObjectRelease();
LABEL_8:
        OUTLINED_FUNCTION_130();

        swift_unknownObjectRelease();
        return;
    }
  }

  else
  {
    *v197 = 0;
    *&v197[8] = 0xE000000000000000;
    sub_1C6017540();
    OUTLINED_FUNCTION_49_6();
    *__dst = v143;
    *&__dst[8] = v144;
    OUTLINED_FUNCTION_8_31();
    v147 = MEMORY[0x1C69534E0](v145 + 26, v146 | 0x8000000000000000);
    v148 = sub_1C5D5F72C(v147);
    MEMORY[0x1C69534E0](v148);

    v149 = OUTLINED_FUNCTION_17_20();
    MEMORY[0x1C69534E0](v149, 0xE90000000000003ALL);
    sub_1C5DBDE9C();
    sub_1C6016870();

    OUTLINED_FUNCTION_82_3();

    __src[0] = *__dst;
    v150 = sub_1C5D45B74(__src);
    OUTLINED_FUNCTION_26_14(v150, v151, v152, v153, v154, v155, v156, v157, v158, v160, v162, v165, v168, v172, v173, v177, v181, v182, v183, v184, v185, v186, v187, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], v189, *(&v189 + 1), v190, *(&v190 + 1), v191, v192, v193, v194, v195, *&__src[0]);

    sub_1C5DC3838();

    __break(1u);
  }
}