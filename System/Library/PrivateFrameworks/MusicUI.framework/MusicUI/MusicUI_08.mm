uint64_t sub_216740AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for HorizontalPosterLockup(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_23_37(a1 + *(a3 + 20));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_216740B6C()
{
  OUTLINED_FUNCTION_20_41();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = -v0;
  }
}

uint64_t sub_216740C24()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4360, &qword_21704C240);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_216740C84()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC42E8, &qword_21704C1C8);
  sub_216B882CC();
  OUTLINED_FUNCTION_5_5();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216740CE4()
{
  v1 = (type metadata accessor for SourceBundleLoader(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[7];
  sub_21700CB44();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_216740DC0()
{
  sub_21700CBF4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216740E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 36) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_216740F5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MenuContext(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216741094()
{
  type metadata accessor for SetSuggestionSearchTermAction(0);
  OUTLINED_FUNCTION_117();
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  OUTLINED_FUNCTION_34_28();

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_32_24();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();

  OUTLINED_FUNCTION_20_42();

  return swift_deallocObject();
}

uint64_t sub_21674118C()
{
  v1 = type metadata accessor for DismissSearchFocusAction(0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_39_25();

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + ((v3 + 33) & ~v3));

  OUTLINED_FUNCTION_38_30();

  return swift_deallocObject();
}

uint64_t sub_216741298()
{
  type metadata accessor for AddRecentSearchTermAction(0);
  OUTLINED_FUNCTION_117();
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  OUTLINED_FUNCTION_34_28();
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_32_24();

  OUTLINED_FUNCTION_20_42();

  return swift_deallocObject();
}

uint64_t sub_216741380()
{
  type metadata accessor for ReplaySelectYearAction(0);
  OUTLINED_FUNCTION_0_10();

  if (*(v1 + 5))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 6);
    if (*(v1 + 14))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 11);
    }
  }

  OUTLINED_FUNCTION_55_17();

  v3 = *(v0 + 20);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(&v1[v2 + v3]);

  OUTLINED_FUNCTION_26_40();

  return swift_deallocObject();
}

uint64_t sub_2167414A0()
{
  OUTLINED_FUNCTION_29_26();
  v2 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_43_0();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  v5 = v0 + v4;
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v4);
  v7 = (v0 + v4 + v2[5]);
  type metadata accessor for FlowAction.Destination(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      goto LABEL_37;
    case 2u:

      v14 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v15 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_23_8(v15))
      {
        OUTLINED_FUNCTION_50();
        (*(v16 + 8))(&v7[v14], v1);
      }

      v17 = &qword_27CAB80F0;
      v18 = &unk_217019010;
      goto LABEL_21;
    case 3u:

      goto LABEL_22;
    case 4u:
    case 0x15u:

      v8 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v9 = sub_217005EF4();
      goto LABEL_29;
    case 5u:
      type metadata accessor for GoToArtistContext(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        sub_21700C1E4();
      }

      else if (EnumCaseMultiPayload == 1)
      {
        sub_21700BA44();
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_37;
        }

LABEL_35:
        sub_21700C084();
      }

LABEL_36:
      OUTLINED_FUNCTION_9_0();
      (*(v30 + 8))(v7, v31);
LABEL_37:
      OUTLINED_FUNCTION_4_2();
      v32 = v2[8];
      v33 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_20_1(v5 + v32))
      {
        OUTLINED_FUNCTION_50();
        (*(v34 + 8))(v5 + v32, v33);
      }

      v35 = v5 + v2[9];
      v36 = type metadata accessor for ReferrerInfo(0);
      if (!OUTLINED_FUNCTION_4_16(v36))
      {
        if (!OUTLINED_FUNCTION_20_1(v35))
        {
          OUTLINED_FUNCTION_50();
          (*(v37 + 8))(v35, v33);
        }
      }

      v38 = (v5 + v2[10]);
      if (v38[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
      }

      v39 = (v5 + v2[11]);
      v40 = type metadata accessor for Page.Header(0);
      if (!OUTLINED_FUNCTION_22_8(v39))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        v41 = v40[5];
        v42 = sub_21700D7A4();
        if (!OUTLINED_FUNCTION_20_1(&v39[v41]))
        {
          OUTLINED_FUNCTION_50();
          (*(v43 + 8))(&v39[v41], v42);
        }

        OUTLINED_FUNCTION_93_0(v40[6]);

        OUTLINED_FUNCTION_93_0(v40[7]);

        OUTLINED_FUNCTION_93_0(v40[13]);

        OUTLINED_FUNCTION_93_0(v40[14]);
      }

      OUTLINED_FUNCTION_22_40();
      OUTLINED_FUNCTION_40_22();
      OUTLINED_FUNCTION_28_5();

      return swift_deallocObject();
    case 6u:
    case 7u:
      goto LABEL_35;
    case 8u:
      sub_2170073D4();
      goto LABEL_36;
    case 9u:
      sub_217007324();
      goto LABEL_36;
    case 0xAu:
      sub_21700C384();
      goto LABEL_36;
    case 0xBu:
      sub_2170072A4();
      goto LABEL_36;
    case 0xCu:
      sub_217006F54();
      goto LABEL_36;
    case 0xDu:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v19 + 8))(v7);
      v17 = &qword_27CAB80D0;
      v18 = &qword_21701D6B0;
      goto LABEL_21;
    case 0xEu:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v20 + 8))(v7);
      v17 = &qword_27CAB80C8;
      v18 = &unk_217019000;
LABEL_21:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
      OUTLINED_FUNCTION_54_4(*(v21 + 48));
      goto LABEL_22;
    case 0xFu:

      v25 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v26 = sub_217005EF4();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v7[v25], 1, v26);
      v28 = *(v26 - 8);
      if (!EnumTagSinglePayload)
      {
        (*(v28 + 8))(&v7[v25], v26);
      }

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F8, &unk_217038C80);
      (*(v28 + 8))(&v7[*(v29 + 48)], v26);
      goto LABEL_37;
    case 0x10u:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v23 + 8))(v7);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0, &unk_217036050) + 48);
      v9 = sub_21700C2F4();
      goto LABEL_29;
    case 0x11u:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v10 + 8))(v7);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8, &unk_217018FF0) + 48);
      v9 = sub_21700C8E4();
LABEL_29:
      if (!OUTLINED_FUNCTION_23_8(v9))
      {
        OUTLINED_FUNCTION_50();
        (*(v24 + 8))(&v7[v8], v1);
      }

      goto LABEL_37;
    case 0x12u:
      sub_21700C734();
      goto LABEL_36;
    case 0x14u:
      type metadata accessor for ReportableMusicItem(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          sub_21700C924();
          goto LABEL_36;
        case 1u:
          sub_217006E94();
          goto LABEL_36;
        case 2u:
        case 3u:
          goto LABEL_35;
        case 4u:
          v46 = sub_21700C4B4();
          if (!__swift_getEnumTagSinglePayload(v7, 1, v46))
          {
            OUTLINED_FUNCTION_50();
            (*(v47 + 8))(v7, v46);
          }

          v48 = type metadata accessor for SocialProfileDescriptor(0);
          OUTLINED_FUNCTION_54_4(v48[5]);

          OUTLINED_FUNCTION_54_4(v48[6]);

          OUTLINED_FUNCTION_54_4(v48[7]);

          v11 = v48[8];
          goto LABEL_9;
        case 5u:

          goto LABEL_22;
        default:
          goto LABEL_37;
      }

      goto LABEL_37;
    case 0x16u:

      goto LABEL_22;
    case 0x17u:
      goto LABEL_22;
    case 0x18u:

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0, &unk_217019020) + 48);
LABEL_9:
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v12 + 8))(&v7[v11], v13);
      goto LABEL_37;
    case 0x19u:

LABEL_22:

      goto LABEL_37;
    case 0x1Au:

      goto LABEL_37;
    default:
      goto LABEL_37;
  }
}

uint64_t sub_216741D88()
{
  type metadata accessor for PushNowPlayingAction(0);
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  OUTLINED_FUNCTION_34_28();
  v4 = v1 + *(v0 + 32);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v4 + v3);

  return swift_deallocObject();
}

uint64_t sub_216741E60()
{
  OUTLINED_FUNCTION_75_6();
  v1 = type metadata accessor for RoutedAction(0);
  OUTLINED_FUNCTION_43_0();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v3);
  v5 = (v3 + *(v1 + 20));
  if (v5[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  v6 = *(v1 + 24);
  v7 = sub_217005EF4();
  if (!OUTLINED_FUNCTION_22_8(v3 + v6))
  {
    OUTLINED_FUNCTION_50();
    (*(v8 + 8))(v3 + v6, v7);
  }

  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_41_24();
  OUTLINED_FUNCTION_65_2();

  return swift_deallocObject();
}

uint64_t sub_216741F84()
{
  type metadata accessor for QueueGenericMusicItemsAction(0);
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  OUTLINED_FUNCTION_34_28();

  v4 = *(v0 + 32);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v1 + v3 + v4);

  return swift_deallocObject();
}

uint64_t sub_216742064()
{
  OUTLINED_FUNCTION_75_6();
  type metadata accessor for PlayGenericMusicItemAction(0);
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  sub_2170067A4();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v1 + v3);

  v5 = *(v0 + 32);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v1 + v3 + v5);
  v7 = (v1 + v3 + *(v0 + 44));
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_41_24();
  OUTLINED_FUNCTION_65_2();

  return swift_deallocObject();
}

uint64_t sub_216742198()
{
  OUTLINED_FUNCTION_75_6();
  type metadata accessor for PlayGenericMusicItemCollectionAction(0);
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = *(v0 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v1 + v3 + v4);
  v6 = (v1 + v3 + *(v0 + 40));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_65_2();

  return swift_deallocObject();
}

uint64_t sub_21674230C()
{
  OUTLINED_FUNCTION_75_6();
  v1 = type metadata accessor for OpenFinancePageAction(0);
  OUTLINED_FUNCTION_43_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v3);
  OUTLINED_FUNCTION_4_2();
  v5 = *(v1 + 24);
  type metadata accessor for OpenFinancePageAction.Kind(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_217005EF4();
    OUTLINED_FUNCTION_9_0();
    (*(v6 + 8))(v0 + v3 + v5);
  }

  OUTLINED_FUNCTION_20_42();
  OUTLINED_FUNCTION_65_2();

  return swift_deallocObject();
}

uint64_t sub_216742448()
{
  type metadata accessor for OpenUnifiedMessagesSheetAction(0);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_47_25();
  v3 = v1 + v2;

  v4 = *(v0 + 32);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v3 + v4);

  OUTLINED_FUNCTION_26_40();

  return swift_deallocObject();
}

uint64_t sub_216742534()
{
  type metadata accessor for SubscriptionPurchaseAction(0);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_47_25();
  v2 = v0 + v1;
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v2);
  OUTLINED_FUNCTION_32_24();

  OUTLINED_FUNCTION_20_42();

  return swift_deallocObject();
}

uint64_t sub_21674261C()
{
  type metadata accessor for OpenAddToPlaylistAction(0);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_47_25();
  v3 = v1 + v2;

  v4 = *(v0 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v3 + v4);

  OUTLINED_FUNCTION_26_40();

  return swift_deallocObject();
}

uint64_t sub_21674278C()
{
  OUTLINED_FUNCTION_75_6();
  type metadata accessor for PerformPlaylistCollaborationRequestAction(0);
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v3);
  sub_216A77154();
  v5 = v3 + *(v0 + 32);

  v6 = *(type metadata accessor for ContentDescriptor(0) + 24);
  v7 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v5 + v6, 1, v7))
  {
    OUTLINED_FUNCTION_50();
    (*(v8 + 8))(v5 + v6, v7);
  }

  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_41_24();
  OUTLINED_FUNCTION_65_2();

  return swift_deallocObject();
}

uint64_t sub_2167428F4()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for ModalFlowAction(0);
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v3);
  v5 = (v3 + *(v0 + 28));
  type metadata accessor for FlowAction.Destination(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      goto LABEL_37;
    case 2u:

      v12 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v13 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_22_8(&v5[v12]))
      {
        OUTLINED_FUNCTION_50();
        (*(v14 + 8))(&v5[v12], v13);
      }

      v15 = &qword_27CAB80F0;
      v16 = &unk_217019010;
      goto LABEL_21;
    case 3u:

      goto LABEL_22;
    case 4u:
    case 0x15u:

      v6 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v7 = sub_217005EF4();
      goto LABEL_29;
    case 5u:
      type metadata accessor for GoToArtistContext(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        sub_21700C1E4();
      }

      else if (EnumCaseMultiPayload == 1)
      {
        sub_21700BA44();
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_37;
        }

LABEL_35:
        sub_21700C084();
      }

LABEL_36:
      OUTLINED_FUNCTION_9_0();
      (*(v29 + 8))(v5, v30);
LABEL_37:
      OUTLINED_FUNCTION_22_40();
      OUTLINED_FUNCTION_26();

      return swift_deallocObject();
    case 6u:
    case 7u:
      goto LABEL_35;
    case 8u:
      sub_2170073D4();
      goto LABEL_36;
    case 9u:
      sub_217007324();
      goto LABEL_36;
    case 0xAu:
      sub_21700C384();
      goto LABEL_36;
    case 0xBu:
      sub_2170072A4();
      goto LABEL_36;
    case 0xCu:
      sub_217006F54();
      goto LABEL_36;
    case 0xDu:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v17 + 8))(v5);
      v15 = &qword_27CAB80D0;
      v16 = &qword_21701D6B0;
      goto LABEL_21;
    case 0xEu:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v18 + 8))(v5);
      v15 = &qword_27CAB80C8;
      v16 = &unk_217019000;
