uint64_t FlowAction.presentationSizing.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v23 - v9);
  v11 = OBJC_IVAR____TtC12GameStoreKit6Action_id;
  LOBYTE(v24) = *(v2 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page);
  v25[4] = &protocol witness table for FlowAction;
  v12 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl;
  v25[3] = v4;
  v25[0] = v2;
  v13 = (v2 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  swift_beginAccess();
  v15 = *v13;
  v14 = v13[1];
  swift_unknownObjectRetain();

  static FlowAction.Destination.from(id:page:url:dataProvider:appStateController:)(v2 + v11, &v24, v2 + v12, v25, v15, v14, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload == 3)
    {
      a1[3] = &type metadata for AnyPresentationSizing;
      a1[4] = sub_24F45F0A8();
      v20 = swift_allocObject();
      *a1 = v20;
      v20[5] = &type metadata for FixedPresentationSizing;
      v20[6] = sub_24F199A18();
      v21 = swift_allocObject();
      v20[2] = v21;
      *(v21 + 16) = 0x4085000000000000;
      *(v21 + 24) = 0;
      v22 = 0x7FF0000000000000;
LABEL_13:
      *(v21 + 32) = v22;
      *(v21 + 40) = 0;
      return sub_24F461E40(v10, type metadata accessor for FlowAction.Destination);
    }

    if (EnumCaseMultiPayload != 6)
    {
LABEL_12:
      a1[3] = &type metadata for FixedPresentationSizing;
      a1[4] = sub_24F199A18();
      v21 = swift_allocObject();
      *a1 = v21;
      *(v21 + 16) = 0x4089A00000000000;
      *(v21 + 24) = 0;
      v22 = 0x4087C00000000000;
      goto LABEL_13;
    }

LABEL_9:
    sub_24F461E40(v10, type metadata accessor for FlowAction.Destination);
    a1[3] = &type metadata for FixedPresentationSizing;
    a1[4] = sub_24F199A18();
    result = swift_allocObject();
    *a1 = result;
    *(result + 16) = 0x4082C00000000000;
    *(result + 24) = 0;
    *(result + 32) = 0x4085400000000000;
    *(result + 40) = 0;
    return result;
  }

  if (EnumCaseMultiPayload == 13)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 27)
  {
    goto LABEL_12;
  }

  sub_24F461DD8(v10, v7, type metadata accessor for FlowAction.Destination);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
    goto LABEL_12;
  }

  v17 = v25[0];
  v24 = v25[0];
  a1[3] = &type metadata for AnyPresentationSizing;
  a1[4] = sub_24F45F0A8();
  v18 = swift_allocObject();
  *a1 = v18;
  FlowDestination.presentationSizing.getter((v18 + 16));
  sub_24EAB9674(v17);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return sub_24F461E40(v10, type metadata accessor for FlowAction.Destination);
}

uint64_t FlowDestination.presentationSizing.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243DE8, &qword_24F9F8CA8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v54 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243DF0, &qword_24F9F8CB0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243DF8, &qword_24F9F8CB8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243E00, &unk_24F9F8CC0);
  MEMORY[0x28223BE20](v16);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v54 - v22;
  v24 = *v1;
  v25 = (*v1 >> 59) & 0x1E | (*v1 >> 2) & 1;
  if (v25 <= 7)
  {
    v56 = v7;
    if (v25 > 3)
    {
      if ((v25 - 4) >= 2)
      {
        goto LABEL_15;
      }

LABEL_14:
      a1[3] = &type metadata for FixedPresentationSizing;
      a1[4] = sub_24F199A18();
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = 0x4089A00000000000;
      *(result + 24) = 0;
      v27 = 0x4087C00000000000;
      goto LABEL_16;
    }

    if ((v25 - 2) < 2 || !v25)
    {
      goto LABEL_14;
    }

    v28 = v20;
    v29 = v21;
    sub_24E60169C((v24 & 0xFFFFFFFFFFFFFFBLL) + 16, v58, &qword_27F215768, "D5\r");
    sub_24E615E00(v58, v57);
    v54[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243E08, &qword_24F9F8CD0);
    v55 = v28;
    v30 = swift_dynamicCast();
    v31 = *(v29 + 56);
    v54[0] = v29 + 56;
    if (v30)
    {
      v32 = v55;
      v33 = v31;
      v31(v15, 0, 1, v55);
      sub_24E6009C8(v15, v23, &qword_27F243E00, &unk_24F9F8CC0);
      v34 = &v23[*(v32 + 28)];
      if ((v34[25] & 1) == 0)
      {
        v45 = v34[24];
        v46 = *(v34 + 2);
        v47 = *(v34 + 2);
        v48 = *v34;
        v49 = sub_24F199A18();
        v50 = swift_allocObject();
        *(v50 + 16) = v48;
        *(v50 + 24) = v47 & 1;
        *(v50 + 32) = v46;
        *(v50 + 40) = v45 & 1;
        sub_24E601704(v23, &qword_27F243E00, &unk_24F9F8CC0);
        goto LABEL_28;
      }

      v35 = &qword_27F243E00;
      v36 = &unk_24F9F8CC0;
      v37 = v23;
    }

    else
    {
      v33 = v31;
      v31(v15, 1, 1, v55);
      v35 = &qword_27F243DF8;
      v36 = &qword_24F9F8CB8;
      v37 = v15;
    }

    sub_24E601704(v37, v35, v36);
    sub_24E615E00(v58, v57);
    v38 = swift_dynamicCast();
    v39 = v56;
    if ((v38 & 1) == 0)
    {
      sub_24E601704(v58, &qword_27F215768, "D5\r");
      (*(v39 + 56))(v5, 1, 1, v6);
      v42 = &qword_27F243DE8;
      v43 = &qword_24F9F8CA8;
      v44 = v5;
      goto LABEL_26;
    }

    (*(v56 + 56))(v5, 0, 1, v6);
    (*(v39 + 32))(v9, v5, v6);
    sub_24F9294D8();
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v39 + 8))(v9, v6);
      sub_24E601704(v58, &qword_27F215768, "D5\r");
      v33(v12, 1, 1, v55);
      v42 = &qword_27F243DF8;
      v43 = &qword_24F9F8CB8;
      v44 = v12;
      goto LABEL_26;
    }

    v40 = v55;
    v33(v12, 0, 1, v55);
    sub_24E6009C8(v12, v18, &qword_27F243E00, &unk_24F9F8CC0);
    v41 = &v18[*(v40 + 28)];
    if (v41[25])
    {
      sub_24E601704(v18, &qword_27F243E00, &unk_24F9F8CC0);
      (*(v39 + 8))(v9, v6);
      v42 = &qword_27F215768;
      v43 = "D5\r";
      v44 = v58;
LABEL_26:
      sub_24E601704(v44, v42, v43);
      v49 = sub_24F199A18();
      result = swift_allocObject();
      *(result + 16) = 0x4089A00000000000;
      *(result + 24) = 0;
      *(result + 32) = 0x4087C00000000000;
      *(result + 40) = 0;
LABEL_29:
      *a1 = result;
      a1[3] = &type metadata for FixedPresentationSizing;
      a1[4] = v49;
      return result;
    }

    LODWORD(v55) = v41[24];
    v51 = *(v41 + 2);
    v52 = *(v41 + 2);
    v53 = *v41;
    v49 = sub_24F199A18();
    v50 = swift_allocObject();
    *(v50 + 16) = v53;
    *(v50 + 24) = v52 & 1;
    *(v50 + 32) = v51;
    *(v50 + 40) = v55 & 1;
    sub_24E601704(v18, &qword_27F243E00, &unk_24F9F8CC0);
    (*(v39 + 8))(v9, v6);
LABEL_28:
    sub_24E601704(v58, &qword_27F215768, "D5\r");
    result = v50;
    goto LABEL_29;
  }

  if (v25 <= 12)
  {
    if ((v25 - 8) < 4)
    {
      a1[3] = &type metadata for FixedPresentationSizing;
      a1[4] = sub_24F199A18();
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = 0x4080E00000000000;
      *(result + 24) = 0;
      v27 = 0x4088300000000000;
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if ((v25 - 13) >= 3)
  {
LABEL_15:
    a1[3] = &type metadata for FixedPresentationSizing;
    a1[4] = sub_24F199A18();
    result = swift_allocObject();
    *a1 = result;
    *(result + 16) = 0x4082C00000000000;
    *(result + 24) = 0;
    v27 = 0x4085400000000000;
    goto LABEL_16;
  }

  a1[3] = &type metadata for FixedPresentationSizing;
  a1[4] = sub_24F199A18();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = 0x4083800000000000;
  *(result + 24) = 0;
  v27 = 0x4087500000000000;
LABEL_16:
  *(result + 32) = v27;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_24F457580(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244008, &qword_24F9FA8F8);
  sub_24E602068(&qword_27F244010, &qword_27F244008, &qword_24F9FA8F8, MEMORY[0x277CE04B0]);
  return sub_24F923C18();
}

uint64_t sub_24F457624()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244018, &qword_24F9FA900);
  MEMORY[0x28223BE20](v0);
  v2 = v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244020, &qword_24F9FA908);
  v4 = sub_24E602068(&qword_27F244028, &qword_27F244020, &qword_24F9FA908, MEMORY[0x277CE04B0]);
  MEMORY[0x25304C400](1, MEMORY[0x277D84F90], v3, v4);
  if (qword_27F211278 != -1)
  {
    swift_once();
  }

  v5 = qword_27F2431D0;
  KeyPath = swift_getKeyPath();
  v10[1] = v5;

  v7 = sub_24F9238D8();
  v8 = &v2[*(v0 + 36)];
  *v8 = KeyPath;
  v8[1] = v7;
  sub_24F460B4C();
  sub_24F925F48();
  return sub_24E601704(v2, &qword_27F244018, &qword_24F9FA900);
}

char *sub_24F4577CC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_24F4578E0(result, v5, 0);
  }

  return result;
}

uint64_t sub_24F457844@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F924438();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24F457898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_24F4578E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45909C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F457900(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F2231B0, &unk_24F96D8E8, &qword_27F251730, &unk_24F964AF0);
  *v3 = result;
  return result;
}

void *sub_24F457940(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F4591A8(a1, a2, a3, *v3, &qword_27F2440D8, &qword_24F9FA9D0, &qword_27F2440E0, &qword_24F9FA9D8);
  *v3 = result;
  return result;
}

