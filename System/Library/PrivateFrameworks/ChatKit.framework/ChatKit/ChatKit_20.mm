double sub_190990940(int a1, id a2)
{
  if ([a2 delegate])
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = [a2 conversation];
      [v5 deleteConversation_];

      [v5 showConversationListWithAnimation_];
    }

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_190990A14(int a1, id a2)
{
  v3 = [a2 conversation];
  v4 = [v3 shouldPresentSpamReasonPicker];

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_190DD55F0;
    *(v5 + 32) = [a2 conversation];
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v7 = type metadata accessor for ReportSpamReasonContoller();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR___CKReportSpamReasonContoller_reportSpamReson];
    *v9 = 0;
    v9[8] = 1;
    *&v8[OBJC_IVAR___CKReportSpamReasonContoller_conversations] = v5;
    *v9 = 0;
    v9[8] = 1;
    v10 = &v8[OBJC_IVAR___CKReportSpamReasonContoller_didReportBlock];
    *v10 = sub_19099200C;
    v10[1] = v6;
    v22.receiver = v8;
    v22.super_class = v7;
    v11 = a2;
    v12 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
    v13 = objc_allocWithZone(MEMORY[0x1E69DCCD8]);
    v14 = [v13 initWithRootViewController_];
    [v14 setModalPresentationStyle_];
    [v11 presentViewController:v14 animated:1 completion:0];
  }

  else if (sub_190990F14())
  {
    v15 = [a2 collectionViewController];
    v16 = [v15 delegate];

    if (v16)
    {
      v17 = [a2 collectionViewController];
      [v16 transcriptCollectionViewControllerDisplaySMSSpamReporting_];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v18 = [a2 conversation];
    sub_190BC714C(v18);

    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    aBlock[4] = sub_190992004;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_43_0;
    v20 = _Block_copy(aBlock);
    v21 = a2;

    im_dispatch_after();
    _Block_release(v20);
  }
}

void sub_190990D24(void *a1)
{
  v2 = [a1 collectionViewController];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_190992014;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_190840E6C;
  v6[3] = &block_descriptor_52;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 dismissViewControllerAnimated:1 completion:v4];
  _Block_release(v4);
}

double sub_190990E1C(void *a1)
{
  if ([a1 delegate])
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = [a1 conversation];
      [v4 chatController:a1 didReportSpamForConversation:v5];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_190990F14()
{
  v1 = [v0 conversation];
  v2 = [v1 chat];

  if (v2 && (v3 = [v2 chatItems], v2, sub_1902188FC(0, &unk_1EAD450C0, 0x1E69A5AF0), v4 = sub_190D57180(), v3, v5 = sub_190880A90(v4), , v5))
  {
    sub_1902188FC(0, &unk_1EAD54F90, 0x1E69A80E0);
    v6 = sub_190D57160();
  }

  else
  {
    v6 = 0;
  }

  ShouldShowReportMessagesForItems = IMSSMSReportSpamShouldShowReportMessagesForItems();

  return ShouldShowReportMessagesForItems;
}

double sub_190991024(void *a1)
{
  v2 = [a1 delegate];
  if (v2)
  {
    v4 = v2;
    v5 = [a1 conversation];
    [v4 chatController:a1 didReportSpamForConversation:v5];

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1909910C4(uint64_t a1, void *a2)
{
  v26 = sub_190D56770();
  v29 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D567A0();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D567F0();
  v25 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = &v24 - v14;
  v16 = [a2 chat];
  [v16 unsubscribe];

  sub_1902188FC(0, &qword_1EAD46670, 0x1E69E9610);
  v17 = sub_190D57870();
  sub_190D567B0();
  sub_190D56820();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  aBlock[4] = sub_19099201C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_58_0;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0, &unk_190DD6E80);
  sub_190840E08();
  v22 = v26;
  sub_190D58170();
  MEMORY[0x193AF30E0](v15, v7, v4, v20);
  _Block_release(v20);

  (*(v29 + 8))(v4, v22);
  (*(v27 + 8))(v7, v28);
  return (v18)(v15, v25);
}

double sub_190991468(void *a1)
{
  v2 = [a1 chat];
  if (v2)
  {
    v3 = v2;
    [v2 setDeletingIncomingMessages_];
  }

  if ([a1 delegate])
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = [a1 conversation];
      [v6 deleteConversation_];

      [v6 showConversationListWithAnimation_];
    }

    swift_unknownObjectRelease();
  }

  return result;
}

Swift::Bool __swiftcall CKChatController.wantsMessageRequestsTip()()
{
  v1 = [v0 conversation];
  v2 = [v1 chat];

  if (v2)
  {
    v5 = [v2 isFiltered];

    v6 = v5 != 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = CKMessageUnknownFilteringEnabled(v3, v4);
  IsModified = CKMessageSpamFilteringIsModified();
  v9 = sub_190D56ED0();
  v10 = sub_190D56ED0();
  v11 = IMGetDomainIntForKey();

  v12 = sub_190D56ED0();
  v13 = sub_190D56ED0();
  v14 = IMGetDomainBoolForKey();

  v15 = [objc_opt_self() isTimeSensitiveCustomModelAvailable];
  v16 = sub_190991D38();
  if (v7)
  {
    v17 = 1;
  }

  else
  {
    v17 = v6;
  }

  return v15 & ~(v17 | IsModified | v14 | (v11 < 3)) & v16 & 1;
}

Swift::Void __swiftcall CKChatController.updateNumberOfUnknownChatsOpenedIfNeeded()()
{
  v1 = [v0 conversation];
  v11 = [v1 chat];

  if (v11)
  {
    if ([v11 isFiltered] == 1 && (v2 = sub_190D56ED0(), v3 = sub_190D56ED0(), v4 = IMGetDomainIntForKey(), v2, v3, v4 <= 2))
    {
      v5 = sub_190D56ED0();
      v6 = sub_190D56ED0();
      v7 = IMGetDomainIntForKey();

      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      v8 = sub_190D56ED0();
      v9 = sub_190D56ED0();
      IMSetDomainIntForKey();

      v10 = v9;
    }

    else
    {
      v10 = v11;
    }
  }
}

Swift::Bool __swiftcall CKChatController.needsFooter()()
{
  v1 = [v0 conversation];
  v2 = [v1 chat];

  v3 = [v0 conversation];
  v4 = [v3 inUnknownSendersFilter];

  if (v2)
  {
    if (v4 || [v2 isFiltered] == 2)
    {

      LOBYTE(v4) = 1;
    }

    else
    {
      v5 = [v2 allowedByScreenTime];

      LOBYTE(v4) = v5 ^ 1;
    }
  }

  return v4;
}

void sub_190991AA0(void *a1, uint64_t a2)
{
  v5 = [v2 deleteAlertFor_];
  v6 = sub_19098EC9C(v5);
  v16 = v6;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v7 = [v2 chat];
      if (v7)
      {
        v8 = v7;
        v9 = swift_allocObject();
        *(v9 + 16) = v2;
        v21 = sub_190992024;
        v22 = v9;
        aBlock = MEMORY[0x1E69E9820];
        v18 = 1107296256;
        v19 = sub_19098F53C;
        v20 = &block_descriptor_64;
        v10 = _Block_copy(&aBlock);
        v11 = v2;

        [v8 markAsKnownAndSaveInContacts:1 completion:v10];

        _Block_release(v10);
        return;
      }

      goto LABEL_9;
    }

    if (a2 == 1)
    {
      [v2 presentViewController:v6 animated:1 completion:0];
      goto LABEL_9;
    }

LABEL_18:
    sub_190D58790();
    __break(1u);
    return;
  }

  if ((a2 - 2) < 3)
  {
    [v2 presentViewController:v5 animated:1 completion:0];
LABEL_9:

    return;
  }

  if (a2 != 5)
  {
    goto LABEL_18;
  }

  v12 = [v2 conversation];
  if (a1)
  {
    v13 = sub_1902188FC(0, &qword_1EAD464E0, 0x1E69DC738);
    v14 = a1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v18 = 0;
    v19 = 0;
  }

  aBlock = v14;
  v20 = v13;
  v15 = a1;
  sub_190D2B464(v12, v2);

  sub_19022EEA4(&aBlock, &unk_1EAD551C0, &unk_190DD9790);
}

uint64_t sub_190991D38()
{
  v0 = [objc_opt_self() sharedInstanceForBagType_];
  v1 = sub_190D56ED0();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {

    sub_19022EEA4(v15, &unk_1EAD551C0, &unk_190DD9790);
    return 0;
  }

  sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  if ([v12 unsignedIntegerValue] > 1)
  {

    goto LABEL_8;
  }

  if (byte_1EAD58658)
  {

    return 1;
  }

  else
  {
    byte_1EAD58658 = 1;
    if (qword_1EAD51A88 != -1)
    {
      swift_once();
    }

    v5 = sub_190D53040();
    __swift_project_value_buffer(v5, qword_1EAD58640);
    v6 = v12;
    v7 = sub_190D53020();
    v8 = sub_190D57680();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 134218242;
      v3 = 1;
      *(v9 + 4) = 1;
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_19020E000, v7, v8, "allow-intros-tip: Client (%lu) Server (%@)", v9, 0x16u);
      sub_19022EEA4(v10, &unk_1EAD54610, &qword_190DD6010);
      MEMORY[0x193AF7A40](v10, -1, -1);
      MEMORY[0x193AF7A40](v9, -1, -1);
    }

    else
    {

      return 1;
    }
  }

  return v3;
}

double CKSuggestedActionsHandler.openWebView(_:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didRequestOpenWebView_];
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t _s7ChatKit25CKSuggestedActionsHandlerC17openInApplicationyySo15IMActionOpenAppCF_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_190D515F0();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 url];
  sub_190D56F10();

  sub_190D515E0();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_19084CF50(v4);
  }

  (*(v6 + 32))(v9, v4, v5);
  v12 = [objc_opt_self() sharedApplication];
  v13 = sub_190D51570();
  sub_19082233C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_190964630();
  v14 = sub_190D56D60();

  [v12 openURL:v13 options:v14 completionHandler:0];

  return (*(v6 + 8))(v9, v5);
}

uint64_t _s18TranslationSectionVMa(uint64_t a1)
{
  result = qword_1EAD58668;
  if (!qword_1EAD58668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1909923DC(uint64_t a1)
{
  sub_190992464(319);
  if (v1 <= 0x3F)
  {
    sub_1908CB188();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_190992464(uint64_t a1)
{
  if (!qword_1EAD58678)
  {
    _s9ViewModelCMa_4(255);
    v1 = sub_190D56360();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD58678);
    }
  }
}

uint64_t sub_1909924D8@<X0>(char *a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58690, &qword_190DE26C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v28 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58698, &qword_190DE26C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD586A0, &qword_190DE26D0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  sub_190992820(&v26 - v17);
  sub_190993930(v11);
  v26 = v5;
  sub_1909942D8(v5);
  v19 = *(v13 + 16);
  v19(v15, v18, v12);
  v27 = v8;
  sub_19022FD14(v11, v8, &qword_1EAD58698, &qword_190DE26C8);
  v20 = v5;
  v21 = v28;
  sub_19022FD14(v20, v28, &qword_1EAD58690, &qword_190DE26C0);
  v22 = v29;
  v19(v29, v15, v12);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD586A8, &qword_190DE26D8);
  sub_19022FD14(v8, &v22[*(v23 + 48)], &qword_1EAD58698, &qword_190DE26C8);
  sub_19022FD14(v21, &v22[*(v23 + 64)], &qword_1EAD58690, &qword_190DE26C0);
  sub_19022EEA4(v26, &qword_1EAD58690, &qword_190DE26C0);
  sub_19022EEA4(v11, &qword_1EAD58698, &qword_190DE26C8);
  v24 = *(v13 + 8);
  v24(v18, v12);
  sub_19022EEA4(v21, &qword_1EAD58690, &qword_190DE26C0);
  sub_19022EEA4(v27, &qword_1EAD58698, &qword_190DE26C8);
  return (v24)(v15, v12);
}

id sub_190992820@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v99 = a1;
  v89 = sub_190D51920();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_190D519C0();
  v85 = *(v87 - 1);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_190D548A0();
  v110 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  OpaqueTypeConformance2 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = _s18TranslationSectionVMa(0);
  v6 = *(v113 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v98 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v84 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58720, &qword_190DE2750);
  v103 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v84 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58728, &qword_190DE2758);
  MEMORY[0x1EEE9AC00](v12);
  v109 = &v84 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58730, &qword_190DE2760);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v108 = &v84 - v14;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58738, &qword_190DE2768);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v105 = &v84 - v15;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58740, &qword_190DE2770);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v106 = &v84 - v16;
  sub_190999814(v1, v10);
  sub_190D572A0();
  v17 = sub_190D57290();
  v18 = *(v6 + 80);
  v19 = (v18 + 32) & ~v18;
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v17;
  *(v20 + 24) = v21;
  sub_190999878(v10, v20 + v19);
  sub_190999814(v1, v10);
  v22 = sub_190D57290();
  v97 = v7;
  v111 = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v21;
  v96 = v10;
  sub_190999878(v10, v23 + v19);
  sub_190D56230();
  v114 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58748, &qword_190DE2778);
  sub_190233640(&qword_1EAD58750, &qword_1EAD58748, &qword_190DE2778, MEMORY[0x1E6981870]);
  v24 = v100;
  sub_190D56180();
  v25 = OpaqueTypeConformance2;
  sub_190D54890();
  sub_190233640(&qword_1EAD58758, &qword_1EAD58720, &qword_190DE2750, MEMORY[0x1E697D6A8]);
  sub_19099A084(&qword_1EAD61270, MEMORY[0x1E697C480], MEMORY[0x1E697C478]);
  v26 = v109;
  v27 = v101;
  v28 = v104;
  sub_190D557B0();
  (*(v110 + 8))(v25, v28);
  (v103[1])(v24, v27);
  v29 = sub_190D55DB0();
  KeyPath = swift_getKeyPath();
  v31 = (v26 + *(v12 + 36));
  *v31 = KeyPath;
  v31[1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  v112 = v2;
  sub_190D56320();
  sub_190BB7500();
  v107 = v12;
  if (v32)
  {
    v33 = v84;
    sub_190D518B0();
    v34 = v88;
    v35 = v86;
    v36 = v89;
    (*(v88 + 104))(v86, *MEMORY[0x1E69A6648], v89);
    v37 = sub_1908EA100(0xD000000000000027, 0x8000000190E6A630, v33, v35);
    v39 = v38;

    (*(v34 + 8))(v35, v36);
    (*(v85 + 8))(v33, v87);
  }

  else
  {

    v37 = 0;
    v39 = 0xE000000000000000;
  }

  v125 = v37;
  v126 = v39;
  v40 = v112 + v113[8];
  v41 = *v40;
  v42 = *(v40 + 8);
  v123 = v41;
  v124 = v42;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  v43 = sub_190D55FF0();
  v103 = &v84;
  LODWORD(OpaqueTypeConformance2) = v117;
  MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FE0, &unk_190DE27B0);
  v46 = sub_190999D04();
  v47 = sub_19081E484();
  v89 = sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0, &unk_190DE27B0, MEMORY[0x1E6981F48]);
  v104 = v47;
  v100 = v46;
  v101 = v45;
  v48 = v109;
  sub_190D55B40();

  v49 = sub_19022EEA4(v48, &qword_1EAD58728, &qword_190DE2758);
  result = CKFrameworkBundle(v49);
  if (result)
  {
    v51 = result;
    v109 = ~v111;
    v52 = sub_190D56ED0();
    v53 = sub_190D56ED0();
    v54 = [v51 localizedStringForKey:v52 value:0 table:v53];

    v55 = sub_190D56F10();
    v57 = v56;
    v103 = v56;

    v125 = v55;
    v126 = v57;
    v58 = v112 + v113[5];
    v59 = *v58;
    v60 = *(v58 + 8);
    v123 = v59;
    v124 = v60;
    v61 = sub_190D55FF0();
    v87 = &v84;
    v85 = v115;
    LODWORD(v86) = v117;
    MEMORY[0x1EEE9AC00](v61);
    MEMORY[0x1EEE9AC00](v62);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58768, &qword_190DE27C0);
    v115 = v107;
    v116 = MEMORY[0x1E69E6158];
    v117 = v101;
    v118 = MEMORY[0x1E6981148];
    v119 = v100;
    v120 = v104;
    v121 = v89;
    v122 = MEMORY[0x1E6981138];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v107 = sub_190233640(&qword_1EAD58770, &qword_1EAD58768, &qword_190DE27C0, MEMORY[0x1E6981F48]);
    v63 = v91;
    v64 = v108;
    sub_190D55990();

    (*(v90 + 8))(v64, v63);
    v65 = v112;
    v66 = v112 + v113[6];
    v67 = *v66;
    v68 = *(v66 + 8);
    LOBYTE(v125) = v67;
    v126 = v68;
    sub_190D55FF0();
    LODWORD(v103) = v117;
    v69 = v96;
    sub_190999814(v65, v96);
    v70 = (v111 + 16) & v109;
    v71 = swift_allocObject();
    sub_190999878(v69, v71 + v70);
    v72 = v98;
    sub_190999814(v65, v98);
    v73 = swift_allocObject();
    sub_190999878(v72, v73 + v70);
    v115 = v63;
    v116 = MEMORY[0x1E69E6158];
    v117 = v88;
    v118 = MEMORY[0x1E6981148];
    v119 = OpaqueTypeConformance2;
    v120 = v104;
    v121 = v107;
    v122 = MEMORY[0x1E6981138];
    v108 = swift_getOpaqueTypeConformance2();
    v109 = sub_190999EE0();
    v74 = v93;
    v75 = v105;
    sub_190D55B80();

    (*(v92 + 8))(v75, v74);
    v76 = v112;
    v77 = v112 + v113[7];
    v78 = *v77;
    v79 = *(v77 + 8);
    LOBYTE(v125) = v78;
    v126 = v79;
    sub_190D55FF0();
    LODWORD(v113) = v117;
    sub_190999814(v76, v69);
    v80 = swift_allocObject();
    sub_190999878(v69, v80 + v70);
    sub_190999814(v76, v72);
    v81 = swift_allocObject();
    sub_190999878(v72, v81 + v70);
    v115 = v74;
    v116 = &type metadata for CKLanguageSelectionView;
    v117 = v108;
    v118 = v109;
    swift_getOpaqueTypeConformance2();
    v82 = v95;
    v83 = v106;
    sub_190D55B80();

    return (*(v94 + 8))(v83, v82);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190993930@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD586B0, &qword_190DE26E0);
  v48 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v46 = &v42 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD586B8, &qword_190DE26E8);
  v45 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v44 = &v42 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD586C0, &qword_190DE26F0);
  v49 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v47 = &v42 - v5;
  v6 = _s18TranslationSectionVMa(0);
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v43 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v9 = &v42 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58700, &qword_190DE2720);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58708, &qword_190DE2728);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58710, &unk_190DE2730);
  MEMORY[0x1EEE9AC00](v53);
  v15 = &v42 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();
  v16 = sub_190BB552C();
  v18 = v17;

  if (v18)
  {
    if (v18 == 1)
    {
      sub_190999814(v1, &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v19 = (*(v50 + 80) + 16) & ~*(v50 + 80);
      v20 = swift_allocObject();
      v21 = sub_190999878(&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
      MEMORY[0x1EEE9AC00](v21);
      *(&v42 - 2) = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD586D0, &qword_190DE2700);
      sub_1909998FC();
      v22 = v44;
      sub_190D56030();
      v23 = v46;
      sub_190D54CD0();
      v24 = sub_190233640(&qword_1EAD586E0, &qword_1EAD586B8, &qword_190DE26E8, MEMORY[0x1E697D680]);
      v25 = sub_190233640(&qword_1EAD586E8, &qword_1EAD586B0, &qword_190DE26E0, MEMORY[0x1E697C9F0]);
      v26 = v47;
      v28 = v55;
      v27 = v56;
      sub_190D55720();
      (*(v48 + 8))(v23, v27);
      (*(v45 + 8))(v22, v28);
      v29 = v49;
      v30 = v57;
      (*(v49 + 16))(v54, v26, v57);
      swift_storeEnumTagMultiPayload();
      sub_190999A28();
      v59 = v28;
      v60 = v27;
      v61 = v24;
      v62 = v25;
      swift_getOpaqueTypeConformance2();
      sub_190D54C50();
      return (*(v29 + 8))(v26, v30);
    }

    else
    {
      v59 = v16;
      v60 = v18;
      sub_190999814(v1, &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v35 = (*(v50 + 80) + 16) & ~*(v50 + 80);
      v36 = swift_allocObject();
      sub_190999878(&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35);
      sub_19081E484();
      sub_190D56080();
      v37 = v43;
      v38 = v51;
      (*(v43 + 16))(v13, v9, v51);
      swift_storeEnumTagMultiPayload();
      v39 = MEMORY[0x1E697D680];
      sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
      sub_190D54C50();
      sub_19022FD14(v15, v54, &qword_1EAD58710, &unk_190DE2730);
      swift_storeEnumTagMultiPayload();
      sub_190999A28();
      v40 = sub_190233640(&qword_1EAD586E0, &qword_1EAD586B8, &qword_190DE26E8, v39);
      v41 = sub_190233640(&qword_1EAD586E8, &qword_1EAD586B0, &qword_190DE26E0, MEMORY[0x1E697C9F0]);
      v59 = v55;
      v60 = v56;
      v61 = v40;
      v62 = v41;
      swift_getOpaqueTypeConformance2();
      sub_190D54C50();
      sub_19022EEA4(v15, &qword_1EAD58710, &unk_190DE2730);
      return (*(v37 + 8))(v9, v38);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v32 = MEMORY[0x1E697D680];
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
    sub_190D54C50();
    sub_19022FD14(v15, v54, &qword_1EAD58710, &unk_190DE2730);
    swift_storeEnumTagMultiPayload();
    sub_190999A28();
    v33 = sub_190233640(&qword_1EAD586E0, &qword_1EAD586B8, &qword_190DE26E8, v32);
    v34 = sub_190233640(&qword_1EAD586E8, &qword_1EAD586B0, &qword_190DE26E0, MEMORY[0x1E697C9F0]);
    v59 = v55;
    v60 = v56;
    v61 = v33;
    v62 = v34;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();
    return sub_19022EEA4(v15, &qword_1EAD58710, &unk_190DE2730);
  }
}

uint64_t sub_1909942D8@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD586B0, &qword_190DE26E0);
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v30 = &v27 - v2;
  v3 = _s18TranslationSectionVMa(0);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD586B8, &qword_190DE26E8);
  v28 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v27 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD586C0, &qword_190DE26F0);
  v29 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD586C8, &qword_190DE26F8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();
  v12 = sub_190BB552C();
  v14 = v13;

  if (v14 == 1)
  {
    sub_190999814(v1, &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v16 = swift_allocObject();
    v17 = sub_190999878(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
    MEMORY[0x1EEE9AC00](v17);
    *(&v27 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD586D0, &qword_190DE2700);
    sub_1909998FC();
    sub_190D56030();
    v18 = v30;
    sub_190D54CD0();
    v27 = sub_190233640(&qword_1EAD586E0, &qword_1EAD586B8, &qword_190DE26E8, MEMORY[0x1E697D680]);
    v19 = sub_190233640(&qword_1EAD586E8, &qword_1EAD586B0, &qword_190DE26E0, MEMORY[0x1E697C9F0]);
    v20 = v32;
    v21 = v34;
    sub_190D55720();
    (*(v31 + 8))(v18, v21);
    (*(v28 + 8))(v6, v20);
    v22 = v29;
    v23 = v33;
    (*(v29 + 16))(v11, v8, v33);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD586F0, &qword_190DE2708);
    sub_190999978();
    v37 = v20;
    v38 = v21;
    v39 = v27;
    v40 = v19;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();
    return (*(v22 + 8))(v8, v23);
  }

  else
  {
    if (v14)
    {
      sub_1909999F4(v12, v14);
      v36 = 1;
    }

    else
    {
      v36 = 0;
    }

    sub_190D54C50();
    *v11 = v37;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD586F0, &qword_190DE2708);
    sub_190999978();
    v25 = sub_190233640(&qword_1EAD586E0, &qword_1EAD586B8, &qword_190DE26E8, MEMORY[0x1E697D680]);
    v26 = sub_190233640(&qword_1EAD586E8, &qword_1EAD586B0, &qword_190DE26E0, MEMORY[0x1E697C9F0]);
    v37 = v32;
    v38 = v34;
    v39 = v25;
    v40 = v26;
    swift_getOpaqueTypeConformance2();
    return sub_190D54C50();
  }
}