LABEL_21:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      OUTLINED_FUNCTION_93_0(*(v19 + 48));
      goto LABEL_22;
    case 0xFu:

      v24 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v25 = sub_217005EF4();
      v26 = OUTLINED_FUNCTION_22_8(&v5[v24]);
      v27 = *(v25 - 8);
      if (!v26)
      {
        (*(v27 + 8))(&v5[v24], v25);
      }

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F8, &unk_217038C80);
      (*(v27 + 8))(&v5[*(v28 + 48)], v25);
      goto LABEL_37;
    case 0x10u:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v21 + 8))(v5);
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0, &unk_217036050) + 48);
      v7 = sub_21700C2F4();
      goto LABEL_29;
    case 0x11u:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v8 + 8))(v5);
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8, &unk_217018FF0) + 48);
      v7 = sub_21700C8E4();
LABEL_29:
      v22 = v7;
      if (!OUTLINED_FUNCTION_22_8(&v5[v6]))
      {
        OUTLINED_FUNCTION_50();
        (*(v23 + 8))(&v5[v6], v22);
      }

      goto LABEL_37;
    case 0x12u:
      sub_21700C734();
      goto LABEL_36;
    case 0x14u:
      type metadata accessor for ReportableMusicItem(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          sub_21700C924();
          goto LABEL_36;
        case 1u:
          sub_217006E94();
          goto LABEL_36;
        case 2u:
        case 3u:
          goto LABEL_35;
        case 4u:
          sub_21700C4B4();
          if (!OUTLINED_FUNCTION_22_8(v5))
          {
            OUTLINED_FUNCTION_50();
            v33 = OUTLINED_FUNCTION_116();
            v34(v33);
          }

          v35 = type metadata accessor for SocialProfileDescriptor(0);
          OUTLINED_FUNCTION_93_0(v35[5]);

          OUTLINED_FUNCTION_93_0(v35[6]);

          OUTLINED_FUNCTION_93_0(v35[7]);

          v9 = v35[8];
          goto LABEL_9;
        case 5u:

          goto LABEL_22;
        default:
          goto LABEL_37;
      }

      goto LABEL_37;
    case 0x16u:

      goto LABEL_22;
    case 0x17u:
      goto LABEL_22;
    case 0x18u:

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0, &unk_217019020) + 48);
LABEL_9:
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v10 + 8))(&v5[v9], v11);
      goto LABEL_37;
    case 0x19u:

LABEL_22:

      goto LABEL_37;
    case 0x1Au:

      goto LABEL_37;
    default:
      goto LABEL_37;
  }
}

uint64_t sub_216743024()
{
  OUTLINED_FUNCTION_49();
  v1 = (type metadata accessor for ProcessDeepLinkAction(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v2);
  v4 = v1[7];
  v5 = sub_217005EF4();
  OUTLINED_FUNCTION_34();
  v7 = *(v6 + 8);
  v7(v2 + v4, v5);
  v8 = v2 + v1[8];
  v9 = type metadata accessor for ReferrerInfo(0);
  if (!OUTLINED_FUNCTION_9_1(v9))
  {
    if (!__swift_getEnumTagSinglePayload(v8, 1, v5))
    {
      v7(v8, v5);
    }

    OUTLINED_FUNCTION_4_2();
  }

  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167431D4()
{
  type metadata accessor for CheckSocialHandleAvailabilityAction(0);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_47_25();
  v2 = v0 + v1;
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v2);
  OUTLINED_FUNCTION_32_24();

  OUTLINED_FUNCTION_20_42();

  return swift_deallocObject();
}

uint64_t sub_2167432B0()
{
  type metadata accessor for ReplaySelectPeriodAction(0);
  OUTLINED_FUNCTION_0_10();

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 10);
  if (*(v1 + 18))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 15);
  }

  OUTLINED_FUNCTION_55_17();

  v3 = *(v0 + 20);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(&v1[v2 + v3]);

  OUTLINED_FUNCTION_26_40();

  return swift_deallocObject();
}

uint64_t sub_2167433CC()
{
  OUTLINED_FUNCTION_29_26();
  v2 = type metadata accessor for SelectReplayYearAction(0);
  OUTLINED_FUNCTION_43_0();
  v4 = *(v3 + 80);

  if (*(v0 + 5))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
    if (*(v0 + 14))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
    }
  }

  v5 = (v4 + 296) & ~v4;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  if (*(v0 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);
  }

  swift_weakDestroy();
  v6 = sub_217007884();
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 8);
  v8(&v0[v5], v6);
  OUTLINED_FUNCTION_54_4(*(v2 + 20));

  v9 = &v0[v5 + *(v2 + 24)];
  v10 = type metadata accessor for AnyReplayYearRequest(0);
  if (!OUTLINED_FUNCTION_20_1(v9))
  {
    v11 = OUTLINED_FUNCTION_116();
    (v8)(v11);
    v12 = v9 + *(v10 + 20);
    v13 = type metadata accessor for AnyReplayYearRequestBody(0);
    if (!OUTLINED_FUNCTION_4_16(v13))
    {
      v14 = type metadata accessor for AnyReplayYearRequestBody.OneOf_InnerBody(0);
      if (!__swift_getEnumTagSinglePayload(v12, 1, v14))
      {
        v8(v12, v6);
      }

      v8((v12 + *(v1 + 20)), v6);
    }

    v15 = v9 + *(v10 + 24);
    v16 = type metadata accessor for BaseURLRequest(0);
    if (!OUTLINED_FUNCTION_20_1(v15))
    {

      v8((v15 + *(v16 + 20)), v6);
      OUTLINED_FUNCTION_93_0(*(v16 + 24));
    }
  }

  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_40_22();
  OUTLINED_FUNCTION_28_5();

  return swift_deallocObject();
}

uint64_t sub_216743618()
{
  OUTLINED_FUNCTION_29_26();
  v2 = type metadata accessor for SelectReplayPeriodAction(0);
  OUTLINED_FUNCTION_43_0();
  v4 = (*(v3 + 80) + 152) & ~*(v3 + 80);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  if (*(v0 + 14))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  }

  swift_weakDestroy();
  v5 = &v0[v4];
  v6 = sub_217007884();
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 8);
  v8(&v0[v4], v6);
  OUTLINED_FUNCTION_54_4(*(v2 + 20));

  v9 = &v0[v4 + *(v2 + 24)];
  v10 = type metadata accessor for AnyReplayPageRequest(0);
  if (!OUTLINED_FUNCTION_9_1(v10))
  {
    v8(v9, v6);
    v11 = &v9[*(v5 + 5)];
    v12 = type metadata accessor for AnyReplayPageRequestBody(0);
    if (!OUTLINED_FUNCTION_4_16(v12))
    {
      v13 = type metadata accessor for AnyReplayPageRequestBody.OneOf_InnerBody(0);
      if (!__swift_getEnumTagSinglePayload(v11, 1, v13))
      {
        v8(v11, v6);
      }

      v8((v11 + *(v1 + 20)), v6);
    }

    v14 = &v9[*(v5 + 6)];
    v15 = type metadata accessor for BaseURLRequest(0);
    if (!OUTLINED_FUNCTION_9_1(v15))
    {

      v8(&v14[*(v5 + 5)], v6);
      OUTLINED_FUNCTION_4_2();
    }
  }

  OUTLINED_FUNCTION_22_40();
  OUTLINED_FUNCTION_40_22();
  OUTLINED_FUNCTION_28_5();

  return swift_deallocObject();
}

uint64_t sub_216743830()
{
  v2 = OUTLINED_FUNCTION_102();
  v3 = type metadata accessor for SuggestionItem(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_216743870()
{
  v0 = OUTLINED_FUNCTION_102();
  type metadata accessor for SuggestionItem(v0);
  v1 = OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2167438A8()
{
  v1 = *(type metadata accessor for SuggestionItemView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = type metadata accessor for SuggestionItem(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + v5[5]));
  v6 = (v3 + v5[6]);
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  v7 = v3 + v5[10];
  type metadata accessor for LockupArtwork(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*(v7 + 8) >= 2uLL)
    {
    }
  }

  else
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v8 + 8))(v7);
    v9 = *(type metadata accessor for Artwork(0) + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v10 + 8))(v7 + v9);
  }

  return swift_deallocObject();
}

uint64_t sub_216743AA8()
{
  v2 = OUTLINED_FUNCTION_102();
  v3 = type metadata accessor for LockupArtwork(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_216743AE8()
{
  v0 = OUTLINED_FUNCTION_102();
  type metadata accessor for LockupArtwork(v0);
  v1 = OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216743B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216743BE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216743C90()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216743CC8()
{

  return swift_deallocObject();
}

uint64_t sub_216743D00()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216743D40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216743D80()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216743DB4()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_216743EC4()
{

  return swift_deallocObject();
}

uint64_t sub_216743F04()
{
  OUTLINED_FUNCTION_102();
  v2 = sub_2170061E4();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_216743F44()
{
  OUTLINED_FUNCTION_102();
  v2 = sub_2170061E4();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_216743F88(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_102();
  type metadata accessor for AnimatedTextListItem(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v10, v3, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
  OUTLINED_FUNCTION_17();
  if (*(v12 + 84) == v3)
  {
    v9 = v11;
    v13 = a3[5];
LABEL_7:
    v10 = v4 + v13;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4548, &unk_21704D2F0);
  OUTLINED_FUNCTION_17();
  if (*(v15 + 84) == v3)
  {
    v9 = v14;
    v13 = a3[6];
    goto LABEL_7;
  }

  v17 = *(v4 + a3[7] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

void sub_2167440D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_102();
  type metadata accessor for AnimatedTextListItem(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4548, &unk_21704D2F0);
      OUTLINED_FUNCTION_17();
      if (*(v17 + 84) != a3)
      {
        *(v5 + a4[7] + 8) = v4;
        return;
      }

      v11 = v16;
      v15 = a4[6];
    }

    v12 = v5 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_216744258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ContentDescriptor(0);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_21674433C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = type metadata accessor for ContentDescriptor(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_216744484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320, &unk_217019D00);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_216744564(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320, &unk_217019D00);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216744640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v10 = *(a3 + 52);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_216744724(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v10 = *(a4 + 52);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_216744808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_2167448F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContentDescriptor(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20) + 8) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167449D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216744A08()
{

  return swift_deallocObject();
}

uint64_t sub_216744A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20));
      if (v9 >= 2)
      {
        return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216744B28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContentDescriptor(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216744C74()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_216744CAC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216744CF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216BA1EF4();
  *a1 = result;
  return result;
}

uint64_t sub_216744D48()
{

  return swift_deallocObject();
}

uint64_t sub_216744D80()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216744DC8(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
  v5 = OUTLINED_FUNCTION_19_1(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_216744E4C()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_216744ED8()
{
  type metadata accessor for SquareLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 24);
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216745018()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v4 + 8);
  v10 = v4 + 8;
  v11(v1 + v5, v2);
  v12 = v1 + v9;
  v13 = type metadata accessor for ContentDescriptor(0);
  if (!OUTLINED_FUNCTION_9_1(v13))
  {

    v14 = *(v10 + 24);
    v15 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v12 + v14, 1, v15))
    {
      (*(*(v15 - 8) + 8))(v12 + v14, v15);
    }
  }

  v16 = v12 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v17 + 8))(v16);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v19 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v16 + v18, 1, v19))
    {
      (*(*(v19 - 8) + 8))(v16 + v18, v19);
    }
  }

  v20 = (v12 + *(v0 + 32));
  if (v20[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return swift_deallocObject();
}

uint64_t sub_2167452BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + 16));
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40) - 8) + 84) == a2)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478, &qword_21702A208);
    v5 = *(a3 + 44);
  }

  v6 = OUTLINED_FUNCTION_19_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_216745390()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478, &qword_21702A208);
      v8 = *(v5 + 44);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_216745464()
{
  type metadata accessor for SquareLockupContent(0);
  OUTLINED_FUNCTION_4_4();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_216684F5C(*v4, *(v4 + 8));

  v5 = v4 + v0[6];
  v6 = type metadata accessor for Artwork(0);
  if (!OUTLINED_FUNCTION_9_1(v6))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v7 + 8))(v5);
    v8 = *(v2 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v9 + 8))(v5 + v8);
  }

  if ((OUTLINED_FUNCTION_14_54(v0[7]) - 1) >= 9)
  {
  }

  OUTLINED_FUNCTION_14_54(v0[8]);

  OUTLINED_FUNCTION_14_54(v0[9]);

  OUTLINED_FUNCTION_14_54(v0[10]);

  v10 = v0[11];
  v11 = sub_217005C64();
  if (!__swift_getEnumTagSinglePayload(v4 + v10, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  v12 = (v4 + v0[14]);
  if (v12[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  if (*(v4 + v0[15] + 8) != 1)
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v4 + v0[17]));

  return swift_deallocObject();
}

uint64_t sub_21674568C()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4928, &qword_21704E5C0);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_2167456FC()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  type metadata accessor for ActionButtonStyle(255);
  sub_2166D9530(&qword_27CAC4A10, &qword_27CAC4900, &qword_21704E568, &unk_21702C8E0);
  sub_2166D7B10(&qword_280E404C0, type metadata accessor for ActionButtonStyle, &unk_21702C99C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167457E8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4A20, &qword_21704E6C8);
  OUTLINED_FUNCTION_34();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216745850(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[12];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v9 = a3[20];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v9 = a3[22];
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[17] + 24);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_216745984(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[12];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[17] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[20];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v11 = a4[22];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_216745AB8(uint64_t a1)
{
  result = sub_2166D7B58(&qword_280E445F0, type metadata accessor for SquareLockup, &unk_21704EAD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216745B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216745B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216746004()
{

  return swift_deallocObject();
}

uint64_t sub_216746044()
{
  v1 = sub_21700CCA4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_216746114()
{
  sub_21700CCA4();
  OUTLINED_FUNCTION_9_0();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

__n128 sub_2167461C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2167461D0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for MenuContext(0);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == a2)
    {
      v8 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v8 = *(a3 + 28);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_216746298()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_18_46();
    type metadata accessor for MenuContext(0);
    OUTLINED_FUNCTION_17();
    if (*(v5 + 84) == v3)
    {
      v6 = *(v2 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v6 = *(v2 + 28);
    }

    v7 = OUTLINED_FUNCTION_19_1(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v0, v9);
  }
}

uint64_t sub_216746364()
{
  OUTLINED_FUNCTION_49();
  v1 = type metadata accessor for TrackShelfLockupView(0);
  OUTLINED_FUNCTION_43_0();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v3 + v1[5];
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v4);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v7 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v7))
    {
      OUTLINED_FUNCTION_50();
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v10 + 8))(v3 + v9);
  }

  else
  {
  }

  v11 = v3 + v1[8];
  if (*(v11 + 40))
  {
    if (*(v11 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_21674655C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for MenuContext(0);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == a2)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
      v8 = *(a3 + 36);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_216746624()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *(v1 + 40) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_18_46();
    type metadata accessor for MenuContext(0);
    OUTLINED_FUNCTION_17();
    if (*(v5 + 84) == v3)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
      v6 = *(v2 + 36);
    }

    v7 = OUTLINED_FUNCTION_19_1(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v0, v9);
  }
}

