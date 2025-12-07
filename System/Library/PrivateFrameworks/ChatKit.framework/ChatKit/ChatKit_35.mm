id sub_190B24270()
{
  [v0 invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTextEffectsDisplayLinkToken();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MessageDestination(uint64_t a1)
{
  result = qword_1EAD5DB18;
  if (!qword_1EAD5DB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190B24488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DB00, &unk_190DF3630);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - v2;
  v4 = type metadata accessor for MessageDestination(0);
  v5 = sub_190B24AF4();
  MEMORY[0x193AEC5F0](v5, v4, &type metadata for MessageDestination.IntentPersonArrayResolver, v5);
  v6 = sub_190B24B48();
  MEMORY[0x193AEC5F0](v6, v4, &type metadata for MessageDestination.ConversationEntityResolver, v6);
  sub_190B24AAC(&qword_1EAD5DAE0, type metadata accessor for MessageDestination, &unk_190DF3590);
  sub_190D50D80();
  v8[0] = v5;
  v8[1] = &type metadata for MessageDestination.IntentPersonArrayResolver;
  sub_190D50D70();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_190B24634(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_190B24658, 0, 0);
}

uint64_t sub_190B24658()
{
  v1 = v0[2];
  *v1 = v0[3];
  v2 = type metadata accessor for MessageDestination(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v4 = v0[1];
  sub_190D52690();

  return v4();
}

uint64_t sub_190B24728(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_190B24748, 0, 0);
}

uint64_t sub_190B24748()
{
  v1 = v0[2];
  sub_190B24E98(v0[3], v1, type metadata accessor for ConversationEntity);
  v2 = type metadata accessor for MessageDestination(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_190B24818()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55398, &qword_190DD9CD8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DD1DA0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DAE8, &unk_190DF3620);
  v2 = sub_190B249F8();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for ConversationEntity(0);
  v4 = sub_190B24AAC(&qword_1EAD45D88, type metadata accessor for ConversationEntity, &protocol conformance descriptor for ConversationEntity);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

unint64_t sub_190B248CC@<X0>(uint64_t *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_190B24E98(v6, v5, type metadata accessor for MessageDestination);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a2[3] = type metadata accessor for ConversationEntity(0);
    a2[4] = sub_190B24AAC(&qword_1EAD45D88, type metadata accessor for ConversationEntity, &protocol conformance descriptor for ConversationEntity);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_19082FC20(v5, boxed_opaque_existential_1);
  }

  else
  {
    v9 = *v5;
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DAE8, &unk_190DF3620);
    result = sub_190B249F8();
    a2[4] = result;
    *a2 = v9;
  }

  return result;
}

unint64_t sub_190B249F8()
{
  result = qword_1EAD5DAF0;
  if (!qword_1EAD5DAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DAE8, &unk_190DF3620);
    sub_190B24AAC(&qword_1EAD5DAF8, MEMORY[0x1E695A048], MEMORY[0x1E695A040]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DAF0);
  }

  return result;
}

uint64_t sub_190B24AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_190B24AF4()
{
  result = qword_1EAD5DB08;
  if (!qword_1EAD5DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB08);
  }

  return result;
}

unint64_t sub_190B24B48()
{
  result = qword_1EAD5DB10;
  if (!qword_1EAD5DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB10);
  }

  return result;
}

void sub_190B24BBC(uint64_t a1)
{
  sub_190B24C30(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ConversationEntity(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_190B24C30(uint64_t a1)
{
  if (!qword_1EAD5DB28)
  {
    sub_190D50680();
    v1 = sub_190D57200();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD5DB28);
    }
  }
}

unint64_t sub_190B24C88()
{
  result = qword_1EAD5DB30;
  if (!qword_1EAD5DB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DB38, &qword_190DF3698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB30);
  }

  return result;
}

unint64_t sub_190B24CF0()
{
  result = qword_1EAD5DB40;
  if (!qword_1EAD5DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB40);
  }

  return result;
}

unint64_t sub_190B24D48()
{
  result = qword_1EAD5DB48;
  if (!qword_1EAD5DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB48);
  }

  return result;
}

unint64_t sub_190B24DA0()
{
  result = qword_1EAD5DB50;
  if (!qword_1EAD5DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB50);
  }

  return result;
}

unint64_t sub_190B24E40()
{
  result = qword_1EAD5DB58;
  if (!qword_1EAD5DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB58);
  }

  return result;
}

uint64_t sub_190B24E98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_190B24F08()
{
  result = qword_1EAD5DB60;
  if (!qword_1EAD5DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB60);
  }

  return result;
}

unint64_t sub_190B24F60()
{
  result = qword_1EAD5DB68;
  if (!qword_1EAD5DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB68);
  }

  return result;
}

uint64_t sub_190B25004()
{
  v0 = sub_190D51440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_190D51460();
  __swift_allocate_value_buffer(v6, qword_1EAD9E280);
  __swift_project_value_buffer(v6, qword_1EAD9E280);
  sub_190D56E50();
  sub_190D51980();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_190D51470();
}

uint64_t sub_190B251EC()
{
  v0 = sub_190D50D00();
  __swift_allocate_value_buffer(v0, qword_1EAD9E298);
  v1 = __swift_project_value_buffer(v0, qword_1EAD9E298);
  v2 = *MEMORY[0x1E695A590];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_190B25274(uint64_t a1, uint64_t a2)
{
  v2[85] = a2;
  v2[84] = a1;
  sub_190D572A0();
  v2[86] = sub_190D57290();
  v4 = sub_190D57240();
  v2[87] = v4;
  v2[88] = v3;

  return MEMORY[0x1EEE6DFA0](sub_190B25314, v4, v3);
}

uint64_t sub_190B25314(uint64_t a1)
{
  sub_190D50810();
  v2 = *(v1 + 288);
  *(v1 + 112) = *(v1 + 272);
  *(v1 + 128) = v2;
  v3 = *(v1 + 320);
  *(v1 + 144) = *(v1 + 304);
  *(v1 + 160) = v3;
  v4 = *(v1 + 224);
  *(v1 + 48) = *(v1 + 208);
  *(v1 + 64) = v4;
  v5 = *(v1 + 256);
  *(v1 + 80) = *(v1 + 240);
  *(v1 + 96) = v5;
  v6 = *(v1 + 192);
  *(v1 + 16) = *(v1 + 176);
  *(v1 + 32) = v6;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  *(v1 + 712) = v7;
  sub_190D52690();
  sub_190889CE4(v1 + 16);
  v9 = swift_task_alloc();
  *(v1 + 720) = v9;
  *v9 = v1;
  v9[1] = sub_190B2540C;

  return sub_190888E50(v8, v7);
}

uint64_t sub_190B2540C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[91] = a2;
  v4[92] = v2;

  if (v2)
  {
    v5 = v4[88];
    v6 = v4[87];
    v7 = sub_190B25B28;
  }

  else
  {

    v5 = v4[88];
    v6 = v4[87];
    v7 = sub_190B2554C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_190B2554C()
{
  v1 = *(v0 + 728);

  v2 = [v1 chatItems];
  sub_1902188FC(0, &unk_1EAD450C0, 0x1E69A5AF0);
  v3 = sub_190D57180();

  *(v0 + 656) = v3;
  sub_190D50920();
  v4 = sub_190B25F14(v3);
  v6 = v5;

  v7 = swift_task_alloc();
  *(v7 + 16) = v0 + 656;
  v8 = sub_190CD9E90(sub_190920978, v7, v4, v6 & 1);

  if (!v8)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

LABEL_10:
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v30 = sub_190D53040();
    __swift_project_value_buffer(v30, qword_1EAD9E840);
    v31 = sub_190D53020();
    v32 = sub_190D576A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_19020E000, v31, v32, "Failed to find an IMMessagePartChatItem to tapback", v33, 2u);
      MEMORY[0x193AF7A40](v33, -1, -1);
    }

    v34 = *(v0 + 728);

    sub_190B26730();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
    goto LABEL_26;
  }

  v10 = v9;
  v11 = objc_opt_self();
  v12 = v8;
  v13 = [v11 chatItemWithIMChatItem:v10 balloonMaxWidth:0.0];
  if (!v13)
  {
LABEL_21:
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v41 = sub_190D53040();
    __swift_project_value_buffer(v41, qword_1EAD9E840);
    v42 = sub_190D53020();
    v43 = sub_190D576A0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_19020E000, v42, v43, "Failed to cast CKChatItem to CKMessagePartChatItem", v44, 2u);
      MEMORY[0x193AF7A40](v44, -1, -1);
    }

    v34 = *(v0 + 728);

    sub_190B26730();
    swift_allocError();
    *v45 = 1;
    swift_willThrow();

    goto LABEL_26;
  }

  v14 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    goto LABEL_21;
  }

  v16 = v15;
  v17 = [v15 tapbacksChatItem];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 sentTapbackChatItem];

    if (v19)
    {
      v20 = [v19 tapback];

      if (v20)
      {
        v21 = *(v0 + 728);
        v22 = [v20 removedTapbackCounterpart];
        [v21 sendTapback:v22 forChatItem:v16];
        v23 = sub_190D1FE8C();
        sub_190D50810();
        v24 = *(v0 + 448);
        *(v0 + 592) = *(v0 + 432);
        *(v0 + 608) = v24;
        v25 = *(v0 + 480);
        *(v0 + 624) = *(v0 + 464);
        *(v0 + 640) = v25;
        v26 = *(v0 + 384);
        *(v0 + 528) = *(v0 + 368);
        *(v0 + 544) = v26;
        v27 = *(v0 + 416);
        *(v0 + 560) = *(v0 + 400);
        *(v0 + 576) = v27;
        v28 = *(v0 + 352);
        *(v0 + 496) = *(v0 + 336);
        *(v0 + 512) = v28;
        sub_190D50820();
        *(v0 + 664) = v23;
        sub_1909A6A08();
        sub_190D50690();

        v29 = *(v0 + 8);
        goto LABEL_27;
      }
    }
  }

  if (qword_1EAD521B0 != -1)
  {
    swift_once();
  }

  v36 = sub_190D53040();
  __swift_project_value_buffer(v36, qword_1EAD9E840);
  v37 = sub_190D53020();
  v38 = sub_190D576A0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_19020E000, v37, v38, "Failed to grab sent tapback type", v39, 2u);
    MEMORY[0x193AF7A40](v39, -1, -1);
  }

  v34 = *(v0 + 728);

  sub_190B26730();
  swift_allocError();
  *v40 = 1;
  swift_willThrow();

LABEL_26:
  v29 = *(v0 + 8);
LABEL_27:

  return v29();
}

uint64_t sub_190B25B28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190B25C08(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DB90, &qword_190DF3958);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DB98, &qword_190DF3960);
  MEMORY[0x1EEE9AC00](v3);
  sub_190D50BE0();
  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DBA0, &unk_190DF3990);
  sub_190D50BC0();

  sub_190D50BD0();
  sub_190D50BF0();
  return sub_190D50BB0();
}

uint64_t sub_190B25DAC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA4;

  return sub_190B25274(a1, v4);
}

uint64_t sub_190B25E4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190B26134();
  *a1 = result;
  return result;
}

uint64_t sub_190B25E74(uint64_t a1)
{
  v2 = sub_190B25EC0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_190B25EC0()
{
  result = qword_1EAD5DB80;
  if (!qword_1EAD5DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB80);
  }

  return result;
}

unint64_t sub_190B25F14(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v30 = a1 & 0xC000000000000001;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = a1;
    v3 = a1 + 32;
    while (!__OFSUB__(v1--, 1))
    {
      if (v30)
      {
        v5 = MEMORY[0x193AF3B90](v1, v18);
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (v1 >= *(v2 + 16))
        {
          goto LABEL_25;
        }

        v5 = *(v3 + 8 * v1);
      }

      v6 = v5;
      v7 = [v5 itemGUID];
      if (v7)
      {
        v8 = v7;
        v9 = sub_190D56F10();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0;
      }

      sub_190D50810();
      v29[6] = v25;
      v29[7] = v26;
      v29[8] = v27;
      v29[9] = v28;
      v29[2] = v21;
      v29[3] = v22;
      v29[4] = v23;
      v29[5] = v24;
      v29[0] = v19;
      v29[1] = v20;
      sub_190D52690();
      sub_190889CE4(v29);
      if (v11)
      {
        if (__PAIR128__(v11, v9) == v19)
        {
        }

        else
        {
          v12 = sub_190D58760();

          if ((v12 & 1) == 0)
          {

            goto LABEL_5;
          }
        }

        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();

        if (v13)
        {
          return v1;
        }
      }

      else
      {
      }

LABEL_5:
      if (!v1)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v14 = a1;
    v15 = sub_190D581C0();
    v16 = v14;
    v1 = v15;
    a1 = v16;
  }

  return v1;
}

uint64_t sub_190B26134()
{
  v0 = sub_190D50C80();
  v33 = *(v0 - 8);
  v34 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v32 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8, &unk_190DDF120);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8, &qword_190DD5AE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v25 - v7;
  v8 = sub_190D51440();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v26 = sub_190D51460();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v27 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v28 = &v25 - v17;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57068, &qword_190DDF130);
  sub_190D56E50();
  sub_190D51980();
  v18 = *MEMORY[0x1E6968DF0];
  v19 = *(v9 + 104);
  v19(v11, v18, v8);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v19(v11, v18, v8);
  v20 = v35;
  sub_190D51470();
  (*(v14 + 56))(v20, 0, 1, v26);
  sub_19092095C(v46);
  v42 = v46[6];
  v43 = v46[7];
  v44 = v46[8];
  v45 = v46[9];
  v38 = v46[2];
  v39 = v46[3];
  v40 = v46[4];
  v41 = v46[5];
  v36 = v46[0];
  v37 = v46[1];
  sub_190D56E50();
  *v11 = sub_1902188FC(0, &qword_1EAD466B0, off_1E72E4B40);
  v19(v11, *MEMORY[0x1E6968E00], v8);
  sub_190D51980();
  sub_190D51470();
  v21 = v30;
  sub_190D505A0();
  v22 = sub_190D50590();
  v23 = *(*(v22 - 8) + 56);
  v23(v21, 0, 1, v22);
  v23(v31, 1, 1, v22);
  (*(v33 + 104))(v32, *MEMORY[0x1E695A500], v34);
  sub_190888A1C();
  return sub_190D50890();
}

unint64_t sub_190B26730()
{
  result = qword_1EAD5DB88;
  if (!qword_1EAD5DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DB88);
  }

  return result;
}

unint64_t sub_190B26798()
{
  result = qword_1EAD5DBA8;
  if (!qword_1EAD5DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DBA8);
  }

  return result;
}

Swift::Void __swiftcall CKSuggestedActionsHandler.openSettings()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didRequestSettings];
    swift_unknownObjectRelease();
  }
}

void sub_190B269C8()
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = [v0 assets];
  sub_1902188FC(0, &qword_1EAD583F8, 0x1E6978630);
  v2 = sub_190D57180();

  v15 = 0;
  v3 = [objc_opt_self() openPhotoLibraryWithWellKnownIdentifier:1 error:&v15];
  v4 = v15;
  if (v3)
  {
    v5 = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v19 = sub_190B2734C;
    v20 = v6;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_190840E6C;
    v18 = &block_descriptor_83;
    v7 = _Block_copy(&v15);
    v8 = v4;

    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    v19 = sub_190B27354;
    v20 = v9;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_190B271EC;
    v18 = &block_descriptor_6_7;
    v10 = _Block_copy(&v15);
    v11 = v0;

    [v5 performChanges:v7 completionHandler:v10];
    _Block_release(v10);
    _Block_release(v7);
  }

  else
  {
    v12 = v15;

    v13 = sub_190D51420();

    swift_willThrow();
    v14 = sub_190D51410();
    [v0 completeBackgroundTaskWithSuccess:0 error:v14];
  }
}

void sub_190B26C48(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v2 = sub_190D581C0();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 >= 1)
  {
    v3 = 0;
    v4 = a1 & 0xC000000000000001;
    v5 = &selRef_buttonAttributedString;
    v6 = 0x1E6978000uLL;
    v7 = &selRef_buttonAttributedString;
    a2.n128_u64[0] = 136315138;
    v21 = a2;
    v22 = v2;
    while (1)
    {
      if (v4)
      {
        v8 = MEMORY[0x193AF3B90](v3, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v3 + 32);
      }

      v9 = v8;
      if ([v8 v5[408]])
      {
      }

      else
      {
        if (qword_1EAD51DE0 != -1)
        {
          swift_once();
        }

        v10 = sub_190D53040();
        __swift_project_value_buffer(v10, qword_1EAD9E2B0);
        v11 = v9;
        v9 = sub_190D53020();
        v12 = sub_190D576C0();

        if (os_log_type_enabled(v9, v12))
        {
          v13 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v25 = v23;
          *v13 = v21.n128_u32[0];
          v14 = v7;
          v15 = v6;
          v16 = [v11 localIdentifier];
          v17 = sub_190D56F10();
          v19 = v18;

          v6 = v15;
          v7 = v14;
          v20 = sub_19021D9F8(v17, v19, &v25);
          v2 = v22;

          *(v13 + 4) = v20;
          v4 = a1 & 0xC000000000000001;
          _os_log_impl(&dword_19020E000, v9, v12, "Skipping asset %s, already saved.", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v23);
          v5 = &selRef_buttonAttributedString;
          MEMORY[0x193AF7A40](v23, -1, -1);
          MEMORY[0x193AF7A40](v13, -1, -1);

          goto LABEL_7;
        }
      }

LABEL_7:
      if (v2 == ++v3)
      {
        return;
      }
    }
  }

  __break(1u);
}

uint64_t sub_190B26ED0(char a1, void *a2, void *a3)
{
  v6 = sub_190D56770();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_190D567A0();
  v10 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670, 0x1E69E9610);
  v13 = sub_190D57870();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  aBlock[4] = sub_190B2735C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_12_5;
  v15 = _Block_copy(aBlock);
  v16 = a3;
  v17 = a2;

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0, &unk_190DD6E80);
  sub_190840E08();
  sub_190D58170();
  MEMORY[0x193AF3110](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v20);
}

void sub_190B2717C(void *a1, char a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    v5 = sub_190D51410();
    a1 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [a1 completeBackgroundTaskWithSuccess:a2 & 1 error:?];
}

void sub_190B271EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_190D50920();
  v6 = a3;
  v5(a2, a3);
}

id sub_190B272F4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PhotosGridSaveToPhotosActionPerformer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_190B2736C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E2B0);
  __swift_project_value_buffer(v0, qword_1EAD9E2B0);
  sub_190D53010();
  return sub_190D53030();
}

id sub_190B273D8(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B274B0(uint64_t a1)
{
  v1 = a1;
  result = CKFrameworkBundle(a1);
  v3 = result;
  if (v1)
  {
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  else if (result)
  {
LABEL_5:
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v7 = sub_190D56F10();
    return v7;
  }

  __break(1u);
  return result;
}

id sub_190B275A4(uint64_t a1)
{
  if (a1)
  {
    result = CKFrameworkBundle(a1);
    if (result)
    {
      v2 = result;
LABEL_10:
      v4 = sub_190D56ED0();
      v5 = sub_190D56ED0();
      v6 = [v2 localizedStringForKey:v4 value:0 table:v5];

      v7 = sub_190D56F10();
      return v7;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  IsGreenTea = IMDeviceIsGreenTea();
  if ((IsGreenTea & 1) != 0 || (IsGreenTea = [objc_opt_self() IMDeviceIsChinaRegion], IsGreenTea))
  {
    result = CKFrameworkBundle(IsGreenTea);
    if (result)
    {
      v2 = result;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  result = CKFrameworkBundle(IsGreenTea);
  if (result)
  {
    v2 = result;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

void CKConversation.canSendComposition(_:forCapabilities:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 chat];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 supportsCapabilities_];

    if (v8)
    {
      return;
    }
  }

  else if ([v3 isPending])
  {
    return;
  }

  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 isSatelliteConnectionActive];

  v11 = [a1 mediaObjects];
  if (!v11)
  {
    __break(1u);
    return;
  }

  v12 = v11;
  sub_190B27868();
  v13 = sub_190D57180();

  if (v13 >> 62)
  {
    v14 = sub_190D581C0();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
    v15 = [a1 shelfPluginPayload];
    if (!v15)
    {
      return;
    }
  }

  sub_190B286AC(v10 ^ 1);
  swift_willThrow();
}

unint64_t sub_190B27868()
{
  result = qword_1EAD466C0;
  if (!qword_1EAD466C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD466C0);
  }

  return result;
}

uint64_t CKConversation.shouldShowSatelliteServiceUnavailableIndicator.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isMessagingActiveOverSatellite];

  if (!v2)
  {
    goto LABEL_14;
  }

  if (([v0 isGroupConversation] & 1) == 0 && (objc_msgSend(v0, sel_isBusinessConversation) & 1) == 0)
  {
    if ([v0 isSatelliteEmergencyConversation])
    {
      goto LABEL_14;
    }

    v4 = [v0 chat];
    if (!v4)
    {
      goto LABEL_14;
    }

    v5 = v4;
    v6 = [v4 account];

    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = [v6 serviceName];

    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = sub_190D56F10();
    v10 = v9;

    if (v8 != sub_190D56F10() || v10 != v11)
    {
      v12 = sub_190D58760();

      if (v12)
      {
        goto LABEL_13;
      }

      if (v8 != sub_190D56F10() || v10 != v14)
      {
        v15 = sub_190D58760();

        v3 = v15 ^ 1;
        return v3 & 1;
      }
    }

LABEL_13:

LABEL_14:
    v3 = 0;
    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t CKConversation.isSatelliteEmergencyConversation.getter()
{
  if ([v0 isStewieConversation])
  {
    return 1;
  }

  else
  {
    return [v0 isEmergencyTranscriptSharingConversation];
  }
}

uint64_t CKConversation.allowToSendWithCurrentServiceForSatellite.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isMessagingActiveOverSatellite];

  if (v2)
  {
    v3 = [v0 sendingService];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 name];

      if (v5)
      {
        v6 = sub_190D56F10();
        v8 = v7;

        if (v6 == sub_190D56F10() && v8 == v9)
        {
          v10 = 1;
        }

        else
        {
          v11 = sub_190D58760();

          if (v11)
          {
            v10 = 1;
            goto LABEL_12;
          }

          if (v6 == sub_190D56F10() && v8 == v13)
          {
            v10 = 1;
          }

          else
          {
            v10 = sub_190D58760();
          }
        }

LABEL_12:

        return v10 & 1;
      }
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

uint64_t CKConversation.shouldShowSatelliteSummary.getter()
{
  v1 = [v0 chat];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isDownloadingPendingSatelliteMessages];

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = [v0 chat];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 pendingIncomingSatelliteMessageCount];

    v8 = v7 > 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 isMessagingActiveOverSatellite];

  if (v10)
  {
    return v4 & v8;
  }

  else
  {
    return 0;
  }
}