void *sub_190994930@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_190D54AC0();
  v9 = 1;
  sub_190997140(__src);
  memcpy(__dst, __src, 0x123uLL);
  memcpy(v11, __src, 0x123uLL);
  sub_19022FD14(__dst, v6, &qword_1EAD587A8, &qword_190DE2918);
  sub_19022EEA4(v11, &qword_1EAD587A8, &qword_190DE2918);
  memcpy(&v8[7], __dst, 0x123uLL);
  v4 = v9;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  return memcpy((a2 + 17), v8, 0x12AuLL);
}

id sub_190994A0C@<X0>(char *a1@<X8>)
{
  v3 = _s18TranslationSectionVMa(0);
  v61 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = v4;
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110, &qword_190DDC6C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v53 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v60 = v53 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v62 = v53 - v19;
  result = CKFrameworkBundle(v20);
  if (result)
  {
    v22 = result;
    v55 = v10;
    v57 = v15;
    v58 = v12;
    v59 = a1;
    v23 = sub_190D56ED0();
    v24 = sub_190D56ED0();
    v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

    v26 = sub_190D56F10();
    v28 = v27;

    v64 = v26;
    v65 = v28;
    sub_190D53990();
    v29 = sub_190D539A0();
    v30 = *(v29 - 8);
    v31 = *(v30 + 56);
    v53[1] = v30 + 56;
    v54 = v31;
    v31(v8, 0, 1, v29);
    v56 = v1;
    sub_190999814(v1, v5);
    v32 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v33 = swift_allocObject();
    v34 = v5;
    sub_190999878(v5, v33 + v32);
    v61 = sub_19081E484();
    v35 = sub_190D56060();
    result = CKFrameworkBundle(v35);
    if (result)
    {
      v36 = result;
      v37 = sub_190D56ED0();
      v38 = sub_190D56ED0();
      v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

      v40 = sub_190D56F10();
      v42 = v41;

      v64 = v40;
      v65 = v42;
      sub_190D53980();
      v54(v8, 0, 1, v29);
      sub_190999814(v56, v34);
      v43 = swift_allocObject();
      sub_190999878(v34, v43 + v32);
      v44 = v60;
      sub_190D56060();
      v45 = v55;
      v46 = *(v55 + 16);
      v47 = v57;
      v48 = v62;
      v46(v57, v62, v9);
      v49 = v58;
      v46(v58, v44, v9);
      v50 = v59;
      v46(v59, v47, v9);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62160, &qword_190DDBAF0);
      v46(&v50[*(v51 + 48)], v49, v9);
      v52 = *(v45 + 8);
      v52(v44, v9);
      v52(v48, v9);
      v52(v49, v9);
      return (v52)(v47, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190994FA0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();
  sub_190BB6D44();

  sub_19081E484();
  result = sub_190D555F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

id sub_190995034@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58780, &qword_190DE28B8);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v74 - v2;
  v3 = sub_190D54340();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s18TranslationSectionVMa(0);
  v91 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v92 = v6;
  v87 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v86 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v74 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58788, &qword_190DE28C0);
  v76 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v75 = &v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58790, &qword_190DE28C8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v74 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  v18 = v1;
  sub_190D56320();
  v19 = v93;
  swift_getKeyPath();
  v93 = v19;
  sub_19099A084(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v20 = [*(v19 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation) translationLanguageCode];
  v21 = sub_190D56F10();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v89 = v7;
  v90 = v17;
  v88 = v11;
  if (v24)
  {
    v74 = v18;
    sub_190D56320();
    v25 = sub_190BB6864();
    v27 = v26;

    v93 = v25;
    v94 = v27;
    v28 = v87;
    sub_190999814(v18, v87);
    v29 = (*(v91 + 80) + 16) & ~*(v91 + 80);
    v30 = swift_allocObject();
    sub_190999878(v28, v30 + v29);
    sub_19081E484();
    sub_190D56080();
    v31 = v77;
    sub_190D54330();
    v32 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
    v33 = v75;
    sub_190D558F0();
    (*(v78 + 8))(v31, v79);
    v34 = v86;
    (*(v86 + 8))(v11, v7);
    v35 = v76;
    v36 = v80;
    (*(v76 + 16))(v82, v33, v80);
    swift_storeEnumTagMultiPayload();
    v93 = v7;
    v94 = v32;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();
    (*(v35 + 8))(v33, v36);
    v37 = 0;
    v18 = v74;
    v38 = v91;
  }

  else
  {
    v38 = v91;
    v39 = v87;
    sub_190D56320();
    v40 = v93;
    swift_getKeyPath();
    v93 = v40;
    sub_190D51C20();

    v41 = *(v40 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel__suggestedTranslationLanguages);
    sub_190D52690();

    if (v41[2])
    {
      v43 = v41[4];
      v42 = v41[5];
      sub_190D52690();

      sub_190D56320();
      v44 = sub_190BB6AD8();
      v46 = v45;

      v93 = v44;
      v94 = v46;
      v28 = v39;
      sub_190999814(v18, v39);
      v47 = (*(v38 + 80) + 16) & ~*(v38 + 80);
      v48 = (v92 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      sub_190999878(v39, v49 + v47);
      v50 = (v49 + v48);
      *v50 = v43;
      v50[1] = v42;
      sub_19081E484();
      v51 = v88;
      sub_190D56080();
      v34 = v86;
      v52 = v89;
      (*(v86 + 16))(v82, v51, v89);
      swift_storeEnumTagMultiPayload();
      v53 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
      v93 = v52;
      v94 = v53;
      swift_getOpaqueTypeConformance2();
      v17 = v90;
      sub_190D54C50();
      (*(v34 + 8))(v51, v52);
      v37 = 0;
    }

    else
    {

      v37 = 1;
      v34 = v86;
      v28 = v39;
      v17 = v90;
    }
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58798, &qword_190DE28D0);
  v55 = (*(*(v54 - 8) + 56))(v17, v37, 1, v54);
  result = CKFrameworkBundle(v55);
  if (result)
  {
    v57 = result;
    v58 = sub_190D56ED0();
    v59 = sub_190D56ED0();
    v60 = [v57 localizedStringForKey:v58 value:0 table:v59];

    v61 = sub_190D56F10();
    v63 = v62;

    v93 = v61;
    v94 = v63;
    sub_190999814(v18, v28);
    v64 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v65 = swift_allocObject();
    sub_190999878(v28, v65 + v64);
    sub_19081E484();
    v66 = v84;
    sub_190D56080();
    v67 = v83;
    sub_19022FD14(v17, v83, &qword_1EAD58790, &qword_190DE28C8);
    v68 = *(v34 + 16);
    v70 = v88;
    v69 = v89;
    v68(v88, v66, v89);
    v71 = v85;
    sub_19022FD14(v67, v85, &qword_1EAD58790, &qword_190DE28C8);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD587A0, &qword_190DE28D8);
    v68((v71 + *(v72 + 48)), v70, v69);
    v73 = *(v34 + 8);
    v73(v66, v69);
    sub_19022EEA4(v90, &qword_1EAD58790, &qword_190DE28C8);
    v73(v70, v69);
    return sub_19022EEA4(v67, &qword_1EAD58790, &qword_190DE28C8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190995ACC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();

  result = CKFrameworkBundle(v2);
  if (result)
  {
    v4 = result;
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9 & 1;
    *(a1 + 24) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_190995BF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s18TranslationSectionVMa(0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();
  v6 = v28;
  swift_getKeyPath();
  sub_19099A084(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v7 = *(v28 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___languageViewModel);
  if (v7)
  {
    sub_190D50920();
  }

  else
  {
    v7 = sub_190BB40A8();
    KeyPath = swift_getKeyPath();
    v25 = v1;
    v24 = &v24;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v24 - 2) = v6;
    *(&v24 - 1) = v7;
    *&v28 = v6;
    sub_190D50920();
    sub_190D51C10();

    v2 = v25;
  }

  result = CKFrameworkBundle(v8);
  if (result)
  {
    v11 = result;
    v12 = sub_190D56ED0();
    v13 = sub_190D56ED0();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    v15 = sub_190D56F10();
    v17 = v16;

    sub_190999814(v2, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v19 = swift_allocObject();
    v20 = sub_190999878(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    v21 = CKFrameworkBundle(v20);
    v27 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C18, &qword_190DE27F0);
    sub_190D55FC0();
    v22 = v28;
    v27 = 0;
    result = sub_190D55FC0();
    v23 = v28;
    *a1 = v21;
    *(a1 + 8) = v7;
    *(a1 + 16) = v15;
    *(a1 + 24) = v17;
    *(a1 + 32) = 1;
    *(a1 + 40) = sub_19099A22C;
    *(a1 + 48) = v19;
    *(a1 + 56) = v22;
    *(a1 + 72) = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_190995F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();
  swift_getKeyPath();
  sub_19099A084(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C10();

  return result;
}

void *sub_190996068@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s18TranslationSectionVMa(0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();
  v6 = v28;
  swift_getKeyPath();
  sub_19099A084(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v7 = *(v28 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel___translateToLanguageViewModel);
  if (v7)
  {
    sub_190D50920();
  }

  else
  {
    v7 = sub_190BB48D4();
    KeyPath = swift_getKeyPath();
    v25 = v1;
    v24 = &v24;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v24 - 2) = v6;
    *(&v24 - 1) = v7;
    *&v28 = v6;
    sub_190D50920();
    sub_190D51C10();

    v2 = v25;
  }

  result = CKFrameworkBundle(v8);
  if (result)
  {
    v11 = result;
    v12 = sub_190D56ED0();
    v13 = sub_190D56ED0();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    v15 = sub_190D56F10();
    v17 = v16;

    sub_190999814(v2, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v19 = swift_allocObject();
    v20 = sub_190999878(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    v21 = CKFrameworkBundle(v20);
    v27 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C18, &qword_190DE27F0);
    sub_190D55FC0();
    v22 = v28;
    v27 = 0;
    result = sub_190D55FC0();
    v23 = v28;
    *a1 = v21;
    *(a1 + 8) = v7;
    *(a1 + 16) = v15;
    *(a1 + 24) = v17;
    *(a1 + 32) = 1;
    *(a1 + 40) = sub_19099A0E8;
    *(a1 + 48) = v19;
    *(a1 + 56) = v22;
    *(a1 + 72) = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1909963F0(unsigned __int8 *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();
  swift_getKeyPath();
  sub_19099A084(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  v2 = [*(v3 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation) shouldAutomaticallyTranslate];

  *a1 = v2;
}

void sub_1909964D8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
    sub_190D56320();
    swift_getKeyPath();
    sub_19099A084(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
    sub_190D51C20();

    sub_190D52690();

    _s18TranslationSectionVMa(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
    sub_190D55FE0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
    sub_190D56320();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19099A084(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
    sub_190D51C10();
  }
}

double sub_19099671C(uint64_t a1)
{
  v2 = _s18TranslationSectionVMa(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19[-v8];
  v10 = (a1 + *(v3 + 40));
  v11 = *v10;
  v12 = *(v10 + 1);
  v19[16] = v11;
  v20 = v12;
  v19[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  sub_190D55FE0();
  v13 = sub_190D572E0();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_190999814(a1, v6);
  sub_190D572A0();
  v14 = sub_190D57290();
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_190999878(v6, v16 + v15);
  sub_190857E08(0, 0, v9, &unk_190DE2910, v16);

  return result;
}

uint64_t sub_19099691C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_190D572A0();
  v4[6] = sub_190D57290();
  v6 = sub_190D57240();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1909969B4, v6, v5);
}

uint64_t sub_1909969B4()
{
  v0[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();
  v0[10] = v0[2];
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_190996A6C;

  return sub_190BB5F9C();
}

uint64_t sub_190996A6C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_190996BB0, v3, v2);
}

uint64_t sub_190996BB0()
{

  sub_190D56320();
  v1 = v0[3];
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  v0[4] = v1;
  sub_19099A084(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C10();

  v3 = v0[1];

  return v3();
}

uint64_t sub_190996CF4(uint64_t a1)
{
  _s18TranslationSectionVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  return sub_190D55FE0();
}

uint64_t sub_190996D64(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();
  swift_getKeyPath();
  sub_19099A084(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C10();

  _s18TranslationSectionVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  return sub_190D55FE0();
}

uint64_t sub_190996EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();
  swift_getKeyPath();
  sub_19099A084(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C10();

  sub_190D56320();
  swift_getKeyPath();
  sub_190D51C10();

  _s18TranslationSectionVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  return sub_190D55FE0();
}

uint64_t sub_190997090(uint64_t a1)
{
  _s18TranslationSectionVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  sub_190D55FE0();
  return sub_190D55FE0();
}

id sub_190997140@<X0>(void *a1@<X8>)
{
  v76 = a1;
  v1 = sub_190D52170();
  v71 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CKFrameworkBundle(v4);
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = sub_190D56ED0();
  v8 = sub_190D56ED0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  v10 = sub_190D56F10();
  v12 = v11;

  *&v127 = v10;
  *(&v127 + 1) = v12;
  v70[1] = sub_19081E484();
  v13 = sub_190D555F0();
  v73 = v14;
  v74 = v13;
  LOBYTE(v10) = v15;
  v75 = v16;
  sub_190D56510();
  sub_190D54430();
  v72 = v10 & 1;
  v144 = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();
  v17 = v127;
  swift_getKeyPath();
  *&v127 = v17;
  sub_19099A084(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C20();

  LODWORD(v10) = [*(v17 + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel_conversation) shouldAutomaticallyTranslate];

  if (!v10)
  {
    sub_190997F3C(&v118);
    sub_19099A8A4(&v118);
    v115 = v124;
    v116 = v125;
    v117[0] = v126[0];
    *(v117 + 15) = *(v126 + 15);
    v111 = v120;
    v112 = v121;
    v113 = v122;
    v114 = v123;
    v109 = v118;
    v110 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD587B0, &qword_190DE2920);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD587B8, &qword_190DE2928);
    sub_19099A8B0();
    sub_19099A9C0();
    sub_190D54C50();
LABEL_13:
    *(&v108[17] + 15) = *(v135 + 15);
    v124 = v133;
    v125 = v134;
    v126[0] = v135[0];
    v120 = v129;
    v121 = v130;
    v122 = v131;
    v123 = v132;
    v118 = v127;
    v119 = v128;
    v66 = v73;
    v67 = v74;
    *&v86 = v74;
    *(&v86 + 1) = v73;
    v68 = v72;
    LOBYTE(v87) = v72;
    *(&v87 + 1) = *v143;
    DWORD1(v87) = *&v143[3];
    v69 = v75;
    *(&v87 + 1) = v75;
    v92 = v140;
    v93 = v141;
    v94 = v142;
    v88 = v136;
    v89 = v137;
    v90 = v138;
    v91 = v139;
    v108[6] = v140;
    v108[7] = v141;
    v108[2] = v136;
    v108[3] = v137;
    v108[4] = v138;
    v108[5] = v139;
    v108[0] = v86;
    v108[1] = v87;
    v115 = v133;
    v116 = v134;
    v117[0] = v135[0];
    v111 = v129;
    v112 = v130;
    v113 = v131;
    v114 = v132;
    v109 = v127;
    v110 = v128;
    v108[16] = v134;
    v108[17] = v135[0];
    v108[12] = v130;
    v108[13] = v131;
    v108[14] = v132;
    v108[15] = v133;
    v108[8] = v142;
    v108[9] = v127;
    *(v126 + 15) = *(v135 + 15);
    *(v117 + 15) = *(v135 + 15);
    v108[10] = v128;
    v108[11] = v129;
    memcpy(v76, v108, 0x123uLL);
    sub_19022FD14(&v86, &v98, &qword_1EAD59AB0, &qword_190DDD4F0);
    sub_19022FD14(&v109, &v98, &qword_1EAD587E0, &qword_190DE2940);
    sub_19022EEA4(&v118, &qword_1EAD587E0, &qword_190DE2940);
    *&v98 = v67;
    *(&v98 + 1) = v66;
    LOBYTE(v99) = v68;
    *(&v99 + 1) = *v143;
    DWORD1(v99) = *&v143[3];
    *(&v99 + 1) = v69;
    v104 = v140;
    v105 = v141;
    v106 = v142;
    v100 = v136;
    v101 = v137;
    v102 = v138;
    v103 = v139;
    return sub_19022EEA4(&v98, &qword_1EAD59AB0, &qword_190DDD4F0);
  }

  sub_190D56320();
  v18 = v127;
  swift_getKeyPath();
  *&v127 = v18;
  sub_190D51C20();

  v19 = OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView7Toggles9ViewModel__translationLanguageStatus;
  swift_beginAccess();
  v20 = v71;
  (*(v71 + 16))(v3, v18 + v19, v1);

  v21 = (*(v20 + 88))(v3, v1);
  if (v21 == *MEMORY[0x1E69A6778])
  {
    result = CKFrameworkBundle(v21);
    if (result)
    {
      v22 = result;
      v23 = sub_190D56ED0();
      v24 = sub_190D56ED0();
      v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

      v26 = sub_190D56F10();
      v28 = v27;

      *&v127 = v26;
      *(&v127 + 1) = v28;
      v29 = sub_190D555F0();
      v31 = v30;
      LOBYTE(v24) = v32;
      sub_190D55480();
      v33 = sub_190D555B0();
      v35 = v34;
      v37 = v36;

      sub_19081E474(v29, v31, v24 & 1);

      LODWORD(v127) = sub_190D54EB0();
      v38 = sub_190D55580();
      v40 = v39;
      LOBYTE(v24) = v41;
      v43 = v42;
      sub_19081E474(v33, v35, v37 & 1);

      sub_190D56510();
      sub_190D54430();
      v97 = v24 & 1;
      *&v77 = v38;
      *(&v77 + 1) = v40;
      LOBYTE(v78) = v24 & 1;
      *(&v78 + 1) = *v96;
      DWORD1(v78) = *&v96[3];
      *(&v78 + 1) = v43;
      v88 = v79;
      v89 = v80;
      v86 = v77;
      v87 = v78;
      v93 = v84;
      v94 = v85;
      v91 = v82;
      v92 = v83;
      v90 = v81;
      sub_19026E0A0(&v86);
LABEL_10:
      v133 = v92;
      v134 = v93;
      v135[0] = v94;
      LOBYTE(v135[1]) = v95;
      v129 = v88;
      v130 = v89;
      v131 = v90;
      v132 = v91;
      v127 = v86;
      v128 = v87;
      sub_19022FD14(&v77, &v118, &qword_1EAD59AB0, &qword_190DDD4F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59AB0, &qword_190DDD4F0);
      sub_1908695F0();
      sub_190D54C50();
      v133 = v104;
      v134 = v105;
      v135[0] = v106;
      LOBYTE(v135[1]) = v107;
      v129 = v100;
      v130 = v101;
      v131 = v102;
      v132 = v103;
      v127 = v98;
      v128 = v99;
      sub_19099AA60(&v127);
      v115 = v133;
      v116 = v134;
      v117[0] = v135[0];
      LOWORD(v117[1]) = v135[1];
      v111 = v129;
      v112 = v130;
      v113 = v131;
      v114 = v132;
      v109 = v127;
      v110 = v128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD587D0, &unk_190DE2930);
      sub_19099A93C();
      sub_190D54C50();
      sub_19022EEA4(&v77, &qword_1EAD59AB0, &qword_190DDD4F0);
      v104 = v124;
      v105 = v125;
      v106 = v126[0];
      v107 = v126[1];
      v100 = v120;
      v101 = v121;
      v102 = v122;
      v103 = v123;
      v98 = v118;
      v99 = v119;
LABEL_12:
      v124 = v104;
      v125 = v105;
      v126[0] = v106;
      LOWORD(v126[1]) = v107;
      v120 = v100;
      v121 = v101;
      v122 = v102;
      v123 = v103;
      v118 = v98;
      v119 = v99;
      sub_19099AA58(&v118);
      v115 = v124;
      v116 = v125;
      v117[0] = v126[0];
      *(v117 + 15) = *(v126 + 15);
      v111 = v120;
      v112 = v121;
      v113 = v122;
      v114 = v123;
      v109 = v118;
      v110 = v119;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD587B0, &qword_190DE2920);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD587B8, &qword_190DE2928);
      sub_19099A8B0();
      sub_19099A9C0();
      sub_190D54C50();
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v21 != *MEMORY[0x1E69A6780])
  {
    sub_19099AA4C(&v118);
    v115 = v124;
    v116 = v125;
    v117[0] = v126[0];
    LOWORD(v117[1]) = v126[1];
    v111 = v120;
    v112 = v121;
    v113 = v122;
    v114 = v123;
    v109 = v118;
    v110 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD587D0, &unk_190DE2930);
    sub_19099A93C();
    sub_190D54C50();
    (*(v20 + 8))(v3, v1);
    v104 = v133;
    v105 = v134;
    v106 = v135[0];
    v107 = v135[1];
    v100 = v129;
    v101 = v130;
    v102 = v131;
    v103 = v132;
    v98 = v127;
    v99 = v128;
    goto LABEL_12;
  }

  result = CKFrameworkBundle(v21);
  if (result)
  {
    v44 = result;
    v45 = sub_190D56ED0();
    v46 = sub_190D56ED0();
    v47 = [v44 localizedStringForKey:v45 value:0 table:v46];

    v48 = sub_190D56F10();
    v50 = v49;

    *&v127 = v48;
    *(&v127 + 1) = v50;
    v51 = sub_190D555F0();
    v53 = v52;
    LOBYTE(v46) = v54;
    sub_190D55480();
    v55 = sub_190D555B0();
    v57 = v56;
    v59 = v58;

    sub_19081E474(v51, v53, v46 & 1);

    LODWORD(v127) = sub_190D54EB0();
    v60 = sub_190D55580();
    v62 = v61;
    LOBYTE(v46) = v63;
    v65 = v64;
    sub_19081E474(v55, v57, v59 & 1);

    sub_190D56510();
    sub_190D54430();
    v97 = v46 & 1;
    *&v77 = v60;
    *(&v77 + 1) = v62;
    LOBYTE(v78) = v46 & 1;
    *(&v78 + 1) = *v96;
    DWORD1(v78) = *&v96[3];
    *(&v78 + 1) = v65;
    v88 = v79;
    v89 = v80;
    v86 = v77;
    v87 = v78;
    v93 = v84;
    v94 = v85;
    v91 = v82;
    v92 = v83;
    v90 = v81;
    sub_19026E0AC(&v86);
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
  return result;
}

double sub_190997F3C@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();
  v2 = sub_190BB78AC();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    DWORD1(v32) = HIDWORD(v2);
    *(&v32 + 1) = v4;
    sub_19081E484();
    v6 = sub_190D555F0();
    v8 = v7;
    v10 = v9;
    sub_190D55480();
    v11 = sub_190D555B0();
    v13 = v12;
    v15 = v14;

    sub_19081E474(v6, v8, v10 & 1);

    LODWORD(v32) = sub_190D54EB0();
    v16 = sub_190D55580();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    sub_19081E474(v11, v13, v15 & 1);

    sub_190D56510();
    sub_190D54430();
    v31 = v20 & 1;
    v28[0] = v16;
    v28[1] = v18;
    v29 = v20 & 1;
    v30 = v22;
    sub_19026E0A0(v28);
  }

  else
  {

    sub_19026E0AC(v28);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59AB0, &qword_190DDD4F0);
  sub_1908695F0();
  sub_190D54C50();
  v23 = v39;
  *(a1 + 96) = v38;
  *(a1 + 112) = v23;
  *(a1 + 128) = v40;
  *(a1 + 144) = v41;
  v24 = v35;
  *(a1 + 32) = v34;
  *(a1 + 48) = v24;
  v25 = v37;
  *(a1 + 64) = v36;
  *(a1 + 80) = v25;
  result = *&v32;
  v27 = v33;
  *a1 = v32;
  *(a1 + 16) = v27;
  return result;
}

double sub_1909981BC(uint64_t a1)
{
  v2 = _s18TranslationSectionVMa(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_190D572E0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_190999814(a1, v5);
  sub_190D572A0();
  v10 = sub_190D57290();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_190999878(v5, v12 + v11);
  sub_190857E08(0, 0, v8, &unk_190DE2748, v12);

  return result;
}

uint64_t sub_190998374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_190D572A0();
  v4[6] = sub_190D57290();
  v6 = sub_190D57240();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19099840C, v6, v5);
}

uint64_t sub_19099840C()
{
  sub_190D577A0();
  if (sub_190D57790())
  {
    v1 = *(v0 + 40);

    v2 = (v1 + *(_s18TranslationSectionVMa(0) + 32));
    v3 = *v2;
    v4 = *(v2 + 1);
    *(v0 + 16) = v3;
    *(v0 + 24) = v4;
    *(v0 + 88) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
    sub_190D55FE0();
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
    sub_190D56320();
    *(v0 + 72) = *(v0 + 32);
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_19099855C;

    return sub_190BB5F9C();
  }
}

uint64_t sub_19099855C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1909986A0, v3, v2);
}

uint64_t sub_1909986A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190998700(uint64_t a1)
{
  _s18TranslationSectionVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  return sub_190D55FE0();
}

id sub_190998774(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    sub_190D56F10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
    sub_190D56320();
    sub_190BB6388();

    sub_19081E484();
    return sub_190D53EB0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1909988B0(uint64_t a1)
{
  _s18TranslationSectionVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  return sub_190D55FE0();
}

id sub_190998924(uint64_t a1)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    sub_190D56F10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
    sub_190D56320();
    sub_190BB65E4();

    sub_19081E484();
    return sub_190D53EB0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190998A60(uint64_t *a1, uint64_t a2)
{
  v4 = sub_190D519C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-v11];
  v13 = *a1;
  if (*a1 && v13 != 1)
  {
    v14 = v9;
    (*(v5 + 16))(v7, v13 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel_locale, v9, v10);
    (*(v5 + 32))(v12, v7, v14);
    v15 = sub_190998E00(v12, &unk_190DE2858, sub_19099A2C8, &unk_1F0410440, &unk_190DE2888);
    (*(v5 + 8))(v12, v14, v15);
  }

  v16 = (a2 + *(_s18TranslationSectionVMa(0) + 24));
  v17 = *v16;
  v18 = *(v16 + 1);
  v20[16] = v17;
  v21 = v18;
  v20[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  return sub_190D55FE0();
}

uint64_t sub_190998C30(uint64_t *a1, uint64_t a2)
{
  v4 = sub_190D519C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-v11];
  v13 = *a1;
  if (*a1 && v13 != 1)
  {
    v14 = v9;
    (*(v5 + 16))(v7, v13 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel_locale, v9, v10);
    (*(v5 + 32))(v12, v7, v14);
    v15 = sub_190998E00(v12, &unk_190DE27F8, sub_19099A100, &unk_1F04103F0, &unk_190DE2828);
    (*(v5 + 8))(v12, v14, v15);
  }

  v16 = (a2 + *(_s18TranslationSectionVMa(0) + 28));
  v17 = *v16;
  v18 = *(v16 + 1);
  v20[16] = v17;
  v21 = v18;
  v20[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  return sub_190D55FE0();
}

double sub_190998E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v6 = v5;
  v7 = _s18TranslationSectionVMa(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();
  v12 = v33;
  v13 = sub_190D518C0();
  v15 = v14;
  swift_getKeyPath();
  v29 = v12;
  v30 = v13;
  v31 = v15;
  v33 = v12;
  sub_19099A084(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C10();

  sub_190D577A0();
  if (sub_190D57790())
  {
    v16 = v6 + *(v7 + 32);
    v17 = *v16;
    v18 = *(v16 + 8);
    LOBYTE(v33) = v17;
    v34 = v18;
    v32 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
    sub_190D55FE0();
  }

  else
  {
    v20 = sub_190D572E0();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    sub_190999814(v6, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_190D572A0();
    v21 = sub_190D57290();
    v22 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    *(v23 + 16) = v21;
    *(v23 + 24) = v24;
    sub_190999878(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    sub_190857E08(0, 0, v11, v28, v23);
  }

  return result;
}

uint64_t sub_1909990F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_190D572A0();
  v4[4] = sub_190D57290();
  v6 = sub_190D57240();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19099918C, v6, v5);
}

uint64_t sub_19099918C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_190999240;

  return sub_190BB5F9C();
}

uint64_t sub_190999240()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_190999384, v3, v2);
}

uint64_t sub_190999384()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1909993E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_190D572A0();
  v4[6] = sub_190D57290();
  v6 = sub_190D57240();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19099947C, v6, v5);
}

uint64_t sub_19099947C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  sub_190D56320();
  v1 = v0[2];
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  v0[3] = v1;
  sub_19099A084(&qword_1EAD45C98, _s9ViewModelCMa_4, &unk_190DF8608);
  sub_190D51C10();

  sub_190D56320();
  v0[9] = v0[4];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_190999624;

  return sub_190BB5F9C();
}

uint64_t sub_190999624()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_19099AB84, v3, v2);
}