uint64_t sub_2167466E4()
{
  OUTLINED_FUNCTION_49();
  v2 = type metadata accessor for TrackShelfLockupContent(0);
  OUTLINED_FUNCTION_43_0();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v0 + v4;
  if (*(v0 + v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v4));
  }

  v6 = v5 + *(v2 + 24);
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_2_101();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v7 + 8))(v6);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v9 = sub_21700C924();
    if (!OUTLINED_FUNCTION_23_38(v9))
    {
      OUTLINED_FUNCTION_50();
      (*(v10 + 8))(v6 + v8, v1);
    }
  }

  v11 = *(v2 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_9_0();
    (*(v12 + 8))(v5 + v11);
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167468AC()
{
  v1 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_216746968()
{
  OUTLINED_FUNCTION_102();
  sub_2170067A4();
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == v0)
  {
    v4 = v2;
    v5 = v1;
  }

  else
  {
    type metadata accessor for MenuConfiguration(0);
    v5 = OUTLINED_FUNCTION_20_44();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v4);
}

uint64_t sub_2167469F4()
{
  OUTLINED_FUNCTION_18_46();
  OUTLINED_FUNCTION_102();
  sub_2170067A4();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v2)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    type metadata accessor for MenuConfiguration(0);
    v6 = OUTLINED_FUNCTION_20_44();
  }

  return __swift_storeEnumTagSinglePayload(v6, v0, v0, v5);
}

uint64_t sub_216746AAC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_11_1();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v7 = OUTLINED_FUNCTION_19_1(*(a3 + 52));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_216746B40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v6 = OUTLINED_FUNCTION_19_1(*(a4 + 52));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_216746BC8()
{
  v2 = OUTLINED_FUNCTION_102();
  type metadata accessor for TrackLockup(v2);
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v6 = OUTLINED_FUNCTION_20_44();
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

uint64_t sub_216746C60()
{
  OUTLINED_FUNCTION_18_46();
  v3 = OUTLINED_FUNCTION_102();
  type metadata accessor for TrackLockup(v3);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v2)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v7 = OUTLINED_FUNCTION_20_44();
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_216746D00()
{
  OUTLINED_FUNCTION_49();
  v2 = (type metadata accessor for ContextMenuButton(0) - 8);
  v3 = v0 + ((*(*v2 + 80) + 16) & ~*(*v2 + 80));
  sub_2170067A4();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v3);
  v5 = v3 + v2[7];
  v6 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v5, 1, v6))
  {

    v7 = *(v6 + 24);
    v8 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v5 + v7, 1, v8))
    {
      OUTLINED_FUNCTION_50();
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  v10 = type metadata accessor for MenuConfiguration(0);
  v11 = v5 + *(v10 + 20);
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_2_101();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v12 + 8))(v11);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v14 = sub_21700C924();
    if (!OUTLINED_FUNCTION_23_38(v14))
    {
      OUTLINED_FUNCTION_50();
      (*(v15 + 8))(v11 + v13, v1);
    }
  }

  v16 = (v5 + *(v10 + 32));
  if (v16[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216746F70()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216747014()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_21680DFBC(&qword_27CAC3778, &qword_27CAC3780);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167470F4()
{

  return swift_deallocObject();
}

uint64_t sub_216747180()
{

  return swift_deallocObject();
}

uint64_t sub_2167471B8()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for GradientListRowView(0);
  OUTLINED_FUNCTION_4_4();
  v5 = *(v4 + 64);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = v1 + v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v6 + 8));
  type metadata accessor for GradientListRowModel(0);
  v8 = OUTLINED_FUNCTION_9_75();
  if (!__swift_getEnumTagSinglePayload(v1 + v6 + v2, 1, v8))
  {
    OUTLINED_FUNCTION_4_23();
    (*(v9 + 8))(v7 + v2, v8);
  }

  v10 = (v7 + *(v1 + v6 + 36));
  if (v10[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  v11 = v7 + *(v1 + v6 + 40);
  if (*(v11 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v11 + 8));
  }

  v12 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_9_0();
  (*(v13 + 8))(v7 + v12);

  v14 = v7 + v0[7];
  if (*(v14 + 40))
  {
    if (*(v14 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }
  }

  else
  {
  }

  v15 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v7 + v15);
  }

  else
  {
  }

  v17 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v7 + v17);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216747488()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for GradientListRowView(0);
  OUTLINED_FUNCTION_4_4();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  v8 = v1 + v5;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v5 + 8));
  type metadata accessor for GradientListRowModel(0);
  v9 = OUTLINED_FUNCTION_9_75();
  if (!OUTLINED_FUNCTION_13_58(v9))
  {
    OUTLINED_FUNCTION_4_23();
    (*(v10 + 8))(v8 + v3, v2);
  }

  v11 = (v8 + *(v1 + v5 + 36));
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  v12 = v8 + *(v1 + v5 + 40);
  if (*(v12 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v12 + 8));
  }

  v13 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_9_0();
  (*(v14 + 8))(v8 + v13);

  v15 = v8 + v0[7];
  if (*(v15 + 40))
  {
    if (*(v15 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
    }
  }

  else
  {
  }

  v16 = v0[8];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (OUTLINED_FUNCTION_16_53(v17) == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v8 + v16);
  }

  else
  {
  }

  v19 = v0[9];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (OUTLINED_FUNCTION_16_53(v20) == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v21 + 8))(v8 + v19);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + ((v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216747720(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_110();
  type metadata accessor for GradientListRowModel(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_17();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v13 = a3[5];
LABEL_5:
    v10 = v3 + v13;
    goto LABEL_6;
  }

  if (a2 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v18 + 84) == a2)
    {
      v9 = v17;
      v13 = a3[8];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
      v13 = a3[9];
    }

    goto LABEL_5;
  }

  v15 = *(v3 + a3[6] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

void sub_21674789C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_110();
  type metadata accessor for GradientListRowModel(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(v4 + a4[6] + 8) = a2;
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      OUTLINED_FUNCTION_17();
      if (*(v17 + 84) == a3)
      {
        v11 = v16;
        v15 = a4[8];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
        v15 = a4[9];
      }
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_216747A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_110();
  type metadata accessor for GenericMusicItemToolbarContent(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v9 = type metadata accessor for ToolbarProperties(0);
    v10 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_216747AA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  type metadata accessor for GenericMusicItemToolbarContent(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v11 = type metadata accessor for ToolbarProperties(0);
    v12 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_216747B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = type metadata accessor for MenuContext(0);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_216747C24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = type metadata accessor for MenuContext(0);
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216747D10()
{
  type metadata accessor for GenericMusicItemToolbarContent(0);
  OUTLINED_FUNCTION_4_4();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = type metadata accessor for ContentDescriptor(0);
  if (!OUTLINED_FUNCTION_9_1(v5))
  {

    v6 = *(v2 + 24);
    v7 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v7))
    {
      OUTLINED_FUNCTION_50();
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  v9 = *(v0 + 20);
  sub_2170067A4();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v4 + v9);
  v11 = v4 + *(v0 + 24);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v12 + 8))(v11);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v14 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v11 + v13, 1, v14))
    {
      OUTLINED_FUNCTION_50();
      (*(v15 + 8))(v11 + v13, v14);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_216747F20()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v4 + 8);
  v10 = v4 + 8;
  v11(v1 + v5, v2);
  v12 = v1 + v9;
  v13 = type metadata accessor for ContentDescriptor(0);
  if (!OUTLINED_FUNCTION_9_1(v13))
  {

    v14 = *(v10 + 24);
    v15 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v12 + v14, 1, v15))
    {
      OUTLINED_FUNCTION_50();
      (*(v16 + 8))(v12 + v14, v15);
    }
  }

  v17 = v12 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v17);
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v20 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v17 + v19, 1, v20))
    {
      OUTLINED_FUNCTION_50();
      (*(v21 + 8))(v17 + v19, v20);
    }
  }

  v22 = (v12 + *(v0 + 32));
  if (v22[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  return swift_deallocObject();
}

uint64_t sub_216748210()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  OUTLINED_FUNCTION_3_14();
  sub_2166D9530(v2, &qword_27CAC52A0, &qword_217050498, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167482D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2168E3350();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216748330(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for NavigationDestinationsModifier(255, *a1, v5, a4);
  swift_getWitnessTable();
  sub_2170097A4();
  type metadata accessor for FlowAction(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5370, &qword_217050650);
  swift_getWitnessTable();
  sub_216BD4ED0(&qword_280E45BA8, type metadata accessor for FlowAction, &unk_21706E4C8);
  sub_216BD4CD0();
  swift_getOpaqueTypeMetadata2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for WrappedAppPageDestination(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  type metadata accessor for AppDestinationPageView(255, v4, v5, v9);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167485B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216748670(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216748728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for Artwork(0);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_216748800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for Artwork(0);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2167488D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GoToArtistContext(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216748980(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GoToArtistContext(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216748A50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAccessoryButton(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216748A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAccessoryButton(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216748AE4()
{
  v1 = *(type metadata accessor for DefaultAccessoryButtonView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  v3 = type metadata accessor for DefaultAccessoryButton(0);
  v4 = *(v3 + 20);
  v5 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(&v2[v4], 1, v5))
  {
    (*(*(v5 - 8) + 8))(&v2[v4], v5);
  }

  v6 = &v2[*(v3 + 28)];
  if (*(v6 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_216748C30()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC53F0, &unk_217050CF0);
  type metadata accessor for ActionButtonStyle(255);
  sub_216BDCEA4();
  sub_216BDCF08();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216748CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216748CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216748D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v8 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_216748E58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216748F58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC54C0, &qword_217051170);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  OUTLINED_FUNCTION_2(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v10 = sub_2170098A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v0 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_2167490D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21674919C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_216749250()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_2170086D4();
  OUTLINED_FUNCTION_21_7();
  sub_2166D9530(v2, &qword_27CAC54C8, &qword_217051178, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216749320@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217006784();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21674934C()
{
  v1 = type metadata accessor for RecentSearchesContentView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_2170098A4();
    if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v3))
    {
      (*(*(v3 - 8) + 8))(v0 + v2, v3);
    }
  }

  else
  {
  }

  j__swift_release();
  sub_216684F5C(*(v0 + v2 + *(v1 + 24)), *(v0 + v2 + *(v1 + 24) + 8));

  return swift_deallocObject();
}

uint64_t sub_2167494B4()
{

  return swift_deallocObject();
}

uint64_t sub_216749538()
{
  MEMORY[0x21CEA1520](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_216749570()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2167495B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216749600@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216BE5E1C();
  *a1 = result;
  return result;
}

uint64_t sub_216749630(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB848, &unk_21705ED20);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
      v14 = a3[7];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216749764(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB848, &unk_21705ED20);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216749898()
{
  OUTLINED_FUNCTION_8_85();
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_73();

    return __swift_getEnumTagSinglePayload(v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_4_108();
    v7 = v6 - 1;
    if (v7 < 0)
    {
      v7 = -1;
    }

    return (v7 + 1);
  }
}

void sub_216749928()
{
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

uint64_t sub_2167499AC()
{
  OUTLINED_FUNCTION_8_85();
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_73();

    return __swift_getEnumTagSinglePayload(v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_4_108();
    return (v6 + 1);
  }
}

void sub_216749A30()
{
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_216749AB4()
{
  OUTLINED_FUNCTION_8_85();
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_73();

    return __swift_getEnumTagSinglePayload(v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_4_108();
    return (v6 + 1);
  }
}

void sub_216749B38()
{
  OUTLINED_FUNCTION_7_84();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_216749BBC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC56B0, &qword_2170517E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC56B8, &qword_2170517F0);
  sub_216BE9288();
  OUTLINED_FUNCTION_2_132();
  sub_216BED9F8(v0, &qword_27CAC56B8, &qword_2170517F0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216749D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    v10 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_216749DAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216749E64()
{
  MEMORY[0x21CEA1520](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_216749E9C()
{

  return swift_deallocObject();
}

uint64_t sub_216749EDC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5920, &qword_217051D88);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216749FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21674A06C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21674A54C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v5 = OUTLINED_FUNCTION_19_1(*(a3 + 36));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_21674A5D0()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 36));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_21674A64C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + 16));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v5 = OUTLINED_FUNCTION_19_1(*(a3 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_21674A6D0()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_21674A83C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B20, &qword_217052CB0);
  OUTLINED_FUNCTION_34();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21674A8AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21674A8EC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B28, &qword_217052CB8);
  OUTLINED_FUNCTION_34();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21674A954(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B28, &qword_217052CB8);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21674A9BC()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  if (v0[13])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21674AA4C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21674AB50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21674ABA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21674ABFC(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_17:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[12];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[13];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
          OUTLINED_FUNCTION_17();
          if (*(v20 + 84) == a2)
          {
            v8 = v19;
            v14 = a3[14];
          }

          else
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
            v14 = a3[15];
          }
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_17;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21674AE14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[12];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[13];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
          OUTLINED_FUNCTION_17();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[14];
          }

          else
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
            v14 = a4[15];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21674B028(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21674B070(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21674B0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + 24));
  }

  sub_2170071B4();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 36);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v10 = *(a3 + 56);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_21674B184(uint64_t result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_2170071B4();
    OUTLINED_FUNCTION_17();
    if (*(v4 + 84) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    }

    OUTLINED_FUNCTION_32_4();

    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  return result;
}

uint64_t sub_21674B250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = type metadata accessor for PosterArtworkView(0, *(v4 + 16), v5, a4);
  OUTLINED_FUNCTION_43_0();
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_14_47();
  v14 = type metadata accessor for PosterArtworkView.StandardArtworkView(v11, v12, v5, v13);
  v38 = sub_2170089F4();
  OUTLINED_FUNCTION_43_0();
  v16 = *(v15 + 80);
  v17 = v10 + v16;
  v18 = v4 + v8;
  __swift_destroy_boxed_opaque_existential_1Tm((v4 + v8));
  v19 = v6[9];
  v20 = sub_2170071B4();
  OUTLINED_FUNCTION_34();
  v37 = *(v21 + 8);
  v37(v4 + v8 + v19, v20);
  OUTLINED_FUNCTION_9_78(v4 + v8 + v6[11]);
  if (v22)
  {
  }

  v23 = v8 + v17;
  if (*(v18 + v6[13]))
  {
  }

  v24 = v23 & ~v16;
  v25 = v6[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v26 + 8))(v18 + v25);
  }

  else
  {
  }

  v27 = v4 + v24;
  v28 = type metadata accessor for Artwork(0);
  if (!__swift_getEnumTagSinglePayload(v4 + v24, 1, v28))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v29 + 8))(v4 + v24);
    v30 = *(v28 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v31 + 8))(v27 + v30);
  }

  v32 = v27 + v14[10];
  v33 = type metadata accessor for VideoArtwork(0);
  if (!__swift_getEnumTagSinglePayload(v32, 1, v33))
  {

    v34 = *(v33 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v35 + 8))(v32 + v34);
  }

  v37(v27 + v14[11], v20);
  OUTLINED_FUNCTION_9_78(v27 + v14[12]);
  if (v22)
  {
  }

  if (*(v27 + *(v38 + 36) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21674B5DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10, &qword_2170532E0);
  OUTLINED_FUNCTION_2(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = v5 + *(v6 + 64);
  v9 = type metadata accessor for PosterArtworkView(0, v1, v2, v8);
  OUTLINED_FUNCTION_43_0();
  v11 = (v7 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = sub_217006EC4();
  if (!__swift_getEnumTagSinglePayload(v0 + v5, 1, v12))
  {
    (*(*(v12 - 8) + 8))(v0 + v5, v12);
  }

  v13 = v0 + v11;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v11));
  v14 = v9[9];
  sub_2170071B4();
  OUTLINED_FUNCTION_9_0();
  (*(v15 + 8))(v0 + v11 + v14);
  OUTLINED_FUNCTION_9_78(v0 + v11 + v9[11]);
  if (v16)
  {
  }

  if (*(v13 + v9[13]))
  {
  }

  v17 = v9[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v13 + v17);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21674B804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PosterArtworkView(0, *(v4 + 16), *(v4 + 24), a4);
  OUTLINED_FUNCTION_43_0();
  v7 = (v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  v8 = v5[9];
  sub_2170071B4();
  OUTLINED_FUNCTION_9_0();
  (*(v9 + 8))(&v7[v8]);
  OUTLINED_FUNCTION_9_78(&v7[v5[11]]);
  if (v10)
  {
  }

  if (*&v7[v5[13]])
  {
  }

  v11 = v5[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v12 + 8))(&v7[v11]);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21674B974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PosterArtworkView(0, *(v4 + 16), *(v4 + 24), a4);
  OUTLINED_FUNCTION_43_0();
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = *(v8 + 64);
  v9 = sub_217006EC4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v12 = *(v10 + 80);
  v13 = v4 + v7;
  __swift_destroy_boxed_opaque_existential_1Tm((v4 + v7));
  v14 = v5[9];
  sub_2170071B4();
  OUTLINED_FUNCTION_9_0();
  (*(v15 + 8))(v4 + v7 + v14);
  OUTLINED_FUNCTION_9_78(v4 + v7 + v5[11]);
  if (v16)
  {
  }

  if (*(v13 + v5[13]))
  {
  }

  v17 = v5[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v13 + v17);
  }

  else
  {
  }

  (*(v11 + 8))(v4 + ((v7 + v20 + v12) & ~v12), v9);

  return swift_deallocObject();
}

