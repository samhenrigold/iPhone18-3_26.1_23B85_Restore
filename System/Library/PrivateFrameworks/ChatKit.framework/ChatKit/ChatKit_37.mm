id sub_190B58BDC(double a1, double a2)
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v6 = result;
    [result suggestedRepliesViewMaxWidth];
    v8 = v7;

    if (v8 <= a1)
    {
      v11 = v8;
    }

    else
    {
      v11 = a1;
    }

    LODWORD(v9) = 1148846080;
    LODWORD(v10) = 1112014848;
    [v2 systemLayoutSizeFittingSize:v11 withHorizontalFittingPriority:a2 verticalFittingPriority:{v9, v10}];
    [v2 layoutMargins];
    [v2 layoutMargins];
    [v2 layoutMargins];
    return [v2 layoutMargins];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B58D58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSuggestedReplyView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_190B58DC0()
{
  result = qword_1EAD44F30;
  if (!qword_1EAD44F30)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD44F30);
  }

  return result;
}

uint64_t sub_190B58E80()
{
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000013, 0x8000000190E75ED0);
  if (*(v0 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_activeFilterModes))
  {
    v1 = sub_190D57460();
    v3 = v2;
  }

  else
  {
    v1 = 1701736302;
    v3 = 0xE400000000000000;
  }

  MEMORY[0x193AF28B0](v1, v3);

  MEMORY[0x193AF28B0](0xD000000000000013, 0x8000000190E75EF0);
  if (*(v0 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_requestsEnabled))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_requestsEnabled))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x193AF28B0](v4, v5);

  MEMORY[0x193AF28B0](0xD000000000000017, 0x8000000190E75F10);
  if (*(v0 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_simFilteringEnabled))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_simFilteringEnabled))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x193AF28B0](v6, v7);

  MEMORY[0x193AF28B0](0xD000000000000014, 0x8000000190E75F30);
  if (*(v0 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_blackholeEnabled))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_blackholeEnabled))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x193AF28B0](v8, v9);

  MEMORY[0x193AF28B0](0xD000000000000016, 0x8000000190E75F50);
  if (*(v0 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_showsSpamFiltering))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_showsSpamFiltering))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x193AF28B0](v10, v11);

  MEMORY[0x193AF28B0](0x6D49776F6873202CLL, 0xEE00203A73656761);
  MEMORY[0x193AF28B0](1702195828, 0xE400000000000000);
  MEMORY[0x193AF28B0](0xD000000000000015, 0x8000000190E75F70);
  if (*(v0 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_allowInboxFilters))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_allowInboxFilters))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x193AF28B0](v12, v13);

  MEMORY[0x193AF28B0](0x616C70736964202CLL, 0xEF203A65646F4D79);
  sub_190D58450();
  return 0;
}

void sub_190B59210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_190D57A90();
  v5 = v4;
  v113 = MEMORY[0x1E69E7CC0];
  v111 = *(v4 + 16);
  if (v111)
  {
    v6 = 0;
    v107 = OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_displayMode;
    v110 = v4 + 32;
    v7 = a2 + 56;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      v11 = *(v110 + 8 * v6);
      if (*(a2 + 16))
      {
        sub_190D58870();
        MEMORY[0x193AF4110](v11);
        v12 = sub_190D588C0();
        v15 = -1 << *(a2 + 32);
        v16 = v12 & ~v15;
        if ((*(v7 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          break;
        }
      }

LABEL_17:
      v18 = [objc_opt_self() sharedFeatureFlags];
      v19 = [v18 isUnreadCountRefactorEnabled];

      if (v19)
      {
        v20 = v11 == 8;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        v26 = [objc_opt_self() sharedRegistry];
        v27 = [v26 unreadCountController];

        if (!v27)
        {
          goto LABEL_91;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70, &qword_190DD63D0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_190DD1DA0;
        *(v28 + 32) = a3;
        *(v28 + 40) = 8;
        v29 = sub_190D57A00();

        if (v29 > 0)
        {
          goto LABEL_29;
        }

        if (*(a1 + v107))
        {
          sub_1902188FC(0, &qword_1EAD466C8, 0x1E69DCBA0);
          sub_190D57BB0();
          sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
          v98 = MEMORY[0x1E69E7CC0];
          v42 = sub_190D57650();
          v43 = sub_19021A5D4(8);
          v44 = CKFrameworkBundle(v43);
          if (!v44)
          {
            goto LABEL_92;
          }

          v45 = v44;
          v46 = sub_190D56ED0();

          v47 = sub_190D56ED0();
          v48 = [v45 localizedStringForKey:v46 value:0 table:{v47, v98, 0, 0, 0, 0}];

          sub_190D56F10();
          v49 = sub_190D56ED0();

          [v42 setTitle_];

          v39 = v42;
          [v39 setSubtitle_];
          v50 = sub_190B6B4B4(8);
          [v39 setImage_];

          [v39 setAttributes_];
          v10 = 8;
          goto LABEL_7;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70, &qword_190DD63D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_190DD1DA0;
        *(inited + 32) = a3;
        *(inited + 40) = v11;
        v22 = sub_19021E69C(inited);
        swift_setDeallocating();
        v23 = [objc_opt_self() sharedConversationList];
        v24 = sub_19021B384(v22, 0);

        if (v24 >> 62)
        {
          v25 = sub_190D581C0();
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v25)
        {
          goto LABEL_24;
        }

        if (*(a1 + v107) == 1)
        {
          if (v11 == 8)
          {
LABEL_44:
            sub_1902188FC(0, &qword_1EAD466C8, 0x1E69DCBA0);
            sub_190D57BB0();
            sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
            v105 = 0u;
            v102 = 0u;
            v99 = MEMORY[0x1E69E7CC0];
            v51 = sub_190D57650();
          }

          else
          {
            if (sub_190B6B9E4(v11, v13, v14) != -1)
            {
              sub_190D58720();
              goto LABEL_44;
            }

            sub_1902188FC(0, &qword_1EAD44E30, 0x1E69DC8B0);
            sub_190D57BB0();
            sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
            v105 = 0u;
            v102 = 0u;
            v99 = MEMORY[0x1E69E7CC0];
            v51 = sub_190D58040();
          }

          v52 = v51;
          v53 = sub_19021A5D4(v11);
          v54 = CKFrameworkBundle(v53);
          if (!v54)
          {
            goto LABEL_93;
          }

          v55 = v54;
          v56 = sub_190D56ED0();

          v57 = sub_190D56ED0();
          v58 = [v55 localizedStringForKey:v56 value:0 table:{v57, v99, v102, v105}];

          sub_190D56F10();
          v59 = sub_190D56ED0();

          [v52 setTitle_];

          v39 = v52;
          [v39 setSubtitle_];
          v60 = sub_190B6B4B4(v11);
          [v39 setImage_];

          [v39 setAttributes_];
LABEL_6:
          v10 = v11;
LABEL_7:
          [v39 setState_];

          MEMORY[0x193AF29E0]();
          if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          sub_190D571E0();
        }
      }

      if (++v6 == v111)
      {
        goto LABEL_49;
      }
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 8 * v16) != v11)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v7 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_24:
    if (v11 != 8)
    {
      if (sub_190B6B9E4(v11, v13, v14) == -1)
      {
        sub_1902188FC(0, &qword_1EAD44E30, 0x1E69DC8B0);
        sub_190D57BB0();
        sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
        v104 = 0u;
        v101 = 0u;
        v97 = MEMORY[0x1E69E7CC0];
        v30 = sub_190D58040();
LABEL_30:
        v31 = v30;
        v32 = sub_19021A5D4(v11);
        v33 = CKFrameworkBundle(v32);
        if (!v33)
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          return;
        }

        v34 = v33;
        v35 = sub_190D56ED0();

        v36 = sub_190D56ED0();
        v37 = [v34 localizedStringForKey:v35 value:0 table:{v36, v97, v101, v104}];

        sub_190D56F10();
        v38 = sub_190D56ED0();

        [v31 setTitle_];

        v39 = v31;
        [v39 setSubtitle_];
        if (sub_190D57AD0())
        {
          v40 = sub_190D57B60();
          if (!v40)
          {
            v9 = 0;
            goto LABEL_5;
          }

          v8 = v40;
          v41 = CKLocalizedShortNameForContext(v40);
          v9 = [objc_opt_self() __ck_actionImageForSubscriptionShortName_isFilled_];
        }

        else
        {
          sub_190B6B58C(v11);
          v8 = sub_190D56ED0();

          v9 = [objc_opt_self() _systemImageNamed_];
        }

LABEL_5:
        [v39 setImage_];

        [v39 setAttributes_];
        goto LABEL_6;
      }

      sub_190D58720();
    }

LABEL_29:
    sub_1902188FC(0, &qword_1EAD466C8, 0x1E69DCBA0);
    sub_190D57BB0();
    sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
    v104 = 0u;
    v101 = 0u;
    v97 = MEMORY[0x1E69E7CC0];
    v30 = sub_190D57650();
    goto LABEL_30;
  }

LABEL_49:

  if ((*(a1 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_simFilteringEnabled) & 1) == 0)
  {
    return;
  }

  v61 = sub_190CA9880(11, a2);
  v62 = MEMORY[0x1E69E7CC0];
  if (v61)
  {
    if (!sub_190CA9880(12, a2))
    {
      v65 = 1;
      goto LABEL_58;
    }
  }

  else
  {
    v66 = [objc_opt_self() sharedConversationList];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70, &qword_190DD63D0);
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_190DD1DA0;
    *(v67 + 32) = a3;
    *(v67 + 40) = 11;
    v68 = sub_19021E69C(v67);
    swift_setDeallocating();
    v69 = sub_19021B384(v68, 0);

    if (v69 >> 62)
    {
      v70 = sub_190D581C0();
    }

    else
    {
      v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v65 = v70 != 0;
    if (!sub_190CA9880(12, a2))
    {
LABEL_58:
      v71 = [objc_opt_self() sharedConversationList];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70, &qword_190DD63D0);
      v72 = swift_initStackObject();
      *(v72 + 16) = xmmword_190DD1DA0;
      *(v72 + 32) = a3;
      *(v72 + 40) = 12;
      v73 = sub_19021E69C(v72);
      swift_setDeallocating();
      v74 = sub_19021B384(v73, 0);

      if (v74 >> 62)
      {
        v75 = sub_190D581C0();
      }

      else
      {
        v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v62 = MEMORY[0x1E69E7CC0];

      if (v75)
      {
        v76 = v65;
      }

      else
      {
        v76 = 0;
      }

      if (!v76)
      {
        return;
      }

      goto LABEL_64;
    }

    if (!v70)
    {
      return;
    }
  }

LABEL_64:
  v77 = 0;
  v78 = 0;
  v112 = v62;
  do
  {
    v79 = v77;
    v80 = &unk_1F0400D98 + 8 * v78;
    v81 = *(v80 + 4);
    if (v81 == 8)
    {
      goto LABEL_68;
    }

    if (sub_190B6B9E4(*(v80 + 4), v63, v64) != -1)
    {
      sub_190D58720();
LABEL_68:
      sub_1902188FC(0, &qword_1EAD466C8, 0x1E69DCBA0);
      sub_190D57BB0();
      sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
      v106 = 0u;
      v103 = 0u;
      v100 = v62;
      v82 = sub_190D57650();
      goto LABEL_69;
    }

    sub_1902188FC(0, &qword_1EAD44E30, 0x1E69DC8B0);
    sub_190D57BB0();
    sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
    v106 = 0u;
    v103 = 0u;
    v100 = MEMORY[0x1E69E7CC0];
    v82 = sub_190D58040();
LABEL_69:
    v83 = v82;
    v84 = sub_19021A5D4(v81);
    v85 = CKFrameworkBundle(v84);
    if (!v85)
    {
      goto LABEL_90;
    }

    v86 = v85;
    v87 = sub_190D56ED0();

    v88 = sub_190D56ED0();
    v89 = [v86 localizedStringForKey:v87 value:0 table:{v88, v100, v103, v106}];

    sub_190D56F10();
    v90 = sub_190D56ED0();

    [v83 setTitle_];

    [v83 setSubtitle_];
    if ((sub_190D57AD0() & 1) == 0)
    {
      sub_190B6B58C(v81);
      v92 = sub_190D56ED0();

      v94 = [objc_opt_self() _systemImageNamed_];
      goto LABEL_74;
    }

    v91 = sub_190D57B60();
    if (v91)
    {
      v92 = v91;
      v93 = CKLocalizedShortNameForContext(v91);
      v94 = [objc_opt_self() __ck_actionImageForSubscriptionShortName_isFilled_];

LABEL_74:
      goto LABEL_75;
    }

    v94 = 0;
LABEL_75:
    v62 = MEMORY[0x1E69E7CC0];
    [v83 setImage_];

    [v83 setAttributes_];
    v95 = [v83 setState_];
    MEMORY[0x193AF29E0](v95);
    if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
      v62 = MEMORY[0x1E69E7CC0];
    }

    sub_190D571E0();
    v77 = 1;
    v78 = 1;
  }

  while ((v79 & 1) == 0);
  if (!(v112 >> 62))
  {
    sub_190D52690();
    sub_190D58770();
    sub_1902188FC(0, &unk_1EAD45090, 0x1E69DCC78);
    v96 = v112;
    goto LABEL_83;
  }