void *sub_24F457980(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F4591A8(a1, a2, a3, *v3, &qword_27F2440C0, &qword_24F9FA9B8, &qword_27F2440C8, &qword_24F9FA9C0);
  *v3 = result;
  return result;
}

char *sub_24F4579C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45C054(a1, a2, a3, *v3, &qword_27F2137E0, &unk_24F93B350, &type metadata for IMessageReachabilityManager.Contact);
  *v3 = result;
  return result;
}

void *sub_24F4579F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F2139D0, &unk_24F9FAB80, &qword_27F2139D8, &qword_24F93B580);
  *v3 = result;
  return result;
}

void *sub_24F457A38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213DD0, &unk_24F9FAD40, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
  *v3 = result;
  return result;
}

void *sub_24F457A7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F4592F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F457A9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CB88(a1, a2, a3, *v3, &qword_27F213B00, &unk_24F93B6F0, &unk_27F23A6A0, &unk_24F9549D0);
  *v3 = result;
  return result;
}

void *sub_24F457ADC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F459438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F457AFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45AEC0(a1, a2, a3, *v3, &qword_27F221550, &qword_24F9668E0, &qword_27F244110, &unk_24F9FAA30);
  *v3 = result;
  return result;
}

char *sub_24F457B3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45956C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F457B5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45B950(a1, a2, a3, *v3, &qword_27F213AD8, &unk_24F93B6C0, &type metadata for StateMachineChangeObserverAction);
  *v3 = result;
  return result;
}

char *sub_24F457B94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45968C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F457BB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F217C28, &qword_24F94C070, MEMORY[0x277D21C48]);
  *v3 = result;
  return result;
}

void *sub_24F457BF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &unk_27F22E010, &unk_24F93B380, type metadata accessor for PlayerAvatar);
  *v3 = result;
  return result;
}

void *sub_24F457C3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F217C10, &qword_24F947340, &qword_27F217C08, &qword_24F9FAD50);
  *v3 = result;
  return result;
}

void *sub_24F457C7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213848, &qword_24F947350, type metadata accessor for PlayerAvatarView);
  *v3 = result;
  return result;
}

void *sub_24F457CC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2442B0, &unk_24F9FAD58, type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
  *v3 = result;
  return result;
}

char *sub_24F457D04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F4597EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F457D24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45BBD0(a1, a2, a3, *v3, &qword_27F22E020, &qword_24F93B450);
  *v3 = result;
  return result;
}

char *sub_24F457D54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CE20(a1, a2, a3, *v3, &qword_27F2139C8, &unk_24F93B570, &type metadata for GameActivityDraftPlayerInfo);
  *v3 = result;
  return result;
}

char *sub_24F457D8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45990C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F457DAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F459B68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F457DCC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F244258, &unk_24F9FACC8, type metadata accessor for Achievement);
  *v3 = result;
  return result;
}

void *sub_24F457E10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213DF0, &qword_24F9FAD80, type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem);
  *v3 = result;
  return result;
}

void *sub_24F457E54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F244158, &unk_24F9FAAA0, &qword_27F225208, &unk_24F974E50);
  *v3 = result;
  return result;
}

char *sub_24F457E94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F459C74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F457EB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2138D0, &unk_24F93B460, type metadata accessor for LeaderboardEntry);
  *v3 = result;
  return result;
}

void *sub_24F457EF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F2442B8, &qword_24F9FAD68, &qword_27F21D248, &unk_24F9FAD70);
  *v3 = result;
  return result;
}

char *sub_24F457F38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F459D94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F457F58(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F21E6E8, &unk_24F95CDC0, &qword_27F21BCB8, &qword_24F953700);
  *v3 = result;
  return result;
}

void *sub_24F457F98(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2440E8, &unk_24F9FA9E0, MEMORY[0x277D0D0D0]);
  *v3 = result;
  return result;
}

void *sub_24F457FDC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213870, &qword_24F93B3F0, type metadata accessor for Player);
  *v3 = result;
  return result;
}

void *sub_24F458020(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F2442C8, &qword_24F9FADB8, &qword_27F21EFE0, &qword_24F9FADC0);
  *v3 = result;
  return result;
}

void *sub_24F458060(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2441D0, &unk_24F9FAB70, type metadata accessor for PlayerProfileData);
  *v3 = result;
  return result;
}

void *sub_24F4580A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2441C8, &qword_24F9FAB68, type metadata accessor for RecordingAssociation);
  *v3 = result;
  return result;
}

char *sub_24F4580E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F459EE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F458108(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2138D8, &qword_24F9C9260, MEMORY[0x277D21BD8]);
  *v3 = result;
  return result;
}

char *sub_24F45814C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F459FEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F45816C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CB88(a1, a2, a3, *v3, &unk_27F255040, &unk_24F93B590, &unk_27F22C070, &unk_24F947CB0);
  *v3 = result;
  return result;
}

void *sub_24F4581AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CB88(a1, a2, a3, *v3, &unk_27F23C970, &unk_24F93B690, &unk_27F235730, &unk_24F947310);
  *v3 = result;
  return result;
}

char *sub_24F4581EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45A0F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F45820C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45A1EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F45822C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45A2F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F45824C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45A558(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F45826C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &unk_27F228050, &unk_24F980F30, &qword_27F2441A0, &unk_24F9FAB40);
  *v3 = result;
  return result;
}

char *sub_24F4582AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45A65C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F4582CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45A9E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F4582EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F22CB50, &qword_24F9FAAC0, &qword_27F244170, &qword_24F9FAAC8);
  *v3 = result;
  return result;
}

void *sub_24F45832C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45AB04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F45834C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2139E8, &qword_24F93B5A0, type metadata accessor for Leaderboard);
  *v3 = result;
  return result;
}

void *sub_24F458390(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45AC4C(a1, a2, a3, *v3, &qword_27F2441B0, &qword_24F9FAB58, &qword_27F2441B8, &qword_24F9FAB60);
  *v3 = result;
  return result;
}

void *sub_24F4583D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213820, &qword_24F93B3A0, type metadata accessor for ContactsListDataSource.Item);
  *v3 = result;
  return result;
}

void *sub_24F458414(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F244058, &qword_24F9FA940, &unk_27F23E230, &qword_24F9536F8);
  *v3 = result;
  return result;
}

void *sub_24F458454(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213C48, &unk_24F93B870, type metadata accessor for StoreTab);
  *v3 = result;
  return result;
}

void *sub_24F458498(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CB88(a1, a2, a3, *v3, &qword_27F2218A0, &qword_24F9876F0, &qword_27F2440A0, &qword_24F9FA9A8);
  *v3 = result;
  return result;
}

void *sub_24F4584D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45AC4C(a1, a2, a3, *v3, &qword_27F213C30, &qword_24F9FAB50, &qword_27F213C38, &qword_24F93B860);
  *v3 = result;
  return result;
}

void *sub_24F458518(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213B48, &qword_24F9FAAD0, MEMORY[0x277CC8918]);
  *v3 = result;
  return result;
}

char *sub_24F45855C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45AD80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F45857C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F217C20, &qword_24F947358, type metadata accessor for GameDetailsAnnotation);
  *v3 = result;
  return result;
}

void *sub_24F4585C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F242AB0, &qword_24F9FADB0, &qword_27F2260C8, &qword_24F978F10);
  *v3 = result;
  return result;
}

void *sub_24F458600(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F234A70, &qword_24F9FA9F0, &qword_27F2325A0, &unk_24F9B4020);
  *v3 = result;
  return result;
}

void *sub_24F458640(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213B78, &qword_24F93B790, MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

char *sub_24F458684(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CE20(a1, a2, a3, *v3, &unk_27F227F00, &qword_24F980DB8, &type metadata for WhatsNewItem);
  *v3 = result;
  return result;
}

void *sub_24F4586BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45AEC0(a1, a2, a3, *v3, &qword_27F213BD8, &qword_24F93B800, &qword_27F213BE0, &qword_24F93B808);
  *v3 = result;
  return result;
}

char *sub_24F4586FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45AFF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F45871C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45B100(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F45873C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45B220(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F45875C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45B348(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F45877C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F244188, &qword_24F9FAB08, &qword_27F244190, &unk_24F9FAB10);
  *v3 = result;
  return result;
}

char *sub_24F4587BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45B498(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F4587DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45B5C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F4587FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F244178, &qword_24F9FAAD8, &qword_27F22B868, &unk_24F9FAAE0);
  *v3 = result;
  return result;
}

void *sub_24F45883C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F244038, &qword_24F9FA918, MEMORY[0x277CEC160]);
  *v3 = result;
  return result;
}

void *sub_24F458880(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45B6CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F4588A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45B81C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F4588C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45BBD0(a1, a2, a3, *v3, &qword_27F2440A8, &qword_24F9FA9B0);
  *v3 = result;
  return result;
}

void *sub_24F4588F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45B950(a1, a2, a3, *v3, &qword_27F213B40, &unk_24F93B750, &type metadata for InAppPurchaseStateObserverAction);
  *v3 = result;
  return result;
}

void *sub_24F458928(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45BA88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F458948(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213B20, &unk_24F9B7470, MEMORY[0x277CC9AF8]);
  *v3 = result;
  return result;
}

void *sub_24F45898C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &unk_27F235740, &unk_24F965BC0, MEMORY[0x277D22860]);
  *v3 = result;
  return result;
}

void *sub_24F4589D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F244150, &unk_24F9FAA90, &qword_27F229AF0, &qword_24F986600);
  *v3 = result;
  return result;
}

char *sub_24F458A10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45BBD0(a1, a2, a3, *v3, &qword_27F213B60, &qword_24F93B770);
  *v3 = result;
  return result;
}

char *sub_24F458A40(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45BCCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F458A60(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45BDEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F458A80(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45BF34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F458AA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45C054(a1, a2, a3, *v3, &qword_27F213878, &qword_24F93B3F8, &type metadata for PlayTogetherGroup);
  *v3 = result;
  return result;
}

void *sub_24F458AD8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213868, &unk_24F9FA950, type metadata accessor for ChallengesPlayerInviteType);
  *v3 = result;
  return result;
}

void *sub_24F458B1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CB88(a1, a2, a3, *v3, &qword_27F2442D0, &qword_24F9FADC8, &qword_27F2442D8, &unk_24F9FADD0);
  *v3 = result;
  return result;
}

void *sub_24F458B5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F244140, &qword_24F9FAA88, &qword_27F232570, &unk_24F9A9E60);
  *v3 = result;
  return result;
}