uint64_t sub_21674BB6C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[10];
    }

    else
    {
      sub_2170071B4();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) != a2)
      {
        return OUTLINED_FUNCTION_18_48(a1 + a3[12]);
      }

      v8 = v13;
      v12 = a3[11];
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_21674BCA4()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710), OUTLINED_FUNCTION_17(), *(v5 + 84) == v3) || (sub_2170071B4(), OUTLINED_FUNCTION_17(), *(v6 + 84) == v3))
  {
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 48) + 8) = (v0 + 9);
  }
}

uint64_t sub_21674BDD8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = OUTLINED_FUNCTION_36_33();
  v6 = type metadata accessor for PosterArtworkView.StandardArtworkView(v3, v4, v1, v5);
  OUTLINED_FUNCTION_14_47();
  v11 = v6;
  sub_2170089F4();
  OUTLINED_FUNCTION_14_59();
  WitnessTable = swift_getWitnessTable();
  v18 = WitnessTable;
  v19 = sub_216BA9564();
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  v16 = MEMORY[0x277CE0F70];
  v17 = v1;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_27_41();
  OUTLINED_FUNCTION_13_61();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_14_47();
  sub_217009564();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5C18, &unk_2170532D0);
  v13 = v2;
  v14 = sub_216C01BF8();
  v15 = v1;
  type metadata accessor for SimpleChinViewModifier(255, &v12);
  sub_2170089F4();
  sub_21700B344();
  sub_216C01C74();
  OUTLINED_FUNCTION_27_41();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_27_41();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_15_57();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_47();
  v7 = sub_217007BB4();
  OUTLINED_FUNCTION_12_63();
  v8 = swift_getWitnessTable();
  v12 = v7;
  v13 = v8;
  swift_getOpaqueTypeMetadata2();
  v12 = v11;
  v13 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_36_33();
  sub_217009564();
  v12 = v7;
  v13 = v8;
  swift_getOpaqueTypeConformance2();
  v12 = v11;
  v13 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_21674C0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PosterArtworkView.StaticArtwork(255, *(v4 + 16), *(v4 + 24), a4);
  OUTLINED_FUNCTION_14_47();
  sub_2170089F4();
  OUTLINED_FUNCTION_6_89();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_11_72(OpaqueTypeConformance2, v6, v7, v8, v9, v10, v11, v12, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_9_0();
  (*(v13 + 8))(v4 + ((*(v13 + 80) + 32) & ~*(v13 + 80)));
  return swift_deallocObject();
}

uint64_t sub_21674C1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_48(a1 + *(a3 + 44));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_21674C26C()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_32_4();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 44) + 8) = (v0 + 9);
  }
}

uint64_t sub_21674C310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217006EC4();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_22_1(*(a1 + *(a3 + 52)));
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
    v9 = a1 + *(a3 + 56);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_21674C3DC()
{
  OUTLINED_FUNCTION_14_8();
  sub_217006EC4();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) != v3)
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 52)) = (v0 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  }

  OUTLINED_FUNCTION_32_4();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_21674C4A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  type metadata accessor for PosterArtworkView.StaticArtwork(255, *a1, v4, a4);
  sub_2170089F4();
  OUTLINED_FUNCTION_6_89();
  v7[4] = swift_getWitnessTable();
  v7[5] = MEMORY[0x277CE03D0];
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v7[0] = v5;
  v7[1] = swift_getOpaqueTypeMetadata2();
  v7[2] = v4;
  v7[3] = swift_getOpaqueTypeConformance2();
  type metadata accessor for PosterArtworkView.MotionView(255, v7);
  OUTLINED_FUNCTION_14_47();
  sub_217009564();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_1();
  return swift_getWitnessTable();
}

uint64_t sub_21674C61C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5DC0, &qword_217053458);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return a2;
}

uint64_t sub_21674C680(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5DC0, &qword_217053458);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21674C6E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76F8, &qword_217017590);
  sub_2167C505C();
  swift_getOpaqueTypeConformance2();
  sub_2170063D4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  OUTLINED_FUNCTION_36_33();
  sub_217009564();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_1();
  return swift_getWitnessTable();
}

uint64_t sub_21674C8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21674C98C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21674CA44()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216C03990();
  *v0 = result;
  return result;
}

void sub_21674CA70()
{
  OUTLINED_FUNCTION_0_0();
  sub_216C0385C();
  *v0 = v1;
}

uint64_t sub_21674CA9C()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216C03D14();
  *v0 = result & 1;
  return result;
}

uint64_t sub_21674CAF0()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216C03B7C();
  *v0 = result;
  return result;
}

uint64_t sub_21674CB1C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_21674CB50()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21674CB90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E30, &unk_2170539C8);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_21674CC5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E30, &unk_2170539C8);
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21674CCE4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21674CD2C()
{

  return swift_deallocObject();
}

id sub_21674CD64@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentOffset];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_21674CDAC()
{
  MEMORY[0x21CEA1520](v0 + 16);
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_21674CDE0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58, &unk_2170354D0);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 32);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40, &qword_2170714D0);
    v10 = *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void *sub_21674CEB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58, &unk_2170354D0);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 32);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40, &qword_2170714D0);
      v11 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_21674CF98()
{
  v1 = _s14descr28290C1A9V11ContentViewVMa(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for JSSearchResultsPage.NoResultsContent(0);
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 80);

  swift_unknownObjectRelease();

  v7 = v0 + v2 + *(v1 + 32);
  Context = type metadata accessor for JSSearchResultsPage.QueryContext(0);
  if (!__swift_getEnumTagSinglePayload(v7, 1, Context))
  {

    v9 = *(Context + 36);
    sub_21700D7A4();
    OUTLINED_FUNCTION_34();
    (*(v10 + 8))(v7 + v9);
  }

  v11 = v0 + v2 + *(v1 + 36);
  if (!__swift_getEnumTagSinglePayload(v11, 1, v4))
  {

    v12 = *(v4 + 20);
    sub_21700D194();
    OUTLINED_FUNCTION_34();
    (*(v13 + 8))(v11 + v12);
  }

  v14 = *(v4 + 20);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  (*(v15 + 8))(v0 + ((v2 + v3 + v6) & ~v6) + v14);

  return swift_deallocObject();
}

uint64_t sub_21674D200()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E68, &qword_217053A98);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_21674D260(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E70, &qword_217053AA0);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21674D2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58, &unk_2170354D0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40, &qword_2170714D0);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_22_1(*(a1 + *(a3 + 28)));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_21674D3B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58, &unk_2170354D0);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40, &qword_2170714D0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21674D4C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008FC4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21674D548()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18, &qword_217035400);
  OUTLINED_FUNCTION_2(v2);
  v4 = v0 + ((*(v3 + 80) + 72) & ~*(v3 + 80));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948, &unk_217017C20);
  if (!OUTLINED_FUNCTION_14_9(v5))
  {

    v6 = *(v1 + 36);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v7 + 8))(v4 + v6);
  }

  OUTLINED_FUNCTION_12_64();
  OUTLINED_FUNCTION_22_43();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21674D650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EF8, &unk_217053C50);
    v9 = a1 + *(a3 + 104);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21674D6E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EF8, &unk_217053C50);
    v8 = v5 + *(a4 + 104);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21674D770()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18, &qword_217035400);
  OUTLINED_FUNCTION_2(v2);
  v4 = v0 + ((*(v3 + 80) + 88) & ~*(v3 + 80));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948, &unk_217017C20);
  if (!OUTLINED_FUNCTION_14_9(v5))
  {

    v6 = *(v1 + 36);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v7 + 8))(v4 + v6);
  }

  OUTLINED_FUNCTION_12_64();
  OUTLINED_FUNCTION_22_43();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21674D87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v21 = *(v4 + 16);
  v6 = *(v4 + 16);
  v20 = *(v4 + 40);
  v7 = type metadata accessor for GridItemDescriptor(0, v6, *(v4 + 40), a4);
  OUTLINED_FUNCTION_2(v7);
  v9 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v22 = v21;
  v23 = v5;
  v24 = v20;
  v25 = *(v4 + 56);
  type metadata accessor for PaginatingGridView(0, &v22);
  OUTLINED_FUNCTION_117();
  v13 = (v9 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  OUTLINED_FUNCTION_50();
  (*(v14 + 8))(v4 + v9, v6);
  v15 = v4 + v13;
  sub_2166B8588(*(v4 + v13), *(v4 + v13 + 8));
  sub_216838830(*(v15 + 24), *(v15 + 32), *(v15 + 40), *(v15 + 48), *(v15 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v4 + v13 + 64));

  swift_unknownObjectRelease();
  v16 = *(v5 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA0, &qword_217028CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA38, &qword_217024F30);
    if (!__swift_getEnumTagSinglePayload(v15 + v16, 1, v17))
    {
      OUTLINED_FUNCTION_50();
      (*(v18 + 8))(v15 + v16, v17);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21674DAA0(uint64_t *a1)
{
  v2 = a1[5];
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCCA8, &qword_217028DA0);
  v4 = sub_21700E984();
  v5 = sub_2170089F4();
  OUTLINED_FUNCTION_5_104();
  WitnessTable = swift_getWitnessTable();
  v18 = v2;
  v19 = MEMORY[0x277CE0790];
  OUTLINED_FUNCTION_0_9();
  v13 = v4;
  v14 = v5;
  v15 = WitnessTable;
  v16 = swift_getWitnessTable();
  v17 = *(a1 + 3);
  v7 = type metadata accessor for GridView(255, &v13);
  OUTLINED_FUNCTION_9_79();
  v10 = sub_2166D9530(v8, &qword_27CABCCA8, &qword_217028DA0, v9);
  OUTLINED_FUNCTION_8_87();
  v11 = swift_getWitnessTable();
  v13 = v3;
  v14 = v7;
  v15 = v10;
  v16 = v11;
  sub_217008B74();
  OUTLINED_FUNCTION_0_8();
  return swift_getWitnessTable();
}

uint64_t sub_21674DBC8()
{
  v2 = OUTLINED_FUNCTION_0_199();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_21674DC04()
{
  OUTLINED_FUNCTION_0_199();
  v0 = OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21674DC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217007C24();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21674DCE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_0_199();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_54();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 36)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_21674DD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21674DE1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21674DED0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_5_56();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F30, qword_217053FD8);
  v5 = OUTLINED_FUNCTION_19_1(*(a3 + 40));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_21674DF50()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F30, qword_217053FD8);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 40));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_21674DFCC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_5_56();
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38, &unk_217054010) - 8) + 84) == a2)
  {
    v5 = *(a3 + 52);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v5 = *(a3 + 80);
  }

  v6 = OUTLINED_FUNCTION_19_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_21674E09C()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38, &unk_217054010) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 52);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
      v8 = *(v5 + 80);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_21674E184@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008E14();
  *a1 = result & 1;
  return result;
}