LABEL_86:
  sub_1902188FC(0, &unk_1EAD45090, 0x1E69DCC78);
  sub_190D52690();
  v96 = sub_190D58530();

LABEL_83:

  sub_190CA9F2C(v96);
}

id CKConversationListInboxMenuFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKConversationListInboxMenuFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKConversationListInboxMenuFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_190B5A418(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_190B5A47C()
{
  result = qword_1EAD5E088;
  if (!qword_1EAD5E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E088);
  }

  return result;
}

void sub_190B5A4D0(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1 == 4 && a2)
  {
    v4 = sub_190D574A0();
    v5 = sub_190218BE4(v4);
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      v8 = sub_19021A5D4(v5);
      v9 = CKFrameworkBundle(v8);
      if (v9)
      {
        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    sub_190B5A690(a1);
    return;
  }

  if (a1 != 5)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  v10 = sub_190D57490();
  v11 = sub_190218BE4(v10);
  v13 = v12;

  if (v13)
  {
    goto LABEL_9;
  }

  v14 = sub_19021A5D4(v11);
  v9 = CKFrameworkBundle(v14);
  if (v9)
  {
LABEL_11:
    v15 = v9;
    v16 = sub_190D56ED0();

    v17 = sub_190D56ED0();
    v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

    sub_190D56F10();
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_190B5A690(uint64_t a1)
{
  v2 = [objc_opt_self() sharedRegistry];
  v3 = [v2 unreadCountController];

  if (!v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v4 = [v3 pendingReviewCountForChatsWithFilterMode_];

  if (v4 >= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
    v5 = swift_allocObject();
    v6 = MEMORY[0x1E69E6530];
    *(v5 + 16) = xmmword_190DD1D90;
    v7 = MEMORY[0x1E69E65A8];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = v4;
    v8 = CKFrameworkBundle(v5);
    if (v8)
    {
      v9 = v8;
      v10 = sub_190D56ED0();
      v11 = sub_190D56ED0();
      v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

      sub_190D56F10();
      sub_190D56EE0();

      return;
    }

    goto LABEL_7;
  }
}

void sub_190B5A848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_190D57AA0();
  v8 = v5;
  if (v5 == 8)
  {
    goto LABEL_4;
  }

  if (sub_190B6B9E4(v5, v6, v7) != -1)
  {
    sub_190D58720();
LABEL_4:
    sub_1902188FC(0, &qword_1EAD466C8, 0x1E69DCBA0);
    sub_190D57BB0();
    sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
    v44 = 0u;
    v42 = 0u;
    v40 = MEMORY[0x1E69E7CC0];
    v9 = sub_190D57650();
    goto LABEL_5;
  }

  sub_1902188FC(0, &qword_1EAD44E30, 0x1E69DC8B0);
  sub_190D57BB0();
  sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
  v44 = 0u;
  v42 = 0u;
  v40 = MEMORY[0x1E69E7CC0];
  v9 = sub_190D58040();
LABEL_5:
  v10 = v9;
  v11 = sub_19021A5D4(v8);
  v12 = CKFrameworkBundle(v11);
  if (!v12)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:

    __break(1u);
    return;
  }

  v13 = v12;
  v14 = sub_190D56ED0();

  v15 = sub_190D56ED0();
  v16 = [v13 localizedStringForKey:v14 value:0 table:{v15, v40, v42, v44}];

  if (!v16)
  {
    sub_190D56F10();
    v16 = sub_190D56ED0();
  }

  [v10 setTitle_];

  v17 = v10;
  [v17 setSubtitle_];
  v18 = sub_190B6B4B4(v8);
  [v17 setImage_];

  [v17 setAttributes_];
  v19 = a1 && sub_190CA9880(v8, a1);
  [v17 setState_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_190DD55F0;
  *(v20 + 32) = v17;
  v46 = v20;
  if ((*(a3 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_requestsEnabled) & 1) == 0)
  {

    return;
  }

  if (sub_190B6B9E4(3, v21, xmmword_190DD55F0) == -1)
  {
    v10 = sub_1902188FC(0, &qword_1EAD44E30, 0x1E69DC8B0);
    sub_190D57BB0();
    sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
    v45 = 0u;
    v43 = 0u;
    v41 = MEMORY[0x1E69E7CC0];
    v23 = sub_190D58040();
  }

  else
  {
    sub_190D58720();
    v22 = sub_1902188FC(0, &qword_1EAD466C8, 0x1E69DCBA0);
    sub_190D57BB0();
    sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
    v45 = 0u;
    v43 = 0u;
    v41 = MEMORY[0x1E69E7CC0];
    v10 = v22;
    v23 = sub_190D57650();
  }

  v24 = v23;
  v25 = CKFrameworkBundle(v23);
  if (!v25)
  {
    goto LABEL_35;
  }

  v26 = v25;
  v27 = sub_190D56ED0();
  v28 = sub_190D56ED0();
  v10 = [v26 localizedStringForKey:v27 value:0 table:{v28, v41, v43, v45}];

  if (!v10)
  {
    sub_190D56F10();
    v10 = sub_190D56ED0();
  }

  v30 = CKFrameworkBundle(v29);
  if (!v30)
  {
    goto LABEL_36;
  }

  v31 = v30;
  v32 = sub_190D56ED0();
  v33 = [v31 localizedStringForKey:v10 value:0 table:v32];

  if (!v33)
  {
    sub_190D56F10();
    v33 = sub_190D56ED0();
  }

  sub_190B5A690(3);
  v35 = v34;
  [v24 setTitle_];

  v36 = v24;
  if (v35)
  {
    v37 = sub_190D56ED0();
  }

  else
  {
    v37 = 0;
  }

  [v24 setSubtitle_];

  v38 = sub_190B6B4B4(3);
  [v24 setImage_];

  [v24 setAttributes_];
  v39 = a1 && sub_190CA9880(3, a1);
  MEMORY[0x193AF29E0]([v24 setState_]);
  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();
}

id sub_190B5AF40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = CKMessageSpamFilteringEnabled(a1, a2);
  v7 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    if (a3 == 4)
    {
      v5 = sub_190B6CB20(v5, v6);
    }

    else
    {
      if (a3 != 5)
      {
        v8 = MEMORY[0x1E69E7CC0];
        v9 = *(MEMORY[0x1E69E7CC0] + 16);
        if (v9)
        {
          goto LABEL_9;
        }

        goto LABEL_6;
      }

      v5 = sub_190B6CB38(v5, v6);
    }

    v8 = v5;
    v9 = *(v5 + 16);
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_6:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = MEMORY[0x1E69E7CC0];
  v9 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (v9 == 1)
  {

    if (a3 != 8)
    {
      if (sub_190B6B9E4(a3, v11, v12) == -1)
      {
        sub_1902188FC(0, &qword_1EAD44E30, 0x1E69DC8B0);
        sub_190D57BB0();
        sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
        v57 = 0u;
        v55 = 0u;
        v53 = v7;
        v13 = sub_190D58040();
LABEL_20:
        v14 = v13;
        if (a3 != 5 && a3 != 4)
        {
          v13 = sub_19021A5D4(a3);
        }

        result = CKFrameworkBundle(v13);
        if (!result)
        {
          goto LABEL_62;
        }

        v16 = result;
        v17 = sub_190D56ED0();

        v18 = sub_190D56ED0();
        v19 = [v16 localizedStringForKey:v17 value:0 table:{v18, v53, v55, v57}];

        if (!v19)
        {
          sub_190D56F10();
          v19 = sub_190D56ED0();
        }

        sub_190B5A690(a3);
        v21 = v20;
        [v14 setTitle_];

        v22 = v14;
        if (v21)
        {
          v23 = sub_190D56ED0();
        }

        else
        {
          v23 = 0;
        }

        [v14 setSubtitle_];

        v24 = sub_190B6B4B4(a3);
        [v14 setImage_];

        [v14 setAttributes_];
        v25 = v4 && sub_190CA9880(a3, v4);
        [v14 setState_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_190DD55F0;
        *(v10 + 32) = v14;

        return v10;
      }

      sub_190D58720();
    }

    sub_1902188FC(0, &qword_1EAD466C8, 0x1E69DCBA0);
    sub_190D57BB0();
    sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
    v57 = 0u;
    v55 = 0u;
    v53 = v7;
    v13 = sub_190D57650();
    goto LABEL_20;
  }

  if (a3 != 5 && a3 != 4)
  {
    v5 = sub_19021A5D4(a3);
  }

  result = CKFrameworkBundle(v5);
  if (!result)
  {
    goto LABEL_63;
  }

  v26 = result;
  v27 = sub_190D56ED0();

  v28 = sub_190D56ED0();
  v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

  sub_190D56F10();
  sub_190B5A4D0(a3, v4, v30);
  result = sub_190B6B4B4(a3);
  v59 = result;
  v33 = 0;
  v61 = v7;
  v60 = v8;
  while (v33 < *(v8 + 16))
  {
    v34 = v8 + 8 * v33;
    v35 = *(v34 + 32);
    if (v35 == 8)
    {
      goto LABEL_44;
    }

    if (sub_190B6B9E4(*(v34 + 32), v31, v32) != -1)
    {
      sub_190D58720();
LABEL_44:
      sub_1902188FC(0, &qword_1EAD466C8, 0x1E69DCBA0);
      sub_190D57BB0();
      sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
      v58 = 0u;
      v56 = 0u;
      v54 = v7;
      v36 = sub_190D57650();
      goto LABEL_45;
    }

    sub_1902188FC(0, &qword_1EAD44E30, 0x1E69DC8B0);
    sub_190D57BB0();
    sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
    v58 = 0u;
    v56 = 0u;
    v54 = v7;
    v36 = sub_190D58040();
LABEL_45:
    v37 = v36;
    v38 = v4;
    v39 = sub_19021A5D4(v35);
    result = CKFrameworkBundle(v39);
    if (!result)
    {
      goto LABEL_61;
    }

    v40 = result;
    v41 = sub_190D56ED0();

    v42 = sub_190D56ED0();
    v43 = [v40 localizedStringForKey:v41 value:0 table:{v42, v54, v56, v58}];

    sub_190D56F10();
    sub_190B5A690(v35);
    v45 = v44;
    v46 = sub_190D56ED0();

    [v37 setTitle_];

    v47 = v37;
    if (v45)
    {
      v48 = sub_190D56ED0();
    }

    else
    {
      v48 = 0;
    }

    v4 = v38;
    [v37 setSubtitle_];

    v49 = sub_190B6B4B4(v35);
    [v37 setImage_];

    [v37 setAttributes_];
    v7 = MEMORY[0x1E69E7CC0];
    v8 = v60;
    v50 = v4 && sub_190CA9880(v35, v4);
    [v37 setState_];

    MEMORY[0x193AF29E0]();
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    ++v33;
    result = sub_190D571E0();
    if (v9 == v33)
    {

      sub_1902188FC(0, &unk_1EAD44ED0, 0x1E69DCC60);
      v51 = v59;
      v52 = sub_190D57C90();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_190DD55F0;
      *(v10 + 32) = v52;

      return v10;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

_OWORD *sub_190B5B87C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_activeFilterModes);
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_filterHandler);
  sub_190B5A848(v2, v3, a1);
  v4 = sub_190B5AF40(v2, v3, 4);
  v6 = sub_190B5AF40(v2, v3, 5);
  if (*(a1 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_showsSpamFiltering))
  {
    result = &unk_1F0400D18;
  }

  else
  {
    result = &unk_1F0400D48;
  }

  v36 = MEMORY[0x1E69E7CC0];
  v9 = &unk_1F0400D28;
  if (!*(a1 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_showsSpamFiltering))
  {
    v9 = &unk_1F0400D58;
  }

  v10 = *v9;
  if (!*v9)
  {

    v29 = MEMORY[0x1E69E7CC0];
LABEL_33:
    sub_190CA9F2C(v4);
    sub_190CA9F2C(v6);
    sub_190CA9F2C(v29);
    sub_1902188FC(0, &unk_1EAD44ED0, 0x1E69DCC60);
    v30 = sub_190D57C90();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    result = swift_allocObject();
    result[1] = xmmword_190DD55F0;
    *(result + 4) = v30;
    return result;
  }

  v34 = v6;
  v35 = v4;
  if (*(a1 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_showsSpamFiltering))
  {
    v11 = &unk_1F0400D18;
  }

  else
  {
    v11 = &unk_1F0400D48;
  }

  v12 = (v11 + 32);
  v13 = v10 & ~(v10 >> 63);
  while (v13)
  {
    v14 = *v12;
    if (*v12 == 8)
    {
      goto LABEL_15;
    }

    if (sub_190B6B9E4(*v12, v5, v7) != -1)
    {
      sub_190D58720();
LABEL_15:
      sub_1902188FC(0, &qword_1EAD466C8, 0x1E69DCBA0);
      sub_190D57BB0();
      sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
      v33 = 0u;
      v32 = 0u;
      v31 = MEMORY[0x1E69E7CC0];
      v15 = sub_190D57650();
      goto LABEL_16;
    }

    sub_1902188FC(0, &qword_1EAD44E30, 0x1E69DC8B0);
    sub_190D57BB0();
    sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
    v33 = 0u;
    v32 = 0u;
    v31 = MEMORY[0x1E69E7CC0];
    v15 = sub_190D58040();
LABEL_16:
    v16 = v15;
    v17 = sub_19021A5D4(v14);
    result = CKFrameworkBundle(v17);
    if (!result)
    {
      goto LABEL_35;
    }

    v18 = result;
    v19 = sub_190D56ED0();

    v20 = sub_190D56ED0();
    v21 = [v18 localizedStringForKey:v19 value:0 table:{v20, v31, v32, v33}];

    sub_190D56F10();
    v22 = sub_190D56ED0();

    [v16 setTitle_];

    v23 = v16;
    [v23 setSubtitle_];
    if ((sub_190D57AD0() & 1) == 0)
    {
      sub_190B6B58C(v14);
      v25 = sub_190D56ED0();

      v27 = [objc_opt_self() _systemImageNamed_];
      goto LABEL_21;
    }

    v24 = sub_190D57B60();
    if (v24)
    {
      v25 = v24;
      v26 = CKLocalizedShortNameForContext(v24);
      v27 = [objc_opt_self() __ck_actionImageForSubscriptionShortName_isFilled_];

LABEL_21:
      goto LABEL_22;
    }

    v27 = 0;
LABEL_22:
    [v23 setImage_];

    [v23 setAttributes_];
    v28 = v2 && sub_190CA9880(v14, v2);
    [v23 setState_];

    MEMORY[0x193AF29E0]();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    result = sub_190D571E0();
    --v13;
    ++v12;
    if (!--v10)
    {
      v29 = v36;

      v4 = v35;
      v6 = v34;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

id sub_190B5BE00(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  if (!*(a1 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_settingsHandler))
  {
    return v1;
  }

  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_blackholeEnabled);
  result = CKFrameworkBundle(a1);
  v4 = result;
  if (v2 != 1)
  {
    if (result)
    {
      v13 = sub_190D56ED0();
      v14 = sub_190D56ED0();
      v15 = [v4 localizedStringForKey:v13 value:0 table:v14];

      sub_190D56F10();
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = sub_190D56ED0();
  v6 = sub_190D56ED0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  sub_190D56F10();
  result = CKFrameworkBundle(v8);
  if (result)
  {
    v9 = result;
    v10 = sub_190D56ED0();
    v11 = sub_190D56ED0();
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

    sub_190D56F10();
LABEL_8:
    sub_1902188FC(0, &qword_1EAD44E30, 0x1E69DC8B0);
    v16 = sub_190D58040();
    sub_1902188FC(0, &unk_1EAD44ED0, 0x1E69DCC60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_190DD55F0;
    *(v17 + 32) = v16;
    v18 = v16;
    v19 = sub_190D57C90();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_190DD55F0;
    *(v1 + 32) = v19;

    return v1;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_190B5C144(void *a1)
{
  if (qword_1EAD461A8 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D6A0);
  v3 = a1;
  v4 = sub_190D53020();
  v5 = sub_190D576C0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_19020E000, v4, v5, "generating menu with configuration: %@", v6, 0xCu);
    sub_190830D58(v7);
    MEMORY[0x193AF7A40](v7, -1, -1);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  sub_190B5B87C(v3);
  v9 = *&v3[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_activeFilterModes];
  if (!v9)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v10 = sub_190D57450();
  v11 = sub_190218BE4(v10);
  v13 = v12;

  v14 = MEMORY[0x1E69E7CC0];
  if ((v13 & 1) != 0 || v11 == 7 || (v3[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_allowInboxFilters] & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_190B59210(v3, v9, v11);
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_16:

    goto LABEL_14;
  }

  v16 = sub_190D581C0();
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_11:
  result = CKFrameworkBundle(v16);
  if (result)
  {
    v18 = result;
    sub_1902188FC(0, &unk_1EAD44ED0, 0x1E69DCC60);
    v19 = sub_190D56ED0();
    v20 = sub_190D56ED0();
    v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

    sub_190D56F10();
    v22 = sub_190D57C90();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_190DD55F0;
    *(v14 + 32) = v22;
LABEL_14:
    v23 = sub_190B5BE00(v3);
    sub_190CA9F2C(v14);
    sub_190CA9F2C(v23);
    sub_1902188FC(0, &unk_1EAD44ED0, 0x1E69DCC60);
    return sub_190D57C90();
  }

  __break(1u);
  return result;
}

uint64_t _s30EnableEnhancedProtectionButtonVMa_0(uint64_t a1)
{
  result = qword_1EAD5E090;
  if (!qword_1EAD5E090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *sub_190B5C554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v4 = result;
    sub_190D51210();

    sub_19081E484();
    v5 = sub_190D555F0();
    v7 = v6;
    v9 = v8;
    sub_190D55360();
    v10 = sub_190D555B0();
    v12 = v11;
    v14 = v13;

    sub_19081E474(v5, v7, v9 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0, &unk_190DDC0B0);
    sub_190D56320();

    if (qword_1EAD51E80 != -1)
    {
      swift_once();
    }

    result = [qword_1EAD5E9D8 detailsTextColor];
    if (result)
    {
      sub_190D55CE0();
      v15 = sub_190D55570();
      v17 = v16;
      v21 = v18;
      v22 = v19;

      sub_19081E474(v10, v12, v14 & 1);

      sub_190D56320();
      swift_getKeyPath();
      sub_190B5C890();
      sub_190D51C20();

      KeyPath = swift_getKeyPath();
      result = swift_allocObject();
      result[16] = 0;
      *a2 = v15;
      *(a2 + 8) = v17;
      *(a2 + 16) = v21 & 1;
      *(a2 + 24) = v22;
      *(a2 + 32) = KeyPath;
      *(a2 + 40) = sub_1908D9D28;
      *(a2 + 48) = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190B5C800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56108, &unk_190DE1840);
  sub_1908D9C18();
  return sub_190D56030();
}

unint64_t sub_190B5C890()
{
  result = qword_1EAD5EA10;
  if (!qword_1EAD5EA10)
  {
    _s9ViewModelCMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EA10);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ChatKit17MessageEffectDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_190B5C92C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0A0, &qword_190DF54B8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v4 = &v32[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0A8, &qword_190DF54C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v32[-v6];
  v7 = swift_allocObject();
  v8 = *(v1 + 112);
  *(v7 + 112) = *(v1 + 96);
  *(v7 + 128) = v8;
  *(v7 + 144) = *(v1 + 128);
  v9 = *(v1 + 48);
  *(v7 + 48) = *(v1 + 32);
  *(v7 + 64) = v9;
  v10 = *(v1 + 80);
  *(v7 + 80) = *(v1 + 64);
  *(v7 + 96) = v10;
  v11 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v11;
  v43 = v1;
  sub_190B5E040(v1, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0B0, &qword_190DF54C8);
  sub_190B5E078();
  sub_190D56030();
  v12 = *(v1 + 48);
  v51[2] = *(v1 + 32);
  v51[3] = v12;
  v52 = *(v1 + 64);
  v13 = *(v1 + 16);
  v51[0] = *v1;
  v51[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0F0, &qword_190DF54E8);
  MEMORY[0x193AF1A80](&v44, v14);
  v15 = v44;
  v16 = v45;
  v34 = v46;
  v35 = v47;
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v18 = *(v1 + 72);
  v17 = *(v1 + 80);
  v20 = *(v1 + 88);
  v19 = *(v1 + 96);
  v22 = *(v1 + 104);
  v21 = *(v1 + 112);
  v23 = *(v2 + 120);
  if (!v45)
  {
    if (!v17)
    {
      sub_190D52690();
      sub_190D52690();
      v24 = v15;
      v25 = 0;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (!v17)
  {
LABEL_7:
    sub_190D52690();
    sub_190D52690();
    sub_190D52690();
    sub_190A7F678(v15, v16, v34, v35, v36, v37, v38);
    sub_190A7F678(v18, v17, v20, v19, v22, v21, v23);
    goto LABEL_8;
  }

  if (v44 == v18 && v45 == v17)
  {
    sub_190D52690();
    sub_190D52690();
    sub_190D52690();
    sub_190A7F678(v15, v16, v20, v19, v22, v21, v23);
    v24 = v15;
    v25 = v16;
LABEL_12:
    sub_190A7F678(v24, v25, v34, v35, v36, v37, v38);
    v26 = 0;
    goto LABEL_13;
  }

  v33 = sub_190D58760();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190A7F678(v18, v17, v20, v19, v22, v21, v23);
  sub_190A7F678(v15, v16, v34, v35, v36, v37, v38);
  v26 = 0;
  if (v33)
  {
    goto LABEL_13;
  }

LABEL_8:
  v26 = 1;
LABEL_13:
  v27 = v40;
  sub_190B5D9F0(v26, v40);
  (*(v39 + 8))(v4, v41);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0F8, &unk_190DF54F0);
  v29 = v42;
  v30 = (v42 + *(v28 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD52FB8, &qword_190DDC720);
  sub_190D54450();
  *v30 = swift_getKeyPath();
  return sub_190280974(v27, v29);
}

uint64_t sub_190B5CDF0(__int128 *a1)
{
  v2 = a1[1];
  v3 = a1[3];
  v31 = a1[2];
  v32 = v3;
  v4 = a1[1];
  v29 = *a1;
  v30 = v4;
  v5 = a1[3];
  v26 = v31;
  v27 = v5;
  v33 = *(a1 + 8);
  v28 = *(a1 + 8);
  v24 = v29;
  v25 = v2;
  sub_19022FD14(&v29, &v19, &qword_1EAD5E0F0, &qword_190DF54E8);
  sub_19022FD14(&v29, &v19, &qword_1EAD5E0F0, &qword_190DF54E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0F0, &qword_190DF54E8);
  MEMORY[0x193AF1A80](&v19);
  v6 = v19;
  v7 = v20;
  v17 = v21;
  v18 = v22;
  v9 = *(a1 + 9);
  v8 = *(a1 + 10);
  v11 = *(a1 + 11);
  v10 = *(a1 + 12);
  v12 = *(a1 + 13);
  v13 = *(a1 + 14);
  v14 = *(a1 + 15);
  if (!*(&v19 + 1))
  {
    if (!v8)
    {
      sub_190D52690();
      sub_190D52690();
      sub_19022EEA4(&v29, &qword_1EAD5E0F0, &qword_190DF54E8);
      sub_190A7F678(v6, 0, v7, *(&v7 + 1), v17, *(&v17 + 1), v18);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (!v8)
  {
LABEL_6:
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_19022EEA4(&v29, &qword_1EAD5E0F0, &qword_190DF54E8);
    sub_190A7F678(v6, *(&v6 + 1), v7, *(&v7 + 1), v17, *(&v17 + 1), v18);
    sub_190A7F678(v9, v8, v11, v10, v12, v13, v14);
    goto LABEL_7;
  }

  if (v19 == __PAIR128__(v8, v9))
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_190A7F678(v6, *(&v6 + 1), v11, v10, v12, v13, v14);
    sub_190A7F678(v6, *(&v6 + 1), v7, *(&v7 + 1), v17, *(&v17 + 1), v18);
    sub_19022EEA4(&v29, &qword_1EAD5E0F0, &qword_190DF54E8);
LABEL_9:

LABEL_11:
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v19 = v29;
    v20 = v30;
    goto LABEL_12;
  }

  v16 = sub_190D58760();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_190A7F678(v9, v8, v11, v10, v12, v13, v14);
  sub_190A7F678(v6, *(&v6 + 1), v7, *(&v7 + 1), v17, *(&v17 + 1), v18);
  sub_19022EEA4(&v29, &qword_1EAD5E0F0, &qword_190DF54E8);
  if (v16)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v19 = v29;
  v20 = v30;
LABEL_12:
  sub_190D56200();
  v26 = v21;
  v27 = v22;
  v28 = v23;
  v24 = v19;
  v25 = v20;
  return sub_19022EEA4(&v24, &qword_1EAD5E0F0, &qword_190DF54E8);
}

__n128 sub_190B5D178@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0E8, &qword_190DF54E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0D8, &qword_190DF54D8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0C8, &qword_190DF54D0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - v11;
  *v6 = sub_190D54AC0();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E120, &qword_190DF5548);
  sub_190B5D488(a1, &v6[*(v13 + 44)]);
  v14 = sub_190D552C0();
  v15 = sub_190D552F0();
  sub_190D552F0();
  if (sub_190D552F0() != v14)
  {
    v15 = sub_190D552F0();
  }

  sub_190D539C0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_19081E40C(v6, v9, &qword_1EAD5E0E8, &qword_190DF54E0);
  v24 = &v9[*(v7 + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  sub_190D564E0();
  sub_190D53C60();
  sub_19081E40C(v9, v12, &qword_1EAD5E0D8, &qword_190DF54D8);
  v25 = &v12[*(v10 + 36)];
  v26 = v31[1];
  *v25 = v31[0];
  *(v25 + 1) = v26;
  *(v25 + 2) = v31[2];
  sub_190D56500();
  sub_190D54430();
  sub_19081E40C(v12, a2, &qword_1EAD5E0C8, &qword_190DF54D0);
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0B0, &qword_190DF54C8) + 36);
  v28 = v31[8];
  *(v27 + 64) = v31[7];
  *(v27 + 80) = v28;
  *(v27 + 96) = v31[9];
  v29 = v31[4];
  *v27 = v31[3];
  *(v27 + 16) = v29;
  result = v31[6];
  *(v27 + 32) = v31[5];
  *(v27 + 48) = result;
  return result;
}

void sub_190B5D488(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_190D55EB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E128, &unk_190DF5550);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v56 - v13;
  v14 = objc_opt_self();
  v15 = *(a1 + 88);
  v72 = *(a1 + 72);
  *v73 = v15;
  *&v73[16] = *(a1 + 104);
  v16 = sub_190D56ED0();
  v17 = [v14 ckImageNamed_];

  if (v17)
  {
    sub_190D55E90();
    (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
    v58 = sub_190D55F10();

    (*(v4 + 8))(v6, v3);
    sub_190D56500();
    sub_190D53C60();
    v57 = v66;
    v18 = v67;
    v56 = v68;
    v19 = v69;
    v21 = v70;
    v20 = v71;
    v22 = *(a1 + 128);
    v23 = sub_190D552B0();
    v65 = v18;
    v64 = v19;
    v24 = &v11[*(v7 + 36)];
    v25 = *(sub_190D543E0() + 20);
    v26 = *MEMORY[0x1E697F468];
    v27 = sub_190D54A20();
    (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
    __asm { FMOV            V0.2D, #12.0 }

    *v24 = _Q0;
    *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A00, &qword_190DDC880) + 36)] = 256;
    v33 = v57;
    *v11 = v58;
    *(v11 + 1) = v33;
    v11[16] = v18;
    *(v11 + 3) = v56;
    v11[32] = v19;
    *(v11 + 5) = v21;
    *(v11 + 6) = v20;
    *(v11 + 7) = v22;
    v11[64] = v23;
    v34 = v59;
    sub_19081E40C(v11, v59, &qword_1EAD5E128, &unk_190DF5550);
    v74 = *&v73[8];
    v63 = *&v73[8];
    sub_190D50920();
    sub_190869370(&v74, v62);
    sub_19081E484();
    v35 = sub_190D555F0();
    v37 = v36;
    v39 = v38;
    sub_190D55DC0();
    v40 = sub_190D55570();
    v42 = v41;
    LOBYTE(v25) = v43;

    sub_19081E474(v35, v37, v39 & 1);

    sub_190D55360();
    v44 = sub_190D555B0();
    v46 = v45;
    LOBYTE(v21) = v47;
    v49 = v48;

    sub_19081E474(v40, v42, v25 & 1);

    KeyPath = swift_getKeyPath();
    v51 = v60;
    sub_19022FD14(v34, v60, &qword_1EAD5E128, &unk_190DF5550);
    v52 = v61;
    sub_19022FD14(v51, v61, &qword_1EAD5E128, &unk_190DF5550);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E130, &unk_190DF5590);
    v54 = v52 + *(v53 + 48);
    *v54 = v44;
    *(v54 + 8) = v46;
    *(v54 + 16) = v21 & 1;
    *(v54 + 24) = v49;
    *(v54 + 32) = KeyPath;
    *(v54 + 40) = 1;
    v55 = v52 + *(v53 + 64);
    *v55 = 0;
    *(v55 + 8) = 1;
    sub_19081BE48(v44, v46, v21 & 1);
    sub_190D52690();
    sub_190D50920();
    sub_19022EEA4(v34, &qword_1EAD5E128, &unk_190DF5550);
    sub_19081E474(v44, v46, v21 & 1);

    sub_19022EEA4(v51, &qword_1EAD5E128, &unk_190DF5550);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190B5D9F0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = sub_190D54DC0();
  v30 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E100, &qword_190DF5530);
  v31 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v29 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E108, &qword_190DF5538);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v29 - v7;
  v9 = sub_190D54A80();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E110, &qword_190DF5540);
  v13 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v15 = &v29 - v14;
  if (a1)
  {
    sub_190D54DB0();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0A0, &qword_190DF54B8);
    v17 = sub_190233640(&qword_1EAD5E118, &qword_1EAD5E0A0, &qword_190DF54B8, MEMORY[0x1E697D680]);
    v18 = sub_190B5E248(&unk_1EAD45220, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    v19 = v34;
    sub_190D55720();
    (*(v30 + 8))(v4, v19);
    v20 = v31;
    v21 = v35;
    (*(v31 + 16))(v8, v6, v35);
    swift_storeEnumTagMultiPayload();
    v22 = sub_190B5E248(&qword_1EAD45268, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    v37 = v16;
    v38 = v9;
    v39 = v17;
    v40 = v22;
    swift_getOpaqueTypeConformance2();
    v37 = v16;
    v38 = v19;
    v39 = v17;
    v40 = v18;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();
    return (*(v20 + 8))(v6, v21);
  }

  else
  {
    sub_190D54A70();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0A0, &qword_190DF54B8);
    v25 = sub_190233640(&qword_1EAD5E118, &qword_1EAD5E0A0, &qword_190DF54B8, MEMORY[0x1E697D680]);
    v26 = sub_190B5E248(&qword_1EAD45268, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    sub_190D55720();
    (*(v10 + 8))(v12, v9);
    v27 = v33;
    (*(v13 + 16))(v8, v15, v33);
    swift_storeEnumTagMultiPayload();
    v37 = v24;
    v38 = v9;
    v39 = v25;
    v40 = v26;
    swift_getOpaqueTypeConformance2();
    v28 = sub_190B5E248(&unk_1EAD45220, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    v37 = v24;
    v38 = v34;
    v39 = v25;
    v40 = v28;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();
    return (*(v13 + 8))(v15, v27);
  }
}

unint64_t sub_190B5E078()
{
  result = qword_1EAD5E0B8;
  if (!qword_1EAD5E0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E0B0, &qword_190DF54C8);
    sub_190B5E104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E0B8);
  }

  return result;
}

unint64_t sub_190B5E104()
{
  result = qword_1EAD5E0C0;
  if (!qword_1EAD5E0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E0C8, &qword_190DF54D0);
    sub_190B5E190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E0C0);
  }

  return result;
}

unint64_t sub_190B5E190()
{
  result = qword_1EAD5E0D0;
  if (!qword_1EAD5E0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E0D8, &qword_190DF54D8);
    sub_190233640(&qword_1EAD5E0E0, &qword_1EAD5E0E8, &qword_190DF54E0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E0D0);
  }

  return result;
}

uint64_t sub_190B5E248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_190B5E290()
{
  result = qword_1EAD5E138;
  if (!qword_1EAD5E138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E0F8, &unk_190DF54F0);
    sub_190B5E348();
    sub_190233640(&unk_1EAD451F0, &unk_1EAD52FB8, &qword_190DDC720, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E138);
  }

  return result;
}

unint64_t sub_190B5E348()
{
  result = qword_1EAD5E140;
  if (!qword_1EAD5E140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E0A8, &qword_190DF54C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E0A0, &qword_190DF54B8);
    sub_190D54A80();
    sub_190233640(&qword_1EAD5E118, &qword_1EAD5E0A0, &qword_190DF54B8, MEMORY[0x1E697D680]);
    sub_190B5E248(&qword_1EAD45268, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    swift_getOpaqueTypeConformance2();
    sub_190D54DC0();
    sub_190B5E248(&unk_1EAD45220, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E140);
  }

  return result;
}

id sub_190B5E4EC()
{
  v0 = [objc_allocWithZone(sub_190D52A60()) init];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_190D50920();
  sub_190D529F0();

  sub_190D52A00();
  sub_190D52A20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_190D50920();
  sub_190D52A30();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_190D50920();
  sub_190D52A10();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_190D50920();
  sub_190D52A50();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_190D50920();
  sub_190D52A40();

  return v0;
}

void sub_190B5E6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = [v5 conversation];
  v7 = [v6 recipients];

  v8 = sub_190D57180();
  v9 = sub_190880D10(v8);

  if (v9)
  {
    v29 = v5;
    if (v9 >> 62)
    {
LABEL_25:
      v10 = sub_190D581C0();
      if (v10)
      {
LABEL_5:
        v11 = 0;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x193AF3B90](v11, v9);
          }

          else
          {
            if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          v15 = [v12 defaultIMHandle];
          if (!v15)
          {
            __break(1u);
            return;
          }

          v16 = v15;
          v17 = [v15 ID];

          v18 = sub_190D56F10();
          v20 = v19;

          if (v18 == a1 && v20 == a2)
          {
            break;
          }

          v22 = sub_190D58760();

          if (v22)
          {
            goto LABEL_20;
          }

          ++v11;
          if (v14 == v10)
          {
            goto LABEL_26;
          }
        }

LABEL_20:

        v23 = [v13 defaultIMHandle];
        v5 = v29;
        if (v23)
        {
          v24 = v23;
          v25 = [v29 conversation];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_190DD55F0;
          *(v26 + 32) = v24;
          sub_19086E9EC();
          v27 = v24;
          v28 = sub_190D57160();

          [v25 removeRecipientHandles_];

          v5 = v25;
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_5;
      }
    }

LABEL_26:

    v5 = v29;
  }

LABEL_27:
  v28 = v5;
LABEL_28:
}

void sub_190B5EA0C(uint64_t a1, SEL *a2)
{
  v4 = [objc_opt_self() sharedBlockList];
  [v4 *a2];
}

id sub_190B5EA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_34;
  }

  v5 = Strong;
  v6 = [Strong conversation];
  v7 = [v6 recipients];

  v8 = sub_190D57180();
  v9 = sub_190880D10(v8);

  if (!v9)
  {

    return (v9 & 1);
  }

  v30 = v5;
  if (v9 >> 62)
  {
    goto LABEL_32;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_33:

LABEL_34:
    LOBYTE(v9) = 0;
    return (v9 & 1);
  }

LABEL_5:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x193AF3B90](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v10 = sub_190D581C0();
      if (!v10)
      {
        goto LABEL_33;
      }

      goto LABEL_5;
    }

    result = [v12 defaultIMHandle];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v16 = result;
    v17 = [result ID];

    v18 = sub_190D56F10();
    v20 = v19;

    if (v18 == a1 && v20 == a2)
    {
      break;
    }

    v22 = sub_190D58760();

    if (v22)
    {
      goto LABEL_21;
    }

    ++v11;
    if (v14 == v10)
    {
      goto LABEL_33;
    }
  }