uint64_t CKConversation.satelliteSummaryMessage.getter()
{
  v1 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_190D56EC0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v19[-v8];
  v10 = [v0 chat];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 pendingIncomingSatelliteMessageCount];
  }

  else
  {
    v12 = 0;
  }

  sub_190D56E50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_190DD1D90;
  v14 = MEMORY[0x1E69E65A8];
  *(v13 + 56) = MEMORY[0x1E69E6530];
  *(v13 + 64) = v14;
  *(v13 + 32) = v12;
  v15 = (*(v3 + 16))(v5, v9, v2);
  v16 = CKFrameworkBundle(v15);
  sub_190D51980();
  sub_190D56F30();
  v17 = sub_190D56EE0();

  (*(v3 + 8))(v9, v2);
  return v17;
}

uint64_t CKConversation.shouldShowDownloadingPendingMessages.getter()
{
  v1 = [v0 chat];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isDownloadingPendingSatelliteMessages];
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 isMessagingActiveOverSatellite];

  return v5 & v3;
}

char *CKConversation.pendingMessageCountText.getter()
{
  v1 = v0;
  v2 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_190D56EC0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v25[-v9];
  result = [v0 chat];
  if (result)
  {
    v12 = result;
    if ([v1 shouldShowDownloadingPendingMessages])
    {
      v13 = [v12 pendingIncomingSatelliteMessageCount];
      result = [v12 totalSatelliteMessageCount];
      v14 = (result - v13);
      if (__OFSUB__(result, v13))
      {
        __break(1u);
      }

      else
      {
        v15 = v14 + 1;
        if (!__OFADD__(v14, 1))
        {
          v16 = result;
          sub_190D56E50();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
          v17 = swift_allocObject();
          v18 = MEMORY[0x1E69E6530];
          *(v17 + 16) = xmmword_190DD1DA0;
          v19 = MEMORY[0x1E69E65A8];
          *(v17 + 56) = v18;
          *(v17 + 64) = v19;
          *(v17 + 32) = v15;
          *(v17 + 96) = v18;
          *(v17 + 104) = v19;
          *(v17 + 72) = v16;
          v20 = (*(v4 + 16))(v6, v10, v3);
          v21 = CKFrameworkBundle(v20);
          sub_190D51980();
          sub_190D56F30();
          sub_190D56EE0();

          (*(v4 + 8))(v10, v3);
          v22 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v23 = sub_190D56ED0();

          v24 = [v22 initWithString_];

          return v24;
        }
      }

      __break(1u);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t CKConversation.showUnreadIndicator.getter()
{
  v1 = [v0 chat];
  if (v1 && (v2 = v1, v3 = [v1 unreadMessageCount], v2, v3 > 0))
  {
    return 1;
  }

  else
  {
    return [v0 shouldShowSatelliteSummary];
  }
}

id sub_190B286AC(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53838, &unk_190DF1300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1DA0;
  *(inited + 32) = sub_190D56F10();
  *(inited + 40) = v3;
  v4 = sub_190B274B0(a1 & 1);
  v5 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 80) = sub_190D56F10();
  *(inited + 88) = v7;
  v8 = sub_190B275A4(a1 & 1);
  *(inited + 120) = v5;
  *(inited + 96) = v8;
  *(inited + 104) = v9;
  sub_190820FDC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DF00, &qword_190DD5610);
  swift_arrayDestroy();
  v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v11 = sub_190D56ED0();
  v12 = sub_190D56D60();

  v13 = [v10 initWithDomain:v11 code:1 userInfo:v12];

  return v13;
}

id sub_190B28828()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
  sub_190D56320();
  v1 = sub_190CEE020();

  v2 = [v0 imagePickerForGroupIdentity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DBF0, &unk_190DF3BB0);
  sub_190D55210();
  [v2 setDelegate_];

  sub_190D55210();
  [v2 setPresenterDelegate_];

  v3 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  return v3;
}

id sub_190B28AC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupIdentityPickerViewController.GroupIdentityPickerCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190B28B34(uint64_t a1)
{
  sub_1908CB130(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_190B28C10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190B28E4C(v2, v5);
  v6 = type metadata accessor for GroupIdentityPickerViewController.GroupIdentityPickerCoordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_190B28E4C(v5, v7 + OBJC_IVAR____TtCV7ChatKit33GroupIdentityPickerViewController30GroupIdentityPickerCoordinator_parent);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_190B28EB0(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_190B28CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B28F0C(&qword_1EAD5DBF8, &unk_190DF3B34);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190B28D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190B28F0C(&qword_1EAD5DBF8, &unk_190DF3B34);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190B28DD4(uint64_t a1)
{
  sub_190B28F0C(&qword_1EAD5DBF8, &unk_190DF3B34);
  sub_190D55130();
  __break(1u);
}

uint64_t sub_190B28E4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupIdentityPickerViewController(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B28EB0(uint64_t a1)
{
  v2 = type metadata accessor for GroupIdentityPickerViewController(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190B28F0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GroupIdentityPickerViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_190B28F50(void *a1)
{
  if (qword_1EAD51A68 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9DC20);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "dismissIdentityPicker", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

id sub_190B29050(void *a1)
{
  if (qword_1EAD51A68 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9DC20);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "visualIdentityPickerDidCancel", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  return sub_190B28F50(a1);
}

id sub_190B29140(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for GroupIdentityPickerViewController(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51A68 != -1)
  {
    swift_once();
  }

  v9 = sub_190D53040();
  __swift_project_value_buffer(v9, qword_1EAD9DC20);
  v10 = sub_190D53020();
  v11 = sub_190D576C0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_19020E000, v10, v11, "visualIdentityPicker.didUpdatePhotoFor", v12, 2u);
    MEMORY[0x193AF7A40](v12, -1, -1);
  }

  sub_190B28E4C(v3 + OBJC_IVAR____TtCV7ChatKit33GroupIdentityPickerViewController30GroupIdentityPickerCoordinator_parent, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
  sub_190D56320();
  sub_190B28EB0(v8);
  v13 = v17;
  v14 = *&v17[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

  sub_1908F7D88(a2);
  return sub_190B28F50(a1);
}

void sub_190B293D8(uint64_t a1, unint64_t a2, char a3)
{
  v5 = [v3 associatedChatItems];
  sub_190B29FF8();
  v6 = sub_190D57180();

  v47[0] = MEMORY[0x1E69E7CC0];
  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_27:
    v8 = sub_190D581C0();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_28:
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_28;
  }

LABEL_3:
  v4 = 0;
  v45 = (v6 & 0xC000000000000001);
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    v40 = v9;
    v10 = v4;
    while (1)
    {
      if (v45)
      {
        v11 = MEMORY[0x193AF3B90](v10, v6);
      }

      else
      {
        if (v10 >= *(v7 + 16))
        {
          goto LABEL_26;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
        goto LABEL_5;
      }

      v14 = [v13 associatedMessageGUID];
      if (!v14)
      {
        goto LABEL_5;
      }

      v15 = v14;
      v16 = v7;
      v17 = v6;
      v18 = sub_190D56F10();
      v20 = v19;

      if (v18 == a1 && v20 == a2)
      {
        break;
      }

      v22 = sub_190D58760();

      v6 = v17;
      v7 = v16;
      if (v22)
      {
        goto LABEL_20;
      }

LABEL_5:

      ++v10;
      if (v4 == v8)
      {
        v9 = v40;
        goto LABEL_29;
      }
    }

    v6 = v17;
LABEL_20:
    MEMORY[0x193AF29E0](v23);
    if (*((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    v9 = v47[0];
    v7 = v16;
  }

  while (v4 != v8);
LABEL_29:

  if (!(v9 >> 62))
  {
    v24 = v42;
    v25 = a3;
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

LABEL_38:

LABEL_39:
    v30 = [v24 chatItemGUIDsOfHiddenTapbackPiles];
    if (v30)
    {
      v31 = v30;
      v32 = sub_190D57410();
    }

    else
    {
      v32 = MEMORY[0x1E69E7CD0];
    }

    v4 = a2;
    v47[2] = v32;
    if (v25)
    {
      sub_190D52690();
      sub_1908AA174(v47, a1, a2);

      if (qword_1EAD51DE8 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_56;
    }

    sub_1908AE240(a1, a2);

    if (qword_1EAD51DE8 != -1)
    {
      swift_once();
    }

    v39 = sub_190D53040();
    __swift_project_value_buffer(v39, qword_1EAD9E2D0);
    sub_190D52690();
    v34 = sub_190D53020();
    v35 = sub_190D576C0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_19021D9F8(a1, a2, v47);
      v38 = "Showing associated cell for parentChatItemGUID:%s";
LABEL_50:
      _os_log_impl(&dword_19020E000, v34, v35, v38, v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x193AF7A40](v37, -1, -1);
      MEMORY[0x193AF7A40](v36, -1, -1);
    }

    goto LABEL_51;
  }

  v24 = v42;
  v25 = a3;
  if (!sub_190D581C0())
  {
    goto LABEL_38;
  }

LABEL_31:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x193AF3B90](0, v9);
LABEL_34:
    v27 = v26;

    v28 = [v24 cellForAssociatedChatItem_];
    if (v28)
    {
      v29 = v28;
      [v24 configureTranscriptCell:v28 hidden:v25 & 1];
    }

    else
    {
    }

    goto LABEL_39;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v9 + 32);
    goto LABEL_34;
  }

  __break(1u);
LABEL_56:
  swift_once();
LABEL_44:
  v33 = sub_190D53040();
  __swift_project_value_buffer(v33, qword_1EAD9E2D0);
  sub_190D52690();
  v34 = sub_190D53020();
  v35 = sub_190D576C0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v47[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_19021D9F8(a1, v4, v47);
    v38 = "Hiding associated cell for parentChatItemGUID:%s";
    goto LABEL_50;
  }

LABEL_51:

  v46 = sub_190D57400();

  [v24 setChatItemGUIDsOfHiddenTapbackPiles_];
}

void sub_190B29A14(char a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = [v4 chatItems];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = sub_190D56ED0();
  v25 = [v9 __ck_chatItemWithGUID_];

  if (v25)
  {
    v11 = v25;
    v12 = [v4 cellForChatItem_];
    if (v12)
    {
      v13 = v12;
      [v4 configureTranscriptCell:v13 hidden:a1 & 1];
    }
  }

  v14 = [v4 hiddenChatItemGUIDs];
  if (!v14)
  {
    v28 = MEMORY[0x1E69E7CD0];
    if (a1)
    {
      goto LABEL_8;
    }

LABEL_13:
    sub_1908AE240(a2, a3);

    if (qword_1EAD51DE8 != -1)
    {
      swift_once();
    }

    v23 = sub_190D53040();
    __swift_project_value_buffer(v23, qword_1EAD9E2D0);
    sub_190D52690();
    v18 = sub_190D53020();
    v19 = sub_190D576C0();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_18;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_19021D9F8(a2, a3, &v27);
    v22 = "Showing cell for chatItemGUID:%s";
    goto LABEL_17;
  }

  v15 = v14;
  v16 = sub_190D57410();

  v28 = v16;
  if ((a1 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  sub_190D52690();
  sub_1908AA174(&v27, a2, a3);

  if (qword_1EAD51DE8 != -1)
  {
    swift_once();
  }

  v17 = sub_190D53040();
  __swift_project_value_buffer(v17, qword_1EAD9E2D0);
  sub_190D52690();
  v18 = sub_190D53020();
  v19 = sub_190D576C0();

  if (!os_log_type_enabled(v18, v19))
  {
    goto LABEL_18;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v27 = v21;
  *v20 = 136315138;
  *(v20 + 4) = sub_19021D9F8(a2, a3, &v27);
  v22 = "Hiding cell for chatItemGUID:%s";
LABEL_17:
  _os_log_impl(&dword_19020E000, v18, v19, v22, v20, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v21);
  MEMORY[0x193AF7A40](v21, -1, -1);
  MEMORY[0x193AF7A40](v20, -1, -1);
LABEL_18:

  v24 = sub_190D57400();

  [v4 setHiddenChatItemGUIDs_];
}

uint64_t sub_190B29E48()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E2D0);
  __swift_project_value_buffer(v0, qword_1EAD9E2D0);
  sub_190D53010();
  return sub_190D53030();
}

void sub_190B29EB4(void *a1, char a2)
{
  if (!a1)
  {
    return;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v13 = a1;
    v6 = [v5 balloonView];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 setHidden_];
  }

  else
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {
      return;
    }

    v10 = v9;
    v13 = a1;
    if ([v10 emphasisState])
    {
      v8 = v13;
      goto LABEL_6;
    }

    v11 = [v10 contentView];
    v7 = v11;
    v12 = 1.0;
    if (a2)
    {
      v12 = 0.0;
    }

    [v11 setAlpha_];
  }

  v8 = v7;
LABEL_6:
}

unint64_t sub_190B29FF8()
{
  result = qword_1EAD44F88;
  if (!qword_1EAD44F88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD44F88);
  }

  return result;
}

id GroupTypingAvatarAnimationCoordinator.__allocating_init(toCell:fromTypingCell:hostingView:fromFrame:senderContact:completion:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v11 = v10;
  v44 = v11;
  v22 = objc_allocWithZone(v11);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v45 = a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v23 = &v22[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_fromFrame];
  *v23 = a7;
  v23[1] = a8;
  v23[2] = a9;
  v23[3] = a10;
  *&v22[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_senderContact] = a4;
  v24 = &v22[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_completion];
  *v24 = a5;
  *(v24 + 1) = a6;
  v25 = a4;
  sub_190D50920();
  v26 = [a3 superview];
  if (v26)
  {
    v27 = v26;
    [v26 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
  }

  else
  {
    v29 = 0.0;
    v31 = 0.0;
    v33 = 0.0;
    v35 = 0.0;
  }

  v36 = [objc_allocWithZone(type metadata accessor for OverlayView()) initWithFrame_];
  v37 = OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView;
  *&v22[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView] = v36;
  v38 = [objc_allocWithZone(CKAvatarView) initWithFrame_];
  v39 = OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView;
  *&v22[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView] = v38;
  [v38 setContact_];
  [*&v22[v37] addSubview_];
  v40 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:370.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  v41 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v40 timingParameters:0.5];

  *&v22[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator] = v41;
  v46.receiver = v22;
  v46.super_class = v44;
  v42 = objc_msgSendSuper2(&v46, sel_init);

  return v42;
}

id GroupTypingAvatarAnimationCoordinator.init(toCell:fromTypingCell:hostingView:fromFrame:senderContact:completion:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v14 = sub_190B2BB10(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);

  return v14;
}

id GroupTypingAvatarAnimationCoordinator.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView] removeFromSuperview];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupTypingAvatarAnimationCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190B2A604()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4 && (v5 = v4, v6 = [v4 contactImageView], v5, v6))
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = [v3 superview];
        if (v9)
        {
          v10 = v9;
          [v9 insertSubview:*&v1[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView] aboveSubview:v3];
        }

        [*&v1[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView] layoutIfNeeded];
        [v6 setHidden_];
        v11 = swift_unknownObjectWeakLoadStrong();
        v12 = [v11 contactImageStrokeView];

        [v12 setHidden_];
        if (qword_1EAD51DF0 != -1)
        {
          swift_once();
        }

        v13 = sub_190D53040();
        __swift_project_value_buffer(v13, qword_1EAD9E2E8);
        v14 = sub_190D53020();
        v15 = sub_190D576C0();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_19020E000, v14, v15, "About to begin new avatar animation.", v16, 2u);
          MEMORY[0x193AF7A40](v16, -1, -1);
        }

        v17 = OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator;
        v18 = *&v1[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator];
        v19 = swift_allocObject();
        v19[2] = v8;
        v19[3] = v6;
        v19[4] = v1;
        v52 = sub_190B2BDC4;
        v53 = v19;
        aBlock = MEMORY[0x1E69E9820];
        v49 = 1107296256;
        v50 = sub_190840E6C;
        v51 = &block_descriptor_84;
        v20 = _Block_copy(&aBlock);
        v21 = v18;
        osloga = v8;
        v22 = v6;
        v23 = v1;

        [v21 addAnimations_];
        _Block_release(v20);

        v24 = *&v1[v17];
        v25 = swift_allocObject();
        *(v25 + 16) = v23;
        v52 = sub_190B2BDD0;
        v53 = v25;
        aBlock = MEMORY[0x1E69E9820];
        v49 = 1107296256;
        v50 = sub_190840E6C;
        v51 = &block_descriptor_6_8;
        v26 = _Block_copy(&aBlock);
        v27 = v23;
        v28 = v24;

        [v28 addAnimations:v26 delayFactor:0.0];
        _Block_release(v26);

        v29 = *&v1[v17];
        v30 = swift_allocObject();
        *(v30 + 16) = v22;
        *(v30 + 24) = v27;
        v52 = sub_190B2BDD8;
        v53 = v30;
        aBlock = MEMORY[0x1E69E9820];
        v49 = 1107296256;
        v50 = sub_190893958;
        v51 = &block_descriptor_12_6;
        v31 = _Block_copy(&aBlock);
        v32 = v22;
        v33 = v27;
        v34 = v29;

        [v34 addCompletion_];
        _Block_release(v31);

        [*&v1[v17] startAnimation];
        return;
      }
    }

    else
    {
      v6 = v3;
    }
  }

  if (qword_1EAD51DF0 != -1)
  {
    swift_once();
  }

  v35 = sub_190D53040();
  __swift_project_value_buffer(v35, qword_1EAD9E2E8);
  v36 = v1;
  oslog = sub_190D53020();
  v37 = sub_190D576C0();

  if (os_log_type_enabled(oslog, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412802;
    v40 = swift_unknownObjectWeakLoadStrong();
    *(v38 + 4) = v40;
    *v39 = v40;
    *(v38 + 12) = 2112;
    v41 = swift_unknownObjectWeakLoadStrong();
    if (v41)
    {
      v42 = v41;
      v43 = [v41 contactImageView];

      v44 = v43;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    *(v38 + 14) = v43;
    v39[1] = v44;
    *(v38 + 22) = 2112;
    v45 = swift_unknownObjectWeakLoadStrong();
    *(v38 + 24) = v45;
    v39[2] = v45;
    _os_log_impl(&dword_19020E000, oslog, v37, "Bailing animation early, missing hostingView: %@, destinationContactView: %@, or toCell: %@.", v38, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54610, &qword_190DD6010);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v39, -1, -1);
    MEMORY[0x193AF7A40](v38, -1, -1);
  }
}

id sub_190B2AC2C(void *a1, id a2, uint64_t a3)
{
  [a2 frame];
  [a1 convertRect:*(a3 + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView) toCoordinateSpace:?];
  v6 = *(a3 + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView);
  [a2 center];
  v8 = v7;
  [v6 center];
  [v6 setCenter_];
  [v6 bounds];
  [v6 setBounds_];

  return [v6 layoutIfNeeded];
}

void sub_190B2AD24(char *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        v24 = [v6 contactImageView];

        if (v24)
        {
          [v3 performAvatarAnimation];
          if (qword_1EAD51DF0 != -1)
          {
            swift_once();
          }

          v8 = sub_190D53040();
          __swift_project_value_buffer(v8, qword_1EAD9E2E8);
          v9 = sub_190D53020();
          v10 = sub_190D576C0();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            *v11 = 0;
            _os_log_impl(&dword_19020E000, v9, v10, "Performing avatar move animation.", v11, 2u);
            MEMORY[0x193AF7A40](v11, -1, -1);
          }

          [v24 frame];
          [v5 convertRect:*&a1[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView] toCoordinateSpace:?];
          v12 = *&a1[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView];
          [v12 setFrame_];
          [v12 layoutIfNeeded];

          goto LABEL_19;
        }
      }
    }
  }

  if (qword_1EAD51DF0 != -1)
  {
    swift_once();
  }

  v13 = sub_190D53040();
  __swift_project_value_buffer(v13, qword_1EAD9E2E8);
  v14 = a1;
  v24 = sub_190D53020();
  v15 = sub_190D576C0();

  if (os_log_type_enabled(v24, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412802;
    v18 = swift_unknownObjectWeakLoadStrong();
    *(v16 + 4) = v18;
    *v17 = v18;
    *(v16 + 12) = 2112;
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v21 = [v19 contactImageView];

      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v16 + 14) = v21;
    v17[1] = v22;
    *(v16 + 22) = 2112;
    v23 = swift_unknownObjectWeakLoadStrong();
    *(v16 + 24) = v23;
    v17[2] = v23;
    _os_log_impl(&dword_19020E000, v24, v15, "Bailing move animation early, missing fromTypingCell: %@, destinationContactView: %@, or toCell: %@.", v16, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54610, &qword_190DD6010);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v17, -1, -1);
    MEMORY[0x193AF7A40](v16, -1, -1);
  }

LABEL_19:
}

uint64_t sub_190B2B088(uint64_t result, void *a2, uint64_t a3)
{
  if (!result)
  {
    if (qword_1EAD51DF0 != -1)
    {
      swift_once();
    }

    v5 = sub_190D53040();
    __swift_project_value_buffer(v5, qword_1EAD9E2E8);
    v6 = sub_190D53020();
    v7 = sub_190D576C0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v6, v7, "All avatar animations complete. Removing overlay view.", v8, 2u);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    [a2 setHidden_];
    Strong = swift_unknownObjectWeakLoadStrong();
    v10 = [Strong contactImageStrokeView];

    [v10 setHidden_];
    v11 = [*(a3 + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView) removeFromSuperview];
    return (*(a3 + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_completion))(v11);
  }

  return result;
}