void *sub_24F458B9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F244138, &unk_24F9FAA78, &qword_27F212F20, &qword_24F93E370);
  *v3 = result;
  return result;
}

void *sub_24F458BDC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F237770, &unk_24F9C0430, type metadata accessor for ItemLayoutContext);
  *v3 = result;
  return result;
}

void *sub_24F458C20(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45C19C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F458C40(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F237768, &qword_24F9C0428, &qword_27F244120, &qword_24F9FAA60);
  *v3 = result;
  return result;
}

void *sub_24F458C80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F237760, &qword_24F9C03D8, &qword_27F244118, &unk_24F9FAA50);
  *v3 = result;
  return result;
}

void *sub_24F458CC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213AE8, &unk_24F93B6D0, MEMORY[0x277D0C7C0]);
  *v3 = result;
  return result;
}

void *sub_24F458D04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F213BB0, &unk_24F93B7D0, &qword_27F227A20, &qword_24F9482B0);
  *v3 = result;
  return result;
}

void *sub_24F458D44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45C2F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F458D64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2137C8, &unk_24F967940, MEMORY[0x277D21BB8]);
  *v3 = result;
  return result;
}

char *sub_24F458DA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45C42C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F458DC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45C554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F458DE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45C66C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F458E08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45C7B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F458E28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45C8FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F458E48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F244280, &unk_24F9FACF0, type metadata accessor for ActiveCall);
  *v3 = result;
  return result;
}

void *sub_24F458E8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213D60, &unk_24F9472F0, type metadata accessor for FriendSuggestion);
  *v3 = result;
  return result;
}

void *sub_24F458ED0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CA40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F458EF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CB88(a1, a2, a3, *v3, &qword_27F213DF8, &unk_24F93BA40, &qword_27F213E00, &unk_24F9FADA0);
  *v3 = result;
  return result;
}

void *sub_24F458F30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2137E8, &qword_24F9FA910, type metadata accessor for GSKDebugMetricsEvent);
  *v3 = result;
  return result;
}

void *sub_24F458F74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F244070, &qword_24F9FA960, &qword_27F244078, &unk_24F9FA968);
  *v3 = result;
  return result;
}

void *sub_24F458FB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213890, &unk_24F980DA0, MEMORY[0x277D224C0]);
  *v3 = result;
  return result;
}

void *sub_24F458FF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F244290, &unk_24F9FAD08, &qword_27F241A70, &unk_24F9EEB40);
  *v3 = result;
  return result;
}

char *sub_24F459038(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D154(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F459058(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213808, &qword_24F93B378, type metadata accessor for ModernAppStateMachine.ObserverData);
  *v3 = result;
  return result;
}

char *sub_24F45909C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F4591A8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_24F4592F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2442A0, &unk_24F9FAD20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215370, &unk_24F93FC00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F459438(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226848, &unk_24F9FAA20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45956C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BF8, &qword_24F93B820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45968C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F4597EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1D0, &qword_24F93B780);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45990C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DD8, &unk_24F93BA20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F459A18(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227EE0, &unk_24F980D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F450, &qword_24F9AB7F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F459B68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F459C74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF0, &unk_24F992820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F459D94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213860, &unk_24F93B3E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F459EE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244040, &unk_24F9FA920);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F459FEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10, &qword_24F96FCC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45A0F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B258, &unk_24F9A9D10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_24F45A1EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A30, &qword_24F93B5E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_24F45A2F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C50, &unk_24F9AFC90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45A410(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217BF8, &qword_24F947328);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228040, &qword_24F947320);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45A558(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AE0, &unk_24F9FAA40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_24F45A65C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244198, &unk_24F9FAB30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_24F45A750(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A80, &qword_24F9FAAB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[24 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 192 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA08, &qword_24F9962C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45A894(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB58, &qword_24F9919A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB40, &qword_24F9917D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45A9E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244168, &qword_24F9FAAB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45AB04(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294B8, &unk_24F9FAB20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221090, &unk_24F965A18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45AC4C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_24F45AD80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0, &qword_24F93B918);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 160 * v8);
  }

  return v10;
}

void *sub_24F45AEC0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_24F45AFF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244080, &qword_24F9FA978);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45B100(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244088, &unk_24F9FA980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
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

char *sub_24F45B220(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244060, &qword_24F9FA948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45B348(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244180, &unk_24F9FAAF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[18 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 144 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213378, &unk_24F987820);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45B498(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A678, &qword_24F9FAAF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45B5C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B88, &qword_24F93B7A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_24F45B6CC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244050, &unk_24F9FA930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2210A8, &qword_24F965A70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45B81C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2442C0, &qword_24F9FAD88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2210A0, &unk_24F9FAD90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45B950(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v8)
  {
    if (v13 < a4 || v13 + 4 >= &a4[3 * v11 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_24F45BA88(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C60, &qword_24F93B888);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C68, &unk_24F93B890);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45BBD0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_24F45BCCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244090, &qword_24F9FA990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45BDEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244098, &unk_24F9FA998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
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

char *sub_24F45BF34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2440D0, &qword_24F9FA9C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45C054(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_24F45C19C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2442A8, &unk_24F9FAD30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221098, &qword_24F965A28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45C2F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244128, &qword_24F9FAA68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244130, &qword_24F9FAA70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45C42C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C8, &qword_24F93B458);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45C554(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244108, &unk_24F9FAA10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_24F45C66C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45C7B4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2440F8, &unk_24F9FA9F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221078, &unk_24F965A00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45C8FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244100, &qword_24F9FAA08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221080, &qword_24F965A10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45CA40(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244270, &qword_24F9FACE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244278, &qword_24F9FACE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45CB88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_24F45CCD0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_24F45CE20(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 72);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[72 * v11])
    {
      memmove(v15, v16, 72 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_24F45CF6C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_24F45D154(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244298, &qword_24F9FAD18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45D27C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_24F45D458(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DE0, &qword_24FA3C800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_24F45D55C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x25304A100]();
  *a1 = result;
  return result;
}

uint64_t sub_24F45D588@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x25304A100]();
  *a1 = result;
  return result;
}

uint64_t sub_24F45D6EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_24F461B48();
  result = MEMORY[0x253051460](v1, &type metadata for SupplementaryAppPlatform, v2);
  v4 = result;
  if (v1)
  {
    do
    {
      sub_24ED7CBB0();
      --v1;
    }

    while (v1);
    return v4;
  }

  return result;
}

uint64_t sub_24F45D748(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24F461AA0();
  result = MEMORY[0x253051460](v2, &type metadata for PageFacets.Facet.Option, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v11[0] = *v5;
      v11[1] = v6;
      v7 = v5[3];
      v11[2] = v5[2];
      v11[3] = v7;
      sub_24E8056D8(v11, v9);
      sub_24ED7C740(v8, v11);
      v9[0] = v8[0];
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      sub_24E805734(v9);
      v5 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_24F45D828(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x253051460](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24ED7C5F0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24F45D8C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24F461950();
  result = MEMORY[0x253051460](v2, &type metadata for GameActivityDraftPlayerInfo, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 48);
      v13[2] = *(v5 + 32);
      v13[3] = v6;
      v14 = *(v5 + 64);
      v7 = *(v5 + 16);
      v13[0] = *v5;
      v13[1] = v7;
      sub_24E627A14(v13, v10);
      sub_24ED7D19C(v8, v13);
      v10[2] = v8[2];
      v10[3] = v8[3];
      v11 = v9;
      v10[0] = v8[0];
      v10[1] = v8[1];
      sub_24E627A70(v10);
      v5 += 72;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_24F45D9F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24E69103C();
  result = MEMORY[0x253051460](v2, &type metadata for AdamId, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_24ED7E42C(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_24F45DA90(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x253051460](v2, MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_24E65864C(v4, v5);
      sub_24ED7D5A0(v6, v5);
      sub_24E6585F8(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_24F45DB1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x253051460](v2, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_24ED7EC9C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_24F45DBC4(uint64_t a1)
{
  v2 = sub_24F927D58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24F457898(&qword_27F21E530, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
  result = MEMORY[0x253051460](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_24ED7EF08(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24F45DD94(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x253051460](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_24F45DE64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v6 = *(a1 + 16);
  result = MEMORY[0x253051460](v6, a2, a3);
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_24F45DED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980, &qword_24F93B520);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24E602068(&qword_27F22F0A8, &qword_27F213980, &qword_24F93B520, MEMORY[0x277D0D508]);
  result = MEMORY[0x253051460](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v14;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    do
    {
      v12(v5, v15, v2);
      sub_24ED7F67C(v8, v5);
      (*(v13 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24F45E0A4(uint64_t a1)
{
  v2 = sub_24F92AA48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24F457898(&qword_27F21BCA0, MEMORY[0x277D224C0], MEMORY[0x277D224D0]);
  result = MEMORY[0x253051460](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_24ED801C4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t *sub_24F45E270(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v12 = sub_24E69A5C4(0, a2, a3);
    v13 = sub_24EFDD1F0(a4, a2, a3);
    result = MEMORY[0x253051460](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x253052270](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_24F92C738();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24F45E3FC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x253051460](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_24F45E668()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_24F45E6A0()
{
  result = qword_27F243CB0;
  if (!qword_27F243CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243CB0);
  }

  return result;
}

unint64_t sub_24F45E6F4()
{
  result = qword_27F243CB8;
  if (!qword_27F243CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243CB8);
  }

  return result;
}

unint64_t sub_24F45E748()
{
  result = qword_27F243CC8;
  if (!qword_27F243CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243CC8);
  }

  return result;
}

unint64_t sub_24F45E79C()
{
  result = qword_27F243CD0;
  if (!qword_27F243CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243CD0);
  }

  return result;
}

unint64_t sub_24F45E7F0()
{
  result = qword_27F243CE0;
  if (!qword_27F243CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243CE0);
  }

  return result;
}

unint64_t sub_24F45E844()
{
  result = qword_27F243CF0;
  if (!qword_27F243CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243CF0);
  }

  return result;
}

unint64_t sub_24F45E898()
{
  result = qword_27F243CF8;
  if (!qword_27F243CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243CF8);
  }

  return result;
}

unint64_t sub_24F45E8EC()
{
  result = qword_27F243D00;
  if (!qword_27F243D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D00);
  }

  return result;
}

unint64_t sub_24F45E940()
{
  result = qword_27F243D10;
  if (!qword_27F243D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D10);
  }

  return result;
}

unint64_t sub_24F45E994()
{
  result = qword_27F243D18;
  if (!qword_27F243D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D18);
  }

  return result;
}

unint64_t sub_24F45E9E8()
{
  result = qword_27F243D28;
  if (!qword_27F243D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D28);
  }

  return result;
}

unint64_t sub_24F45EA3C()
{
  result = qword_27F243D30;
  if (!qword_27F243D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D30);
  }

  return result;
}

unint64_t sub_24F45EA90()
{
  result = qword_27F243D48;
  if (!qword_27F243D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D48);
  }

  return result;
}

unint64_t sub_24F45EAE4()
{
  result = qword_27F243D58;
  if (!qword_27F243D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D58);
  }

  return result;
}

unint64_t sub_24F45EB38()
{
  result = qword_27F243D68;
  if (!qword_27F243D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D68);
  }

  return result;
}

uint64_t sub_24F45EB8C()
{

  return swift_deallocObject();
}

unint64_t sub_24F45EBC4()
{
  result = qword_27F243D70;
  if (!qword_27F243D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D70);
  }

  return result;
}

uint64_t sub_24F45EC18()
{

  return swift_deallocObject();
}

unint64_t sub_24F45EC50()
{
  result = qword_27F243D78;
  if (!qword_27F243D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D78);
  }

  return result;
}

unint64_t sub_24F45ECA4()
{
  result = qword_27F243D80;
  if (!qword_27F243D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D80);
  }

  return result;
}

uint64_t sub_24F45ECF8()
{

  if (v0[6])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  }

  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  }

  return swift_deallocObject();
}

unint64_t sub_24F45ED50()
{
  result = qword_27F243D88;
  if (!qword_27F243D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D88);
  }

  return result;
}

unint64_t sub_24F45EDA4()
{
  result = qword_27F243D98;
  if (!qword_27F243D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D98);
  }

  return result;
}

unint64_t sub_24F45EDF8()
{
  result = qword_27F243DA8;
  if (!qword_27F243DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243DA8);
  }

  return result;
}

unint64_t sub_24F45EE4C()
{
  result = qword_27F243DB8;
  if (!qword_27F243DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243DB8);
  }

  return result;
}

uint64_t sub_24F45EEA0()
{

  return swift_deallocObject();
}

unint64_t sub_24F45EEE0()
{
  result = qword_27F243DC0;
  if (!qword_27F243DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227168, &qword_24F9F8CA0);
    sub_24F45EF9C();
    sub_24F457898(&qword_27F2145E0, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243DC0);
  }

  return result;
}