LABEL_21:

  v23 = [v13 propertyType];
  if (!v23)
  {
    sub_190D56F10();
    goto LABEL_27;
  }

  v24 = v23;
  v25 = sub_190D56F10();
  v27 = v26;

  v28 = sub_190D56F10();
  if (!v27)
  {
LABEL_27:

    goto LABEL_34;
  }

  if (v25 == v28 && v27 == v29)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    LOBYTE(v9) = sub_190D58760();
  }

  return (v9 & 1);
}

void sub_190B5ED74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_opt_self();
  v4 = [v3 sharedInstance];
  v5 = [v4 providerManager];

  v6 = [v5 telephonyProvider];
  v7 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v9 = Strong;
  v10 = [Strong conversation];
  v11 = [v10 recipients];

  v12 = sub_190D57180();
  v13 = sub_190880D10(v12);

  if (!v13)
  {

    return;
  }

  v35 = v3;
  v36 = v9;
  v37 = v7;
  v38 = v6;
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_30:

    return;
  }

LABEL_29:
  v14 = sub_190D581C0();
  if (!v14)
  {
    goto LABEL_30;
  }

LABEL_5:
  v15 = 0;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x193AF3B90](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v19 = [v16 defaultIMHandle];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    v21 = [v19 ID];

    v22 = sub_190D56F10();
    v24 = v23;

    if (v22 == a1 && v24 == a2)
    {
      break;
    }

    v26 = sub_190D58760();

    if (v26)
    {
      goto LABEL_22;
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_30;
    }
  }