uint64_t sub_190999768()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58680, &qword_190DE26B8);
  sub_190233640(&qword_1EAD58688, &qword_1EAD58680, &qword_190DE26B8, MEMORY[0x1E6981F48]);
  return sub_190D562E0();
}

uint64_t sub_190999814(uint64_t a1, uint64_t a2)
{
  v4 = _s18TranslationSectionVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190999878(uint64_t a1, uint64_t a2)
{
  v4 = _s18TranslationSectionVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1909998FC()
{
  result = qword_1EAD586D8;
  if (!qword_1EAD586D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD586D0, &qword_190DE2700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD586D8);
  }

  return result;
}

unint64_t sub_190999978()
{
  result = qword_1EAD586F8;
  if (!qword_1EAD586F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD586F0, &qword_190DE2708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD586F8);
  }

  return result;
}

double sub_1909999F4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_190999A28()
{
  result = qword_1EAD58718;
  if (!qword_1EAD58718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58710, &unk_190DE2730);
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58718);
  }

  return result;
}

uint64_t sub_190999AF8(uint64_t a1)
{
  v4 = *(_s18TranslationSectionVMa(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA4;

  return sub_190998374(a1, v6, v7, v1 + v5);
}

void sub_190999BE8(unsigned __int8 *a1@<X8>)
{
  _s18TranslationSectionVMa(0);

  sub_1909963F0(a1);
}

void sub_190999C5C(_BYTE *a1)
{
  v3 = *(_s18TranslationSectionVMa(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1909964D8(a1, v4, v5, v6);
}

unint64_t sub_190999D04()
{
  result = qword_1EAD58760;
  if (!qword_1EAD58760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58728, &qword_190DE2758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58720, &qword_190DE2750);
    sub_190D548A0();
    sub_190233640(&qword_1EAD58758, &qword_1EAD58720, &qword_190DE2750, MEMORY[0x1E697D6A8]);
    sub_19099A084(&qword_1EAD61270, MEMORY[0x1E697C480], MEMORY[0x1E697C478]);
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD451E0, &qword_1EAD52FE8, &unk_190DDF770, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58760);
  }

  return result;
}

unint64_t sub_190999EE0()
{
  result = qword_1EAD58778;
  if (!qword_1EAD58778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58778);
  }

  return result;
}

double sub_190999FE0@<D0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  _s18TranslationSectionVMa(0);
  a1(v7);
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_19099A084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19099A120(uint64_t a1)
{
  v4 = *(_s18TranslationSectionVMa(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_1909990F4(a1, v6, v7, v1 + v5);
}

uint64_t sub_19099A244(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(_s18TranslationSectionVMa(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_19099A2E8(uint64_t a1)
{
  v4 = *(_s18TranslationSectionVMa(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_1909993E4(a1, v6, v7, v1 + v5);
}

uint64_t sub_19099A428()
{
  v1 = *(_s18TranslationSectionVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_190996EB0(v0 + v2, v4, v5);
}

uint64_t objectdestroyTm_12()
{
  v1 = *(_s18TranslationSectionVMa(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19099A610(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s18TranslationSectionVMa(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(_s18TranslationSectionVMa(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660, &unk_190DE2640);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19099A7B4(uint64_t a1)
{
  v4 = *(_s18TranslationSectionVMa(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_19099691C(a1, v6, v7, v1 + v5);
}

unint64_t sub_19099A8B0()
{
  result = qword_1EAD587C0;
  if (!qword_1EAD587C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD587B0, &qword_190DE2920);
    sub_19099A93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD587C0);
  }

  return result;
}

unint64_t sub_19099A93C()
{
  result = qword_1EAD587C8;
  if (!qword_1EAD587C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD587D0, &unk_190DE2930);
    sub_1908695F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD587C8);
  }

  return result;
}

unint64_t sub_19099A9C0()
{
  result = qword_1EAD587D8;
  if (!qword_1EAD587D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD587B8, &qword_190DE2928);
    sub_1908695F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD587D8);
  }

  return result;
}

unint64_t sub_19099AA68()
{
  result = qword_1EAD587E8;
  if (!qword_1EAD587E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD587F0, &qword_190DE2978);
    sub_190233640(&qword_1EAD58688, &qword_1EAD58680, &qword_190DE26B8, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD587E8);
  }

  return result;
}

uint64_t sub_19099AB88()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D8C8);
  __swift_project_value_buffer(v0, qword_1EAD9D8C8);
  sub_190D53010();
  return sub_190D53030();
}

void sub_19099ACAC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      sub_1902188FC(0, &qword_1EAD466B0, off_1E72E4B40);
      v4 = a1;
      v5 = sub_190D57D90();

      if (v5)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  if (qword_1EAD46B90 != -1)
  {
    swift_once();
  }

  v6 = sub_190D53040();
  __swift_project_value_buffer(v6, qword_1EAD9D8C8);
  v7 = a1;
  v8 = sub_190D53020();
  v9 = sub_190D576A0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    if (a1)
    {
      v12 = [v7 shortDescription];
      v13 = sub_190D56F10();
      v15 = v14;
    }

    else
    {
      v15 = 0xEF6E6F6974617372;
      v13 = 0x65766E6F43206F4ELL;
    }

    v16 = sub_19021D9F8(v13, v15, &v17);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_19020E000, v8, v9, "Setting conversation to %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x193AF7A40](v11, -1, -1);
    MEMORY[0x193AF7A40](v10, -1, -1);
  }

  sub_19099AEEC();
}

double sub_19099AEEC()
{
  v1 = v0;
  v2 = OBJC_IVAR___CKCustomAcknowledgementDebouncer_currentTasks;
  swift_beginAccess();
  if (*(*(v2 + v0) + 16) || (v3 = OBJC_IVAR___CKCustomAcknowledgementDebouncer_currentMessages, swift_beginAccess(), *(*(v1 + v3) + 16)))
  {
    if (qword_1EAD46B90 != -1)
    {
LABEL_30:
      swift_once();
    }

    v5 = sub_190D53040();
    __swift_project_value_buffer(v5, qword_1EAD9D8C8);
    v6 = sub_190D53020();
    v7 = sub_190D57680();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v6, v7, "Sending all pending messages", v8, 2u);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    v9 = *(v2 + v1);
    v12 = *(v9 + 64);
    v11 = v9 + 64;
    v10 = v12;
    v13 = 1 << *(*(v2 + v1) + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v10;
    v16 = (v13 + 63) >> 6;
    sub_190D52690();
    v17 = 0;
    v2 = &qword_190DD6530;
    if (v15)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v18 >= v16)
      {
        break;
      }

      v15 = *(v11 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        do
        {
LABEL_14:
          v15 &= v15 - 1;
          sub_190D50920();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020, &qword_190DD6530);
          sub_190D57330();
        }

        while (v15);
        continue;
      }
    }

    v19 = OBJC_IVAR___CKCustomAcknowledgementDebouncer_currentMessages;
    swift_beginAccess();
    v20 = *(v1 + v19);
    v2 = (v20 + 64);
    v21 = 1 << *(v20 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v20 + 64);
    v24 = (v21 + 63) >> 6;
    sub_190D52690();
    v25 = 0;
    if (v23)
    {
      while (1)
      {
        v26 = v25;
LABEL_24:
        v27 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v28 = (*(v20 + 48) + ((v26 << 10) | (16 * v27)));
        v29 = *v28;
        v30 = v28[1];
        sub_190D52690();
        sub_19099C7B8(v29, v30);

        if (!v23)
        {
          goto LABEL_20;
        }
      }
    }

    while (1)
    {
LABEL_20:
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_29;
      }

      if (v26 >= v24)
      {
        break;
      }

      v23 = v2[v26];
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_24;
      }
    }
  }

  return result;
}

void sub_19099B204(void *a1)
{
  v2 = sub_19099CC20(a1);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (qword_1EAD46B90 != -1)
    {
      swift_once();
    }

    v6 = sub_190D53040();
    __swift_project_value_buffer(v6, qword_1EAD9D8C8);
    sub_190D52690();
    v7 = sub_190D53020();
    v8 = sub_190D57680();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_19021D9F8(v4, v5, &v15);
      _os_log_impl(&dword_19020E000, v7, v8, "%s - starting task", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x193AF7A40](v10, -1, -1);
      MEMORY[0x193AF7A40](v9, -1, -1);
    }

    sub_19099B46C(v4, v5, a1);
  }

  else
  {
    if (qword_1EAD46B90 != -1)
    {
      swift_once();
    }

    v11 = sub_190D53040();
    __swift_project_value_buffer(v11, qword_1EAD9D8C8);
    oslog = sub_190D53020();
    v12 = sub_190D576A0();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_19020E000, oslog, v12, "Could not create key for message - missing bundle ID or associated message GUID", v13, 2u);
      MEMORY[0x193AF7A40](v13, -1, -1);
    }
  }
}

double sub_19099B46C(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = OBJC_IVAR___CKCustomAcknowledgementDebouncer_currentTasks;
  swift_beginAccess();
  if (*(*&v3[v11] + 16) && (sub_19022DCEC(a1, a2), (v12 & 1) != 0))
  {
    swift_endAccess();
    v13 = qword_1EAD46B90;
    sub_190D50920();
    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_190D53040();
    __swift_project_value_buffer(v14, qword_1EAD9D8C8);
    sub_190D52690();
    v15 = sub_190D53020();
    v16 = sub_190D576A0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = a3;
      v19 = v18;
      v35[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_19021D9F8(a1, a2, v35);
      _os_log_impl(&dword_19020E000, v15, v16, "%s - cancelling existing task", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      v20 = v19;
      a3 = v33;
      MEMORY[0x193AF7A40](v20, -1, -1);
      MEMORY[0x193AF7A40](v17, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020, &qword_190DD6530);
    sub_190D57330();
  }

  else
  {
    swift_endAccess();
  }

  v21 = sub_190D572E0();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  sub_190D572A0();
  sub_190D52690();
  v22 = v4;
  v23 = sub_190D57290();
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = a1;
  v24[5] = a2;
  v24[6] = v22;
  v26 = sub_1908590EC(0, 0, v10, &unk_190DE2988, v24);
  v27 = OBJC_IVAR___CKCustomAcknowledgementDebouncer_currentMessages;
  swift_beginAccess();
  sub_190D52690();
  v28 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *&v22[v27];
  *&v22[v27] = 0x8000000000000000;
  sub_190C1CD0C(v28, a1, a2, isUniquelyReferenced_nonNull_native);

  *&v22[v27] = v34;
  swift_endAccess();
  swift_beginAccess();
  sub_190D52690();
  sub_190D50920();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *&v4[v11];
  *&v4[v11] = 0x8000000000000000;
  sub_190C1CBC4(v26, a1, a2, v30);

  *&v4[v11] = v34;
  swift_endAccess();

  return result;
}

id CKCustomAcknowledgementDebouncer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  v1 = &v0[OBJC_IVAR___CKCustomAcknowledgementDebouncer_debounceInterval];
  *v1 = sub_190D58940();
  v1[1] = v2;
  v3 = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR___CKCustomAcknowledgementDebouncer_currentTasks] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR___CKCustomAcknowledgementDebouncer_currentMessages] = v3;
  swift_unknownObjectWeakInit();
  v5.receiver = v0;
  v5.super_class = CKCustomAcknowledgementDebouncer;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_19099BA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_190D57260();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = sub_190D58420();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  sub_190D572A0();
  v6[12] = sub_190D57290();
  v10 = sub_190D57240();
  v6[13] = v10;
  v6[14] = v9;

  return MEMORY[0x1EEE6DFA0](sub_19099BBB4, v10, v9);
}

uint64_t sub_19099BBB4()
{
  v19 = v0;
  if (qword_1EAD46B90 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_190D53040();
  v0[15] = __swift_project_value_buffer(v2, qword_1EAD9D8C8);
  sub_190D52690();
  v3 = v1;
  v4 = sub_190D53020();
  v5 = sub_190D57680();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_19021D9F8(v7, v6, v18);
    *(v8 + 12) = 2080;
    v10 = sub_190D58920();
    v12 = sub_19021D9F8(v10, v11, v18);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_19020E000, v4, v5, "%s - Starting messageSendDebounceTask - waiting for %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v9, -1, -1);
    MEMORY[0x193AF7A40](v8, -1, -1);
  }

  sub_190D57360();
  v13 = (v0[5] + OBJC_IVAR___CKCustomAcknowledgementDebouncer_debounceInterval);
  v15 = *v13;
  v14 = v13[1];
  sub_190D587F0();
  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v16[1] = sub_19099C154;

  return sub_190A5B780(v15, v14, 0, 0, 1);
}