unint64_t sub_24F45EF9C()
{
  result = qword_27F243DC8;
  if (!qword_27F243DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243DC8);
  }

  return result;
}

unint64_t sub_24F45EFF0()
{
  result = qword_27F243DD0;
  if (!qword_27F243DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243DD0);
  }

  return result;
}

unint64_t sub_24F45F044()
{
  result = qword_27F243DD8;
  if (!qword_27F243DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243DD8);
  }

  return result;
}

unint64_t sub_24F45F0A8()
{
  result = qword_27F243DE0;
  if (!qword_27F243DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243DE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit15FlowDestinationO(void *a1)
{
  if (*a1 >> 60 <= 8uLL)
  {
    return (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  }

  else
  {
    return (*a1 >> 3) + 18;
  }
}

uint64_t sub_24F45F124(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6E && *(a1 + 8))
  {
    return (*a1 + 110);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24F45F180(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6D)
  {
    *result = a2 - 110;
    if (a3 >= 0x6E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_24F45F1E4(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x12)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 18)) | 0x9000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlowDestination.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowDestination.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24F45F4F8()
{
  result = qword_27F243E10;
  if (!qword_27F243E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E10);
  }

  return result;
}

unint64_t sub_24F45F550()
{
  result = qword_27F243E18;
  if (!qword_27F243E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E18);
  }

  return result;
}

unint64_t sub_24F45F5A8()
{
  result = qword_27F243E20;
  if (!qword_27F243E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E20);
  }

  return result;
}

unint64_t sub_24F45F600()
{
  result = qword_27F243E28;
  if (!qword_27F243E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E28);
  }

  return result;
}

unint64_t sub_24F45F658()
{
  result = qword_27F243E30;
  if (!qword_27F243E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E30);
  }

  return result;
}

unint64_t sub_24F45F6B0()
{
  result = qword_27F243E38;
  if (!qword_27F243E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E38);
  }

  return result;
}

unint64_t sub_24F45F708()
{
  result = qword_27F243E40;
  if (!qword_27F243E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E40);
  }

  return result;
}

unint64_t sub_24F45F760()
{
  result = qword_27F243E48;
  if (!qword_27F243E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E48);
  }

  return result;
}

unint64_t sub_24F45F7B8()
{
  result = qword_27F243E50;
  if (!qword_27F243E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E50);
  }

  return result;
}

unint64_t sub_24F45F810()
{
  result = qword_27F243E58;
  if (!qword_27F243E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E58);
  }

  return result;
}

unint64_t sub_24F45F868()
{
  result = qword_27F243E60;
  if (!qword_27F243E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E60);
  }

  return result;
}

unint64_t sub_24F45F8C0()
{
  result = qword_27F243E68;
  if (!qword_27F243E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E68);
  }

  return result;
}

unint64_t sub_24F45F918()
{
  result = qword_27F243E70;
  if (!qword_27F243E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E70);
  }

  return result;
}

unint64_t sub_24F45F970()
{
  result = qword_27F243E78;
  if (!qword_27F243E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E78);
  }

  return result;
}

unint64_t sub_24F45F9C8()
{
  result = qword_27F243E80;
  if (!qword_27F243E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E80);
  }

  return result;
}

unint64_t sub_24F45FA20()
{
  result = qword_27F243E88;
  if (!qword_27F243E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E88);
  }

  return result;
}

unint64_t sub_24F45FA78()
{
  result = qword_27F243E90;
  if (!qword_27F243E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E90);
  }

  return result;
}

unint64_t sub_24F45FAD0()
{
  result = qword_27F243E98;
  if (!qword_27F243E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E98);
  }

  return result;
}

unint64_t sub_24F45FB28()
{
  result = qword_27F243EA0;
  if (!qword_27F243EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EA0);
  }

  return result;
}

unint64_t sub_24F45FB80()
{
  result = qword_27F243EA8;
  if (!qword_27F243EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EA8);
  }

  return result;
}

unint64_t sub_24F45FBD8()
{
  result = qword_27F243EB0;
  if (!qword_27F243EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EB0);
  }

  return result;
}

unint64_t sub_24F45FC30()
{
  result = qword_27F243EB8;
  if (!qword_27F243EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EB8);
  }

  return result;
}

unint64_t sub_24F45FC88()
{
  result = qword_27F243EC0;
  if (!qword_27F243EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EC0);
  }

  return result;
}

unint64_t sub_24F45FCE0()
{
  result = qword_27F243EC8;
  if (!qword_27F243EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EC8);
  }

  return result;
}

unint64_t sub_24F45FD38()
{
  result = qword_27F243ED0;
  if (!qword_27F243ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243ED0);
  }

  return result;
}

unint64_t sub_24F45FD90()
{
  result = qword_27F243ED8;
  if (!qword_27F243ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243ED8);
  }

  return result;
}

unint64_t sub_24F45FDE8()
{
  result = qword_27F243EE0;
  if (!qword_27F243EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EE0);
  }

  return result;
}

unint64_t sub_24F45FE40()
{
  result = qword_27F243EE8;
  if (!qword_27F243EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EE8);
  }

  return result;
}

unint64_t sub_24F45FE98()
{
  result = qword_27F243EF0;
  if (!qword_27F243EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EF0);
  }

  return result;
}

unint64_t sub_24F45FEF0()
{
  result = qword_27F243EF8;
  if (!qword_27F243EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EF8);
  }

  return result;
}

unint64_t sub_24F45FF48()
{
  result = qword_27F243F00;
  if (!qword_27F243F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F00);
  }

  return result;
}

unint64_t sub_24F45FFA0()
{
  result = qword_27F243F08;
  if (!qword_27F243F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F08);
  }

  return result;
}

unint64_t sub_24F45FFF8()
{
  result = qword_27F243F10;
  if (!qword_27F243F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F10);
  }

  return result;
}

unint64_t sub_24F460050()
{
  result = qword_27F243F18;
  if (!qword_27F243F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F18);
  }

  return result;
}

unint64_t sub_24F4600A8()
{
  result = qword_27F243F20;
  if (!qword_27F243F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F20);
  }

  return result;
}

unint64_t sub_24F460100()
{
  result = qword_27F243F28;
  if (!qword_27F243F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F28);
  }

  return result;
}

unint64_t sub_24F460158()
{
  result = qword_27F243F30;
  if (!qword_27F243F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F30);
  }

  return result;
}

unint64_t sub_24F4601B0()
{
  result = qword_27F243F38;
  if (!qword_27F243F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F38);
  }

  return result;
}

unint64_t sub_24F460208()
{
  result = qword_27F243F40;
  if (!qword_27F243F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F40);
  }

  return result;
}

unint64_t sub_24F460260()
{
  result = qword_27F243F48;
  if (!qword_27F243F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F48);
  }

  return result;
}

unint64_t sub_24F4602B8()
{
  result = qword_27F243F50;
  if (!qword_27F243F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F50);
  }

  return result;
}

unint64_t sub_24F460310()
{
  result = qword_27F243F58;
  if (!qword_27F243F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F58);
  }

  return result;
}

unint64_t sub_24F460368()
{
  result = qword_27F243F60;
  if (!qword_27F243F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F60);
  }

  return result;
}

unint64_t sub_24F4603C0()
{
  result = qword_27F243F68;
  if (!qword_27F243F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F68);
  }

  return result;
}

unint64_t sub_24F460418()
{
  result = qword_27F243F70;
  if (!qword_27F243F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F70);
  }

  return result;
}

unint64_t sub_24F460470()
{
  result = qword_27F243F78;
  if (!qword_27F243F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F78);
  }

  return result;
}

unint64_t sub_24F4604C8()
{
  result = qword_27F243F80;
  if (!qword_27F243F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F80);
  }

  return result;
}

unint64_t sub_24F460520()
{
  result = qword_27F243F88;
  if (!qword_27F243F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F88);
  }

  return result;
}

unint64_t sub_24F460578()
{
  result = qword_27F243F90;
  if (!qword_27F243F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F90);
  }

  return result;
}

unint64_t sub_24F4605D0()
{
  result = qword_27F243F98;
  if (!qword_27F243F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F98);
  }

  return result;
}