LABEL_22:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20, &unk_190DDBB80);
  v27 = sub_190D57160();
  v28 = [v17 cnContactWithKeys_];

  if (v28)
  {
    v29 = objc_allocWithZone(MEMORY[0x1E69D8C00]);
    v30 = sub_190D56ED0();
    v31 = [v29 initWithType:2 value:v30];

    [v37 setHandle_];
    v32 = [v28 identifier];
    if (!v32)
    {
      sub_190D56F10();
      v32 = sub_190D56ED0();
    }

    [v37 setContactIdentifier_];

    [v37 setPerformDialAssist_];
    v33 = [v35 sharedInstance];
    aBlock[4] = sub_190B5F224;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190BB9AE8;
    aBlock[3] = &block_descriptor_91;
    v34 = _Block_copy(aBlock);
    [v33 launchAppForDialRequest:v37 completion:v34];
    _Block_release(v34);
  }

  else
  {
  }
}

void sub_190B5F224(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1EAD51C50 != -1)
    {
      swift_once();
    }

    v3 = sub_190D53040();
    __swift_project_value_buffer(v3, qword_1EAD9DF70);
    v4 = a1;
    oslog = sub_190D53020();
    v5 = sub_190D576A0();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_19020E000, oslog, v5, "Failed to initiate dial request with error %@", v6, 0xCu);
      sub_190830D58(v7);
      MEMORY[0x193AF7A40](v7, -1, -1);
      MEMORY[0x193AF7A40](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

id sub_190B5F3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v6 = result;
    v7 = [result faceTimeVideoIsAllowlisted];

    if (v7)
    {
      v8 = objc_opt_self();
      v9 = [v4 conversation];
      v10 = [v8 isFaceTimeVideoAvailable_];

      v4 = v9;
    }

    else
    {
      v10 = 0;
    }

    return v10;
  }

  __break(1u);
  return result;
}