uint64_t sub_19099C154()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  v3 = v2[14];
  v4 = v2[13];
  if (v0)
  {
    v5 = sub_19099C44C;
  }

  else
  {
    v5 = sub_19099C2DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_19099C2DC()
{
  v10 = v0;

  sub_190D52690();
  v1 = sub_190D53020();
  v2 = sub_190D57680();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_19021D9F8(v4, v3, &v9);
    _os_log_impl(&dword_19020E000, v1, v2, "%s - Task completing - sending message", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x193AF7A40](v6, -1, -1);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  sub_19099C7B8(v0[3], v0[4]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_19099C44C()
{
  v28 = v0;

  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020, &qword_190DD6530);
  if (swift_dynamicCast())
  {

    sub_190D52690();
    v3 = sub_190D53020();
    v4 = sub_190D57680();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 24);
      v5 = *(v0 + 32);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v27[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_19021D9F8(v6, v5, v27);
      _os_log_impl(&dword_19020E000, v3, v4, "%s - messageSendDebounceTask canceled", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x193AF7A40](v8, -1, -1);
      MEMORY[0x193AF7A40](v7, -1, -1);
    }

    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 48);
    sub_19099CDC0();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
    v13 = *(v0 + 16);
  }

  else
  {

    sub_190D52690();
    v14 = v1;
    v15 = sub_190D53020();
    v16 = sub_190D576A0();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v0 + 24);
      v17 = *(v0 + 32);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27[0] = v21;
      *v19 = 136315394;
      *(v19 + 4) = sub_19021D9F8(v18, v17, v27);
      *(v19 + 12) = 2112;
      v22 = v1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v23;
      *v20 = v23;
      _os_log_impl(&dword_19020E000, v15, v16, "%s - error sending messageSendDebounceTask - %@", v19, 0x16u);
      sub_190830D58(v20);
      MEMORY[0x193AF7A40](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x193AF7A40](v21, -1, -1);
      MEMORY[0x193AF7A40](v19, -1, -1);
    }

    sub_19099CDC0();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
    v13 = v1;
  }

  v25 = *(v0 + 8);

  return v25();
}

void sub_19099C7B8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___CKCustomAcknowledgementDebouncer_currentMessages;
  swift_beginAccess();
  v7 = *&v2[v6];
  if (*(v7 + 16) && (v8 = sub_19022DCEC(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    swift_beginAccess();
    v11 = v10;
    sub_190D52690();
    sub_190C3BC00(0, a1, a2);
    swift_endAccess();
    swift_beginAccess();
    sub_190D52690();
    sub_190C3BD58(0, a1, a2);
    swift_endAccess();
    if (qword_1EAD46B90 != -1)
    {
      swift_once();
    }

    v12 = sub_190D53040();
    __swift_project_value_buffer(v12, qword_1EAD9D8C8);
    sub_190D52690();
    v13 = sub_190D53020();
    v14 = sub_190D57680();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_19021D9F8(a1, a2, v24);
      _os_log_impl(&dword_19020E000, v13, v14, "%s - Sending custom acknowledgement", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x193AF7A40](v16, -1, -1);
      MEMORY[0x193AF7A40](v15, -1, -1);
    }

    v17 = [v3 conversation];
    if (v17)
    {
      v18 = v17;
      [v17 sendMessage:v11 newComposition:1];
    }
  }

  else
  {
    swift_endAccess();
    if (qword_1EAD46B90 != -1)
    {
      swift_once();
    }

    v19 = sub_190D53040();
    __swift_project_value_buffer(v19, qword_1EAD9D8C8);
    sub_190D52690();
    v20 = sub_190D53020();
    v21 = sub_190D576A0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_19021D9F8(a1, a2, v24);
      _os_log_impl(&dword_19020E000, v20, v21, "%s - No message for key!", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x193AF7A40](v23, -1, -1);
      MEMORY[0x193AF7A40](v22, -1, -1);
    }
  }
}

id sub_19099CC20(void *a1)
{
  result = [a1 balloonBundleID];
  if (result)
  {
    v3 = result;
    v4 = sub_190D56F10();

    v5 = [a1 associatedMessageGUID];
    if (v5)
    {
      v6 = v5;
      v7 = sub_190D56F10();
      v9 = v8;

      MEMORY[0x193AF28B0](45, 0xE100000000000000);
      MEMORY[0x193AF28B0](v7, v9);

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_19099CCF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_190221DA4;

  return sub_19099BA60(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_19099CDC0()
{
  result = qword_1EAD58820;
  if (!qword_1EAD58820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58820);
  }

  return result;
}

unint64_t sub_19099CE28()
{
  result = qword_1EAD58828;
  if (!qword_1EAD58828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58828);
  }

  return result;
}

uint64_t sub_19099CE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    v5 = *((*v2)() + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58838, &qword_190DE2B80);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58840, &qword_190DE2B88);
  v8 = (a2 + *(result + 36));
  *v8 = v5;
  v8[1] = 0;
  return result;
}

uint64_t sub_19099CF74()
{
  sub_190D58870();
  v1 = *(v0 + 16);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AF4130](*&v1);
  return sub_190D588C0();
}

uint64_t sub_19099CFEC()
{
  v1 = *(*v0 + 16);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x193AF4130](*&v1);
}

uint64_t sub_19099D02C(uint64_t a1)
{
  sub_190D58870();
  v2 = *(*v1 + 16);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x193AF4130](*&v2);
  return sub_190D588C0();
}

unint64_t sub_19099D0A0()
{
  result = qword_1EAD58830;
  if (!qword_1EAD58830)
  {
    type metadata accessor for ScootTrackingValue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58830);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ChatKit18ScootTrackingValueCIego_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19099D10C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_19099D168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_19099D1E4()
{
  result = qword_1EAD58848;
  if (!qword_1EAD58848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58840, &qword_190DE2B88);
    sub_19099D270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58848);
  }

  return result;
}

unint64_t sub_19099D270()
{
  result = qword_1EAD58850;
  if (!qword_1EAD58850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58838, &qword_190DE2B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58850);
  }

  return result;
}

void sub_19099D2D4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = 5;
  v10 = type metadata accessor for DetailsViewMediaSection(0, a4, a5, a4);
  v11 = &a6[*(v10 + 44)];
  sub_190D55FC0();
  *v11 = v18;
  *(v11 + 1) = v19;
  v12 = &a6[*(v10 + 48)];
  type metadata accessor for DetailsViewConfiguration(0);
  sub_19099E668(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  v13 = a1;
  sub_190D56340();
  type metadata accessor for DetailsMediaViewModel(0);
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtC7ChatKit21DetailsMediaViewModel_listRowInsets);
  *v15 = 0u;
  v15[1] = 0u;
  v16 = OBJC_IVAR____TtC7ChatKit21DetailsMediaViewModel_mediaSectionBackgroundColor;
  v17 = v13;
  *(v14 + v16) = sub_190D55DA0();
  sub_190D51C50();
  sub_190D51C50();
  *(v14 + 16) = v17;
  sub_19099E668(&unk_1EAD5A2C0, type metadata accessor for DetailsMediaViewModel, &unk_190DE6E60);
  sub_190D56340();

  *v12 = a2;
  v12[1] = a3;
}

uint64_t sub_19099D4A0()
{

  v1 = OBJC_IVAR____TtC7ChatKit21DetailsMediaViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_19099D518()
{
  v1 = OBJC_IVAR____TtC7ChatKit26DetailsConfiguredViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_190D50920();

  v3(v0 + OBJC_IVAR____TtC7ChatKit21DetailsMediaViewModel___observationRegistrar, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DetailsMediaViewModel(uint64_t a1)
{
  result = qword_1EAD58860;
  if (!qword_1EAD58860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19099D664(uint64_t a1, __n128 a2)
{
  result = sub_190D51C60();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_19099D70C(uint64_t a1)
{
  sub_19099D848(319, &qword_1EAD52C00, type metadata accessor for DetailsViewConfiguration);
  if (v1 <= 0x3F)
  {
    sub_19099D848(319, &qword_1EAD588F8, type metadata accessor for DetailsMediaViewModel);
    if (v2 <= 0x3F)
    {
      sub_1908CB188();
      if (v3 <= 0x3F)
      {
        sub_19081C950(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19099D848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_190D56360();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_19099D8E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  sub_190D55FD0();
  return v2;
}

uint64_t sub_19099D940(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  sub_190D55FF0();
  return v2;
}

uint64_t sub_19099D9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a2;
  v5 = *(a1 + 16);
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v47 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40, &qword_190DDB6B0);
  v49 = v5;
  v52 = sub_190D54200();
  v7 = sub_190D58050();
  v53 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v55 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v46 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v54 = v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58900, &qword_190DE2C58);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v46 - v16;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58908, &unk_190DE2C60);
  MEMORY[0x1EEE9AC00](v50);
  v51 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v46 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD58870, &qword_190DE2BC8);
  sub_190D56320();

  v22 = [objc_opt_self() detailsSearchControllers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56FB0, &qword_190DDEC30);
  v23 = sub_190D57180();

  v24 = *(v23 + 16);

  if (v24 && (v25 = sub_19099D8E0(a1), (v25 & 1) != 0))
  {
    v46[1] = v46;
    MEMORY[0x1EEE9AC00](v25);
    v26 = *(a1 + 24);
    v46[-4] = v49;
    v46[-3] = v26;
    v46[-2] = v3;
    type metadata accessor for DetailsSearchControllerRepresentable(0);
    sub_19099E668(&unk_1EAD56F88, type metadata accessor for DetailsSearchControllerRepresentable, &unk_190DDEB08);
    sub_190D562E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD58870, &qword_190DE2BC8);
    sub_190D56320();
    v27 = *(v60[0] + OBJC_IVAR____TtC7ChatKit21DetailsMediaViewModel_mediaSectionBackgroundColor);
    sub_190D50920();

    v60[0] = v27;
    v28 = sub_190D561E0();
    *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58928, &qword_190DE2C70) + 36)] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD58870, &qword_190DE2BC8);
    sub_190D56320();

    v29 = &v17[*(v14 + 36)];
    v29[32] = 0;
    *v29 = 0u;
    *(v29 + 1) = 0u;
    sub_19099E5F8(v17, v21);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v15 + 56))(v21, v30, 1, v14);
  v31 = *&v3[*(a1 + 48)];
  if (v31)
  {
    LOBYTE(v60[0]) = *v3;
    v32 = v47;
    v31(v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD58870, &qword_190DE2BC8);
    sub_190D56320();

    v33 = [objc_opt_self() currentDevice];
    v34 = [v33 userInterfaceIdiom];

    if (v34 == 5)
    {
      v35 = sub_190D55DA0();
    }

    else
    {
      v35 = 0;
    }

    v60[0] = v35;
    v36 = *(a1 + 24);
    v37 = v49;
    sub_190D55940();

    (*(v48 + 8))(v32, v37);
    (*(*(v52 - 8) + 56))(v11, 0, 1, v52);
  }

  else
  {
    (*(*(v52 - 8) + 56))(v11, 1, 1, v52);
    v36 = *(a1 + 24);
  }

  v38 = sub_19099E530(&unk_1EAD52250, &qword_1EAD55E40, &qword_190DDB6B0);
  v60[3] = v36;
  v60[4] = v38;
  v60[2] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v40 = v54;
  sub_19096BC74();
  v41 = v53;
  v42 = *(v53 + 8);
  v42(v11, v7);
  v43 = v51;
  sub_19099E234(v21, v51);
  v60[0] = v43;
  v44 = v55;
  (*(v41 + 16))(v55, v40, v7);
  v60[1] = v44;
  v59[0] = v50;
  v59[1] = v7;
  v57 = sub_19099E2A4();
  v58 = WitnessTable;
  sub_190B74A3C(v60, 2uLL, v59);
  v42(v40, v7);
  sub_19099E584(v21);
  v42(v44, v7);
  return sub_19099E584(v43);
}

uint64_t sub_19099E144@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for DetailsViewMediaSection(0, a1, a2, a3);
  v6 = sub_19099D940(v5);
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
  sub_190D56320();
  *a4 = v6;
  *(a4 + 8) = v8;
  *(a4 + 16) = v10 & 1;
  type metadata accessor for DetailsSearchControllerRepresentable(0);
  type metadata accessor for DetailsViewConfiguration(0);
  sub_19099E668(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  return sub_190D56340();
}

uint64_t sub_19099E234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58908, &unk_190DE2C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19099E2A4()
{
  result = qword_1EAD58910;
  if (!qword_1EAD58910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58908, &unk_190DE2C60);
    sub_19099E328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58910);
  }

  return result;
}

unint64_t sub_19099E328()
{
  result = qword_1EAD58918;
  if (!qword_1EAD58918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58900, &qword_190DE2C58);
    sub_19099E3CC();
    sub_19099E530(&unk_1EAD52E20, &qword_1EAD594B0, &qword_190DD3C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58918);
  }

  return result;
}

unint64_t sub_19099E3CC()
{
  result = qword_1EAD58920;
  if (!qword_1EAD58920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58928, &qword_190DE2C70);
    sub_19099E470();
    sub_19099E530(&unk_1EAD52250, &qword_1EAD55E40, &qword_190DDB6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58920);
  }

  return result;
}

unint64_t sub_19099E470()
{
  result = qword_1EAD58930;
  if (!qword_1EAD58930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58938, &qword_190DE2C78);
    sub_19099E668(&unk_1EAD56F88, type metadata accessor for DetailsSearchControllerRepresentable, &unk_190DDEB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58930);
  }

  return result;
}

uint64_t sub_19099E530(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19099E584(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58908, &unk_190DE2C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19099E5F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58900, &qword_190DE2C58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19099E668(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_19099E6B0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53838, &unk_190DF1300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  *(inited + 32) = sub_190D56F10();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_190D52690();
  v6 = sub_190820FDC(inited);
  swift_setDeallocating();
  sub_19099F008(inited + 32);
  v7 = [objc_opt_self() sharedInstance];
  if (v7)
  {
    v8 = v7;
    v9 = *MEMORY[0x1E69A7688];
    sub_190A8EC70(v6);

    v10 = sub_190D56D60();

    [v8 trackEvent:v9 withDictionary:v10];
  }

  else
  {
    __break(1u);
  }
}

void sub_19099E808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53838, &unk_190DF1300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1DA0;
  *(inited + 32) = sub_190D56F10();
  *(inited + 40) = v6;
  v7 = sub_190D58080();
  *(inited + 72) = sub_19021DC70();
  *(inited + 48) = v7;
  *(inited + 80) = sub_190D56F10();
  *(inited + 88) = v8;
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  sub_190D52690();
  v9 = sub_190820FDC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DF00, &qword_190DD5610);
  swift_arrayDestroy();
  v10 = [objc_opt_self() sharedInstance];
  if (v10)
  {
    v11 = v10;
    v12 = *MEMORY[0x1E69A7570];
    sub_190A8EC70(v9);

    v13 = sub_190D56D60();

    [v11 trackEvent:v12 withDictionary:v13];
  }

  else
  {
    __break(1u);
  }
}

double sub_19099E9B8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  if (qword_1EAD45860 != -1)
  {
    swift_once();
  }

  v6 = qword_1EAD45868 == v3 && qword_1EAD45870 == v5;
  if (v6 || (sub_190D58760() & 1) != 0)
  {
    goto LABEL_8;
  }

  if (qword_1EAD45AF8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EAD45B00 == v3 && *algn_1EAD45B08 == v5;
  if (v10 || (sub_190D58760() & 1) != 0)
  {
    goto LABEL_17;
  }

  if (qword_1EAD45890 != -1)
  {
    swift_once();
  }

  if (qword_1EAD45898 == v3 && qword_1EAD458A0 == v5 || (sub_190D58760() & 1) != 0)
  {
    goto LABEL_17;
  }

  if (qword_1EAD45828 != -1)
  {
    swift_once();
  }

  if (qword_1EAD45830 == v3 && *algn_1EAD45838 == v5 || (sub_190D58760() & 1) != 0)
  {
    v14 = IMStickersExtensionIdentifier();
    if (v14)
    {
      v15 = v14;

      v16 = sub_190D56F10();
      v18 = v17;

      v11 = v16;
      v12 = v18;
      goto LABEL_18;
    }

    __break(1u);
  }

  else
  {
    if (qword_1EAD459A0 != -1)
    {
      swift_once();
    }

    if (qword_1EAD459A8 == v3 && qword_1EAD459B0 == v5 || (sub_190D58760() & 1) != 0)
    {
      goto LABEL_17;
    }

    if (qword_1EAD45A08 != -1)
    {
      swift_once();
    }

    if (qword_1EAD45A10 == v3 && *algn_1EAD45A18 == v5 || (sub_190D58760() & 1) != 0)
    {
      goto LABEL_17;
    }

    if (qword_1EAD458A8 != -1)
    {
      swift_once();
    }

    if (qword_1EAD458B0 == v3 && *algn_1EAD458B8 == v5 || (sub_190D58760() & 1) != 0)
    {
      goto LABEL_17;
    }

    if (qword_1EAD45920 != -1)
    {
      swift_once();
    }

    if (qword_1EAD45928 == v3 && qword_1EAD45930 == v5 || (sub_190D58760() & 1) != 0)
    {
      goto LABEL_17;
    }

    if (qword_1EAD46160 == -1)
    {
      goto LABEL_60;
    }
  }

  swift_once();
LABEL_60:
  if (qword_1EAD46168 == v3 && *algn_1EAD46170 == v5 || (sub_190D58760() & 1) != 0)
  {
    goto LABEL_17;
  }

  if (qword_1EAD453B8 != -1)
  {
    swift_once();
  }

  if (qword_1EAD453C0 == v3 && *algn_1EAD453C8 == v5 || (sub_190D58760() & 1) != 0)
  {
    goto LABEL_17;
  }

  if (qword_1EAD458D8 != -1)
  {
    swift_once();
  }

  if (qword_1EAD458E0 == v3 && *algn_1EAD458E8 == v5 || (sub_190D58760() & 1) != 0)
  {
LABEL_17:

    v11 = sub_190D56F10();
LABEL_18:
    sub_19099E6B0(v11, v12);
    goto LABEL_19;
  }

  if (qword_1EAD45840 != -1)
  {
    swift_once();
  }

  if (qword_1EAD45848 != v3 || *algn_1EAD45850 != v5)
  {
    v19 = sub_190D58760();

    if ((v19 & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_8:

LABEL_9:
  v7 = sub_190D56F10();
  v9 = v8;
  sub_19099E6B0(v7, v8);
  sub_19099E808(v7, v9, 1);
LABEL_19:

  return result;
}

uint64_t sub_19099F008(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DF00, &qword_190DD5610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double DetailsViewCoordinator.detailsViewController(_:didUpdateSelectedTab:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_190D52860();
    v4 = sub_190D56ED0();

    [v3 detailsCoordinator:v0 didUpdateSelectedTabID:v4];

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DetailsViewCoordinator.detailsViewController(_:shouldEnableCustomQuickAction:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1909A0088;

  return sub_19099F978(a2);
}

uint64_t DetailsViewCoordinator.detailsViewController(_:shouldAllowGroupActionHandlingForQuickAction:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_190D52A90();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a2, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E6995838] || v8 == *MEMORY[0x1E6995850])
  {
    return 1;
  }

  if (v8 == *MEMORY[0x1E6995840] || v8 == *MEMORY[0x1E6995848])
  {
    if (IMDeviceIsGreenTea())
    {
      return 0;
    }

    else
    {
      return [objc_opt_self() IMDeviceIsChinaRegion] ^ 1;
    }
  }

  else
  {
    result = sub_190D58750();
    __break(1u);
  }

  return result;
}

double DetailsViewCoordinator.detailsViewControllerDidDismiss(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong detailsCoordinatorDidDismiss_];

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_19099F3FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_190D52860();
    v4 = sub_190D56ED0();

    [v3 detailsCoordinator:v0 didUpdateSelectedTabID:v4];

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_19099F4A4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19082CAEC;

  return sub_19099F978(a2);
}

uint64_t sub_19099F550(uint64_t a1, uint64_t a2)
{
  v3 = sub_190D52A90();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a2, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E6995838] || v8 == *MEMORY[0x1E6995850])
  {
    return 1;
  }

  if (v8 == *MEMORY[0x1E6995840] || v8 == *MEMORY[0x1E6995848])
  {
    if (IMDeviceIsGreenTea())
    {
      return 0;
    }

    else
    {
      return [objc_opt_self() IMDeviceIsChinaRegion] ^ 1;
    }
  }

  else
  {
    result = sub_190D58750();
    __break(1u);
  }

  return result;
}