void sub_190B2B248()
{
  v1 = OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator;
  if ([*&v0[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator] state] == 1)
  {
    v2 = *&v0[v1];
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v7[4] = sub_190B2BDE0;
    v7[5] = v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_190840E6C;
    v7[3] = &block_descriptor_18;
    v4 = _Block_copy(v7);
    v5 = v2;
    v6 = v0;

    [v5 addAnimations:v4 delayFactor:0.0];
    _Block_release(v4);
  }
}

void sub_190B2B350(char *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong performAvatarAnimation];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        v24 = [v6 contactImageView];

        if (v24)
        {
          if (qword_1EAD51DF0 != -1)
          {
            swift_once();
          }

          v8 = sub_190D53040();
          __swift_project_value_buffer(v8, qword_1EAD9E2E8);
          v9 = sub_190D53020();
          v10 = sub_190D576C0();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            *v11 = 0;
            _os_log_impl(&dword_19020E000, v9, v10, "Performing avatar move animation.", v11, 2u);
            MEMORY[0x193AF7A40](v11, -1, -1);
          }

          [v24 frame];
          [v5 convertRect:*&a1[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView] toCoordinateSpace:?];
          v12 = *&a1[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView];
          [v12 setFrame_];
          [v12 layoutIfNeeded];

          goto LABEL_18;
        }
      }
    }
  }

  if (qword_1EAD51DF0 != -1)
  {
    swift_once();
  }

  v13 = sub_190D53040();
  __swift_project_value_buffer(v13, qword_1EAD9E2E8);
  v14 = a1;
  v24 = sub_190D53020();
  v15 = sub_190D576C0();

  if (os_log_type_enabled(v24, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412802;
    v18 = swift_unknownObjectWeakLoadStrong();
    *(v16 + 4) = v18;
    *v17 = v18;
    *(v16 + 12) = 2112;
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v21 = [v19 contactImageView];

      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v16 + 14) = v21;
    v17[1] = v22;
    *(v16 + 22) = 2112;
    v23 = swift_unknownObjectWeakLoadStrong();
    *(v16 + 24) = v23;
    v17[2] = v23;
    _os_log_impl(&dword_19020E000, v24, v15, "Bailing move animation early, missing fromTypingCell: %@, destinationContactView: %@, or toCell: %@.", v16, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54610, &qword_190DD6010);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v17, -1, -1);
    MEMORY[0x193AF7A40](v16, -1, -1);
  }

LABEL_18:
}

id sub_190B2B700()
{
  v1 = v0;
  v2 = OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator;
  result = [*(v0 + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator) state];
  if (result == 1)
  {
    if (qword_1EAD51DF0 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9E2E8);
    v5 = sub_190D53020();
    v6 = sub_190D576C0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, v6, "Asked to end the animation early.", v7, 2u);
      MEMORY[0x193AF7A40](v7, -1, -1);
    }

    [*(v1 + v2) stopAnimation_];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = [Strong contactImageView];

      if (v10)
      {
        [v10 setHidden_];
      }
    }

    v11 = [*(v1 + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView) removeFromSuperview];
    return (*(v1 + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_completion))(v11);
  }

  return result;
}

id GroupTypingAvatarAnimationCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_190B2BA6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverlayView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190B2BAA4()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E2E8);
  __swift_project_value_buffer(v0, qword_1EAD9E2E8);
  sub_190D53010();
  return sub_190D53030();
}

id sub_190B2BB10(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v19 = &v10[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_fromFrame];
  *v19 = a7;
  v19[1] = a8;
  v19[2] = a9;
  v19[3] = a10;
  *&v10[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_senderContact] = a4;
  v20 = &v10[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_completion];
  *v20 = a5;
  *(v20 + 1) = a6;
  v21 = a4;
  sub_190D50920();
  v22 = [a3 superview];
  if (v22)
  {
    v23 = v22;
    [v22 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
  }

  else
  {
    v25 = 0.0;
    v27 = 0.0;
    v29 = 0.0;
    v31 = 0.0;
  }

  v32 = [objc_allocWithZone(type metadata accessor for OverlayView()) initWithFrame_];
  v33 = OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView;
  *&v10[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView] = v32;
  v34 = [objc_allocWithZone(CKAvatarView) initWithFrame_];
  v35 = OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView;
  *&v10[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_avatarView] = v34;
  [v34 setContact_];
  [*&v10[v33] addSubview_];
  v36 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:370.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  v37 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v36 timingParameters:0.5];

  *&v10[OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_animator] = v37;
  v39.receiver = v10;
  v39.super_class = type metadata accessor for GroupTypingAvatarAnimationCoordinator();
  return objc_msgSendSuper2(&v39, sel_init);
}

double sub_190B2BEF8(uint64_t a1)
{
  result = *v1;
  if (a1 >= 1)
  {
    return fmin(sub_190B2BF8C(0, a1, result), 86400.0);
  }

  return result;
}

void sub_190B2BF34(uint64_t a1)
{
  v2 = *(*(v1 + 8) + 16);
  if (a1 >= v2)
  {
    fmin(sub_190B2BF8C(0, a1 - v2, *v1), 86400.0);
  }

  else if (a1 < 0)
  {
    __break(1u);
  }
}

double sub_190B2BF8C(char a1, unint64_t a2, double a3)
{
  result = -a3;
  if ((a1 & 1) == 0)
  {
    result = a3;
  }

  v5 = (*&a3 >> 52) & 0x7FFLL;
  if (v5 != 2047 && v5 | *&a3 & 0xFFFFFFFFFFFFFLL)
  {
    if (a2 >= -1022)
    {
      if (a2 >= 1024)
      {
        if (a2 >= 0xBFD)
        {
          a2 = 3069;
        }

        do
        {
          a2 -= 1023;
          result = result * 8.98846567e307;
        }

        while (a2 > 0x3FF);
      }
    }

    else
    {
      v6 = -3066;
      if (a2 > 0xFFFFFFFFFFFFF406)
      {
        v6 = a2;
      }

      v7 = v6 + 1022;
      result = result * 2.22507386e-308;
      v8 = v6 + 2044;
      v9 = __CFADD__(a2, 2044);
      if (a2 >= 0xFFFFFFFFFFFFF804)
      {
        a2 = v7;
      }

      else
      {
        a2 = v8;
      }

      if (!v9)
      {
        result = result * 2.22507386e-308;
      }
    }

    return result * COERCE_DOUBLE(((a2 << 52) + 0x3FF0000000000000) & 0x7FF0000000000000);
  }

  return result;
}

uint64_t sub_190B2C058(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEB000000006C616ELL;
  if (a1 == 5)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x6F69746F6D6F7270;
  }

  if (a1 == 5)
  {
    v4 = 0x8000000190E5AD10;
  }

  v6 = 0x8000000190E5ACD0;
  v7 = 0xD000000000000016;
  if (v2 == 3)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x8000000190E5ACF0;
  }

  if (v2 > 4)
  {
    v6 = v4;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x536E776F6E6B6E75;
  v9 = 0xEE00737265646E65;
  if (v2 != 1)
  {
    v8 = 0xD000000000000014;
    v9 = 0x8000000190E5ACB0;
  }

  if (v2)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x65757373496F6ELL;
  }

  if (v2 <= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEE00737265646E65;
        if (v10 != 0x536E776F6E6B6E75)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v12 = 0x8000000190E5ACB0;
        if (v10 != 0xD000000000000014)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x65757373496F6ELL)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 != 3)
      {
        v12 = 0x8000000190E5ACF0;
        if (v10 != 0xD000000000000016)
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      v12 = 0x8000000190E5ACD0;
      goto LABEL_33;
    }

    if (a2 == 5)
    {
      v12 = 0x8000000190E5AD10;
LABEL_33:
      if (v10 != 0xD000000000000013)
      {
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    v12 = 0xEB000000006C616ELL;
    if (v10 != 0x6F69746F6D6F7270)
    {
LABEL_44:
      v13 = sub_190D58760();
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v11 != v12)
  {
    goto LABEL_44;
  }

  v13 = 1;
LABEL_45:

  return v13 & 1;
}

uint64_t sub_190B2C274(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x4C74736575716572;
    }

    else
    {
      v3 = 7364973;
    }

    if (v2)
    {
      v4 = 0xEF6E6F697461636FLL;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x636F4C6572616873;
    v4 = 0xED00006E6F697461;
  }

  else
  {
    v3 = 0xD000000000000013;
    if (v2 == 3)
    {
      v4 = 0x8000000190E5AC60;
    }

    else
    {
      v4 = 0x8000000190E5AC80;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x4C74736575716572;
    }

    else
    {
      v6 = 7364973;
    }

    if (a2)
    {
      v5 = 0xEF6E6F697461636FLL;
    }

    else
    {
      v5 = 0xE300000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xED00006E6F697461;
    if (v3 != 0x636F4C6572616873)
    {
LABEL_31:
      v7 = sub_190D58760();
      goto LABEL_32;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0x8000000190E5AC60;
    }

    else
    {
      v5 = 0x8000000190E5AC80;
    }

    if (v3 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_190B2C440(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000012;
  v3 = "ers";
  v4 = a1;
  v5 = 0xD000000000000019;
  if (a1 == 4)
  {
    v5 = 0xD000000000000010;
    v6 = "com.apple.MobileSMS";
  }

  else
  {
    v6 = "com.apple.madrid";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "com.apple.Messages";
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 1)
  {
    v9 = 0xD000000000000013;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (v4 == 1)
  {
    v10 = "com.apple.messages";
  }

  else
  {
    v10 = "com.apple.mobileSMS";
  }

  if (!v4)
  {
    v9 = 0xD000000000000012;
    v10 = "ers";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000013;
      v3 = "com.apple.Messages";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000010;
      v3 = "com.apple.MobileSMS";
    }

    else
    {
      v2 = 0xD000000000000019;
      v3 = "com.apple.madrid";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000013;
      v3 = "com.apple.messages";
    }

    else
    {
      v3 = "com.apple.mobileSMS";
    }
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_190D58760();
  }

  return v12 & 1;
}

uint64_t sub_190B2C5A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF7473694C746E61;
  v3 = 0x7069636974726170;
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = 0x736E61725479656BLL;
    v14 = 0xEF79636E65726170;
    v15 = 0x746E6F4365766173;
    v16 = 0xEB00000000746361;
    if (a1 != 8)
    {
      v15 = 0x6E6F436B636F6C62;
      v16 = 0xEC00000074636174;
    }

    if (a1 != 7)
    {
      v13 = v15;
      v14 = v16;
    }

    v17 = 0xE500000000000000;
    v18 = 0x616964656DLL;
    if (a1 != 5)
    {
      v18 = 0x64616F6C6E776F64;
      v17 = 0xEE00737465737341;
    }

    if (a1 <= 6u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 6)
    {
      v12 = v17;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0x6950656C646E6168;
    v6 = 0xEC00000072656B63;
    v7 = 0xE800000000000000;
    v8 = 0x6E6F697461636F6CLL;
    if (a1 != 3)
    {
      v8 = 0xD000000000000014;
      v7 = 0x8000000190E5AE40;
    }

    if (a1 != 2)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0xD000000000000014;
    v10 = 0x8000000190E5AE00;
    if (a1)
    {
      v9 = 0x7069636974726170;
      v10 = 0xEF7473694C746E61;
    }

    if (a1 <= 1u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x616964656DLL)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0xEE00737465737341;
        if (v11 != 0x64616F6C6E776F64)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 7)
    {
      v2 = 0xEF79636E65726170;
      if (v11 != 0x736E61725479656BLL)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 == 8)
    {
      v2 = 0xEB00000000746361;
      if (v11 != 0x746E6F4365766173)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v3 = 0x6E6F436B636F6C62;
    v2 = 0xEC00000074636174;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEC00000072656B63;
        if (v11 != 0x6950656C646E6168)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      }

      if (a2 == 3)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6E6F697461636F6CLL)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      }

      v19 = "conversationSettings";
LABEL_47:
      v2 = (v19 - 32) | 0x8000000000000000;
      if (v11 != 0xD000000000000014)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (!a2)
    {
      v19 = "conversationIdentity";
      goto LABEL_47;
    }
  }

  if (v11 != v3)
  {
LABEL_54:
    v20 = sub_190D58760();
    goto LABEL_55;
  }

LABEL_51:
  if (v12 != v2)
  {
    goto LABEL_54;
  }

  v20 = 1;
LABEL_55:

  return v20 & 1;
}

uint64_t sub_190B2C8F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702260588;
  v6 = 0xE900000000000073;
  if (a1 != 6)
  {
    v5 = 0x6867696C746F7073;
    v4 = 0xE900000000000074;
  }

  v7 = 0x6B726F7765726966;
  if (a1 != 4)
  {
    v7 = 0x73726573616CLL;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x69747465666E6F63;
  if (a1 != 2)
  {
    v9 = 1869112165;
    v8 = 0xE400000000000000;
  }

  v10 = 0x74617262656C6563;
  if (a1)
  {
    v3 = 0xEB000000006E6F69;
  }

  else
  {
    v10 = 0x6E6F6F6C6C6162;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE400000000000000;
        if (v11 != 1702260588)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE900000000000074;
        if (v11 != 0x6867696C746F7073)
        {
LABEL_45:
          v14 = sub_190D58760();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE900000000000073;
      if (v11 != 0x6B726F7765726966)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x73726573616CLL)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x69747465666E6F63)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1869112165)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEB000000006E6F69;
    if (v11 != 0x74617262656C6563)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6E6F6F6C6C6162)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_190B2CB64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064657463;
  v3 = 0x656C6553656E6F6ELL;
  v4 = a1;
  v5 = 0xD000000000000014;
  v6 = 0xEE00534D53656761;
  if (a1 != 4)
  {
    v6 = 0xEE00534352656761;
  }

  if (a1 == 3)
  {
    v7 = 0x8000000190E5AED0;
  }

  else
  {
    v5 = 0x7373654D74786574;
    v7 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6567617373656D69;
  if (a1 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = 0x8000000190E5AEB0;
  }

  if (!a1)
  {
    v9 = 0x656C6553656E6F6ELL;
    v8 = 0xEC00000064657463;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x8000000190E5AED0;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v12 = 0x534D53656761;
      }

      else
      {
        v12 = 0x534352656761;
      }

      v2 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      if (v10 != 0x7373654D74786574)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_31;
  }

  if (!a2)
  {
LABEL_27:
    if (v10 != v3)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (a2 != 1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000190E5AEB0;
    goto LABEL_27;
  }

  v2 = 0xE800000000000000;
  if (v10 != 0x6567617373656D69)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (v11 != v2)
  {
LABEL_33:
    v13 = sub_190D58760();
    goto LABEL_34;
  }

  v13 = 1;
LABEL_34:

  return v13 & 1;
}

uint64_t sub_190B2CD58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000656C637269;
  v3 = 0x632E6E6F73726570;
  v4 = a1;
  v5 = 0x72656B63697473;
  if (a1 == 6)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x6275622E74786574;
    v6 = 0xEB00000000656C62;
  }

  v7 = 0x8000000190E5AF50;
  v8 = 0xD000000000000011;
  if (a1 != 4)
  {
    v8 = 0x742E656C62627562;
    v7 = 0xEE006B6361627061;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0x7269632E6F666E69;
  v10 = 0xEB00000000656C63;
  if (a1 != 2)
  {
    v9 = 0xD000000000000010;
    v10 = 0x8000000190E5AF30;
  }

  v11 = 0xE500000000000000;
  v12 = 0x6B636F6C63;
  if (!a1)
  {
    v12 = 0x632E6E6F73726570;
    v11 = 0xED0000656C637269;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v8;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x72656B63697473)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0xEB00000000656C62;
        if (v13 != 0x6275622E74786574)
        {
          goto LABEL_43;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x8000000190E5AF50;
      if (v13 != 0xD000000000000011)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v2 = 0xEE006B6361627061;
      if (v13 != 0x742E656C62627562)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEB00000000656C63;
        if (v13 != 0x7269632E6F666E69)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v3 = 0xD000000000000010;
      v2 = 0x8000000190E5AF30;
    }

    else if (a2)
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x6B636F6C63)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (v13 != v3)
    {
LABEL_43:
      v15 = sub_190D58760();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v14 != v2)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

uint64_t sub_190B2CFE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x72656B63697473;
    }

    else
    {
      v5 = 0x656C756465686373;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E6F697463616572;
    }

    else
    {
      v5 = 0x6669636570736E75;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000646569;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x72656B63697473;
  if (a2 != 2)
  {
    v8 = 0x656C756465686373;
    v7 = 0xE900000000000064;
  }

  if (a2)
  {
    v3 = 0x6E6F697463616572;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_190D58760();
  }

  return v11 & 1;
}