void sub_21674E1B4()
{
  OUTLINED_FUNCTION_50_19();
  OUTLINED_FUNCTION_42_29(v0[2], v0[3], v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_117();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_65_12();
  OUTLINED_FUNCTION_71_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FB8, &qword_2170541B8);
  OUTLINED_FUNCTION_34();
  (*(v14 + 8))(v1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38, &unk_217054010);
  OUTLINED_FUNCTION_64_14(v15);
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_48_21();
  OUTLINED_FUNCTION_3_132();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  if (OUTLINED_FUNCTION_81_9(v16) == 1)
  {
    v17 = sub_2170098A4();
    if (!OUTLINED_FUNCTION_37_37(v17))
    {
      OUTLINED_FUNCTION_50();
      v18 = OUTLINED_FUNCTION_68_14();
      v19(v18);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_78_14();
  swift_deallocObject();
  OUTLINED_FUNCTION_49_25();
}

uint64_t sub_21674E338(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F48, &qword_217054148);
  OUTLINED_FUNCTION_15_58();
  v5 = sub_21680DFBC(v3, v4);
  v323 = v2;
  v6 = a1[1];
  v324 = *a1;
  v325 = v5;
  v326 = v6;
  v7 = type metadata accessor for SearchBootstrapView(255, &v323);
  OUTLINED_FUNCTION_34_30();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_2167B2E14();
  v10 = MEMORY[0x277D837D0];
  v323 = v7;
  *&v324 = MEMORY[0x277D837D0];
  *(&v324 + 1) = WitnessTable;
  v325 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F50, &qword_217054150);
  v323 = v7;
  *&v324 = v10;
  *(&v324 + 1) = WitnessTable;
  v325 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_16_55();
  v16 = sub_21680DFBC(v14, v15);
  v323 = OpaqueTypeMetadata2;
  *&v324 = v12;
  *(&v324 + 1) = OpaqueTypeConformance2;
  v325 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v323 = OpaqueTypeMetadata2;
  *&v324 = v12;
  *(&v324 + 1) = OpaqueTypeConformance2;
  v325 = v16;
  v25 = OUTLINED_FUNCTION_40_24(v17, v18, v19, v20, v21, v22, v23, v24, v197, v215, v233, v251, v269, v287, v305);
  v323 = v7;
  *&v324 = MEMORY[0x277CE1350];
  v26 = MEMORY[0x277CE1350];
  *(&v324 + 1) = v17;
  v325 = OpaqueTypeMetadata2;
  v27 = MEMORY[0x277CE1340];
  *&v326 = WitnessTable;
  *(&v326 + 1) = MEMORY[0x277CE1340];
  v327 = v25;
  v328 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeMetadata2();
  v323 = v7;
  *&v324 = v26;
  *(&v324 + 1) = v17;
  v325 = OpaqueTypeMetadata2;
  *&v326 = WitnessTable;
  *(&v326 + 1) = v27;
  v327 = v25;
  v328 = OpaqueTypeConformance2;
  v36 = OUTLINED_FUNCTION_40_24(v28, v29, v30, v31, v32, v33, v34, v35, v198, v216, v234, v252, v270, v288, v306);
  v323 = v28;
  *&v324 = v36;
  OUTLINED_FUNCTION_27_42();
  swift_getOpaqueTypeMetadata2();
  v37 = OUTLINED_FUNCTION_22_4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v37, v38);
  OUTLINED_FUNCTION_19_0();
  v39 = sub_2170089F4();
  v323 = v28;
  *&v324 = v36;
  OUTLINED_FUNCTION_39_27(v39, v40, v41, v42, v43, v44, v45, v46, v199, v217, v235, v253, v271, v289, v307);
  OUTLINED_FUNCTION_7_5();
  v236 = v47;
  sub_21680DFBC(v48, &qword_27CAC5F58);
  OUTLINED_FUNCTION_0_9();
  v218 = v49;
  v50 = swift_getWitnessTable();
  v323 = v39;
  *&v324 = v50;
  OUTLINED_FUNCTION_23_40();
  v51 = swift_getOpaqueTypeMetadata2();
  v323 = v39;
  *&v324 = v50;
  v59 = OUTLINED_FUNCTION_39_27(v51, v52, v53, v54, v55, v56, v57, v58, v200, v218, v236, v254, v272, v290, v308);
  v323 = v51;
  *&v324 = MEMORY[0x277D839B0];
  v60 = MEMORY[0x277D839B0];
  v61 = MEMORY[0x277D839C8];
  *(&v324 + 1) = v59;
  v325 = MEMORY[0x277D839C8];
  OUTLINED_FUNCTION_22_44();
  v62 = swift_getOpaqueTypeMetadata2();
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8600, &qword_217020AD0);
  v323 = v51;
  *&v324 = v60;
  *(&v324 + 1) = v59;
  v325 = v61;
  v71 = OUTLINED_FUNCTION_39_27(v63, v64, v65, v66, v67, v68, v69, v70, v201, v219, v237, v255, v273, v291, v309);
  v72 = sub_2169D46A0();
  v323 = v62;
  *&v324 = v63;
  *(&v324 + 1) = v71;
  v325 = v72;
  v73 = swift_getOpaqueTypeMetadata2();
  v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F60, &qword_217054160);
  v323 = v62;
  *&v324 = v63;
  *(&v324 + 1) = v71;
  v325 = v72;
  v82 = OUTLINED_FUNCTION_47_26(v74, v75, v76, v77, v78, v79, v80, v81, v202, v220, v238, v256, v274, v292, v310);
  v83 = sub_216C1BF40();
  v323 = v73;
  *&v324 = v74;
  *(&v324 + 1) = v82;
  v325 = v83;
  v91 = OUTLINED_FUNCTION_79_17(v83, v84, v85, v86, v87, v88, v89, v90, v203, v221, v239, v257, v275, v293, v311);
  v323 = v73;
  *&v324 = v74;
  *(&v324 + 1) = v82;
  v325 = v83;
  v99 = OUTLINED_FUNCTION_47_26(v91, v92, v93, v94, v95, v96, v97, v98, v204, v222, v240, v258, v276, v294, v312);
  v323 = v91;
  *&v324 = v99;
  v100 = swift_getOpaqueTypeMetadata2();
  v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AE8, &qword_2170180D8);
  v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F68, &qword_217054168);
  v323 = v91;
  *&v324 = v99;
  v110 = OUTLINED_FUNCTION_40_24(v102, v103, v104, v105, v106, v107, v108, v109, v205, v223, v241, v259, v277, v295, v313);
  v111 = sub_216C1C018();
  v323 = v100;
  *&v324 = v102;
  *(&v324 + 1) = v110;
  v325 = v111;
  v112 = swift_getOpaqueTypeMetadata2();
  v323 = MEMORY[0x277CE1350];
  *&v324 = v27;
  OUTLINED_FUNCTION_27_1();
  v113 = swift_getOpaqueTypeConformance2();
  v323 = v100;
  *&v324 = v102;
  *(&v324 + 1) = v110;
  v325 = v111;
  v121 = OUTLINED_FUNCTION_40_24(v113, v114, v115, v116, v117, v118, v119, v120, v206, v224, v242, v260, v278, v296, v314);
  v323 = v100;
  *&v324 = v101;
  *(&v324 + 1) = v112;
  v325 = v110;
  *&v326 = v113;
  *(&v326 + 1) = v121;
  v122 = swift_getOpaqueTypeMetadata2();
  v323 = v100;
  *&v324 = v101;
  *(&v324 + 1) = v112;
  v325 = v110;
  *&v326 = v113;
  *(&v326 + 1) = v121;
  v130 = OUTLINED_FUNCTION_40_24(v122, v123, v124, v125, v126, v127, v128, v129, v207, v225, v243, v261, v279, v297, v315);
  v323 = v122;
  *&v324 = v130;
  v131 = swift_getOpaqueTypeMetadata2();
  v323 = v122;
  *&v324 = v130;
  v139 = OUTLINED_FUNCTION_39_27(v131, v132, v133, v134, v135, v136, v137, v138, v208, v226, v244, v262, v280, v298, v316);
  v323 = v131;
  *&v324 = v139;
  v140 = swift_getOpaqueTypeMetadata2();
  v323 = v131;
  *&v324 = v139;
  v148 = OUTLINED_FUNCTION_39_27(v140, v141, v142, v143, v144, v145, v146, v147, v209, v227, v245, v263, v281, v299, v317);
  v323 = v140;
  v149 = MEMORY[0x277D839B0];
  *&v324 = MEMORY[0x277D839B0];
  *(&v324 + 1) = v148;
  v325 = v61;
  v157 = OUTLINED_FUNCTION_79_17(v148, v150, v151, v152, v153, v154, v155, v156, v210, v228, v246, v264, v282, v300, v318);
  v323 = v140;
  *&v324 = v149;
  *(&v324 + 1) = v148;
  v325 = v61;
  v165 = OUTLINED_FUNCTION_47_26(v157, v158, v159, v160, v161, v162, v163, v164, v211, v229, v247, v265, v283, v301, v319);
  v323 = v157;
  *&v324 = v165;
  v166 = swift_getOpaqueTypeMetadata2();
  v323 = v157;
  *&v324 = v165;
  v174 = OUTLINED_FUNCTION_47_26(v166, v167, v168, v169, v170, v171, v172, v173, v212, v230, v248, v266, v284, v302, v320);
  v323 = v166;
  *&v324 = v174;
  OUTLINED_FUNCTION_32_27();
  v175 = swift_getOpaqueTypeMetadata2();
  v176 = type metadata accessor for FacetBarState(255);
  v323 = v166;
  *&v324 = v174;
  v184 = OUTLINED_FUNCTION_39_27(v176, v177, v178, v179, v180, v181, v182, v183, v213, v231, v249, v267, v285, v303, v321);
  OUTLINED_FUNCTION_29_38();
  v187 = sub_2166B2EC4(v185, v186);
  v323 = v175;
  *&v324 = v176;
  *(&v324 + 1) = v184;
  v325 = v187;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5FA8, &qword_2170541A8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5FB0, &qword_2170541B0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC88, &unk_2170541D0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC90, &unk_217028930);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  OUTLINED_FUNCTION_19_0();
  v188 = sub_2170089F4();
  v323 = v175;
  *&v324 = v176;
  *(&v324 + 1) = v184;
  v325 = v187;
  OUTLINED_FUNCTION_40_24(v188, v189, v190, v191, v192, v193, v194, v195, v214, v232, v250, v268, v286, v304, v322);
  sub_21680DFBC(&qword_280E2A7D0, &qword_27CAC5FA8);
  swift_getWitnessTable();
  sub_21680DFBC(&qword_280E2A750, &qword_27CAC5FB0);
  swift_getWitnessTable();
  sub_21680DFBC(&qword_280E2A760, &qword_27CABCC88);
  swift_getWitnessTable();
  sub_21680DFBC(&qword_280E2A740, &qword_27CABCC90);
  swift_getWitnessTable();
  sub_21680DFBC(&qword_280E2A758, &qword_27CAB93F0);
  OUTLINED_FUNCTION_109();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170085A4();
  OUTLINED_FUNCTION_21_5();
  return swift_getWitnessTable();
}

uint64_t sub_21674EB5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6068, &qword_217054398);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6060, &qword_217054390);
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6058, &qword_217054388);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6048, &qword_217054378);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6050, &qword_217054380);
  type metadata accessor for UnifiedMessagesRequestState(255);
  sub_216C1D350();
  OUTLINED_FUNCTION_20_48();
  sub_2166B2EC4(v4, v5);
  OUTLINED_FUNCTION_28_35();
  OUTLINED_FUNCTION_57_0(v6, v7, v8, v9, v10, v11, v12, v13, v3);
  OUTLINED_FUNCTION_1_9();
  sub_21680DFBC(v14, &qword_27CAC6048);
  OUTLINED_FUNCTION_31_41();
  OUTLINED_FUNCTION_57_0(v15, v16, v17, v18, v19, v20, v21, v22, v2);
  OUTLINED_FUNCTION_25_40();
  v31 = OUTLINED_FUNCTION_57_0(v23, v24, v25, v26, v27, v28, v29, v30, v1);
  return OUTLINED_FUNCTION_57_0(v31, MEMORY[0x277CE0E30], v32, v33, v34, v35, v36, v37, v0);
}