void sub_190B5F4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [v5 conversation];
    v7 = [v6 recipients];

    v8 = sub_190D57180();
    v9 = sub_190880D10(v8);

    if (v9)
    {
      v31 = v5;
      if (v9 >> 62)
      {
LABEL_28:
        v10 = sub_190D581C0();
        if (v10)
        {
LABEL_5:
          v11 = 0;
          while (1)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x193AF3B90](v11, v9);
            }

            else
            {
              if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v12 = *(v9 + 8 * v11 + 32);
            }

            v13 = v12;
            v14 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

            v15 = [v12 defaultIMHandle];
            if (!v15)
            {
              __break(1u);
              return;
            }

            v16 = v15;
            v17 = [v15 ID];

            v18 = sub_190D56F10();
            v20 = v19;

            if (v18 == a1 && v20 == a2)
            {
              break;
            }

            v22 = sub_190D58760();

            if (v22)
            {
              goto LABEL_20;
            }

            ++v11;
            if (v14 == v10)
            {
              goto LABEL_29;
            }
          }

LABEL_20:

          v23 = [v13 defaultIMHandle];
          v5 = v31;
          if (!v23)
          {

            goto LABEL_30;
          }

          v24 = v23;
          v25 = [v31 conversation];

          v26 = [v25 chat];
          if (v26 && (v27 = [v26 lastAddressedHandleID], v26, v27))
          {
            v28 = objc_opt_self();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
            v29 = swift_allocObject();
            *(v29 + 16) = xmmword_190DD55F0;
            *(v29 + 32) = v24;
            sub_19086E9EC();
            v30 = v24;
            v5 = sub_190D57160();

            [v28 initiateTUConversationForParticipants:v5 senderAddress:v27 videoEnabled:1 groupID:0 displayName:0 screenShareType:0];

            v13 = v27;
          }

          else
          {

            v5 = v24;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          goto LABEL_5;
        }
      }

LABEL_29:

      v5 = v31;
    }

LABEL_30:
    v13 = v5;
LABEL_31:
  }
}

id AppCardLoadingViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppCardLoadingViewProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppCardLoadingViewProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AppCardLoadingViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppCardLoadingViewProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190B5F9FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_190D54FD0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E150, &qword_190DF5648);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  sub_190D53B80();
  sub_190D54FC0();
  sub_190233640(&qword_1EAD5E158, &qword_1EAD5E150, &qword_190DF5648, MEMORY[0x1E697BF38]);
  sub_190B5FC5C();
  sub_190D556B0();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E168, &unk_190DF5650) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52FC8, &unk_190DD3E50) + 28);
  v12 = *MEMORY[0x1E697DC28];
  v13 = sub_190D53A70();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  result = swift_getKeyPath();
  *v10 = result;
  return result;
}

unint64_t sub_190B5FC5C()
{
  result = qword_1EAD5E160;
  if (!qword_1EAD5E160)
  {
    sub_190D54FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E160);
  }

  return result;
}

uint64_t sub_190B5FCD8(uint64_t a1)
{
  v2 = sub_190D53A70();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x193AEFE10](v5);
}

unint64_t sub_190B5FDA0()
{
  result = qword_1EAD5E170;
  if (!qword_1EAD5E170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E168, &unk_190DF5650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E150, &qword_190DF5648);
    sub_190D54FD0();
    sub_190233640(&qword_1EAD5E158, &qword_1EAD5E150, &qword_190DF5648, MEMORY[0x1E697BF38]);
    sub_190B5FC5C();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD45200, &qword_1EAD52FC8, &unk_190DD3E50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E170);
  }

  return result;
}

uint64_t CKConversation.shouldShowTranslationTip()()
{
  v1[5] = v0;
  v1[6] = sub_190D572A0();
  v1[7] = sub_190D57290();
  v3 = sub_190D57240();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x1EEE6DFA0](sub_190B5FF84, v3, v2);
}

uint64_t sub_190B5FF84()
{
  v1 = [*(v0 + 40) chat];
  if (v1 && (v2 = v1, v3 = [v1 isAutomaticTranslationEnabled], v2, (v3 & 1) != 0) || (sub_190D52030(), (sub_190D51FD0() & 1) == 0))
  {

    v6 = sub_1908229DC(MEMORY[0x1E69E7CC0]);
    v7 = *(v0 + 8);

    return v7(0, v6);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_190B600B4;

    return CKConversation.languagesForIncomingTextMessages(untilGUID:)(0, 0);
  }
}

uint64_t sub_190B600B4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x1EEE6DFA0](sub_190B601DC, v4, v3);
}

uint64_t sub_190B601DC(uint64_t a1)
{
  v1[12] = *(v1[11] + 16);
  v1[13] = sub_190D57290();
  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190B60274, v3, v2);
}

uint64_t sub_190B60274()
{

  if (qword_1EAD45F78 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96) != 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E180, &unk_190DEBF50);
  __swift_project_value_buffer(v2, qword_1EAD9D5F8);
  *(v0 + 112) = v1;
  swift_beginAccess();
  sub_190D53850();
  swift_endAccess();
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_190B60374, v3, v4);
}

uint64_t sub_190B60374()
{

  v1 = v0[11];
  v2 = v0[12] != 0;
  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t CKConversation.languagesForIncomingTextMessages(untilGUID:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10, &qword_190DE84D0);
  v3[7] = swift_task_alloc();
  v4 = sub_190D519C0();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_190D572A0();
  v3[12] = sub_190D57290();
  v6 = sub_190D57240();
  v3[13] = v6;
  v3[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_190B6051C, v6, v5);
}

void sub_190B6051C()
{
  v145 = v0;
  v1 = v0;
  v2 = [*(v0 + 48) chat];
  *(v0 + 120) = v2;
  if (!v2)
  {

    v52 = sub_1908229DC(MEMORY[0x1E69E7CC0]);
LABEL_106:

    v126 = *(v1 + 8);

    v126(v52);
    return;
  }

  v3 = v2;
  v132 = sub_1908228E4(MEMORY[0x1E69E7CC0]);
  v4 = [v3 chatItems];
  sub_1902188FC(0, &unk_1EAD450C0, 0x1E69A5AF0);
  v5 = sub_190D57180();

  if (v5 >> 62)
  {
    goto LABEL_113;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v130 = v0;
  while (v6)
  {
    v131 = 0;
    v7 = v5 & 0xC000000000000001;
    v8 = v5 & 0xFFFFFFFFFFFFFF8;
    v9 = v5 + 32;
    v134 = v5 & 0xFFFFFFFFFFFFFF8;
    v136 = v5 + 32;
    v138 = *(v1 + 40);
    v140 = v5;
    while (1)
    {
      v10 = __OFSUB__(v6--, 1);
      if (v10)
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v7)
      {
        v11 = MEMORY[0x193AF3B90](v6, v5);
        goto LABEL_14;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v6 >= *(v8 + 16))
      {
        goto LABEL_110;
      }

      v11 = *(v9 + 8 * v6);
LABEL_14:
      v12 = v11;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v12 = v12;
        if (([v14 isFromMe] & 1) == 0)
        {
          v5 = [v14 sender];

          if (v5)
          {
            v15 = v12;
            v16 = [v14 guid];
            if (v16)
            {
              v17 = v16;
              v18 = sub_190D56F10();
              v20 = v19;

              if (v138)
              {
                if (v18 == *(v1 + 32) && *(v1 + 40) == v20)
                {

LABEL_57:

LABEL_59:
                  v53 = v131;
                  goto LABEL_60;
                }

                v21 = sub_190D58760();

                v8 = v134;
                if (v21)
                {
                  goto LABEL_57;
                }
              }

              else
              {

                v8 = v134;
              }
            }

            else if (!v138)
            {

LABEL_58:

              goto LABEL_59;
            }

            v22 = v15;
            v23 = [v14 translationSecondaryText];
            if (v23)
            {
              v24 = v23;

              goto LABEL_29;
            }

            v25 = [v14 text];

            if (v25)
            {
              v26 = [v25 string];

              v1 = sub_190D56F10();
              v28 = v27;

              v29 = HIBYTE(v28) & 0xF;
              v133 = v1;
              if ((v28 & 0x2000000000000000) == 0)
              {
                v29 = v1 & 0xFFFFFFFFFFFFLL;
              }

              if (!v29)
              {

                v9 = v136;
                v5 = v140;
                v1 = v130;
                goto LABEL_7;
              }

              v129 = v28;
              v30 = [v14 guid];

              if (!v30)
              {
                __break(1u);
                return;
              }

              v31 = sub_190D56F10();
              v127 = v32;
              v128 = v31;

              sub_19022123C(v131, 0);
              v33 = v132;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v144 = v132;
              v36 = sub_190875FB8(v5);
              v37 = *(v132 + 16);
              v38 = (v35 & 1) == 0;
              v39 = v37 + v38;
              if (__OFADD__(v37, v38))
              {
                goto LABEL_111;
              }

              v1 = v35;
              if (*(v132 + 24) >= v39)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  if (v35)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  sub_190B6970C();
                  v33 = v144;
                  if (v1)
                  {
                    goto LABEL_48;
                  }
                }
              }

              else
              {
                sub_190B65970(v39, isUniquelyReferenced_nonNull_native);
                sub_1902188FC(0, &qword_1EAD44E70, 0x1E69A5B90);
                v40 = sub_190875FB8(v5);
                if ((v1 & 1) != (v41 & 1))
                {

                  sub_190D587C0();
                  return;
                }

                v36 = v40;
                v33 = v144;
                if (v1)
                {
LABEL_48:
                  v132 = v33;
                  v45 = v33[7];
                  v46 = *(v45 + 8 * v36);
                  v47 = swift_isUniquelyReferenced_nonNull_native();
                  *(v45 + 8 * v36) = v46;
                  if ((v47 & 1) == 0)
                  {
                    v46 = sub_190836718(0, *(v46 + 2) + 1, 1, v46);
                    *(v45 + 8 * v36) = v46;
                  }

                  v49 = *(v46 + 2);
                  v48 = *(v46 + 3);
                  if (v49 >= v48 >> 1)
                  {
                    *(v45 + 8 * v36) = sub_190836718((v48 > 1), v49 + 1, 1, v46);
                  }

                  v50 = *(v45 + 8 * v36);
                  *(v50 + 16) = v49 + 1;
                  v51 = (v50 + 32 * v49);
                  v51[4] = v128;
                  v51[5] = v127;
                  v8 = v134;
                  v1 = v130;
                  v51[6] = v133;
                  v51[7] = v129;
                  v131 = sub_190838A1C;
                  goto LABEL_30;
                }
              }

              v33[(v36 >> 6) + 8] |= 1 << v36;
              *(v33[6] + 8 * v36) = v5;
              *(v33[7] + 8 * v36) = MEMORY[0x1E69E7CC0];
              v42 = v33[2];
              v10 = __OFADD__(v42, 1);
              v43 = v42 + 1;
              if (v10)
              {
                goto LABEL_112;
              }

              v33[2] = v43;
              v44 = v5;
              goto LABEL_48;
            }

LABEL_29:
LABEL_30:
            v9 = v136;
          }

          else
          {
          }

          v5 = v140;
          goto LABEL_7;
        }
      }