double sub_19099F6B8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong detailsCoordinatorDidDismiss_];

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_19099F720(uint64_t a1)
{
  v3 = sub_190D52A90();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E6995838])
  {
    v9 = *(v1 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_modernScreenSharingCapabilities);
    v10 = *(v1 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
    sub_190D52690();
    v11 = 1;
LABEL_5:
    sub_190A0BA58(v11, v9);

    return;
  }

  if (v8 == *MEMORY[0x1E6995850])
  {
    v9 = *(v1 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_modernScreenSharingCapabilities);
    v10 = *(v1 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
    sub_190D52690();
    v11 = 2;
    goto LABEL_5;
  }

  if (v8 == *MEMORY[0x1E6995840])
  {
    v12 = *(v1 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
    v13 = [v12 chat];
    if (v13)
    {
      v14 = v13;
      [v13 initiateTUConversationWithVideoEnabled_];
LABEL_12:
    }
  }

  else
  {
    if (v8 != *MEMORY[0x1E6995848])
    {
      sub_190D58750();
      __break(1u);
      return;
    }

    v12 = *(v1 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
    v15 = [v12 chat];
    if (v15)
    {
      v14 = v15;
      [v15 initiateTUConversationWithVideoEnabled_];
      goto LABEL_12;
    }
  }
}

uint64_t sub_19099F978(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_190D52A90();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = sub_190D572A0();
  v2[13] = sub_190D57290();
  v5 = sub_190D57240();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19099FA70, v5, v4);
}

uint64_t sub_19099FA70()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v2 + 16))(v1, v0[7], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E6995838] || v4 == *MEMORY[0x1E6995850])
  {
    v6 = [*(v0[8] + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation) recipients];
    v7 = sub_190D57180();

    if (!*(v7 + 16))
    {

      goto LABEL_15;
    }

    sub_19021834C(v7 + 32, (v0 + 2));

    sub_19084E158();
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_13:

LABEL_15:

      v10 = v0[1];

      return v10(0);
    }

    v0[16] = v0[6];
    v0[17] = sub_190D57290();
    v9 = sub_190D57240();
    v0[18] = v9;
    v0[19] = v8;

    return MEMORY[0x1EEE6DFA0](sub_19099FCA4, v9, v8);
  }

  else
  {
    if (v4 == *MEMORY[0x1E6995840] || v4 == *MEMORY[0x1E6995848])
    {
      goto LABEL_13;
    }

    return sub_190D58750();
  }
}

uint64_t sub_19099FCA4()
{
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_modernScreenSharingCapabilities;
  *(v0 + 160) = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_modernScreenSharingCapabilities;
  if (*(*(v1 + v2) + 16))
  {

    v3 = *(v0 + 128);
    v4 = objc_opt_self();
    sub_190D52690();
    v5 = sub_190D56D60();

    *(v0 + 176) = [v4 isModernScreenSharingAvailableForEntity:v3 capabilities:v5];

    v6 = *(v0 + 112);
    v7 = *(v0 + 120);

    return MEMORY[0x1EEE6DFA0](sub_1909A0010, v6, v7);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 168) = v8;
    *v8 = v0;
    v8[1] = sub_19099FE10;

    return sub_190BE6CC8();
  }
}

uint64_t sub_19099FE10()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_19099FF30, v3, v2);
}

uint64_t sub_19099FF30()
{

  v1 = *(v0 + 128);
  v2 = objc_opt_self();
  sub_190D52690();
  v3 = sub_190D56D60();

  *(v0 + 176) = [v2 isModernScreenSharingAvailableForEntity:v1 capabilities:v3];

  v4 = *(v0 + 112);
  v5 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1909A0010, v4, v5);
}

uint64_t sub_1909A0010()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1909A008C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v19 = a2;
  v5 = sub_190D56BB0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D56B90();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v3 defaultBubbleColor];
  v15 = [v3 resolvedColor:v14 forTraitCollection:a1];
  if ([a1 isTranscriptBackgroundActive])
  {
    [v3 transcriptBackgroundLuminance];
    sub_190D56B10();
    v16 = [v3 traitCollection];
    sub_190D56BA0();

    (*(v6 + 8))(v8, v5);
    (*(v10 + 32))(v19, v13, v9);
    type metadata accessor for CKTypingIndicatorBackgroundLayer.FillStyle(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {

    *v19 = v15;
    type metadata accessor for CKTypingIndicatorBackgroundLayer.FillStyle(0);

    return swift_storeEnumTagMultiPayload();
  }
}

void CKTypingIndicatorLayer.setUpMaterialLayers(for:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = -*(a1 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultBackgroundLayerOutset);
  [swift_getObjCClassFromMetadata() defaultSize];
  v15.size.width = v4;
  v15.size.height = v5;
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v16 = CGRectInset(v15, v3, v3);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v10 = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v11 = sub_190D56ED0();
  [v10 setGroupName_];

  [v10 setCaptureOnly_];
  [v10 setFrame_];
  [v1 addSublayer_];
  [v1 setCaptureLayer_];
  v12 = [objc_allocWithZone(type metadata accessor for CKTypingIndicatorVibrancyLayer()) init];
  [v12 setFrame_];
  [v1 addSublayer_];
  [v1 setVibrancyLayer_];
  v13 = [objc_allocWithZone(type metadata accessor for CKTypingIndicatorBackgroundLayer(0)) init];
  [v13 setFrame_];
  [v1 addSublayer_];
  [v1 setBackgroundLayer_];
}

void CKTypingIndicatorLayer.resizeBackgroundSublayers(for:)(uint64_t a1)
{
  swift_getObjectType();
  if ([v1 iconImage])
  {
    sub_190D58140();
    swift_unknownObjectRelease();
    v3 = 32.0;
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v3 = 0.0;
  }

  sub_19022EEA4(v13, &unk_1EAD551C0, &unk_190DD9790);
  [swift_getObjCClassFromMetadata() defaultSize];
  v14.size.height = v4;
  v14.size.width = v3 + v5;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v15 = CGRectInset(v14, -*(a1 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultBackgroundLayerOutset), -*(a1 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultBackgroundLayerOutset));
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v10 = [v1 vibrancyLayer];
  [v10 setFrame_];

  v11 = [v1 backgroundLayer];
  [v11 setFrame_];

  v12 = [v1 captureLayer];
  [v12 setFrame_];
}

Swift::Void __swiftcall CKTypingIndicatorLayer.updateMaterials()()
{
  v1 = v0;
  v2 = sub_190D56B90();
  v48 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58940, qword_190DE2CE8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for CKTypingIndicatorBackgroundLayer.FillStyle(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = (&v47 - v18);
  v20 = [v0 traitCollection];
  sub_1909A008C(v20, v19);
  sub_1909A0E24(v19, v15);
  v54 = v10;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1909A0E88(v15);
  v52 = [v0 defaultThinkingDotColor];
  v53 = v20;
  v21 = [v0 resolvedColor_forTraitCollection_];
  [v1 setThinkingDotColor_];

  v22 = [v1 thinkingDot];
  if (v22)
  {
    v23 = v22;
    v24 = [v1 thinkingDotColor];
    v25 = [v24 CGColor];

    [v23 setBackgroundColor_];
  }

  v26 = [v1 backgroundLayer];
  type metadata accessor for CKTypingIndicatorBackgroundLayer(0);
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    sub_1909A0E24(v19, v9);
    (*(v11 + 56))(v9, 0, 1, v54);
    v47 = v19;
    v29 = v2;
    v30 = OBJC_IVAR____TtC7ChatKit32CKTypingIndicatorBackgroundLayer_fillStyle;
    swift_beginAccess();
    v31 = v49;
    sub_19022FD14(v28 + v30, v49, &qword_1EAD58940, qword_190DE2CE8);
    swift_beginAccess();
    v32 = v28 + v30;
    v2 = v29;
    v19 = v47;
    sub_1909A3464(v9, v32, &qword_1EAD58940, qword_190DE2CE8);
    swift_endAccess();
    sub_1909A1694(v31);

    sub_19022EEA4(v31, &qword_1EAD58940, qword_190DE2CE8);
    sub_19022EEA4(v9, &qword_1EAD58940, qword_190DE2CE8);
  }

  else
  {
  }

  v33 = v53;
  v34 = EnumCaseMultiPayload;
  v35 = [v1 vibrancyLayer];
  type metadata accessor for CKTypingIndicatorVibrancyLayer();
  v36 = swift_dynamicCastClass();
  if (v36)
  {
    v37 = v36;
    v38 = [v33 userInterfaceStyle];
    if (((v34 == 1) ^ *(v37 + OBJC_IVAR____TtC7ChatKit30CKTypingIndicatorVibrancyLayer_isVibrancyActive)))
    {
      *(v37 + OBJC_IVAR____TtC7ChatKit30CKTypingIndicatorVibrancyLayer_isVibrancyActive) = v34 == 1;
      *(v37 + OBJC_IVAR____TtC7ChatKit30CKTypingIndicatorVibrancyLayer_userInterfaceStyle) = v38;
    }

    else
    {
      v39 = *(v37 + OBJC_IVAR____TtC7ChatKit30CKTypingIndicatorVibrancyLayer_userInterfaceStyle);
      *(v37 + OBJC_IVAR____TtC7ChatKit30CKTypingIndicatorVibrancyLayer_isVibrancyActive) = v34 == 1;
      *(v37 + OBJC_IVAR____TtC7ChatKit30CKTypingIndicatorVibrancyLayer_userInterfaceStyle) = v38;
      if (v39 == v38)
      {
        goto LABEL_11;
      }
    }

    sub_1909A13FC();
  }

LABEL_11:

  v40 = [v1 captureLayer];
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (v41)
  {
    v42 = v41;
    v43 = v50;
    sub_1909A0E24(v19, v50);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = v48;
      (*(v48 + 32))(v4, v43, v2);
      sub_190D56B40();
      [v42 setScale_];
      v45 = v40;
      [v42 setHidden_];

      (*(v44 + 8))(v4, v2);
    }

    else
    {
      sub_1909A0E88(v43);
      v46 = v40;
      [v42 setHidden_];
    }
  }

  else
  {
  }

  sub_1909A0E88(v19);
}

uint64_t sub_1909A0E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKTypingIndicatorBackgroundLayer.FillStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909A0E88(uint64_t a1)
{
  v2 = type metadata accessor for CKTypingIndicatorBackgroundLayer.FillStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CKTypingIndicatorLayer.updateBackgroundOpacity(_:)(double a1)
{
  v3 = type metadata accessor for CKTypingIndicatorBackgroundLayer.FillStyle(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = (&v19 - v8);
  v10 = [v1 traitCollection];
  sub_1909A008C(v10, v9);

  sub_1909A0E24(v9, v5);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v13 = *v5;
    v14 = [v1 backgroundLayer];
    LODWORD(v15) = 1.0;
    [v14 setOpacity_];

    v16 = [v1 backgroundLayer];
    v17 = [v13 colorWithAlphaComponent_];
    v11 = [v17 CGColor];

    [v16 setBackgroundColor_];
  }

  else
  {
    sub_1909A0E88(v5);
    v11 = [v1 backgroundLayer];
    *&v12 = a1;
    [v11 setOpacity_];
  }

  return sub_1909A0E88(v9);
}

id sub_1909A115C()
{
  v0[OBJC_IVAR____TtC7ChatKit30CKTypingIndicatorVibrancyLayer_isVibrancyActive] = 1;
  *&v0[OBJC_IVAR____TtC7ChatKit30CKTypingIndicatorVibrancyLayer_userInterfaceStyle] = 2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CKTypingIndicatorVibrancyLayer();
  v1 = objc_msgSendSuper2(&v4, sel_init);
  v2 = sub_190D56ED0();
  [v1 setName_];

  sub_1909A13FC();
  [v1 setAllowsGroupOpacity_];

  return v1;
}

void *sub_1909A1244(void *a1)
{
  v1[OBJC_IVAR____TtC7ChatKit30CKTypingIndicatorVibrancyLayer_isVibrancyActive] = 1;
  v3 = OBJC_IVAR____TtC7ChatKit30CKTypingIndicatorVibrancyLayer_userInterfaceStyle;
  *&v1[OBJC_IVAR____TtC7ChatKit30CKTypingIndicatorVibrancyLayer_userInterfaceStyle] = 2;
  sub_19021834C(a1, v11);
  v4 = type metadata accessor for CKTypingIndicatorVibrancyLayer();
  swift_dynamicCast();
  v5 = v10;
  *&v1[v3] = *&v10[OBJC_IVAR____TtC7ChatKit30CKTypingIndicatorVibrancyLayer_userInterfaceStyle];
  v9.receiver = v1;
  v9.super_class = v4;
  v6 = objc_msgSendSuper2(&v9, sel_initWithLayer_, v5);
  v7 = sub_190D56ED0();
  [v6 setName_];

  sub_1909A13FC();
  [v6 setAllowsGroupOpacity_];

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

void sub_1909A13FC()
{
  if (v0[OBJC_IVAR____TtC7ChatKit30CKTypingIndicatorVibrancyLayer_isVibrancyActive] != 1)
  {
LABEL_9:
    v7 = sub_190D57160();
    [v0 setFilters_];

    [v0 setBackgroundColor_];
    return;
  }

  v1 = [objc_opt_self() sharedBehaviors];
  if (!v1)
  {
    __break(1u);
    goto LABEL_20;
  }

  v2 = v1;
  v13 = [v1 theme];

  if (!v13)
  {
    return;
  }

  v3 = [objc_opt_self() blackColor];
  v4 = [v3 CGColor];

  [v0 setBackgroundColor_];
  v5 = *&v0[OBJC_IVAR____TtC7ChatKit30CKTypingIndicatorVibrancyLayer_userInterfaceStyle];
  if (v5 == 2)
  {
LABEL_7:
    v6 = [v13 darkBalloonOutlineVibrancyFilter];
    if (!v6)
    {
      __break(1u);
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (v5 != 1)
  {
    if (v5)
    {
      v11 = v13;
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  v6 = [v13 lightBalloonOutlineVibrancyFilter];
  if (!v6)
  {
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90, &qword_190DD63C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_190DD1D90;
  *(v9 + 56) = sub_1902188FC(0, &qword_1ED7769D0, 0x1E6979378);
  *(v9 + 32) = v8;
  v12 = v8;
  v10 = sub_190D57160();

  [v0 setFilters_];

  v11 = v12;
LABEL_16:
}

uint64_t sub_1909A1694(uint64_t a1)
{
  v20 = a1;
  v2 = type metadata accessor for CKTypingIndicatorBackgroundLayer.FillStyle(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58940, qword_190DE2CE8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD589C8, qword_190DE2DD0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC7ChatKit32CKTypingIndicatorBackgroundLayer_fillStyle;
  swift_beginAccess();
  v14 = *(v10 + 56);
  v19 = v1;
  sub_19022FD14(v1 + v13, v12, &qword_1EAD58940, qword_190DE2CE8);
  sub_19022FD14(v20, &v12[v14], &qword_1EAD58940, qword_190DE2CE8);
  v15 = *(v3 + 48);
  if (v15(v12, 1, v2) == 1)
  {
    if (v15(&v12[v14], 1, v2) == 1)
    {
      return sub_19022EEA4(v12, &qword_1EAD58940, qword_190DE2CE8);
    }

    goto LABEL_6;
  }

  sub_19022FD14(v12, v8, &qword_1EAD58940, qword_190DE2CE8);
  if (v15(&v12[v14], 1, v2) == 1)
  {
    sub_1909A0E88(v8);
LABEL_6:
    sub_19022EEA4(v12, &qword_1EAD589C8, qword_190DE2DD0);
    return sub_1909A1CCC();
  }

  sub_1909A3400(&v12[v14], v5);
  v17 = sub_1909A3070(v8, v5);
  sub_1909A0E88(v5);
  sub_1909A0E88(v8);
  result = sub_19022EEA4(v12, &qword_1EAD58940, qword_190DE2CE8);
  if ((v17 & 1) == 0)
  {
    return sub_1909A1CCC();
  }

  return result;
}

id sub_1909A1954()
{
  *&v0[OBJC_IVAR____TtC7ChatKit32CKTypingIndicatorBackgroundLayer_backgroundLayer] = 0;
  v1 = OBJC_IVAR____TtC7ChatKit32CKTypingIndicatorBackgroundLayer_fillStyle;
  v2 = type metadata accessor for CKTypingIndicatorBackgroundLayer.FillStyle(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CKTypingIndicatorBackgroundLayer(0);
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = sub_190D56ED0();
  [v3 setName_];

  [v3 setAllowsGroupOpacity_];
  return v3;
}

void *sub_1909A1A70(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit32CKTypingIndicatorBackgroundLayer_backgroundLayer] = 0;
  v3 = OBJC_IVAR____TtC7ChatKit32CKTypingIndicatorBackgroundLayer_fillStyle;
  v4 = type metadata accessor for CKTypingIndicatorBackgroundLayer.FillStyle(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  sub_19021834C(a1, v11);
  v5 = type metadata accessor for CKTypingIndicatorBackgroundLayer(0);
  swift_dynamicCast();
  v6 = v10;
  v9.receiver = v1;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_initWithLayer_, v10);
  [v7 setAllowsGroupOpacity_];

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1909A1CCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD589B0, &qword_190DE2DC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v35 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v34 - v4;
  v5 = sub_190D56B90();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58940, qword_190DE2CE8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for CKTypingIndicatorBackgroundLayer.FillStyle(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v34 - v16;
  v18 = OBJC_IVAR____TtC7ChatKit32CKTypingIndicatorBackgroundLayer_backgroundLayer;
  [*&v0[OBJC_IVAR____TtC7ChatKit32CKTypingIndicatorBackgroundLayer_backgroundLayer] removeFromSuperlayer];
  v19 = *&v0[v18];
  *&v0[v18] = 0;

  v20 = OBJC_IVAR____TtC7ChatKit32CKTypingIndicatorBackgroundLayer_fillStyle;
  swift_beginAccess();
  sub_19022FD14(&v0[v20], v9, &qword_1EAD58940, qword_190DE2CE8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_19022EEA4(v9, &qword_1EAD58940, qword_190DE2CE8);
  }

  sub_1909A3400(v9, v17);
  sub_1909A0E24(v17, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = v36;
      v23 = v37;
      v25 = v38;
      (*(v36 + 32))(v38, v13, v37);
      v26 = [objc_allocWithZone(type metadata accessor for CKTypingIndicatorMaterialLayer(0)) init];
      v27 = v34;
      (*(v24 + 16))(v34, v25, v23);
      (*(v24 + 56))(v27, 0, 1, v23);
      v28 = OBJC_IVAR____TtC7ChatKitP33_874D58ACA4552234FF592E04B3E283C730CKTypingIndicatorMaterialLayer_material;
      swift_beginAccess();
      v29 = v35;
      sub_19022FD14(v26 + v28, v35, &qword_1EAD589B0, &qword_190DE2DC0);
      swift_beginAccess();
      sub_1909A3464(v27, v26 + v28, &qword_1EAD589B0, &qword_190DE2DC0);
      swift_endAccess();
      sub_1909A2260(v29);
      sub_19022EEA4(v29, &qword_1EAD589B0, &qword_190DE2DC0);
      sub_19022EEA4(v27, &qword_1EAD589B0, &qword_190DE2DC0);
      [v0 addSublayer_];
      (*(v24 + 8))(v38, v23);
      v30 = *&v0[v18];
      *&v0[v18] = v26;
    }

    else
    {
      v30 = *v13;
    }
  }

  else
  {
    v31 = *v13;
    v32 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    v33 = [v31 CGColor];
    [v32 setBackgroundColor_];

    [v0 addSublayer_];
    v30 = *&v0[v18];
    *&v0[v18] = v32;
  }

  [v0 setNeedsLayout];
  return sub_1909A0E88(v17);
}

id sub_1909A21D8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1909A2260(uint64_t a1)
{
  v3 = sub_190D56B90();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD589B0, &qword_190DE2DC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD589B8, &qword_190DE2DC8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC7ChatKitP33_874D58ACA4552234FF592E04B3E283C730CKTypingIndicatorMaterialLayer_material;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_19022FD14(v1 + v13, v12, &qword_1EAD589B0, &qword_190DE2DC0);
  sub_19022FD14(a1, &v12[v14], &qword_1EAD589B0, &qword_190DE2DC0);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_19022EEA4(v12, &qword_1EAD589B0, &qword_190DE2DC0);
    }

    goto LABEL_6;
  }

  sub_19022FD14(v12, v8, &qword_1EAD589B0, &qword_190DE2DC0);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_19022EEA4(v12, &qword_1EAD589B8, &qword_190DE2DC8);
    return [v1 setNeedsLayout];
  }

  v17 = v20;
  (*(v4 + 32))(v20, &v12[v14], v3);
  sub_1909A34CC();
  v18 = sub_190D56E30();
  v19 = *(v4 + 8);
  v19(v17, v3);
  v19(v8, v3);
  result = sub_19022EEA4(v12, &qword_1EAD589B0, &qword_190DE2DC0);
  if ((v18 & 1) == 0)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_1909A2588()
{
  v1 = OBJC_IVAR____TtC7ChatKitP33_874D58ACA4552234FF592E04B3E283C730CKTypingIndicatorMaterialLayer_material;
  v2 = sub_190D56B90();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CKTypingIndicatorMaterialLayer(0);
  v3 = objc_msgSendSuper2(&v7, sel_init);
  v4 = sub_190D56ED0();
  [v3 setName_];

  v5 = sub_190D56ED0();
  [v3 setGroupName_];

  return v3;
}

void *sub_1909A26CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD589B0, &qword_190DE2DC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC7ChatKitP33_874D58ACA4552234FF592E04B3E283C730CKTypingIndicatorMaterialLayer_material;
  v7 = sub_190D56B90();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  sub_19021834C(a1, v17);
  v8 = type metadata accessor for CKTypingIndicatorMaterialLayer(0);
  swift_dynamicCast();
  v9 = v16;
  v10 = OBJC_IVAR____TtC7ChatKitP33_874D58ACA4552234FF592E04B3E283C730CKTypingIndicatorMaterialLayer_material;
  swift_beginAccess();
  sub_19022FD14(v9 + v10, v5, &qword_1EAD589B0, &qword_190DE2DC0);
  swift_beginAccess();
  sub_1909A3390(v5, &v1[v6]);
  swift_endAccess();
  v15.receiver = v1;
  v15.super_class = v8;
  v11 = objc_msgSendSuper2(&v15, sel_initWithLayer_, v9);
  v12 = sub_190D56ED0();
  [v11 setGroupName_];

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t sub_1909A28D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  return a4(&v6);
}

void sub_1909A29E8()
{
  v1 = v0;
  v2 = sub_190D56B90();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD589B0, &qword_190DE2DC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for CKTypingIndicatorMaterialLayer(0);
  v22.receiver = v1;
  v22.super_class = v12;
  objc_msgSendSuper2(&v22, sel_layoutSublayers);
  v13 = OBJC_IVAR____TtC7ChatKitP33_874D58ACA4552234FF592E04B3E283C730CKTypingIndicatorMaterialLayer_material;
  swift_beginAccess();
  sub_19022FD14(v1 + v13, v11, &qword_1EAD589B0, &qword_190DE2DC0);
  v14 = *(v3 + 48);
  if (v14(v11, 1, v2))
  {
    sub_19022EEA4(v11, &qword_1EAD589B0, &qword_190DE2DC0);
    v15 = 1.0;
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_19022EEA4(v11, &qword_1EAD589B0, &qword_190DE2DC0);
    sub_190D56B40();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v15 = v17;
  }

  [v1 setScale_];
  sub_19022FD14(v1 + v13, v8, &qword_1EAD589B0, &qword_190DE2DC0);
  if (v14(v8, 1, v2))
  {
    sub_19022EEA4(v8, &qword_1EAD589B0, &qword_190DE2DC0);
    v18 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_19022EEA4(v8, &qword_1EAD589B0, &qword_190DE2DC0);
    v18 = sub_190D56B80();
    (*(v3 + 8))(v5, v2);
  }

  sub_1908A1E3C(v18);

  v19 = sub_190D57160();

  [v1 setFilters_];

  v20 = sub_190D56ED0();
  [v1 setGroupName_];
}

void sub_1909A2E08(uint64_t a1)
{
  sub_1909A2F94(319, &qword_1EAD58970, type metadata accessor for CKTypingIndicatorBackgroundLayer.FillStyle);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1909A2EE8(uint64_t a1)
{
  sub_1909A2F94(319, &qword_1EAD58990, MEMORY[0x1E698F5D0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1909A2F94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_190D58050();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1909A2FE8(uint64_t a1)
{
  result = sub_1902188FC(319, &qword_1EAD46520, 0x1E69DC888);
  if (v2 <= 0x3F)
  {
    result = sub_190D56B90();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1909A3070(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D56B90();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CKTypingIndicatorBackgroundLayer.FillStyle(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v28 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD589A8, &qword_190DE2DB8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  v20 = *(v19 + 56);
  sub_1909A0E24(a1, &v28 - v17);
  sub_1909A0E24(a2, &v18[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1909A0E24(v18, v15);
    v25 = *v15;
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_8:
      v26 = *&v18[v20];
      sub_1902188FC(0, &qword_1EAD46500, 0x1E69E58C0);
      v23 = sub_190D57D90();

      goto LABEL_9;
    }

LABEL_6:

LABEL_11:
    sub_19022EEA4(v18, &qword_1EAD589A8, &qword_190DE2DB8);
    v23 = 0;
    return v23 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1909A0E24(v18, v9);
    v25 = *v9;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1909A0E24(v18, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v29 + 8))(v12, v4);
    goto LABEL_11;
  }

  v22 = v29;
  (*(v29 + 32))(v6, &v18[v20], v4);
  v23 = MEMORY[0x193AF23F0](v12, v6);
  v24 = *(v22 + 8);
  v24(v6, v4);
  v24(v12, v4);
LABEL_9:
  sub_1909A0E88(v18);
  return v23 & 1;
}

uint64_t sub_1909A3390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD589B0, &qword_190DE2DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909A3400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKTypingIndicatorBackgroundLayer.FillStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909A3464(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_1909A34CC()
{
  result = qword_1EAD589C0;
  if (!qword_1EAD589C0)
  {
    sub_190D56B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD589C0);
  }

  return result;
}

unint64_t sub_1909A3528()
{
  result = qword_1EAD45EF8;
  if (!qword_1EAD45EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45EF8);
  }

  return result;
}

unint64_t sub_1909A3580()
{
  result = qword_1EAD45F08;
  if (!qword_1EAD45F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45F08);
  }

  return result;
}

uint64_t sub_1909A3624()
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
  __swift_allocate_value_buffer(v6, qword_1EAD9DC80);
  __swift_project_value_buffer(v6, qword_1EAD9DC80);
  sub_190D56E50();
  sub_190D51980();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_190D51470();
}

uint64_t sub_1909A380C()
{
  v0 = sub_190D50D00();
  __swift_allocate_value_buffer(v0, qword_1EAD9DC98);
  v1 = __swift_project_value_buffer(v0, qword_1EAD9DC98);
  v2 = *MEMORY[0x1E695A590];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1909A38DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58A10, &qword_190DE2F68);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58A18, &qword_190DE2F70);
  MEMORY[0x1EEE9AC00](v1);
  sub_1909A6960();
  sub_190D50BE0();
  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58A20, &qword_190DE2FA0);
  sub_190D50BC0();

  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58A28, &unk_190DE2FD0);
  sub_190D50BC0();

  sub_190D50BD0();
  sub_190D50BF0();
  return sub_190D50BB0();
}

uint64_t sub_1909A3AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[70] = a4;
  v4[69] = a3;
  v4[68] = a2;
  v4[67] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E68, &unk_190DDC330);
  v4[71] = swift_task_alloc();
  v6 = sub_190D511C0();
  v4[72] = v6;
  v4[73] = *(v6 - 8);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[76] = v7;
  *v7 = v4;
  v7[1] = sub_1909A3C2C;

  return sub_1909A56D4((v4 + 58), a3);
}

uint64_t sub_1909A3C2C()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 616) = v0;
  *(v3 + 624) = *(v2 + 464);
  *(v3 + 632) = *(v3 + 472);
  *(v3 + 648) = *(v2 + 488);
  *(v3 + 656) = *(v3 + 496);

  if (v0)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1909A3DD8, 0, 0);
  }
}