uint64_t sub_21674ED08(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[15];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a3[17];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21674EE3C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[15];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a4[17];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21674EFBC(uint64_t a1)
{
  result = sub_2166D8934(&qword_280E3CD90, type metadata accessor for VerticalVideoLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21674F024()
{
  OUTLINED_FUNCTION_13_64();
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == v1)
  {

    return __swift_getEnumTagSinglePayload(v0, v1, v2);
  }

  else
  {
    OUTLINED_FUNCTION_7_86();
    return (v5 + 1);
  }
}

void sub_21674F0AC()
{
  OUTLINED_FUNCTION_8_89();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_21674F130()
{
  OUTLINED_FUNCTION_13_64();
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == v1)
  {

    return __swift_getEnumTagSinglePayload(v0, v1, v2);
  }

  else
  {
    OUTLINED_FUNCTION_7_86();
    v6 = v5 - 1;
    if (v6 < 0)
    {
      v6 = -1;
    }

    return (v6 + 1);
  }
}

void sub_21674F1C4()
{
  OUTLINED_FUNCTION_8_89();
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

uint64_t sub_21674F278()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21674F310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      v10 = *(a3 + 48);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_21674F3F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      v10 = *(a4 + 48);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_21674F4D4(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == a2)
    {
      v8 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
      OUTLINED_FUNCTION_17();
      if (*(v9 + 84) == a2)
      {
        v8 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18, &qword_217035400);
        OUTLINED_FUNCTION_17();
        if (*(v10 + 84) == a2)
        {
          v8 = a3[12];
        }

        else
        {
          type metadata accessor for SectionContent(0);
          v8 = a3[13];
        }
      }
    }

    v11 = OUTLINED_FUNCTION_19_1(v8);

    return __swift_getEnumTagSinglePayload(v11, v12, v13);
  }
}

uint64_t sub_21674F63C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == a3)
    {
      v8 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
      OUTLINED_FUNCTION_17();
      if (*(v9 + 84) == a3)
      {
        v8 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18, &qword_217035400);
        OUTLINED_FUNCTION_17();
        if (*(v10 + 84) == a3)
        {
          v8 = a4[12];
        }

        else
        {
          type metadata accessor for SectionContent(0);
          v8 = a4[13];
        }
      }
    }

    v11 = OUTLINED_FUNCTION_19_1(v8);

    return __swift_storeEnumTagSinglePayload(v11, v12, a2, v13);
  }

  return result;
}

uint64_t sub_21674F82C(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v3 = *a1;
    if (v3 >= 4)
    {
      return v3 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB8, &unk_21702C540);
    v6 = OUTLINED_FUNCTION_19_1(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

_BYTE *sub_21674F8B4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB8, &unk_21702C540);
    v6 = OUTLINED_FUNCTION_19_1(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21674FB48()
{

  return swift_deallocObject();
}

uint64_t sub_21674FC80()
{

  swift_unknownObjectRelease();

  if (v0[12])
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
    if (v0[21])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21674FD30()
{
  OUTLINED_FUNCTION_49();
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_6_5();
  type metadata accessor for ReplayLoadablePageView(v3, v4, v2, v5);
  OUTLINED_FUNCTION_4_4();
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_50();
  v8 = OUTLINED_FUNCTION_82();
  v9(v8);
  v10 = (v1 + v7 + *(v0 + 36));

  v15 = OUTLINED_FUNCTION_48_22(v11, v12, v13, v14);
  v16 = OUTLINED_FUNCTION_50_20(v15);
  if (v16 == 1)
  {
    OUTLINED_FUNCTION_47_2();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_9_0();
    (*(v17 + 8))(v10);
  }

  else if (!v16)
  {
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_21674FE98(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0) - 8) + 84) == a2)
  {
    v5 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EF8, &unk_217053C50);
    v5 = *(a3 + 36);
  }

  v6 = OUTLINED_FUNCTION_19_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_21674FF6C()
{
  OUTLINED_FUNCTION_92();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v3;
    if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0) - 8) + 84) == v2)
    {
      v5 = *(v4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EF8, &unk_217053C50);
      v5 = *(v4 + 36);
    }

    v6 = OUTLINED_FUNCTION_19_1(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v0, v8);
  }
}

uint64_t sub_216750044()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC66F8, &qword_2170559E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6700, &qword_2170559E8);
  sub_216C36304();
  sub_2166D9530(&qword_27CAC6730, &qword_27CAC6700, &qword_2170559E8, &unk_217055BF0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216750108(void *a1)
{
  swift_getAssociatedTypeWitness();
  sub_217009564();
  sub_21700AD94();
  sub_2170089F4();
  OUTLINED_FUNCTION_38();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_6_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_74();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_9();
  return swift_getWitnessTable();
}

uint64_t sub_216750214()
{
  type metadata accessor for ReplayPageView(0);
  OUTLINED_FUNCTION_4_4();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  v5 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2170098A4();
    if (!OUTLINED_FUNCTION_12_37(v6))
    {
      OUTLINED_FUNCTION_50();
      (*(v7 + 8))(v4 + v5, v2);
    }
  }

  else
  {
  }

  v8 = (v4 + v0[6]);
  if (v8[1])
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v8 + 2);
    if (v8[10])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v8 + 7);
    }
  }

  OUTLINED_FUNCTION_25_41(v0[8]);
  v9 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA0, &qword_217028CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA38, &qword_217024F30);
    if (!OUTLINED_FUNCTION_12_37(v10))
    {
      OUTLINED_FUNCTION_50();
      (*(v11 + 8))(v4 + v9, v8);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_41(v0[10]);
  OUTLINED_FUNCTION_25_41(v0[11]);
  OUTLINED_FUNCTION_25_41(v0[12]);

  return swift_deallocObject();
}

uint64_t sub_21675045C()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216C30A10();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2167504B0()
{
  OUTLINED_FUNCTION_92();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC68F0, &qword_217055DF8);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_216750500()
{
  OUTLINED_FUNCTION_92();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC68F0, &qword_217055DF8);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_216750554(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  v5 = OUTLINED_FUNCTION_19_1(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_2167505D8()
{
  OUTLINED_FUNCTION_92();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_216750660()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2167506A4()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216C318E0();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2167507A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6980, &qword_217055F10);
  type metadata accessor for ReplayPageGeometry(255);
  sub_216C37D44();
  OUTLINED_FUNCTION_0_201();
  sub_216C36C54(v0, v1, &unk_2170558EC);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216750890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for ContentDescriptor(0);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_216750968(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for ContentDescriptor(0);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_216750A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6A68, &unk_2170561C0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216750A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6A68, &unk_2170561C0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216750AE8()
{

  return swift_deallocObject();
}

uint64_t sub_216750B28()
{
  sub_21700CCA4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216750BB0()
{
  sub_21700CCA4();
  OUTLINED_FUNCTION_9_0();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_216750C70()
{

  return swift_deallocObject();
}

uint64_t sub_216750CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216750D2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216750D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216750E40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216750EF8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21700D9D4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216750F80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D9D4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167510B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppSheetDestinationViewControllerRepresentable(255, *a1, a1[1], a4);
  swift_getAssociatedTypeWitness();
  sub_217009564();
  OUTLINED_FUNCTION_0_206();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_6_1();
  return swift_getWitnessTable();
}

uint64_t sub_216751178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700C084();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216751224(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700C084();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2167512F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MappedReplayPage(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2167513A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MappedReplayPage(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216751448()
{
  v1 = *(type metadata accessor for ReplayPageBodyView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(type metadata accessor for MappedReplayPage(0) + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_216751568()
{

  return swift_deallocObject();
}

uint64_t sub_216751670()
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = OUTLINED_FUNCTION_6_5();
  type metadata accessor for LoadablePageView(v4, v5, v3, v6);
  OUTLINED_FUNCTION_4_4();
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_50();
  (*(v9 + 8))(v1 + v8, v2);
  v10 = (v1 + v8 + *(v0 + 36));
  v11 = OUTLINED_FUNCTION_6_5();
  type metadata accessor for LoadablePageView.LoadingState(v11, v12, v3, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_24_33();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_50();
    (*(v15 + 8))(v10);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  sub_21700AEE4();

  return swift_deallocObject();
}

uint64_t sub_216751808(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6C60, &qword_217057228);
  swift_getAssociatedTypeWitness();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9150, &qword_21701C740);
  sub_217009564();
  sub_216C4BF20();
  OUTLINED_FUNCTION_19_45();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_43_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_2();
  sub_2166D9530(v1, &qword_27CAB9150, &qword_21701C740, v2);
  return swift_getWitnessTable();
}

__n128 sub_216751A8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_216751C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216751CDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216751DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216751E24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216751E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216751F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216751FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 60);
    }

    else
    {
      v9 = sub_217007CA4();
      v10 = *(a3 + 64);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2167520CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 60);
    }

    else
    {
      v9 = sub_217007CA4();
      v10 = *(a4 + 64);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2167521A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_24_35(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43_0();
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v19 = *(v8 + 64);
  v9 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v12 = *(v10 + 80);
  v13 = v4 + v7;

  if (*(v4 + v7 + 136))
  {
    if (*(v13 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v13 + 96));
    }
  }

  else
  {
  }

  v14 = *(v5 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v15 + 8))(v13 + v14);
  }

  else
  {
  }

  v16 = *(v5 + 64);
  sub_217007CA4();
  OUTLINED_FUNCTION_9_0();
  (*(v17 + 8))(v13 + v16);

  (*(v11 + 8))(v4 + ((((v19 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 18) & ~v12), v9);

  return swift_deallocObject();
}

uint64_t sub_2167523CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_24_35(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43_0();
  v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  if (*(v7 + 136))
  {
    if (*(v7 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v7 + 96));
    }
  }

  else
  {
  }

  v8 = *(v5 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v9 + 8))(v7 + v8);
  }

  else
  {
  }

  v10 = *(v5 + 64);
  sub_217007CA4();
  OUTLINED_FUNCTION_9_0();
  (*(v11 + 8))(v7 + v10);

  return swift_deallocObject();
}

uint64_t sub_216752554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_24_35(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43_0();
  v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  if (*(v7 + 136))
  {
    if (*(v7 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v7 + 96));
    }
  }

  else
  {
  }

  v8 = *(v5 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v9 + 8))(v7 + v8);
  }

  else
  {
  }

  v10 = *(v5 + 64);
  sub_217007CA4();
  OUTLINED_FUNCTION_9_0();
  (*(v11 + 8))(v7 + v10);

  return swift_deallocObject();
}

uint64_t sub_2167526F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_24_35(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43_0();
  v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  if (*(v7 + 136))
  {
    if (*(v7 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v7 + 96));
    }
  }

  else
  {
  }

  v8 = *(v5 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v9 + 8))(v7 + v8);
  }

  else
  {
  }

  v10 = *(v5 + 64);
  sub_217007CA4();
  OUTLINED_FUNCTION_9_0();
  (*(v11 + 8))(v7 + v10);

  return swift_deallocObject();
}

uint64_t sub_216752890()
{
  OUTLINED_FUNCTION_191();
  type metadata accessor for ActionButton(v0, v1, v2, v3);
  OUTLINED_FUNCTION_191();
  sub_21700AF54();
  sub_217009564();
  sub_21700F164();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_210();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_76();
  return swift_getWitnessTable();
}