void sub_190B2D138(uint64_t *a1@<X8>)
{
  v107 = a1;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18, &unk_190DF3100);
  v129 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v107 - v1;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8, &unk_190DF43B0);
  v2 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v110 = &v107 - v3;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20, &qword_190DF3110);
  v4 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v6 = &v107 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28, &qword_190DF43C0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v107 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_190DDA780;
  v11 = objc_opt_self();
  v112 = @"showAppStoreGenreInSendMenu";
  v111 = [v11 standardUserDefaults];
  v130 = type metadata accessor for UserDefaultItem(0);
  v12 = objc_allocWithZone(v130);
  v13 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *(v13 + 12) = 256;
  *v13 = 0;
  v14 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v135 = 0u;
  v136 = 0u;
  sub_19023C414(&v135, v134);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0, &unk_190DD9790);
  sub_190D538D0();
  sub_19021E7D8(&v135);
  v16 = *(v8 + 32);
  v118 = v10;
  v17 = v10;
  v18 = v110;
  v120 = v7;
  v119 = v8 + 32;
  v115 = v16;
  v16(&v12[v15], v17, v7);
  v19 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v135 = 0;
  sub_190D538D0();
  v20 = *(v4 + 32);
  v121 = v6;
  v122 = v4 + 32;
  v114 = v20;
  v20(&v12[v19], v6, v124);
  v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v21 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v135) = 0;
  sub_190D538D0();
  v22 = *(v2 + 32);
  v23 = v127;
  v22(&v12[v21], v18, v127);
  v24 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v135 = 0;
  *(&v135 + 1) = 0xE000000000000000;
  v25 = v125;
  sub_190D538D0();
  v26 = *(v129 + 32);
  v129 += 32;
  v113 = v26;
  v26(&v12[v24], v25, v126);
  v27 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v135) = 0;
  sub_190D538D0();
  v22(&v12[v27], v18, v23);
  v28 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v135) = 0;
  sub_190D538D0();
  v123 = v2 + 32;
  v117 = v22;
  v22(&v12[v28], v18, v23);
  v29 = v111;
  *&v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v111;
  v30 = v112;
  v31 = sub_190D56F10();
  v33 = v32;
  v34 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v34 = v31;
  v34[1] = v32;
  v35 = swift_allocObject();
  *(v35 + 2) = v29;
  *(v35 + 3) = v31;
  *(v35 + 4) = v33;
  v36 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v36 = sub_190B2426C;
  v36[1] = v35;
  swift_beginAccess();
  *v13 = 0;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *(v13 + 12) = 256;
  swift_beginAccess();
  v37 = *v14;
  v38 = v14[1];
  *v14 = 0;
  v14[1] = 0;
  v39 = v29;
  sub_190D52690();
  sub_19022123C(v37, v38);
  v133.receiver = v12;
  v133.super_class = v130;
  v40 = objc_msgSendSuper2(&v133, sel_init);
  v41 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v40 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v42 = v40;
  sub_190B224E8();
  *(v40 + v41) = 1;
  sub_190D52690();
  v43 = sub_190D56ED0();

  [v39 addObserver:v42 forKeyPath:v43 options:1 context:0];

  *(v128 + 32) = v42;
  v108 = sub_190D56F10();
  v112 = v44;
  v45 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v111 = "ers";
  v46 = sub_190D56ED0();
  v47 = [v45 initWithSuiteName_];

  v109 = v47;
  if (v47)
  {
    v48 = objc_allocWithZone(v130);
    v49 = &v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
    *(v49 + 1) = 0;
    *(v49 + 2) = 0;
    *(v49 + 12) = 256;
    *v49 = 0;
    v50 = &v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
    *v50 = 0;
    v50[1] = 0;
    v51 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
    v135 = 0u;
    v136 = 0u;
    sub_19023C414(&v135, v134);
    v52 = v118;
    sub_190D538D0();
    sub_19021E7D8(&v135);
    v115(&v48[v51], v52, v120);
    v53 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
    *&v135 = 0;
    v54 = v121;
    sub_190D538D0();
    v114(&v48[v53], v54, v124);
    v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
    v55 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
    LOBYTE(v135) = 0;
    sub_190D538D0();
    v56 = v127;
    v57 = v117;
    v117(&v48[v55], v18, v127);
    v58 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
    *&v135 = 0;
    *(&v135 + 1) = 0xE000000000000000;
    v59 = v125;
    sub_190D538D0();
    v113(&v48[v58], v59, v126);
    v60 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
    LOBYTE(v135) = 0;
    sub_190D538D0();
    v57(&v48[v60], v18, v56);
    v61 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
    LOBYTE(v135) = 0;
    sub_190D538D0();
    v57(&v48[v61], v18, v56);
    v62 = v109;
    *&v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v109;
    v63 = &v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
    v64 = v108;
    v65 = v112;
    *v63 = v108;
    v63[1] = v65;
    v66 = swift_allocObject();
    *(v66 + 2) = v62;
    *(v66 + 3) = v64;
    *(v66 + 4) = v65;
    v67 = &v48[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
    *v67 = sub_190B2426C;
    v67[1] = v66;
    swift_beginAccess();
    *v49 = 0;
    *(v49 + 1) = 0;
    *(v49 + 2) = 0;
    *(v49 + 12) = 256;
    swift_beginAccess();
    v68 = *v50;
    v69 = v50[1];
    *v50 = 0;
    v50[1] = 0;
    v70 = v62;
    sub_190D52690();
    sub_19022123C(v68, v69);
    v132.receiver = v48;
    v132.super_class = v130;
    v71 = objc_msgSendSuper2(&v132, sel_init);
    v72 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
    *(v71 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
    v73 = v71;
    sub_190B224E8();
    *(v71 + v72) = 1;
    sub_190D52690();
    v74 = sub_190D56ED0();

    [v70 addObserver:v73 forKeyPath:v74 options:1 context:0];

    *(v128 + 40) = v73;
    v109 = sub_190D56F10();
    v112 = v75;
    v76 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v77 = sub_190D56ED0();
    v78 = [v76 initWithSuiteName_];

    v111 = v78;
    if (v78)
    {
      v79 = objc_allocWithZone(v130);
      v80 = &v79[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
      *(v80 + 1) = 0;
      *(v80 + 2) = 0;
      *(v80 + 12) = 256;
      *v80 = 0;
      v81 = &v79[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
      *v81 = 0;
      v81[1] = 0;
      v82 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
      v135 = 0u;
      v136 = 0u;
      sub_19023C414(&v135, v134);
      v83 = v118;
      sub_190D538D0();
      sub_19021E7D8(&v135);
      v115(&v79[v82], v83, v120);
      v84 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
      *&v135 = 0;
      v85 = v121;
      sub_190D538D0();
      v114(&v79[v84], v85, v124);
      v79[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
      v86 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
      LOBYTE(v135) = 0;
      sub_190D538D0();
      v87 = v127;
      v88 = v117;
      v117(&v79[v86], v18, v127);
      v89 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
      *&v135 = 0;
      *(&v135 + 1) = 0xE000000000000000;
      v90 = v125;
      sub_190D538D0();
      v113(&v79[v89], v90, v126);
      v91 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
      LOBYTE(v135) = 0;
      sub_190D538D0();
      v88(&v79[v91], v18, v87);
      v92 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
      LOBYTE(v135) = 0;
      sub_190D538D0();
      v88(&v79[v92], v18, v87);
      v93 = v111;
      *&v79[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v111;
      v94 = &v79[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
      v95 = v109;
      v96 = v112;
      *v94 = v109;
      v94[1] = v96;
      v97 = swift_allocObject();
      *(v97 + 2) = v93;
      *(v97 + 3) = v95;
      *(v97 + 4) = v96;
      v98 = &v79[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
      *v98 = sub_190B2426C;
      v98[1] = v97;
      swift_beginAccess();
      *v80 = 0;
      *(v80 + 1) = 0;
      *(v80 + 2) = 0;
      *(v80 + 12) = 256;
      swift_beginAccess();
      v99 = *v81;
      v100 = v81[1];
      *v81 = 0;
      v81[1] = 0;
      v101 = v93;
      sub_190D52690();
      sub_19022123C(v99, v100);
      v131.receiver = v79;
      v131.super_class = v130;
      v102 = objc_msgSendSuper2(&v131, sel_init);
      v103 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
      *(v102 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
      v104 = v102;
      sub_190B224E8();
      *(v102 + v103) = 1;
      sub_190D52690();
      v105 = sub_190D56ED0();

      [v101 addObserver:v104 forKeyPath:v105 options:1 context:0];

      v106 = v128;
      *(v128 + 48) = v104;
      *v107 = v106;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_190B2E070(uint64_t *a1@<X8>)
{
  v239 = a1;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18, &unk_190DF3100);
  v259 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v254 = &v237 - v1;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8, &unk_190DF43B0);
  v258 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v3 = &v237 - v2;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20, &qword_190DF3110);
  v260 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v5 = &v237 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28, &qword_190DF43C0);
  v251 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v237 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v255 = swift_allocObject();
  *(v255 + 16) = xmmword_190DDA050;
  v10 = objc_opt_self();
  v247 = v10;
  v240 = @"AlwaysShowMadridRegistration";
  v238 = [v10 standardUserDefaults];
  v252 = type metadata accessor for UserDefaultItem(0);
  v11 = objc_allocWithZone(v252);
  v12 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  *v12 = 0;
  v13 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  v237 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v269 = 0u;
  v270 = 0u;
  sub_19023C414(&v269, v268);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0, &unk_190DD9790);
  v243 = v9;
  sub_190D538D0();
  sub_19021E7D8(&v269);
  v246 = *(v7 + 32);
  v250 = v7 + 32;
  v246(&v11[v14], v9, v6);
  v15 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v269 = 0;
  v244 = v5;
  sub_190D538D0();
  v248 = *(v260 + 32);
  v260 += 32;
  v248(&v11[v15], v5, v257);
  v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v16 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v269) = 0;
  v17 = v3;
  sub_190D538D0();
  v18 = v258 + 32;
  v19 = *(v258 + 32);
  v20 = v3;
  v21 = v253;
  v19(&v11[v16], v20, v253);
  v22 = v19;
  v242 = v19;
  v23 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v269 = 0;
  *(&v269 + 1) = 0xE000000000000000;
  v24 = v254;
  sub_190D538D0();
  v25 = *(v259 + 32);
  v259 += 32;
  v249 = v25;
  v25(&v11[v23], v24, v256);
  v26 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v269) = 0;
  sub_190D538D0();
  v27 = v17;
  v28 = v17;
  v29 = v21;
  v258 = v18;
  v22(&v11[v26], v27, v21);
  v30 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v269) = 0;
  sub_190D538D0();
  v31 = v28;
  v22(&v11[v30], v28, v29);
  v32 = v238;
  *&v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v238;
  v33 = v240;
  v34 = sub_190D56F10();
  v36 = v35;
  v37 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v37 = v34;
  v37[1] = v35;
  v38 = swift_allocObject();
  *(v38 + 2) = v32;
  *(v38 + 3) = v34;
  *(v38 + 4) = v36;
  v39 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v39 = sub_190B2426C;
  v39[1] = v38;
  swift_beginAccess();
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  v40 = v237;
  swift_beginAccess();
  v41 = *v40;
  v42 = v40[1];
  *v40 = 0;
  v40[1] = 0;
  v43 = v32;
  sub_190D52690();
  sub_19022123C(v41, v42);
  v44 = v252;
  v267.receiver = v11;
  v267.super_class = v252;
  v45 = objc_msgSendSuper2(&v267, sel_init);
  v46 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v45 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v47 = v45;
  sub_190B224E8();
  *(v45 + v46) = 1;
  sub_190D52690();
  v48 = sub_190D56ED0();

  [(__CFString *)v43 addObserver:v47 forKeyPath:v48 options:1 context:0];

  *(v255 + 32) = v47;
  v240 = @"AlwaysShowNicknameOnboarding";
  v238 = [v247 standardUserDefaults];
  v49 = objc_allocWithZone(v44);
  v50 = &v49[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v50 + 1) = 0;
  *(v50 + 2) = 0;
  *(v50 + 12) = 256;
  *v50 = 0;
  v51 = &v49[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v51 = 0;
  v51[1] = 0;
  v52 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v269 = 0u;
  v270 = 0u;
  sub_19023C414(&v269, v268);
  v53 = v243;
  sub_190D538D0();
  sub_19021E7D8(&v269);
  v246(&v49[v52], v53, v251);
  v54 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v269 = 0;
  v55 = v244;
  sub_190D538D0();
  v248(&v49[v54], v55, v257);
  v49[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v56 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v269) = 0;
  sub_190D538D0();
  v57 = v253;
  v58 = v242;
  v242(&v49[v56], v31, v253);
  v59 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v269 = 0;
  *(&v269 + 1) = 0xE000000000000000;
  v60 = v254;
  sub_190D538D0();
  v249(&v49[v59], v60, v256);
  v61 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v269) = 0;
  sub_190D538D0();
  v241 = v31;
  v58(&v49[v61], v31, v57);
  v62 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v269) = 0;
  sub_190D538D0();
  v58(&v49[v62], v31, v57);
  v63 = v238;
  *&v49[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v238;
  v64 = v240;
  v65 = sub_190D56F10();
  v67 = v66;
  v68 = &v49[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v68 = v65;
  v68[1] = v66;
  v69 = swift_allocObject();
  *(v69 + 2) = v63;
  *(v69 + 3) = v65;
  *(v69 + 4) = v67;
  v70 = &v49[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v70 = sub_190B2426C;
  v70[1] = v69;
  swift_beginAccess();
  *v50 = 0;
  *(v50 + 1) = 0;
  *(v50 + 2) = 0;
  *(v50 + 12) = 256;
  swift_beginAccess();
  v71 = *v51;
  v72 = v51[1];
  *v51 = 0;
  v51[1] = 0;
  v73 = v63;
  sub_190D52690();
  sub_19022123C(v71, v72);
  v74 = v252;
  v266.receiver = v49;
  v266.super_class = v252;
  v75 = objc_msgSendSuper2(&v266, sel_init);
  v76 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v75 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v77 = v75;
  sub_190B224E8();
  *(v75 + v76) = 1;
  sub_190D52690();
  v78 = sub_190D56ED0();

  [(__CFString *)v73 addObserver:v77 forKeyPath:v78 options:1 context:0];

  *(v255 + 40) = v77;
  v238 = @"AlwaysShowSyndicationOnboarding";
  v237 = [v247 standardUserDefaults];
  v79 = objc_allocWithZone(v74);
  v80 = &v79[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v80 + 1) = 0;
  *(v80 + 2) = 0;
  *(v80 + 12) = 256;
  *v80 = 0;
  v81 = &v79[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  v240 = &v79[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v81 = 0;
  v81[1] = 0;
  v82 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v269 = 0u;
  v270 = 0u;
  sub_19023C414(&v269, v268);
  v83 = v243;
  sub_190D538D0();
  sub_19021E7D8(&v269);
  v246(&v79[v82], v83, v251);
  v84 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v269 = 0;
  v85 = v244;
  sub_190D538D0();
  v248(&v79[v84], v85, v257);
  v79[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v86 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v269) = 0;
  v87 = v241;
  sub_190D538D0();
  v88 = v253;
  v89 = v242;
  v242(&v79[v86], v87, v253);
  v90 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v269 = 0;
  *(&v269 + 1) = 0xE000000000000000;
  v91 = v254;
  sub_190D538D0();
  v249(&v79[v90], v91, v256);
  v92 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v269) = 0;
  sub_190D538D0();
  v89(&v79[v92], v87, v88);
  v93 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v269) = 0;
  sub_190D538D0();
  v89(&v79[v93], v87, v88);
  v95 = v237;
  v94 = v238;
  *&v79[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v237;
  v96 = sub_190D56F10();
  v98 = v97;
  v99 = &v79[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v99 = v96;
  v99[1] = v97;
  v100 = swift_allocObject();
  *(v100 + 2) = v95;
  *(v100 + 3) = v96;
  *(v100 + 4) = v98;
  v101 = &v79[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v101 = sub_190B2426C;
  v101[1] = v100;
  swift_beginAccess();
  v80[24] = 0;
  *(v80 + 1) = 0;
  *(v80 + 2) = 0;
  *v80 = 0;
  v80[25] = 1;
  v102 = v240;
  swift_beginAccess();
  v103 = *v102;
  v104 = v102[1];
  *v102 = 0;
  v102[1] = 0;
  v105 = v95;
  sub_190D52690();
  sub_19022123C(v103, v104);
  v106 = v252;
  v265.receiver = v79;
  v265.super_class = v252;
  v107 = objc_msgSendSuper2(&v265, sel_init);
  v108 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v107 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v109 = v107;
  sub_190B224E8();
  *(v107 + v108) = 1;
  sub_190D52690();
  v110 = sub_190D56ED0();

  [v105 addObserver:v109 forKeyPath:v110 options:1 context:0];

  *(v255 + 48) = v109;
  v240 = @"AlwaysShowWhatsNewScreen";
  v238 = [v247 standardUserDefaults];
  v111 = objc_allocWithZone(v106);
  v112 = &v111[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v112 + 1) = 0;
  *(v112 + 2) = 0;
  *(v112 + 12) = 256;
  *v112 = 0;
  v113 = &v111[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v113 = 0;
  v113[1] = 0;
  v114 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v269 = 0u;
  v270 = 0u;
  sub_19023C414(&v269, v268);
  v115 = v243;
  sub_190D538D0();
  sub_19021E7D8(&v269);
  v246(&v111[v114], v115, v251);
  v116 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v269 = 0;
  v117 = v244;
  sub_190D538D0();
  v248(&v111[v116], v117, v257);
  v111[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v118 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v269) = 0;
  v119 = v241;
  sub_190D538D0();
  v120 = v253;
  v121 = v242;
  v242(&v111[v118], v119, v253);
  v122 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v269 = 0;
  *(&v269 + 1) = 0xE000000000000000;
  v123 = v254;
  sub_190D538D0();
  v249(&v111[v122], v123, v256);
  v124 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v269) = 0;
  sub_190D538D0();
  v121(&v111[v124], v119, v120);
  v125 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v269) = 0;
  sub_190D538D0();
  v121(&v111[v125], v119, v120);
  v126 = v238;
  *&v111[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v238;
  v127 = v240;
  v128 = sub_190D56F10();
  v130 = v129;
  v131 = &v111[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v131 = v128;
  v131[1] = v129;
  v132 = swift_allocObject();
  *(v132 + 2) = v126;
  *(v132 + 3) = v128;
  *(v132 + 4) = v130;
  v133 = &v111[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v133 = sub_190B2426C;
  v133[1] = v132;
  swift_beginAccess();
  v112[24] = 0;
  *(v112 + 1) = 0;
  *(v112 + 2) = 0;
  *v112 = 0;
  v112[25] = 1;
  swift_beginAccess();
  v134 = *v113;
  v135 = v113[1];
  *v113 = 0;
  v113[1] = 0;
  v136 = v126;
  sub_190D52690();
  sub_19022123C(v134, v135);
  v137 = v252;
  v264.receiver = v111;
  v264.super_class = v252;
  v138 = objc_msgSendSuper2(&v264, sel_init);
  v139 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v138 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v140 = v138;
  sub_190B224E8();
  *(v138 + v139) = 1;
  sub_190D52690();
  v141 = sub_190D56ED0();

  [(__CFString *)v136 addObserver:v140 forKeyPath:v141 options:1 context:0];

  *(v255 + 56) = v140;
  v240 = @"AlwaysShowMOCWelcomeScreen";
  v238 = [v247 standardUserDefaults];
  v142 = objc_allocWithZone(v137);
  v143 = &v142[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v143 + 1) = 0;
  *(v143 + 2) = 0;
  *(v143 + 12) = 256;
  *v143 = 0;
  v144 = &v142[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v144 = 0;
  v144[1] = 0;
  v145 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v269 = 0u;
  v270 = 0u;
  sub_19023C414(&v269, v268);
  v146 = v243;
  sub_190D538D0();
  sub_19021E7D8(&v269);
  v246(&v142[v145], v146, v251);
  v147 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v269 = 0;
  v148 = v244;
  sub_190D538D0();
  v248(&v142[v147], v148, v257);
  v142[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v149 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v269) = 0;
  v150 = v119;
  sub_190D538D0();
  v151 = v119;
  v152 = v253;
  v153 = v242;
  v242(&v142[v149], v151, v253);
  v154 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v269 = 0;
  *(&v269 + 1) = 0xE000000000000000;
  v155 = v254;
  sub_190D538D0();
  v249(&v142[v154], v155, v256);
  v156 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v269) = 0;
  sub_190D538D0();
  v153(&v142[v156], v150, v152);
  v157 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v269) = 0;
  sub_190D538D0();
  v153(&v142[v157], v150, v152);
  v158 = v238;
  *&v142[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v238;
  v159 = sub_190D56F10();
  v161 = v160;
  v162 = &v142[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v162 = v159;
  v162[1] = v160;
  v163 = swift_allocObject();
  *(v163 + 2) = v158;
  *(v163 + 3) = v159;
  *(v163 + 4) = v161;
  v164 = &v142[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v164 = sub_190B2426C;
  v164[1] = v163;
  swift_beginAccess();
  v143[24] = 0;
  *(v143 + 1) = 0;
  *(v143 + 2) = 0;
  *v143 = 0;
  v143[25] = 1;
  swift_beginAccess();
  v165 = *v144;
  v166 = v144[1];
  *v144 = 0;
  v144[1] = 0;
  v167 = v158;
  sub_190D52690();
  sub_19022123C(v165, v166);
  v168 = v252;
  v263.receiver = v142;
  v263.super_class = v252;
  v169 = objc_msgSendSuper2(&v263, sel_init);
  v170 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v169 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v171 = v169;
  sub_190B224E8();
  *(v169 + v170) = 1;
  sub_190D52690();
  v172 = sub_190D56ED0();

  [(__CFString *)v167 addObserver:v171 forKeyPath:v172 options:1 context:0];

  *(v255 + 64) = v171;
  v238 = @"AlwaysShowAppleIntelligenceOnboarding";
  v237 = [v247 standardUserDefaults];
  v173 = objc_allocWithZone(v168);
  v174 = &v173[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v174 + 1) = 0;
  *(v174 + 2) = 0;
  *(v174 + 12) = 256;
  *v174 = 0;
  v175 = &v173[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  v240 = &v173[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v175 = 0;
  v175[1] = 0;
  v176 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v269 = 0u;
  v270 = 0u;
  sub_19023C414(&v269, v268);
  v177 = v243;
  sub_190D538D0();
  sub_19021E7D8(&v269);
  v246(&v173[v176], v177, v251);
  v178 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v269 = 0;
  v179 = v244;
  sub_190D538D0();
  v248(&v173[v178], v179, v257);
  v173[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v180 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v269) = 0;
  v181 = v241;
  sub_190D538D0();
  v182 = v181;
  v183 = v181;
  v184 = v253;
  v185 = v242;
  v242(&v173[v180], v182, v253);
  v186 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v269 = 0;
  *(&v269 + 1) = 0xE000000000000000;
  v187 = v254;
  sub_190D538D0();
  v249(&v173[v186], v187, v256);
  v188 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v269) = 0;
  sub_190D538D0();
  v185(&v173[v188], v183, v184);
  v189 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v269) = 0;
  sub_190D538D0();
  v185(&v173[v189], v183, v184);
  v190 = v237;
  v191 = v238;
  *&v173[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v237;
  v192 = sub_190D56F10();
  v194 = v193;
  v195 = &v173[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v195 = v192;
  v195[1] = v193;
  v196 = swift_allocObject();
  *(v196 + 2) = v190;
  *(v196 + 3) = v192;
  *(v196 + 4) = v194;
  v197 = &v173[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v197 = sub_190B2426C;
  v197[1] = v196;
  swift_beginAccess();
  v174[24] = 0;
  *(v174 + 1) = 0;
  *(v174 + 2) = 0;
  *v174 = 0;
  v174[25] = 1;
  v198 = v240;
  swift_beginAccess();
  v199 = *v198;
  v200 = v198[1];
  *v198 = 0;
  v198[1] = 0;
  v201 = v190;
  sub_190D52690();
  sub_19022123C(v199, v200);
  v202 = v252;
  v262.receiver = v173;
  v262.super_class = v252;
  v203 = objc_msgSendSuper2(&v262, sel_init);
  v204 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v203 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v205 = v203;
  sub_190B224E8();
  *(v203 + v204) = 1;
  sub_190D52690();
  v206 = sub_190D56ED0();

  [v201 addObserver:v205 forKeyPath:v206 options:1 context:0];

  *(v255 + 72) = v205;
  v240 = @"NicknameOnboardingVersion";
  v247 = [v247 standardUserDefaults];
  v207 = objc_allocWithZone(v202);
  v208 = &v207[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v208 + 1) = 0;
  *(v208 + 2) = 0;
  *(v208 + 12) = 256;
  *v208 = 0;
  v209 = &v207[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v209 = 0;
  v209[1] = 0;
  v210 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v269 = 0u;
  v270 = 0u;
  sub_19023C414(&v269, v268);
  v211 = v243;
  sub_190D538D0();
  sub_19021E7D8(&v269);
  v246(&v207[v210], v211, v251);
  v212 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v269 = 0;
  v213 = v244;
  sub_190D538D0();
  v248(&v207[v212], v213, v257);
  v207[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v214 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v269) = 0;
  v215 = v241;
  sub_190D538D0();
  v216 = v253;
  v217 = v242;
  v242(&v207[v214], v215, v253);
  v218 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v269 = 0;
  *(&v269 + 1) = 0xE000000000000000;
  v219 = v254;
  sub_190D538D0();
  v249(&v207[v218], v219, v256);
  v220 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v269) = 0;
  sub_190D538D0();
  v217(&v207[v220], v215, v216);
  v221 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v269) = 0;
  sub_190D538D0();
  v217(&v207[v221], v215, v216);
  v222 = v247;
  *&v207[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v247;
  v223 = sub_190D56F10();
  v225 = v224;
  v226 = &v207[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v226 = v223;
  v226[1] = v224;
  v227 = swift_allocObject();
  *(v227 + 2) = v222;
  *(v227 + 3) = v223;
  *(v227 + 4) = v225;
  v228 = &v207[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v228 = sub_190B2426C;
  v228[1] = v227;
  swift_beginAccess();
  v208[24] = 0;
  *(v208 + 1) = 0;
  *(v208 + 2) = 0;
  *v208 = 0;
  v208[25] = 1;
  swift_beginAccess();
  v229 = *v209;
  v230 = v209[1];
  *v209 = 0;
  v209[1] = 0;
  v231 = v222;
  sub_190D52690();
  sub_19022123C(v229, v230);
  v261.receiver = v207;
  v261.super_class = v252;
  v232 = objc_msgSendSuper2(&v261, sel_init);
  v233 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v232 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v234 = v232;
  sub_190B224E8();
  *(v232 + v233) = 1;
  sub_190D52690();
  v235 = sub_190D56ED0();

  [v231 addObserver:v234 forKeyPath:v235 options:1 context:0];

  v236 = v255;
  *(v255 + 80) = v234;
  *v239 = v236;
}

void sub_190B2FC48(uint64_t *a1@<X8>)
{
  v105 = a1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18, &unk_190DF3100);
  v122 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v102 - v1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8, &unk_190DF43B0);
  v121 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v3 = &v102 - v2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20, &qword_190DF3110);
  v123 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v5 = &v102 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28, &qword_190DF43C0);
  v111 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v102 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_190DDA780;
  v10 = objc_opt_self();
  v114 = v10;
  v103 = @"SendAnimationSlowAnimationsEnabled";
  v102 = [v10 standardUserDefaults];
  v115 = type metadata accessor for UserDefaultItem(0);
  v11 = objc_allocWithZone(v115);
  v12 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  *v12 = 0;
  v13 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v128 = 0u;
  v129 = 0u;
  sub_19023C414(&v128, v127);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0, &unk_190DD9790);
  v106 = v9;
  sub_190D538D0();
  sub_19021E7D8(&v128);
  v15 = *(v7 + 32);
  v110 = v7 + 32;
  v112 = v15;
  v15(&v11[v14], v9, v6);
  v16 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v128 = 0;
  v107 = v5;
  sub_190D538D0();
  v17 = *(v123 + 32);
  v123 += 32;
  v109 = v17;
  v17(&v11[v16], v5, v120);
  v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v18 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v128) = 0;
  sub_190D538D0();
  v20 = v121 + 32;
  v19 = *(v121 + 32);
  v21 = v116;
  v19(&v11[v18], v3, v116);
  v121 = v20;
  v22 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v128 = 0;
  *(&v128 + 1) = 0xE000000000000000;
  v23 = v117;
  sub_190D538D0();
  v24 = *(v122 + 32);
  v122 += 32;
  v108 = v24;
  v24(&v11[v22], v23, v119);
  v25 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v128) = 0;
  sub_190D538D0();
  v19(&v11[v25], v3, v21);
  v26 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v128) = 0;
  sub_190D538D0();
  v19(&v11[v26], v3, v21);
  v27 = v102;
  *&v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v102;
  v28 = v103;
  v29 = sub_190D56F10();
  v31 = v30;
  v32 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v32 = v29;
  v32[1] = v30;
  v33 = swift_allocObject();
  *(v33 + 2) = v27;
  *(v33 + 3) = v29;
  *(v33 + 4) = v31;
  v34 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v34 = sub_190B2426C;
  v34[1] = v33;
  swift_beginAccess();
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  swift_beginAccess();
  v35 = *v13;
  v36 = v13[1];
  *v13 = 0;
  v13[1] = 0;
  v37 = v27;
  sub_190D52690();
  sub_19022123C(v35, v36);
  v38 = v115;
  v126.receiver = v11;
  v126.super_class = v115;
  v39 = objc_msgSendSuper2(&v126, sel_init);
  v40 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v39 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v41 = v39;
  sub_190B224E8();
  *(v39 + v40) = 1;
  sub_190D52690();
  v42 = sub_190D56ED0();

  [v37 addObserver:v41 forKeyPath:v42 options:1 context:0];

  *(v118 + 32) = v41;
  v103 = @"SendAnimationVerySlowAnimationsEnabled";
  v102 = [v114 standardUserDefaults];
  v43 = objc_allocWithZone(v38);
  v44 = &v43[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v44 + 1) = 0;
  *(v44 + 2) = 0;
  *(v44 + 12) = 256;
  *v44 = 0;
  v45 = &v43[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v45 = 0;
  v45[1] = 0;
  v46 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v128 = 0u;
  v129 = 0u;
  sub_19023C414(&v128, v127);
  v47 = v106;
  sub_190D538D0();
  sub_19021E7D8(&v128);
  v112(&v43[v46], v47, v111);
  v48 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v128 = 0;
  v49 = v107;
  sub_190D538D0();
  v109(&v43[v48], v49, v120);
  v43[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v50 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v128) = 0;
  sub_190D538D0();
  v51 = v116;
  v104 = v19;
  v19(&v43[v50], v3, v116);
  v52 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v128 = 0;
  *(&v128 + 1) = 0xE000000000000000;
  v53 = v117;
  sub_190D538D0();
  v108(&v43[v52], v53, v119);
  v54 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v128) = 0;
  sub_190D538D0();
  v19(&v43[v54], v3, v51);
  v55 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v128) = 0;
  sub_190D538D0();
  v19(&v43[v55], v3, v51);
  v56 = v102;
  *&v43[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v102;
  v57 = v103;
  v58 = sub_190D56F10();
  v60 = v59;
  v61 = &v43[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v61 = v58;
  v61[1] = v59;
  v62 = swift_allocObject();
  *(v62 + 2) = v56;
  *(v62 + 3) = v58;
  *(v62 + 4) = v60;
  v63 = &v43[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v63 = sub_190B2426C;
  v63[1] = v62;
  swift_beginAccess();
  *v44 = 0;
  *(v44 + 1) = 0;
  *(v44 + 2) = 0;
  *(v44 + 12) = 256;
  swift_beginAccess();
  v64 = *v45;
  v65 = v45[1];
  *v45 = 0;
  v45[1] = 0;
  v66 = v56;
  sub_190D52690();
  sub_19022123C(v64, v65);
  v125.receiver = v43;
  v67 = v115;
  v125.super_class = v115;
  v68 = objc_msgSendSuper2(&v125, sel_init);
  v69 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v68 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v70 = v68;
  sub_190B224E8();
  *(v68 + v69) = 1;
  sub_190D52690();
  v71 = sub_190D56ED0();

  [v66 addObserver:v70 forKeyPath:v71 options:1 context:0];

  *(v118 + 40) = v70;
  v103 = @"SendAnimationVeryVerySlowAnimationsEnabled";
  v114 = [v114 standardUserDefaults];
  v72 = objc_allocWithZone(v67);
  v73 = &v72[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v73 + 1) = 0;
  *(v73 + 2) = 0;
  *(v73 + 12) = 256;
  *v73 = 0;
  v74 = &v72[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v74 = 0;
  v74[1] = 0;
  v75 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v128 = 0u;
  v129 = 0u;
  sub_19023C414(&v128, v127);
  v76 = v106;
  sub_190D538D0();
  sub_19021E7D8(&v128);
  v112(&v72[v75], v76, v111);
  v77 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v128 = 0;
  v78 = v107;
  sub_190D538D0();
  v109(&v72[v77], v78, v120);
  v72[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v79 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v128) = 0;
  sub_190D538D0();
  v80 = v116;
  v81 = v104;
  v104(&v72[v79], v3, v116);
  v82 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v128 = 0;
  *(&v128 + 1) = 0xE000000000000000;
  v83 = v117;
  sub_190D538D0();
  v108(&v72[v82], v83, v119);
  v84 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v128) = 0;
  sub_190D538D0();
  v81(&v72[v84], v3, v80);
  v85 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v128) = 0;
  sub_190D538D0();
  v81(&v72[v85], v3, v80);
  v86 = v114;
  *&v72[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v114;
  v87 = v103;
  v88 = sub_190D56F10();
  v90 = v89;
  v91 = &v72[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v91 = v88;
  v91[1] = v89;
  v92 = swift_allocObject();
  *(v92 + 2) = v86;
  *(v92 + 3) = v88;
  *(v92 + 4) = v90;
  v93 = &v72[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v93 = sub_190B2426C;
  v93[1] = v92;
  swift_beginAccess();
  v73[24] = 0;
  *(v73 + 1) = 0;
  *(v73 + 2) = 0;
  *v73 = 0;
  v73[25] = 1;
  swift_beginAccess();
  v94 = *v74;
  v95 = v74[1];
  *v74 = 0;
  v74[1] = 0;
  v96 = v86;
  sub_190D52690();
  sub_19022123C(v94, v95);
  v124.receiver = v72;
  v124.super_class = v115;
  v97 = objc_msgSendSuper2(&v124, sel_init);
  v98 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v97 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v99 = v97;
  sub_190B224E8();
  *(v97 + v98) = 1;
  sub_190D52690();
  v100 = sub_190D56ED0();

  [v96 addObserver:v99 forKeyPath:v100 options:1 context:0];

  v101 = v118;
  *(v118 + 48) = v99;
  *v105 = v101;
}

void sub_190B30B18(uint64_t *a1@<X8>)
{
  v87 = a1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18, &unk_190DF3100);
  v93 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v73 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8, &unk_190DF43B0);
  v78 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v73 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20, &qword_190DF3110);
  v80 = v5;
  v94 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28, &qword_190DF43C0);
  v83 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v73 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_190DD5CE0;
  v11 = objc_opt_self();
  v86 = v11;
  v75 = @"showTickerHUD";
  v74 = [v11 standardUserDefaults];
  v88 = type metadata accessor for UserDefaultItem(0);
  v12 = objc_allocWithZone(v88);
  v13 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *(v13 + 12) = 256;
  *v13 = 0;
  v14 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v98 = 0u;
  v99 = 0u;
  sub_19023C414(&v98, v97);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0, &unk_190DD9790);
  v79 = v10;
  sub_190D538D0();
  sub_19021E7D8(&v98);
  v16 = *(v8 + 32);
  v82 = v8 + 32;
  v84 = v16;
  v16(&v12[v15], v10, v7);
  v17 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v98 = 0;
  v18 = v90;
  sub_190D538D0();
  v19 = *(v94 + 32);
  v94 += 32;
  v81 = v19;
  v19(&v12[v17], v18, v5);
  v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v20 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v98) = 0;
  sub_190D538D0();
  v21 = v78[4];
  v21(&v12[v20], v4, v2);
  v22 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v98 = 0;
  *(&v98 + 1) = 0xE000000000000000;
  v23 = v89;
  sub_190D538D0();
  v24 = *(v93 + 32);
  v93 += 32;
  v78 = v24;
  (v24)(&v12[v22], v23, v91);
  v25 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v98) = 0;
  sub_190D538D0();
  v77 = v2;
  v76 = v21;
  v21(&v12[v25], v4, v2);
  v26 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v98) = 0;
  sub_190D538D0();
  v21(&v12[v26], v4, v2);
  v27 = v74;
  *&v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v74;
  v28 = v75;
  v29 = sub_190D56F10();
  v31 = v30;
  v32 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v32 = v29;
  v32[1] = v30;
  v33 = swift_allocObject();
  *(v33 + 2) = v27;
  *(v33 + 3) = v29;
  *(v33 + 4) = v31;
  v34 = &v12[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v34 = sub_190B2426C;
  v34[1] = v33;
  swift_beginAccess();
  *v13 = 0;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *(v13 + 12) = 256;
  swift_beginAccess();
  v35 = *v14;
  v36 = v14[1];
  *v14 = 0;
  v14[1] = 0;
  v37 = v27;
  sub_190D52690();
  sub_19022123C(v35, v36);
  v38 = v88;
  v96.receiver = v12;
  v96.super_class = v88;
  v39 = objc_msgSendSuper2(&v96, sel_init);
  v40 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v39 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v41 = v39;
  sub_190B224E8();
  *(v39 + v40) = 1;
  sub_190D52690();
  v42 = sub_190D56ED0();

  [v37 addObserver:v41 forKeyPath:v42 options:1 context:0];

  *(v92 + 32) = v41;
  v75 = @"showTickerHUDAndLogValueWhileRecording";
  v86 = [v86 standardUserDefaults];
  v43 = objc_allocWithZone(v38);
  v44 = &v43[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v44 + 1) = 0;
  *(v44 + 2) = 0;
  *(v44 + 12) = 256;
  *v44 = 0;
  v45 = &v43[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v45 = 0;
  v45[1] = 0;
  v46 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v98 = 0u;
  v99 = 0u;
  sub_19023C414(&v98, v97);
  v47 = v79;
  sub_190D538D0();
  sub_19021E7D8(&v98);
  v84(&v43[v46], v47, v83);
  v48 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v98 = 0;
  v49 = v90;
  sub_190D538D0();
  v81(&v43[v48], v49, v80);
  v43[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v50 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v98) = 0;
  sub_190D538D0();
  v51 = v77;
  v52 = v76;
  v76(&v43[v50], v4, v77);
  v53 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v98 = 0;
  *(&v98 + 1) = 0xE000000000000000;
  v54 = v89;
  sub_190D538D0();
  (v78)(&v43[v53], v54, v91);
  v55 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v98) = 0;
  sub_190D538D0();
  v52(&v43[v55], v4, v51);
  v56 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v98) = 0;
  sub_190D538D0();
  v52(&v43[v56], v4, v51);
  v57 = v86;
  *&v43[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v86;
  v58 = v75;
  v59 = sub_190D56F10();
  v61 = v60;
  v62 = &v43[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v62 = v59;
  v62[1] = v60;
  v63 = swift_allocObject();
  *(v63 + 2) = v57;
  *(v63 + 3) = v59;
  *(v63 + 4) = v61;
  v64 = &v43[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v64 = sub_190B2426C;
  v64[1] = v63;
  swift_beginAccess();
  *v44 = 0;
  *(v44 + 1) = 0;
  *(v44 + 2) = 0;
  *(v44 + 12) = 256;
  swift_beginAccess();
  v65 = *v45;
  v66 = v45[1];
  *v45 = 0;
  v45[1] = 0;
  v67 = v57;
  sub_190D52690();
  sub_19022123C(v65, v66);
  v95.receiver = v43;
  v95.super_class = v88;
  v68 = objc_msgSendSuper2(&v95, sel_init);
  v69 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(v68 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  v70 = v68;
  sub_190B224E8();
  *(v68 + v69) = 1;
  sub_190D52690();
  v71 = sub_190D56ED0();

  [v67 addObserver:v70 forKeyPath:v71 options:1 context:0];

  v72 = v92;
  *(v92 + 40) = v70;
  *v87 = v72;
}

uint64_t PinnedDefaultsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC48, &qword_190DF3D00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC50, &qword_190DF3D08);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  v10 = *v1;
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D50920();
    sub_190D53900();

    if (v17 >> 62)
    {
      v15 = sub_190D581C0();

      if (v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v11)
      {
LABEL_4:
        v12 = sub_190D549E0();
        v16[1] = v7;
        v16[2] = a1;
        v16[0] = v16;
        MEMORY[0x1EEE9AC00](v12);
        v16[-2] = v10;
        v16[-1] = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC58, &qword_190DF8B10);
        sub_190B38D2C();
        sub_190D562A0();
        (*(v4 + 16))(v9, v6, v3);
        swift_storeEnumTagMultiPayload();
        sub_190B38E04();
        sub_190D54C50();
        return (*(v4 + 8))(v6, v3);
      }
    }

    swift_storeEnumTagMultiPayload();
    sub_190B38E04();
    return sub_190D54C50();
  }

  else
  {
    type metadata accessor for PinnedUserDefault(0);
    sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault, &unk_190DF3320);
    result = sub_190D54510();
    __break(1u);
  }

  return result;
}

uint64_t sub_190B31954(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D50920();
    sub_190D53900();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0, &qword_190DF8B20);
    sub_190233640(&qword_1EAD5DCC8, &qword_1EAD582F0, &qword_190DF8B20, MEMORY[0x1E69E6338]);
    sub_190B38DB0();
    sub_190B39EF4(&qword_1EAD5DCD0, type metadata accessor for UserDefaultItem, &protocol conformance descriptor for UserDefaultItem);
    return sub_190D56290();
  }

  else
  {
    type metadata accessor for PinnedUserDefault(0);
    sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault, &unk_190DF3320);
    result = sub_190D54510();
    __break(1u);
  }

  return result;
}

unint64_t sub_190B31B18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A928, &unk_190DF3DA0);
  sub_190D55FD0();

  v0 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v0 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DCA0, &qword_190DF3D88);
    sub_190D55FD0();
    v1 = v14;
    v13 = MEMORY[0x1E69E7CC0];
    if (v14 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
    {
      v3 = 0;
      v11 = v1 & 0xFFFFFFFFFFFFFF8;
      v12 = v1 & 0xC000000000000001;
      while (1)
      {
        if (v12)
        {
          v4 = MEMORY[0x193AF3B90](v3, v1);
        }

        else
        {
          if (v3 >= *(v11 + 16))
          {
            goto LABEL_19;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v7 = v1;
        sub_190D56F60();
        sub_190D55FD0();
        sub_190D56F60();

        sub_19081E484();
        v8 = sub_190D58110();

        if (v8)
        {
          sub_190D58360();
          sub_190D583B0();
          sub_190D583C0();
          sub_190D58370();
        }

        else
        {
        }

        v1 = v7;
        ++v3;
        if (v6 == i)
        {
          v9 = v13;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v9 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DCA0, &qword_190DF3D88);
    sub_190D55FD0();
    return v14;
  }

  return v9;
}

uint64_t DefaultsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC78, &qword_190DF3D60);
  MEMORY[0x1EEE9AC00](v67);
  v4 = &v50 - v3;
  v62 = sub_190D54D00();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_190D54D10();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC80, &qword_190DF3D68);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC88, &qword_190DF3D70);
  v55 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v12 = &v50 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC90, &qword_190DF3D78);
  v58 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v54 = &v50 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC98, &qword_190DF3D80);
  v60 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v59 = &v50 - v14;
  v15 = v1[3];
  v16 = v1[4];
  *&v75[16] = v1[2];
  v76 = v15;
  v77 = v16;
  v78 = *(v1 + 10);
  v17 = v1[1];
  v74 = *v1;
  *v75 = v17;
  v71 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DCA0, &qword_190DF3D88);
  sub_190D55FD0();
  if (v69 >> 62)
  {
    v37 = sub_190D581C0();

    if (v37)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
LABEL_3:
      MEMORY[0x1EEE9AC00](v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DC58, &qword_190DF8B10);
      v53 = v4;
      sub_190B38D2C();
      sub_190D554D0();
      v71 = *&v75[8];
      v20 = sub_190233640(&qword_1EAD5DCA8, &qword_1EAD5DC80, &qword_190DF3D68, MEMORY[0x1E697CD20]);
      v21 = sub_19081E484();
      v52 = a1;
      v22 = v21;
      v23 = MEMORY[0x1E69E6158];
      sub_190D558C0();
      (*(v8 + 8))(v10, v7);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DCB0, &qword_190DF3D90);
      *&v71 = v7;
      *(&v71 + 1) = v23;
      v72 = v20;
      v73 = v22;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DCB8, &qword_190DF3D98);
      v26 = sub_190233640(&qword_1EAD5DCC0, &qword_1EAD5DCB8, &qword_190DF3D98, MEMORY[0x1E697BEF0]);
      *&v71 = v25;
      *(&v71 + 1) = v26;
      v27 = swift_getOpaqueTypeConformance2();
      v28 = v54;
      v29 = v65;
      sub_190D55BF0();
      (*(v55 + 8))(v12, v29);
      v69 = v74;
      v70 = *v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A928, &unk_190DF3DA0);
      sub_190D55FF0();
      v30 = v57;
      sub_190D54CF0();
      v31 = v56;
      sub_190D54CE0();
      (*(v61 + 8))(v30, v62);
      *&v71 = v29;
      *(&v71 + 1) = v24;
      v72 = OpaqueTypeConformance2;
      v73 = v27;
      v49 = swift_getOpaqueTypeConformance2();
      v32 = v66;
      v33 = v59;
      sub_190D55710();

      (*(v63 + 8))(v31, v64);
      (*(v58 + 8))(v28, v32);
      v34 = v60;
      v35 = v68;
      (*(v60 + 16))(v53, v33, v68);
      swift_storeEnumTagMultiPayload();
      v71 = __PAIR128__(v49, v32);
      swift_getOpaqueTypeConformance2();
      sub_190D54C50();
      return (*(v34 + 8))(v33, v35);
    }
  }

  sub_190D549E0();
  *v4 = sub_190D555D0();
  *(v4 + 1) = v38;
  v4[16] = v39 & 1;
  *(v4 + 3) = v40;
  swift_storeEnumTagMultiPayload();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DCB0, &qword_190DF3D90);
  v42 = sub_190233640(&qword_1EAD5DCA8, &qword_1EAD5DC80, &qword_190DF3D68, MEMORY[0x1E697CD20]);
  v43 = sub_19081E484();
  *&v71 = v7;
  *(&v71 + 1) = MEMORY[0x1E69E6158];
  v72 = v42;
  v73 = v43;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DCB8, &qword_190DF3D98);
  v46 = sub_190233640(&qword_1EAD5DCC0, &qword_1EAD5DCB8, &qword_190DF3D98, MEMORY[0x1E697BEF0]);
  *&v71 = v45;
  *(&v71 + 1) = v46;
  v47 = swift_getOpaqueTypeConformance2();
  *&v71 = v65;
  *(&v71 + 1) = v41;
  v72 = v44;
  v73 = v47;
  v48 = swift_getOpaqueTypeConformance2();
  *&v71 = v66;
  *(&v71 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  return sub_190D54C50();
}