LABEL_7:
      if (!v6)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    v6 = sub_190D581C0();
    v130 = v1;
  }

  v53 = 0;
LABEL_60:
  *(v1 + 128) = v53;
  *(v1 + 136) = v132;
  sub_190D52030();
  *(v1 + 144) = sub_190D52010();
  v54 = *(v132 + 32);
  *(v1 + 232) = v54;
  v55 = -1;
  v56 = -1 << v54;
  if (-(-1 << v54) < 64)
  {
    v55 = ~(-1 << -v56);
  }

  v57 = MEMORY[0x1E69E7CC8];
  v58 = v55 & *(v132 + 64);
  *(v1 + 176) = MEMORY[0x1E69E7CC8];
  *(v1 + 184) = v57;
  *(v1 + 160) = 0;
  *(v1 + 168) = v57;
  *(v1 + 152) = v57;
  sub_190D52690();
  if (!v58)
  {
    v61 = 0;
    v62 = ((63 - v56) >> 6) - 1;
    v60 = *(v1 + 136);
    while (v62 != v61)
    {
      v59 = v61 + 1;
      v58 = *(v60 + 8 * v61++ + 72);
      if (v58)
      {
        goto LABEL_67;
      }
    }

    if (*(v57 + 16))
    {
      if (qword_1EAD46280 != -1)
      {
        swift_once();
      }

      v75 = sub_190D53040();
      __swift_project_value_buffer(v75, qword_1EAD9D7C0);
      v76 = sub_190D53020();
      v77 = sub_190D576C0();
      if (os_log_type_enabled(v76, v77))
      {
        v142 = v77;
        v78 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v143 = v139;
        *v78 = 136315650;
        v79 = sub_190D518F0();
        v80 = *(v79 + 16);
        if (v80)
        {
          v135 = v78;
          v137 = v76;
          v81 = *(v1 + 72);
          v144 = MEMORY[0x1E69E7CC0];
          sub_19082DBB4(0, v80, 0);
          v82 = v144;
          v83 = v79 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
          v84 = *(v81 + 72);
          v85 = *(v81 + 16);
          do
          {
            v86 = v130[9];
            v87 = v130[10];
            v88 = v130[8];
            v85(v87, v83, v88);
            v89 = sub_190D518C0();
            v91 = v90;
            (*(v86 + 8))(v87, v88);
            v144 = v82;
            v93 = v82[2];
            v92 = v82[3];
            if (v93 >= v92 >> 1)
            {
              sub_19082DBB4((v92 > 1), v93 + 1, 1);
              v82 = v144;
            }

            v82[2] = v93 + 1;
            v94 = &v82[2 * v93];
            v94[4] = v89;
            v94[5] = v91;
            v83 += v84;
            --v80;
          }

          while (v80);
LABEL_99:

          v1 = v130;
          v78 = v135;
          v76 = v137;
LABEL_104:
          v115 = *(v1 + 136);
          v117 = *(v1 + 120);
          v116 = *(v1 + 128);
          v118 = MEMORY[0x193AF2A20](v82, MEMORY[0x1E69E6158]);
          v120 = v119;

          v121 = sub_19021D9F8(v118, v120, &v143);

          *(v78 + 4) = v121;
          *(v78 + 12) = 2080;
          sub_190D52690();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920, &unk_190DE8FC0);
          sub_190B6AA20(&qword_1EAD46BD0, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
          v1 = v130;
          v122 = sub_190D56DB0();
          v124 = v123;

          v125 = sub_19021D9F8(v122, v124, &v143);

          *(v78 + 14) = v125;
          *(v78 + 22) = 2048;
          *(v78 + 24) = *(v115 + 16);
          _os_log_impl(&dword_19020E000, v76, v142, "languagesForIncomingTextMessages - local: %s, remote: %s, message count: %ld", v78, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x193AF7A40](v139, -1, -1);
          MEMORY[0x193AF7A40](v78, -1, -1);

          v114 = v116;
          goto LABEL_105;
        }

        goto LABEL_103;
      }
    }

    else
    {
      if (qword_1EAD46280 != -1)
      {
        swift_once();
      }

      v95 = sub_190D53040();
      __swift_project_value_buffer(v95, qword_1EAD9D7C0);
      v76 = sub_190D53020();
      v96 = sub_190D57690();
      if (os_log_type_enabled(v76, v96))
      {
        v142 = v96;
        v78 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v143 = v139;
        *v78 = 136315650;
        v97 = sub_190D518F0();
        v98 = *(v97 + 16);
        if (v98)
        {
          v135 = v78;
          v137 = v76;
          v99 = *(v1 + 72);
          v144 = MEMORY[0x1E69E7CC0];
          sub_19082DBB4(0, v98, 0);
          v82 = v144;
          v100 = v97 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
          v101 = *(v99 + 72);
          v102 = *(v99 + 16);
          do
          {
            v103 = v130[9];
            v104 = v130[10];
            v105 = v130[8];
            v102(v104, v100, v105);
            v106 = sub_190D518C0();
            v108 = v107;
            (*(v103 + 8))(v104, v105);
            v144 = v82;
            v110 = v82[2];
            v109 = v82[3];
            if (v110 >= v109 >> 1)
            {
              sub_19082DBB4((v109 > 1), v110 + 1, 1);
              v82 = v144;
            }

            v82[2] = v110 + 1;
            v111 = &v82[2 * v110];
            v111[4] = v106;
            v111[5] = v108;
            v100 += v101;
            --v98;
          }

          while (v98);
          goto LABEL_99;
        }

LABEL_103:

        v82 = MEMORY[0x1E69E7CC0];
        goto LABEL_104;
      }
    }

    v112 = *(v1 + 120);
    v113 = *(v1 + 128);

    v114 = v113;
LABEL_105:
    sub_19022123C(v114, 0);
    sub_19022123C(0, 0);
    v52 = MEMORY[0x1E69E7CC8];
    goto LABEL_106;
  }

  v59 = 0;
  v60 = *(v1 + 136);
LABEL_67:
  *(v1 + 192) = v58;
  *(v1 + 200) = v59;
  v63 = *(*(v60 + 56) + ((v59 << 9) | (8 * __clz(__rbit64(v58)))));
  *(v1 + 208) = v63;
  v64 = *(v63 + 16);
  if (v64)
  {
    *(v1 + 16) = MEMORY[0x1E69E7CC0];
    sub_190D52690();
    sub_19082DBB4(0, v64, 0);
    v65 = *(v1 + 16);
    v66 = (v63 + 56);
    do
    {
      v68 = *(v66 - 1);
      v67 = *v66;
      *(v1 + 16) = v65;
      v70 = *(v65 + 16);
      v69 = *(v65 + 24);
      sub_190D52690();
      if (v70 >= v69 >> 1)
      {
        sub_19082DBB4((v69 > 1), v70 + 1, 1);
        v65 = *(v1 + 16);
      }

      *(v65 + 16) = v70 + 1;
      v71 = v65 + 16 * v70;
      *(v71 + 32) = v68;
      *(v71 + 40) = v67;
      v66 += 4;
      --v64;
    }

    while (v64);
  }

  else
  {
    sub_190D52690();
    v65 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + 216) = v65;
  v72 = sub_190D52020();
  v141 = (*MEMORY[0x1E69A66C8] + MEMORY[0x1E69A66C8]);
  v73 = swift_task_alloc();
  *(v1 + 224) = v73;
  *v73 = v1;
  v73[1] = sub_190B612C4;
  v74 = *(v1 + 56);

  v141(v74, v65, v72 & 1);
}

uint64_t sub_190B612C4()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_190B61408, v3, v2);
}