uint64_t sub_216752948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700B7F4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2167529F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700B7F4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216752AA4(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    v2 = *(a1 + 16);
    if (v2 > 1)
    {
      return (v2 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD9D8, &qword_21702B480);
    v4 = OUTLINED_FUNCTION_3_17();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

uint64_t sub_216752B28(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD9D8, &qword_21702B480);
    v4 = OUTLINED_FUNCTION_3_17();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_216752BBC()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72F8, &qword_217058040);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_216752CF0()
{

  return swift_deallocObject();
}

uint64_t sub_216752D40()
{
  type metadata accessor for CancelButton(0);
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0, &unk_217033950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008424();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216752E48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC74D0, aP_0);
  sub_216C61E30();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216753728()
{

  return swift_deallocObject();
}

uint64_t sub_216753760()
{

  return swift_deallocObject();
}

uint64_t sub_216753798()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7568, &qword_217058898);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_2167537F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7568, &qword_217058898);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216753858()
{
  v2 = type metadata accessor for MenuAction(0);
  v3 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  v4 = v0 + v3;
  type metadata accessor for MenuActionType(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      type metadata accessor for ShareableMusicItem(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          sub_21700C1E4();
          goto LABEL_8;
        case 1u:
          sub_21700C384();
          goto LABEL_8;
        case 2u:
          sub_2170072A4();
          goto LABEL_8;
        case 3u:
          sub_21700C554();
          goto LABEL_8;
        case 4u:
          sub_217006F54();
          goto LABEL_8;
        case 5u:
          v11 = sub_21700C4B4();
          if (!OUTLINED_FUNCTION_9_1(v11))
          {
            OUTLINED_FUNCTION_4_23();
            (*(v12 + 8))(v0 + v3, v1);
          }

          v13 = type metadata accessor for SocialProfileDescriptor(0);
          OUTLINED_FUNCTION_7_7(v13[5]);

          OUTLINED_FUNCTION_7_7(v13[6]);

          OUTLINED_FUNCTION_7_7(v13[7]);

          v14 = v13[8];
          sub_217005EF4();
          OUTLINED_FUNCTION_34();
          (*(v15 + 8))(v4 + v14);
          v16 = type metadata accessor for MusicFriendsInviteDescriptor(0);
          OUTLINED_FUNCTION_7_7(*(v16 + 20));

          OUTLINED_FUNCTION_7_7(*(v16 + 24));
          goto LABEL_4;
        case 6u:
          sub_21700C254();
          goto LABEL_8;
        case 7u:
          sub_217006B84();
          goto LABEL_8;
        case 8u:
          sub_21700BA44();
          goto LABEL_8;
        case 9u:
          goto LABEL_7;
        case 0xAu:
          sub_21700C994();
          goto LABEL_8;
        case 0xBu:
          sub_21700BEA4();
          goto LABEL_8;
        case 0xCu:
          v7 = sub_21700C4B4();
          if (!OUTLINED_FUNCTION_9_1(v7))
          {
            OUTLINED_FUNCTION_4_23();
            (*(v8 + 8))(v0 + v3, v1);
          }

          v9 = type metadata accessor for ShareURLDescriptor(0);
          OUTLINED_FUNCTION_7_7(*(v9 + 24));

          v10 = *(v9 + 28);
          goto LABEL_34;
        case 0xDu:
          v17 = sub_21700C4B4();
          if (!OUTLINED_FUNCTION_9_1(v17))
          {
            OUTLINED_FUNCTION_4_23();
            (*(v18 + 8))(v0 + v3, v1);
          }

          v19 = type metadata accessor for SocialProfileDescriptor(0);
          OUTLINED_FUNCTION_7_7(v19[5]);

          OUTLINED_FUNCTION_7_7(v19[6]);

          OUTLINED_FUNCTION_7_7(v19[7]);

          v10 = v19[8];
LABEL_34:
          sub_217005EF4();
          OUTLINED_FUNCTION_34();
          (*(v20 + 8))(v4 + v10);
          break;
        case 0xEu:
          sub_21700C084();
          goto LABEL_8;
        case 0xFu:
          sub_21700C644();
          goto LABEL_8;
        case 0x10u:
          sub_21700C2F4();
          goto LABEL_8;
        case 0x11u:
          sub_2170073D4();
          goto LABEL_8;
        case 0x12u:
          sub_217007324();
          goto LABEL_8;
        case 0x13u:
          sub_217007264();
          goto LABEL_8;
        case 0x14u:
          sub_217007064();
          goto LABEL_8;
        case 0x15u:
          sub_2170070F4();
          goto LABEL_8;
        default:
          goto LABEL_9;
      }

      break;
    case 2u:
    case 3u:
      sub_217006AC4();
      goto LABEL_8;
    case 4u:
LABEL_7:
      sub_21700C924();
      goto LABEL_8;
    case 5u:

      break;
    case 6u:
      sub_217006C84();
LABEL_8:
      OUTLINED_FUNCTION_34();
      (*(v5 + 8))(v0 + v3);
      break;
    case 7u:
LABEL_4:

      break;
    default:
      break;
  }

LABEL_9:
  OUTLINED_FUNCTION_7_7(*(v2 + 20));

  return swift_deallocObject();
}

uint64_t sub_2167548F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_102();
  v7 = type metadata accessor for SocialProfileToolbarContent(v6);
  if (*(*(v7 - 8) + 84) == v3)
  {
    v8 = v7;
    v9 = v4;
  }

  else
  {
    v8 = type metadata accessor for ToolbarProperties(0);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_21675498C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_102();
  v9 = type metadata accessor for SocialProfileToolbarContent(v8);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = v5;
  }

  else
  {
    v10 = type metadata accessor for ToolbarProperties(0);
    v11 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_216754A28()
{
  v2 = OUTLINED_FUNCTION_102();
  v3 = type metadata accessor for SocialProfileDescriptor(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_216754A68()
{
  v2 = OUTLINED_FUNCTION_102();
  v3 = type metadata accessor for SocialProfileDescriptor(v2);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v3);
}

uint64_t sub_216754AAC()
{
  v1 = *(type metadata accessor for SocialProfileToolbarContent(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_21700C4B4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v3))
  {
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  v4 = type metadata accessor for SocialProfileDescriptor(0);

  v5 = *(v4 + 32);
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  (*(v6 + 8))(v0 + v2 + v5);

  return swift_deallocObject();
}

uint64_t sub_216754C10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC75B8, &qword_217058A30);
  OUTLINED_FUNCTION_3_14();
  sub_2166D9530(v0, &qword_27CAC75B8, &qword_217058A30, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216754D38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216C6D16C();
  *a1 = result;
  return result;
}

uint64_t sub_216754E9C()
{
  if (*(v0 + 40) >= 4uLL)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  sub_216A906B4(*(v0 + 96), *(v0 + 104), *(v0 + 112));
  OUTLINED_FUNCTION_6_99();

  return swift_deallocObject();
}

uint64_t sub_216754F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GoToArtistContext(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216754FD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for GoToArtistContext(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700D284();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216755074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_216755130(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2167551D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_216755304(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InnerStrokeViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_2170097A4();
  sub_217009744();
  swift_getWitnessTable();
  sub_217008BC4();
  sub_2170089F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_216755458()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_216755494@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C7AD44();
  *a1 = result & 1;
  return result;
}

__n128 sub_2167554F8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_216755504()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21675553C()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_216755570()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2167555B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700C4B4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_21700C444();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_21675564C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v10 = -1;
    }

    else
    {
      v10 = v9;
    }

    v11 = v10 - 8;
    if (v9 >= 9)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21675571C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 + 9);
  }

  return result;
}

uint64_t sub_2167557D4()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216755898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(0);
    if (*(*(FriendsPageSectionLockup - 8) + 84) == a2)
    {
      v9 = FriendsPageSectionLockup;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_216755970(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(0);
    if (*(*(FriendsPageSectionLockup - 8) + 84) == a3)
    {
      v9 = FriendsPageSectionLockup;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_216755A70()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7928, &qword_21705A8A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7920, &qword_21705A8A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7918, &qword_21705A898);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7910, &qword_21705A890);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC79E8, &qword_21705A908);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7908, &qword_21705A888);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7930, &qword_21705A8B0);
  sub_216C82DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7990, &qword_21705A8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7998, &qword_21705A8E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC79A0, &qword_21705A8F0);
  sub_216C830C0();
  swift_getOpaqueTypeConformance2();
  sub_216C833E4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC79F0, &qword_21705A910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC79F8, &qword_21705A918);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7A00, &qword_21705A920);
  sub_216C834A4();
  swift_getOpaqueTypeConformance2();
  sub_216C836A0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_2_151();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_141();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216755D80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7BA8, &unk_21705AC08);
  sub_216C85418();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216755DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216755E8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216755F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320, &unk_217019D00);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216755FD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320, &unk_217019D00);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216756094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LinkComponentModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 3)
    {
      return v8 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21675613C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LinkComponentModel(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_2167561E4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB9F8, &unk_217054400);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  v1 = OUTLINED_FUNCTION_108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v1, v2);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA00, &qword_217024DD0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217009564();
  sub_216941D00(&qword_280E2A7F0, &qword_27CABB9F8, &unk_217054400);
  swift_getWitnessTable();
  sub_216941D00(&qword_280E2A7A0, &qword_27CAC6E20, &qword_21705FBA0);
  swift_getWitnessTable();
  sub_216941D00(&qword_280E2A7D8, &qword_27CABBA00, &qword_217024DD0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_1();
  return swift_getWitnessTable();
}

uint64_t sub_21675639C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + 24));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
  v8 = a1 + *(a3 + 60);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216756424(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v8 = v5 + *(a4 + 60);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167564B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C88C5C();
  *a1 = result & 1;
  return result;
}