uint64_t sub_190B3282C(__int128 *a1)
{
  v2 = a1[3];
  v12 = a1[2];
  v13 = v2;
  v14 = a1[4];
  v15 = *(a1 + 10);
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v9 = sub_190B31B18();
  v4 = swift_allocObject();
  v5 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v5;
  *(v4 + 80) = a1[4];
  *(v4 + 96) = *(a1 + 10);
  v6 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_190B38EA4(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0, &qword_190DF8B20);
  sub_190233640(&qword_1EAD5DCC8, &qword_1EAD582F0, &qword_190DF8B20, MEMORY[0x1E69E6338]);
  sub_190B38DB0();
  sub_190B39EF4(&qword_1EAD5DCD0, type metadata accessor for UserDefaultItem, &protocol conformance descriptor for UserDefaultItem);
  return sub_190D56290();
}

__n128 sub_190B329A4@<Q0>(void **a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  v13 = *(a2 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DD28, &qword_190DF43F8);
  sub_190D55FD0();
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault, &unk_190DF3320);
  *&v9 = sub_190D54520();
  *(&v9 + 1) = v5;
  sub_190D55FC0();
  LOBYTE(v11) = v13;
  *(&v11 + 1) = *(&v13 + 1);
  sub_190D55FC0();
  *v12 = v14;
  type metadata accessor for UserDefaultItem(0);
  sub_190B39EF4(&qword_1EAD5DD20, type metadata accessor for UserDefaultItem, &protocol conformance descriptor for UserDefaultItem);
  v6 = v4;
  v10.n128_u64[0] = sub_190D53FC0();
  v10.n128_u64[1] = v7;
  *&v12[24] = 1;
  sub_190D55FC0();
  *&v15[2] = *&v12[10];
  *v15 = *&v12[8];
  result = v10;
  a3[2] = v11;
  a3[3] = v13;
  a3[4] = *v12;
  *(a3 + 74) = *&v15[2];
  *a3 = v9;
  a3[1] = v10;
  return result;
}