unint64_t sub_24F460628()
{
  result = qword_27F243FA0;
  if (!qword_27F243FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FA0);
  }

  return result;
}

unint64_t sub_24F460680()
{
  result = qword_27F243FA8;
  if (!qword_27F243FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FA8);
  }

  return result;
}

unint64_t sub_24F4606D8()
{
  result = qword_27F243FB0;
  if (!qword_27F243FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FB0);
  }

  return result;
}

unint64_t sub_24F460730()
{
  result = qword_27F243FB8;
  if (!qword_27F243FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FB8);
  }

  return result;
}

unint64_t sub_24F460788()
{
  result = qword_27F243FC0;
  if (!qword_27F243FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FC0);
  }

  return result;
}

unint64_t sub_24F4607E0()
{
  result = qword_27F243FC8;
  if (!qword_27F243FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FC8);
  }

  return result;
}

unint64_t sub_24F460838()
{
  result = qword_27F243FD0;
  if (!qword_27F243FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FD0);
  }

  return result;
}

unint64_t sub_24F460890()
{
  result = qword_27F243FD8;
  if (!qword_27F243FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FD8);
  }

  return result;
}

unint64_t sub_24F4608E8()
{
  result = qword_27F243FE0;
  if (!qword_27F243FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FE0);
  }

  return result;
}

unint64_t sub_24F460940()
{
  result = qword_27F243FE8;
  if (!qword_27F243FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FE8);
  }

  return result;
}

unint64_t sub_24F460998()
{
  result = qword_27F243FF0;
  if (!qword_27F243FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FF0);
  }

  return result;
}

unint64_t sub_24F4609F0()
{
  result = qword_27F243FF8;
  if (!qword_27F243FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243FF8);
  }

  return result;
}

unint64_t sub_24F460A48()
{
  result = qword_27F244000;
  if (!qword_27F244000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244000);
  }

  return result;
}

uint64_t sub_24F460AD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244008, &qword_24F9FA8F8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

unint64_t sub_24F460B4C()
{
  result = qword_27F244030;
  if (!qword_27F244030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244018, &qword_24F9FA900);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244020, &qword_24F9FA908);
    sub_24E602068(&qword_27F244028, &qword_27F244020, &qword_24F9FA908, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F236270, &qword_27F219DB0, &qword_24F987E00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244030);
  }

  return result;
}

uint64_t sub_24F460C74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E646E65697266 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F6974634179 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24F460DF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461676976616ELL && a2 == 0xEF656C7469546E6FLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA756C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA4C1B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA4C1D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24F46104C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F53676E696D6F63 && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6169726F74696465 && a2 == 0xED0000656761506CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701273968 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E6F4365676170 && a2 == 0xED000072656E6961 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA74950 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA74990 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7373654D646E6573 && a2 == 0xEB00000000656761 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x504174726F706572 && a2 == 0xED0000726579616CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA755A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA74910 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA755C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA755E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA75600 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA75620 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA75640 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA75660 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA42EA0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x45656C69666F7270 && a2 == 0xED0000726F746964 || (sub_24F92CE08() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x7246657469766E69 && a2 == 0xED000073646E6569)
  {

    return 20;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_24F4616F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F6974634179 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24F461820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_24F461950()
{
  result = qword_27F244048;
  if (!qword_27F244048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244048);
  }

  return result;
}

unint64_t sub_24F4619A4()
{
  result = qword_27F244068;
  if (!qword_27F244068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244068);
  }

  return result;
}

unint64_t sub_24F4619F8()
{
  result = qword_27F2440B0;
  if (!qword_27F2440B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2440B0);
  }

  return result;
}

unint64_t sub_24F461A4C()
{
  result = qword_27F2440B8;
  if (!qword_27F2440B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2440B8);
  }

  return result;
}

unint64_t sub_24F461AA0()
{
  result = qword_27F244148;
  if (!qword_27F244148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244148);
  }

  return result;
}

unint64_t sub_24F461AF4()
{
  result = qword_27F244160;
  if (!qword_27F244160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244160);
  }

  return result;
}

unint64_t sub_24F461B48()
{
  result = qword_27F2441A8;
  if (!qword_27F2441A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2441A8);
  }

  return result;
}

unint64_t sub_24F461B9C()
{
  result = qword_27F2441C0;
  if (!qword_27F2441C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2441C0);
  }

  return result;
}

uint64_t sub_24F461D70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F461DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F461E40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F461F00()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244018, &qword_24F9FA900);
  sub_24F460B4C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F461FBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *a3 = sub_24F9249A8();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244308, &qword_24F9FAEA8);
  v7 = *a2;
  v8 = v5 * *a2;
  if ((v5 * *a2) >> 64 != v8 >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 >= v8)
  {
    swift_getKeyPath();
    v10 = swift_allocObject();
    v11 = *(a2 + 1);
    *(v10 + 16) = *a2;
    *(v10 + 32) = v11;
    *(v10 + 48) = *(a2 + 2);
    *(v10 + 64) = a2[6];
    *(v10 + 72) = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0, &unk_24F93CB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244310, &qword_24F9FAEB0);
    sub_24E62A6CC();
    sub_24E602068(&qword_27F244318, &qword_27F244310, &qword_24F9FAEB0, MEMORY[0x277CE14C0]);
    return sub_24F927228();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_24F462158(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244320, &qword_24F9FAEB8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = *a1;
  sub_24F4622E8(v14, &v22 - v12);
  v15 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    if (v14 < v15)
    {
      v17 = *a2 & 0xFFFFFFFFFFFFFFFELL;
      v18 = 0x4038000000000000;
      if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = 0x4028000000000000;
      }

      if (*a2 >= 8)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0x4028000000000000;
      }

      if (v17 == 6)
      {
        v19 = 0x4032000000000000;
      }

      if (v17 == 4)
      {
        v16 = 0x4028000000000000;
      }

      else
      {
        v16 = v19;
      }
    }

    else
    {
      v16 = 0;
    }

    v20 = v14 >= v15;
    sub_24F463784(v13, v10);
    sub_24F463784(v10, a4);
    v21 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244328, &qword_24F9FAEC0) + 48);
    *v21 = v16;
    *(v21 + 8) = 0;
    *(v21 + 9) = v20;
    sub_24E601704(v13, &qword_27F244320, &qword_24F9FAEB8);
    sub_24E601704(v10, &qword_27F244320, &qword_24F9FAEB8);
  }
}