uint64_t sub_1909A3DD8()
{
  v0[84] = objc_opt_self();
  v0[85] = sub_190D572A0();
  v0[86] = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1909A3E80, v2, v1);
}

uint64_t sub_1909A3E80()
{
  v1 = *(v0 + 672);

  *(v0 + 696) = [v1 sharedConversationList];

  return MEMORY[0x1EEE6DFA0](sub_1909A3F08, 0, 0);
}

uint64_t sub_1909A3F08()
{
  *(v0 + 704) = sub_190D56ED0();
  *(v0 + 712) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1909A3FA4, v2, v1);
}

uint64_t sub_1909A3FA4()
{
  v1 = v0[88];
  v2 = v0[87];

  v0[90] = [v2 conversationForExistingChatWithChatIdentifier_];

  return MEMORY[0x1EEE6DFA0](sub_1909A403C, 0, 0);
}

uint64_t sub_1909A403C()
{
  if (v0[90])
  {
    v1 = v0[73];
    v2 = v0[72];
    v3 = v0[71];
    sub_1902188FC(0, &qword_1EAD58A00, 0x1E696AAB0);
    sub_190D50810();
    v4 = sub_190D57920();
    sub_190D50810();
    v5 = *(v1 + 48);
    if (v5(v3, 1, v2) == 1)
    {
      v6 = v0[72];
      v7 = v0[71];
      sub_190D511A0();
      if (v5(v7, 1, v6) != 1)
      {
        sub_19087993C(v0[71]);
      }
    }

    else
    {
      (*(v0[73] + 32))(v0[74], v0[71], v0[72]);
    }

    v13 = sub_190D57920();
    v14 = [objc_allocWithZone(CKComposition) initWithText:v4 subject:v13];
    v0[91] = v14;

    if (v14)
    {
      v15 = v14;
      v0[92] = sub_190D57290();
      v17 = sub_190D57240();

      return MEMORY[0x1EEE6DFA0](sub_1909A4480, v17, v16);
    }

    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v18 = sub_190D53040();
    __swift_project_value_buffer(v18, qword_1EAD9E840);
    v19 = sub_190D53020();
    v20 = sub_190D576A0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_19020E000, v19, v20, "Failed to construct CKComposition.", v21, 2u);
      MEMORY[0x193AF7A40](v21, -1, -1);
    }

    v22 = v0[90];

    sub_1909A69B4();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  else
  {

    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v8 = sub_190D53040();
    __swift_project_value_buffer(v8, qword_1EAD9E840);
    v9 = sub_190D53020();
    v10 = sub_190D576A0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v9, v10, "Conversation not found.", v11, 2u);
      MEMORY[0x193AF7A40](v11, -1, -1);
    }

    sub_1909A69B4();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1909A4480()
{
  v1 = v0[91];
  v2 = v0[90];

  v0[93] = [v2 messageWithComposition_];

  return MEMORY[0x1EEE6DFA0](sub_1909A4510, 0, 0);
}

uint64_t sub_1909A4510()
{
  *(v0 + 752) = objc_opt_self();
  *(v0 + 760) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1909A45AC, v2, v1);
}

uint64_t sub_1909A45AC()
{
  v1 = *(v0 + 752);

  *(v0 + 768) = [v1 sharedInstance];

  return MEMORY[0x1EEE6DFA0](sub_1909A4634, 0, 0);
}

uint64_t sub_1909A4634(void *a1)
{
  v2 = v1[96];
  if (v2)
  {

    v3 = sub_190D56ED0();
    v1[97] = v3;
    v1[2] = v1;
    v1[7] = v1 + 64;
    v1[3] = sub_1909A4784;
    v4 = swift_continuation_init();
    v1[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55098, &unk_190DE2F40);
    v1[50] = MEMORY[0x1E69E9820];
    v1[51] = 1107296256;
    v1[52] = sub_190888620;
    v1[53] = &block_descriptor_51;
    v1[54] = v4;
    [v2 loadMessageItemWithGUID:v3 completionBlock:v1 + 50];
    a1 = v1 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](a1);
}

uint64_t sub_1909A4784()
{

  return MEMORY[0x1EEE6DFA0](sub_1909A4864, 0, 0);
}

uint64_t sub_1909A4864()
{
  v1 = v0[97];
  v2 = v0[96];
  v0[98] = v0[64];

  v0[99] = objc_opt_self();
  v0[100] = sub_190D57290();
  v4 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1909A492C, v4, v3);
}

uint64_t sub_1909A492C()
{
  v1 = v0[99];
  v2 = v0[98];

  v0[101] = [v1 _newMessagePartArrayForMessageItem_];

  return MEMORY[0x1EEE6DFA0](sub_1909A49B4, 0, 0);
}

uint64_t sub_1909A49B4()
{
  v1 = *(v0 + 808);
  if (v1)
  {

    sub_1902188FC(0, &qword_1EAD58A08, 0x1E69A5BF8);
    *(v0 + 816) = sub_190D57180();

    *(v0 + 824) = sub_190D57290();
    v3 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_1909A4B58, v3, v2);
  }

  else
  {
    v4 = *(v0 + 784);
    v5 = *(v0 + 744);
    v6 = *(v0 + 728);
    v7 = *(v0 + 720);

    sub_1909A69B4();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1909A4B58()
{
  v1 = v0[102];
  v2 = v0[93];
  v3 = v0[90];
  v4 = v0[83];
  v5 = v0[82];
  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[77];

  sub_1909A4E34(v1, v5, v4, v7, v6, v2, v3);
  v0[104] = v8;

  if (v8)
  {
    v9 = sub_1909A4D90;
  }

  else
  {
    v9 = sub_1909A4C58;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1909A4C58()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 744);
  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  v5 = sub_190D1FE8C();
  sub_190D50810();
  v6 = *(v0 + 192);
  *(v0 + 336) = *(v0 + 176);
  *(v0 + 352) = v6;
  v7 = *(v0 + 224);
  *(v0 + 368) = *(v0 + 208);
  *(v0 + 384) = v7;
  v8 = *(v0 + 128);
  *(v0 + 272) = *(v0 + 112);
  *(v0 + 288) = v8;
  v9 = *(v0 + 160);
  *(v0 + 304) = *(v0 + 144);
  *(v0 + 320) = v9;
  v10 = *(v0 + 96);
  *(v0 + 240) = *(v0 + 80);
  *(v0 + 256) = v10;
  sub_190D50820();
  *(v0 + 528) = v5;
  sub_1909A6A08();
  sub_190D50690();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1909A4D90()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 744);
  v3 = *(v0 + 720);

  v4 = *(v0 + 8);

  return v4();
}

void sub_1909A4E34(unint64_t a1, unint64_t a2, id a3, uint64_t a4, uint64_t a5, id a6, void *a7)
{
  v11 = a1;
  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = 0;
    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v12 = sub_190D581C0();
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_42;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_44:
    swift_once();
LABEL_30:
    v22 = sub_190D53040();
    __swift_project_value_buffer(v22, qword_1EAD9E840);
    v19 = sub_190D53020();
    v23 = sub_190D576A0();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_19020E000, v19, v23, "Unable to associate reply to specific message.", v24, 2u);
      MEMORY[0x193AF7A40](v24, -1, -1);
    }

    goto LABEL_38;
  }

  for (i = *(v11 + 32); ; i = MEMORY[0x193AF3B90](0, v11))
  {
    v7 = i;
    if (a3)
    {
LABEL_7:
      v14 = sub_190D56ED0();
    }

    else
    {
LABEL_10:
      v14 = 0;
    }

    a3 = [objc_allocWithZone(MEMORY[0x1E69A8148]) initWithEncodedMessagePartGUID_];

    if (!a3)
    {
      break;
    }

    v32 = v7;
    v33 = a7;
    v35 = a6;
    if (!v12)
    {
LABEL_22:

LABEL_24:
      sub_1909A69B4();
      swift_allocError();
      *v17 = 2;
      swift_willThrow();
      return;
    }

    v15 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x193AF3B90](v15, v11);
      }

      else
      {
        if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v16 = *(v11 + 8 * v15 + 32);
      }

      v7 = v16;
      a7 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      a6 = [v16 index];
      if (a6 == [a3 partNumber])
      {

        a7 = v33;
        a6 = v35;
        goto LABEL_26;
      }

      ++v15;
      if (a7 == v12)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_26:
  v18 = [objc_allocWithZone(CKMessagePartChatItem) initWithIMChatItem:v7 maxWidth:0.0];
  v11 = v18;
  if (!v18)
  {
    if (qword_1EAD521B0 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_44;
  }

  v34 = a7;
  v36 = a6;
  v19 = v18;
  v20 = [v19 threadIdentifier];
  if (v20)
  {
    ThreadIdentifierWithOriginatorGUID = v20;
  }

  else
  {
    [v19 index];
    [v19 originalMessagePartRange];
    v25 = sub_190D56ED0();
    ThreadIdentifierWithOriginatorGUID = IMMessageCreateThreadIdentifierWithOriginatorGUID();

    if (!ThreadIdentifierWithOriginatorGUID)
    {
      v27 = 0;
      goto LABEL_34;
    }
  }

  sub_190D56F10();
  v27 = v26;

LABEL_34:
  v28 = objc_opt_self();
  v29 = [v28 threadOriginatorForMessagePart_];
  v30 = [v28 imMessageForIMMessageItem_];
  a7 = v34;
  a6 = v36;
  if (v27)
  {
    v31 = sub_190D56ED0();
  }

  else
  {
    v31 = 0;
  }

  [v36 setThreadIdentifier_];

  [v36 setThreadOriginator_];
LABEL_38:

  [a7 sendMessage:a6 newComposition:1];
}

uint64_t sub_1909A5290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[20] = a1;
  sub_190D572A0();
  v5[23] = sub_190D57290();
  v7 = sub_190D57240();
  v5[24] = v7;
  v5[25] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1909A532C, v7, v6);
}

uint64_t sub_1909A532C()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[26] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_190D56ED0();
    v0[27] = v3;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_190888498;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55098, &unk_190DE2F40);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_190888620;
    v0[13] = &block_descriptor_12_4;
    v0[14] = v4;
    [v2 loadMessageItemWithGUID:v3 completionBlock:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1909A54FC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1909A55A8(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA4;

  return sub_1909A3AE0(a1, v4, v5, v6);
}

uint64_t sub_1909A565C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1909A5EBC();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1909A5688(uint64_t a1)
{
  v2 = sub_1909A6960();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1909A56D4(uint64_t a1, uint64_t a2)
{
  v2[93] = a2;
  v2[92] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0, &qword_190DD7B00);
  v2[94] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1909A5774, 0, 0);
}

uint64_t sub_1909A5774(uint64_t a1)
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
  sub_190D506F0();
  v7 = *(v1 + 712);
  *(v1 + 760) = v7;
  v8 = *(v1 + 720);
  *(v1 + 768) = v8;
  if (v8)
  {
    v9 = *(v1 + 752);
    sub_190889CE4(v1 + 16);
    sub_190D52690();
    sub_190D50810();
    v10 = *(v1 + 608);
    *(v1 + 432) = *(v1 + 592);
    *(v1 + 448) = v10;
    v11 = *(v1 + 640);
    *(v1 + 464) = *(v1 + 624);
    *(v1 + 480) = v11;
    v12 = *(v1 + 544);
    *(v1 + 368) = *(v1 + 528);
    *(v1 + 384) = v12;
    v13 = *(v1 + 576);
    *(v1 + 400) = *(v1 + 560);
    *(v1 + 416) = v13;
    v14 = *(v1 + 512);
    *(v1 + 336) = *(v1 + 496);
    *(v1 + 352) = v14;
    v15 = *(v1 + 344);
    *(v1 + 776) = *(v1 + 336);
    *(v1 + 784) = v15;
    sub_190D52690();
    sub_190889CE4(v1 + 336);
    v16 = sub_190D572E0();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    *(v1 + 792) = sub_190D572A0();
    v17 = sub_190D57290();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v7;
    v18[5] = v8;
    v20 = sub_1908580F8(0, 0, v9, &unk_190DE2F58, v18);
    *(v1 + 800) = v20;
    v21 = swift_task_alloc();
    *(v1 + 808) = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54F50, &qword_190DD7BD0);
    *v21 = v1;
    v21[1] = sub_1909A5A24;
    v23 = MEMORY[0x1E69E73E0];
    v24 = MEMORY[0x1E69E7410];

    return MEMORY[0x1EEE6DA20](v1 + 688, v20, v22, v23, v24);
  }

  else
  {
    sub_190889CE4(v1 + 16);
    sub_1909A69B4();
    swift_allocError();
    *v25 = 1;
    swift_willThrow();

    v26 = *(v1 + 8);

    return v26();
  }
}

uint64_t sub_1909A5A24()
{

  return MEMORY[0x1EEE6DFA0](sub_1909A5B3C, 0, 0);
}

uint64_t sub_1909A5B3C(uint64_t a1)
{
  if (*(v1 + 704))
  {
    v2 = MEMORY[0x1E69E73E0];
    v3 = MEMORY[0x1E69E7410];

    return MEMORY[0x1EEE6C240](a1, v2, v3);
  }

  v4 = *(v1 + 696);

  if (v4)
  {
    if (*(v4 + 16))
    {
      sub_19021834C(v4 + 32, v1 + 656);

      sub_1902188FC(0, &qword_1EAD44EE0, 0x1E69A5AE0);
      if (swift_dynamicCast())
      {
        *(v1 + 816) = *(v1 + 728);
        *(v1 + 824) = sub_190D57290();
        v6 = sub_190D57240();

        return MEMORY[0x1EEE6DFA0](sub_1909A5D04, v6, v5);
      }
    }

    else
    {
    }
  }

  sub_1909A69B4();
  swift_allocError();
  *v7 = 0;
  swift_willThrow();

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_1909A5D04()
{
  v1 = *(v0 + 816);

  *(v0 + 832) = [v1 chatIdentifier];

  return MEMORY[0x1EEE6DFA0](sub_1909A5D8C, 0, 0);
}

uint64_t sub_1909A5D8C()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 816);
  v3 = *(v0 + 784);
  if (v1)
  {
    v4 = *(v0 + 776);
    v12 = *(v0 + 760);
    v5 = *(v0 + 736);
    v6 = sub_190D56F10();
    v8 = v7;

    *v5 = v6;
    *(v5 + 8) = v8;
    *(v5 + 16) = v12;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;
  }

  else
  {

    sub_1909A69B4();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1909A5EBC()
{
  v0 = sub_190D50C80();
  v1 = *(v0 - 8);
  v68 = v0;
  v69 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v62 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8, &unk_190DDF120);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E68, &unk_190DDC330);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8, &qword_190DD5AE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v70 = &v42 - v10;
  v11 = sub_190D51440();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v67 = sub_190D51460();
  v17 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v55 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v42 - v20;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD589E8, &unk_190DE2F18);
  sub_190D56E50();
  sub_190D51980();
  v22 = *(v12 + 104);
  v54 = *MEMORY[0x1E6968DF0];
  v21 = v54;
  (v22)(v14, v54, v11);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v52 = v11;
  (v22)(v14, v21, v11);
  v53 = v12 + 104;
  v23 = v70;
  sub_190D51470();
  v24 = *(v17 + 56);
  v63 = v17 + 56;
  v64 = v24;
  v24(v23, 0, 1, v67);
  v49 = sub_190D511C0();
  v25 = *(v49 - 8);
  v48 = *(v25 + 56);
  v50 = v25 + 56;
  v48(v59, 1, 1, v49);
  sub_190D56E50();
  v46 = sub_1902188FC(0, &qword_1EAD466B0, off_1E72E4B40);
  *v14 = v46;
  v45 = *MEMORY[0x1E6968E00];
  v22(v14);
  sub_190D51980();
  sub_190D51470();
  v26 = v66;
  sub_190D505A0();
  v57 = sub_190D50590();
  v27 = *(v57 - 8);
  v56 = *(v27 + 56);
  v58 = v27 + 56;
  v56(v26, 0, 1, v57);
  v60 = *MEMORY[0x1E695A500];
  v28 = *(v69 + 104);
  v69 += 104;
  v61 = v28;
  v28(v62);
  v47 = sub_190D508B0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57068, &qword_190DDF130);
  sub_190D56E50();
  sub_190D51980();
  v29 = v54;
  v30 = v52;
  (v22)(v14, v54, v52);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v31 = v30;
  v43 = v22;
  (v22)(v14, v29, v30);
  v32 = v70;
  sub_190D51470();
  v64(v32, 0, 1, v67);
  sub_19092095C(v81);
  v77 = v81[6];
  v78 = v81[7];
  v79 = v81[8];
  v80 = v81[9];
  v73 = v81[2];
  v74 = v81[3];
  v75 = v81[4];
  v76 = v81[5];
  v71 = v81[0];
  v72 = v81[1];
  sub_190D56E50();
  *v14 = v46;
  (v22)(v14, v45, v31);
  sub_190D51980();
  sub_190D51470();
  v33 = v66;
  sub_190D505A0();
  v34 = v56;
  v35 = v57;
  v56(v33, 0, 1, v57);
  v34(v51, 1, 1, v35);
  v36 = v62;
  v61(v62, v60, v68);
  sub_190888A1C();
  v55 = sub_190D50890();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD589F0, &qword_190DE2F28);
  sub_190D56E50();
  sub_190D51980();
  v37 = v54;
  v38 = v52;
  v39 = v43;
  v43(v14, v54, v52);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v39(v14, v37, v38);
  v40 = v70;
  sub_190D51470();
  v64(v40, 0, 1, v67);
  v48(v59, 1, 1, v49);
  v56(v66, 1, 1, v57);
  v61(v36, v60, v68);
  sub_190D508B0();
  return v47;
}