uint64_t sub_190B61408()
{
  v133 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v129 = v0;
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1908701CC(v3);
LABEL_8:
    v16 = v0[23];
    v17 = *(v0 + 21);
    v18 = v0[19];
    v19 = v0[20];
    goto LABEL_31;
  }

  v4 = v0[15];
  (*(v2 + 32))(v0[11], v3, v1);
  sub_190D518C0();
  v5 = sub_190D56ED0();

  v6 = [v4 preferredLanguagesContainVariantForCode_];

  v7 = v0[26];
  if (v6)
  {

    if (qword_1EAD46280 != -1)
    {
LABEL_80:
      swift_once();
    }

    v8 = sub_190D53040();
    __swift_project_value_buffer(v8, qword_1EAD9D7C0);
    v9 = sub_190D53020();
    v10 = sub_190D576C0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[9];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_19020E000, v9, v10, "detection - language found in preferredLanguages", v15, 2u);
      MEMORY[0x193AF7A40](v15, -1, -1);
    }

    (*(v14 + 8))(v12, v13);
    goto LABEL_8;
  }

  v124 = *(v7 + 16);
  if (v124)
  {
    v20 = 0;
    v18 = v0[19];
    v21 = v0[20];
    v22 = v7 + 56;
    while (1)
    {
      v0 = v129;
      if (v20 >= *(v129[26] + 16))
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v23 = v129[11];
      v25 = *(v22 - 24);
      v24 = *(v22 - 16);
      swift_bridgeObjectRetain_n();
      sub_190D52690();
      sub_19022123C(v21, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129[3] = v18;
      v28 = sub_190875EE0(v23);
      v29 = v18[2];
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_78;
      }

      v32 = v27;
      if (v18[3] >= v31)
      {
        break;
      }

      v0 = v129;
      v33 = v129[11];
      sub_190B65594(v31, isUniquelyReferenced_nonNull_native);
      v18 = v129[3];
      v34 = sub_190875EE0(v33);
      if ((v32 & 1) != (v35 & 1))
      {

        return sub_190D587C0();
      }

      v28 = v34;
      if ((v32 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_21:
      v126 = v25;
      v42 = v18[7];
      v43 = *(v42 + 8 * v28);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      *(v42 + 8 * v28) = v43;
      if ((v44 & 1) == 0)
      {
        v43 = sub_1908354D4(0, *(v43 + 2) + 1, 1, v43);
        *(v42 + 8 * v28) = v43;
      }

      v46 = *(v43 + 2);
      v45 = *(v43 + 3);
      if (v46 >= v45 >> 1)
      {
        v43 = sub_1908354D4((v45 > 1), v46 + 1, 1, v43);
        *(v42 + 8 * v28) = v43;
      }

      ++v20;
      *(v43 + 2) = v46 + 1;
      v47 = &v43[16 * v46];
      *(v47 + 4) = v126;
      *(v47 + 5) = v24;

      v22 += 32;
      v21 = sub_190838A1C;
      if (v124 == v20)
      {
        v0 = v129;
        v127 = vdupq_n_s64(v18);
        v19 = sub_190838A1C;
        v16 = v18;
        goto LABEL_30;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v27)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v0 = v129;
      sub_190B6948C();
      v18 = v129[3];
      if (v32)
      {
        goto LABEL_21;
      }
    }

LABEL_19:
    v36 = v129[11];
    v37 = v129[8];
    v38 = v129[9];
    v18[(v28 >> 6) + 8] |= 1 << v28;
    (*(v38 + 16))(v18[6] + *(v38 + 72) * v28, v36, v37);
    *(v18[7] + 8 * v28) = MEMORY[0x1E69E7CC0];
    v39 = v18[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_79;
    }

    v18[2] = v41;
    goto LABEL_21;
  }

  v16 = v0[23];
  v127 = *(v0 + 21);
  v18 = v0[19];
  v19 = v0[20];
LABEL_30:
  v48 = v0[11];
  v50 = v0[8];
  v49 = v0[9];

  (*(v49 + 8))(v48, v50);
  v17 = v127;
LABEL_31:
  v52 = v0[24];
  v51 = v0[25];
  v0[23] = v16;
  *(v0 + 21) = v17;
  v0[19] = v18;
  v0[20] = v19;
  v53 = (v52 - 1) & v52;
  if (!v53)
  {
    while (1)
    {
      v55 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_77;
      }

      v54 = v0[17];
      if (v55 >= (((1 << *(v0 + 232)) + 63) >> 6))
      {
        break;
      }

      v53 = *(v54 + 8 * v55 + 64);
      ++v51;
      if (v53)
      {
        v51 = v55;
        goto LABEL_37;
      }
    }

    v128 = v17.i64[0];

    if (v16[2])
    {
      if (qword_1EAD46280 != -1)
      {
        swift_once();
      }

      v69 = sub_190D53040();
      __swift_project_value_buffer(v69, qword_1EAD9D7C0);
      v70 = sub_190D53020();
      v71 = sub_190D576C0();
      if (os_log_type_enabled(v70, v71))
      {
        v123 = v71;
        v125 = v19;
        v72 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v131 = v122;
        *v72 = 136315650;
        v73 = sub_190D518F0();
        v74 = *(v73 + 16);
        if (v74)
        {
          v119 = v72;
          v120 = v70;
          v75 = v0[9];
          v132 = MEMORY[0x1E69E7CC0];
          sub_19082DBB4(0, v74, 0);
          v76 = v132;
          v77 = v73 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
          v78 = *(v75 + 72);
          v79 = *(v75 + 16);
          do
          {
            v81 = v129[9];
            v80 = v129[10];
            v82 = v129[8];
            v79(v80, v77, v82);
            v83 = sub_190D518C0();
            v85 = v84;
            (*(v81 + 8))(v80, v82);
            v132 = v76;
            v87 = *(v76 + 16);
            v86 = *(v76 + 24);
            if (v87 >= v86 >> 1)
            {
              sub_19082DBB4((v86 > 1), v87 + 1, 1);
              v76 = v132;
            }

            *(v76 + 16) = v87 + 1;
            v88 = v76 + 16 * v87;
            *(v88 + 32) = v83;
            *(v88 + 40) = v85;
            v77 += v78;
            --v74;
          }

          while (v74);
LABEL_67:

          v72 = v119;
          v70 = v120;
LABEL_72:
          v0 = v129;
          v108 = v129[17];
          v109 = v129[15];
          v121 = v129[16];
          v110 = MEMORY[0x193AF2A20](v76, MEMORY[0x1E69E6158]);
          v112 = v111;

          v113 = sub_19021D9F8(v110, v112, &v131);

          *(v72 + 4) = v113;
          *(v72 + 12) = 2080;
          sub_190D52690();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920, &unk_190DE8FC0);
          sub_190B6AA20(&qword_1EAD46BD0, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
          v114 = sub_190D56DB0();
          v116 = v115;

          v117 = sub_19021D9F8(v114, v116, &v131);

          *(v72 + 14) = v117;
          *(v72 + 22) = 2048;
          *(v72 + 24) = *(v108 + 16);
          _os_log_impl(&dword_19020E000, v70, v123, "languagesForIncomingTextMessages - local: %s, remote: %s, message count: %ld", v72, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x193AF7A40](v122, -1, -1);
          MEMORY[0x193AF7A40](v72, -1, -1);

          sub_19022123C(v121, 0);
          v19 = v125;
          goto LABEL_73;
        }

        goto LABEL_71;
      }
    }

    else
    {
      if (qword_1EAD46280 != -1)
      {
        swift_once();
      }

      v89 = sub_190D53040();
      __swift_project_value_buffer(v89, qword_1EAD9D7C0);
      v70 = sub_190D53020();
      v90 = sub_190D57690();
      if (os_log_type_enabled(v70, v90))
      {
        v123 = v90;
        v125 = v19;
        v72 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v131 = v122;
        *v72 = 136315650;
        v91 = sub_190D518F0();
        v92 = *(v91 + 16);
        if (v92)
        {
          v119 = v72;
          v120 = v70;
          v93 = v0[9];
          v132 = MEMORY[0x1E69E7CC0];
          sub_19082DBB4(0, v92, 0);
          v76 = v132;
          v94 = v91 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
          v95 = *(v93 + 72);
          v96 = *(v93 + 16);
          do
          {
            v98 = v129[9];
            v97 = v129[10];
            v99 = v129[8];
            v96(v97, v94, v99);
            v100 = sub_190D518C0();
            v102 = v101;
            (*(v98 + 8))(v97, v99);
            v132 = v76;
            v104 = *(v76 + 16);
            v103 = *(v76 + 24);
            if (v104 >= v103 >> 1)
            {
              sub_19082DBB4((v103 > 1), v104 + 1, 1);
              v76 = v132;
            }

            *(v76 + 16) = v104 + 1;
            v105 = v76 + 16 * v104;
            *(v105 + 32) = v100;
            *(v105 + 40) = v102;
            v94 += v95;
            --v92;
          }

          while (v92);
          goto LABEL_67;
        }

LABEL_71:

        v76 = MEMORY[0x1E69E7CC0];
        goto LABEL_72;
      }
    }

    v106 = v0[15];
    v107 = v0[16];

    sub_19022123C(v107, 0);
LABEL_73:
    sub_19022123C(v19, 0);

    v118 = v0[1];

    return v118(v128);
  }

  v54 = v0[17];
LABEL_37:
  v0[24] = v53;
  v0[25] = v51;
  v56 = *(*(v54 + 56) + ((v51 << 9) | (8 * __clz(__rbit64(v53)))));
  v0[26] = v56;
  v57 = *(v56 + 16);
  if (v57)
  {
    v0[2] = MEMORY[0x1E69E7CC0];
    sub_190D52690();
    sub_19082DBB4(0, v57, 0);
    v58 = v0[2];
    v59 = (v56 + 56);
    do
    {
      v61 = *(v59 - 1);
      v60 = *v59;
      v0[2] = v58;
      v63 = *(v58 + 16);
      v62 = *(v58 + 24);
      sub_190D52690();
      if (v63 >= v62 >> 1)
      {
        sub_19082DBB4((v62 > 1), v63 + 1, 1);
        v58 = v0[2];
      }

      *(v58 + 16) = v63 + 1;
      v64 = v58 + 16 * v63;
      *(v64 + 32) = v61;
      *(v64 + 40) = v60;
      v59 += 4;
      --v57;
    }

    while (v57);
  }

  else
  {
    sub_190D52690();
    v58 = MEMORY[0x1E69E7CC0];
  }

  v0[27] = v58;
  v65 = sub_190D52020();
  v130 = (*MEMORY[0x1E69A66C8] + MEMORY[0x1E69A66C8]);
  v66 = swift_task_alloc();
  v0[28] = v66;
  *v66 = v0;
  v66[1] = sub_190B612C4;
  v67 = v0[7];

  return v130(v67, v58, v65 & 1);
}

uint64_t sub_190B61FEC()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D7C0);
  __swift_project_value_buffer(v0, qword_1EAD9D7C0);
  sub_190D53010();
  return sub_190D53030();
}

void sub_190B62058(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD538E8, &qword_190DD56A8);
  v40 = v4;
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v28 = *(v26 + 8);
      if ((v40 & 1) == 0)
      {
        sub_190D52690();
        v29 = v27;
      }

      sub_190D58870();
      sub_190D56FC0();
      v30 = sub_190D588C0();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v28;
      ++*(v7 + 16);
      v5 = v39;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_190B6231C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E1C0, &qword_190DD57C0);
  v31 = v4;
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        sub_190D52690();
      }

      sub_190D58870();
      MEMORY[0x193AF4110](v20);
      v22 = sub_190D588C0();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_190B625AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E250, &unk_190DD64F0);
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        sub_190D52690();
      }

      v22 = sub_190D58860();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_190B6281C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A60, &qword_190DD57E8);
  v37 = v4;
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v23 = *v22;
      v38 = *(v22 + 8);
      v24 = *(v22 + 24);
      if ((v37 & 1) == 0)
      {
        v25 = v38;
        v26 = v23;
      }

      v27 = sub_190D58860();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v23;
      *(v16 + 8) = v38;
      *(v16 + 24) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v37)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_190B62AD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A68, &qword_190DD57F0);
  v34 = v4;
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_190824530(v24, v35);
      }

      else
      {
        sub_19021834C(v24, v35);
        sub_190D52690();
      }

      sub_190D58870();
      sub_190D56FC0();
      v25 = sub_190D588C0();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_190824530(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_190B62D9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5BC90, &unk_190DECAC0);
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_190824530((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_19087862C(v23, &v37);
        sub_19021834C(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_190D58210();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_190824530(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_190B63054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD538C0, &qword_190DD5680);
  v38 = v4;
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
        sub_190D52690();
        sub_190D52690();
      }

      sub_190D58870();
      sub_190D56FC0();
      v28 = sub_190D588C0();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_190B63328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ConversationEntity(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E240, &qword_190DF56D8);
  v41 = v4;
  v8 = sub_190D58580();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v40 + 72);
      v28 = v23 + v27 * v22;
      if (v41)
      {
        sub_19082FC20(v28, v42);
      }

      else
      {
        sub_190830594(v28, v42);
        sub_190D52690();
      }

      sub_190D58870();
      sub_190D56FC0();
      v29 = sub_190D588C0();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      sub_19082FC20(v42, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_190B63664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53878, &qword_190DD5640);
  v41 = v4;
  v6 = sub_190D58580();
  v42 = v6;
  if (*(v5 + 16))
  {
    v39 = v2;
    v7 = 0;
    v8 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v40 = v5;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v21 = v18 | (v7 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 40 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 24);
      v43 = *(v23 + 16);
      v27 = *(v23 + 32);
      v28 = *(v22 + 8 * v21);
      if ((v41 & 1) == 0)
      {
        sub_1908B81B0(v24, v25, v43, v26, *(v23 + 32));
        v29 = v28;
      }

      sub_190D58870();
      if (v27)
      {
        MEMORY[0x193AF4110](1);
        sub_190D56FC0();
      }

      else
      {
        MEMORY[0x193AF4110](0);
        sub_190D56FC0();
        sub_190D58890();
        if (v26)
        {
          sub_190D56FC0();
        }
      }

      v30 = sub_190D588C0();
      v31 = -1 << *(v42 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v13 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v15 = v28;
        v16 = v27;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v13 + 8 * v33);
          if (v37 != -1)
          {
            v14 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v32) & ~*(v13 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v15 = v28;
      v16 = v27;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v17 = *(v42 + 48) + 40 * v14;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v43;
      *(v17 + 24) = v26;
      *(v17 + 32) = v16;
      *(*(v42 + 56) + 8 * v14) = v15;
      ++*(v42 + 16);
      v5 = v40;
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_37;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v8, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v42;
}

void sub_190B639E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD539F0, &qword_190DD5798);
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        sub_190D50920();
      }

      v22 = sub_190D58860();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_190B63C54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E1E0, &qword_190DD56C8);
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_190D58870();
      MEMORY[0x193AF4110](v20);
      v22 = sub_190D588C0();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