void sub_24F4622E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_24F924218();
  v120 = *(v6 - 8);
  v121 = v6;
  MEMORY[0x28223BE20](v6);
  v118 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContinuePlayingIcon(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244330, &qword_24F9FAEC8);
  v116 = *(v11 - 8);
  v117 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v112 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244338, &qword_24F9FAED0);
  MEMORY[0x28223BE20](v115);
  v15 = &v112 - v14;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244340, &qword_24F9FAED8);
  MEMORY[0x28223BE20](v136);
  v123 = &v112 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244348, &qword_24F9FAEE0);
  v125 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v124 = &v112 - v18;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244350, &qword_24F9FAEE8);
  MEMORY[0x28223BE20](v130);
  v133 = &v112 - v19;
  v20 = sub_24F929888();
  v128 = *(v20 - 8);
  v129 = v20;
  MEMORY[0x28223BE20](v20);
  v119 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v122 = &v112 - v23;
  MEMORY[0x28223BE20](v24);
  v127 = &v112 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v112 - v27;
  MEMORY[0x28223BE20](v29);
  v114 = &v112 - v30;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244358, &qword_24F9FAEF0);
  v113 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v126 = &v112 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244360, &qword_24F9FAEF8);
  MEMORY[0x28223BE20](v32);
  v35 = &v112 - v34;
  v36 = *(v3 + 16);
  v37 = *(v36 + 16);
  v134 = v17;
  v135 = a2;
  v132 = v38;
  if (v37 <= a1)
  {
    *&v139 = 0;
    sub_24F926F28();
    v53 = v144;
    *&v139 = 0;
    sub_24F926F28();
    v139 = v53;
    v140 = v144;
    strcpy(&v144, "placeholder_");
    BYTE13(v144) = 0;
    HIWORD(v144) = -5120;
    v126 = a1;
    *&v151 = a1;
    v54 = sub_24F92CD88();
    MEMORY[0x253050C20](v54);

    sub_24F92C7F8();
    sub_24F9289D8();
    *&v146 = 0;
    v145 = 0u;
    v144 = 0u;
    v55 = v8[9];
    v56 = sub_24F92A6D8();
    (*(*(v56 - 8) + 56))(&v10[v55], 1, 1, v56);
    v57 = v8[10];
    v58 = sub_24F929608();
    (*(*(v58 - 8) + 56))(&v10[v57], 1, 1, v58);
    v10[v8[6]] = 0;
    v59 = &v10[v8[7]];
    *v59 = 0;
    *(v59 + 1) = 0;
    v60 = &v10[v8[8]];
    *(v60 + 32) = 0;
    *v60 = 0u;
    *(v60 + 16) = 0u;
    sub_24E7D5870(&v144, v60);
    v61 = sub_24F4637F4();
    sub_24F921D38();

    sub_24F463848(v10);
    v62 = v118;
    sub_24F924208();
    *&v144 = &type metadata for ContinuePlayingIconComponent;
    *(&v144 + 1) = v61;
    swift_getOpaqueTypeConformance2();
    v63 = v117;
    sub_24F926AE8();
    (*(v120 + 8))(v62, v121);
    (*(v116 + 8))(v13, v63);
    v64 = &v15[*(v115 + 36)];
    *v64 = 0x3FF0000000000000;
    *(v64 + 4) = 0;
    v65 = *(v3 + 24);
    v66 = *(v3 + 32);
    v67 = *(v3 + 40);
    v68 = *(v3 + 48);
    sub_24F927618();
    v69 = v66;
    if (v67)
    {
      v69 = v65;
    }

    v70 = v15;
    if (v65 > v69 || v69 > v68)
    {
      sub_24F92BDC8();
      v71 = sub_24F9257A8();
      sub_24F921FD8();
    }

    sub_24F9242E8();
    v72 = v123;
    sub_24F4638A4(v70, v123);
    v73 = (v72 + *(v136 + 36));
    v74 = v147;
    v75 = v149;
    v76 = v150;
    v73[4] = v148;
    v73[5] = v75;
    v73[6] = v76;
    v77 = v145;
    v78 = v146;
    *v73 = v144;
    v73[1] = v77;
    v73[2] = v78;
    v73[3] = v74;
    v139 = 0u;
    v140 = 0u;
    v151 = 0u;
    v152 = 0u;
    v79 = v119;
    sub_24F929878();
    sub_24E601704(&v151, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(&v139, &qword_27F2129B0, &unk_24F945320);
    *(&v140 + 1) = MEMORY[0x277D83B88];
    *&v139 = v126;
    v80 = v122;
    sub_24F929868();
    v81 = v129;
    v82 = *(v128 + 8);
    v82(v79, v129);
    sub_24E601704(&v139, &qword_27F2129B0, &unk_24F945320);
    *(&v140 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v139) = 1;
    v83 = v127;
    sub_24F929868();
    v82(v80, v81);
    sub_24E601704(&v139, &qword_27F2129B0, &unk_24F945320);
    v84 = sub_24F463914();
    v85 = v124;
    sub_24F925EE8();
    v82(v83, v81);
    sub_24E601704(v72, &qword_27F244340, &qword_24F9FAED8);
    v86 = v125;
    v87 = v134;
    (*(v125 + 16))(v133, v85, v134);
    swift_storeEnumTagMultiPayload();
    v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238958, &qword_24F9C54B0);
    v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238960, &qword_24F9C54B8);
    v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244380, &unk_24F9FAF00);
    v91 = sub_24F463A94();
    *&v139 = v90;
    *(&v139 + 1) = v91;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v93 = sub_24F09B638();
    v94 = sub_24F463BAC();
    *&v139 = v88;
    *(&v139 + 1) = &type metadata for IsDebugImpressionIndexOverlayEnabled;
    *&v140 = v89;
    *(&v140 + 1) = OpaqueTypeConformance2;
    *&v141 = v93;
    *(&v141 + 1) = v94;
    v95 = swift_getOpaqueTypeConformance2();
    *&v139 = v131;
    *(&v139 + 1) = v95;
    swift_getOpaqueTypeConformance2();
    *&v139 = v136;
    *(&v139 + 1) = v84;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    (*(v86 + 8))(v85, v87);
  }

  else if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v124 = v35;
    v125 = v33;
    sub_24E615E00(v36 + 40 * a1 + 32, &v151);
    sub_24E615E00(&v151, &v140);
    type metadata accessor for GSKComponentContentBuilder(0);
    sub_24F3981B0();
    *&v139 = sub_24F923598();
    BYTE8(v139) = v39 & 1;
    *(&v142 + 1) = 0x3FF0000000000000;
    v143 = 0;
    v40 = *(v3 + 24);
    v41 = *(v3 + 32);
    v42 = *(v3 + 40);
    v43 = *(v3 + 48);
    sub_24F927618();
    v44 = v41;
    if (v42)
    {
      v44 = v40;
    }

    if (v40 > v44 || v44 > v43)
    {
      sub_24F92BDC8();
      v45 = sub_24F9257A8();
      sub_24F921FD8();
    }

    sub_24F9242E8();
    v145 = v140;
    v146 = v141;
    v147 = v142;
    LOWORD(v148) = v143;
    v144 = v139;
    sub_24F54D550(&v151, a1, v126);
    sub_24E601704(&v144, &qword_27F244380, &unk_24F9FAF00);
    __swift_project_boxed_opaque_existential_1(&v151, *(&v152 + 1));
    *(&v145 + 1) = MEMORY[0x277D84030];
    *&v144 = swift_allocObject();
    sub_24F928D68();
    v139 = 0u;
    v140 = 0u;
    v46 = v127;
    sub_24F929878();
    sub_24E601704(&v139, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
    *(&v145 + 1) = MEMORY[0x277D83B88];
    *&v144 = a1;
    sub_24F929868();
    v47 = v129;
    v48 = *(v128 + 8);
    v48(v46, v129);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
    __swift_project_boxed_opaque_existential_1(&v151, *(&v152 + 1));
    sub_24F928D78();
    sub_24E7538CC(&v144, &v137);
    if (v138)
    {
      sub_24E612C80(&v137, &v139);
      __swift_project_boxed_opaque_existential_1(&v139, *(&v140 + 1));
      *&v137 = swift_getDynamicType();
      *(&v137 + 1) = v141;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2161F8, &unk_24F9ECFA0);
      v49 = sub_24F92B188();
      v51 = v50;
      __swift_destroy_boxed_opaque_existential_1(&v139);
      sub_24E601704(&v144, qword_27F21B590, &unk_24F93BE30);
      v52 = MEMORY[0x277D837D0];
    }

    else
    {
      sub_24E601704(&v144, qword_27F21B590, &unk_24F93BE30);
      sub_24E601704(&v137, qword_27F21B590, &unk_24F93BE30);
      v49 = 0;
      v51 = 0;
      v52 = 0;
      *&v145 = 0;
    }

    *&v144 = v49;
    *(&v144 + 1) = v51;
    *(&v145 + 1) = v52;
    v96 = v114;
    sub_24F929868();
    v48(v28, v47);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
    v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238958, &qword_24F9C54B0);
    v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238960, &qword_24F9C54B8);
    v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244380, &unk_24F9FAF00);
    v100 = sub_24F463A94();
    *&v144 = v99;
    *(&v144 + 1) = v100;
    v101 = swift_getOpaqueTypeConformance2();
    v102 = sub_24F09B638();
    v103 = sub_24F463BAC();
    *&v144 = v97;
    *(&v144 + 1) = &type metadata for IsDebugImpressionIndexOverlayEnabled;
    *&v145 = v98;
    *(&v145 + 1) = v101;
    *&v146 = v102;
    *(&v146 + 1) = v103;
    v104 = swift_getOpaqueTypeConformance2();
    v105 = v48;
    v106 = v124;
    v107 = v131;
    v108 = v126;
    sub_24F925EE8();
    v105(v96, v47);
    (*(v113 + 8))(v108, v107);
    v109 = v125;
    v110 = v132;
    (*(v125 + 16))(v133, v106, v132);
    swift_storeEnumTagMultiPayload();
    *&v144 = v107;
    *(&v144 + 1) = v104;
    swift_getOpaqueTypeConformance2();
    v111 = sub_24F463914();
    *&v144 = v136;
    *(&v144 + 1) = v111;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    (*(v109 + 8))(v106, v110);
    __swift_destroy_boxed_opaque_existential_1(&v151);
  }
}

uint64_t sub_24F463428@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F925508();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2442E0, &qword_24F9FAE68);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  result = sub_24F924C88();
  *v9 = result;
  *(v9 + 1) = 0;
  v9[16] = 1;
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2442E8, &unk_24F9FAE70);
    v18 = v3;
    v19 = 0;
    v17[1] = *(v14 + 44);
    v20 = v10;
    KeyPath = swift_getKeyPath();
    v17[2] = a1;
    v17[0] = KeyPath;
    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    *(v16 + 24) = v10;
    *(v16 + 32) = v12;
    *(v16 + 40) = *(v1 + 3);
    *(v16 + 56) = *(v1 + 5);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0, &unk_24F93CB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2442F0, &qword_24F9FAEA0);
    sub_24E62A6CC();
    sub_24E602068(&qword_27F2442F8, &qword_27F2442F0, &qword_24F9FAEA0, MEMORY[0x277CE1138]);
    sub_24F927228();
    sub_24F9254F8();
    sub_24E602068(&qword_27F244300, &qword_27F2442E0, &qword_24F9FAE68, MEMORY[0x277CE1198]);
    sub_24F926678();
    (*(v4 + 8))(v6, v18);
    return sub_24E601704(v9, &qword_27F2442E0, &qword_24F9FAE68);
  }

  return result;
}

uint64_t sub_24F463700()
{

  return swift_deallocObject();
}

uint64_t sub_24F463740()
{

  return swift_deallocObject();
}

uint64_t sub_24F463784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244320, &qword_24F9FAEB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F4637F4()
{
  result = qword_27F244368;
  if (!qword_27F244368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244368);
  }

  return result;
}

uint64_t sub_24F463848(uint64_t a1)
{
  v2 = type metadata accessor for ContinuePlayingIcon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F4638A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244338, &qword_24F9FAED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F463914()
{
  result = qword_27F244370;
  if (!qword_27F244370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244340, &qword_24F9FAED8);
    sub_24F4639A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244370);
  }

  return result;
}

unint64_t sub_24F4639A0()
{
  result = qword_27F244378;
  if (!qword_27F244378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244338, &qword_24F9FAED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244330, &qword_24F9FAEC8);
    sub_24F4637F4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244378);
  }

  return result;
}

unint64_t sub_24F463A94()
{
  result = qword_27F244388;
  if (!qword_27F244388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244380, &unk_24F9FAF00);
    sub_24F463B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244388);
  }

  return result;
}

unint64_t sub_24F463B20()
{
  result = qword_27F244390;
  if (!qword_27F244390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244398, &unk_24FA08120);
    sub_24E66C1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244390);
  }

  return result;
}

unint64_t sub_24F463BAC()
{
  result = qword_27F2443A0;
  if (!qword_27F2443A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238960, &qword_24F9C54B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244380, &unk_24F9FAF00);
    sub_24F463A94();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2387B8, &qword_27F2387A8, &qword_24F9CFD50, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2443A0);
  }

  return result;
}

uint64_t sub_24F463CA0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24F463CD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2442E0, &qword_24F9FAE68);
  sub_24E602068(&qword_27F244300, &qword_27F2442E0, &qword_24F9FAE68, MEMORY[0x277CE1198]);
  return swift_getOpaqueTypeConformance2();
}