__n128 sub_216756528(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21675656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MappedSearchResultsPage(0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + *(a3 + 24)));
  }

  v7 = v6;
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216756610(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  result = type metadata accessor for MappedSearchResultsPage(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  else
  {
    *(v4 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2167566BC()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for SearchResultsPageView.ContentView(0);
  OUTLINED_FUNCTION_4_4();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);

  OUTLINED_FUNCTION_22_52();
  v7 = v0 + v5 + v6;

  type metadata accessor for MappedSearchResultsPage(0);
  v8 = OUTLINED_FUNCTION_18_56();
  if (!OUTLINED_FUNCTION_15_10(v8))
  {

    v9 = *(v3 + 36);
    sub_21700D7A4();
    OUTLINED_FUNCTION_9_0();
    (*(v10 + 8))(v2 + v9);
  }

  v11 = *(v1 + 32);
  sub_21700D194();
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(v7 + v11);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_68();

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_21675683C()
{

  return swift_deallocObject();
}

uint64_t sub_216756874()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for SearchResultsPageView.ContentView(0);
  OUTLINED_FUNCTION_4_4();
  v5 = v0 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  OUTLINED_FUNCTION_22_52();
  v7 = v5 + v6;

  type metadata accessor for MappedSearchResultsPage(0);
  v8 = OUTLINED_FUNCTION_18_56();
  if (!OUTLINED_FUNCTION_15_10(v8))
  {

    v9 = *(v3 + 36);
    sub_21700D7A4();
    OUTLINED_FUNCTION_9_0();
    (*(v10 + 8))(v2 + v9);
  }

  v11 = *(v1 + 32);
  sub_21700D194();
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(v7 + v11);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_68();

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167569EC()
{
  type metadata accessor for SearchResultsPageView.ContentView(0);
  OUTLINED_FUNCTION_4_4();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v17 = *(v3 + 64);
  v18 = sub_217008A64();
  OUTLINED_FUNCTION_16();
  v5 = v4;
  v6 = *(v4 + 80);
  v19 = v0;
  OUTLINED_FUNCTION_22_52();
  v8 = v0 + v2 + v7;

  v9 = type metadata accessor for MappedSearchResultsPage(0);
  v10 = v8 + *(v9 + 24);
  Context = type metadata accessor for JSSearchResultsPage.QueryContext(0);
  if (!__swift_getEnumTagSinglePayload(v10, 1, Context))
  {

    v12 = *(Context + 36);
    sub_21700D7A4();
    OUTLINED_FUNCTION_9_0();
    (*(v13 + 8))(v10 + v12);
  }

  v14 = *(v9 + 32);
  sub_21700D194();
  OUTLINED_FUNCTION_9_0();
  (*(v15 + 8))(v8 + v14);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_68();

  (*(v5 + 8))(v19 + ((v2 + v17 + v6) & ~v6), v18);

  return swift_deallocObject();
}

uint64_t sub_216756C38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216756CB4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5 = type metadata accessor for MappedSection.Content(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_216756CF8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5 = type metadata accessor for MappedSection.Content(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_216756DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700C1E4();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AE8, qword_217014050);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_216756EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21700C1E4();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AE8, qword_217014050);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216756FD8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216757010()
{

  return swift_deallocObject();
}

uint64_t sub_216757088@<X0>(uint64_t *a1@<X8>)
{
  result = SearchScope.id.getter();
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_2167570DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216C99318();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21675711C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8098, &unk_21705C3A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8090, &qword_21705C3A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC80A0, &qword_21705C3B8);
  type metadata accessor for ObjectGraph(255);
  sub_216C9E94C();
  OUTLINED_FUNCTION_1_187();
  OUTLINED_FUNCTION_7_99(v0, v1, v2);
  OUTLINED_FUNCTION_2_155();
  OUTLINED_FUNCTION_7_99(v3, v4, v5);
  OUTLINED_FUNCTION_1_119();
  v11 = OUTLINED_FUNCTION_7_99(v6, v7, v8);
  return OUTLINED_FUNCTION_7_99(v11, MEMORY[0x277D7EDF0], v9);
}

uint64_t sub_2167571EC()
{
  v1 = _s6ActionVMa(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 32));
  }

  v3 = *(v1 + 20);
  v4 = sub_217007F04();
  if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21675732C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[23];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a3[29];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216757460(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[23];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a4[29];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167575CC(uint64_t a1)
{
  result = sub_2166D3D30(&qword_280E44FA0, type metadata accessor for TrackLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21675764C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_21700C084();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v12 = a3[8];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[6]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_216757770(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_21700C084();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167578B8()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216757920(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_110();
  type metadata accessor for SocialProfileDetailHeaderLockup(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    OUTLINED_FUNCTION_17();
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[13];
    }

    else
    {
      v9 = sub_217007CA4();
      v16 = a3[24];
    }

    v10 = v3 + v16;
    goto LABEL_13;
  }

  v11 = *(v3 + a3[9] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

void sub_216757A44(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_110();
  type metadata accessor for SocialProfileDetailHeaderLockup(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + a4[9] + 8) = a2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[13];
    }

    else
    {
      v11 = sub_217007CA4();
      v15 = a4[24];
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_216757B58()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8178, &qword_21705C9F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABAA40, &unk_217014260);
  sub_216CA8390();
  sub_216CA86F8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216757BE8()
{

  return swift_deallocObject();
}

uint64_t sub_216757C74()
{

  return swift_deallocObject();
}

uint64_t sub_216757CAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8460, &qword_21705D1F0);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_216757D98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216757DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216757E9C()
{

  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

uint64_t sub_216757EE0()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_216757F14()
{

  OUTLINED_FUNCTION_53();

  return swift_deallocObject();
}

uint64_t sub_216757F60()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_216757F94()
{
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216757FC8()
{

  OUTLINED_FUNCTION_53();

  return swift_deallocObject();
}

uint64_t sub_21675800C()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_216758050()
{

  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216758084()
{

  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

uint64_t sub_2167580D0()
{

  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

uint64_t sub_21675811C()
{

  OUTLINED_FUNCTION_5_46();

  return swift_deallocObject();
}

uint64_t sub_216758160()
{

  OUTLINED_FUNCTION_5_46();

  return swift_deallocObject();
}

uint64_t sub_2167581AC()
{

  OUTLINED_FUNCTION_53();

  return swift_deallocObject();
}

uint64_t sub_21675824C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_217005EF4();
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_216758320(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_217005EF4();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2167583F0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == a2)
    {
      v8 = *(a3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
      v8 = *(a3 + 28);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_2167584C4()
{
  OUTLINED_FUNCTION_92();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v6 + 84) == v5)
    {
      v7 = *(v4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
      v7 = *(v4 + 28);
    }

    v8 = OUTLINED_FUNCTION_19_1(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v0, v10);
  }
}

uint64_t sub_2167585B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  sub_2170067A4();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = type metadata accessor for MenuConfiguration(0);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_21675864C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  sub_2170067A4();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    v10 = type metadata accessor for MenuConfiguration(0);
    v11 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_216758710(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_11_1();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v7 = OUTLINED_FUNCTION_19_1(*(a3 + 44));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_2167587A4()
{
  OUTLINED_FUNCTION_92();
  if (v3 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 44));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_216758828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  if (v3 != 2147483637)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v9 = v4 + *(a3 + 32);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_11_1();
  v11 = v10 - 1;
  if (v11 < 0)
  {
    v12 = -1;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 - 8;
  if (v11 >= 9)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

void sub_21675891C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 2147483637)
    {
      *(v5 + *(a4 + 20) + 8) = (v4 + 9);
      return;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v11 = v5 + *(a4 + 32);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_216758A04(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4DE8, &qword_21704F8D0);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return a2;
}

uint64_t sub_216758A78()
{
  v1 = (type metadata accessor for HorizontalLockupView.ContextMenuButton(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2170067A4();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v2);
  v4 = v2 + v1[7];
  v5 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v4, 1, v5))
  {

    v6 = *(v5 + 24);
    v7 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v7))
    {
      OUTLINED_FUNCTION_50();
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  v9 = type metadata accessor for MenuConfiguration(0);
  v10 = v4 + *(v9 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v11 + 8))(v10);
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v13 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      OUTLINED_FUNCTION_50();
      (*(v14 + 8))(v10 + v12, v13);
    }
  }

  v15 = (v4 + *(v9 + 32));
  if (v15[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  return swift_deallocObject();
}

uint64_t sub_216758D14()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216758D5C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v6 = OUTLINED_FUNCTION_19_1(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_216758DE4()
{
  OUTLINED_FUNCTION_92();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_216758F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217005EF4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216758FE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217005EF4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2167590B4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216759148(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2167591D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8978, &qword_21705E5C0);
  sub_216CC4120();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216759250()
{
  v1 = _s7MusicUI9TrackListVMa_0(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  sub_216684F5C(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

uint64_t sub_216759B64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216DEA528();
  *a1 = result & 1;
  return result;
}

__n128 sub_216759C0C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_216759C50(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_216759C88()
{
  OUTLINED_FUNCTION_29_26();
  type metadata accessor for Page(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  v5 = v1 + v4;
  sub_21700D194();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v1 + v4);
  v7 = OUTLINED_FUNCTION_1229();
  v8 = type metadata accessor for Page.Header(v7);
  v9 = OUTLINED_FUNCTION_16_1();
  if (!__swift_getEnumTagSinglePayload(v9, v10, v8))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v11 = *(v8 + 20);
    v12 = sub_21700D7A4();
    if (!OUTLINED_FUNCTION_17_13(&v2[v11]))
    {
      OUTLINED_FUNCTION_50();
      (*(v13 + 8))(&v2[v11], v12);
    }

    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_89();

    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_89();
  }

  v14 = OUTLINED_FUNCTION_1229();
  v15 = type metadata accessor for Page.Footer(v14);
  v16 = OUTLINED_FUNCTION_16_1();
  if (!__swift_getEnumTagSinglePayload(v16, v17, v15))
  {

    v18 = &v2[*(v15 + 20)];
    v19 = sub_21700D7A4();
    OUTLINED_FUNCTION_832();
    if (!__swift_getEnumTagSinglePayload(v20, v21, v22))
    {
      OUTLINED_FUNCTION_50();
      v23 = OUTLINED_FUNCTION_97();
      v24(v23);
    }

    v25 = type metadata accessor for LinkComponentModel(0);
    __swift_destroy_boxed_opaque_existential_1Tm(&v18[*(v25 + 20)]);
    v26 = &v18[*(v25 + 24)];
    if (*(v26 + 3))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    v27 = &v2[*(v15 + 24)];
    v28 = OUTLINED_FUNCTION_16_1();
    if (!__swift_getEnumTagSinglePayload(v28, v29, v25))
    {
      v30 = OUTLINED_FUNCTION_16_1();
      if (!__swift_getEnumTagSinglePayload(v30, v31, v19))
      {
        OUTLINED_FUNCTION_50();
        v32 = OUTLINED_FUNCTION_22_4();
        v33(v32);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v27[*(v25 + 20)]);
      v34 = &v27[*(v25 + 24)];
      if (*(v34 + 3))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
      }

      OUTLINED_FUNCTION_89();
    }
  }

  OUTLINED_FUNCTION_1133(v0[8]);
  if (!v35)
  {
  }

  v36 = v5 + v0[9];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCF8, &qword_2170352D0);
  v38 = OUTLINED_FUNCTION_16_1();
  if (!__swift_getEnumTagSinglePayload(v38, v39, v37))
  {

    v40 = *(v37 + 36);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v41 + 8))(v36 + v40);
  }

  v42 = (v5 + v0[15]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_28_5();

  return swift_deallocObject();
}

uint64_t sub_21675A034()
{
  type metadata accessor for JSSearchPage(0);
  OUTLINED_FUNCTION_4_4();
  v3 = *(v2 + 80);

  sub_21700D194();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v1 + ((v3 + 24) & ~v3));

  OUTLINED_FUNCTION_1133(*(v0 + 24));
  if (!v5)
  {
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_21675A150()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for ReplayModel(0);
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = v1 + v3 + *(v0 + 28);

  v5 = v4 + *(type metadata accessor for ReplayYearModel(0) + 20);
  sub_21700D194();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v5);
  v7 = type metadata accessor for JSReplayPage(0);

  v8 = (v5 + *(v7 + 24));
  v9 = type metadata accessor for Page.Header(0);
  v10 = OUTLINED_FUNCTION_16_1();
  if (!__swift_getEnumTagSinglePayload(v10, v11, v9))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    v12 = *(v9 + 20);
    v13 = sub_21700D7A4();
    if (!OUTLINED_FUNCTION_17_13(&v8[v12]))
    {
      OUTLINED_FUNCTION_50();
      (*(v14 + 8))(&v8[v12], v13);
    }

    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_89();

    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_89();
  }

  if (*(v5 + *(v7 + 28)) != 1)
  {
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_21675A360()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for JSReplayPage(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  sub_21700D194();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v1 + v4);

  v6 = OUTLINED_FUNCTION_1229();
  v7 = type metadata accessor for Page.Header(v6);
  v8 = OUTLINED_FUNCTION_16_1();
  if (!__swift_getEnumTagSinglePayload(v8, v9, v7))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v10 = *(v7 + 20);
    v11 = sub_21700D7A4();
    if (!OUTLINED_FUNCTION_17_13(&v2[v10]))
    {
      OUTLINED_FUNCTION_50();
      (*(v12 + 8))(&v2[v10], v11);
    }

    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_89();

    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_89();
  }

  OUTLINED_FUNCTION_1133(*(v0 + 28));
  if (!v13)
  {
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_21675A53C()
{
  OUTLINED_FUNCTION_75_6();
  type metadata accessor for JSSearchResultsPage(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  v5 = v1 + v4;

  if (*(v1 + v4 + 8) != 1)
  {
  }

  v6 = v5 + *(v0 + 28);
  v7 = type metadata accessor for JSSearchResultsPage.NoResultsContent(0);
  if (!OUTLINED_FUNCTION_9_1(v7))
  {

    v2 = *(v2 + 20);
    sub_21700D194();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v6 + v2);
  }

  v9 = v5 + *(v0 + 32);
  Context = type metadata accessor for JSSearchResultsPage.QueryContext(0);
  if (!OUTLINED_FUNCTION_9_1(Context))
  {

    v11 = *(v2 + 36);
    sub_21700D7A4();
    OUTLINED_FUNCTION_9_0();
    (*(v12 + 8))(v9 + v11);
  }

  OUTLINED_FUNCTION_65_2();

  return swift_deallocObject();
}

uint64_t sub_21675A6C0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

uint64_t sub_21675A764()
{
  OUTLINED_FUNCTION_29_26();
  type metadata accessor for ReplaceReplayYearUpdate(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = v0 + v3 + *(type metadata accessor for ReplayYearModel(0) + 20);
  sub_21700D194();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v4);
  v6 = type metadata accessor for JSReplayPage(0);

  v7 = (v4 + *(v6 + 24));
  type metadata accessor for Page.Header(0);
  v8 = OUTLINED_FUNCTION_769();
  if (!OUTLINED_FUNCTION_17_13(v8))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    v9 = *(v1 + 20);
    v10 = sub_21700D7A4();
    if (!__swift_getEnumTagSinglePayload(&v7[v9], 1, v10))
    {
      OUTLINED_FUNCTION_50();
      (*(v11 + 8))(&v7[v9], v10);
    }

    OUTLINED_FUNCTION_8_13();
    OUTLINED_FUNCTION_8_13();

    OUTLINED_FUNCTION_8_13();
    OUTLINED_FUNCTION_8_13();
  }

  OUTLINED_FUNCTION_1133(*(v6 + 28));
  if (!v12)
  {
  }

  OUTLINED_FUNCTION_4_2();

  OUTLINED_FUNCTION_28_5();

  return swift_deallocObject();
}

uint64_t sub_21675A93C()
{
  OUTLINED_FUNCTION_29_26();
  type metadata accessor for ReplaceReplayPageUpdate(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  sub_21700D194();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v3);
  v5 = type metadata accessor for JSReplayPage(0);

  v6 = (v0 + v3 + *(v5 + 24));
  type metadata accessor for Page.Header(0);
  v7 = OUTLINED_FUNCTION_769();
  if (!OUTLINED_FUNCTION_17_13(v7))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    v8 = *(v1 + 20);
    v9 = sub_21700D7A4();
    if (!__swift_getEnumTagSinglePayload(&v6[v8], 1, v9))
    {
      OUTLINED_FUNCTION_50();
      (*(v10 + 8))(&v6[v8], v9);
    }

    OUTLINED_FUNCTION_8_13();
    OUTLINED_FUNCTION_8_13();

    OUTLINED_FUNCTION_8_13();
    OUTLINED_FUNCTION_8_13();
  }

  OUTLINED_FUNCTION_1133(*(v5 + 28));
  if (!v11)
  {
  }

  OUTLINED_FUNCTION_4_2();

  OUTLINED_FUNCTION_28_5();

  return swift_deallocObject();
}

uint64_t sub_21675ADC0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[12];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a3[13];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21675AEF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[12];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a4[13];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21675B024(uint64_t a1)
{
  result = sub_2166D38F8(&qword_280E35C28, type metadata accessor for ArtistLatestReleaseLockup, &unk_217060798);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21675B07C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC99D0, &qword_2170608B0);
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == v3)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        if (v3 == 0x7FFFFFFF)
        {
          return OUTLINED_FUNCTION_22_1(*(v4 + a3[7]));
        }

        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC99D8, &qword_2170608B8);
        v12 = a3[10];
      }
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_21675B1E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC99D0, &qword_2170608B0);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(v5 + a4[7]) = (v4 - 1);
          return;
        }

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC99D8, &qword_2170608B8);
        v14 = a4[10];
      }
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_21675B368()
{
  OUTLINED_FUNCTION_17_6();
  v0 = sub_216EF32F4();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21675B3B4()
{
  OUTLINED_FUNCTION_17_6();
  v0 = sub_216EF3334();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21675B400()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216DE47B8();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21675B450()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216DE4638();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_21675B4A0()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7BA2C();
  *v0 = result;
  return result;
}

__n128 sub_21675B4D8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21675B4E4()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216DE0DB0();
  *v0 = result;
  return result;
}

uint64_t sub_21675B51C()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_21675B558(unint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  sub_21700DA84();
  v4 = OUTLINED_FUNCTION_25_49();

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

void sub_21675B5D0()
{
  OUTLINED_FUNCTION_92();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_21700DA84();
    v3 = OUTLINED_FUNCTION_25_49();

    __swift_storeEnumTagSinglePayload(v3, v0, v0, v4);
  }
}

uint64_t sub_21675B648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9AB0, &qword_217060C00);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) != v3)
    {
      return OUTLINED_FUNCTION_22_1(*(v4 + *(a3 + 32) + 8));
    }

    v9 = OUTLINED_FUNCTION_25_49();
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_21675B73C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9AB0, &qword_217060C00);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    OUTLINED_FUNCTION_17();
    if (*(v12 + 84) != a3)
    {
      *(v5 + *(a4 + 32) + 8) = (v4 - 1);
      return;
    }

    v11 = OUTLINED_FUNCTION_25_49();
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_21675B840()
{
  MEMORY[0x21CEA1520](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21675B8B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC9AD0, &qword_217060D50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC9AC8, &qword_217060D48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC9AF0, &qword_217060D70);
  sub_2166D9530(&qword_280E2A508, &qword_27CAC9AC8, &qword_217060D48, MEMORY[0x277CE11A8]);
  sub_216DE826C();
  swift_getOpaqueTypeConformance2();
  sub_216DE8638();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21675B9F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

__n128 sub_21675BA3C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_21675BA48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216DECA88();
  *a1 = result;
  return result;
}

uint64_t sub_21675BAD4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9BC0, &qword_217061168);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21675BB3C()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8100, qword_21701B4C0);
  OUTLINED_FUNCTION_10_91();
  sub_2166D9530(v2, &qword_27CAC9BC0, &qword_217061168, v3);
  sub_216DEDA44();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21675BBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21675BCA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21675BDC0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21700C444();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21675BE48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21700C444();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21675BEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700C084();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 253)
  {
    v7 = sub_21700D284();
    v8 = a1 + *(a3 + 24);
    goto LABEL_11;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 <= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
  }

  v11 = v10 - 2;
  if (v9 >= 2)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}