void sub_190B63EEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = sub_190D58580();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
        sub_190D52690();
      }

      sub_190D58870();
      sub_190D56FC0();
      v27 = sub_190D588C0();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_190B64184(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A48, &unk_190DD8990);
  v35 = v4;
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_190824530(v22, v36);
      }

      else
      {
        sub_19021834C(v22, v36);
        v23 = v21;
      }

      sub_190D56F10();
      sub_190D58870();
      sub_190D56FC0();
      v24 = sub_190D588C0();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_190824530(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_190B64454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_190D52E90();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E190, &qword_190DD5620);
  v41 = v4;
  v10 = sub_190D58580();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_190B6AA20(&qword_1EAD54D68, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
      v28 = sub_190D56DC0();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_190B64814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A30, &unk_190DD57C8);
  v31 = v4;
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        sub_190D52690();
      }

      sub_190D58870();
      MEMORY[0x193AF4110](v20);
      v22 = sub_190D588C0();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_190B64AA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD538F0, &qword_190DD56B0);
  v39 = v4;
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v40 = *(v26 + 8);
      if ((v39 & 1) == 0)
      {
        sub_190D52690();
        v28 = v27;
      }

      sub_190D58870();
      sub_190D56FC0();
      v29 = sub_190D588C0();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v40;
      ++*(v7 + 16);
      v5 = v38;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_190B64D90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E1C8, &unk_190DF56B0);
  v35 = v4;
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        sub_190D52690();
      }

      sub_190D58870();
      sub_190D56FC0();
      v25 = sub_190D588C0();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_190B65030(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E1B0, &qword_190DF56A0);
  v35 = v4;
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        sub_190D52690();
        sub_190D50920();
      }

      sub_190D58870();
      sub_190D56FC0();
      v25 = sub_190D588C0();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_190B652EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E238, &qword_190DF56D0);
  v35 = v4;
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        sub_190D52690();
        sub_190D50920();
      }

      sub_190D58870();
      sub_190D56FC0();
      v25 = sub_190D588C0();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_190B65594(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_190D519C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E230, &qword_190DD57B0);
  v40 = v4;
  v10 = sub_190D58580();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
        sub_190D52690();
      }

      sub_190B6AA20(&qword_1EAD46BD0, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
      v26 = sub_190D56DC0();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_190B65970(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A08, &qword_190DD57A0);
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        sub_190D52690();
      }

      v23 = sub_190D57D80();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_190B65BE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v67 = sub_190D515F0();
  v5 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53870, &qword_190DD5638);
  v69 = v4;
  v8 = sub_190D58580();
  v9 = v8;
  if (*(v7 + 16))
  {
    v63 = v2;
    v10 = 0;
    v68 = v7;
    v13 = *(v7 + 64);
    v12 = (v7 + 64);
    v11 = v13;
    v14 = 1 << *(v12 - 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v11;
    v17 = (v14 + 63) >> 6;
    v64 = v5 + 16;
    v65 = v5;
    v70 = (v5 + 32);
    v18 = v8 + 64;
    while (v16)
    {
      v26 = __clz(__rbit64(v16));
      v27 = (v16 - 1) & v16;
LABEL_15:
      v30 = v26 | (v10 << 6);
      v84 = v27;
      v31 = v68;
      v32 = *(v68 + 48);
      v83 = *(v5 + 72);
      v33 = v32 + v83 * v30;
      v34 = v66;
      if (v69)
      {
        (*(v5 + 32))(v66, v33, v67);
        v35 = (*(v31 + 56) + 168 * v30);
        v71 = *v35;
        v36 = *(v35 + 24);
        v72 = *(v35 + 8);
        v73 = v36;
        v37 = *(v35 + 40);
        v38 = *(v35 + 72);
        v77 = *(v35 + 56);
        v78 = v38;
        v76 = *(v35 + 104);
        v39 = *(v35 + 88);
        v74 = v37;
        v75 = v39;
        v40 = *(v35 + 136);
        v79 = *(v35 + 120);
        v80 = v40;
        v42 = *(v35 + 19);
        v41 = *(v35 + 20);
        v81 = v42;
        v82 = v41;
      }

      else
      {
        (*(v5 + 16))(v66, v33, v67);
        v43 = *(v31 + 56) + 168 * v30;
        v44 = *(v43 + 160);
        v46 = *(v43 + 128);
        v45 = *(v43 + 144);
        v86[7] = *(v43 + 112);
        v86[8] = v46;
        v86[9] = v45;
        v87 = v44;
        v48 = *(v43 + 80);
        v47 = *(v43 + 96);
        v49 = *(v43 + 64);
        v86[3] = *(v43 + 48);
        v86[4] = v49;
        v86[5] = v48;
        v86[6] = v47;
        v51 = *(v43 + 16);
        v50 = *(v43 + 32);
        v86[0] = *v43;
        v86[1] = v51;
        v86[2] = v50;
        v82 = v44;
        v81 = *(&v86[9] + 1);
        v79 = *(&v86[7] + 8);
        v80 = *(&v86[8] + 8);
        v77 = *(&v86[3] + 8);
        v78 = *(&v86[4] + 8);
        v75 = *(&v86[5] + 8);
        v76 = *(&v86[6] + 8);
        v73 = *(&v86[1] + 8);
        v74 = *(&v86[2] + 8);
        v72 = *(v86 + 8);
        v71 = LOBYTE(v86[0]);
        sub_190B6A9C4(v86, &v85);
      }

      sub_190B6AA20(&unk_1EAD5E1A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v52 = sub_190D56DC0();
      v53 = -1 << *(v9 + 32);
      v54 = v52 & ~v53;
      v55 = v54 >> 6;
      if (((-1 << v54) & ~*(v18 + 8 * (v54 >> 6))) == 0)
      {
        v56 = 0;
        v57 = (63 - v53) >> 6;
        v5 = v65;
        while (++v55 != v57 || (v56 & 1) == 0)
        {
          v58 = v55 == v57;
          if (v55 == v57)
          {
            v55 = 0;
          }

          v56 |= v58;
          v59 = *(v18 + 8 * v55);
          if (v59 != -1)
          {
            v19 = __clz(__rbit64(~v59)) + (v55 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v54) & ~*(v18 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
      v5 = v65;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v70)(*(v9 + 48) + v83 * v19, v34);
      v20 = *(v9 + 56) + 168 * v19;
      *v20 = v71;
      *(v20 + 4) = *(v86 + 3);
      *(v20 + 1) = v86[0];
      v21 = v72;
      *(v20 + 24) = v73;
      *(v20 + 8) = v21;
      *(v20 + 40) = v74;
      v22 = v77;
      *(v20 + 72) = v78;
      *(v20 + 56) = v22;
      v23 = v75;
      *(v20 + 104) = v76;
      *(v20 + 88) = v23;
      v24 = v79;
      *(v20 + 136) = v80;
      *(v20 + 120) = v24;
      v25 = v82;
      *(v20 + 152) = v81;
      *(v20 + 160) = v25;
      ++*(v9 + 16);
      v16 = v84;
    }

    v28 = v10;
    while (1)
    {
      v10 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v17)
      {
        break;
      }

      v29 = v12[v10];
      ++v28;
      if (v29)
      {
        v26 = __clz(__rbit64(v29));
        v27 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v69 & 1) == 0)
    {

      v3 = v63;
      goto LABEL_35;
    }

    v60 = v68;
    v61 = 1 << *(v68 + 32);
    v3 = v63;
    if (v61 >= 64)
    {
      bzero(v12, ((v61 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v61;
    }

    *(v60 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
}

void sub_190B66140(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E220, &qword_190DF56C8);
  v35 = v4;
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        sub_190D52690();
        swift_unknownObjectRetain();
      }

      sub_190D58870();
      sub_190D56FC0();
      v25 = sub_190D588C0();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_190B663FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v6;
  v8 = sub_190D58580();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v38 & 1) == 0)
      {
        sub_190D52690();
        v27 = v26;
      }

      sub_190D58870();
      sub_190D56FC0();
      v28 = sub_190D588C0();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_190B66698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E210, &qword_190DD5770);
  v38 = v4;
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    v15 = v38;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 24 * v22;
      v41 = *v23;
      v40 = *(v23 + 8);
      v24 = *(v23 + 16);
      v25 = *(*(v5 + 56) + 8 * v22);
      if ((v15 & 1) == 0)
      {
        sub_190824730(v41, v40, *(v23 + 16));
        sub_190D52690();
      }

      sub_190D58870();
      v39 = v25;
      if (v24)
      {
        if (v24 == 1)
        {
          sub_190D56FC0();
        }

        else
        {
          v26 = [v41 stickerIdentifier];
          sub_190D56F10();

          v15 = v38;
          sub_190D56FC0();
          v5 = v37;
        }
      }

      else
      {
        MEMORY[0x193AF4130]([v41 associatedMessageType]);
      }

      v27 = sub_190D588C0();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v17 = v39;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v17 = v39;
LABEL_7:
      *(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v7 + 48) + 24 * v16;
      *v18 = v41;
      *(v18 + 8) = v40;
      *(v18 + 16) = v24;
      *(*(v7 + 56) + 8 * v16) = v17;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v15 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_38;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v7;
}

void sub_190B669E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_190D51840();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v53 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD539C0, &qword_190DD5768);
  v47 = v4;
  v8 = sub_190D58580();
  v9 = v8;
  if (*(v7 + 16))
  {
    v43 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v44 = (v5 + 16);
    v46 = v5;
    v48 = (v5 + 32);
    v16 = v8 + 64;
    v17 = v45;
    while (v14)
    {
      v22 = __clz(__rbit64(v14));
      v51 = (v14 - 1) & v14;
LABEL_15:
      v25 = v22 | (v10 << 6);
      v26 = *(v7 + 56);
      v27 = *(v7 + 48) + 24 * v25;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      v50 = *(v46 + 72);
      v31 = v26 + v50 * v25;
      v52 = v29;
      if (v47)
      {
        (*v48)(v53, v31, v17);
      }

      else
      {
        (*v44)(v53, v31, v17);
        sub_190824730(v28, v29, v30);
      }

      sub_190D58870();
      v49 = v28;
      if (v30)
      {
        if (v30 == 1)
        {
          sub_190D56FC0();
        }

        else
        {
          v32 = [v28 stickerIdentifier];
          sub_190D56F10();

          v17 = v45;
          sub_190D56FC0();
        }
      }

      else
      {
        MEMORY[0x193AF4130]([v28 associatedMessageType]);
      }

      v33 = sub_190D588C0();
      v34 = -1 << *(v9 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v16 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v19 = v52;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v16 + 8 * v36);
          if (v40 != -1)
          {
            v18 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v35) & ~*(v16 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v19 = v52;
LABEL_7:
      *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v20 = *(v9 + 48) + 24 * v18;
      v21 = v50;
      *v20 = v49;
      *(v20 + 8) = v19;
      *(v20 + 16) = v30;
      (*v48)((*(v9 + 56) + v21 * v18), v53, v17);
      ++*(v9 + 16);
      v14 = v51;
    }

    v23 = v10;
    while (1)
    {
      v10 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v10 >= v15)
      {
        break;
      }

      v24 = v11[v10];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v51 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_39;
    }

    v41 = 1 << *(v7 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v11, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v41;
    }

    *(v7 + 16) = 0;
  }

LABEL_39:
  *v3 = v9;
}

void sub_190B66E30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E270, &unk_190DD5810);
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_190D58860();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_190B67094(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E200, &qword_190DF56C0);
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      v23 = sub_190D57D80();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_190B67304(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD539A0, &qword_190DD5748);
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = sub_190D58860();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_190B6756C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A78, &qword_190DD5800);
  v6 = sub_190D58580();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
      }

      else
      {
        sub_19087862C(v23, &v37);
      }

      v36 = *(*(v5 + 56) + 16 * v22);
      v26 = sub_190D58210();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 16 * v15) = v36;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_190B67820()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD538E8, &qword_190DD56A8);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 56);
        v19 = (*(v2 + 48) + v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = *(v18 + v17);
        v23 = *(v18 + v17 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v21;
        v24[1] = v20;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
        sub_190D52690();
        v26 = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_190B6799C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E1C0, &qword_190DD57C0);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_190D52690();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_190B67AF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E250, &unk_190DD64F0);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_190D52690();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_190B67C54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A60, &qword_190DD57E8);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 32 * v17;
        v19 = *v18;
        v20 = *(v18 + 24);
        v21 = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 32 * v17;
        *v22 = v19;
        *(v22 + 8) = v21;
        *(v22 + 24) = v20;
        v23 = v21;
        v24 = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_190B67DE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A68, &qword_190DD57F0);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_19021834C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_190824530(v25, (*(v4 + 56) + v22));
        sub_190D52690();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void sub_190B67FA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5BC90, &unk_190DECAC0);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_19087862C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_19021834C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_190824530(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_190B68144()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD538C0, &qword_190DD5680);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
        sub_190D52690();
        sub_190D52690();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_190B682D0()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationEntity(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E240, &qword_190DF56D8);
  v4 = *v0;
  v5 = sub_190D58570();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_190830594(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_19082FC20(v25, *(v27 + 56) + v26);
        sub_190D52690();
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_190B68500()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53878, &qword_190DD5640);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(*(v2 + 56) + 8 * v17);
        v25 = *(v4 + 48) + 40 * v17;
        *v25 = *v18;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v23;
        *(*(v4 + 56) + 8 * v17) = v24;
        sub_1908B81B0(v19, v20, v21, v22, v23);
        v26 = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_190B68694()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD539F0, &qword_190DD5798);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_190D50920();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_190B687F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E1E0, &qword_190DD56C8);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_190B68950(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_190D58570();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
        sub_190D52690();
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_190B68AA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A48, &unk_190DD8990);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_19021834C(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_190824530(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_190B68C28()
{
  v1 = v0;
  v31 = sub_190D52E90();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E190, &qword_190DD5620);
  v3 = *v0;
  v4 = sub_190D58570();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_190B68E98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A30, &unk_190DD57C8);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_190D52690();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}