uint64_t sub_190B32B70()
{
  v0 = sub_190D54D70();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DCB8, &qword_190DF3D98);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - v3;
  sub_190D54D30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8, &qword_190E02820);
  sub_19081E868();
  sub_190D53AE0();
  v5 = sub_190233640(&qword_1EAD5DCC0, &qword_1EAD5DCB8, &qword_190DF3D98, MEMORY[0x1E697BEF0]);
  MEMORY[0x193AF0690](v4, v1, v5);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_190B32D1C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110, &qword_190DDC6C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  sub_190D549E0();
  sub_190D53970();
  v5 = sub_190D539A0();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_190D56050();
  v6 = sub_190D55D40();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8, &qword_190E02820);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t sub_190B32E84()
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18, &unk_190DF3100);
  v1 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v44 - v2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8, &unk_190DF43B0);
  v3 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20, &qword_190DF3110);
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v44 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28, &qword_190DF43C0);
  v7 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v44 - v8;
  v9 = *v0;
  result = MEMORY[0x1E69E7CC0];
  v65 = MEMORY[0x1E69E7CC0];
  v11 = *(v9 + 16);
  if (v11)
  {
    v48 = objc_opt_self();
    v12 = (v9 + 32);
    v47 = (v7 + 32);
    v46 = (v5 + 32);
    v45 = (v3 + 32);
    v44 = (v1 + 32);
    do
    {
      v60 = v12;
      v61 = v11;
      v58 = *v12;
      v57 = [v48 standardUserDefaults];
      v59 = type metadata accessor for UserDefaultItem(0);
      v13 = objc_allocWithZone(v59);
      v14 = &v13[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *(v14 + 12) = 256;
      *v14 = 0;
      v15 = &v13[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
      *v15 = 0;
      v15[1] = 0;
      v16 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
      memset(v64, 0, sizeof(v64));
      sub_19023C414(v64, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0, &unk_190DD9790);
      v17 = v49;
      sub_190D538D0();
      sub_19021E7D8(v64);
      (*v47)(&v13[v16], v17, v50);
      v18 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
      *&v64[0] = 0;
      v19 = v51;
      sub_190D538D0();
      (*v46)(&v13[v18], v19, v52);
      v13[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
      v20 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
      LOBYTE(v64[0]) = 0;
      v21 = v53;
      sub_190D538D0();
      v22 = *v45;
      v23 = v54;
      (*v45)(&v13[v20], v21, v54);
      v24 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
      *&v64[0] = 0;
      *(&v64[0] + 1) = 0xE000000000000000;
      v25 = v55;
      sub_190D538D0();
      (*v44)(&v13[v24], v25, v56);
      v26 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
      LOBYTE(v64[0]) = 0;
      sub_190D538D0();
      v22(&v13[v26], v21, v23);
      v27 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
      LOBYTE(v64[0]) = 0;
      sub_190D538D0();
      v22(&v13[v27], v21, v23);
      v28 = v57;
      *&v13[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v57;
      v29 = v58;
      v30 = sub_190D56F10();
      v32 = v31;
      v33 = &v13[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
      *v33 = v30;
      v33[1] = v31;
      v34 = swift_allocObject();
      *(v34 + 2) = v28;
      *(v34 + 3) = v30;
      *(v34 + 4) = v32;
      v35 = &v13[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
      *v35 = sub_190B2426C;
      v35[1] = v34;
      swift_beginAccess();
      *v14 = 0;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *(v14 + 12) = 256;
      swift_beginAccess();
      v36 = *v15;
      v37 = v15[1];
      *v15 = 0;
      v15[1] = 0;
      v38 = v28;
      sub_190D52690();
      sub_19022123C(v36, v37);
      v62.receiver = v13;
      v62.super_class = v59;
      v39 = objc_msgSendSuper2(&v62, sel_init);
      v40 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
      v39[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
      v41 = v39;
      sub_190B224E8();
      v39[v40] = 1;
      sub_190D52690();
      v42 = sub_190D56ED0();

      [v38 addObserver:v41 forKeyPath:v42 options:1 context:0];

      v43 = v41;
      MEMORY[0x193AF29E0]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();

      v12 = v60 + 1;
      v11 = v61 - 1;
    }

    while (v61 != 1);
    return v65;
  }

  return result;
}

uint64_t SettingsView.body.getter()
{
  sub_190B32E84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0, &qword_190DF8B20);
  sub_190233640(&qword_1EAD5DCC8, &qword_1EAD582F0, &qword_190DF8B20, MEMORY[0x1E69E6338]);
  sub_190B38DB0();
  sub_190B39EF4(&qword_1EAD5DCD0, type metadata accessor for UserDefaultItem, &protocol conformance descriptor for UserDefaultItem);
  return sub_190D56290();
}

double sub_190B336C0@<D0>(void **a1@<X0>, char a2@<W1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v7 = *a1;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault, &unk_190DF3320);
  *&v12 = sub_190D54520();
  *(&v12 + 1) = v8;
  sub_190D55FC0();
  LOBYTE(v14) = v16;
  *(&v14 + 1) = *(&v16 + 1);
  sub_190D55FC0();
  *v15 = v17;
  type metadata accessor for UserDefaultItem(0);
  sub_190B39EF4(&qword_1EAD5DD20, type metadata accessor for UserDefaultItem, &protocol conformance descriptor for UserDefaultItem);
  v9 = v7;
  *&v13 = sub_190D53FC0();
  *(&v13 + 1) = v10;
  v15[24] = a2;
  v15[25] = a3;
  sub_190D55FC0();
  *&v18[2] = *&v15[10];
  *v18 = *&v15[8];
  a4[2] = v14;
  a4[3] = v16;
  a4[4] = *v15;
  result = *&v18[2];
  *(a4 + 74) = *&v18[2];
  *a4 = v12;
  a4[1] = v13;
  return result;
}

uint64_t sub_190B3386C()
{
  sub_190B32E84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0, &qword_190DF8B20);
  sub_190233640(&qword_1EAD5DCC8, &qword_1EAD582F0, &qword_190DF8B20, MEMORY[0x1E69E6338]);
  sub_190B38DB0();
  sub_190B39EF4(&qword_1EAD5DCD0, type metadata accessor for UserDefaultItem, &protocol conformance descriptor for UserDefaultItem);
  return sub_190D56290();
}

void sub_190B3397C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18, &unk_190DF3100);
  v98 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v96 = &v80 - v2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8, &unk_190DF43B0);
  v97 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v95 = &v80 - v3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20, &qword_190DF3110);
  v4 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v6 = &v80 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28, &qword_190DF43C0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v80 - v9;
  v100 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_190DD55F0;
  v11 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v91 = "ers";
  v12 = sub_190D56ED0();
  v13 = [v11 initWithSuiteName_];

  v101 = v13;
  if (!v13)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v81 = 0x8000000190E74EB0;
  v102 = type metadata accessor for UserDefaultItem(0);
  v14 = objc_allocWithZone(v102);
  v15 = &v14[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *(v15 + 12) = 256;
  *v15 = 0;
  v16 = &v14[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v107 = 0u;
  v108 = 0u;
  sub_19023C414(&v107, v106);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0, &unk_190DD9790);
  sub_190D538D0();
  sub_19021E7D8(&v107);
  v18 = *(v8 + 32);
  v88 = v10;
  v90 = v7;
  v89 = v8 + 32;
  v86 = v18;
  v18(&v14[v17], v10, v7);
  v19 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v107 = 0;
  sub_190D538D0();
  v20 = *(v4 + 32);
  v92 = v6;
  v93 = v4 + 32;
  v85 = v20;
  v20(&v14[v19], v6, v94);
  v14[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v21 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v107) = 0;
  v22 = v95;
  sub_190D538D0();
  v23 = v97 + 32;
  v24 = *(v97 + 32);
  v25 = v103;
  v24(&v14[v21], v22, v103);
  v26 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v107 = 0;
  *(&v107 + 1) = 0xE000000000000000;
  v27 = v96;
  sub_190D538D0();
  v83 = *(v98 + 32);
  v98 += 32;
  v83(&v14[v26], v27, v1);
  v28 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v107) = 0;
  sub_190D538D0();
  v24(&v14[v28], v22, v25);
  v29 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v107) = 0;
  sub_190D538D0();
  v84 = v24;
  v24(&v14[v29], v22, v25);
  v30 = v101;
  *&v14[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v101;
  v31 = &v14[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  v32 = v81;
  *v31 = 0xD000000000000017;
  v31[1] = v32;
  v33 = swift_allocObject();
  *(v33 + 2) = v30;
  *(v33 + 3) = 0xD000000000000017;
  *(v33 + 4) = v32;
  v34 = &v14[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v34 = sub_190B2426C;
  v34[1] = v33;
  swift_beginAccess();
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *(v15 + 12) = 256;
  swift_beginAccess();
  v35 = *v16;
  v36 = v16[1];
  *v16 = 0;
  v16[1] = 0;
  v37 = v30;
  sub_19022123C(v35, v36);
  v105.receiver = v14;
  v105.super_class = v102;
  v38 = objc_msgSendSuper2(&v105, sel_init);
  v39 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v38[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v40 = v38;
  sub_190B224E8();
  v38[v39] = 1;
  sub_190D52690();
  v41 = sub_190D56ED0();

  [v37 addObserver:v40 forKeyPath:v41 options:1 context:0];

  v42 = v99;
  *(v99 + 32) = v40;
  v109 = v42;
  v43 = v100[2];
  if (v43)
  {
    v97 = v23;
    v44 = v100 + 5;
    v45 = v103;
    v46 = v92;
    v82 = v1;
    while (1)
    {
      v101 = v43;
      v47 = *v44;
      v99 = *(v44 - 1);
      v100 = v44;
      v48 = objc_allocWithZone(MEMORY[0x1E695E000]);
      sub_190D52690();
      v49 = sub_190D56ED0();
      v50 = [v48 initWithSuiteName_];

      if (!v50)
      {
        break;
      }

      v51 = objc_allocWithZone(v102);
      v52 = &v51[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
      *(v52 + 1) = 0;
      *(v52 + 2) = 0;
      *(v52 + 12) = 256;
      *v52 = 0;
      v53 = &v51[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
      *v53 = 0;
      v53[1] = 0;
      v54 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
      v107 = 0u;
      v108 = 0u;
      sub_19023C414(&v107, v106);
      v55 = v88;
      sub_190D538D0();
      sub_19021E7D8(&v107);
      v86(&v51[v54], v55, v90);
      v56 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
      *&v107 = 0;
      sub_190D538D0();
      v85(&v51[v56], v46, v94);
      v51[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
      v57 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
      LOBYTE(v107) = 0;
      v58 = v95;
      sub_190D538D0();
      v59 = v45;
      v60 = v84;
      v84(&v51[v57], v58, v59);
      v61 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
      *&v107 = 0;
      *(&v107 + 1) = 0xE000000000000000;
      v62 = v96;
      sub_190D538D0();
      v63 = v62;
      v64 = v103;
      v83(&v51[v61], v63, v82);
      v65 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
      LOBYTE(v107) = 0;
      sub_190D538D0();
      v60(&v51[v65], v58, v64);
      v66 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
      LOBYTE(v107) = 0;
      sub_190D538D0();
      v60(&v51[v66], v58, v64);
      *&v51[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v50;
      v67 = &v51[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
      v68 = v99;
      *v67 = v99;
      v67[1] = v47;
      v69 = swift_allocObject();
      *(v69 + 2) = v50;
      *(v69 + 3) = v68;
      *(v69 + 4) = v47;
      v70 = &v51[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
      *v70 = sub_190B2426C;
      v70[1] = v69;
      swift_beginAccess();
      *v52 = 0;
      *(v52 + 1) = 0;
      *(v52 + 2) = 0;
      *(v52 + 12) = 256;
      swift_beginAccess();
      v71 = *v53;
      v72 = v53[1];
      *v53 = 0;
      v53[1] = 0;
      v73 = v50;
      sub_190D52690();
      v74 = v73;
      sub_19022123C(v71, v72);
      v104.receiver = v51;
      v104.super_class = v102;
      v75 = objc_msgSendSuper2(&v104, sel_init);
      v76 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
      v75[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
      v77 = v75;
      sub_190B224E8();
      v75[v76] = 1;
      sub_190D52690();
      v78 = sub_190D56ED0();

      [v74 addObserver:v77 forKeyPath:v78 options:1 context:0];

      v79 = v77;
      MEMORY[0x193AF29E0]();
      if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();

      v44 = v100 + 2;
      v43 = v101 - 1;
      v46 = v92;
      v45 = v103;
      if (v101 == 1)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_10;
  }
}

double FeatureDefaultsView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_190D549E0();
  v21 = *(v1 + 1);
  v4 = sub_190D555D0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_190D52690();
  sub_190B3397C();
  v12 = v11;
  v22[0] = 1;
  v22[1] = 0xE000000000000000;
  sub_190D55FC0();
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault, &unk_190DF3320);
  *(&v36 + 1) = sub_190D54520();
  v37 = v13;
  *(&v33 + 1) = v3;
  v34 = v21;
  v29 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0, &qword_190DF8B20);
  sub_190D55FC0();
  *&v35 = 0xE000000000000000;
  sub_190D55FC0();
  v14 = v37;
  v28 = v37;
  v31 = v37;
  *(a1 + 112) = v37;
  v26 = v35;
  v27 = v36;
  v24 = v33;
  v25 = v34;
  v23 = v32;
  LOBYTE(v29) = v8 & 1;
  v30[0] = v32;
  v30[1] = v33;
  v30[3] = v35;
  v30[4] = v36;
  v30[2] = v34;
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  v15 = v24;
  v16 = v23;
  v17 = v24;
  *(a1 + 32) = v23;
  *(a1 + 48) = v15;
  v18 = v27;
  *(a1 + 80) = v26;
  *(a1 + 96) = v18;
  v19 = v25;
  *(a1 + 64) = v25;
  v32 = v16;
  v33 = v17;
  v37 = v14;
  v35 = v26;
  v36 = v27;
  v34 = v19;
  sub_19081BE48(v4, v6, v8 & 1);
  sub_190D52690();
  sub_190B38EA4(v30, v22);
  sub_190B38EDC(&v32);
  sub_19081E474(v4, v6, v8 & 1);

  return result;
}

__n128 OnboardingDefaultsView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_190D52690();
  sub_190D55FC0();
  *&v4 = v9;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault, &unk_190DF3320);
  v6.n128_u64[1] = sub_190D54520();
  v7 = v2;
  *(&v4 + 1) = 0xD000000000000013;
  *v5 = 0x8000000190E74D80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0, &qword_190DF8B20);
  sub_190D55FC0();
  *&v5[8] = v8;
  sub_190D55FC0();
  result = v6;
  *(a1 + 32) = *v5;
  *(a1 + 48) = *&v5[16];
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_190B34920()
{
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18, &unk_190DF3100);
  v93 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v74 - v0;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8, &unk_190DF43B0);
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v2 = &v74 - v1;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20, &qword_190DF3110);
  v3 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v5 = &v74 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28, &qword_190DF43C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v74 - v8;
  v99 = MEMORY[0x1E69E7CC0];
  v10 = objc_opt_self();
  v75 = @"verboseConversationListFilteringLogging";
  v80 = v10;
  v74 = [v10 standardUserDefaults];
  v87 = type metadata accessor for UserDefaultItem(0);
  v11 = objc_allocWithZone(v87);
  v12 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  *v12 = 0;
  v13 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v97 = 0u;
  v98 = 0u;
  sub_19023C414(&v97, v96);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0, &unk_190DD9790);
  sub_190D538D0();
  sub_19021E7D8(&v97);
  v15 = *(v7 + 32);
  v82 = v9;
  v84 = v6;
  v83 = v7 + 32;
  v78 = v15;
  v15(&v11[v14], v9, v6);
  v16 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v97 = 0;
  sub_190D538D0();
  v17 = *(v3 + 32);
  v85 = v5;
  v86 = v3 + 32;
  v77 = v17;
  v17(&v11[v16], v5, v88);
  v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v18 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v97) = 0;
  sub_190D538D0();
  v19 = v92 + 32;
  v20 = *(v92 + 32);
  v21 = v91;
  v20(&v11[v18], v2, v91);
  v22 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v97 = 0;
  *(&v97 + 1) = 0xE000000000000000;
  v23 = v89;
  sub_190D538D0();
  v24 = *(v93 + 32);
  v93 += 32;
  v76 = v24;
  v24(&v11[v22], v23, v90);
  v25 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v97) = 0;
  sub_190D538D0();
  v20(&v11[v25], v2, v21);
  v26 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v97) = 0;
  sub_190D538D0();
  v92 = v19;
  v81 = v20;
  v20(&v11[v26], v2, v21);
  v27 = v74;
  *&v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v74;
  v28 = v75;
  v29 = sub_190D56F10();
  v31 = v30;
  v32 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v32 = v29;
  v32[1] = v30;
  v33 = swift_allocObject();
  *(v33 + 2) = v27;
  *(v33 + 3) = v29;
  *(v33 + 4) = v31;
  v34 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v34 = sub_190B2426C;
  v34[1] = v33;
  swift_beginAccess();
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  swift_beginAccess();
  v35 = *v13;
  v36 = v13[1];
  *v13 = 0;
  v13[1] = 0;
  v37 = v27;
  sub_190D52690();
  v38 = v36;
  v39 = v87;
  sub_19022123C(v35, v38);
  v95.receiver = v11;
  v95.super_class = v39;
  v40 = objc_msgSendSuper2(&v95, sel_init);
  v41 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v40[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v42 = v40;
  sub_190B224E8();
  v40[v41] = 1;
  sub_190D52690();
  v43 = sub_190D56ED0();

  [v37 addObserver:v42 forKeyPath:v43 options:1 context:0];

  MEMORY[0x193AF29E0]();
  if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();
  v75 = @"debugTypingIndicator";
  v80 = [v80 standardUserDefaults];
  v44 = objc_allocWithZone(v39);
  v45 = &v44[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v45 + 1) = 0;
  *(v45 + 2) = 0;
  *(v45 + 12) = 256;
  *v45 = 0;
  v46 = &v44[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v46 = 0;
  v46[1] = 0;
  v47 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v97 = 0u;
  v98 = 0u;
  sub_19023C414(&v97, v96);
  v48 = v82;
  sub_190D538D0();
  sub_19021E7D8(&v97);
  v78(&v44[v47], v48, v84);
  v49 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v97 = 0;
  v50 = v85;
  sub_190D538D0();
  v77(&v44[v49], v50, v88);
  v44[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v51 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v97) = 0;
  sub_190D538D0();
  v52 = v91;
  v53 = v81;
  v81(&v44[v51], v2, v91);
  v54 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v97 = 0;
  *(&v97 + 1) = 0xE000000000000000;
  v55 = v89;
  sub_190D538D0();
  v76(&v44[v54], v55, v90);
  v56 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v97) = 0;
  sub_190D538D0();
  v53(&v44[v56], v2, v52);
  v57 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v97) = 0;
  sub_190D538D0();
  v53(&v44[v57], v2, v52);
  v58 = v80;
  *&v44[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v80;
  v59 = v75;
  v60 = sub_190D56F10();
  v62 = v61;
  v63 = &v44[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v63 = v60;
  v63[1] = v61;
  v64 = swift_allocObject();
  *(v64 + 2) = v58;
  *(v64 + 3) = v60;
  *(v64 + 4) = v62;
  v65 = &v44[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v65 = sub_190B2426C;
  v65[1] = v64;
  swift_beginAccess();
  *v45 = 0;
  *(v45 + 1) = 0;
  *(v45 + 2) = 0;
  *(v45 + 12) = 256;
  swift_beginAccess();
  v66 = *v46;
  v67 = v46[1];
  *v46 = 0;
  v46[1] = 0;
  v68 = v58;
  sub_190D52690();
  sub_19022123C(v66, v67);
  v94.receiver = v44;
  v94.super_class = v87;
  v69 = objc_msgSendSuper2(&v94, sel_init);
  v70 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v69[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v71 = v69;
  sub_190B224E8();
  v69[v70] = 1;
  sub_190D52690();
  v72 = sub_190D56ED0();

  [v68 addObserver:v71 forKeyPath:v72 options:1 context:0];

  MEMORY[0x193AF29E0]();
  if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();
  return v99;
}

__n128 ConversationListDefaultsView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_190B34920();
  sub_190D55FC0();
  *&v4 = v9;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault, &unk_190DF3320);
  v6.n128_u64[1] = sub_190D54520();
  v7 = v2;
  *(&v4 + 1) = 0xD00000000000001ALL;
  *v5 = 0x8000000190E74DA0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0, &qword_190DF8B20);
  sub_190D55FC0();
  *&v5[8] = v8;
  sub_190D55FC0();
  result = v6;
  *(a1 + 32) = *v5;
  *(a1 + 48) = *&v5[16];
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v4;
  return result;
}