unint64_t sub_1909A6960()
{
  result = qword_1EAD45F00;
  if (!qword_1EAD45F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45F00);
  }

  return result;
}

unint64_t sub_1909A69B4()
{
  result = qword_1EAD589F8;
  if (!qword_1EAD589F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD589F8);
  }

  return result;
}

unint64_t sub_1909A6A08()
{
  result = qword_1EAD45E18;
  if (!qword_1EAD45E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45E18);
  }

  return result;
}

uint64_t sub_1909A6A5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA4;

  return sub_1909A5290(a1, v4, v5, v7, v6);
}

unint64_t sub_1909A6B30()
{
  result = qword_1EAD58A30;
  if (!qword_1EAD58A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58A30);
  }

  return result;
}

uint64_t static CKBalloonLayer.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x193AF24B0]() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CKBalloonLayer.Configuration(0) + 20);

  return _s7ChatKit14CKBalloonLayerC5StyleO2eeoiySbAE_AEtFZ_0(a1 + v4, a2 + v4);
}

uint64_t sub_1909A6C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x193AF24B0]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return _s7ChatKit14CKBalloonLayerC5StyleO2eeoiySbAE_AEtFZ_0(a1 + v6, a2 + v6);
}

BOOL static CKBalloonLayer.StrokeOnlyBalloonConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (_s7ChatKit14CKBalloonLayerC11StrokeStyleO2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    v4 = type metadata accessor for CKBalloonLayer.Stroke(0);
    if (*(a1 + v4[5]) == *(a2 + v4[5]) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
    {
      return 1;
    }
  }

  return result;
}

void sub_1909A6D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v3 += 8;
      v4 += 8;
      sub_190D50920();
      sub_190D50920();
      v5 = sub_190D55D30();

      if ((v5 & 1) == 0)
      {
        break;
      }

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1909A6DC8(uint64_t a1, uint64_t a2)
{
  v4 = _s21BackgroundGalleryItemVMa(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1909B589C(v13, v10, _s21BackgroundGalleryItemVMa);
        sub_1909B589C(v14, v6, _s21BackgroundGalleryItemVMa);
        v16 = sub_190AA241C(v10, v6);
        sub_1909B7924(v6, _s21BackgroundGalleryItemVMa);
        sub_1909B7924(v10, _s21BackgroundGalleryItemVMa);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1909A6F94(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 == a2[2])
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1[6];
    v31 = a1[7];
    v5 = a1[8];
    v4 = a1[9];
    v6 = a2[6];
    v32 = a2[7];
    v7 = a2[9];
    v33 = a2[8];
    if (a1[4] == a2[4] && a1[5] == a2[5] || (v8 = a1[8], v9 = a1, v10 = a1[9], v11 = a2, v12 = a1[6], v13 = sub_190D58760(), v3 = v12, a2 = v11, v4 = v10, v14 = v13, a1 = v9, v5 = v8, (v14 & 1) != 0))
    {
      v15 = v2 - 1;
      v16 = a2 + 15;
      for (i = a1 + 15; ; i += 6)
      {
        if (v3)
        {
          if (!v6)
          {
            return 0;
          }

          v21 = v4;
          v30 = v7;
          v22 = v3;
          sub_1902188FC(0, &qword_1EAD44EB0, 0x1E69DCAB8);
          v23 = v6;
          v24 = v22;
          v25 = v23;
          v26 = v24;
          sub_190D52690();
          sub_19029063C(v5, v21);
          sub_190D52690();
          v27 = v33;
          v7 = v30;
          sub_19029063C(v33, v30);
          v28 = sub_190D57D90();

          if ((v28 & 1) == 0)
          {

            sub_19022123C(v33, v30);

            sub_19022123C(v5, v21);
            return 0;
          }

          sub_19022123C(v5, v21);
        }

        else
        {
          if (v6)
          {
            return 0;
          }

          sub_190D52690();
          v27 = v33;
          sub_19029063C(v33, v7);
          v25 = 0;
        }

        sub_19022123C(v27, v7);
        if (v31 != v32)
        {
          return 0;
        }

        if (!v15)
        {
          return 1;
        }

        v3 = *(i - 3);
        v5 = *(i - 1);
        v4 = *i;
        v6 = *(v16 - 3);
        v31 = *(i - 2);
        v32 = *(v16 - 2);
        v7 = *v16;
        v33 = *(v16 - 1);
        if (*(i - 5) != *(v16 - 5) || *(i - 4) != *(v16 - 4))
        {
          v18 = *i;
          v19 = *(i - 3);
          v20 = sub_190D58760();
          v3 = v19;
          v4 = v18;
          if ((v20 & 1) == 0)
          {
            return 0;
          }
        }

        --v15;
        v16 += 6;
      }
    }
  }

  return 0;
}

uint64_t sub_1909A7254(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_190D58760() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1909A72E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v39 = a1;
  while (1)
  {
    v4 = *(a1 + v3 + 48);
    v6 = *(a1 + v3 + 64);
    v5 = *(a1 + v3 + 72);
    v8 = *(a2 + v3 + 48);
    v7 = *(a2 + v3 + 56);
    v10 = *(a2 + v3 + 64);
    v9 = *(a2 + v3 + 72);
    v11 = *(a1 + v3 + 32) == *(a2 + v3 + 32) && *(a1 + v3 + 40) == *(a2 + v3 + 40);
    v43 = *(a1 + v3 + 56);
    v44 = *(a2 + v3 + 72);
    if (!v11 && (v12 = sub_190D58760(), v9 = v44, (v12 & 1) == 0) || (v6 == v10 ? (v13 = v5 == v9) : (v13 = 0), !v13 && (sub_190D58760() & 1) == 0))
    {
      v33 = v7;
      sub_190D52690();
      sub_190D52690();
      v34 = v4;
      v14 = v43;
      goto LABEL_42;
    }

    v14 = v43;
    v41 = v3;
    if (v43)
    {
      if (v7)
      {
        sub_1902188FC(0, &qword_1EAD46520, 0x1E69DC888);
        v15 = v8;
        v16 = v8;
        v17 = v7;
        sub_190D52690();
        sub_190D52690();
        v18 = v4;
        v19 = v43;
        sub_190D52690();
        sub_190D52690();
        if ((sub_190D57D90() & 1) == 0)
        {

          goto LABEL_47;
        }

        if (!v4)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

      sub_190D52690();
      sub_190D52690();
      v35 = v4;
LABEL_42:
      v36 = v14;
      sub_190D52690();
      goto LABEL_48;
    }

    if (v7)
    {
      v37 = v7;
      sub_190D52690();
      sub_190D52690();
      v38 = v4;
      sub_190D52690();
      v14 = 0;
      goto LABEL_48;
    }

    v15 = v8;
    v24 = v8;
    sub_190D52690();
    sub_190D52690();
    v25 = v4;
    sub_190D52690();
    sub_190D52690();
    if (!v4)
    {
LABEL_23:
      if (!v15)
      {
        goto LABEL_33;
      }

      v40 = v4;
      v23 = 0;
      v21 = 0;
      goto LABEL_25;
    }

LABEL_19:
    v20 = [v4 identifier];
    v21 = sub_190D56F10();
    v23 = v22;

    if (!v15)
    {
      if (v23)
      {
        v15 = 0;
        goto LABEL_46;
      }

      goto LABEL_33;
    }

    v40 = v4;
LABEL_25:
    v26 = [v15 identifier];
    v27 = sub_190D56F10();
    v29 = v28;

    if (!v23)
    {
      v4 = v40;
      if (v29)
      {
        goto LABEL_46;
      }

LABEL_33:

      goto LABEL_34;
    }

    if (!v29)
    {
      break;
    }

    if (v21 == v27 && v23 == v29)
    {

      v4 = v40;
LABEL_34:

      a1 = v39;
      v30 = v41;
      goto LABEL_35;
    }

    v31 = sub_190D58760();

    a1 = v39;
    v30 = v41;
    if ((v31 & 1) == 0)
    {
      return 0;
    }

LABEL_35:
    v3 = v30 + 48;
    if (!--v2)
    {
      return 1;
    }
  }

  v4 = v40;
LABEL_46:

LABEL_47:

  v14 = v43;
LABEL_48:

  return 0;
}

uint64_t sub_1909A7750(uint64_t result, uint64_t a2)
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
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1909A77AC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
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
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    type metadata accessor for CGColor(0);
    v4 = v11;
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x193AF3B90](v13 - 4, v3);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v3 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x193AF3B90](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        sub_1909B8A88();
        v19 = sub_190D51CB0();

        if (v19)
        {
          ++v13;
          if (v15 != v5)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v3 + 32);
    v21 = (a2 + 32);
    v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v5 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = sub_1909B8A88();
      v3 = v25;
      v28 = v27;
      v19 = sub_190D51CB0();

      v30 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v30)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_190D581C0();
  }

  result = sub_190D581C0();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1909A7A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(v3 - 4);
      v8 = *(v3 - 3);
      if (*i)
      {
        break;
      }

      if (*v3)
      {
        return 0;
      }

      v10 = *(i - 2);
      v11 = *(i - 1);
      v13 = *(v3 - 2);
      v12 = *(v3 - 1);
      v14 = v5 == v7 && v6 == v8;
      if (!v14 && (sub_190D58760() & 1) == 0)
      {
        return 0;
      }

      if (!v11)
      {
        if (v12)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (!v12)
      {
        return 0;
      }

      if (v10 != v13 || v11 != v12)
      {
        goto LABEL_24;
      }

LABEL_6:
      v3 += 40;
      if (!--v2)
      {
        return 1;
      }
    }

    if ((*v3 & 1) == 0)
    {
      return 0;
    }

    if (v5 == v7 && v6 == v8)
    {
      goto LABEL_6;
    }