void sub_24F463D70(void *a1@<X8>)
{
  type metadata accessor for ShelfGeometryEnvironmentValues(0);
  sub_24F47DF2C(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  v2 = sub_24F924888();
  if (v2)
  {
    v3 = v2;
    swift_getKeyPath();
    sub_24F91FD88();

    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

void sub_24F463E88(void *a1@<X8>)
{
  type metadata accessor for ShelfGeometryEnvironmentValues(0);
  sub_24F47DF2C(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  v2 = sub_24F924888();
  if (v2)
  {
    v3 = v2;
    swift_getKeyPath();
    sub_24F91FD88();

    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

uint64_t sub_24F463FA0@<X0>(_BYTE *a1@<X8>)
{
  sub_24F47DF84();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F46403C@<X0>(void *a1@<X8>)
{
  sub_24F189AF8();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

double View.componentContentBuilder(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for GSKComponentContentBuilder(0);
  v6 = swift_allocObject();

  sub_24F91FDB8();
  *(v6 + 16) = a1;

  *(v6 + 24) = sub_24F479930(v7);

  sub_24F926F28();
  MEMORY[0x25304C420](&v9, a2, &type metadata for ComponentContentBuilderViewModifier, a3);

  return result;
}

uint64_t type metadata accessor for GSKComponentContentBuilder(uint64_t a1)
{
  result = qword_27F2443B0;
  if (!qword_27F2443B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F464208@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_24F924848();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2443C8, &qword_24F9FB130);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v30 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2443D0, &qword_24F9FB138);
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v31 = &v29 - v9;
  v10 = *(v1 + 8);

  if ((v10 & 1) == 0)
  {
    sub_24F92BDC8();
    v11 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_24F921A88();

  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215778, &qword_24F940B70);
  v14 = sub_24E6695B8();
  v15 = sub_24E66960C();
  v16 = MEMORY[0x277CE11C8];
  v17 = v30;
  sub_24F926B08();

  v18 = sub_24F926C28();
  v29 = &v29;
  MEMORY[0x28223BE20](v18);
  *(&v29 - 4) = v19;
  *(&v29 - 3) = 0x3FE0000000000000;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157A0, &unk_24F940B80);
  v37 = v16;
  v38 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v39 = v13;
  v40 = MEMORY[0x277CE11C0];
  v41 = v14;
  v42 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_24E669340();
  v23 = sub_24F47CCA4();
  v28 = v23;
  v24 = v31;
  v25 = v33;
  sub_24F926B08();

  (*(v32 + 8))(v17, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2443E0, &qword_24F9FB140);
  v37 = v25;
  v38 = &type metadata for IsDebugFlashBackgroundOnIdentityChangeEnabled;
  v39 = v20;
  v40 = OpaqueTypeConformance2;
  v41 = v22;
  v42 = v23;
  swift_getOpaqueTypeConformance2();
  sub_24F09B68C();
  v28 = sub_24F47CD9C();
  v26 = v35;
  sub_24F926B08();
  return (*(v34 + 8))(v24, v26);
}

double sub_24F464700()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2443F0, &qword_24F9FB170);
  sub_24F926F38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2443F8, &qword_24F9FB178);
  type metadata accessor for GSKComponentContentBuilder(0);
  sub_24E602068(&qword_27F244400, &qword_27F2443F8, &qword_24F9FB178, MEMORY[0x277CE04B0]);
  sub_24F47DF2C(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
  sub_24F9261A8();

  return result;
}

double sub_24F464824()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit26GSKComponentContentBuilder___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_24F4648D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2443D0, &qword_24F9FB138);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_24F464950(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SocialSuggestionsComponentGrid(0);

  sub_24F928EA8();
  v12 = &type metadata for SocialSuggestionsComponentGridComponent;
  v13 = sub_24EC15B7C();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for SocialSuggestionsComponentGridComponent, sub_24EC15B7C, sub_24EC15B7C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F464ABC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SocialSuggestionLockup(0);

  sub_24F928EA8();
  v12 = &type metadata for SocialSuggestionLockupComponent;
  v13 = sub_24F256264();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for SocialSuggestionLockupComponent, sub_24F256264, sub_24F256264);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F464C28(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallBrick(0);

  sub_24F928EA8();
  v12 = &type metadata for SmallBrickComponent;
  v13 = sub_24EACD72C();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for SmallBrickComponent, sub_24EACD72C, sub_24EACD72C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F464D94(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SettingsResetButton(0);

  sub_24F928EA8();
  v12 = &type metadata for SettingsResetButtonComponent;
  v13 = sub_24F47D170();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for SettingsResetButtonComponent, sub_24F47D170, sub_24F47D170);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F464F00(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchPromptItem(0);

  sub_24F928EA8();
  v12 = &type metadata for SearchPromptItemComponent;
  v13 = sub_24E66B688();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for SearchPromptItemComponent, sub_24E66B688, sub_24E66B688);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46506C(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchAppStoreButton(0);

  sub_24F928EA8();
  v12 = &type metadata for SearchAppStoreButtonComponent;
  v13 = sub_24F3B28D8();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for SearchAppStoreButtonComponent, sub_24F3B28D8, sub_24F3B28D8);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F4651D8(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RibbonBarItem(0);

  sub_24F928EA8();
  v21 = &type metadata for RibbonBarItemComponent;
  v22 = sub_24F47D1C4();
  *&v20 = a1;
  a2 &= 1u;
  BYTE8(v20) = a2;
  sub_24E612C80(&v20, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for RibbonBarItemComponent, sub_24F47D1C4, sub_24F47D1C4);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F465400(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReleaseStateIndicator(0);

  sub_24F928EA8();
  v12 = &type metadata for ReleaseStateIndicatorComponent;
  v13 = sub_24F004F34();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ReleaseStateIndicatorComponent, sub_24F004F34, sub_24F004F34);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46556C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecordingRowLockup(0);

  sub_24F928EA8();
  v19 = type metadata accessor for RecordingRowLockupComponent(0);
  v20 = sub_24F47DF2C(&qword_27F2444D0, type metadata accessor for RecordingRowLockupComponent, &unk_24FA336F4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for RecordingRowLockupComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F46F8C0(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F465798(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlayerLockup(0);

  sub_24F928EA8();
  v19 = type metadata accessor for PlayerLockupComponent(0);
  v20 = sub_24F47DF2C(&qword_27F2150D8, type metadata accessor for PlayerLockupComponent, &unk_24FA03C38);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47D218(a1, boxed_opaque_existential_1);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F46FB8C(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F4659B0(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlayTogetherTile(0);

  sub_24F928EA8();
  v12 = &type metadata for PlayTogetherTileComponent;
  v13 = sub_24F47D2E0();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for PlayTogetherTileComponent, sub_24F47D2E0, sub_24F47D2E0);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F465B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlayTogetherActivityTile(0);

  sub_24F928EA8();
  v19 = type metadata accessor for PlayTogetherActivityTileComponent(0);
  v20 = sub_24F47DF2C(&qword_27F21C958, type metadata accessor for PlayTogetherActivityTileComponent, &unk_24F956C78);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for PlayTogetherActivityTileComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F46FE44(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F465D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GSKDivider(0);

  sub_24F928EA8();
  v19 = type metadata accessor for GSKDividerComponent(0);
  v20 = sub_24F47DF2C(&qword_27F238C08, type metadata accessor for GSKDividerComponent, &unk_24F9C6428);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for GSKDividerComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F470110(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F465F74(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GSKParagraph(0);

  sub_24F928EA8();
  v12 = &type metadata for GSKParagraphComponent;
  v13 = sub_24F47D334();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for GSKParagraphComponent, sub_24F47D334, sub_24F47D334);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F4660E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverviewTile(0);

  sub_24F928EA8();
  v19 = type metadata accessor for OverviewTileComponent(0);
  v20 = sub_24F47DF2C(&qword_27F244508, type metadata accessor for OverviewTileComponent, &unk_24FA21960);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for OverviewTileComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F4703DC(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46630C(__int128 *a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverlayHomeButtonReservedNotice(0);

  sub_24F928EA8();
  v21 = &type metadata for OverlayHomeButtonReservedNoticeComponent;
  v22 = sub_24E9CC0A8();
  v8 = swift_allocObject();
  *&v20 = v8;
  v9 = a1[1];
  v24 = *a1;
  v25 = *(a1 + 16);
  v23 = *(a1 + 4);
  v10 = v23;
  *(v8 + 16) = v24;
  *(v8 + 32) = v9;
  *(v8 + 48) = v10;
  sub_24E612C80(&v20, v19);
  sub_24E60169C(&v24, v26, &qword_27F224448, &qword_24F971A00);

  sub_24E60169C(&v23, v26, &qword_27F244510, &qword_24F9FB4E8);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v18 = a2;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = *(v14 + 1);
  v26[0] = *v14;
  v26[1] = v16;
  v27 = *(v14 + 4);
  sub_24F4706A8(v26, v7, a1, &v18);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F466568(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverlayUnavailableNowPlayingFeatures(0);

  sub_24F928EA8();
  v12 = &type metadata for OverlayUnavailableNowPlayingFeaturesComponent;
  v13 = sub_24ED9CCBC();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for OverlayUnavailableNowPlayingFeaturesComponent, sub_24ED9CCBC, sub_24ED9CCBC);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F4666D4(uint64_t a1, char a2, uint64_t a3, double a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverlayPlatterLockup(0);

  sub_24F928EA8();
  v23 = &type metadata for OverlayPlatterLockupComponent;
  v24 = sub_24E69EB34();
  *&v21 = a1;
  a2 &= 1u;
  BYTE8(v21) = a2;
  v22 = a4;
  sub_24E612C80(&v21, v20);
  sub_24E62AB1C(a1, a2);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v19 = a3;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v20, v20[3]);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  sub_24F470978(*v15, *(v15 + 8), v11, a1, &v19, v15[2]);
  (*(v9 + 8))(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v19;
}

uint64_t sub_24F4668E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverlayCardLockup(0);

  sub_24F928EA8();
  v19 = type metadata accessor for OverlayCardLockupComponent(0);
  v20 = sub_24F47DF2C(&qword_27F237370, type metadata accessor for OverlayCardLockupComponent, &unk_24F9BF60C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for OverlayCardLockupComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F470C14(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F466B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverlayCapsuleLockup(0);

  sub_24F928EA8();
  v19 = type metadata accessor for OverlayCapsuleLockupComponent(0);
  v20 = sub_24F47DF2C(&qword_27F232E20, type metadata accessor for OverlayCapsuleLockupComponent, &unk_24F9AB280);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for OverlayCapsuleLockupComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F470EE0(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F466D3C(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OptionSetting(0);

  sub_24F928EA8();
  v12 = &type metadata for OptionSettingComponent;
  v13 = sub_24E8BB204();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for OptionSettingComponent, sub_24E8BB204, sub_24E8BB204);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F466EA8(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NotImplemented(0);

  sub_24F928EA8();
  v12 = &type metadata for NotImplementedComponent;
  v13 = sub_24F47D3D4();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for NotImplementedComponent, sub_24F47D3D4, sub_24F47D3D4);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F467014(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MultiplayerInviteLockup(0);

  sub_24F928EA8();
  v12 = &type metadata for MultiplayerInviteLockupComponent;
  v13 = sub_24F4424F8();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for MultiplayerInviteLockupComponent, sub_24F4424F8, sub_24F4424F8);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F467180(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LinkPlatter(0);

  sub_24F928EA8();
  v12 = &type metadata for LinkPlatterComponent;
  v13 = sub_24F47D428();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for LinkPlatterComponent, sub_24F47D428, sub_24F47D428);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F4672EC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardTimer(0);

  sub_24F928EA8();
  v12 = &type metadata for LeaderboardTimerComponent;
  v13 = sub_24E768848();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for LeaderboardTimerComponent, sub_24E768848, sub_24E768848);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F467458(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardsCountHeaderItem(0);

  sub_24F928EA8();
  v12 = &type metadata for LeaderboardsCountHeaderItemComponent;
  v13 = sub_24F47D47C();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for LeaderboardsCountHeaderItemComponent, sub_24F47D47C, sub_24F47D47C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F4675C4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardSetCard(0);

  sub_24F928EA8();
  v22 = &type metadata for LeaderboardSetCardComponent;
  v23 = sub_24F47D4D0();
  v14 = swift_allocObject();
  *&v21 = v14;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  sub_24E612C80(&v21, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = a1;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_24F4711AC(v13, isUniquelyReferenced_nonNull_native, &v19, *v16, v16[1], v16[2], v16[3]);
  (*(v11 + 8))(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v19;
}

uint64_t sub_24F46774C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardEntryTableRow(0);

  sub_24F928EA8();
  v19 = type metadata accessor for LeaderboardEntryTableRowComponent(0);
  v20 = sub_24F47DF2C(&qword_27F21C138, type metadata accessor for LeaderboardEntryTableRowComponent, &unk_24F954F30);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for LeaderboardEntryTableRowComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F4713CC(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F467978(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardEntryTable(0);

  sub_24F928EA8();
  v21 = &type metadata for LeaderboardEntryTableComponent;
  v22 = sub_24F32F220();
  *&v20 = a1;
  a2 &= 1u;
  BYTE8(v20) = a2;
  sub_24E612C80(&v20, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for LeaderboardEntryTableComponent, sub_24F32F220, sub_24F32F220);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F467BA0(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardActionButton(0);

  sub_24F928EA8();
  v12 = &type metadata for LeaderboardActionButtonComponent;
  v13 = sub_24E7E48B8();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for LeaderboardActionButtonComponent, sub_24E7E48B8, sub_24E7E48B8);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F467D0C(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardChallengeSuggestionLockup(0);

  sub_24F928EA8();
  v12 = &type metadata for LeaderboardChallengeSuggestionLockupComponent;
  v13 = sub_24F3D295C();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for LeaderboardChallengeSuggestionLockupComponent, sub_24F3D295C, sub_24F3D295C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F467E78(_OWORD *a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LeaderboardCard(0);

  sub_24F928EA8();
  v17 = &type metadata for LeaderboardCardComponent;
  v18 = sub_24F47D544();
  v8 = swift_allocObject();
  *&v16 = v8;
  v9 = a1[1];
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = a1[2];
  sub_24E612C80(&v16, v15);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v14 = a2;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
  v11 = v10[1];
  v19[0] = *v10;
  v19[1] = v11;
  v19[2] = v10[2];
  sub_24F471930(v19, v7, a1, &v14);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v14;
}

uint64_t sub_24F467FF8(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LargePlayerLockup(0);

  sub_24F928EA8();
  v12 = &type metadata for LargePlayerLockupComponent;
  v13 = sub_24F47D5A8();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for LargePlayerLockupComponent, sub_24F47D5A8, sub_24F47D5A8);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F468164(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InviteFriendsUpsellComponent(0);

  sub_24F928EA8();
  v12 = &type metadata for InviteFriendsUpsellComponentView;
  v13 = sub_24EA3E4CC();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for InviteFriendsUpsellComponentView, sub_24EA3E4CC, sub_24EA3E4CC);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F4682D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InviteFriendsRow(0);

  sub_24F928EA8();
  v19 = type metadata accessor for InviteFriendsRowComponent(0);
  v20 = sub_24F47DF2C(&qword_27F231A70, type metadata accessor for InviteFriendsRowComponent, &unk_24FA23C94);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for InviteFriendsRowComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F471B48(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F4684FC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InviteFriendsCardComponent(0);

  sub_24F928EA8();
  v21 = &type metadata for InviteFriendsCardComponentView;
  v22 = sub_24EE50BFC();
  *&v20 = a1;
  a2 &= 1u;
  BYTE8(v20) = a2;
  sub_24E612C80(&v20, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for InviteFriendsCardComponentView, sub_24EE50BFC, sub_24EE50BFC);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F468724(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IncomingFriendRequest(0);

  sub_24F928EA8();
  v21 = &type metadata for IncomingFriendRequestComponent;
  v22 = sub_24E72D014();
  v8 = swift_allocObject();
  *&v20 = v8;
  v24 = *(a1 + 8);
  v25 = *(a1 + 16);
  v23 = *(a1 + 24);
  v9 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 32);
  sub_24E612C80(&v20, v19);
  sub_24E60169C(&v24, v26, &qword_27F218208, &qword_24F94E940);
  sub_24E60169C(&v23, v26, &qword_27F21A6F0, &unk_24F95ACB0);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v18 = a2;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = *(v13 + 1);
  v26[0] = *v13;
  v26[1] = v15;
  v27 = *(v13 + 4);
  sub_24F471E14(v26, v7, a1, &v18);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F468980(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GroupedTableRow(0);

  sub_24F928EA8();
  v19 = type metadata accessor for GroupedTableRowComponent(0);
  v20 = sub_24F47DF2C(&qword_27F244548, type metadata accessor for GroupedTableRowComponent, &unk_24FA194F8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for GroupedTableRowComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F4720E4(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F468BAC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GroupedTable(0);

  sub_24F928EA8();
  v12 = &type metadata for GroupedTableComponent;
  v13 = sub_24F47D640();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for GroupedTableComponent, sub_24F47D640, sub_24F47D640);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F468D18(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ComponentGrid(0);

  sub_24F928EA8();
  v12 = &type metadata for ComponentGridComponent;
  v13 = sub_24F47D694();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ComponentGridComponent, sub_24F47D694, sub_24F47D694);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F468E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameLockup(0);

  sub_24F928EA8();
  v19 = type metadata accessor for GameLockupComponent(0);
  v20 = sub_24F47DF2C(&qword_27F216AC0, type metadata accessor for GameLockupComponent, &unk_24F943B74);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for GameLockupComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F4723B0(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F4690B0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameLibraryMenuLockup(0);

  sub_24F928EA8();
  v21 = &type metadata for GameLibraryMenuLockupComponent;
  v22 = sub_24F47D6E8();
  *&v20 = a1;
  a2 &= 1u;
  BYTE8(v20) = a2;
  sub_24E612C80(&v20, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for GameLibraryMenuLockupComponent, sub_24F47D6E8, sub_24F47D6E8);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F4692D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameInstallLockup(0);

  sub_24F928EA8();
  v19 = type metadata accessor for GameInstallLockupComponent(0);
  v20 = sub_24F47DF2C(&qword_27F21CB10, type metadata accessor for GameInstallLockupComponent, &unk_24F957038);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for GameInstallLockupComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F47267C(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F469504(char a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameHeroDetails(0);

  sub_24F928EA8();
  v15 = &type metadata for GameHeroDetailsComponent;
  v16 = sub_24E88EBE0();
  LOBYTE(v14) = a1 & 1;
  sub_24E612C80(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_24F472948(*v9, v7, isUniquelyReferenced_nonNull_native, &v12);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v12;
}

uint64_t sub_24F469654(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsSummary(0);

  sub_24F928EA8();
  v17 = &type metadata for GameDetailsSummaryComponent;
  v18 = sub_24E630740();
  *&v16 = a1;
  BYTE8(v16) = a2 & 1;
  sub_24E612C80(&v16, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_24F472B30(*v11, *(v11 + 8), v9, isUniquelyReferenced_nonNull_native, &v14);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v14;
}

uint64_t sub_24F4697BC(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for GameDetailsSummaryCard(0);

  sub_24F928EA8();
  v26 = &type metadata for GameDetailsSummaryCardComponent;
  v27 = sub_24EAC8268();
  v14 = swift_allocObject();
  *&v25 = v14;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2 & 1;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4 & 1;
  sub_24E612C80(&v25, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = a5;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v24[3]);
  v17 = *v16;
  v18 = *(v16 + 16);
  v19 = *(v16 + 24);
  v22 = *(v16 + 8);
  v21[8] = v19;
  sub_24F472D40(v17, v22, v18, v19, v13, isUniquelyReferenced_nonNull_native, &v23);
  (*(v11 + 8))(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v23;
}

uint64_t sub_24F46996C(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsRibbon(0);

  sub_24F928EA8();
  v12 = &type metadata for GameDetailsRibbonComponent;
  v13 = sub_24E62BAC0();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for GameDetailsRibbonComponent, sub_24E62BAC0, sub_24E62BAC0);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F469AD8(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsRatings(0);

  sub_24F928EA8();
  v12 = &type metadata for GameDetailsRatingsComponent;
  v13 = sub_24E61D264();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for GameDetailsRatingsComponent, sub_24E61D264, sub_24E61D264);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F469C44(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsRatingsAndReviews(0);

  sub_24F928EA8();
  v12 = &type metadata for GameDetailsRatingsAndReviewsComponent;
  v13 = sub_24E62D408();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for GameDetailsRatingsAndReviewsComponent, sub_24E62D408, sub_24E62D408);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F469DB0(uint64_t a1, __int16 a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsMediaPreview(0);

  sub_24F928EA8();
  v22 = &type metadata for GameDetailsMediaPreviewComponent;
  v23 = sub_24E62A190();
  *&v21 = a1;
  WORD4(v21) = a2 & 0x101;
  sub_24E612C80(&v21, v20);
  sub_24E62AB1C(a1, a2 & 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v20[3]);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  if (v14[9])
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  sub_24F472F74(*v14, v16 | v14[8], v9, isUniquelyReferenced_nonNull_native, &v19);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v19;
}

uint64_t sub_24F469FC8(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsMediaPreviewCard(0);

  sub_24F928EA8();
  v21 = &type metadata for GameDetailsMediaPreviewCardComponent;
  v22 = sub_24EAC5904();
  *&v20 = a1;
  a2 &= 1u;
  BYTE8(v20) = a2;
  sub_24E612C80(&v20, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for GameDetailsMediaPreviewCardComponent, sub_24EAC5904, sub_24EAC5904);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}