__CFString *sub_190B3558C()
{
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18, &unk_190DF3100);
  v291 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v1 = &v269 - v0;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8, &unk_190DF43B0);
  v292 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v3 = &v269 - v2;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20, &qword_190DF3110);
  v290 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287);
  v5 = &v269 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28, &qword_190DF43C0);
  v282 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v269 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v285 = swift_allocObject();
  *&v285->data = xmmword_190DDA050;
  v10 = objc_opt_self();
  v278 = v10;
  v271 = @"UseVectorBalloonMasks";
  v270 = [v10 standardUserDefaults];
  v286 = type metadata accessor for UserDefaultItem(0);
  v11 = objc_allocWithZone(v286);
  v12 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  *v12 = 0;
  v13 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  v272 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v302 = 0u;
  v303 = 0u;
  sub_19023C414(&v302, v301);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0, &unk_190DD9790);
  v280 = v9;
  sub_190D538D0();
  sub_19021E7D8(&v302);
  v15 = *(v7 + 32);
  v281 = v7 + 32;
  v276 = v15;
  v15(&v11[v14], v9, v6);
  v16 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v302 = 0;
  v283 = v5;
  sub_190D538D0();
  v17 = *(v290 + 32);
  v290 += 32;
  v275 = v17;
  v17(&v11[v16], v5, v287);
  v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v18 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v302) = 0;
  v19 = v3;
  sub_190D538D0();
  v20 = *(v292 + 32);
  v292 += 32;
  v21 = v3;
  v22 = v289;
  v20(&v11[v18], v21, v289);
  v279 = v20;
  v23 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v302 = 0;
  *(&v302 + 1) = 0xE000000000000000;
  v284 = v1;
  sub_190D538D0();
  v24 = *(v291 + 32);
  v291 += 32;
  v274 = v24;
  v24(&v11[v23], v1, v288);
  v25 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v302) = 0;
  sub_190D538D0();
  v26 = v22;
  v20(&v11[v25], v19, v22);
  v27 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v302) = 0;
  sub_190D538D0();
  v28 = v19;
  v20(&v11[v27], v19, v26);
  v29 = v270;
  v30 = v271;
  *&v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v270;
  v31 = sub_190D56F10();
  v33 = v32;
  v34 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v34 = v31;
  v34[1] = v32;
  v35 = swift_allocObject();
  *(v35 + 2) = v29;
  *(v35 + 3) = v31;
  *(v35 + 4) = v33;
  v36 = &v11[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v36 = sub_190B2426C;
  v36[1] = v35;
  swift_beginAccess();
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 256;
  v37 = v272;
  swift_beginAccess();
  v38 = *v37;
  v39 = v37[1];
  *v37 = 0;
  v37[1] = 0;
  v40 = v29;
  sub_190D52690();
  sub_19022123C(v38, v39);
  v41 = v286;
  v300.receiver = v11;
  v300.super_class = v286;
  v42 = objc_msgSendSuper2(&v300, sel_init);
  v43 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v42[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v44 = v42;
  sub_190B224E8();
  v42[v43] = 1;
  sub_190D52690();
  v45 = sub_190D56ED0();

  [v40 addObserver:v44 forKeyPath:v45 options:1 context:0];

  v285[1].isa = v44;
  v272 = @"AlwaysShowLoggedOutBanner";
  v271 = [v278 standardUserDefaults];
  v46 = objc_allocWithZone(v41);
  v47 = &v46[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v47 + 1) = 0;
  *(v47 + 2) = 0;
  *(v47 + 12) = 256;
  *v47 = 0;
  v48 = &v46[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v48 = 0;
  v48[1] = 0;
  v49 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v302 = 0u;
  v303 = 0u;
  sub_19023C414(&v302, v301);
  v50 = v280;
  sub_190D538D0();
  sub_19021E7D8(&v302);
  v276(&v46[v49], v50, v282);
  v51 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v302 = 0;
  v52 = v283;
  sub_190D538D0();
  v275(&v46[v51], v52, v287);
  v46[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v53 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v302) = 0;
  sub_190D538D0();
  v54 = v289;
  v55 = v279;
  v279(&v46[v53], v28, v289);
  v56 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v302 = 0;
  *(&v302 + 1) = 0xE000000000000000;
  v57 = v284;
  sub_190D538D0();
  v274(&v46[v56], v57, v288);
  v58 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v302) = 0;
  sub_190D538D0();
  v273 = v28;
  v55(&v46[v58], v28, v54);
  v59 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v302) = 0;
  sub_190D538D0();
  v55(&v46[v59], v28, v54);
  v61 = v271;
  v60 = v272;
  *&v46[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v271;
  v62 = sub_190D56F10();
  v64 = v63;
  v65 = &v46[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v65 = v62;
  v65[1] = v63;
  v66 = swift_allocObject();
  *(v66 + 2) = v61;
  *(v66 + 3) = v62;
  *(v66 + 4) = v64;
  v67 = &v46[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v67 = sub_190B2426C;
  v67[1] = v66;
  swift_beginAccess();
  *v47 = 0;
  *(v47 + 1) = 0;
  *(v47 + 2) = 0;
  *(v47 + 12) = 256;
  swift_beginAccess();
  v68 = *v48;
  v69 = v48[1];
  *v48 = 0;
  v48[1] = 0;
  v70 = v61;
  sub_190D52690();
  sub_19022123C(v68, v69);
  v299.receiver = v46;
  v71 = v286;
  v299.super_class = v286;
  v72 = objc_msgSendSuper2(&v299, sel_init);
  v73 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v72[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v74 = v72;
  sub_190B224E8();
  v72[v73] = 1;
  sub_190D52690();
  v75 = sub_190D56ED0();

  [(__CFString *)v70 addObserver:v74 forKeyPath:v75 options:1 context:0];

  v285[1].info = v74;
  v272 = @"showTranscriptDebugButton";
  v271 = [v278 standardUserDefaults];
  v76 = objc_allocWithZone(v71);
  v77 = &v76[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v77 + 1) = 0;
  *(v77 + 2) = 0;
  *(v77 + 12) = 256;
  *v77 = 0;
  v78 = &v76[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v78 = 0;
  v78[1] = 0;
  v79 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v302 = 0u;
  v303 = 0u;
  sub_19023C414(&v302, v301);
  v80 = v280;
  sub_190D538D0();
  sub_19021E7D8(&v302);
  v276(&v76[v79], v80, v282);
  v81 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v302 = 0;
  v82 = v283;
  sub_190D538D0();
  v275(&v76[v81], v82, v287);
  v76[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v83 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v302) = 0;
  v84 = v273;
  sub_190D538D0();
  v85 = v84;
  v86 = v84;
  v87 = v289;
  v88 = v279;
  v279(&v76[v83], v85, v289);
  v89 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v302 = 0;
  *(&v302 + 1) = 0xE000000000000000;
  v90 = v284;
  sub_190D538D0();
  v274(&v76[v89], v90, v288);
  v91 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v302) = 0;
  sub_190D538D0();
  v88(&v76[v91], v86, v87);
  v92 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v302) = 0;
  sub_190D538D0();
  v88(&v76[v92], v86, v87);
  v93 = v271;
  v94 = v272;
  *&v76[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v271;
  v95 = sub_190D56F10();
  v97 = v96;
  v98 = &v76[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v98 = v95;
  v98[1] = v96;
  v99 = swift_allocObject();
  *(v99 + 2) = v93;
  *(v99 + 3) = v95;
  *(v99 + 4) = v97;
  v100 = &v76[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v100 = sub_190B2426C;
  v100[1] = v99;
  swift_beginAccess();
  v77[24] = 0;
  *(v77 + 1) = 0;
  *(v77 + 2) = 0;
  *v77 = 0;
  v77[25] = 1;
  swift_beginAccess();
  v101 = *v78;
  v102 = v78[1];
  *v78 = 0;
  v78[1] = 0;
  v103 = v93;
  sub_190D52690();
  sub_19022123C(v101, v102);
  v104 = v286;
  v298.receiver = v76;
  v298.super_class = v286;
  v105 = objc_msgSendSuper2(&v298, sel_init);
  v106 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v105[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v107 = v105;
  sub_190B224E8();
  v105[v106] = 1;
  sub_190D52690();
  v108 = sub_190D56ED0();

  [(__CFString *)v103 addObserver:v107 forKeyPath:v108 options:1 context:0];

  v285[1].data = v107;
  v272 = @"showTranscriptCellDebugBorders";
  v271 = [v278 standardUserDefaults];
  v109 = objc_allocWithZone(v104);
  v110 = &v109[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v110 + 1) = 0;
  *(v110 + 2) = 0;
  *(v110 + 12) = 256;
  *v110 = 0;
  v111 = &v109[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v111 = 0;
  v111[1] = 0;
  v112 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v302 = 0u;
  v303 = 0u;
  sub_19023C414(&v302, v301);
  v113 = v280;
  sub_190D538D0();
  sub_19021E7D8(&v302);
  v276(&v109[v112], v113, v282);
  v114 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v302 = 0;
  v115 = v283;
  sub_190D538D0();
  v275(&v109[v114], v115, v287);
  v109[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v116 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v302) = 0;
  v117 = v86;
  sub_190D538D0();
  v118 = v86;
  v119 = v289;
  v120 = v279;
  v279(&v109[v116], v118, v289);
  v121 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v302 = 0;
  *(&v302 + 1) = 0xE000000000000000;
  v122 = v284;
  sub_190D538D0();
  v274(&v109[v121], v122, v288);
  v123 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v302) = 0;
  sub_190D538D0();
  v120(&v109[v123], v117, v119);
  v124 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v302) = 0;
  sub_190D538D0();
  v120(&v109[v124], v117, v119);
  v125 = v271;
  v126 = v272;
  *&v109[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v271;
  v127 = sub_190D56F10();
  v129 = v128;
  v130 = &v109[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v130 = v127;
  v130[1] = v128;
  v131 = swift_allocObject();
  *(v131 + 2) = v125;
  *(v131 + 3) = v127;
  *(v131 + 4) = v129;
  v132 = &v109[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v132 = sub_190B2426C;
  v132[1] = v131;
  swift_beginAccess();
  v110[24] = 0;
  *(v110 + 1) = 0;
  *(v110 + 2) = 0;
  *v110 = 0;
  v110[25] = 1;
  swift_beginAccess();
  v133 = *v111;
  v134 = v111[1];
  *v111 = 0;
  v111[1] = 0;
  v135 = v125;
  sub_190D52690();
  sub_19022123C(v133, v134);
  v136 = v286;
  v297.receiver = v109;
  v297.super_class = v286;
  v137 = objc_msgSendSuper2(&v297, sel_init);
  v138 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v137[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v139 = v137;
  sub_190B224E8();
  v137[v138] = 1;
  sub_190D52690();
  v140 = sub_190D56ED0();

  [(__CFString *)v135 addObserver:v139 forKeyPath:v140 options:1 context:0];

  v285[1].length = v139;
  v272 = @"showTickerHUD";
  v271 = [v278 standardUserDefaults];
  v141 = objc_allocWithZone(v136);
  v142 = &v141[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v142 + 1) = 0;
  *(v142 + 2) = 0;
  *(v142 + 12) = 256;
  *v142 = 0;
  v143 = &v141[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v143 = 0;
  v143[1] = 0;
  v144 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v302 = 0u;
  v303 = 0u;
  sub_19023C414(&v302, v301);
  v145 = v280;
  sub_190D538D0();
  sub_19021E7D8(&v302);
  v276(&v141[v144], v145, v282);
  v146 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v302 = 0;
  v147 = v283;
  sub_190D538D0();
  v275(&v141[v146], v147, v287);
  v141[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v148 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v302) = 0;
  v149 = v273;
  sub_190D538D0();
  v150 = v289;
  v151 = v279;
  v279(&v141[v148], v149, v289);
  v152 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v302 = 0;
  *(&v302 + 1) = 0xE000000000000000;
  v153 = v284;
  sub_190D538D0();
  v274(&v141[v152], v153, v288);
  v154 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v302) = 0;
  sub_190D538D0();
  v151(&v141[v154], v149, v150);
  v155 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v302) = 0;
  sub_190D538D0();
  v151(&v141[v155], v149, v150);
  v156 = v271;
  v157 = v272;
  *&v141[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v271;
  v158 = sub_190D56F10();
  v160 = v159;
  v161 = &v141[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v161 = v158;
  v161[1] = v159;
  v162 = swift_allocObject();
  *(v162 + 2) = v156;
  *(v162 + 3) = v158;
  *(v162 + 4) = v160;
  v163 = &v141[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v163 = sub_190B2426C;
  v163[1] = v162;
  swift_beginAccess();
  v142[24] = 0;
  *(v142 + 1) = 0;
  *(v142 + 2) = 0;
  *v142 = 0;
  v142[25] = 1;
  swift_beginAccess();
  v164 = *v143;
  v165 = v143[1];
  *v143 = 0;
  v143[1] = 0;
  v166 = v156;
  sub_190D52690();
  sub_19022123C(v164, v165);
  v167 = v286;
  v296.receiver = v141;
  v296.super_class = v286;
  v168 = objc_msgSendSuper2(&v296, sel_init);
  v169 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v168[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v170 = v168;
  sub_190B224E8();
  v168[v169] = 1;
  sub_190D52690();
  v171 = sub_190D56ED0();

  [(__CFString *)v166 addObserver:v170 forKeyPath:v171 options:1 context:0];

  v285[2].isa = v170;
  v271 = @"checkForChatControllerLeaks";
  v270 = [v278 standardUserDefaults];
  v172 = objc_allocWithZone(v167);
  v173 = &v172[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v173 + 1) = 0;
  *(v173 + 2) = 0;
  *(v173 + 12) = 256;
  *v173 = 0;
  v174 = &v172[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  v272 = &v172[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v174 = 0;
  v174[1] = 0;
  v175 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v302 = 0u;
  v303 = 0u;
  sub_19023C414(&v302, v301);
  v176 = v280;
  sub_190D538D0();
  sub_19021E7D8(&v302);
  v276(&v172[v175], v176, v282);
  v177 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v302 = 0;
  v178 = v283;
  sub_190D538D0();
  v275(&v172[v177], v178, v287);
  v172[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v179 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v302) = 0;
  v180 = v273;
  sub_190D538D0();
  v181 = v289;
  v182 = v279;
  v279(&v172[v179], v180, v289);
  v183 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v302 = 0;
  *(&v302 + 1) = 0xE000000000000000;
  v184 = v284;
  sub_190D538D0();
  v274(&v172[v183], v184, v288);
  v185 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v302) = 0;
  sub_190D538D0();
  v182(&v172[v185], v180, v181);
  v186 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v302) = 0;
  sub_190D538D0();
  v182(&v172[v186], v180, v181);
  v188 = v270;
  v187 = v271;
  *&v172[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v270;
  v189 = sub_190D56F10();
  v191 = v190;
  v192 = &v172[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v192 = v189;
  v192[1] = v190;
  v193 = swift_allocObject();
  *(v193 + 2) = v188;
  *(v193 + 3) = v189;
  *(v193 + 4) = v191;
  v194 = &v172[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v194 = sub_190B2426C;
  v194[1] = v193;
  swift_beginAccess();
  v173[24] = 0;
  *(v173 + 1) = 0;
  *(v173 + 2) = 0;
  *v173 = 0;
  v173[25] = 1;
  v195 = v272;
  swift_beginAccess();
  v196 = *v195;
  v197 = v195[1];
  *v195 = 0;
  v195[1] = 0;
  v198 = v188;
  sub_190D52690();
  sub_19022123C(v196, v197);
  v199 = v286;
  v295.receiver = v172;
  v295.super_class = v286;
  v200 = objc_msgSendSuper2(&v295, sel_init);
  v201 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v200[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v202 = v200;
  sub_190B224E8();
  v200[v201] = 1;
  sub_190D52690();
  v203 = sub_190D56ED0();

  [v198 addObserver:v202 forKeyPath:v203 options:1 context:0];

  v285[2].info = v202;
  v271 = @"CKInternalInstallShouldHideDebugMenu";
  v270 = [v278 standardUserDefaults];
  v204 = objc_allocWithZone(v199);
  v205 = &v204[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  *(v205 + 1) = 0;
  *(v205 + 2) = 0;
  *(v205 + 12) = 256;
  *v205 = 0;
  v206 = &v204[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  v272 = &v204[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
  *v206 = 0;
  v206[1] = 0;
  v207 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
  v302 = 0u;
  v303 = 0u;
  sub_19023C414(&v302, v301);
  v208 = v280;
  sub_190D538D0();
  sub_19021E7D8(&v302);
  v276(&v204[v207], v208, v282);
  v209 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
  *&v302 = 0;
  v210 = v283;
  sub_190D538D0();
  v275(&v204[v209], v210, v287);
  v204[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v211 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
  LOBYTE(v302) = 0;
  v212 = v273;
  sub_190D538D0();
  v213 = v289;
  v214 = v279;
  v279(&v204[v211], v212, v289);
  v215 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
  *&v302 = 0;
  *(&v302 + 1) = 0xE000000000000000;
  v216 = v284;
  sub_190D538D0();
  v274(&v204[v215], v216, v288);
  v217 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
  LOBYTE(v302) = 0;
  sub_190D538D0();
  v214(&v204[v217], v212, v213);
  v218 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
  LOBYTE(v302) = 0;
  sub_190D538D0();
  v214(&v204[v218], v212, v213);
  v219 = v285;
  v221 = v270;
  v220 = v271;
  *&v204[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v270;
  v222 = sub_190D56F10();
  v224 = v223;
  v225 = &v204[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
  *v225 = v222;
  v225[1] = v223;
  v226 = swift_allocObject();
  *(v226 + 2) = v221;
  *(v226 + 3) = v222;
  *(v226 + 4) = v224;
  v227 = &v204[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
  *v227 = sub_190B2426C;
  v227[1] = v226;
  swift_beginAccess();
  v205[24] = 0;
  *(v205 + 1) = 0;
  *(v205 + 2) = 0;
  *v205 = 0;
  v205[25] = 1;
  v228 = v272;
  swift_beginAccess();
  v229 = *v228;
  v230 = v228[1];
  *v228 = 0;
  v228[1] = 0;
  v231 = v221;
  sub_190D52690();
  sub_19022123C(v229, v230);
  v232 = v286;
  v294.receiver = v204;
  v294.super_class = v286;
  v233 = objc_msgSendSuper2(&v294, sel_init);
  v234 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  v233[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
  v235 = v233;
  sub_190B224E8();
  v233[v234] = 1;
  sub_190D52690();
  v236 = sub_190D56ED0();

  [v231 addObserver:v235 forKeyPath:v236 options:1 context:0];

  v219[2].data = v235;
  v304 = v219;
  v237 = [objc_opt_self() sharedFeatureFlags];
  LODWORD(v236) = [v237 isTranscriptBackgroundsEnabled];

  if (v236)
  {
    v285 = @"TranscriptBackgroundsShowSalientContentRectangle";
    v278 = [v278 standardUserDefaults];
    v238 = objc_allocWithZone(v232);
    v239 = &v238[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
    *(v239 + 1) = 0;
    *(v239 + 2) = 0;
    *(v239 + 12) = 256;
    *v239 = 0;
    v240 = &v238[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
    *v240 = 0;
    v240[1] = 0;
    v241 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
    v302 = 0u;
    v303 = 0u;
    sub_19023C414(&v302, v301);
    v242 = v280;
    sub_190D538D0();
    sub_19021E7D8(&v302);
    v276(&v238[v241], v242, v282);
    v243 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
    *&v302 = 0;
    v244 = v283;
    sub_190D538D0();
    v275(&v238[v243], v244, v287);
    v238[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
    v245 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
    LOBYTE(v302) = 0;
    v246 = v273;
    sub_190D538D0();
    v247 = v289;
    v248 = v279;
    v279(&v238[v245], v246, v289);
    v249 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
    *&v302 = 0;
    *(&v302 + 1) = 0xE000000000000000;
    v250 = v284;
    sub_190D538D0();
    v274(&v238[v249], v250, v288);
    v251 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
    LOBYTE(v302) = 0;
    sub_190D538D0();
    v248(&v238[v251], v246, v247);
    v252 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
    LOBYTE(v302) = 0;
    sub_190D538D0();
    v248(&v238[v252], v246, v247);
    v253 = v278;
    *&v238[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v278;
    v254 = sub_190D56F10();
    v256 = v255;
    v257 = &v238[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
    *v257 = v254;
    v257[1] = v255;
    v258 = swift_allocObject();
    *(v258 + 2) = v253;
    *(v258 + 3) = v254;
    v259 = v253;
    *(v258 + 4) = v256;
    v260 = &v238[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
    *v260 = sub_190B2426C;
    v260[1] = v258;
    swift_beginAccess();
    *v239 = 0;
    *(v239 + 1) = 0;
    *(v239 + 2) = 0;
    *(v239 + 12) = 256;
    swift_beginAccess();
    v261 = *v240;
    v262 = v240[1];
    *v240 = 0;
    v240[1] = 0;
    v263 = v259;
    sub_190D52690();
    sub_19022123C(v261, v262);
    v293.receiver = v238;
    v293.super_class = v286;
    v264 = objc_msgSendSuper2(&v293, sel_init);
    v265 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
    v264[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
    v266 = v264;
    sub_190B224E8();
    v264[v265] = 1;
    sub_190D52690();
    v267 = sub_190D56ED0();

    [v263 addObserver:v266 forKeyPath:v267 options:1 context:0];

    MEMORY[0x193AF29E0]();
    if (*((v304 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v304 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    return v304;
  }

  return v219;
}

__n128 TranscriptDefaultsView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_190D52690();
  sub_190D55FC0();
  *&v4 = v9;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault, &unk_190DF3320);
  v6.n128_u64[1] = sub_190D54520();
  v7 = v2;
  *(&v4 + 1) = 0xD000000000000013;
  *v5 = 0x8000000190E74DC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0, &qword_190DF8B20);
  sub_190D55FC0();
  *&v5[8] = v8;
  sub_190D55FC0();
  result = v6;
  *(a1 + 32) = *v5;
  *(a1 + 48) = *&v5[16];
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v4;
  return result;
}

__n128 EntryViewDefaultsView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_190D52690();
  sub_190D55FC0();
  *&v4 = v9;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault, &unk_190DF3320);
  v6.n128_u64[1] = sub_190D54520();
  v7 = v2;
  *(&v4 + 1) = 0xD000000000000012;
  *v5 = 0x8000000190E74DE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0, &qword_190DF8B20);
  sub_190D55FC0();
  *&v5[8] = v8;
  sub_190D55FC0();
  result = v6;
  *(a1 + 32) = *v5;
  *(a1 + 48) = *&v5[16];
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v4;
  return result;
}

__n128 SendAnimationDefaultsView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_190D52690();
  sub_190D55FC0();
  *&v4 = v9;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault, &unk_190DF3320);
  v6.n128_u64[1] = sub_190D54520();
  v7 = v2;
  *(&v4 + 1) = 0xD000000000000017;
  *v5 = 0x8000000190E74E00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0, &qword_190DF8B20);
  sub_190D55FC0();
  *&v5[8] = v8;
  sub_190D55FC0();
  result = v6;
  *(a1 + 32) = *v5;
  *(a1 + 48) = *&v5[16];
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v4;
  return result;
}

__n128 TickerHUDView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_190D52690();
  sub_190D55FC0();
  *&v4 = v9;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault, &unk_190DF3320);
  v6.n128_u64[1] = sub_190D54520();
  v7 = v2;
  *(&v4 + 1) = 0xD000000000000013;
  *v5 = 0x8000000190E74E20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0, &qword_190DF8B20);
  sub_190D55FC0();
  *&v5[8] = v8;
  sub_190D55FC0();
  result = v6;
  *(a1 + 32) = *v5;
  *(a1 + 48) = *&v5[16];
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v4;
  return result;
}

__n128 PhotosDefaultsView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_190D52690();
  sub_190D55FC0();
  *&v4 = v9;
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault, &unk_190DF3320);
  v6.n128_u64[1] = sub_190D54520();
  v7 = v2;
  *(&v4 + 1) = 0x4420736F746F6850;
  *v5 = 0xEF73746C75616665;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0, &qword_190DF8B20);
  sub_190D55FC0();
  *&v5[8] = v8;
  sub_190D55FC0();
  result = v6;
  *(a1 + 32) = *v5;
  *(a1 + 48) = *&v5[16];
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v4;
  return result;
}

void sub_190B37C80()
{
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA18, &unk_190DF3100);
  v1 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v72 - v2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8, &unk_190DF43B0);
  v3 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v72 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA20, &qword_190DF3110);
  v92 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v72 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DA28, &qword_190DF43C0);
  v91 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v72 - v6;
  v7 = "ers";
  v8 = *v0;
  v97 = MEMORY[0x1E69E7CC0];
  v9 = "com.apple.Messages";
  v10 = "com.apple.MobileSMS";
  v11 = 0xD000000000000010;
  if (v8 != 4)
  {
    v11 = 0xD000000000000019;
    v10 = "com.apple.madrid";
  }

  if (v8 == 3)
  {
    v12 = 0xD000000000000013;
  }

  else
  {
    v12 = v11;
  }

  if (v8 != 3)
  {
    v9 = v10;
  }

  v13 = "com.apple.messages";
  if (v8 == 1)
  {
    v14 = 0xD000000000000013;
  }

  else
  {
    v14 = 0xD000000000000012;
  }

  if (v8 != 1)
  {
    v13 = "com.apple.mobileSMS";
  }

  if (v8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0xD000000000000012;
  }

  if (v8)
  {
    v7 = v13;
  }

  if (v8 <= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  if (v8 <= 2)
  {
    v9 = v7;
  }

  v17 = (v9 | 0x8000000000000000);
  v18 = objc_opt_self();
  v19 = [v18 standardUserDefaults];
  v20 = sub_190D56ED0();
  v21 = [v19 persistentDomainForName_];

  if (!v21)
  {
    goto LABEL_44;
  }

  v22 = sub_190D56D90();

  v23 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v24 = sub_190D56ED0();
  v25 = [v23 initWithSuiteName_];

  if (v25)
  {

    v78 = v25;
    v26 = *(v22 + 16);
    if (v26)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

  v90 = 0;
  v30 = v22;
  v31 = [objc_opt_self() mainBundle];
  v32 = [v31 bundleIdentifier];

  if (v32)
  {
    v33 = sub_190D56F10();
    v35 = v34;

    if (v16 == v33 && v17 == v35)
    {
    }

    else
    {
      v36 = sub_190D58760();

      if ((v36 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v37 = [v18 standardUserDefaults];
    if (v37)
    {
      v78 = v37;
      v22 = v30;
      v25 = v90;
      v26 = *(v22 + 16);
      if (v26)
      {
LABEL_26:
        v27 = sub_190A92948(v26, 0);
        v90 = sub_190C837C4(v95, v27 + 4, v26, v22);
        v28 = *&v95[0];
        v17 = v96;
        v29 = v25;
        sub_190219C78(v28);
        if (v90 != v26)
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_37:
        *&v95[0] = v27;
        sub_190D50920();
        sub_190B394BC(v95);

        v39 = *&v95[0];
        v77 = *(*&v95[0] + 16);
        if (!v77)
        {
LABEL_43:

          v71 = v78;

          return;
        }

        v17 = 0;
        v75 = (v91 + 4);
        v74 = (v92 + 32);
        v73 = (v3 + 32);
        v72 = (v1 + 32);
        v40 = (*&v95[0] + 40);
        v76 = *&v95[0];
        while (v17 < *(v39 + 16))
        {
          v92 = v17;
          v88 = *v40;
          v89 = *(v40 - 1);
          v91 = v40;
          v90 = type metadata accessor for UserDefaultItem(0);
          v41 = objc_allocWithZone(v90);
          v42 = &v41[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
          *(v42 + 1) = 0;
          *(v42 + 2) = 0;
          *(v42 + 12) = 256;
          *v42 = 0;
          v43 = &v41[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_changeHandler];
          *v43 = 0;
          v43[1] = 0;
          v44 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__value;
          memset(v95, 0, sizeof(v95));
          sub_19023C414(v95, v94);
          sub_190D52690();
          v87 = v78;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0, &unk_190DD9790);
          v45 = v79;
          sub_190D538D0();
          sub_19021E7D8(v95);
          (*v75)(&v41[v44], v45, v80);
          v46 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__doubleValue;
          *&v95[0] = 0;
          v47 = v81;
          sub_190D538D0();
          (*v74)(&v41[v46], v47, v82);
          v41[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
          v48 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__BOOLValue;
          LOBYTE(v95[0]) = 0;
          v49 = v83;
          sub_190D538D0();
          v50 = *v73;
          v51 = v84;
          (*v73)(&v41[v48], v49, v84);
          v52 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__displayString;
          *&v95[0] = 0;
          *(&v95[0] + 1) = 0xE000000000000000;
          v53 = v85;
          sub_190D538D0();
          (*v72)(&v41[v52], v53, v86);
          v54 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__valueCanBeDisplayedInline;
          LOBYTE(v95[0]) = 0;
          sub_190D538D0();
          v50(&v41[v54], v49, v51);
          v55 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem__isPinned;
          LOBYTE(v95[0]) = 0;
          sub_190D538D0();
          v50(&v41[v55], v49, v51);
          v56 = v87;
          *&v41[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults] = v87;
          v57 = &v41[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_key];
          v58 = v89;
          v59 = v88;
          *v57 = v89;
          v57[1] = v59;
          v60 = swift_allocObject();
          v60[2] = v56;
          v60[3] = v58;
          v60[4] = v59;
          v61 = &v41[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_getter];
          *v61 = sub_190B21988;
          v61[1] = v60;
          swift_beginAccess();
          *v42 = 0;
          *(v42 + 1) = 0;
          *(v42 + 2) = 0;
          *(v42 + 12) = 256;
          swift_beginAccess();
          v62 = *v43;
          v63 = v43[1];
          *v43 = 0;
          v43[1] = 0;
          v64 = v56;
          sub_190D52690();
          v65 = v64;
          sub_19022123C(v62, v63);
          v93.receiver = v41;
          v93.super_class = v90;
          v66 = objc_msgSendSuper2(&v93, sel_init);
          v67 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
          v66[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] = 0;
          v68 = v66;
          sub_190B224E8();
          v66[v67] = 1;
          sub_190D52690();
          v69 = sub_190D56ED0();

          [(objc_class *)v65 addObserver:v68 forKeyPath:v69 options:1 context:0];

          v70 = v68;
          MEMORY[0x193AF29E0]();
          if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          v17 = v92 + 1;
          sub_190D571E0();

          v40 = v91 + 2;
          v39 = v76;
          if (v77 == v17)
          {
            goto LABEL_43;
          }
        }

        __break(1u);
        goto LABEL_46;
      }

LABEL_36:
      v38 = v25;

      v27 = MEMORY[0x1E69E7CC0];
      goto LABEL_37;
    }

LABEL_44:

    return;
  }

LABEL_47:
  __break(1u);

  __break(1u);
}

double FoundDefaultsView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000012;
  v4 = *v1;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
LABEL_6:
      v6 = 0x8000000190E5AD60;
      goto LABEL_7;
    }

    v5 = "com.apple.Messages";
  }

  else
  {
    if (!*v1)
    {
      goto LABEL_6;
    }

    v5 = "com.apple.messages";
    if (v4 != 1)
    {
      goto LABEL_6;
    }
  }

  v6 = 0x8000000190E5AD60;
  if ((v5 | 0x8000000000000000) == 0x8000000190E5AD60)
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_7:
  v7 = sub_190D58760();

  if (v7)
  {
    goto LABEL_20;
  }

  if (v4 <= 2)
  {
    if (!v4)
    {
      v8 = "ers";
LABEL_18:
      if (0x8000000190E5AD80 == (v8 | 0x8000000000000000))
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    if (v4 != 1)
    {
      v8 = "com.apple.mobileSMS";
      goto LABEL_18;
    }
  }

LABEL_12:
  v9 = sub_190D58760();

  if ((v9 & 1) == 0)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_21;
  }

LABEL_20:
  sub_190D549E0();
  v10 = sub_190D555D0();
  v11 = v14;
  v13 = v15;
  v12 = v16 & 1;
  sub_19081BE48(v10, v14, v16 & 1);
  sub_190D52690();
LABEL_21:
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v6 = 0x8000000190E5ADA0;
      v3 = 0xD000000000000013;
    }

    else if (v4 == 4)
    {
      v6 = 0x8000000190E5ADC0;
      v3 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x8000000190E5ADE0;
      v3 = 0xD000000000000019;
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v6 = 0x8000000190E5AD80;
    }
  }

  else
  {
    v6 = 0x8000000190E5AD40;
  }

  sub_190B37C80();
  *&v33[0] = 0;
  *(&v33[0] + 1) = 0xE000000000000000;
  sub_190D55FC0();
  type metadata accessor for PinnedUserDefault(0);
  sub_190B39EF4(&qword_1EAD58060, type metadata accessor for PinnedUserDefault, &unk_190DF3320);
  *(&v38 + 1) = sub_190D54520();
  v39 = v17;
  *(&v36 + 1) = v3;
  *v37 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0, &qword_190DF8B20);
  sub_190D55FC0();
  *&v37[8] = v33[0];
  sub_190D55FC0();
  v23 = *v37;
  v24 = *&v37[16];
  v25 = v38;
  v26 = v39;
  v21 = v35;
  v22 = v36;
  v27 = v35;
  v28 = v36;
  v32 = v39;
  v29 = *v37;
  v30 = *&v37[16];
  v31 = v38;
  sub_1909F173C(v10, v11, v12, v13);
  sub_190B38EA4(&v27, v33);
  sub_1909F1780(v10, v11, v12, v13);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  v18 = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v18;
  *(a1 + 96) = v31;
  *(a1 + 112) = v32;
  v19 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v19;
  v33[0] = v21;
  v33[1] = v22;
  v34 = v26;
  v33[3] = v24;
  v33[4] = v25;
  v33[2] = v23;
  sub_190B38EDC(v33);
  return sub_1909F1780(v10, v11, v12, v13);
}

void sub_190B38C28(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  *a2 = v3;
}

uint64_t sub_190B38CA8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D52690();
  sub_190D50920();
  return sub_190D53910();
}

unint64_t sub_190B38D2C()
{
  result = qword_1EAD5DC60;
  if (!qword_1EAD5DC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DC58, &qword_190DF8B10);
    sub_190B38DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DC60);
  }

  return result;
}

unint64_t sub_190B38DB0()
{
  result = qword_1EAD5DC68;
  if (!qword_1EAD5DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DC68);
  }

  return result;
}

unint64_t sub_190B38E04()
{
  result = qword_1EAD5DC70;
  if (!qword_1EAD5DC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DC48, &qword_190DF3D00);
    sub_190B38D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DC70);
  }

  return result;
}

uint64_t sub_190B3906C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_190B390B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_190B391B8()
{
  result = qword_1EAD5DCD8;
  if (!qword_1EAD5DCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DCE0, &qword_190DF4388);
    sub_190B38E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DCD8);
  }

  return result;
}

unint64_t sub_190B39244()
{
  result = qword_1EAD5DCE8;
  if (!qword_1EAD5DCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DCF0, &qword_190DF4390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DC90, &qword_190DF3D78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DC88, &qword_190DF3D70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DCB0, &qword_190DF3D90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DC80, &qword_190DF3D68);
    sub_190233640(&qword_1EAD5DCA8, &qword_1EAD5DC80, &qword_190DF3D68, MEMORY[0x1E697CD20]);
    sub_19081E484();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5DCB8, &qword_190DF3D98);
    sub_190233640(&qword_1EAD5DCC0, &qword_1EAD5DCB8, &qword_190DF3D98, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DCE8);
  }

  return result;
}

unint64_t sub_190B39468()
{
  result = qword_1EAD5DD08;
  if (!qword_1EAD5DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5DD08);
  }

  return result;
}

void sub_190B394BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1909E39A8(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_190B39528(v4);
  *a1 = v2;
}

void sub_190B39528(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_190D58710();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_190D571D0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_190B396F0(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_190B39620(0, v2, 1, a1);
  }
}

uint64_t sub_190B39620(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_190D58760(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_190B396F0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_1909E383C(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_190B39CCC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_190D58760();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_190D58760()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_190835714(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_190835714((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_190B39CCC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1909E383C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_1909E37B0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_190D58760() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
}

uint64_t sub_190B39CCC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_190D58760() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_190D58760() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_190B39EF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_190B39F4C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD5DD30);
  __swift_project_value_buffer(v0, qword_1EAD5DD30);
  sub_190D53010();
  return sub_190D53030();
}

double sub_190B3A0B8(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_190B3A118(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit25CKSuggestedActionsHandler_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

void sub_190B3A224(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didRequestSendResponseForAction_];
    swift_unknownObjectRelease();
  }

  if (![a1 action])
  {
    goto LABEL_46;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectRetain();
    sub_190AE9710(v4);
LABEL_6:
    swift_unknownObjectRelease_n();
    return;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
LABEL_11:
      swift_unknownObjectRelease();
      return;
    }

    [v7 didRequestLocationPush_];
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    sub_190B9036C(v9);
    goto LABEL_6;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    swift_unknownObjectRetain();
    CKSuggestedActionsHandler.createCalendarEvent(_:)(v11);
    goto LABEL_6;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    swift_unknownObjectRetain();
    _s7ChatKit25CKSuggestedActionsHandlerC17openInApplicationyySo15IMActionOpenAppCF_0(v13);
    goto LABEL_6;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = swift_unknownObjectWeakLoadStrong();
    if (!v16)
    {
      goto LABEL_11;
    }

    [v16 didRequestOpenWebView_];
    goto LABEL_10;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      v25 = swift_unknownObjectWeakLoadStrong();
      if (!v25)
      {
        goto LABEL_11;
      }

      v26 = v25;
      v27 = [v24 phoneNumber];
      if (!v27)
      {
        sub_190D56F10();
        v27 = sub_190D56ED0();
      }

      [v26 didRequestComposeAudio_];
      goto LABEL_38;
    }

    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v29 = v28;
      v30 = swift_unknownObjectWeakLoadStrong();
      if (!v30)
      {
        goto LABEL_11;
      }

      v31 = v30;
      v27 = [v29 phoneNumber];
      if (!v27)
      {
        sub_190D56F10();
        v27 = sub_190D56ED0();
      }

      [v31 didRequestComposeVideo_];
LABEL_38:

      goto LABEL_10;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v32 = swift_unknownObjectWeakLoadStrong();
      if (!v32)
      {
        goto LABEL_11;
      }

      [v32 didRequestSendDeviceDetails];
      goto LABEL_10;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v33 = swift_unknownObjectWeakLoadStrong();
      if (!v33)
      {
        goto LABEL_11;
      }

      [v33 didRequestSettings];
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
LABEL_46:
    if (qword_1EAD51DF8 != -1)
    {
      swift_once();
    }

    v34 = sub_190D53040();
    __swift_project_value_buffer(v34, qword_1EAD5DD30);
    v35 = a1;
    v36 = sub_190D53020();
    v37 = sub_190D57690();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45 = v39;
      *v38 = 136315138;
      v40 = [v35 dictionaryRepresentation];
      sub_190D56D90();

      v41 = sub_190D56DA0();
      v43 = v42;

      v44 = sub_19021D9F8(v41, v43, &v45);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_19020E000, v36, v37, "Unrecognized Action: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x193AF7A40](v39, -1, -1);
      MEMORY[0x193AF7A40](v38, -1, -1);
    }

    return;
  }

  v18 = v17;
  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = v19;
  swift_unknownObjectRetain();
  v21 = [v18 phoneNumber];
  if (!v21)
  {
    sub_190D56F10();
    v21 = sub_190D56ED0();
  }

  v22 = [v18 text];
  if (!v22)
  {
    sub_190D56F10();
    v22 = sub_190D56ED0();
  }

  [v20 didRequestComposeText:v21 text:v22];
  swift_unknownObjectRelease_n();

  swift_unknownObjectRelease();
}

id CKSuggestedActionsHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKSuggestedActionsHandler.init()()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSuggestedActionsHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKSuggestedActionsHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CKSuggestedActionsHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_190B3AA78(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_190D515F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    sub_190D515E0();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_19084CF50(v3);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v9 = [objc_opt_self() sharedApplication];
      v10 = sub_190D51570();
      sub_19082233C(MEMORY[0x1E69E7CC0]);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_190964630();
      v11 = sub_190D56D60();

      [v9 openURL:v10 options:v11 completionHandler:0];

      (*(v5 + 8))(v7, v4);
    }
  }
}

id sub_190B3AC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_190D515F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  v11 = sub_190D56ED0();
  [v10 setTitle_];

  v12 = sub_190D56ED0();
  [v10 setSummary_];

  v32.width = 10.0;
  v32.height = 10.0;
  UIGraphicsBeginImageContextWithOptions(v32, 0, 0.0);
  v13 = [objc_opt_self() clearColor];
  [v13 setFill];

  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = 10.0;
  v33.size.height = 10.0;
  UIRectFill(v33);
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (v14)
  {
    v30 = v7;
    v31 = a5;
    v15 = objc_allocWithZone(MEMORY[0x1E696EC68]);
    v16 = v14;
    v17 = [v15 initWithPlatformImage_];
    [v10 setIcon_];
    v18 = [objc_allocWithZone(MEMORY[0x1E696ECD8]) init];
    [v18 setMetadata_];
    v19 = [objc_allocWithZone(MEMORY[0x1E69A5C48]) init];
    v20 = [v18 dataRepresentationWithOutOfLineAttachments_];
    v21 = sub_190D51670();
    v23 = v22;

    v24 = sub_190D51660();
    [v19 setData_];

    v25 = [v10 URL];
    if (v25)
    {
      v26 = v25;
      sub_190D515B0();

      v27 = sub_190D51570();
      (*(v30 + 8))(v9, v6);
    }

    else
    {
      v27 = 0;
    }

    [v19 setUrl_];

    [v19 setPluginBundleID_];
    sub_190A8EC70(v31);
    v28 = sub_190D56D60();

    [v19 setUserInfo_];
  }

  else
  {

    return 0;
  }

  return v19;
}

double sub_190B3B154@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_190B3B1E4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190B3BE94(v2, v3);
  v5 = v4;
  return sub_190D53910();
}

unint64_t EffectType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

double sub_190B3B2B8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

id sub_190B3B344()
{
  result = [objc_allocWithZone(CKFullScreenEffectManager) init];
  qword_1EAD5DD50 = result;
  return result;
}

void sub_190B3B378()
{
  if (qword_1EAD51E00 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v35 = qword_1EAD5DD50;
    v1 = [qword_1EAD5DD50 effectIdentifiers];
    if (!v1)
    {
      break;
    }

    v2 = v1;
    v30 = v0;
    v0 = sub_190D57180();

    v33 = *(v0 + 16);
    if (v33)
    {
      v3 = 0;
      v4 = v0 + 32;
      v5 = MEMORY[0x1E69E7CC0];
      v31 = v0;
      while (1)
      {
        if (v3 >= *(v0 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        sub_19021834C(v4, &v41);
        swift_dynamicCast();
        v41 = v39;
        v42 = v40;
        sub_190D52690();
        MEMORY[0x193AF28B0](0x6E6F69736956, 0xE600000000000000);
        v7 = v41;
        v6 = v42;
        v8 = sub_190D56ED0();
        v9 = [v35 localizedDisplayNameForEffectWithIdentifier_];

        if (!v9)
        {
          break;
        }

        v37 = sub_190D56F10();
        v11 = v10;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_190836B20(0, *(v5 + 2) + 1, 1, v5);
        }

        v13 = *(v5 + 2);
        v12 = *(v5 + 3);
        if (v13 >= v12 >> 1)
        {
          v5 = sub_190836B20((v12 > 1), v13 + 1, 1, v5);
        }

        ++v3;
        *(v5 + 2) = v13 + 1;
        v14 = &v5[56 * v13];
        *(v14 + 4) = v39;
        *(v14 + 5) = v40;
        *(v14 + 6) = 0;
        *(v14 + 7) = v37;
        *(v14 + 8) = v11;
        *(v14 + 9) = v7;
        *(v14 + 10) = v6;
        v4 += 32;
        v0 = v31;
        if (v33 == v3)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      break;
    }

    v5 = MEMORY[0x1E69E7CC0];
LABEL_14:

    v34 = objc_opt_self();
    v15 = [v34 effectIdentifiers];
    if (!v15)
    {
      goto LABEL_31;
    }

    v16 = v15;
    v38 = v5;
    v17 = sub_190D57180();

    v32 = *(v17 + 16);
    if (!v32)
    {
LABEL_24:

      *(v30 + OBJC_IVAR____TtC7ChatKit28EffectPickerExtensionDetails_effectData) = v38;

      return;
    }

    v18 = 0;
    v19 = (v17 + 40);
    while (v18 < *(v17 + 16))
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v41 = v20;
      v42 = v21;
      swift_bridgeObjectRetain_n();
      MEMORY[0x193AF28B0](0x6E6F69736956, 0xE600000000000000);
      v23 = v41;
      v22 = v42;
      v24 = sub_190D56ED0();
      v25 = [v34 localizedEffectNameForEffectWithIdentifier_];

      if (!v25)
      {
        goto LABEL_29;
      }

      v0 = sub_190D56F10();
      v36 = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_190836B20(0, *(v38 + 2) + 1, 1, v38);
      }

      v28 = *(v38 + 2);
      v27 = *(v38 + 3);
      if (v28 >= v27 >> 1)
      {
        v38 = sub_190836B20((v27 > 1), v28 + 1, 1, v38);
      }

      ++v18;
      *(v38 + 2) = v28 + 1;
      v29 = &v38[56 * v28];
      *(v29 + 4) = v20;
      *(v29 + 5) = v21;
      *(v29 + 6) = 1;
      *(v29 + 7) = v0;
      *(v29 + 8) = v36;
      *(v29 + 9) = v23;
      *(v29 + 10) = v22;
      v19 += 2;
      if (v32 == v18)
      {
        goto LABEL_24;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  __break(1u);
LABEL_31:
  __break(1u);
}