LABEL_24:
    if ((sub_190D58760() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_1909A7BA0(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1902188FC(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x193AF3B90](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x193AF3B90](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_190D57D90();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_190D57D90();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_190D581C0();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_190D581C0();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1909A7E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v24 - v14);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    return 0;
  }

  if (v16 && a1 != a2)
  {
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = a1 + v17;
    v19 = a2 + v17;
    v20 = *(v13 + 72);
    do
    {
      sub_1909B589C(v18, v15, a4);
      sub_1909B589C(v19, v11, a4);
      if (*v15 == *v11 && v15[1] == v11[1])
      {
        sub_1909B7924(v11, a5);
        sub_1909B7924(v15, a5);
      }

      else
      {
        v22 = sub_190D58760();
        sub_1909B7924(v11, a5);
        sub_1909B7924(v15, a5);
        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      v19 += v20;
      v18 += v20;
      --v16;
    }

    while (v16);
  }

  return 1;
}

uint64_t sub_1909A8050(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
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
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x193AF3B90](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v14 = *(v3 + 8 * v12);
          sub_190D50920();
          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v15 = *(a2 + 8 * v12);
            sub_190D50920();
            goto LABEL_26;
          }
        }

        v15 = MEMORY[0x193AF3B90](v12 - 4, a2);
LABEL_26:
        LOBYTE(v4) = MEMORY[0x193AED1F0](v14 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel_locale, v15 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel_locale);

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v16 = (v3 + 32);
    v17 = (a2 + 32);
    v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v5 - 1;
    while (1)
    {
      if (!v18)
      {
        goto LABEL_40;
      }

      if (!v19)
      {
        break;
      }

      v21 = *v16++;
      a2 = v21;
      v22 = *v17++;
      v3 = v22;
      v23 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel_locale;
      sub_190D50920();
      sub_190D50920();
      v4 = MEMORY[0x193AED1F0](a2 + v23, v22 + v23);

      v25 = v20-- != 0;
      if (v4)
      {
        --v19;
        --v18;
        if (v25)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_190D581C0();
  }

  result = sub_190D581C0();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_1909A82A8(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
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
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for NavigationBarButtonModel();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x193AF3B90](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x193AF3B90](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_190D57D90();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_190D57D90();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_190D581C0();
  }

  result = sub_190D581C0();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1909A84E8(uint64_t a1, uint64_t a2)
{
  v4 = _s21BackgroundGalleryItemVMa(0);
  v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = _s17BackgroundSectionVMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_27:
    v35 = 0;
    return v35 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v35 = 1;
    return v35 & 1;
  }

  v17 = 0;
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v38 = v10;
  v39 = a2 + v18;
  v40 = *(v13 + 72);
  v41 = a1 + v18;
  v37 = v16;
  v43 = &v36 - v14;
  while (1)
  {
    v19 = v40 * v17;
    result = sub_1909B589C(v41 + v40 * v17, v15, _s17BackgroundSectionVMa);
    if (v17 == v16)
    {
      break;
    }

    v21 = v39 + v19;
    v22 = v44;
    result = sub_1909B589C(v21, v44, _s17BackgroundSectionVMa);
    v23 = *(v15 + 1);
    v24 = *(v22 + 8);
    v42 = v17;
    if (v23)
    {
      if (!v24 || ((result = *v43, *v43 != *v44) || v23 != v24) && (result = sub_190D58760(), (result & 1) == 0))
      {
LABEL_26:
        sub_1909B7924(v44, _s17BackgroundSectionVMa);
        sub_1909B7924(v43, _s17BackgroundSectionVMa);
        goto LABEL_27;
      }
    }

    else if (v24)
    {
      goto LABEL_26;
    }

    if (v43[16] != *(v44 + 16))
    {
      goto LABEL_26;
    }

    v25 = *(v43 + 3);
    v26 = *(v44 + 24);
    v27 = *(v25 + 16);
    if (v27 != *(v26 + 16))
    {
      goto LABEL_26;
    }

    if (v27 && v25 != v26)
    {
      v28 = 0;
      v29 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v30 = v25 + v29;
      v31 = v26 + v29;
      while (v28 < *(v25 + 16))
      {
        v32 = *(v45 + 72) * v28;
        result = sub_1909B589C(v30 + v32, v9, _s21BackgroundGalleryItemVMa);
        if (v28 >= *(v26 + 16))
        {
          goto LABEL_30;
        }

        sub_1909B589C(v31 + v32, v6, _s21BackgroundGalleryItemVMa);
        v33 = sub_190AA241C(v9, v6);
        sub_1909B7924(v6, _s21BackgroundGalleryItemVMa);
        result = sub_1909B7924(v9, _s21BackgroundGalleryItemVMa);
        if ((v33 & 1) == 0)
        {
          goto LABEL_26;
        }

        if (v27 == ++v28)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      break;
    }

LABEL_22:
    v15 = v43;
    v34 = v44;
    v35 = sub_190D51870();
    sub_1909B7924(v34, _s17BackgroundSectionVMa);
    sub_1909B7924(v15, _s17BackgroundSectionVMa);
    if (v35)
    {
      v17 = v42 + 1;
      v16 = v37;
      if (v42 + 1 != v37)
      {
        continue;
      }
    }

    return v35 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1909A88F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    v21 = *(a1 + 16);
    v22 = a2 + 32;
    v23 = a1 + 32;
    while (1)
    {
      v6 = (v4 + 80 * v3);
      v7 = v6[1];
      v27 = *v6;
      v28 = v7;
      v8 = v6[3];
      v29 = v6[2];
      *v30 = v8;
      *&v30[9] = *(v6 + 57);
      v9 = (v5 + 80 * v3);
      v10 = v9[3];
      v33 = v9[2];
      *v34 = v10;
      *&v34[9] = *(v9 + 57);
      v11 = v9[1];
      v31 = *v9;
      v32 = v11;
      if (v27 != v31 && (sub_190D58760() & 1) == 0)
      {
        break;
      }

      if (v28 != v32 || BYTE8(v28) != BYTE8(v32))
      {
        break;
      }

      if (v30[24])
      {
        if ((v34[24] & 1) == 0)
        {
          return 0;
        }

        v12 = *v34;
        v13 = *&v30[8];
        v24 = *&v30[16];
        v25 = *&v34[16];
        v14 = *v30;
        sub_1902188FC(0, &qword_1EAD46500, 0x1E69E58C0);
        sub_1909B8804(&v27, v26);
        sub_1909B8804(&v31, v26);
        if ((sub_190D57D90() & 1) == 0 || (sub_190D57D90() & 1) == 0 || __PAIR128__(v13, v14) != v12 && (sub_190D58760() & 1) == 0)
        {
          goto LABEL_32;
        }

        v15 = *(v24 + 16);
        if (v15 != *(v25 + 16))
        {
          goto LABEL_32;
        }

        v5 = v22;
        v4 = v23;
        if (v15 && v24 != v25)
        {
          v16 = (v24 + 40);
          v17 = (v25 + 40);
          while (1)
          {
            v18 = *(v16 - 1) == *(v17 - 1) && *v16 == *v17;
            if (!v18 && (sub_190D58760() & 1) == 0)
            {
              break;
            }

            v16 += 2;
            v17 += 2;
            if (!--v15)
            {
              goto LABEL_5;
            }
          }

LABEL_32:
          sub_1909B8860(&v31);
          sub_1909B8860(&v27);
          return 0;
        }

LABEL_5:
        sub_1909B8860(&v31);
        sub_1909B8860(&v27);
        v2 = v21;
      }

      else
      {
        if (v34[24])
        {
          return 0;
        }

        sub_1902188FC(0, &qword_1EAD46500, 0x1E69E58C0);
        sub_1909B8804(&v27, v26);
        sub_1909B8804(&v31, v26);
        v19 = sub_190D57D90();
        sub_1909B8860(&v31);
        sub_1909B8860(&v27);
        if ((v19 & 1) == 0)
        {
          return 0;
        }
      }

      if (++v3 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1909A8BB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedTapbackItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v76 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16) || !v11 || a1 == a2)
  {
    return;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v78 = *(a1 + 16);
  v79 = a2 + v13;
  v15 = *(v8 + 72);
  v85 = &v76 - v9;
  v86 = v6;
  v81 = v4;
  v76 = v15;
  v77 = a1 + v13;
  while (1)
  {
    v16 = v15 * v12;
    sub_1909B589C(v14 + v15 * v12, v10, type metadata accessor for AttributedTapbackItem);
    if (v12 == v11)
    {
      goto LABEL_70;
    }

    sub_1909B589C(v79 + v16, v6, type metadata accessor for AttributedTapbackItem);
    v17 = *v10;
    v18 = v10[16];
    v19 = *v6;
    v20 = v6[16];
    v80 = v12;
    if (v18)
    {
      if (v18 == 1)
      {
        if (v20 != 1 || (v17 != v19 || *(v85 + 1) != *(v86 + 1)) && (sub_190D58760() & 1) == 0)
        {
LABEL_66:
          sub_1909B7924(v86, type metadata accessor for AttributedTapbackItem);
          sub_1909B7924(v85, type metadata accessor for AttributedTapbackItem);
          return;
        }
      }

      else
      {
        if (v20 != 2)
        {
          goto LABEL_66;
        }

        v22 = [v17 stickerIdentifier];
        v23 = sub_190D56F10();
        v25 = v24;

        v26 = [v19 stickerIdentifier];
        v27 = sub_190D56F10();
        v29 = v28;

        if (v23 == v27 && v25 == v29)
        {
        }

        else
        {
          v30 = sub_190D58760();

          if ((v30 & 1) == 0)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else
    {
      if (v20)
      {
        goto LABEL_66;
      }

      v21 = [v17 associatedMessageType];
      if (v21 != [v19 associatedMessageType])
      {
        goto LABEL_66;
      }
    }

    v31 = *(v85 + 3);
    v32 = *(v86 + 3);
    v83 = *(v31 + 16);
    v84 = v32;
    if (v83 != *(v32 + 16))
    {
      goto LABEL_66;
    }

    v33 = v84;
    if (v83)
    {
      if (v31 != v84)
      {
        break;
      }
    }

LABEL_53:
    if ((sub_190D517D0() & 1) == 0 || *(*&v85[*(v81 + 28)] + 16) != *(*&v86[*(v81 + 28)] + 16))
    {
      goto LABEL_66;
    }

    v70 = *(v81 + 32);
    v10 = v85;
    v6 = v86;
    v71 = *&v85[v70];
    v72 = *&v85[v70 + 8];
    v73 = &v86[v70];
    if (v71 == *v73 && v72 == *(v73 + 1))
    {
      sub_1909B7924(v86, type metadata accessor for AttributedTapbackItem);
      sub_1909B7924(v10, type metadata accessor for AttributedTapbackItem);
      v11 = v78;
      v74 = v80;
    }

    else
    {
      v75 = sub_190D58760();
      sub_1909B7924(v6, type metadata accessor for AttributedTapbackItem);
      sub_1909B7924(v10, type metadata accessor for AttributedTapbackItem);
      v11 = v78;
      v74 = v80;
      if ((v75 & 1) == 0)
      {
        return;
      }
    }

    v12 = v74 + 1;
    v15 = v76;
    v14 = v77;
    if (v12 == v11)
    {
      return;
    }
  }

  v34 = 0;
  v35 = 0;
  v82 = v31;
  while (v35 < *(v31 + 16))
  {
    if (v35 >= *(v33 + 16))
    {
      goto LABEL_69;
    }

    v39 = v31 + v34;
    v40 = *(v31 + v34 + 32);
    v41 = *(v31 + v34 + 40);
    v43 = *(v31 + v34 + 48);
    v42 = *(v31 + v34 + 56);
    v45 = *(v39 + 64);
    v44 = *(v39 + 72);
    v46 = *(v33 + v34 + 32);
    v47 = *(v33 + v34 + 40);
    v48 = *(v33 + v34 + 56);
    v92 = *(v33 + v34 + 48);
    v93 = v44;
    v49 = *(v33 + v34 + 64);
    v50 = *(v33 + v34 + 72);
    if ((v40 != v46 || v41 != v47) && (sub_190D58760() & 1) == 0 || (v45 != v49 || v93 != v50) && (sub_190D58760() & 1) == 0)
    {
      goto LABEL_66;
    }

    v89 = v42;
    v90 = v47;
    v91 = v50;
    v87 = v34;
    v88 = v35;
    if (v42)
    {
      if (!v48)
      {
        goto LABEL_66;
      }

      sub_1902188FC(0, &qword_1EAD46520, 0x1E69DC888);
      v51 = v92;
      sub_190D52690();
      v52 = v42;
      v53 = v48;
      v54 = v48;
      v55 = v52;
      v56 = v54;
      sub_190D52690();
      v57 = v43;
      sub_190D52690();
      sub_190D52690();
      v58 = sub_190D57D90();

      if ((v58 & 1) == 0)
      {

        goto LABEL_66;
      }

      if (!v43)
      {
LABEL_44:
        v62 = 0;
        v60 = 0;
        v36 = 0;
        v37 = v88;
        v63 = v92;
        if (!v92)
        {
          goto LABEL_26;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (v48)
      {
        goto LABEL_66;
      }

      v53 = 0;
      v64 = v92;
      sub_190D52690();
      sub_190D52690();
      v65 = v43;
      sub_190D52690();
      sub_190D52690();
      if (!v43)
      {
        goto LABEL_44;
      }
    }

    v59 = [v43 identifier];
    v60 = sub_190D56F10();
    v62 = v61;

    v63 = v92;
    if (!v92)
    {
      v36 = 0;
      v37 = v88;
      if (v62)
      {
        v63 = 0;
LABEL_65:

        goto LABEL_66;
      }

LABEL_26:

      v31 = v82;
      v38 = v87;
      if (v36)
      {

        goto LABEL_66;
      }

      goto LABEL_27;
    }

    v37 = v88;
LABEL_45:
    v66 = [v63 identifier];
    v67 = sub_190D56F10();
    v36 = v68;

    if (!v62)
    {
      goto LABEL_26;
    }

    if (!v36)
    {
      goto LABEL_65;
    }

    if (v60 == v67 && v62 == v36)
    {
      v69 = 1;
    }

    else
    {
      v69 = sub_190D58760();
    }

    v31 = v82;

    v38 = v87;
    if ((v69 & 1) == 0)
    {
      goto LABEL_66;
    }

LABEL_27:
    v35 = v37 + 1;
    v34 = v38 + 48;
    v33 = v84;
    if (v83 == v35)
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t sub_1909A9370(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  result = 1;
  while (v3 != v2)
  {
    v6 = (v4 + 16 * v3);
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = a2 + 32 + 16 * v3;
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v8)
    {
      if ((v11 & 1) == 0)
      {
        return 0;
      }

      v12 = *(v7 + 16);
      if (v12 != *(v10 + 16))
      {
        return 0;
      }

      if (v12)
      {
        v13 = v7 == v10;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        v14 = (v7 + 32);
        v15 = (v10 + 32);
        while (v12)
        {
          if (*v14 != *v15)
          {
            return 0;
          }

          ++v14;
          ++v15;
          if (!--v12)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v11)
      {
        return 0;
      }

      v16 = *(v7 + 16);
      if (v16 != *(v10 + 16))
      {
        return 0;
      }

      if (v16)
      {
        v17 = v7 == v10;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = (v7 + 32);
        v19 = (v10 + 32);
        while (v16)
        {
          if (*v18 != *v19)
          {
            return 0;
          }

          ++v18;
          ++v19;
          if (!--v16)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_34;
      }
    }

LABEL_5:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1909A94B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    sub_1902188FC(0, &qword_1EAD46500, 0x1E69E58C0);
    v5 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = *(i - 2);
      v11 = *(i - 1);
      v12 = *i;
      v13 = *(v5 - 2);
      sub_190D52690();
      v14 = v10;
      sub_190D52690();
      if ((sub_190D57D90() & 1) == 0)
      {
        break;
      }

      if (v8 == v11 && v9 == v12)
      {
      }

      else
      {
        v7 = sub_190D58760();

        if ((v7 & 1) == 0)
        {
          return;
        }
      }

      v5 += 3;
      if (!--v2)
      {
        return;
      }
    }
  }
}

uint64_t static CKBalloonLayer.MaterialStrokeConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x193AF23F0]())
  {
    v4 = *(type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_190D58760() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1909A96B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x193AF23F0]())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_190D58760() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1909A973C(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (_s7ChatKit14CKBalloonLayerC11StrokeStyleO2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    v4 = type metadata accessor for CKBalloonLayer.Stroke(0);
    if (*(a1 + v4[5]) == *(a2 + v4[5]) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
    {
      return 1;
    }
  }

  return result;
}

uint64_t CKBalloonLayer.Stroke.width.setter(double a1)
{
  result = type metadata accessor for CKBalloonLayer.Stroke(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t CKBalloonLayer.Stroke.isDashed.setter(char a1)
{
  result = type metadata accessor for CKBalloonLayer.Stroke(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t CKBalloonLayer.Stroke.dashLength.setter(double a1)
{
  result = type metadata accessor for CKBalloonLayer.Stroke(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

BOOL sub_1909A99F4(_OWORD *a1, int8x16_t *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1909B517C(v7, v8);
}

char *sub_1909A9A58()
{
  v20 = sub_190D56C10();
  v0 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_190D56D00();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CKBalloonLayer.Configuration(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  sub_190D56D50();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58B30, &unk_190DF1C90) + 48);
  v14 = *MEMORY[0x1E698F620];
  v15 = sub_190D56CF0();
  (*(*(v15 - 8) + 104))(v6, v14, v15);
  *&v6[v13] = 0x3FF0000000000000;
  (*(v4 + 104))(v6, *MEMORY[0x1E698F638], v3);
  (*(v0 + 104))(v2, *MEMORY[0x1E698F5F0], v20);
  sub_190D56C40();
  type metadata accessor for CKBalloonLayer.Style(0);
  swift_storeEnumTagMultiPayload();
  sub_1909B589C(v12, v9, type metadata accessor for CKBalloonLayer.Configuration);
  v16 = objc_allocWithZone(type metadata accessor for CKBalloonLayer(0));
  v17 = CKBalloonLayer.init(configuration:)(v9);
  sub_1909B7924(v12, type metadata accessor for CKBalloonLayer.Configuration);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v17;
}

char *sub_1909A9E20(void *a1)
{
  v3 = type metadata accessor for CKBalloonLayer.Configuration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation] = 0;
  v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientOverrideFrame];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  sub_19021834C(a1, v26);
  v7 = type metadata accessor for CKBalloonLayer(0);
  swift_dynamicCast();
  v8 = v25;
  v9 = &v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration];
  *v9 = 0xC000000000000000;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 5) = 0;
  v10 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_configuration;
  swift_beginAccess();
  sub_1909B589C(v8 + v10, v5, type metadata accessor for CKBalloonLayer.Configuration);
  sub_1909B8940(v5, &v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_configuration], type metadata accessor for CKBalloonLayer.Configuration);
  v24.receiver = v1;
  v24.super_class = v7;
  v11 = objc_msgSendSuper2(&v24, sel_initWithLayer_, v8);
  v12 = [v11 sublayers];
  if (v12)
  {
    v13 = v12;
    sub_1902188FC(0, &qword_1EAD46528, 0x1E6979398);
    v14 = sub_190D57180();
  }

  else
  {
    v14 = 0;
  }

  sub_1909B7068(v14, v26);

  __swift_destroy_boxed_opaque_existential_0(a1);
  v15 = (v11 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration);
  v16 = *(v11 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration);
  v17 = *(v11 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 8);
  v18 = *(v11 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 16);
  v19 = *(v11 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 24);
  v20 = *(v11 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 32);
  v21 = *(v11 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 40);
  *v15 = v26[0];
  v15[1] = v26[1];
  v15[2] = v26[2];
  sub_190937B0C(v16, v17, v18, v19, v20, v21);

  return v11;
}

char *CKBalloonLayer.init(configuration:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation] = 0;
  v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientOverrideFrame];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  sub_1909B589C(a1, &v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_configuration], type metadata accessor for CKBalloonLayer.Configuration);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1909B5904(a1, Strong, 0, v14);
  swift_unknownObjectRelease();
  v5 = &v1[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration];
  v6 = v14[1];
  *v5 = v14[0];
  v5[1] = v6;
  v5[2] = v14[2];
  v13.receiver = v1;
  v13.super_class = type metadata accessor for CKBalloonLayer(0);
  v7 = objc_msgSendSuper2(&v13, sel_init);
  v8 = sub_190D56ED0();
  [v7 setName_];

  v10 = *&v7[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 16];
  v9 = *&v7[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 32];
  v15[0] = *&v7[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration];
  v15[1] = v10;
  v15[2] = v9;
  sub_1909B7000(v15, v12);
  sub_1909AB128(v15);
  sub_1909B7038(v15);

  sub_1909B7924(a1, type metadata accessor for CKBalloonLayer.Configuration);
  return v7;
}

id CKBalloonLayer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CKBalloonLayer.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedInThrowAnimation) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_isBeingUsedForSnapshot) = 0;
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientOverrideFrame;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  sub_190D58510();
  __break(1u);
}

double sub_1909AA540(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1909AA604();
  swift_unknownObjectRelease();
  return result;
}

double sub_1909AA5A4(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return sub_1909AA604();
}

double sub_1909AA604()
{
  v2 = *(v0 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration);
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 8);
  v4 = *(v0 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 16);
  v3 = *(v0 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 24);
  v5 = *(v0 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 32);
  v6 = *(v0 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 40);
  v7 = v2 >> 61;
  if ((v2 >> 61) <= 2)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        swift_beginAccess();
        swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        v11 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
        v12 = v1;
        swift_unknownObjectRelease();
        swift_unknownObjectWeakLoadStrong();

        swift_unknownObjectWeakAssign();
        goto LABEL_27;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        swift_beginAccess();
        swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        sub_190937958(v2, v1, v4, v3, v5, v6);
        v23 = v1;
        v17 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
        swift_unknownObjectRelease();
        swift_unknownObjectWeakLoadStrong();
        sub_190937B0C(v2, v1, v4, v3, v5, v6);

        swift_unknownObjectWeakAssign();
        goto LABEL_27;
      }
    }

    goto LABEL_14;
  }

  if (v7 > 4)
  {
    if (v7 != 5)
    {
      return result;
    }

    v8 = v1;
    v9 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
    sub_19093793C(v4, v3, v5);

    if (v1)
    {
      swift_beginAccess();
      swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
    }

    if ((~(v3 & v4 & v5) & 0xF000000000000007) == 0)
    {

      return result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      swift_beginAccess();
      swift_unknownObjectWeakLoadStrong();

      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      sub_190937A9C(v4, v3, v5);
      return result;
    }

    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    v18 = v3;
    v19 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    swift_unknownObjectRelease();
    swift_unknownObjectWeakLoadStrong();
    sub_190937A9C(v4, v3, v5);

    swift_unknownObjectWeakAssign();
    goto LABEL_27;
  }

  if (v7 == 3)
  {
LABEL_14:
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    goto LABEL_27;
  }

  v13 = (v2 & 0x1FFFFFFFFFFFFFFFLL);
  v14 = v4;
  v15 = v13;
  v16 = v1;
  sub_19093793C(v3, v5, v6);

  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  if (v4)
  {
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  if ((~(v3 & v5 & v6) & 0xF000000000000007) == 0)
  {

    return result;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectWeakLoadStrong();

    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_190937A9C(v3, v5, v6);
    return result;
  }

  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v20 = v5;
  v21 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
  swift_unknownObjectRelease();
  swift_unknownObjectWeakLoadStrong();
  v22 = v21;
  sub_190937A9C(v3, v5, v6);

  swift_unknownObjectWeakAssign();
LABEL_27:
  swift_unknownObjectRelease();
  return result;
}

void (*sub_1909AABEC(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_animationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1909AAC84;
}

void sub_1909AAC84(void **a1, char a2)
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
    sub_1909AA604();
  }

  free(v3);
}

uint64_t sub_1909AAD0C(unint64_t *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration);
  v4 = *(v1 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 16);
  v21[0] = *(v1 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration);
  v21[1] = v4;
  v21[2] = *(v1 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 32);
  sub_1909B7000(v21, v20);
  v5 = sub_1909B517C(a1, v21);
  result = sub_1909B7038(v21);
  if (!v5)
  {
    v8 = *a1;
    v7 = a1[1];
    v9 = a1[2];
    v10 = *a1 >> 61;
    if (v10 <= 2)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          [v8 & 0x1FFFFFFFFFFFFFFFLL setDelegate_];
          [v7 setDelegate_];
          goto LABEL_21;
        }

        if (v9 < 0)
        {
          [v8 & 0x1FFFFFFFFFFFFFFFLL setDelegate_];
          [v8 & 0x1FFFFFFFFFFFFFFFLL removeFromSuperlayer];
          [v7 setDelegate_];
          [v7 removeFromSuperlayer];
          [v9 & 0x7FFFFFFFFFFFFFFFLL setDelegate_];
          [v9 & 0x7FFFFFFFFFFFFFFFLL removeFromSuperlayer];
          goto LABEL_22;
        }
      }
    }

    else
    {
      v12 = a1[3];
      v11 = a1[4];
      if (v10 > 4)
      {
        if (v10 != 5)
        {
          goto LABEL_22;
        }

        [v8 & 0x1FFFFFFFFFFFFFFFLL setDelegate_];
        [v8 & 0x1FFFFFFFFFFFFFFFLL removeFromSuperlayer];
        if (v7)
        {
          [v7 setDelegate_];
          [v7 removeFromSuperlayer];
        }

        if ((~(v12 & v9 & v11) & 0xF000000000000007) == 0)
        {
          goto LABEL_22;
        }

        if ((v11 & 0x8000000000000000) == 0)
        {
          sub_1909378E8(v9, v12, v11);
          [v9 setDelegate_];
          [v9 removeFromSuperlayer];
          sub_190937A9C(v9, v12, v11);
          goto LABEL_22;
        }

        sub_19093793C(v9, v12, v11);
        v18 = v9;
        v16 = v12;
        v17 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
        [v18 setDelegate_];
        [v18 removeFromSuperlayer];
        [v16 setDelegate_];
        [v16 removeFromSuperlayer];
        [v17 setDelegate_];
        [v17 removeFromSuperlayer];
        sub_190937A9C(v9, v12, v11);

LABEL_27:
        goto LABEL_22;
      }

      if (v10 != 3)
      {
        v13 = a1[5];
        [v7 setDelegate_];
        [v8 & 0x1FFFFFFFFFFFFFFFLL setDelegate_];
        [v8 & 0x1FFFFFFFFFFFFFFFLL removeFromSuperlayer];
        if (v9)
        {
          [v9 setDelegate_];
          [v9 removeFromSuperlayer];
        }

        if ((~(v12 & v11 & v13) & 0xF000000000000007) == 0)
        {
          goto LABEL_22;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          sub_1909378E8(v12, v11, v13);
          [v12 setDelegate_];
          [v12 removeFromSuperlayer];
          sub_190937A9C(v12, v11, v13);
LABEL_22:
          v14 = v3[1];
          v20[0] = *v3;
          v20[1] = v14;
          v20[2] = v3[2];
          sub_1909B7000(v20, &v19);
          sub_1909AB128(v20);
          return sub_1909B7038(v20);
        }

        sub_19093793C(v12, v11, v13);
        v15 = v12;
        v16 = v11;
        v17 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
        [v15 setDelegate_];
        [v15 removeFromSuperlayer];
        [v16 setDelegate_];
        [v16 removeFromSuperlayer];
        [v17 setDelegate_];
        [v17 removeFromSuperlayer];
        sub_190937A9C(v12, v11, v13);

        goto LABEL_27;
      }
    }

    [v8 & 0x1FFFFFFFFFFFFFFFLL setDelegate_];
LABEL_21:
    [v8 & 0x1FFFFFFFFFFFFFFFLL removeFromSuperlayer];
    goto LABEL_22;
  }

  return result;
}

id sub_1909AB128(unint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *a1 >> 61;
  if (v6 <= 2)
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    if (v6 != 1)
    {
      [a1[1] setDelegate_];
      [v4 & 0x1FFFFFFFFFFFFFFFLL setDelegate_];
      [v4 & 0x1FFFFFFFFFFFFFFFLL setMask_];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v18 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      sub_190A65270(v18);

      v19 = &v2[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientOverrideFrame];
      swift_beginAccess();
      v20 = v19[32];
      v21 = (v4 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC7ChatKit22CKBalloonGradientLayer_gradientOverrideFrame;
      v22 = *(v19 + 1);
      *v21 = *v19;
      *(v21 + 16) = v22;
      *(v21 + 32) = v20;
      sub_190A65F28();
      [v4 & 0x1FFFFFFFFFFFFFFFLL setNeedsLayout];
      v16 = v2;
      v15 = v4 & 0x1FFFFFFFFFFFFFFFLL;
      goto LABEL_15;
    }

    if (v5 < 0)
    {
      [a1[1] setDelegate_];
      [v4 & 0x1FFFFFFFFFFFFFFFLL setMask_];
      [v4 & 0x1FFFFFFFFFFFFFFFLL setDelegate_];
      [v5 & 0x7FFFFFFFFFFFFFFFLL setDelegate_];
      [v2 insertSublayer:v4 & 0x1FFFFFFFFFFFFFFFLL atIndex:0];
      v15 = v5 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
LABEL_8:
      [v4 & 0x1FFFFFFFFFFFFFFFLL setDelegate_];
      v15 = v4 & 0x1FFFFFFFFFFFFFFFLL;
    }

    v16 = v2;
LABEL_15:
    [v16 insertSublayer:v15 atIndex:0];
    return [v2 setNeedsLayout];
  }

  v8 = a1[3];
  v7 = a1[4];
  if (v6 > 4)
  {
    if (v6 == 5)
    {
      if ((~(v8 & v5 & v7) & 0xF000000000000007) != 0)
      {
        if (v7 < 0)
        {
          sub_19093793C(a1[2], v8, v7);
          v24 = v5;
          v25 = v8;
          v26 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
          [v25 setDelegate_];
          [v24 setMask_];
          [v24 setDelegate_];
          [v26 setDelegate_];
          [v2 insertSublayer:v24 atIndex:0];
          [v2 insertSublayer:v26 atIndex:0];
          sub_190937A9C(v5, v8, v7);
        }

        else
        {
          sub_1909378E8(a1[2], v8, v7);
          [v5 setDelegate_];
          [v2 insertSublayer:v5 atIndex:0];
          sub_190937A9C(v5, v8, v7);
        }
      }

      [v4 & 0x1FFFFFFFFFFFFFFFLL setDelegate_];
      [v2 insertSublayer:v4 & 0x1FFFFFFFFFFFFFFFLL atIndex:0];
      if (v3)
      {
        v27 = v3;
        [v27 setDelegate_];
        [v2 insertSublayer:v27 atIndex:0];
LABEL_27:
      }
    }
  }

  else
  {
    if (v6 == 3)
    {
      [v4 & 0x1FFFFFFFFFFFFFFFLL setDelegate_];
      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      v10 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      sub_190A65270(v10);

      v11 = &v2[OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientOverrideFrame];
      swift_beginAccess();
      v12 = v11[32];
      v13 = (v4 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC7ChatKit22CKBalloonGradientLayer_gradientOverrideFrame;
      v14 = *(v11 + 1);
      *v13 = *v11;
      *(v13 + 16) = v14;
      *(v13 + 32) = v12;
      sub_190A65F28();
      [v4 & 0x1FFFFFFFFFFFFFFFLL setNeedsLayout];
      [v2 insertSublayer:v4 & 0x1FFFFFFFFFFFFFFFLL atIndex:0];
      return [v2 setNeedsLayout];
    }

    v23 = a1[5];
    if ((~(v8 & v7 & v23) & 0xF000000000000007) != 0)
    {
      if (v23 < 0)
      {
        sub_19093793C(a1[3], v7, v23);
        v28 = v8;
        v30 = v7;
        v31 = (v23 & 0x7FFFFFFFFFFFFFFFLL);
        [v30 setDelegate_];
        [v28 setMask_];
        [v28 &selRef:v2 setCachedAttachmentFetchOffset:? forAttachmentClass:?];
        [v31 &selRef:v2 setCachedAttachmentFetchOffset:? forAttachmentClass:?];
        [v2 insertSublayer:v28 atIndex:0];
        [v2 insertSublayer:v31 atIndex:0];
        sub_190937A9C(v8, v7, v23);
      }

      else
      {
        sub_1909378E8(a1[3], v7, v23);
        [v8 setDelegate_];
        [v2 insertSublayer:v8 atIndex:0];
        sub_190937A9C(v8, v7, v23);
      }
    }

    [v3 setDelegate_];
    [v4 & 0x1FFFFFFFFFFFFFFFLL setDelegate_];
    [v4 & 0x1FFFFFFFFFFFFFFFLL setMask_];
    [v2 insertSublayer:v4 & 0x1FFFFFFFFFFFFFFFLL atIndex:0];
    if (v5)
    {
      v27 = v5;
      [v27 setDelegate_];
      [v2 insertSublayer:v27 atIndex:0];
      goto LABEL_27;
    }
  }

  return [v2 setNeedsLayout];
}